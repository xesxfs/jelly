package zpp_nape.callbacks
{
   import package_34.class_313;
   import package_34.class_336;
   import zpp_nape.space.ZPP_Space;
   import zpp_nape.util.ZNPList_ZPP_CbType;
   import zpp_nape.util.ZNPNode_ZPP_BodyListener;
   import zpp_nape.util.ZNPNode_ZPP_CbSet;
   import zpp_nape.util.ZNPNode_ZPP_CbType;
   import zpp_nape.util.class_223;
   import zpp_nape.util.class_288;
   
   public final class ZPP_BodyListener extends ZPP_Listener
   {
       
      
      public var outer_zn:class_336;
      
      public var name_32:ZPP_OptionType;
      
      public var handler:Function;
      
      public function ZPP_BodyListener(param1:class_313, param2:int, param3:Function)
      {
         handler = null;
         name_32 = null;
         outer_zn = null;
         super();
         event = param2;
         handler = param3;
         body = this;
         type = class_223.var_905;
         name_32 = param1.zpp_inner;
      }
      
      override public function method_353(param1:int) : void
      {
         method_120();
         event = param1;
         method_121();
      }
      
      override public function method_120() : void
      {
         var _loc2_:* = null as ZPP_CbType;
         var _loc3_:* = null as ZNPNode_ZPP_CbSet;
         var _loc4_:* = null as ZPP_CbSet;
         var _loc1_:ZNPNode_ZPP_CbType = name_32.name_18.var_73;
         while(_loc1_ != null)
         {
            _loc2_ = _loc1_.var_74;
            _loc2_.var_293.remove(this);
            _loc3_ = _loc2_.var_148.var_73;
            while(_loc3_ != null)
            {
               _loc4_ = _loc3_.var_74;
               _loc4_.var_453 = true;
               _loc3_ = _loc3_.next;
            }
            _loc1_ = _loc1_.next;
         }
         name_32.handler = null;
      }
      
      override public function method_331() : void
      {
         if(space != null)
         {
            method_120();
            method_121();
         }
      }
      
      public final function cbtype_change(param1:ZPP_CbType, param2:Boolean, param3:Boolean) : void
      {
         var _loc5_:* = null as ZNPNode_ZPP_CbType;
         var _loc6_:* = null as ZNPNode_ZPP_CbType;
         var _loc7_:* = null as ZPP_CbType;
         var _loc8_:* = null as ZNPList_ZPP_CbType;
         var _loc9_:* = null as ZNPNode_ZPP_CbType;
         var _loc10_:Boolean = false;
         method_120();
         var _loc4_:ZPP_OptionType = name_32;
         if(param2)
         {
            if(param3)
            {
               _loc5_ = null;
               _loc6_ = _loc4_.name_18.var_73;
               while(_loc6_ != null)
               {
                  _loc7_ = _loc6_.var_74;
                  if(param1.id < _loc7_.id)
                  {
                     break;
                  }
                  _loc5_ = _loc6_;
                  _loc6_ = _loc6_.next;
               }
               _loc8_ = _loc4_.name_18;
               if(ZNPNode_ZPP_CbType.var_72 == null)
               {
                  _loc9_ = new ZNPNode_ZPP_CbType();
               }
               else
               {
                  _loc9_ = ZNPNode_ZPP_CbType.var_72;
                  ZNPNode_ZPP_CbType.var_72 = _loc9_.next;
                  _loc9_.next = null;
               }
               null;
               _loc9_.var_74 = param1;
               _loc6_ = _loc9_;
               if(_loc5_ == null)
               {
                  _loc6_.next = _loc8_.var_73;
                  _loc8_.var_73 = _loc6_;
               }
               else
               {
                  _loc6_.next = _loc5_.next;
                  _loc5_.next = _loc6_;
               }
               _loc10_ = true;
               _loc8_.name_2 = _loc10_;
               _loc8_.var_76 = _loc10_;
               _loc8_.length = _loc8_.length + 1;
               _loc6_;
            }
            else
            {
               _loc4_.name_18.remove(param1);
            }
         }
         else if(param3)
         {
            _loc5_ = null;
            _loc6_ = _loc4_.name_22.var_73;
            while(_loc6_ != null)
            {
               _loc7_ = _loc6_.var_74;
               if(param1.id < _loc7_.id)
               {
                  break;
               }
               _loc5_ = _loc6_;
               _loc6_ = _loc6_.next;
            }
            _loc8_ = _loc4_.name_22;
            if(ZNPNode_ZPP_CbType.var_72 == null)
            {
               _loc9_ = new ZNPNode_ZPP_CbType();
            }
            else
            {
               _loc9_ = ZNPNode_ZPP_CbType.var_72;
               ZNPNode_ZPP_CbType.var_72 = _loc9_.next;
               _loc9_.next = null;
            }
            null;
            _loc9_.var_74 = param1;
            _loc6_ = _loc9_;
            if(_loc5_ == null)
            {
               _loc6_.next = _loc8_.var_73;
               _loc8_.var_73 = _loc6_;
            }
            else
            {
               _loc6_.next = _loc5_.next;
               _loc5_.next = _loc6_;
            }
            _loc10_ = true;
            _loc8_.name_2 = _loc10_;
            _loc8_.var_76 = _loc10_;
            _loc8_.length = _loc8_.length + 1;
            _loc6_;
         }
         else
         {
            _loc4_.name_22.remove(param1);
         }
         method_121();
      }
      
      override public function method_121() : void
      {
         var _loc2_:* = null as ZPP_CbType;
         var _loc3_:* = null as ZNPNode_ZPP_BodyListener;
         var _loc4_:* = null as ZNPNode_ZPP_BodyListener;
         var _loc5_:* = null as ZPP_BodyListener;
         var _loc6_:* = null as class_288;
         var _loc7_:* = null as ZNPNode_ZPP_BodyListener;
         var _loc8_:Boolean = false;
         var _loc9_:* = null as ZNPNode_ZPP_CbSet;
         var _loc10_:* = null as ZPP_CbSet;
         name_32.handler = cbtype_change;
         var _loc1_:ZNPNode_ZPP_CbType = name_32.name_18.var_73;
         while(_loc1_ != null)
         {
            _loc2_ = _loc1_.var_74;
            _loc3_ = null;
            _loc4_ = _loc2_.var_293.var_73;
            while(_loc4_ != null)
            {
               _loc5_ = _loc4_.var_74;
               if(name_17 > _loc5_.name_17 || name_17 == _loc5_.name_17 && id > _loc5_.id)
               {
                  break;
               }
               _loc3_ = _loc4_;
               _loc4_ = _loc4_.next;
            }
            _loc6_ = _loc2_.var_293;
            if(ZNPNode_ZPP_BodyListener.var_72 == null)
            {
               _loc7_ = new ZNPNode_ZPP_BodyListener();
            }
            else
            {
               _loc7_ = ZNPNode_ZPP_BodyListener.var_72;
               ZNPNode_ZPP_BodyListener.var_72 = _loc7_.next;
               _loc7_.next = null;
            }
            null;
            _loc7_.var_74 = this;
            _loc4_ = _loc7_;
            if(_loc3_ == null)
            {
               _loc4_.next = _loc6_.var_73;
               _loc6_.var_73 = _loc4_;
            }
            else
            {
               _loc4_.next = _loc3_.next;
               _loc3_.next = _loc4_;
            }
            _loc8_ = true;
            _loc6_.name_2 = _loc8_;
            _loc6_.var_76 = _loc8_;
            _loc6_.length = _loc6_.length + 1;
            _loc4_;
            _loc9_ = _loc2_.var_148.var_73;
            while(_loc9_ != null)
            {
               _loc10_ = _loc9_.var_74;
               _loc10_.var_453 = true;
               _loc9_ = _loc9_.next;
            }
            _loc1_ = _loc1_.next;
         }
      }
   }
}
