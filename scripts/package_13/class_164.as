package package_13
{
   public final class class_164
   {
       
      
      public function class_164()
      {
         super();
      }
      
      public static function method_160(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = 1.70158) : Number
      {
         param1 = param1 / param4;
         return param3 * _loc6_ * param1 * ((param5 + 1) * param1 - param5) + param2;
      }
      
      public static function method_146(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = 1.70158) : Number
      {
         param1 = param1 / param4 - 1;
         return param3 * (_loc6_ * param1 * ((param5 + 1) * param1 + param5) + 1) + param2;
      }
      
      public static function method_177(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = 1.70158) : Number
      {
         param1 = param1 / (param4 * 0.5);
         if(_loc6_ < 1)
         {
            param5 = param5 * 1.525;
            return param3 * 0.5 * (param1 * param1 * ((_loc6_ + 1) * param1 - param5)) + param2;
         }
         param1 = param1 - 2;
         param5 = param5 * 1.525;
         return param3 * 0.5 * (_loc6_ * param1 * ((_loc6_ + 1) * param1 + param5) + 2) + param2;
      }
   }
}
