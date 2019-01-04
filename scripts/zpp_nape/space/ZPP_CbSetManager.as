package zpp_nape.space
{
   import zpp_nape.callbacks.ZPP_CbSet;
   import zpp_nape.callbacks.ZPP_CbSetPair;
   import zpp_nape.callbacks.ZPP_CbType;
   import zpp_nape.util.ZNPList_ZPP_CbType;
   import zpp_nape.util.ZNPNode_ZPP_CbSetPair;
   import zpp_nape.util.ZNPNode_ZPP_CbType;
   import zpp_nape.util.ZPP_Set_ZPP_CbSet;
   
   public final class ZPP_CbSetManager
   {
       
      
      public var space:ZPP_Space;
      
      public var var_148:ZPP_Set_ZPP_CbSet;
      
      public function ZPP_CbSetManager(param1:ZPP_Space)
      {
         space = null;
         var_148 = null;
         if(ZPP_Set_ZPP_CbSet.var_72 == null)
         {
            var_148 = new ZPP_Set_ZPP_CbSet();
         }
         else
         {
            var_148 = ZPP_Set_ZPP_CbSet.var_72;
            ZPP_Set_ZPP_CbSet.var_72 = var_148.next;
            var_148.next = null;
         }
         null;
         var_148.lt = ZPP_CbSet.method_117;
         space = param1;
      }
      
      public static function clear() : void
      {
      }
      
      public final function remove(param1:ZPP_CbSet) : void
      {
         var _loc2_:* = null as ZPP_CbSetPair;
         var _loc3_:* = null as ZPP_CbSetPair;
         var _loc4_:* = null as ZPP_CbSet;
         var_148.remove(param1);
         while(param1.var_141.var_73 != null)
         {
            _loc2_ = param1.var_141.method_105();
            if(_loc2_.a != _loc2_.b)
            {
               if(param1 == _loc2_.a)
               {
                  _loc2_.b.var_141.remove(_loc2_);
               }
               else
               {
                  _loc2_.a.var_141.remove(_loc2_);
               }
            }
            _loc3_ = _loc2_;
            _loc4_ = null;
            _loc3_.b = _loc4_;
            _loc3_.a = _loc4_;
            _loc3_.name_15.clear();
            _loc3_.next = ZPP_CbSetPair.var_72;
            ZPP_CbSetPair.var_72 = _loc3_;
         }
         param1.var_367 = null;
      }
      
      public final function method_65(param1:ZNPList_ZPP_CbType) : ZPP_CbSet
      {
         var _loc2_:* = null as ZPP_CbSet;
         var _loc5_:* = null as ZPP_CbSet;
         var _loc6_:* = null as ZPP_CbSet;
         var _loc7_:* = null as ZPP_CbType;
         if(param1.var_73 == null)
         {
            return null;
         }
         if(ZPP_CbSet.var_72 == null)
         {
            _loc2_ = new ZPP_CbSet();
         }
         else
         {
            _loc2_ = ZPP_CbSet.var_72;
            ZPP_CbSet.var_72 = _loc2_.next;
            _loc2_.next = null;
         }
         null;
         var _loc3_:ZNPList_ZPP_CbType = _loc2_.name_10;
         _loc2_.name_10 = param1;
         var _loc4_:ZPP_Set_ZPP_CbSet = var_148.find_weak(_loc2_);
         if(_loc4_ != null)
         {
            _loc5_ = _loc4_.data;
         }
         else
         {
            _loc6_ = ZPP_CbSet.method_65(param1);
            var_148.insert(_loc6_);
            _loc6_.var_367 = this;
            _loc5_ = _loc6_;
         }
         _loc2_.name_10 = _loc3_;
         _loc6_ = _loc2_;
         _loc6_.name_15.clear();
         _loc6_.var_145 = true;
         _loc6_.var_293.clear();
         _loc6_.var_453 = true;
         _loc6_.var_283.clear();
         _loc6_.var_455 = true;
         while(_loc6_.name_10.var_73 != null)
         {
            _loc7_ = _loc6_.name_10.method_105();
            _loc7_.var_148.remove(_loc6_);
         }
         null;
         _loc6_.next = ZPP_CbSet.var_72;
         ZPP_CbSet.var_72 = _loc6_;
         return _loc5_;
      }
   }
}
