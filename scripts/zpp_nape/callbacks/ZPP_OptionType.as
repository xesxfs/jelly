package zpp_nape.callbacks
{
   import package_34.class_216;
   import package_34.class_250;
   import package_34.class_264;
   import package_34.class_313;
   import package_36.class_258;
   import zpp_nape.util.ZNPList_ZPP_CbType;
   import zpp_nape.util.ZNPNode_ZPP_CbType;
   import zpp_nape.util.ZPP_CbTypeList;
   
   public final class ZPP_OptionType
   {
       
      
      public var var_668:class_216;
      
      public var var_672:class_216;
      
      public var outer:class_313;
      
      public var name_18:ZNPList_ZPP_CbType;
      
      public var handler:Object;
      
      public var name_22:ZNPList_ZPP_CbType;
      
      public function ZPP_OptionType()
      {
         var_672 = null;
         var_668 = null;
         name_22 = null;
         name_18 = null;
         handler = null;
         outer = null;
         name_18 = new ZNPList_ZPP_CbType();
         name_22 = new ZNPList_ZPP_CbType();
      }
      
      public static function argument(param1:*) : class_313
      {
         if(param1 == null)
         {
            return new class_313();
         }
         if(param1 is class_313)
         {
            return param1;
         }
         return new class_313().method_288(param1);
      }
      
      public static function method_113(param1:ZNPList_ZPP_CbType, param2:ZNPList_ZPP_CbType) : Boolean
      {
         var _loc6_:* = null as ZPP_CbType;
         var _loc7_:* = null as ZPP_CbType;
         var _loc3_:Boolean = false;
         var _loc4_:ZNPNode_ZPP_CbType = param1.var_73;
         var _loc5_:ZNPNode_ZPP_CbType = param2.var_73;
         while(_loc5_ != null && _loc4_ != null)
         {
            _loc6_ = _loc5_.var_74;
            _loc7_ = _loc4_.var_74;
            if(_loc6_ == _loc7_)
            {
               _loc3_ = true;
               break;
            }
            if(_loc6_.id < _loc7_.id)
            {
               _loc5_ = _loc5_.next;
            }
            else
            {
               _loc4_ = _loc4_.next;
            }
         }
         return _loc3_;
      }
      
      public final function method_443() : void
      {
         var_668 = ZPP_CbTypeList.method_65(name_18,true);
      }
      
      public final function method_540() : void
      {
         var_672 = ZPP_CbTypeList.method_65(name_22,true);
      }
      
      public final function name_40(param1:ZPP_OptionType) : ZPP_OptionType
      {
         var _loc2_:* = null as ZNPNode_ZPP_CbType;
         var _loc3_:* = null as ZPP_CbType;
         if(param1 != this)
         {
            while(name_18.var_73 != null)
            {
               append_type(name_22,name_18.var_73.var_74);
            }
            while(name_22.var_73 != null)
            {
               append_type(name_18,name_22.var_73.var_74);
            }
            _loc2_ = param1.name_22.var_73;
            while(_loc2_ != null)
            {
               _loc3_ = _loc2_.var_74;
               append_type(name_22,_loc3_);
               _loc2_ = _loc2_.next;
            }
            _loc2_ = param1.name_18.var_73;
            while(_loc2_ != null)
            {
               _loc3_ = _loc2_.var_74;
               append_type(name_18,_loc3_);
               _loc2_ = _loc2_.next;
            }
         }
         return this;
      }
      
      public final function method_823(param1:ZNPList_ZPP_CbType) : Boolean
      {
         ;
         return Boolean(ZPP_OptionType.method_113(param1,name_18));
      }
      
      public final function method_753(param1:ZNPList_ZPP_CbType) : Boolean
      {
         ;
         return Boolean(ZPP_OptionType.method_113(param1,name_22));
      }
      
      public final function method_666(param1:ZNPList_ZPP_CbType) : Boolean
      {
         ;
         return !!ZPP_OptionType.method_113(param1,name_18) && !ZPP_OptionType.method_113(param1,name_22);
      }
      
      public final function append_type(param1:ZNPList_ZPP_CbType, param2:ZPP_CbType) : void
      {
         var _loc3_:* = null as ZNPNode_ZPP_CbType;
         var _loc4_:* = null as ZNPNode_ZPP_CbType;
         var _loc5_:* = null as ZPP_CbType;
         var _loc6_:* = null as ZNPList_ZPP_CbType;
         var _loc7_:* = null as ZNPNode_ZPP_CbType;
         var _loc8_:Boolean = false;
         if(param1 == name_18)
         {
            if(!name_18.has(param2))
            {
               if(!name_22.has(param2))
               {
                  if(handler != null)
                  {
                     handler(param2,true,true);
                  }
                  else
                  {
                     _loc3_ = null;
                     _loc4_ = name_18.var_73;
                     while(_loc4_ != null)
                     {
                        _loc5_ = _loc4_.var_74;
                        if(param2.id < _loc5_.id)
                        {
                           break;
                        }
                        _loc3_ = _loc4_;
                        _loc4_ = _loc4_.next;
                     }
                     _loc6_ = name_18;
                     if(ZNPNode_ZPP_CbType.var_72 == null)
                     {
                        _loc7_ = new ZNPNode_ZPP_CbType();
                     }
                     else
                     {
                        _loc7_ = ZNPNode_ZPP_CbType.var_72;
                        ZNPNode_ZPP_CbType.var_72 = _loc7_.next;
                        _loc7_.next = null;
                     }
                     null;
                     _loc7_.var_74 = param2;
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
                  }
               }
               else if(handler != null)
               {
                  handler(param2,false,false);
               }
               else
               {
                  name_22.remove(param2);
               }
            }
         }
         else if(!name_22.has(param2))
         {
            if(!name_18.has(param2))
            {
               if(handler != null)
               {
                  handler(param2,false,true);
               }
               else
               {
                  _loc3_ = null;
                  _loc4_ = name_22.var_73;
                  while(_loc4_ != null)
                  {
                     _loc5_ = _loc4_.var_74;
                     if(param2.id < _loc5_.id)
                     {
                        break;
                     }
                     _loc3_ = _loc4_;
                     _loc4_ = _loc4_.next;
                  }
                  _loc6_ = name_22;
                  if(ZNPNode_ZPP_CbType.var_72 == null)
                  {
                     _loc7_ = new ZNPNode_ZPP_CbType();
                  }
                  else
                  {
                     _loc7_ = ZNPNode_ZPP_CbType.var_72;
                     ZNPNode_ZPP_CbType.var_72 = _loc7_.next;
                     _loc7_.next = null;
                  }
                  null;
                  _loc7_.var_74 = param2;
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
               }
            }
            else if(handler != null)
            {
               handler(param2,true,false);
            }
            else
            {
               name_18.remove(param2);
            }
         }
      }
      
      public final function append(param1:ZNPList_ZPP_CbType, param2:*) : void
      {
         var _loc3_:* = null as class_250;
         var _loc4_:* = null as class_216;
         var _loc5_:* = null as class_264;
         var _loc6_:int = 0;
         var _loc7_:* = null as class_216;
         var _loc8_:* = null as Vector.<class_250>;
         var _loc9_:* = null as Array;
         var _loc10_:* = null;
         if(param2 is class_250)
         {
            _loc3_ = param2;
            append_type(param1,_loc3_.zpp_inner);
         }
         else if(param2 is class_216)
         {
            _loc4_ = param2;
            _loc4_.zpp_inner.method_104();
            _loc5_ = class_264.method_65(_loc4_);
            while(true)
            {
               _loc5_.zpp_inner.zpp_inner.method_104();
               _loc7_ = _loc5_.zpp_inner;
               _loc7_.zpp_inner.method_104();
               if(_loc7_.zpp_inner.var_86)
               {
                  _loc7_.zpp_inner.var_86 = false;
                  _loc7_.zpp_inner.var_89 = _loc7_.zpp_inner.name_4.length;
               }
               _loc6_ = _loc7_.zpp_inner.var_89;
               _loc5_.var_98 = true;
               if(_loc5_.var_90 < _loc6_)
               {
                  §§push(true);
               }
               else
               {
                  _loc5_.var_106 = class_264.var_72;
                  class_264.var_72 = _loc5_;
                  _loc5_.zpp_inner = null;
               }
               _loc5_.var_98 = false;
               _loc6_ = _loc5_.var_90;
               _loc5_.var_90 = _loc5_.var_90 + 1;
               _loc3_ = _loc5_.zpp_inner.at(_loc6_);
               append_type(param1,_loc3_.zpp_inner);
            }
         }
         else if(param2 is class_258.var_1074)
         {
            _loc8_ = param2;
            _loc6_ = 0;
            while(_loc6_ < int(_loc8_.length))
            {
               _loc3_ = _loc8_[_loc6_];
               _loc6_++;
               append_type(param1,_loc3_.zpp_inner);
            }
         }
         else if(param2 is Array)
         {
            _loc9_ = param2;
            _loc6_ = 0;
            while(_loc6_ < int(_loc9_.length))
            {
               _loc10_ = _loc9_[_loc6_];
               _loc6_++;
               _loc3_ = _loc10_;
               append_type(param1,_loc3_.zpp_inner);
            }
         }
      }
   }
}
