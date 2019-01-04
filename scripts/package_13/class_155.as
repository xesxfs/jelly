package package_13
{
   public final class class_155
   {
       
      
      public function class_155()
      {
         super();
      }
      
      public static function method_160(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         return param3 * (param1 = param1 / param4) * param1 + param2;
      }
      
      public static function method_146(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         return -param3 * (param1 = param1 / param4) * (param1 - 2) + param2;
      }
      
      public static function method_177(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         param1 = param1 / (param4 * 0.5);
         if(_loc5_ < 1)
         {
            return param3 * 0.5 * param1 * param1 + param2;
         }
         return -param3 * 0.5 * (--param1 * (param1 - 2) - 1) + param2;
      }
   }
}
