package package_34
{
   import package_26.class_227;
   import package_29.Interactor;
   
   public final class class_246 extends class_245
   {
       
      
      public function class_246()
      {
         super();
      }
      
      override public function toString() : String
      {
         var _loc1_:String = class_2.method_14(-1820302613);
         _loc1_ = _loc1_ + ["BEGIN","END","","","","","ONGOING"][zpp_inner.event];
         _loc1_ = _loc1_ + (":" + zpp_inner.int1.var_307.toString() + "/" + zpp_inner.int2.var_307.toString());
         _loc1_ = _loc1_ + (class_2.method_14(-1820302818) + zpp_inner.var_174.toString());
         _loc1_ = _loc1_ + (class_2.method_14(-1820302809) + Std.string(zpp_inner.listener.outer));
         return _loc1_;
      }
      
      public function get int2() : Interactor
      {
         return zpp_inner.int2.var_307;
      }
      
      public function get int1() : Interactor
      {
         return zpp_inner.int1.var_307;
      }
      
      public function get name_12() : class_227
      {
         return zpp_inner.var_174;
      }
   }
}
