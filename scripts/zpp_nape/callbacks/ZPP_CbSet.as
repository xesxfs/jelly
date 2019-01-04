package zpp_nape.callbacks
{
   import nape.constraint.class_218;
   import package_29.class_188;
   import package_36.class_284;
   import zpp_nape.space.ZPP_CbSetManager;
   import zpp_nape.util.ZNPList_ZPP_CbType;
   import zpp_nape.util.ZNPNode_ZPP_BodyListener;
   import zpp_nape.util.ZNPNode_ZPP_CbSetPair;
   import zpp_nape.util.ZNPNode_ZPP_CbType;
   import zpp_nape.util.ZNPNode_ZPP_ConstraintListener;
   import zpp_nape.util.ZNPNode_ZPP_InteractionListener;
   import zpp_nape.util.class_213;
   import zpp_nape.util.class_287;
   import zpp_nape.util.class_288;
   import zpp_nape.util.class_289;
   import zpp_nape.util.class_290;
   import zpp_nape.util.class_303;
   
   public final class ZPP_CbSet
   {
      
      public static var var_72:ZPP_CbSet = null;
       
      
      public var var_145:Boolean;
      
      public var var_455:Boolean;
      
      public var var_453:Boolean;
      
      public var var_509:class_188;
      
      public var var_185:class_218;
      
      public var next:ZPP_CbSet;
      
      public var var_367:ZPP_CbSetManager;
      
      public var name_15:class_289;
      
      public var name_26:class_213;
      
      public var id:int;
      
      public var count:int;
      
      public var name_19:class_287;
      
      public var var_283:class_290;
      
      public var var_141:class_303;
      
      public var name_10:ZNPList_ZPP_CbType;
      
      public var var_293:class_288;
      
      public function ZPP_CbSet()
      {
         var_185 = null;
         name_19 = null;
         var_509 = null;
         name_26 = null;
         var_455 = false;
         var_283 = null;
         var_453 = false;
         var_293 = null;
         var_145 = false;
         name_15 = null;
         var_141 = null;
         var_367 = null;
         id = 0;
         next = null;
         count = 0;
         name_10 = null;
         name_10 = new ZNPList_ZPP_CbType();
         name_15 = new class_289();
         var_145 = true;
         var_293 = new class_288();
         var_453 = true;
         var_283 = new class_290();
         var_455 = true;
         name_19 = new class_287();
         name_26 = new class_213();
         id = int(class_284.method_608());
         var_141 = new class_303();
      }
      
      public static function method_117(param1:ZPP_CbSet, param2:ZPP_CbSet) : Boolean
      {
         var _loc5_:* = null as ZPP_CbType;
         var _loc6_:* = null as ZPP_CbType;
         var _loc3_:ZNPNode_ZPP_CbType = param1.name_10.var_73;
         var _loc4_:ZNPNode_ZPP_CbType = param2.name_10.var_73;
         while(_loc3_ != null && _loc4_ != null)
         {
            _loc5_ = _loc3_.var_74;
            _loc6_ = _loc4_.var_74;
            if(_loc5_.id < _loc6_.id)
            {
               return true;
            }
            if(_loc6_.id < _loc5_.id)
            {
               return false;
            }
            _loc3_ = _loc3_.next;
            _loc4_ = _loc4_.next;
         }
         return _loc4_ != null && _loc3_ == null;
      }
      
      public static function method_65(param1:ZNPList_ZPP_CbType) : ZPP_CbSet
      {
         var _loc2_:* = null as ZPP_CbSet;
         var _loc5_:* = null as ZPP_CbType;
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
         var _loc3_:* = null;
         var _loc4_:ZNPNode_ZPP_CbType = param1.var_73;
         while(_loc4_ != null)
         {
            _loc5_ = _loc4_.var_74;
            _loc3_ = _loc2_.name_10.insert(_loc3_,_loc5_);
            _loc5_.var_148.add(_loc2_);
            _loc4_ = _loc4_.next;
         }
         return _loc2_;
      }
      
      public static function method_666(param1:ZPP_InteractionListener, param2:ZPP_CbSet, param3:ZPP_CbSet) : Boolean
      {
         var _loc4_:* = null as ZPP_OptionType;
         var _loc5_:* = null as ZNPList_ZPP_CbType;
         _loc4_ = param1.options1;
         _loc5_ = param2.name_10;
         _loc4_;
         return !!ZPP_OptionType.method_113(_loc5_,_loc4_.name_18) && !ZPP_OptionType.method_113(_loc5_,_loc4_.name_22) && (!!ZPP_OptionType.method_113(_loc5_,_loc4_.name_18) && !ZPP_OptionType.method_113(_loc5_,_loc4_.name_22)) || !!ZPP_OptionType.method_113(_loc5_,_loc4_.name_18) && !ZPP_OptionType.method_113(_loc5_,_loc4_.name_22) && (!!ZPP_OptionType.method_113(_loc5_,_loc4_.name_18) && !ZPP_OptionType.method_113(_loc5_,_loc4_.name_22));
      }
      
      public static function method_887(param1:ZPP_CbSet, param2:ZPP_CbSet) : Boolean
      {
         var _loc5_:* = null as class_303;
         var _loc7_:* = null as ZPP_CbSetPair;
         var _loc4_:* = null;
         if(param1.var_141.length < param2.var_141.length)
         {
            _loc5_ = param1.var_141;
         }
         else
         {
            _loc5_ = param2.var_141;
         }
         var _loc6_:ZNPNode_ZPP_CbSetPair = _loc5_.var_73;
         while(_loc6_ != null)
         {
            _loc7_ = _loc6_.var_74;
            if(_loc7_.a == param1 && _loc7_.b == param2 || _loc7_.a == param2 && _loc7_.b == param1)
            {
               _loc4_ = _loc7_;
               break;
            }
            _loc6_ = _loc6_.next;
         }
         if(_loc4_ == null)
         {
            if(ZPP_CbSetPair.var_72 == null)
            {
               _loc7_ = new ZPP_CbSetPair();
            }
            else
            {
               _loc7_ = ZPP_CbSetPair.var_72;
               ZPP_CbSetPair.var_72 = _loc7_.next;
               _loc7_.next = null;
            }
            _loc7_.var_145 = true;
            if(ZPP_CbSet.method_117(param1,param2))
            {
               _loc7_.a = param1;
               _loc7_.b = param2;
            }
            else
            {
               _loc7_.a = param2;
               _loc7_.b = param1;
            }
            _loc4_ = _loc7_;
            param1.var_141.add(_loc4_);
            if(param2 != param1)
            {
               param2.var_141.add(_loc4_);
            }
         }
         if(_loc4_.var_145)
         {
            _loc4_.var_145 = false;
            _loc4_.method_138();
         }
         var _loc3_:ZPP_CbSetPair = _loc4_;
         return _loc3_.name_15.var_73 == null;
      }
      
      public static function method_137(param1:ZPP_CbSet, param2:ZPP_CbSet, param3:ZPP_InteractionListener) : Boolean
      {
         var _loc6_:* = null as class_303;
         var _loc8_:* = null as ZPP_CbSetPair;
         var _loc5_:* = null;
         if(param1.var_141.length < param2.var_141.length)
         {
            _loc6_ = param1.var_141;
         }
         else
         {
            _loc6_ = param2.var_141;
         }
         var _loc7_:ZNPNode_ZPP_CbSetPair = _loc6_.var_73;
         while(_loc7_ != null)
         {
            _loc8_ = _loc7_.var_74;
            if(_loc8_.a == param1 && _loc8_.b == param2 || _loc8_.a == param2 && _loc8_.b == param1)
            {
               _loc5_ = _loc8_;
               break;
            }
            _loc7_ = _loc7_.next;
         }
         if(_loc5_ == null)
         {
            if(ZPP_CbSetPair.var_72 == null)
            {
               _loc8_ = new ZPP_CbSetPair();
            }
            else
            {
               _loc8_ = ZPP_CbSetPair.var_72;
               ZPP_CbSetPair.var_72 = _loc8_.next;
               _loc8_.next = null;
            }
            _loc8_.var_145 = true;
            if(ZPP_CbSet.method_117(param1,param2))
            {
               _loc8_.a = param1;
               _loc8_.b = param2;
            }
            else
            {
               _loc8_.a = param2;
               _loc8_.b = param1;
            }
            _loc5_ = _loc8_;
            param1.var_141.add(_loc5_);
            if(param2 != param1)
            {
               param2.var_141.add(_loc5_);
            }
         }
         if(_loc5_.var_145)
         {
            _loc5_.var_145 = false;
            _loc5_.method_138();
         }
         var _loc4_:ZPP_CbSetPair = _loc5_;
         var _loc9_:ZNPNode_ZPP_InteractionListener = _loc4_.name_15.var_73;
         return _loc9_ != null && _loc9_.var_74 == param3 && _loc9_.next == null;
      }
      
      public static function method_759(param1:ZPP_CbSet, param2:ZPP_CbSet, param3:int, param4:Function) : void
      {
         var _loc7_:* = null as class_303;
         var _loc9_:* = null as ZPP_CbSetPair;
         var _loc11_:* = null as ZPP_InteractionListener;
         var _loc6_:* = null;
         if(param1.var_141.length < param2.var_141.length)
         {
            _loc7_ = param1.var_141;
         }
         else
         {
            _loc7_ = param2.var_141;
         }
         var _loc8_:ZNPNode_ZPP_CbSetPair = _loc7_.var_73;
         while(_loc8_ != null)
         {
            _loc9_ = _loc8_.var_74;
            if(_loc9_.a == param1 && _loc9_.b == param2 || _loc9_.a == param2 && _loc9_.b == param1)
            {
               _loc6_ = _loc9_;
               break;
            }
            _loc8_ = _loc8_.next;
         }
         if(_loc6_ == null)
         {
            if(ZPP_CbSetPair.var_72 == null)
            {
               _loc9_ = new ZPP_CbSetPair();
            }
            else
            {
               _loc9_ = ZPP_CbSetPair.var_72;
               ZPP_CbSetPair.var_72 = _loc9_.next;
               _loc9_.next = null;
            }
            _loc9_.var_145 = true;
            if(ZPP_CbSet.method_117(param1,param2))
            {
               _loc9_.a = param1;
               _loc9_.b = param2;
            }
            else
            {
               _loc9_.a = param2;
               _loc9_.b = param1;
            }
            _loc6_ = _loc9_;
            param1.var_141.add(_loc6_);
            if(param2 != param1)
            {
               param2.var_141.add(_loc6_);
            }
         }
         if(_loc6_.var_145)
         {
            _loc6_.var_145 = false;
            _loc6_.method_138();
         }
         var _loc5_:ZPP_CbSetPair = _loc6_;
         var _loc10_:ZNPNode_ZPP_InteractionListener = _loc5_.name_15.var_73;
         while(_loc10_ != null)
         {
            _loc11_ = _loc10_.var_74;
            if(_loc11_.event == param3)
            {
               param4(_loc11_);
            }
            _loc10_ = _loc10_.next;
         }
      }
      
      public final function validate() : void
      {
         if(var_145)
         {
            var_145 = false;
            realvalidate_listeners();
         }
         if(var_453)
         {
            var_453 = false;
            realvalidate_bodylisteners();
         }
         if(var_455)
         {
            var_455 = false;
            realvalidate_conlisteners();
         }
      }
      
      public final function realvalidate_listeners() : void
      {
         var _loc2_:* = null as ZPP_CbType;
         var _loc3_:* = null as ZNPNode_ZPP_InteractionListener;
         var _loc4_:* = null as ZNPNode_ZPP_InteractionListener;
         var _loc5_:* = null as ZNPNode_ZPP_InteractionListener;
         var _loc6_:* = null as ZPP_InteractionListener;
         var _loc7_:* = null as ZPP_Listener;
         var _loc8_:* = null as class_289;
         var _loc9_:* = null as ZNPNode_ZPP_InteractionListener;
         var _loc10_:* = null as ZNPNode_ZPP_InteractionListener;
         var _loc11_:Boolean = false;
         name_15.clear();
         var _loc1_:ZNPNode_ZPP_CbType = name_10.var_73;
         while(_loc1_ != null)
         {
            _loc2_ = _loc1_.var_74;
            _loc3_ = null;
            _loc4_ = name_15.var_73;
            _loc5_ = _loc2_.name_15.var_73;
            while(_loc5_ != null)
            {
               _loc6_ = _loc5_.var_74;
               if(_loc4_ != null && _loc4_.var_74 == _loc6_)
               {
                  _loc5_ = _loc5_.next;
                  _loc3_ = _loc4_;
                  _loc4_ = _loc4_.next;
               }
               else if(_loc4_ == null || (_loc6_.name_17 > _loc7_.name_17 || _loc6_.name_17 == _loc7_.name_17 && _loc6_.id > _loc7_.id))
               {
                  if(_loc6_.space == var_367.space)
                  {
                     _loc8_ = name_15;
                     if(ZNPNode_ZPP_InteractionListener.var_72 == null)
                     {
                        _loc10_ = new ZNPNode_ZPP_InteractionListener();
                     }
                     else
                     {
                        _loc10_ = ZNPNode_ZPP_InteractionListener.var_72;
                        ZNPNode_ZPP_InteractionListener.var_72 = _loc10_.next;
                        _loc10_.next = null;
                     }
                     null;
                     _loc10_.var_74 = _loc6_;
                     _loc9_ = _loc10_;
                     if(_loc3_ == null)
                     {
                        _loc9_.next = _loc8_.var_73;
                        _loc8_.var_73 = _loc9_;
                     }
                     else
                     {
                        _loc9_.next = _loc3_.next;
                        _loc3_.next = _loc9_;
                     }
                     _loc11_ = true;
                     _loc8_.name_2 = _loc11_;
                     _loc8_.var_76 = _loc11_;
                     _loc8_.length = _loc8_.length + 1;
                     _loc3_ = _loc9_;
                  }
                  _loc5_ = _loc5_.next;
               }
               else
               {
                  _loc3_ = _loc4_;
                  _loc4_ = _loc4_.next;
               }
            }
            _loc1_ = _loc1_.next;
         }
      }
      
      public final function realvalidate_conlisteners() : void
      {
         var _loc2_:* = null as ZPP_CbType;
         var _loc3_:* = null as ZNPNode_ZPP_ConstraintListener;
         var _loc4_:* = null as ZNPNode_ZPP_ConstraintListener;
         var _loc5_:* = null as ZNPNode_ZPP_ConstraintListener;
         var _loc6_:* = null as ZPP_ConstraintListener;
         var _loc7_:* = null as ZPP_Listener;
         var _loc8_:* = null as ZPP_OptionType;
         var _loc9_:* = null as class_290;
         var _loc10_:* = null as ZNPNode_ZPP_ConstraintListener;
         var _loc11_:* = null as ZNPNode_ZPP_ConstraintListener;
         var _loc12_:Boolean = false;
         var_283.clear();
         var _loc1_:ZNPNode_ZPP_CbType = name_10.var_73;
         while(_loc1_ != null)
         {
            _loc2_ = _loc1_.var_74;
            _loc3_ = null;
            _loc4_ = var_283.var_73;
            _loc5_ = _loc2_.var_283.var_73;
            while(_loc5_ != null)
            {
               _loc6_ = _loc5_.var_74;
               if(_loc4_ != null && _loc4_.var_74 == _loc6_)
               {
                  _loc5_ = _loc5_.next;
                  _loc3_ = _loc4_;
                  _loc4_ = _loc4_.next;
               }
               else if(_loc4_ == null || (_loc6_.name_17 > _loc7_.name_17 || _loc6_.name_17 == _loc7_.name_17 && _loc6_.id > _loc7_.id))
               {
                  _loc6_.name_32;
                  _loc8_ = ZPP_OptionType;
                  if(!_loc8_.method_113(name_10,_loc8_.name_22) && _loc6_.space == var_367.space)
                  {
                     _loc9_ = var_283;
                     if(ZNPNode_ZPP_ConstraintListener.var_72 == null)
                     {
                        _loc11_ = new ZNPNode_ZPP_ConstraintListener();
                     }
                     else
                     {
                        _loc11_ = ZNPNode_ZPP_ConstraintListener.var_72;
                        ZNPNode_ZPP_ConstraintListener.var_72 = _loc11_.next;
                        _loc11_.next = null;
                     }
                     null;
                     _loc11_.var_74 = _loc6_;
                     _loc10_ = _loc11_;
                     if(_loc3_ == null)
                     {
                        _loc10_.next = _loc9_.var_73;
                        _loc9_.var_73 = _loc10_;
                     }
                     else
                     {
                        _loc10_.next = _loc3_.next;
                        _loc3_.next = _loc10_;
                     }
                     _loc12_ = true;
                     _loc9_.name_2 = _loc12_;
                     _loc9_.var_76 = _loc12_;
                     _loc9_.length = _loc9_.length + 1;
                     _loc3_ = _loc10_;
                  }
                  _loc5_ = _loc5_.next;
               }
               else
               {
                  _loc3_ = _loc4_;
                  _loc4_ = _loc4_.next;
               }
            }
            _loc1_ = _loc1_.next;
         }
      }
      
      public final function realvalidate_bodylisteners() : void
      {
         var _loc2_:* = null as ZPP_CbType;
         var _loc3_:* = null as ZNPNode_ZPP_BodyListener;
         var _loc4_:* = null as ZNPNode_ZPP_BodyListener;
         var _loc5_:* = null as ZNPNode_ZPP_BodyListener;
         var _loc6_:* = null as ZPP_BodyListener;
         var _loc7_:* = null as ZPP_Listener;
         var _loc8_:* = null as ZPP_OptionType;
         var _loc9_:* = null as class_288;
         var _loc10_:* = null as ZNPNode_ZPP_BodyListener;
         var _loc11_:* = null as ZNPNode_ZPP_BodyListener;
         var _loc12_:Boolean = false;
         var_293.clear();
         var _loc1_:ZNPNode_ZPP_CbType = name_10.var_73;
         while(_loc1_ != null)
         {
            _loc2_ = _loc1_.var_74;
            _loc3_ = null;
            _loc4_ = var_293.var_73;
            _loc5_ = _loc2_.var_293.var_73;
            while(_loc5_ != null)
            {
               _loc6_ = _loc5_.var_74;
               if(_loc4_ != null && _loc4_.var_74 == _loc6_)
               {
                  _loc5_ = _loc5_.next;
                  _loc3_ = _loc4_;
                  _loc4_ = _loc4_.next;
               }
               else if(_loc4_ == null || (_loc6_.name_17 > _loc7_.name_17 || _loc6_.name_17 == _loc7_.name_17 && _loc6_.id > _loc7_.id))
               {
                  _loc6_.name_32;
                  _loc8_ = ZPP_OptionType;
                  if(!_loc8_.method_113(name_10,_loc8_.name_22) && _loc6_.space == var_367.space)
                  {
                     _loc9_ = var_293;
                     if(ZNPNode_ZPP_BodyListener.var_72 == null)
                     {
                        _loc11_ = new ZNPNode_ZPP_BodyListener();
                     }
                     else
                     {
                        _loc11_ = ZNPNode_ZPP_BodyListener.var_72;
                        ZNPNode_ZPP_BodyListener.var_72 = _loc11_.next;
                        _loc11_.next = null;
                     }
                     null;
                     _loc11_.var_74 = _loc6_;
                     _loc10_ = _loc11_;
                     if(_loc3_ == null)
                     {
                        _loc10_.next = _loc9_.var_73;
                        _loc9_.var_73 = _loc10_;
                     }
                     else
                     {
                        _loc10_.next = _loc3_.next;
                        _loc3_.next = _loc10_;
                     }
                     _loc12_ = true;
                     _loc9_.name_2 = _loc12_;
                     _loc9_.var_76 = _loc12_;
                     _loc9_.length = _loc9_.length + 1;
                     _loc3_ = _loc10_;
                  }
                  _loc5_ = _loc5_.next;
               }
               else
               {
                  _loc3_ = _loc4_;
                  _loc4_ = _loc4_.next;
               }
            }
            _loc1_ = _loc1_.next;
         }
      }
      
      public final function method_131() : void
      {
         var _loc2_:* = null as ZPP_CbSetPair;
         var _loc1_:ZNPNode_ZPP_CbSetPair = var_141.var_73;
         while(_loc1_ != null)
         {
            _loc2_ = _loc1_.var_74;
            _loc2_.var_145 = true;
            _loc1_ = _loc1_.next;
         }
      }
   }
}
