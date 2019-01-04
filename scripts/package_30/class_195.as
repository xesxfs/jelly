package package_30
{
   import flash.text.TextFormat;
   import package_1.class_12;
   import package_1.class_19;
   
   public final class class_195
   {
       
      
      public function class_195()
      {
         super();
         trace(class_2.method_14(-1820302679));
      }
      
      public static function init() : void
      {
         class_12.method_88("_text",method_624,method_552,null,method_623);
         class_12.method_98("_text_color",method_732,["_text_color_r","_text_color_g","_text_color_b"]);
         class_12.method_88("_text_color_r",method_188,method_182,["color",true,"r"]);
         class_12.method_88("_text_color_g",method_188,method_182,["color",true,"g"]);
         class_12.method_88("_text_color_b",method_188,method_182,["color",true,"b"]);
         class_12.method_88("_text_indent",method_188,method_182,["indent"]);
         class_12.method_88("_text_leading",method_188,method_182,["leading"]);
         class_12.method_88("_text_leftMargin",method_188,method_182,["leftMargin"]);
         class_12.method_88("_text_letterSpacing",method_188,method_182,["letterSpacing"]);
         class_12.method_88("_text_rightMargin",method_188,method_182,["rightMargin"]);
         class_12.method_88("_text_size",method_188,method_182,["size"]);
      }
      
      public static function method_624(param1:Object, param2:Array, param3:Object = null) : Number
      {
         return -param1.text.length;
      }
      
      public static function method_182(param1:Object, param2:Number, param3:Array, param4:Object = null) : void
      {
         var _loc8_:* = null;
         var _loc5_:TextFormat = param1.getTextFormat();
         var _loc6_:String = param3[0];
         var _loc7_:Boolean = param3[1];
         if(!_loc7_)
         {
            _loc5_[_loc6_] = param2;
         }
         else
         {
            _loc8_ = param3[2];
            if(_loc8_ == "r")
            {
               _loc5_[_loc6_] = _loc5_[_loc6_] & 65535 | param2 << 16;
            }
            if(_loc8_ == "g")
            {
               _loc5_[_loc6_] = _loc5_[_loc6_] & 16711935 | param2 << 8;
            }
            if(_loc8_ == "b")
            {
               _loc5_[_loc6_] = _loc5_[_loc6_] & 16776960 | param2;
            }
         }
         param1.defaultTextFormat = _loc5_;
         param1.setTextFormat(_loc5_);
      }
      
      public static function method_552(param1:Object, param2:Number, param3:Array, param4:Object = null) : void
      {
         if(param2 < 0)
         {
            param1.text = param4.oldText.substr(0,-Math.round(param2));
         }
         else
         {
            param1.text = param4.newText.substr(0,Math.round(param2));
         }
      }
      
      public static function method_188(param1:Object, param2:Array, param3:Object = null) : Number
      {
         var _loc7_:* = null;
         var _loc4_:TextFormat = param1.getTextFormat();
         var _loc5_:String = param2[0];
         var _loc6_:Boolean = param2[1];
         if(!_loc6_)
         {
            return _loc4_[_loc5_];
         }
         _loc7_ = param2[2];
         if(_loc7_ == "r")
         {
            return class_19.method_102(_loc4_[_loc5_]);
         }
         if(_loc7_ == "g")
         {
            return class_19.method_100(_loc4_[_loc5_]);
         }
         if(_loc7_ == "b")
         {
            return class_19.method_103(_loc4_[_loc5_]);
         }
         return NaN;
      }
      
      public static function method_732(param1:Number, param2:Array) : Array
      {
         var _loc3_:Array = new Array();
         _loc3_.push({
            "name":param2[0],
            "value":class_19.method_102(param1)
         });
         _loc3_.push({
            "name":param2[1],
            "value":class_19.method_100(param1)
         });
         _loc3_.push({
            "name":param2[2],
            "value":class_19.method_103(param1)
         });
         return _loc3_;
      }
      
      public static function method_623(param1:Object, param2:Array, param3:Object, param4:Object) : Number
      {
         param4.oldText = param1.text;
         param4.newText = param3;
         return param4.newText.length;
      }
   }
}
