package zpp_nape.callbacks
{
   import zpp_nape.util.ZNPList_ZPP_CbType;
   import zpp_nape.util.ZNPNode_ZPP_InteractionListener;
   import zpp_nape.util.class_289;
   
   public final class ZPP_CbSetPair
   {
      
      public static var var_72:ZPP_CbSetPair = null;
       
      
      public var var_145:Boolean;
      
      public var next:ZPP_CbSetPair;
      
      public var name_15:class_289;
      
      public var b:ZPP_CbSet;
      
      public var a:ZPP_CbSet;
      
      public function ZPP_CbSetPair()
      {
         name_15 = null;
         var_145 = false;
         next = null;
         b = null;
         a = null;
         name_15 = new class_289();
      }
      
      public static function method_65(param1:ZPP_CbSet, param2:ZPP_CbSet) : ZPP_CbSetPair
      {
         var _loc3_:* = null as ZPP_CbSetPair;
         if(ZPP_CbSetPair.var_72 == null)
         {
            _loc3_ = new ZPP_CbSetPair();
         }
         else
         {
            _loc3_ = ZPP_CbSetPair.var_72;
            ZPP_CbSetPair.var_72 = _loc3_.next;
            _loc3_.next = null;
         }
         _loc3_.var_145 = true;
         if(ZPP_CbSet.method_117(param1,param2))
         {
            _loc3_.a = param1;
            _loc3_.b = param2;
         }
         else
         {
            _loc3_.a = param2;
            _loc3_.b = param1;
         }
         return _loc3_;
      }
      
      public static function method_117(param1:ZPP_CbSetPair, param2:ZPP_CbSetPair) : Boolean
      {
         return ZPP_CbSet.method_117(param1.a,param2.a) || param1.a == param2.a && ZPP_CbSet.method_117(param1.b,param2.b);
      }
      
      public final function method_138() : void
      {
         var _loc3_:* = null as ZPP_InteractionListener;
         var _loc4_:* = null as ZPP_InteractionListener;
         var _loc5_:* = null as ZPP_OptionType;
         var _loc6_:* = null as ZNPList_ZPP_CbType;
         name_15.clear();
         var _loc1_:ZNPNode_ZPP_InteractionListener = a.name_15.var_73;
         var _loc2_:ZNPNode_ZPP_InteractionListener = b.name_15.var_73;
         while(_loc1_ != null && _loc2_ != null)
         {
            _loc3_ = _loc1_.var_74;
            _loc4_ = _loc2_.var_74;
            if(_loc3_ == _loc4_)
            {
               _loc5_ = _loc3_.options1;
               _loc6_ = a.name_10;
               _loc5_;
               if(!!ZPP_OptionType.method_113(_loc6_,_loc5_.name_18) && !ZPP_OptionType.method_113(_loc6_,_loc5_.name_22) && (!!ZPP_OptionType.method_113(_loc6_,_loc5_.name_18) && !ZPP_OptionType.method_113(_loc6_,_loc5_.name_22)) || !!ZPP_OptionType.method_113(_loc6_,_loc5_.name_18) && !ZPP_OptionType.method_113(_loc6_,_loc5_.name_22) && (!!ZPP_OptionType.method_113(_loc6_,_loc5_.name_18) && !ZPP_OptionType.method_113(_loc6_,_loc5_.name_22)))
               {
                  name_15.add(_loc3_);
               }
               _loc1_ = _loc1_.next;
               _loc2_ = _loc2_.next;
            }
            else if(_loc3_.name_17 > _loc4_.name_17 || _loc3_.name_17 == _loc4_.name_17 && _loc3_.id > _loc4_.id)
            {
               _loc1_ = _loc1_.next;
            }
            else
            {
               _loc2_ = _loc2_.next;
            }
         }
      }
   }
}
