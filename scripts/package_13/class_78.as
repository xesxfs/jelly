package package_13
{
   public final class class_78
   {
       
      
      public function class_78()
      {
         super();
      }
      
      public static function linear(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         param1 = 2 * param1 / param4;
         if(_loc5_ <= 1)
         {
            return (1 - param1) * param3 + param2;
         }
         return (param1 - 1) * param3 + param2;
      }
      
      public static function method_769(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         param1 = 1 - 2 * param1 / param4;
         return (1 - Math.sqrt(1 - param1 * param1)) * param3 + param2;
      }
      
      public static function method_867(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         return (1 - Math.sin(Math.PI * param1 / param4)) * param3 + param2;
      }
      
      public static function method_804(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         param1 = 1 - 2 * param1 / param4;
         return param1 * param1 * param3 + param2;
      }
      
      public static function method_861(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         param1 = 1 - 2 * param1 / param4;
         if(param1 < 0)
         {
            param1 = -param1;
         }
         return param1 * param1 * param1 * param3 + param2;
      }
      
      public static function method_791(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         param1 = 1 - 2 * param1 / param4;
         return param1 * param1 * param1 * param1 * param3 + param2;
      }
      
      public static function method_801(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         param1 = 1 - 2 * param1 / param4;
         if(param1 < 0)
         {
            param1 = -param1;
         }
         return param1 * param1 * param1 * param1 * param1 * param3 + param2;
      }
   }
}
