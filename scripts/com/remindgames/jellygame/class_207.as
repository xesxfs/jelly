package com.remindgames.jellygame
{
   import flash.geom.Point;
   
   public final class class_207
   {
      
      private static var r:uint = Math.random() * uint.MAX_VALUE;
      
      private static const const_42:Number = 2.3283064370807974E-10;
       
      
      public function class_207()
      {
         super();
      }
      
      public static function method_166(param1:Number) : Number
      {
         return param1 * 180 / Math.PI;
      }
      
      public static function method_179(param1:int, param2:int) : int
      {
         return int(random() * (param2 - param1 + 1)) + param1;
      }
      
      public static function angle(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean = true) : Number
      {
         var _loc6_:Number = param3 - param1;
         var _loc7_:Number = param4 - param2;
         var _loc8_:Number = Math.atan2(_loc7_,_loc6_);
         return !!param5?Number(method_528(_loc8_)):Number(_loc8_);
      }
      
      public static function method_832(param1:Point, param2:Point, param3:Number, param4:Point = null) : Point
      {
         if(param4 == null)
         {
            param4 = new Point();
         }
         var _loc5_:Number = -param3 / 180 * Math.PI;
         var _loc6_:Number = param1.x - param2.x;
         var _loc7_:Number = param2.y - param1.y;
         param4.x = param2.x + Math.cos(_loc5_) * _loc6_ - Math.sin(_loc5_) * _loc7_;
         param4.y = param2.y - (Math.sin(_loc5_) * _loc6_ + Math.cos(_loc5_) * _loc7_);
         return param4;
      }
      
      public static function method_173(param1:Number) : Number
      {
         return param1 * Math.PI / 180;
      }
      
      public static function method_926(param1:Number, param2:Number) : Number
      {
         return random() * (param2 - param1) + param1;
      }
      
      public static function random() : Number
      {
         r = r ^ r << 21;
         r = r ^ r >>> 35;
         r = r ^ r << 4;
         return r * const_42;
      }
      
      public static function method_595(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : Boolean
      {
         var _loc9_:Boolean = false;
         var _loc10_:Number = (param8 - param6) * (param3 - param1) - (param7 - param5) * (param4 - param2);
         var _loc11_:Number = (param7 - param5) * (param2 - param6) - (param8 - param6) * (param1 - param5);
         var _loc12_:Number = (param3 - param1) * (param2 - param6) - (param4 - param2) * (param1 - param5);
         if(_loc10_ == 0)
         {
            return _loc9_;
         }
         var _loc13_:Number = _loc11_ / _loc10_;
         var _loc14_:Number = _loc12_ / _loc10_;
         if(_loc13_ >= 0 && _loc13_ <= 1 && _loc14_ >= 0 && _loc14_ <= 1)
         {
            _loc9_ = true;
         }
         return _loc9_;
      }
      
      public static function method_858(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean = true) : Number
      {
         var _loc6_:Number = param3 - param1;
         var _loc7_:Number = param4 - param2;
         var _loc8_:Number = Math.atan2(_loc7_,_loc6_) / Math.PI * 180;
         return !!param5?Number(method_542(_loc8_)):Number(_loc8_);
      }
      
      public static function method_528(param1:Number) : Number
      {
         return param1 < 0?Number(Math.PI * 2 + param1):param1 >= Math.PI * 2?Number(param1 - Math.PI * 2):Number(param1);
      }
      
      public static function method_542(param1:Number) : Number
      {
         return param1 < 0?Number(360 + param1):param1 >= 360?Number(param1 - 360):Number(param1);
      }
   }
}
