package package_34
{
   import nape.constraint.Constraint;
   import zpp_nape.util.class_223;
   
   public final class class_332 extends class_245
   {
       
      
      public function class_332()
      {
         super();
      }
      
      override public function toString() : String
      {
         var _loc1_:String = class_2.method_14(-1820302613);
         _loc1_ = _loc1_ + ["WAKE","SLEEP","BREAK"][zpp_inner.event - class_223.var_450];
         zpp_inner.name_44.outer;
         _loc1_ = _loc1_ + (":" + Constraint.toString());
         _loc1_ = _loc1_ + (class_2.method_14(-1820302809) + Std.string(zpp_inner.listener.outer));
         return _loc1_;
      }
      
      public function get name_44() : Constraint
      {
         return zpp_inner.name_44.outer;
      }
   }
}
