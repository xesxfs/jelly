package package_30
{
   import flash.filters.ColorMatrixFilter;
   import flash.geom.ColorTransform;
   import package_1.class_12;
   import package_1.class_19;
   
   public final class class_194
   {
      
      private static var var_840:Number = 0.072169;
      
      private static var var_838:Number = 0.71516;
      
      private static var var_857:Number = 0.212671;
       
      
      public function class_194()
      {
         super();
         trace(class_2.method_14(-1820302679));
      }
      
      public static function method_727(param1:*, param2:Array) : Array
      {
         var _loc3_:Array = new Array();
         if(param1 == null)
         {
            _loc3_.push({
               "name":class_2.method_14(-1820302598),
               "value":1
            });
            _loc3_.push({
               "name":class_2.method_14(-1820302794),
               "value":0
            });
            _loc3_.push({
               "name":class_2.method_14(-1820302514),
               "value":1
            });
            _loc3_.push({
               "name":class_2.method_14(-1820302688),
               "value":0
            });
            _loc3_.push({
               "name":class_2.method_14(-1820302558),
               "value":1
            });
            _loc3_.push({
               "name":class_2.method_14(-1820302530),
               "value":0
            });
         }
         else
         {
            _loc3_.push({
               "name":class_2.method_14(-1820302598),
               "value":0
            });
            _loc3_.push({
               "name":class_2.method_14(-1820302794),
               "value":class_19.method_102(param1)
            });
            _loc3_.push({
               "name":class_2.method_14(-1820302514),
               "value":0
            });
            _loc3_.push({
               "name":class_2.method_14(-1820302688),
               "value":class_19.method_100(param1)
            });
            _loc3_.push({
               "name":class_2.method_14(-1820302558),
               "value":0
            });
            _loc3_.push({
               "name":class_2.method_14(-1820302530),
               "value":class_19.method_103(param1)
            });
         }
         return _loc3_;
      }
      
      public static function method_577(param1:Object, param2:Number, param3:Array, param4:Object = null) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         _loc5_ = param2 + 1;
         _loc6_ = Math.round(param2 * -128);
         var _loc7_:ColorTransform = new ColorTransform(_loc5_,_loc5_,_loc5_,1,_loc6_,_loc6_,_loc6_,0);
         param1.transform.colorTransform = _loc7_;
      }
      
      public static function method_537(param1:Object, param2:Array, param3:Object = null) : Number
      {
         var _loc4_:Boolean = param2[0];
         var _loc5_:ColorTransform = param1.transform.colorTransform;
         var _loc6_:Number = 1 - (_loc5_.redMultiplier + _loc5_.greenMultiplier + _loc5_.blueMultiplier) / 3;
         var _loc7_:Number = (_loc5_.redOffset + _loc5_.greenOffset + _loc5_.blueOffset) / 3;
         if(_loc4_)
         {
            return _loc7_ > 0?Number(_loc7_ / 255):Number(-_loc6_);
         }
         return _loc7_ / 100;
      }
      
      public static function method_472(param1:Object, param2:Array, param3:Object = null) : Number
      {
         var _loc4_:Array = method_348(param1);
         var _loc5_:Boolean = param2[0];
         var _loc6_:Number = !!_loc5_?0.333333333333333:Number(var_857);
         var _loc7_:Number = !!_loc5_?0.333333333333333:Number(var_838);
         var _loc8_:Number = !!_loc5_?0.333333333333333:Number(var_840);
         var _loc9_:Number = ((_loc4_[0] - _loc6_) / (1 - _loc6_) + (_loc4_[6] - _loc7_) / (1 - _loc7_) + (_loc4_[12] - _loc8_) / (1 - _loc8_)) / 3;
         var _loc10_:Number = 1 - (_loc4_[1] / _loc7_ + _loc4_[2] / _loc8_ + _loc4_[5] / _loc6_ + _loc4_[7] / _loc8_ + _loc4_[10] / _loc6_ + _loc4_[11] / _loc7_) / 6;
         return (_loc9_ + _loc10_) / 2;
      }
      
      public static function method_336(param1:Object, param2:Array, param3:Object = null) : Number
      {
         return param1.transform.colorTransform[param2[0]] * 100;
      }
      
      public static function method_519(param1:Object, param2:Number, param3:Array, param4:Object = null) : void
      {
         var _loc6_:* = NaN;
         var _loc7_:Number = NaN;
         var _loc5_:Boolean = param3[0];
         if(_loc5_)
         {
            _loc6_ = Number(1 - Math.abs(param2));
            _loc7_ = param2 > 0?Number(Math.round(param2 * 255)):0;
         }
         else
         {
            _loc6_ = 1;
            _loc7_ = Math.round(param2 * 100);
         }
         var _loc8_:ColorTransform = new ColorTransform(_loc6_,_loc6_,_loc6_,1,_loc7_,_loc7_,_loc7_,0);
         param1.transform.colorTransform = _loc8_;
      }
      
      public static function method_461(param1:Object, param2:Number, param3:Array, param4:Object = null) : void
      {
         var _loc5_:Boolean = param3[0];
         var _loc6_:Number = !!_loc5_?0.333333333333333:Number(var_857);
         var _loc7_:Number = !!_loc5_?0.333333333333333:Number(var_838);
         var _loc8_:Number = !!_loc5_?0.333333333333333:Number(var_840);
         var _loc9_:Number = param2;
         var _loc10_:Number = 1 - _loc9_;
         var _loc11_:Number = _loc6_ * _loc10_;
         var _loc12_:Number = _loc7_ * _loc10_;
         var _loc13_:Number = _loc8_ * _loc10_;
         var _loc14_:Array = [_loc11_ + _loc9_,_loc12_,_loc13_,0,0,_loc11_,_loc12_ + _loc9_,_loc13_,0,0,_loc11_,_loc12_,_loc13_ + _loc9_,0,0,0,0,0,1,0];
         method_327(param1,_loc14_);
      }
      
      private static function method_348(param1:Object) : Array
      {
         var _loc2_:* = 0;
         while(_loc2_ < param1.filters.length)
         {
            if(param1.filters[_loc2_] is ColorMatrixFilter)
            {
               return param1.filters[_loc2_].matrix.concat();
            }
            _loc2_++;
         }
         return [1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0];
      }
      
      public static function method_326(param1:Array, param2:Array) : Number
      {
         return Math.abs(param1[0] - param2[0]) + Math.abs(param1[1] - param2[1]) + Math.abs(param1[2] - param2[2]);
      }
      
      public static function method_576(param1:Object, param2:Number, param3:Array, param4:Object = null) : void
      {
         method_327(param1,method_214(param2));
      }
      
      public static function method_644(param1:Object, param2:Array, param3:Object = null) : Number
      {
         var _loc6_:* = NaN;
         var _loc8_:* = NaN;
         var _loc4_:Array = method_348(param1);
         var _loc5_:* = [];
         _loc5_[0] = {
            "angle":-179.9,
            "matrix":method_214(-179.9)
         };
         _loc5_[1] = {
            "angle":180,
            "matrix":method_214(180)
         };
         _loc6_ = 0;
         while(_loc6_ < _loc5_.length)
         {
            _loc5_[_loc6_].distance = method_326(_loc4_,_loc5_[_loc6_].matrix);
            _loc6_++;
         }
         var _loc7_:* = 15;
         _loc6_ = 0;
         while(_loc6_ < _loc7_)
         {
            if(_loc5_[0].distance < _loc5_[1].distance)
            {
               _loc8_ = 1;
            }
            else
            {
               _loc8_ = 0;
            }
            _loc5_[_loc8_].angle = (_loc5_[0].angle + _loc5_[1].angle) / 2;
            _loc5_[_loc8_].matrix = method_214(_loc5_[_loc8_].angle);
            _loc5_[_loc8_].distance = method_326(_loc4_,_loc5_[_loc8_].matrix);
            _loc6_++;
         }
         return _loc5_[_loc8_].angle;
      }
      
      public static function method_214(param1:Number) : Array
      {
         var _loc2_:Number = param1 * Math.PI / 180;
         var _loc3_:Number = var_857;
         var _loc4_:Number = var_838;
         var _loc5_:Number = var_840;
         var _loc6_:Number = Math.cos(_loc2_);
         var _loc7_:Number = Math.sin(_loc2_);
         var _loc8_:Array = [_loc3_ + _loc6_ * (1 - _loc3_) + _loc7_ * -_loc3_,_loc4_ + _loc6_ * -_loc4_ + _loc7_ * -_loc4_,_loc5_ + _loc6_ * -_loc5_ + _loc7_ * (1 - _loc5_),0,0,_loc3_ + _loc6_ * -_loc3_ + _loc7_ * 0.143,_loc4_ + _loc6_ * (1 - _loc4_) + _loc7_ * 0.14,_loc5_ + _loc6_ * -_loc5_ + _loc7_ * -0.283,0,0,_loc3_ + _loc6_ * -_loc3_ + _loc7_ * -(1 - _loc3_),_loc4_ + _loc6_ * -_loc4_ + _loc7_ * _loc4_,_loc5_ + _loc6_ * (1 - _loc5_) + _loc7_ * _loc5_,0,0,0,0,0,1,0];
         return _loc8_;
      }
      
      public static function method_157(param1:Object, param2:Array, param3:Object = null) : Number
      {
         return param1.transform.colorTransform[param2[0]];
      }
      
      public static function init() : void
      {
         class_12.method_88(class_2.method_14(-1820302493),method_336,method_315,[class_2.method_14(-1820302641)]);
         class_12.method_88(class_2.method_14(-1820302491),method_157,method_155,[class_2.method_14(-1820302447)]);
         class_12.method_88(class_2.method_14(-1820302535),method_336,method_315,[class_2.method_14(-1820302631)]);
         class_12.method_88(class_2.method_14(-1820302553),method_157,method_155,[class_2.method_14(-1820302477)]);
         class_12.method_88(class_2.method_14(-1820302703),method_336,method_315,[class_2.method_14(-1820302534)]);
         class_12.method_88(class_2.method_14(-1820302704),method_157,method_155,[class_2.method_14(-1820302811)]);
         class_12.method_88(class_2.method_14(-1820302686),method_336,method_315,[class_2.method_14(-1820302807)]);
         class_12.method_88(class_2.method_14(-1820302685),method_157,method_155,[class_2.method_14(-1820302513)]);
         class_12.method_88(class_2.method_14(-1820302598),method_157,method_155,[class_2.method_14(-1820302641)]);
         class_12.method_88(class_2.method_14(-1820302794),method_157,method_155,[class_2.method_14(-1820302447)]);
         class_12.method_88(class_2.method_14(-1820302514),method_157,method_155,[class_2.method_14(-1820302631)]);
         class_12.method_88(class_2.method_14(-1820302688),method_157,method_155,[class_2.method_14(-1820302477)]);
         class_12.method_88(class_2.method_14(-1820302558),method_157,method_155,[class_2.method_14(-1820302534)]);
         class_12.method_88(class_2.method_14(-1820302530),method_157,method_155,[class_2.method_14(-1820302811)]);
         class_12.method_88(class_2.method_14(-1820302490),method_157,method_155,[class_2.method_14(-1820302807)]);
         class_12.method_88(class_2.method_14(-1820302446),method_157,method_155,[class_2.method_14(-1820302513)]);
         class_12.method_98("_color",method_727);
         class_12.method_98("_colorTransform",method_575);
         class_12.method_88(class_2.method_14(-1820302695),method_537,method_519,[false]);
         class_12.method_88(class_2.method_14(-1820302651),method_537,method_519,[true]);
         class_12.method_88(class_2.method_14(-1820302815),method_719,method_577);
         class_12.method_88(class_2.method_14(-1820302495),method_644,method_576);
         class_12.method_88(class_2.method_14(-1820302548),method_472,method_461,[false]);
         class_12.method_88(class_2.method_14(-1820302718),method_472,method_461,[true]);
      }
      
      private static function method_327(param1:Object, param2:Array) : void
      {
         var _loc6_:* = null;
         var _loc3_:Array = param1.filters.concat();
         var _loc4_:Boolean = false;
         var _loc5_:* = 0;
         while(_loc5_ < _loc3_.length)
         {
            if(_loc3_[_loc5_] is ColorMatrixFilter)
            {
               _loc3_[_loc5_].matrix = param2.concat();
               _loc4_ = true;
            }
            _loc5_++;
         }
         if(!_loc4_)
         {
            _loc6_ = new ColorMatrixFilter(param2);
            _loc3_[_loc3_.length] = _loc6_;
         }
         param1.filters = _loc3_;
      }
      
      public static function method_155(param1:Object, param2:Number, param3:Array, param4:Object = null) : void
      {
         var _loc5_:ColorTransform = param1.transform.colorTransform;
         _loc5_[param3[0]] = param2;
         param1.transform.colorTransform = _loc5_;
      }
      
      public static function method_315(param1:Object, param2:Number, param3:Array, param4:Object = null) : void
      {
         var _loc5_:ColorTransform = param1.transform.colorTransform;
         _loc5_[param3[0]] = param2 / 100;
         param1.transform.colorTransform = _loc5_;
      }
      
      public static function method_719(param1:Object, param2:Array, param3:Object = null) : Number
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:ColorTransform = param1.transform.colorTransform;
         _loc5_ = (_loc4_.redMultiplier + _loc4_.greenMultiplier + _loc4_.blueMultiplier) / 3 - 1;
         _loc6_ = (_loc4_.redOffset + _loc4_.greenOffset + _loc4_.blueOffset) / 3 / -128;
         return (_loc5_ + _loc6_) / 2;
      }
      
      public static function method_575(param1:Object, param2:Array) : Array
      {
         var _loc3_:Array = new Array();
         if(param1 == null)
         {
            _loc3_.push({
               "name":class_2.method_14(-1820302598),
               "value":1
            });
            _loc3_.push({
               "name":class_2.method_14(-1820302794),
               "value":0
            });
            _loc3_.push({
               "name":class_2.method_14(-1820302514),
               "value":1
            });
            _loc3_.push({
               "name":class_2.method_14(-1820302688),
               "value":0
            });
            _loc3_.push({
               "name":class_2.method_14(-1820302558),
               "value":1
            });
            _loc3_.push({
               "name":class_2.method_14(-1820302530),
               "value":0
            });
         }
         else
         {
            _loc3_.push({
               "name":class_2.method_14(-1820302598),
               "value":param1.redMultiplier
            });
            _loc3_.push({
               "name":class_2.method_14(-1820302794),
               "value":param1.redOffset
            });
            _loc3_.push({
               "name":class_2.method_14(-1820302558),
               "value":param1.blueMultiplier
            });
            _loc3_.push({
               "name":class_2.method_14(-1820302530),
               "value":param1.blueOffset
            });
            _loc3_.push({
               "name":class_2.method_14(-1820302514),
               "value":param1.greenMultiplier
            });
            _loc3_.push({
               "name":class_2.method_14(-1820302688),
               "value":param1.greenOffset
            });
            _loc3_.push({
               "name":class_2.method_14(-1820302490),
               "value":param1.alphaMultiplier
            });
            _loc3_.push({
               "name":class_2.method_14(-1820302446),
               "value":param1.alphaOffset
            });
         }
         return _loc3_;
      }
   }
}
