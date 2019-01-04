package package_1
{
   public final class class_20
   {
       
      
      public var parameters:Array;
      
      public var splitValues:Function;
      
      public function class_20(param1:Function, param2:Array)
      {
         super();
         splitValues = param1;
         parameters = param2;
      }
      
      public final function toString() : String
      {
         var _loc1_:* = "";
         _loc1_ = _loc1_ + class_2.method_14(-1820302580);
         _loc1_ = _loc1_ + (class_2.method_14(-1820302471) + String(splitValues));
         _loc1_ = _loc1_ + class_2.method_14(-1820302668);
         _loc1_ = _loc1_ + (class_2.method_14(-1820302804) + String(parameters));
         _loc1_ = _loc1_ + "]";
         return _loc1_;
      }
   }
}
