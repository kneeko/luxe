
[![Logo](../../../images/logo.png)](../../../api/index.html)

<hr/>
<a href="#" id="search_bar" onclick="return;"><div> search API <em>(or start typing anywhere)</em> </div></a>
<hr/>

<script src="../../../js/omnibar.js"> </script>
<link rel="stylesheet" type="text/css" href="../../../css/omnibar.css" media="all">

<div id="omnibar"> <a href="#" onclick="return" id="omnibar_close"></a> <input id="omnibar_text" type="text" placeholder="search types..."></input></div>
<script  id="typelist" data-relpath="../../../" data-types="Luxe,luxe.AppConfig,luxe.Audio,luxe.BitmapFontInfo,luxe.BytesInfo,luxe.Camera,luxe.Circle,luxe.Color,luxe.ColorHSL,luxe.ColorHSV,luxe.Component,luxe.Core,luxe.Cursor,luxe.Debug,luxe.DebugError,luxe.Draw,luxe.EmitHandler,luxe.Emitter,luxe.Entity,luxe.Events,luxe.Game,luxe.GamepadEvent,luxe.GamepadEventType,luxe.HandlerList,luxe.ID,luxe.IO,luxe.Input,luxe.InputEvent,luxe.InputType,luxe.InteractState,luxe.ItemInfo,luxe.JSONInfo,luxe.Key,luxe.KeyEvent,luxe.Log,luxe.Matrix,luxe.Mesh,luxe.ModState,luxe.MouseButton,luxe.MouseEvent,luxe.NineSlice,luxe.Objects,luxe.Parcel,luxe.ParcelChange,luxe.ParcelEvent,luxe.ParcelList,luxe.ParcelProgress,luxe.ParcelState,luxe.Particle,luxe.ParticleEmitter,luxe.ParticleSystem,luxe.Physics,luxe.PhysicsEngine,luxe.ProjectionType,luxe.Quaternion,luxe.Rectangle,luxe.ResourceEvent,luxe.ResourceState,luxe.ResourceStats,luxe.ResourceType,luxe.Resources,luxe.Scan,luxe.Scene,luxe.Screen,luxe.ShaderInfo,luxe.SizeMode,luxe.Sound,luxe.SoundInfo,luxe.Sprite,luxe.State,luxe.States,luxe.Tag,luxe.Text,luxe.TextAlign,luxe.TextEvent,luxe.TextEventType,luxe.TextInfo,luxe.TextureInfo,luxe.Timer,luxe.TouchEvent,luxe.Transform,luxe.Vec,luxe.Vector,luxe.Visual,luxe.WindowEvent,luxe.WindowEventData,luxe.WindowEventType,luxe._Emitter.EmitNode,luxe._Events.EventConnection,luxe._Events.EventObject,luxe._Input.MouseButton_Impl_,luxe._Log.LogError,luxe._NineSlice.Slice,luxe._Parcel.ParcelEvent_Impl_,luxe._Parcel.ParcelState_Impl_,luxe._Particles.ParticleEmitterInitData,luxe._Resources.ResourceEvent_Impl_,luxe._Resources.ResourceState_Impl_,luxe._Resources.ResourceType_Impl_,luxe.collision.Collision,luxe.collision.ShapeDrawer,luxe.collision.ShapeDrawerLuxe,luxe.collision.data.RayCollision,luxe.collision.data.RayCollisionHelper,luxe.collision.data.RayIntersection,luxe.collision.data.ShapeCollision,luxe.collision.sat.Common,luxe.collision.sat.SAT2D,luxe.collision.shapes.Circle,luxe.collision.shapes.Polygon,luxe.collision.shapes.Ray,luxe.collision.shapes.Shape,luxe.components.Components,luxe.components.cameras.FlyCamera,luxe.components.render.MeshComponent,luxe.components.sprite.SpriteAnimation,luxe.components.sprite.SpriteAnimationData,luxe.components.sprite.SpriteAnimationEventData,luxe.components.sprite.SpriteAnimationFrame,luxe.components.sprite.SpriteAnimationFrameEvent,luxe.components.sprite.SpriteAnimationFrameSource,luxe.components.sprite.SpriteAnimationType,luxe.debug.BatcherDebugView,luxe.debug.DebugInspectorOptions,luxe.debug.DebugView,luxe.debug.Inspector,luxe.debug.ProfilerDebugView,luxe.debug.RenderStats,luxe.debug.SceneDebugView,luxe.debug.StatsDebugView,luxe.debug.TraceDebugView,luxe.debug._ProfilerDebugView.ProfilerBar,luxe.debug._ProfilerDebugView.ProfilerGraph,luxe.debug._ProfilerDebugView.ProfilerValue,luxe.importers.bitmapfont.BitmapFontData,luxe.importers.bitmapfont.BitmapFontParser,luxe.importers.bitmapfont.Character,luxe.importers.obj.Data,luxe.importers.obj.Normal,luxe.importers.obj.Reader,luxe.importers.obj.UV,luxe.importers.obj.Vector,luxe.importers.obj.Vertex,luxe.importers.texturepacker.TexturePackerData,luxe.importers.texturepacker.TexturePackerFrame,luxe.importers.texturepacker.TexturePackerJSON,luxe.importers.texturepacker.TexturePackerJSONType,luxe.importers.texturepacker.TexturePackerMeta,luxe.importers.texturepacker.TexturePackerRect,luxe.importers.texturepacker.TexturePackerSize,luxe.importers.texturepacker.TexturePackerSpriteAnimation,luxe.importers.tiled.TiledImage,luxe.importers.tiled.TiledImageLayer,luxe.importers.tiled.TiledLayer,luxe.importers.tiled.TiledMap,luxe.importers.tiled.TiledMapData,luxe.importers.tiled.TiledMapOptions,luxe.importers.tiled.TiledObject,luxe.importers.tiled.TiledObjectGroup,luxe.importers.tiled.TiledObjectType,luxe.importers.tiled.TiledPolyObject,luxe.importers.tiled.TiledPropertyTile,luxe.importers.tiled.TiledTile,luxe.importers.tiled.TiledTileset,luxe.importers.tiled.TiledUtil,luxe.macros.BuildVersion,luxe.macros.ComponentRules,luxe.macros.EntityRules,luxe.options.BatcherOptions,luxe.options.BitmapFontOptions,luxe.options.BytesResourceOptions,luxe.options.CameraOptions,luxe.options.CircleGeometryOptions,luxe.options.ColorOptions,luxe.options.ComponentOptions,luxe.options.DrawArcOptions,luxe.options.DrawBoxOptions,luxe.options.DrawCircleOptions,luxe.options.DrawLineOptions,luxe.options.DrawNgonOptions,luxe.options.DrawPlaneOptions,luxe.options.DrawPolygonOptions,luxe.options.DrawRectangleOptions,luxe.options.DrawRingOptions,luxe.options.DrawTextureOptions,luxe.options.EntityOptions,luxe.options.GeometryOptions,luxe.options.JSONResourceOptions,luxe.options.LineGeometryOptions,luxe.options.LoadFontOptions,luxe.options.LoadShaderOptions,luxe.options.LoadTextureOptions,luxe.options.LuxeCameraOptions,luxe.options.MeshOptions,luxe.options.NineSliceOptions,luxe.options.ParcelOptions,luxe.options.ParcelProgressOptions,luxe.options.ParticleEmitterOptions,luxe.options.ParticleOptions,luxe.options.PlaneGeometryOptions,luxe.options.QuadGeometryOptions,luxe.options.RectangleGeometryOptions,luxe.options.RenderProperties,luxe.options.RenderTextureOptions,luxe.options.ResourceOptions,luxe.options.ShaderOptions,luxe.options.SpriteOptions,luxe.options.StateOptions,luxe.options.StatesOptions,luxe.options.TextOptions,luxe.options.TextResourceOptions,luxe.options.TextureOptions,luxe.options.TileLayerOptions,luxe.options.TileOptions,luxe.options.TilemapOptions,luxe.options.TilemapVisualOptions,luxe.options.TilesetOptions,luxe.options.TransformProperties,luxe.options.VisualOptions,luxe.options._DrawOptions.DrawOptions,luxe.resource.BytesResource,luxe.resource.JSONResource,luxe.resource.Resource,luxe.resource.TextResource,luxe.structural.BST,luxe.structural.BSTNode,luxe.structural.BSTTraverseMethod,luxe.structural.Bag,luxe.structural.BalancedBST,luxe.structural.BalancedBSTNode,luxe.structural.BalancedBSTTraverseMethod,luxe.structural.Heap,luxe.structural.OrderedMap,luxe.structural.OrderedMapIterator,luxe.structural.Pool,luxe.structural.Stack,luxe.structural.StackNode,luxe.structural._Bag.BagNode,luxe.structural._BalancedBST.NodeColor,luxe.tilemaps.Isometric,luxe.tilemaps.IsometricVisual,luxe.tilemaps.Ortho,luxe.tilemaps.OrthoVisual,luxe.tilemaps.Tile,luxe.tilemaps.TileArray,luxe.tilemaps.TileLayer,luxe.tilemaps.TileOffset,luxe.tilemaps.Tilemap,luxe.tilemaps.TilemapOrientation,luxe.tilemaps.TilemapVisual,luxe.tilemaps.TilemapVisualLayerGeometry,luxe.tilemaps.Tileset,luxe.tween.Actuate,luxe.tween.BezierPath,luxe.tween.ComponentPath,luxe.tween.IComponentPath,luxe.tween.LinearPath,luxe.tween.MotionPath,luxe.tween.ObjectHash,luxe.tween.RotationPath,luxe.tween._Actuate.TweenTimer,luxe.tween.actuators.GenericActuator,luxe.tween.actuators.IGenericActuator,luxe.tween.actuators.MethodActuator,luxe.tween.actuators.MotionPathActuator,luxe.tween.actuators.PropertyDetails,luxe.tween.actuators.PropertyPathDetails,luxe.tween.actuators.SimpleActuator,luxe.tween.easing.Back,luxe.tween.easing.BackEaseIn,luxe.tween.easing.BackEaseInOut,luxe.tween.easing.BackEaseOut,luxe.tween.easing.Bounce,luxe.tween.easing.BounceEaseIn,luxe.tween.easing.BounceEaseInOut,luxe.tween.easing.BounceEaseOut,luxe.tween.easing.Cubic,luxe.tween.easing.CubicEaseIn,luxe.tween.easing.CubicEaseInOut,luxe.tween.easing.CubicEaseOut,luxe.tween.easing.Elastic,luxe.tween.easing.ElasticEaseIn,luxe.tween.easing.ElasticEaseInOut,luxe.tween.easing.ElasticEaseOut,luxe.tween.easing.Expo,luxe.tween.easing.ExpoEaseIn,luxe.tween.easing.ExpoEaseInOut,luxe.tween.easing.ExpoEaseOut,luxe.tween.easing.IEasing,luxe.tween.easing.Linear,luxe.tween.easing.LinearEaseNone,luxe.tween.easing.Quad,luxe.tween.easing.QuadEaseIn,luxe.tween.easing.QuadEaseInOut,luxe.tween.easing.QuadEaseOut,luxe.tween.easing.Quart,luxe.tween.easing.QuartEaseIn,luxe.tween.easing.QuartEaseInOut,luxe.tween.easing.QuartEaseOut,luxe.tween.easing.Quint,luxe.tween.easing.QuintEaseIn,luxe.tween.easing.QuintEaseInOut,luxe.tween.easing.QuintEaseOut,luxe.tween.easing.Sine,luxe.tween.easing.SineEaseIn,luxe.tween.easing.SineEaseInOut,luxe.tween.easing.SineEaseOut,luxe.utils.GeometryUtils,luxe.utils.Maths,luxe.utils.Random,luxe.utils.Utils,luxe.utils.unifill.CodePoint,luxe.utils.unifill.CodePointIter,luxe.utils.unifill.Exception,luxe.utils.unifill.InternalEncoding,luxe.utils.unifill.InternalEncodingBackwardIter,luxe.utils.unifill.InternalEncodingIter,luxe.utils.unifill.Unicode,luxe.utils.unifill.Unifill,luxe.utils.unifill.Utf,luxe.utils.unifill.Utf16,luxe.utils.unifill.Utf32,luxe.utils.unifill.Utf8,luxe.utils.unifill.UtfIter,luxe.utils.unifill.UtfTools,luxe.utils.unifill._CodePoint.CodePoint_Impl_,luxe.utils.unifill._InternalEncoding.UtfX,luxe.utils.unifill._Utf16.StringU16,luxe.utils.unifill._Utf16.StringU16Buffer,luxe.utils.unifill._Utf16.StringU16Buffer_Impl_,luxe.utils.unifill._Utf16.StringU16_Impl_,luxe.utils.unifill._Utf16.Utf16Impl,luxe.utils.unifill._Utf8.StringU8,luxe.utils.unifill._Utf8.StringU8_Impl_,luxe.utils.unifill._Utf8.Utf8Impl,phoenix.BatchGroup,phoenix.BatchState,phoenix.Batcher,phoenix.BatcherKey,phoenix.BitmapFont,phoenix.BlendEquation,phoenix.BlendMode,phoenix.Camera,phoenix.Circle,phoenix.ClampType,phoenix.Color,phoenix.ColorHSL,phoenix.ColorHSV,phoenix.ComponentOrder,phoenix.DualQuaternion,phoenix.FOVType,phoenix.FilterType,phoenix.Matrix,phoenix.MatrixTransform,phoenix.PrimitiveType,phoenix.ProjectionType,phoenix.Quaternion,phoenix.Ray,phoenix.Rectangle,phoenix.RenderPass,phoenix.RenderPath,phoenix.RenderState,phoenix.RenderTexture,phoenix.Renderer,phoenix.RendererStats,phoenix.Shader,phoenix.Spatial,phoenix.TextAlign,phoenix.Texture,phoenix.TextureDataType,phoenix.TextureFormat,phoenix.TextureID,phoenix.TextureSubmitTarget,phoenix.TextureType,phoenix.Transform,phoenix.Uniform,phoenix.Vec,phoenix.Vector,phoenix._Batcher.BlendEquation_Impl_,phoenix._Batcher.BlendMode_Impl_,phoenix._Batcher.PrimitiveType_Impl_,phoenix._BitmapFont.TextAlign_Impl_,phoenix._Renderer.DefaultShader,phoenix._Renderer.DefaultShaders,phoenix._Shader.Location,phoenix._Texture.ClampSlot,phoenix._Texture.ClampSlot_Impl_,phoenix._Texture.ClampType_Impl_,phoenix._Texture.FilterSlot,phoenix._Texture.FilterSlot_Impl_,phoenix._Texture.FilterType_Impl_,phoenix._Texture.TextureSubmitTarget_Impl_,phoenix._Texture.TextureType_Impl_,phoenix._Vector.ComponentOrder_Impl_,phoenix._Vector.Vec_Impl_,phoenix.geometry.ArcGeometry,phoenix.geometry.CircleGeometry,phoenix.geometry.CompositeGeometry,phoenix.geometry.EvTextGeometry,phoenix.geometry.Geometry,phoenix.geometry.GeometryKey,phoenix.geometry.GeometryState,phoenix.geometry.LineGeometry,phoenix.geometry.PackedQuad,phoenix.geometry.PackedQuadOptions,phoenix.geometry.PlaneGeometry,phoenix.geometry.QuadGeometry,phoenix.geometry.QuadPackGeometry,phoenix.geometry.RectangleGeometry,phoenix.geometry.RingGeometry,phoenix.geometry.TextGeometry,phoenix.geometry.TextGeometryOptions,phoenix.geometry.TextureCoord,phoenix.geometry.TextureCoordSet,phoenix.geometry.Vertex,phoenix.geometry._TextGeometry.EvTextGeometry_Impl_,phoenix.utils.Rendering"></script>


<h1>Tilemap</h1>
<small>`luxe.tilemaps.Tilemap`</small>



<hr/>

`class`
<hr/>


&nbsp;
&nbsp;




<h3>Members</h3> <hr/><span class="member apipage">
                <a name="height"><a class="lift" href="#height">height</a></a><div class="clear"></div>
                <code class="signature apipage">height : [Int](http://api.haxe.org/Int.html)</code><br/></span>
            <span class="small_desc_flat"></span><br/><span class="member apipage">
                <a name="layers"><a class="lift" href="#layers">layers</a></a><div class="clear"></div>
                <code class="signature apipage">layers : [Map](http://api.haxe.org/Map.html)&lt;[String](http://api.haxe.org/String.html), [luxe.tilemaps.TileLayer](../../../api/luxe/tilemaps/TileLayer.html)&gt;</code><br/></span>
            <span class="small_desc_flat"></span><br/><span class="member apipage">
                <a name="layers_ordered"><a class="lift" href="#layers_ordered">layers\_ordered</a></a><div class="clear"></div>
                <code class="signature apipage">layers\_ordered : [Array](http://api.haxe.org/Array.html)&lt;[luxe.tilemaps.TileLayer](../../../api/luxe/tilemaps/TileLayer.html)&gt;</code><br/></span>
            <span class="small_desc_flat"></span><br/><span class="member apipage">
                <a name="orientation"><a class="lift" href="#orientation">orientation</a></a><div class="clear"></div>
                <code class="signature apipage">orientation : [luxe.tilemaps.TilemapOrientation](../../../api/luxe/tilemaps/TilemapOrientation.html)</code><br/></span>
            <span class="small_desc_flat"></span><br/><span class="member apipage">
                <a name="pos"><a class="lift" href="#pos">pos</a></a><div class="clear"></div>
                <code class="signature apipage">pos : [luxe.Vector](../../../api/luxe/Vector.html)</code><br/></span>
            <span class="small_desc_flat"></span><br/><span class="member apipage">
                <a name="properties"><a class="lift" href="#properties">properties</a></a><div class="clear"></div>
                <code class="signature apipage">properties : [Map](http://api.haxe.org/Map.html)&lt;[String](http://api.haxe.org/String.html), [String](http://api.haxe.org/String.html)&gt;</code><br/></span>
            <span class="small_desc_flat"></span><br/><span class="member apipage">
                <a name="tile_height"><a class="lift" href="#tile_height">tile\_height</a></a><div class="clear"></div>
                <code class="signature apipage">tile\_height : [Int](http://api.haxe.org/Int.html)</code><br/></span>
            <span class="small_desc_flat"></span><br/><span class="member apipage">
                <a name="tile_width"><a class="lift" href="#tile_width">tile\_width</a></a><div class="clear"></div>
                <code class="signature apipage">tile\_width : [Int](http://api.haxe.org/Int.html)</code><br/></span>
            <span class="small_desc_flat"></span><br/><span class="member apipage">
                <a name="tilesets"><a class="lift" href="#tilesets">tilesets</a></a><div class="clear"></div>
                <code class="signature apipage">tilesets : [Map](http://api.haxe.org/Map.html)&lt;[String](http://api.haxe.org/String.html), [luxe.tilemaps.Tileset](../../../api/luxe/tilemaps/Tileset.html)&gt;</code><br/></span>
            <span class="small_desc_flat"></span><br/><span class="member apipage">
                <a name="visual"><a class="lift" href="#visual">visual</a></a><div class="clear"></div>
                <code class="signature apipage">visual : [luxe.tilemaps.TilemapVisual](../../../api/luxe/tilemaps/TilemapVisual.html)</code><br/></span>
            <span class="small_desc_flat"></span><br/><span class="member apipage">
                <a name="width"><a class="lift" href="#width">width</a></a><div class="clear"></div>
                <code class="signature apipage">width : [Int](http://api.haxe.org/Int.html)</code><br/></span>
            <span class="small_desc_flat"></span><br/>

<h3>Properties</h3> <hr/><span class="member apipage">
                <a name="bounds"><a class="lift" href="#bounds">bounds</a></a><div class="clear"></div>
                <code class="signature apipage">bounds : [luxe.Rectangle](../../../api/luxe/Rectangle.html)</code><br/></span>
            <span class="small_desc_flat"></span><span class="member apipage">
                <a name="total_height"><a class="lift" href="#total_height">total\_height</a></a><div class="clear"></div>
                <code class="signature apipage">total\_height : [Int](http://api.haxe.org/Int.html)</code><br/></span>
            <span class="small_desc_flat"></span><span class="member apipage">
                <a name="total_width"><a class="lift" href="#total_width">total\_width</a></a><div class="clear"></div>
                <code class="signature apipage">total\_width : [Int](http://api.haxe.org/Int.html)</code><br/></span>
            <span class="small_desc_flat"></span>

<h3>Methods</h3> <hr/><span class="method apipage">
            <a name="add_layer"><a class="lift" href="#add_layer">add\_layer</a></a><div class="clear"></div>
            <code class="signature apipage">add\_layer(options:[luxe.options.TileLayerOptions](../../../api/luxe/options/TileLayerOptions.html)<span></span>) : [luxe.tilemaps.TileLayer](../../../api/luxe/tilemaps/TileLayer.html)</code><br/><span class="small_desc_flat"></span>


</span>
<span class="method apipage">
            <a name="add_tiles_fill_by_id"><a class="lift" href="#add_tiles_fill_by_id">add\_tiles\_fill\_by\_id</a></a><div class="clear"></div>
            <code class="signature apipage">add\_tiles\_fill\_by\_id(layer\_name:[String](http://api.haxe.org/String.html)<span></span>, \_tileid:[Int](http://api.haxe.org/Int.html)<span></span>) : [Void](http://api.haxe.org/Void.html)</code><br/><span class="small_desc_flat"></span>


</span>
<span class="method apipage">
            <a name="add_tiles_from_grid"><a class="lift" href="#add_tiles_from_grid">add\_tiles\_from\_grid</a></a><div class="clear"></div>
            <code class="signature apipage">add\_tiles\_from\_grid(layer\_name:[String](http://api.haxe.org/String.html)<span></span>, grid:[Array](http://api.haxe.org/Array.html)&lt;[Array](http://api.haxe.org/Array.html)&gt;<span></span>) : [Void](http://api.haxe.org/Void.html)</code><br/><span class="small_desc_flat"></span>


</span>
<span class="method apipage">
            <a name="add_tileset"><a class="lift" href="#add_tileset">add\_tileset</a></a><div class="clear"></div>
            <code class="signature apipage">add\_tileset(options:[luxe.options.TilesetOptions](../../../api/luxe/options/TilesetOptions.html)<span></span>) : [luxe.tilemaps.Tileset](../../../api/luxe/tilemaps/Tileset.html)</code><br/><span class="small_desc_flat"></span>


</span>
<span class="method apipage">
            <a name="bounds_fitted"><a class="lift" href="#bounds_fitted">bounds\_fitted</a></a><div class="clear"></div>
            <code class="signature apipage">bounds\_fitted(layer\_name:[String](http://api.haxe.org/String.html)<span></span>) : [Array](http://api.haxe.org/Array.html)&lt;[luxe.Rectangle](../../../api/luxe/Rectangle.html)&gt;</code><br/><span class="small_desc_flat">Returns a list of rectangles in tile space, 
            where any tile with id > 0 is combined into bounding regions</span>


</span>
<span class="method apipage">
            <a name="display"><a class="lift" href="#display">display</a></a><div class="clear"></div>
            <code class="signature apipage">display(options:[luxe.options.TilemapVisualOptions](../../../api/luxe/options/TilemapVisualOptions.html)<span></span>) : [Void](http://api.haxe.org/Void.html)</code><br/><span class="small_desc_flat"></span>


</span>
<span class="method apipage">
            <a name="inside"><a class="lift" href="#inside">inside</a></a><div class="clear"></div>
            <code class="signature apipage">inside(x:[Int](http://api.haxe.org/Int.html)<span></span>, y:[Int](http://api.haxe.org/Int.html)<span></span>) : [Bool](http://api.haxe.org/Bool.html)</code><br/><span class="small_desc_flat"></span>


</span>
<span class="method apipage">
            <a name="iterator"><a class="lift" href="#iterator">iterator</a></a><div class="clear"></div>
            <code class="signature apipage">iterator() : [Iterator](#)&lt;[luxe.tilemaps.TileLayer](../../../api/luxe/tilemaps/TileLayer.html)&gt;</code><br/><span class="small_desc_flat"></span>


</span>
<span class="method apipage">
            <a name="layer"><a class="lift" href="#layer">layer</a></a><div class="clear"></div>
            <code class="signature apipage">layer(layer\_name:[String](http://api.haxe.org/String.html)<span></span>) : [Null](http://api.haxe.org/Null.html)&lt;[luxe.tilemaps.TileLayer](../../../api/luxe/tilemaps/TileLayer.html)&gt;</code><br/><span class="small_desc_flat"></span>


</span>
<span class="method apipage">
            <a name="new"><a class="lift" href="#new">new</a></a><div class="clear"></div>
            <code class="signature apipage">new(options:[luxe.options.TilemapOptions](../../../api/luxe/options/TilemapOptions.html)<span></span>) : [Void](http://api.haxe.org/Void.html)</code><br/><span class="small_desc_flat"></span>


</span>
<span class="method apipage">
            <a name="remove_layer"><a class="lift" href="#remove_layer">remove\_layer</a></a><div class="clear"></div>
            <code class="signature apipage">remove\_layer(name:[String](http://api.haxe.org/String.html)<span></span>) : [Bool](http://api.haxe.org/Bool.html)</code><br/><span class="small_desc_flat"></span>


</span>
<span class="method apipage">
            <a name="remove_tile"><a class="lift" href="#remove_tile">remove\_tile</a></a><div class="clear"></div>
            <code class="signature apipage">remove\_tile(layer\_name:[String](http://api.haxe.org/String.html)<span></span>, x:[Int](http://api.haxe.org/Int.html)<span></span>, y:[Int](http://api.haxe.org/Int.html)<span></span>) : [Bool](http://api.haxe.org/Bool.html)</code><br/><span class="small_desc_flat"></span>


</span>
<span class="method apipage">
            <a name="remove_tileset"><a class="lift" href="#remove_tileset">remove\_tileset</a></a><div class="clear"></div>
            <code class="signature apipage">remove\_tileset(name:[String](http://api.haxe.org/String.html)<span></span>, \_destroy\_textures:[Bool](http://api.haxe.org/Bool.html)<span></span>) : [Bool](http://api.haxe.org/Bool.html)</code><br/><span class="small_desc_flat"></span>


</span>
<span class="method apipage">
            <a name="tile_at"><a class="lift" href="#tile_at">tile\_at</a></a><div class="clear"></div>
            <code class="signature apipage">tile\_at(layer\_name:[String](http://api.haxe.org/String.html)<span></span>, x:[Int](http://api.haxe.org/Int.html)<span></span>, y:[Int](http://api.haxe.org/Int.html)<span></span>) : [luxe.tilemaps.Tile](../../../api/luxe/tilemaps/Tile.html)</code><br/><span class="small_desc_flat"></span>


</span>
<span class="method apipage">
            <a name="tile_at_pos"><a class="lift" href="#tile_at_pos">tile\_at\_pos</a></a><div class="clear"></div>
            <code class="signature apipage">tile\_at\_pos(layer\_name:[String](http://api.haxe.org/String.html)<span></span>, worldpos:[luxe.Vector](../../../api/luxe/Vector.html)<span></span>, \_scale:[Float](http://api.haxe.org/Float.html)<span></span>) : [luxe.tilemaps.Tile](../../../api/luxe/tilemaps/Tile.html)</code><br/><span class="small_desc_flat"></span>


</span>
<span class="method apipage">
            <a name="tile_pos"><a class="lift" href="#tile_pos">tile\_pos</a></a><div class="clear"></div>
            <code class="signature apipage">tile\_pos(layer\_name:[String](http://api.haxe.org/String.html)<span></span>, x:[Int](http://api.haxe.org/Int.html)<span></span>, y:[Int](http://api.haxe.org/Int.html)<span></span>, scale:[Float](http://api.haxe.org/Float.html)<span></span>, offset\_x:[luxe.tilemaps.TileOffset](../../../api/luxe/tilemaps/TileOffset.html)<span></span>, offset\_y:[luxe.tilemaps.TileOffset](../../../api/luxe/tilemaps/TileOffset.html)<span></span>) : [phoenix.Vector](../../../api/phoenix/Vector.html)</code><br/><span class="small_desc_flat"></span>


</span>
<span class="method apipage">
            <a name="tileset"><a class="lift" href="#tileset">tileset</a></a><div class="clear"></div>
            <code class="signature apipage">tileset(layer\_name:[String](http://api.haxe.org/String.html)<span></span>) : [Null](http://api.haxe.org/Null.html)&lt;[luxe.tilemaps.Tileset](../../../api/luxe/tilemaps/Tileset.html)&gt;</code><br/><span class="small_desc_flat"></span>


</span>
<span class="method apipage">
            <a name="tileset_from_id"><a class="lift" href="#tileset_from_id">tileset\_from\_id</a></a><div class="clear"></div>
            <code class="signature apipage">tileset\_from\_id(\_id:[Int](http://api.haxe.org/Int.html)<span></span>) : [luxe.tilemaps.Tileset](../../../api/luxe/tilemaps/Tileset.html)</code><br/><span class="small_desc_flat"></span>


</span>
<span class="method apipage">
            <a name="worldpos_to_map"><a class="lift" href="#worldpos_to_map">worldpos\_to\_map</a></a><div class="clear"></div>
            <code class="signature apipage">worldpos\_to\_map(worldpos:[luxe.Vector](../../../api/luxe/Vector.html)<span></span>, \_scale:[Float](http://api.haxe.org/Float.html)<span></span>) : [luxe.Vector](../../../api/luxe/Vector.html)</code><br/><span class="small_desc_flat"></span>


</span>



<hr/>

&nbsp;
&nbsp;
&nbsp;
&nbsp;