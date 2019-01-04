package package_34
{
   import package_26.class_252;
   import package_29.Interactor;
   
   public final class class_298 extends class_245
   {
       
      
      public function class_298()
      {
         super();
      }
      
      override public function toString() : String
      {
         var _loc1_:String = class_2.method_14(-1820302831);
         _loc1_ = _loc1_ + (":" + zpp_inner.int1.var_307.toString() + "/" + zpp_inner.int2.var_307.toString());
         _loc1_ = _loc1_ + (class_2.method_14(-1820302818) + zpp_inner.var_680.method_109().toString());
         _loc1_ = _loc1_ + (class_2.method_14(-1820302770) + Std.string(zpp_inner.listener.outer));
         return _loc1_;
      }
      
      public function get name_9() : Boolean
      {
         return zpp_inner.var_807;
      }
      
      public function get int2() : Interactor
      {
         return zpp_inner.int2.var_307;
      }
      
      public function get int1() : Interactor
      {
         return zpp_inner.int1.var_307;
      }
      
      public function get name_20() : class_252
      {
         return zpp_inner.var_680.method_109();
      }
   }
}
