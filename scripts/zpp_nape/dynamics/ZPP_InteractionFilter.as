package zpp_nape.dynamics
{
   import package_26.class_222;
   import package_32.class_230;
   import zpp_nape.shape.ZPP_Shape;
   import zpp_nape.util.ZNPNode_ZPP_Shape;
   import zpp_nape.util.class_292;
   
   public final class ZPP_InteractionFilter
   {
      
      public static var var_72:ZPP_InteractionFilter = null;
       
      
      public var var_222:class_230;
      
      public var name_21;
      
      public var shapes:class_292;
      
      public var name_48:int;
      
      public var name_46:int;
      
      public var outer:class_222;
      
      public var next:ZPP_InteractionFilter;
      
      public var name_43:int;
      
      public var name_47:int;
      
      public var name_14:int;
      
      public var name_13:int;
      
      public function ZPP_InteractionFilter()
      {
         name_43 = 0;
         name_47 = 0;
         name_48 = 0;
         name_46 = 0;
         name_14 = 0;
         name_13 = 0;
         var_222 = null;
         shapes = null;
         outer = null;
         name_21 = null;
         next = null;
         shapes = new class_292();
         var _loc1_:int = 1;
         name_47 = _loc1_;
         _loc1_ = _loc1_;
         name_46 = _loc1_;
         name_13 = _loc1_;
         _loc1_ = -1;
         name_43 = _loc1_;
         _loc1_ = _loc1_;
         name_48 = _loc1_;
         name_14 = _loc1_;
      }
      
      public final function method_109() : class_222
      {
         var _loc1_:* = null as ZPP_InteractionFilter;
         if(outer == null)
         {
            outer = new class_222();
            _loc1_ = outer.zpp_inner;
            _loc1_.outer = null;
            _loc1_.next = ZPP_InteractionFilter.var_72;
            ZPP_InteractionFilter.var_72 = _loc1_;
            outer.zpp_inner = this;
         }
         return outer;
      }
      
      public final function invalidate() : void
      {
         var _loc2_:* = null as ZPP_Shape;
         var _loc1_:ZNPNode_ZPP_Shape = shapes.var_73;
         while(_loc1_ != null)
         {
            _loc2_ = _loc1_.var_74;
            _loc2_.method_708();
            _loc1_ = _loc1_.next;
         }
      }
      
      public final function copy() : ZPP_InteractionFilter
      {
         var _loc1_:* = null as ZPP_InteractionFilter;
         if(ZPP_InteractionFilter.var_72 == null)
         {
            _loc1_ = new ZPP_InteractionFilter();
         }
         else
         {
            _loc1_ = ZPP_InteractionFilter.var_72;
            ZPP_InteractionFilter.var_72 = _loc1_.next;
            _loc1_.next = null;
         }
         null;
         _loc1_.name_13 = name_13;
         _loc1_.name_14 = name_14;
         _loc1_.name_46 = name_46;
         _loc1_.name_48 = name_48;
         _loc1_.name_47 = name_47;
         _loc1_.name_43 = name_43;
         return _loc1_;
      }
   }
}
