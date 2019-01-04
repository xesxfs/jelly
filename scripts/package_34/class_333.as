package package_34
{
   import package_29.Body;
   import zpp_nape.util.class_223;
   
   public final class class_333 extends class_245
   {
       
      
      public function class_333()
      {
         super();
      }
      
      override public function toString() : String
      {
         var _loc1_:String = class_2.method_14(-1820302613);
         _loc1_ = _loc1_ + ["WAKE","SLEEP"][zpp_inner.event - class_223.var_450];
         _loc1_ = _loc1_ + (":" + zpp_inner.body.outer.toString());
         _loc1_ = _loc1_ + (class_2.method_14(-1820302809) + Std.string(zpp_inner.listener.outer));
         return _loc1_;
      }
      
      public function get body() : Body
      {
         return zpp_inner.body.outer;
      }
   }
}
