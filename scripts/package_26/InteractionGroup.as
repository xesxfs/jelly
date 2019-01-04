package package_26
{
   import package_29.class_188;
   import zpp_nape.dynamics.ZPP_InteractionGroup;
   import zpp_nape.util.ZPP_InteractionGroupList;
   import zpp_nape.util.ZPP_InteractorList;
   
   public final class InteractionGroup
   {
       
      
      public var zpp_inner:ZPP_InteractionGroup;
      
      public function InteractionGroup(param1:Boolean = false)
      {
         zpp_inner = null;
         zpp_inner = new ZPP_InteractionGroup();
         zpp_inner.outer = this;
         if(zpp_inner.name_36 != param1)
         {
            zpp_inner.invalidate(true);
            zpp_inner.name_36 = param1;
         }
         zpp_inner.name_36;
      }
      
      public final function toString() : String
      {
         var _loc1_:String = "InteractionGroup";
         if(zpp_inner.name_36)
         {
            _loc1_ = _loc1_ + class_2.method_14(-1820302606);
         }
         return _loc1_;
      }
      
      public function set name_36(param1:Boolean) : Boolean
      {
         if(zpp_inner.name_36 != param1)
         {
            zpp_inner.invalidate(true);
            zpp_inner.name_36 = param1;
         }
         return zpp_inner.name_36;
      }
      
      public function set group(param1:InteractionGroup) : InteractionGroup
      {
         zpp_inner.method_362(param1 == null?null:param1.zpp_inner);
         if(zpp_inner.group == null)
         {
            return null;
         }
         return zpp_inner.group.outer;
      }
      
      public function get name_26() : class_188
      {
         if(zpp_inner.var_509 == null)
         {
            zpp_inner.var_509 = ZPP_InteractorList.method_65(zpp_inner.name_26,true);
         }
         return zpp_inner.var_509;
      }
      
      public function get name_36() : Boolean
      {
         return zpp_inner.name_36;
      }
      
      public function get name_54() : class_190
      {
         if(zpp_inner.var_870 == null)
         {
            zpp_inner.var_870 = ZPP_InteractionGroupList.method_65(zpp_inner.name_54,true);
         }
         return zpp_inner.var_870;
      }
      
      public function get group() : InteractionGroup
      {
         if(zpp_inner.group == null)
         {
            return null;
         }
         return zpp_inner.group.outer;
      }
   }
}
