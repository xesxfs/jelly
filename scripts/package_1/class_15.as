package package_1
{
   public final class class_15
   {
       
      
      public var parameters:Array;
      
      public var getValue:Function;
      
      public var preProcess:Function;
      
      public var setValue:Function;
      
      public function class_15(param1:Function, param2:Function, param3:Array = null, param4:Function = null)
      {
         super();
         getValue = param1;
         setValue = param2;
         parameters = param3;
         preProcess = param4;
      }
      
      public final function toString() : String
      {
         var _loc1_:* = "";
         _loc1_ = _loc1_ + class_2.method_14(-1820302481);
         _loc1_ = _loc1_ + (class_2.method_14(-1820302813) + String(getValue));
         _loc1_ = _loc1_ + class_2.method_14(-1820302668);
         _loc1_ = _loc1_ + (class_2.method_14(-1820302708) + String(setValue));
         _loc1_ = _loc1_ + class_2.method_14(-1820302668);
         _loc1_ = _loc1_ + (class_2.method_14(-1820302804) + String(parameters));
         _loc1_ = _loc1_ + class_2.method_14(-1820302668);
         _loc1_ = _loc1_ + (class_2.method_14(-1820302497) + String(preProcess));
         _loc1_ = _loc1_ + "]";
         return _loc1_;
      }
   }
}
