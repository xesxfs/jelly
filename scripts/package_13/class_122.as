package package_13
{
   public final class class_122
   {
       
      
      public function class_122()
      {
         super();
      }
      
      public static function method_160(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = 0, param6:Number = 0) : Number
      {
         var _loc7_:Number = NaN;
         if(param1 == 0)
         {
            return param2;
         }
         param1 = param1 / param4;
         if(_loc8_ == 1)
         {
            return param2 + param3;
         }
         if(!param6)
         {
            param6 = param4 * 0.3;
         }
         if(!param5 || param5 < Math.abs(param3))
         {
            param5 = param3;
            _loc7_ = param6 * 0.25;
         }
         else
         {
            _loc7_ = param6 / (2 * Math.PI) * Math.asin(param3 / param5);
         }
         return -(param5 * Math.pow(2,10 * --param1) * Math.sin((param1 * param4 - _loc7_) * (2 * Math.PI) / param6)) + param2;
      }
      
      public static function method_146(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = 0, param6:Number = 0) : Number
      {
         var _loc7_:Number = NaN;
         if(param1 == 0)
         {
            return param2;
         }
         param1 = param1 / param4;
         if(_loc8_ == 1)
         {
            return param2 + param3;
         }
         if(!param6)
         {
            param6 = param4 * 0.3;
         }
         if(!param5 || param5 < Math.abs(param3))
         {
            param5 = param3;
            _loc7_ = param6 * 0.25;
         }
         else
         {
            _loc7_ = param6 / (2 * Math.PI) * Math.asin(param3 / param5);
         }
         return param5 * Math.pow(2,-10 * param1) * Math.sin((param1 * param4 - _loc7_) * (2 * Math.PI) / param6) + param3 + param2;
      }
      
      public static function method_177(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = 0, param6:Number = 0) : Number
      {
         var _loc7_:Number = NaN;
         if(param1 == 0)
         {
            return param2;
         }
         param1 = param1 / (param4 * 0.5);
         if(_loc8_ == 2)
         {
            return param2 + param3;
         }
         if(!param6)
         {
            param6 = param4 * 0.45;
         }
         if(!param5 || param5 < Math.abs(param3))
         {
            param5 = param3;
            _loc7_ = param6 * 0.25;
         }
         else
         {
            _loc7_ = param6 / (2 * Math.PI) * Math.asin(param3 / param5);
         }
         if(param1 < 1)
         {
            return -0.5 * (param5 * Math.pow(2,10 * param1--) * Math.sin((param1 * param4 - _loc7_) * (2 * Math.PI) / param6)) + param2;
         }
         return param5 * Math.pow(2,-10 * param1--) * Math.sin((param1 * param4 - _loc7_) * (2 * Math.PI) / param6) * 0.5 + param3 + param2;
      }
   }
}
