package package_30
{
   import flash.geom.Rectangle;
   import package_1.class_12;
   
   public final class class_314
   {
       
      
      public function class_314()
      {
         super();
         trace(class_2.method_14(-1820302679));
      }
      
      public static function init() : void
      {
         class_12.method_88("_frame",method_685,method_728);
         class_12.method_88("_autoAlpha",method_737,method_678);
         class_12.method_98("_scale",method_676);
         class_12.method_98("_scrollRect",method_729);
         class_12.method_88("_scrollRect_x",method_206,method_212,["x"]);
         class_12.method_88("_scrollRect_y",method_206,method_212,["y"]);
         class_12.method_88("_scrollRect_left",method_206,method_212,["left"]);
         class_12.method_88("_scrollRect_right",method_206,method_212,["right"]);
         class_12.method_88("_scrollRect_top",method_206,method_212,["top"]);
         class_12.method_88("_scrollRect_bottom",method_206,method_212,["bottom"]);
         class_12.method_88("_scrollRect_width",method_206,method_212,["width"]);
         class_12.method_88("_scrollRect_height",method_206,method_212,["height"]);
      }
      
      public static function method_728(param1:Object, param2:Number, param3:Array, param4:Object = null) : void
      {
         param1.gotoAndStop(Math.round(param2));
      }
      
      public static function method_678(param1:Object, param2:Number, param3:Array, param4:Object = null) : void
      {
         param1.alpha = param2;
         param1.visible = param2 > 0;
      }
      
      public static function method_685(param1:Object, param2:Array, param3:Object = null) : Number
      {
         return param1.currentFrame;
      }
      
      public static function method_729(param1:Rectangle, param2:Array, param3:Object = null) : Array
      {
         var _loc4_:Array = new Array();
         if(param1 == null)
         {
            _loc4_.push({
               "name":"_scrollRect_x",
               "value":0
            });
            _loc4_.push({
               "name":"_scrollRect_y",
               "value":0
            });
            _loc4_.push({
               "name":"_scrollRect_width",
               "value":100
            });
            _loc4_.push({
               "name":"_scrollRect_height",
               "value":100
            });
         }
         else
         {
            _loc4_.push({
               "name":"_scrollRect_x",
               "value":param1.x
            });
            _loc4_.push({
               "name":"_scrollRect_y",
               "value":param1.y
            });
            _loc4_.push({
               "name":"_scrollRect_width",
               "value":param1.width
            });
            _loc4_.push({
               "name":"_scrollRect_height",
               "value":param1.height
            });
         }
         return _loc4_;
      }
      
      public static function method_737(param1:Object, param2:Array, param3:Object = null) : Number
      {
         return param1.alpha;
      }
      
      public static function method_206(param1:Object, param2:Array, param3:Object = null) : Number
      {
         return param1.scrollRect[param2[0]];
      }
      
      public static function method_676(param1:Number, param2:Array) : Array
      {
         var _loc3_:Array = new Array();
         _loc3_.push({
            "name":"scaleX",
            "value":param1
         });
         _loc3_.push({
            "name":"scaleY",
            "value":param1
         });
         return _loc3_;
      }
      
      public static function method_212(param1:Object, param2:Number, param3:Array, param4:Object = null) : void
      {
         var _loc5_:Rectangle = param1.scrollRect;
         _loc5_[param3[0]] = Math.round(param2);
         param1.scrollRect = _loc5_;
      }
   }
}
