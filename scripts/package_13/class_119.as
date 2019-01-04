package package_13
{
   public final class class_119
   {
       
      
      public function class_119()
      {
         super();
      }
      
      public static function method_160(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         return -param3 * Math.cos(param1 / param4 * (Math.PI * 0.5)) + param3 + param2;
      }
      
      public static function method_146(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         return param3 * Math.sin(param1 / param4 * (Math.PI * 0.5)) + param2;
      }
      
      public static function method_177(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         return -param3 * 0.5 * (Math.cos(Math.PI * param1 / param4) - 1) + param2;
      }
   }
}
