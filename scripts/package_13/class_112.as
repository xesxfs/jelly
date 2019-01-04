package package_13
{
   public final class class_112
   {
       
      
      public function class_112()
      {
         super();
      }
      
      public static function method_160(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         return -param3 * (Math.sqrt(1 - (param1 = Number(param1 / param4)) * param1) - 1) + param2;
      }
      
      public static function method_146(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         return param3 * Math.sqrt(1 - (param1 = Number(param1 / param4 - 1)) * param1) + param2;
      }
      
      public static function method_177(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         param1 = param1 / (param4 * 0.5);
         if(_loc5_ < 1)
         {
            return -param3 * 0.5 * (Math.sqrt(1 - param1 * param1) - 1) + param2;
         }
         return param3 * 0.5 * (Math.sqrt(1 - (param1 = Number(param1 - 2)) * param1) + 1) + param2;
      }
   }
}
