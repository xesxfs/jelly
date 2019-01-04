package package_34
{
   import zpp_nape.callbacks.ZPP_OptionType;
   
   public final class class_313
   {
       
      
      public var zpp_inner:ZPP_OptionType;
      
      public function class_313(param1:* = undefined, param2:* = undefined)
      {
         zpp_inner = null;
         zpp_inner = new ZPP_OptionType();
         zpp_inner.outer = this;
         if(param1 != null)
         {
            method_288(param1);
         }
         if(param2 != null)
         {
            method_332(param2);
         }
      }
      
      public final function toString() : String
      {
         if(zpp_inner.var_668 == null)
         {
            zpp_inner.method_443();
         }
         var _loc1_:String = zpp_inner.var_668.toString();
         if(zpp_inner.var_672 == null)
         {
            zpp_inner.method_540();
         }
         var _loc2_:String = zpp_inner.var_672.toString();
         return class_2.method_14(-1820302725) + _loc1_ + class_2.method_14(-1820302529) + _loc2_ + "}";
      }
      
      public final function method_288(param1:* = undefined) : class_313
      {
         zpp_inner.append(zpp_inner.name_18,param1);
         return this;
      }
      
      public function get name_18() : class_216
      {
         if(zpp_inner.var_668 == null)
         {
            zpp_inner.method_443();
         }
         return zpp_inner.var_668;
      }
      
      public function get name_22() : class_216
      {
         if(zpp_inner.var_672 == null)
         {
            zpp_inner.method_540();
         }
         return zpp_inner.var_672;
      }
      
      public final function method_332(param1:* = undefined) : class_313
      {
         zpp_inner.append(zpp_inner.name_22,param1);
         return this;
      }
   }
}
