package package_13
{
   public final class class_72
   {
       
      
      public function class_72()
      {
         super();
      }
      
      public static function method_146(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         param1 = param1 / param4;
         if(_loc5_ < 0.363636363636364)
         {
            return param3 * (7.5625 * param1 * param1) + param2;
         }
         if(param1 < 0.727272727272727)
         {
            param1 = param1 - 0.545454545454545;
            return param3 * (7.5625 * _loc5_ * param1 + 0.75) + param2;
         }
         if(param1 < 0.909090909090909)
         {
            param1 = param1 - 0.818181818181818;
            return param3 * (7.5625 * _loc5_ * param1 + 0.9375) + param2;
         }
         return param3 * (7.5625 * (param1 = param1 - 0.954545454545455) * param1 + 0.984375) + param2;
      }
      
      public static function method_160(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         return param3 - method_146(param4 - param1,0,param3,param4) + param2;
      }
      
      public static function method_177(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         if(param1 < param4 * 0.5)
         {
            return method_160(param1 * 2,0,param3,param4) * 0.5 + param2;
         }
         return method_146(param1 * 2 - param4,0,param3,param4) * 0.5 + param3 * 0.5 + param2;
      }
   }
}
