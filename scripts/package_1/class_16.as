package package_1
{
   public final class class_16
   {
       
      
      public var getValue:Function;
      
      public var modifyValues:Function;
      
      public function class_16(param1:Function, param2:Function)
      {
         super();
         modifyValues = param1;
         getValue = param2;
      }
      
      public final function toString() : String
      {
         var _loc1_:* = "";
         _loc1_ = _loc1_ + class_2.method_14(-1820302617);
         _loc1_ = _loc1_ + (class_2.method_14(-1820302669) + String(modifyValues));
         _loc1_ = _loc1_ + class_2.method_14(-1820302668);
         _loc1_ = _loc1_ + (class_2.method_14(-1820302813) + String(getValue));
         _loc1_ = _loc1_ + "]";
         return _loc1_;
      }
   }
}
