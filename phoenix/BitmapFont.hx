package phoenix;

import luxe.Vector;
import luxe.resource.Resource;
import luxe.resource.ResourceManager;

import phoenix.Batcher;
import phoenix.BitmapFont.TextAlign;
import phoenix.geometry.CompositeGeometry;
import phoenix.geometry.Geometry;
import phoenix.geometry.QuadGeometry;
import phoenix.geometry.TextureCoord;
import phoenix.geometry.Vertex;
import phoenix.Rectangle;
import phoenix.Texture;

import luxe.Log.log;
import luxe.Log._debug;
import luxe.Log._verbose;

enum TextAlign {
    left;
    right;
    center;
    top;
    bottom;
}

private typedef Character = {
    var id: Int;
    var x: Float;
    var y: Float;
    var width: Float;
    var height: Float;
    var xoffset: Float;
    var yoffset: Float;
    var xadvance: Float;
    var page: Int;
}


typedef FontInfo = {
    var face: String;
    var point_size: Float;
    var base_size: Float;
    var chars: Map<Int, Character>;
    var char_count: Int;
    var pages: Array<{ id : Int, file : String }>;
    var line_height: Float;
    var kernings: Map< Int, Map<Int, Float> >;
}


class BitmapFont extends Resource {

        public var pages : Map<Int, Texture>;
        public var info : FontInfo;

        public var onload : BitmapFont -> Void;
        public var loaded : Bool = false;

            //cached refrence of the ' '(32)
            //character for sizing on tabs/spaces
        var space_char:Character;

        public function new( ?_resource_manager : ResourceManager = null ) {

            super( _resource_manager, ResourceType.font);
            id = 'font.${Luxe.utils.uniqueid()}';

            pages = new Map();

        } //new

        public static function load( _fontid:String, ?_path:String = 'assets/', ?_onload:BitmapFont->Void ) : BitmapFont {

            //:todo: which resource manager...
            var new_font = new BitmapFont( Luxe.resources );
            var file_path = haxe.io.Path.join([_path, _fontid]);

            Luxe.loadText( file_path, function( font_data:luxe.resource.TextResource ) {

                new_font.from_string( font_data.text, _path, _onload );
                Luxe.resources.cache(new_font);

            });

            return new_font;

        } //load

        function on_completely_loaded() {

            loaded = true;

            if(onload != null) {
                onload( this );
            }

        } //on_completely_loaded

        var items_loaded : Int = 0;

        public function one_item_loaded(t:Texture) {

            var total_items = Lambda.count(pages);
                //increment the current count
            items_loaded++;

                //if completely done
            if(items_loaded == total_items) {
                on_completely_loaded();
            }

        } //one_item_loaded

    public function from_string( _bitmap_file : String,
                                 ?_path : String = 'assets/',
                                 ?_onload : BitmapFont->Void ,
                                 ?_custom_pages:Array<Texture> ) {

            //store the listener
        onload = _onload;
            //parse the file
        info = Parser.parse(_bitmap_file);
            //set the id to the face name
        id = 'font.${info.face}';
            //store cached values
        space_char = info.chars.get(32);
            //load any texture pages
        load_pages(_path, _custom_pages);

    } //from_string

    function load_pages( ?_path:String = 'assets/', ?_custom_pages:Array<Texture> ) {

        if(_custom_pages == null) {

            for(_page in info.pages) {

                var _t = Luxe.loadTexture( _path + _page.file );
                _t.onload = function(_) {

                    pages.set(_page.id, _t);
                    _t.filter_min = FilterType.linear;
                    //:todo:options
                    // _t.filter_mag = FilterType.linear;
                    // _t.generate_mipmaps();

                    one_item_loaded(_t);

                } //onload

            } //each page

        } else {

            var _id : Int = 0;

            for(_page in _custom_pages) {
                pages.set(_id, _page);
                ++_id;
            }

                //still need the callback for explicit textures
            on_completely_loaded();

        } //if custom pages

    } //load_pages

        /** Get the kerning between two glyphs, 0 if none */
    public inline function kerning(_first:Int, _second:Int) {

        var _map = info.kernings.get(_first);

        if(_map != null && _map.exists(_second)) {
            return _map.get(_second);
        }

        return 0;

    } //kerning

        /** Return the dimensions of a given string, at the specified point size */
    public function dimensions( _string:String, _point_size:Float, _into:Vector ) : Vector {

            //for calculating the entire size
        var _cur_x = 0.0;
        var _cur_y = 0.0;
        var _max_x = 0.0;

            //calculate the ratio between ours and the given size
            //we keep them separate for potential use case of
            //stretching text for whatever reason, for now the same.
        var _ratio_y = _point_size / info.point_size;
        var _ratio_x = _ratio_y;

            //Iterate over each character, calculating size
        for( i in 0 ... _string.length) {

            var _glyph = _string.charAt(i);
            var _index = _glyph.charCodeAt(0);

            if( _glyph == '\n' ){
                _cur_y += info.line_height * _ratio_y;
                _max_x = Math.max( _max_x, _cur_x );
                _cur_x = 0;
                continue;
            }

            var _x_advance = 0.0;
            var _char = info.chars.get(_index);

            if(_char != null) {
                _x_advance = _char.xadvance;
            }

                //adjust xadvance by kerning values, if any
            if( i < _string.length - 1 ){
                var _next_index = _string.charAt(i+1).charCodeAt(0);
                _x_advance += kerning( _index, _next_index );
            }

                //adjust for tab spacing
                //:todo: harcoded tab width
            if( _glyph == '\t' ){
                _x_advance += space_char.xadvance * 4;
            }

            _cur_x += _x_advance * _ratio_x;

        } //for each char

            //account for the longest line/only line
        _max_x = Math.max( _max_x, _cur_x );

            //Add one line of height. We do this because we want the
            //total height and the culmative y is (at this point)
            //the y at the *top* of the last line.
        _cur_y += info.line_height * _ratio_y;

        return _into.set_xy( _max_x, _cur_y );

    } //dimensions

    public function draw_text( options : Dynamic ) {

         var _string : String = (options.text == null) ? Std.string("") : Std.string(options.text);
         var _pos: Vector = (options.pos == null) ? new Vector() : options.pos;
         var _col: Color = (options.color == null) ? new Color() : options.color;
         var _bounds: Rectangle = (options.bounds == null) ? null : options.bounds;
         var _align: TextAlign = (options.align == null) ? TextAlign.left : options.align;
         var _valign: TextAlign = (options.align_vertical == null) ? TextAlign.top : options.align_vertical;
         var _depth: Float = (options.depth == null) ? 0 : options.depth;
         var _point_size : Float = (options.size == null) ? 22 : options.size;
         var _batcher : Batcher = (options.batcher == null) ? Luxe.renderer.batcher : options.batcher;
         var _visible : Bool = (options.visible == null) ? true : options.visible;
         var _immediate : Bool = (options.immediate == null) ? false : options.immediate;
         var _final_geom = (options.geometry == null) ? new CompositeGeometry(null) : options.geometry;

         var _bounds_based : Bool = false;
         if(_bounds != null) {
            _bounds_based = true;
         }

            //no texture? return empty geometry
        if(pages[0] == null) {
            log("Warning ; " + id + " font trying to draw without a texture.");
            return _final_geom;
        }

            //an array of geometry items, one for each unique texture
        var _geoms : Array<Geometry> = new Array<Geometry>();
        var _page_count = Lambda.count(pages);

        _verbose('creating geometry for each unique texture : ' + _page_count + ' at ' + _depth + '\n with ' + _col + ' and ' + _align + ' and at ' + _pos );

        for(i in 0 ... _page_count ) {

            var _g = new Geometry({
                texture : pages[i],
                color : _col,
                depth : _depth,
                visible : _visible,
                immediate : _immediate
            });

            _g.id = 'text.page'+i+'.'+_string;//.substr(0,8);

            _g.primitive_type = PrimitiveType.triangles;
            _g.immediate = _immediate;
            _geoms.push( _g );

        } //for each page

        var _ratio_y = _point_size / info.point_size;
        var _ratio_x = _ratio_y;

        if(!_immediate) {
            // trace('$_string font_size:$font_size    size:$_size    point_size:$point_size');
        }

        var _cur_x = 0.0;
        var _cur_y = 0.0;

        var _line_number = 0;
        var _dimensions = dimensions(_string, _point_size, new Vector());
        var _max_line_width = _dimensions.x;

        var _lines = _string.split('\n');

        for(_line in _lines) {

            var _align_x_offset = 0.0;

                //Calculate alignment position
                //Left is at 0, so it's handled already
            // if( _align == TextAlign.center ) {
            //     _align_x_offset = (_max_line_width/2.0) - (line_widths[_line_number]/2.0);
            // } else
            // if( _align == TextAlign.right ) {
            //     _align_x_offset = _max_line_width - line_widths[_line_number];
            // }

                //if not the first line, add height
            if( _line_number != 0 ){
                _cur_y += info.line_height * _ratio_y;
                _cur_x = 0;
            }

            for(i in 0 ... _line.length) {

                var _glyph = _line.charAt(i);
                var _index = _glyph.charCodeAt(0);
                var _char = info.chars.get(_index);

                    //hmm, a null character code?
                    //maybe insert something visible?
                if(_char == null) {
                    _char = space_char;
                }

                    //find the geometry to add it to
                var _geom = _geoms[_char.page];

                    //Texture size for this page
                var _tw = pages[_char.page].width_actual;
                var _th = pages[_char.page].height_actual;

                    //work out the coordinates for the uv's
                var _u  = _char.x/_tw;
                var _v  = _char.y/_th;
                var _u2 = (_char.x + _char.width) / _tw;
                var _v2 = (_char.y + _char.height) / _th;
                var _x  = _align_x_offset + _cur_x + ( _char.xoffset * _ratio_x );
                var _y  = _cur_y + _char.yoffset * _ratio_y;
                var _w  = _char.width * _ratio_x;
                var _h  = _char.height * _ratio_y;

                var _x_inc : Float = _char.xadvance;
                if( i < _line.length-1 ){
                    var _next_index = _line.charAt(i+1).charCodeAt(0);
                    _x_inc += kerning( _index, _next_index );
                }

                if( _glyph == '\t' ){
                    //:todo:, hardcoded 4 tab size
                    _x_inc += space_char.xadvance * 4;
                }

                _cur_x += _x_inc * _ratio_x;

                // _x = Math.round(_x);
                // _y = Math.round(_y);

                    //First triangle

               var vert0 = new Vertex( new Vector( _x, _y ), _col );
                   vert0.uv.uv0.set_uv(_u,_v);

                var vert1 = new Vertex( new Vector( _x+_w, _y ), _col );
                   vert1.uv.uv0.set_uv(_u2, _v);

                var vert2 = new Vertex( new Vector( _x+_w, _y+_h ), _col );
                    vert2.uv.uv0.set_uv(_u2, _v2);

                   //Second triangle

                var vert3 = new Vertex( new Vector( _x, _y+_h ), _col );
                    vert3.uv.uv0.set_uv(_u, _v2);

                var vert4 = new Vertex( new Vector( _x, _y ), _col );
                    vert4.uv.uv0.set_uv(_u, _v);

                var vert5 = new Vertex( new Vector( _x+_w, _y+_h), _col );
                    vert5.uv.uv0.set_uv(_u2, _v2);

                   //Add to the geomery

                _geom.add( vert0 ); _geom.add( vert1 );  _geom.add( vert2 );
                _geom.add( vert3 ); _geom.add( vert4 );  _geom.add( vert5 );

            } //for each string

                //next line (if any)
            _line_number++;

        } //line in lines

            //replace the composite with the children geometry we just created
        _final_geom.replace( _geoms );
        _final_geom.add_to_batcher(_batcher);

        if(!_bounds_based) {

                //translate all of the new text according to the alignment alignment
            var _po = _pos.clone();

            if( _align == TextAlign.center ) {
                _po.x = _pos.x - (_max_line_width/2);
            } else if( _align == TextAlign.right ) {
                _po.x = _pos.x - (_max_line_width);
            }
                //translate all of the new text according to the actual position
            _final_geom.transform.origin = new Vector( _pos.x-_po.x, _pos.y-_po.y );
            _final_geom.transform.pos = _pos.clone();

        } else {

                //translate all of the new text according to the alignment alignment
            var _po = new Vector(_bounds.x, _bounds.y);

            if( _align == TextAlign.center ) {
                _po.x = _po.x + ((_bounds.w/2) - (_dimensions.x/2));
            } else if( _align == TextAlign.right ) {
                _po.x = _po.x + ((_bounds.w) - (_dimensions.x));
            }

            if( _valign == TextAlign.center ) {
                _po.y = _po.y + ((_bounds.h/2) - (_dimensions.y/2));
            } else if( _valign == TextAlign.bottom ) {
                _po.y = _po.y + ((_bounds.h) - (_dimensions.y));
            }
                //translate all of the new text according to the actual position
            _final_geom.transform.origin = new Vector( _pos.x-_po.x, _pos.y-_po.y );
            _final_geom.transform.pos = _pos.clone();


        } //_bounds_based

        // _verbose('drew text ${_string.substr(0,10)} at ${_final_geom.transform.pos} with origin ${_final_geom.transform.origin}');

        _final_geom.id += 'drawn_text- ' + _string.substr(0,10);
        _final_geom.immediate = _immediate;
        _final_geom.visible = _visible;

        return _final_geom;

    } //draw_text

    function toString() {
        return "BitmapFont(" + id + ")";
    }

} //BitmapFont


private class Parser {

    public static function parse( _font_data:String ) : FontInfo {

        if(_font_data.length == 0) {
            throw "BitmapFont:Parser: _font_data is 0 length";
        }

        var _info : FontInfo = {
            face : '',
            chars : new Map(),
            point_size : 0, base_size : 0,
            char_count : 0, line_height : 0,
            pages : [], kernings : new Map()
        };

        var _lines : Array<String> = _font_data.split("\n");

        for(_line in _lines) {
            var _tokens = _line.split(" ");
            for(_current in _tokens) {
                parse_token(_current, _tokens, _info);
            }
        }

        return _info;

    } //parse

    static function parse_token( _token:String, _tokens:Array<String>, _info:FontInfo ) {

            //remove the first token
        _tokens.shift();
            //fetch the items from the line
        var _items = tokenize_line(_tokens);

        switch (_token) {

            case 'info': {
                _info.face = unquote(_items['face']);
                _info.point_size = Std.parseFloat(_items['size']);
            }

            case 'common': {
                _info.line_height = Std.parseFloat(_items['lineHeight']);
                _info.base_size = Std.parseFloat(_items['base']);
            }

            case 'page': {
                _info.pages.push({
                    id : Std.parseInt(_items['id']),
                    file : trim(unquote(_items['file']))
                });
            }

            case 'chars': {
                _info.char_count = Std.parseInt(_items["count"]);
            }

            case 'char': {

                var _char : Character = {
                    id : Std.parseInt(_items["id"]),
                    x : Std.parseFloat(_items["x"]),
                    y : Std.parseFloat(_items["y"]),
                    width : Std.parseFloat(_items["width"]),
                    height : Std.parseFloat(_items["height"]),
                    xoffset : Std.parseFloat(_items["xoffset"]),
                    yoffset : Std.parseFloat(_items["yoffset"]),
                    xadvance : Std.parseFloat(_items["xadvance"]),
                    page : Std.parseInt(_items["page"])
                }

                _info.chars.set(_char.id, _char);

            }

            case 'kerning': {

                var _first = Std.parseInt(_items["first"]);
                var _second = Std.parseInt(_items["second"]);
                var _amount = Std.parseFloat(_items["amount"]);

                var _map = _info.kernings.get(_first);
                if(_map == null) {
                    _map = new Map();
                    _info.kernings.set(_first, _map);
                }

                _map.set(_second, _amount);

            }

            default:
        }

    } //parse_token


    static function tokenize_line( _tokens:Array<String> ) {

        var _item_map : Map<String, String> = new Map();

            for(_token in _tokens) {
                var _items = _token.split("=");
                _item_map.set( _items[0], _items[1] );
            }

        return _item_map;

    } //tokenize_line

    inline static function trim(_s:String) { return StringTools.trim(_s); }
    inline static function unquote(_s:String) {
        if(_s.indexOf('"') != -1) {
            _s = StringTools.replace(_s,'"', '');
        } return _s;
    } //unquote

} //BitmapFontParser

