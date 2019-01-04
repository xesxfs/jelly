package zpp_nape.callbacks
{
   import package_34.class_248;
   import package_34.class_313;
   import package_34.class_334;
   import zpp_nape.phys.ZPP_Interactor;
   import zpp_nape.space.ZPP_Space;
   import zpp_nape.util.ZNPList_ZPP_CbSet;
   import zpp_nape.util.ZNPList_ZPP_CbType;
   import zpp_nape.util.ZNPNode_ZPP_CbSet;
   import zpp_nape.util.ZNPNode_ZPP_CbType;
   import zpp_nape.util.ZNPNode_ZPP_InteractionListener;
   import zpp_nape.util.ZNPNode_ZPP_Interactor;
   import zpp_nape.util.ZPP_Set_ZPP_CbSetPair;
   import zpp_nape.util.class_223;
   import zpp_nape.util.class_289;
   
   public final class ZPP_InteractionListener extends ZPP_Listener
   {
      
      public static var var_823:ZNPList_ZPP_CbSet = new ZNPList_ZPP_CbSet();
      
      public static var var_864:ZNPList_ZPP_CbSet = new ZNPList_ZPP_CbSet();
      
      public static var var_826:ZNPList_ZPP_CbSet = new ZNPList_ZPP_CbSet();
      
      public static var var_1073:ZNPList_ZPP_CbType = new ZNPList_ZPP_CbType();
      
      public static var var_1089:ZNPList_ZPP_CbType = new ZNPList_ZPP_CbType();
      
      public static var var_1071:ZNPList_ZPP_CbType = new ZNPList_ZPP_CbType();
       
      
      public var name_67:Boolean;
      
      public var var_837:class_334;
      
      public var var_885:class_248;
      
      public var options2:ZPP_OptionType;
      
      public var options1:ZPP_OptionType;
      
      public var var_249:int;
      
      public var handlerp:Object;
      
      public var handleri:Object;
      
      public var name_68:Boolean;
      
      public function ZPP_InteractionListener(param1:class_313, param2:class_313, param3:int, param4:int)
      {
         handlerp = null;
         name_67 = false;
         name_68 = false;
         handleri = null;
         options2 = null;
         options1 = null;
         var_249 = 0;
         var_837 = null;
         var_885 = null;
         super();
         type = param4;
         var_656 = this;
         event = param3;
         options1 = param1.zpp_inner;
         options2 = param2.zpp_inner;
         name_68 = false;
      }
      
      public final function with_uniquesets(param1:Boolean) : void
      {
         var _loc3_:* = null as ZPP_Set_ZPP_CbSetPair;
         var _loc10_:* = null as ZPP_CbType;
         var _loc11_:* = null as ZPP_CbType;
         var _loc12_:* = null as ZNPNode_ZPP_CbType;
         var _loc13_:* = null as ZNPNode_ZPP_CbType;
         var _loc14_:* = null as ZNPList_ZPP_CbSet;
         var _loc15_:* = null as ZNPList_ZPP_CbSet;
         var _loc16_:* = null as ZNPList_ZPP_CbSet;
         var _loc17_:* = null as ZNPList_ZPP_CbSet;
         var _loc18_:* = null as ZNPNode_ZPP_CbSet;
         var _loc19_:* = null as ZNPNode_ZPP_CbSet;
         var _loc20_:* = null as ZPP_CbSet;
         var _loc21_:* = null as ZPP_CbSet;
         var _loc22_:* = null as ZNPNode_ZPP_CbSet;
         var _loc23_:* = null as ZNPNode_ZPP_CbSet;
         var _loc24_:* = null as ZPP_CbSetPair;
         var _loc25_:* = null as ZPP_Set_ZPP_CbSetPair;
         var _loc26_:* = null as ZPP_CbSetPair;
         var _loc27_:* = null as ZPP_Set_ZPP_CbSetPair;
         var _loc28_:* = null as ZPP_Set_ZPP_CbSetPair;
         var _loc2_:* = {};
         if(ZPP_Set_ZPP_CbSetPair.var_72 == null)
         {
            _loc3_ = new ZPP_Set_ZPP_CbSetPair();
         }
         else
         {
            _loc3_ = ZPP_Set_ZPP_CbSetPair.var_72;
            ZPP_Set_ZPP_CbSetPair.var_72 = _loc3_.next;
            _loc3_.next = null;
         }
         null;
         _loc3_.lt = ZPP_CbSetPair.method_117;
         var _loc4_:ZNPList_ZPP_CbType = options2.name_18;
         var _loc5_:ZNPList_ZPP_CbType = ZPP_InteractionListener.var_1073;
         var _loc6_:ZNPList_ZPP_CbType = ZPP_InteractionListener.var_1089;
         var _loc7_:ZNPList_ZPP_CbType = ZPP_InteractionListener.var_1071;
         var _loc8_:ZNPNode_ZPP_CbType = options1.name_18.var_73;
         var _loc9_:ZNPNode_ZPP_CbType = _loc4_.var_73;
         while(_loc8_ != null && _loc9_ != null)
         {
            _loc10_ = _loc8_.var_74;
            _loc11_ = _loc9_.var_74;
            if(_loc10_ == _loc11_)
            {
               if(ZNPNode_ZPP_CbType.var_72 == null)
               {
                  _loc13_ = new ZNPNode_ZPP_CbType();
               }
               else
               {
                  _loc13_ = ZNPNode_ZPP_CbType.var_72;
                  ZNPNode_ZPP_CbType.var_72 = _loc13_.next;
                  _loc13_.next = null;
               }
               null;
               _loc13_.var_74 = _loc10_;
               _loc12_ = _loc13_;
               _loc12_.next = _loc7_.var_73;
               _loc7_.var_73 = _loc12_;
               _loc7_.name_2 = true;
               _loc7_.length = _loc7_.length + 1;
               _loc10_;
               _loc8_ = _loc8_.next;
               _loc9_ = _loc9_.next;
            }
            else if(_loc10_.id < _loc11_.id)
            {
               if(ZNPNode_ZPP_CbType.var_72 == null)
               {
                  _loc13_ = new ZNPNode_ZPP_CbType();
               }
               else
               {
                  _loc13_ = ZNPNode_ZPP_CbType.var_72;
                  ZNPNode_ZPP_CbType.var_72 = _loc13_.next;
                  _loc13_.next = null;
               }
               null;
               _loc13_.var_74 = _loc10_;
               _loc12_ = _loc13_;
               _loc12_.next = _loc5_.var_73;
               _loc5_.var_73 = _loc12_;
               _loc5_.name_2 = true;
               _loc5_.length = _loc5_.length + 1;
               _loc10_;
               _loc8_ = _loc8_.next;
            }
            else
            {
               if(ZNPNode_ZPP_CbType.var_72 == null)
               {
                  _loc13_ = new ZNPNode_ZPP_CbType();
               }
               else
               {
                  _loc13_ = ZNPNode_ZPP_CbType.var_72;
                  ZNPNode_ZPP_CbType.var_72 = _loc13_.next;
                  _loc13_.next = null;
               }
               null;
               _loc13_.var_74 = _loc11_;
               _loc12_ = _loc13_;
               _loc12_.next = _loc6_.var_73;
               _loc6_.var_73 = _loc12_;
               _loc6_.name_2 = true;
               _loc6_.length = _loc6_.length + 1;
               _loc11_;
               _loc9_ = _loc9_.next;
            }
         }
         while(_loc8_ != null)
         {
            _loc10_ = _loc8_.var_74;
            if(ZNPNode_ZPP_CbType.var_72 == null)
            {
               _loc13_ = new ZNPNode_ZPP_CbType();
            }
            else
            {
               _loc13_ = ZNPNode_ZPP_CbType.var_72;
               ZNPNode_ZPP_CbType.var_72 = _loc13_.next;
               _loc13_.next = null;
            }
            null;
            _loc13_.var_74 = _loc10_;
            _loc12_ = _loc13_;
            _loc12_.next = _loc5_.var_73;
            _loc5_.var_73 = _loc12_;
            _loc5_.name_2 = true;
            _loc5_.length = _loc5_.length + 1;
            _loc10_;
            _loc8_ = _loc8_.next;
         }
         while(_loc9_ != null)
         {
            _loc10_ = _loc9_.var_74;
            if(ZNPNode_ZPP_CbType.var_72 == null)
            {
               _loc13_ = new ZNPNode_ZPP_CbType();
            }
            else
            {
               _loc13_ = ZNPNode_ZPP_CbType.var_72;
               ZNPNode_ZPP_CbType.var_72 = _loc13_.next;
               _loc13_.next = null;
            }
            null;
            _loc13_.var_74 = _loc10_;
            _loc12_ = _loc13_;
            _loc12_.next = _loc6_.var_73;
            _loc6_.var_73 = _loc12_;
            _loc6_.name_2 = true;
            _loc6_.length = _loc6_.length + 1;
            _loc10_;
            _loc9_ = _loc9_.next;
         }
         while(_loc5_.var_73 != null)
         {
            _loc10_ = _loc5_.method_105();
            _loc12_ = _loc4_.var_73;
            while(_loc12_ != null)
            {
               _loc11_ = _loc12_.var_74;
               _loc14_ = _loc11_.var_148;
               _loc15_ = ZPP_InteractionListener.var_823;
               _loc16_ = ZPP_InteractionListener.var_864;
               _loc17_ = ZPP_InteractionListener.var_826;
               _loc18_ = _loc10_.var_148.var_73;
               _loc19_ = _loc14_.var_73;
               while(_loc18_ != null && _loc19_ != null)
               {
                  _loc20_ = _loc18_.var_74;
                  _loc21_ = _loc19_.var_74;
                  if(_loc20_ == _loc21_)
                  {
                     if(ZNPNode_ZPP_CbSet.var_72 == null)
                     {
                        _loc23_ = new ZNPNode_ZPP_CbSet();
                     }
                     else
                     {
                        _loc23_ = ZNPNode_ZPP_CbSet.var_72;
                        ZNPNode_ZPP_CbSet.var_72 = _loc23_.next;
                        _loc23_.next = null;
                     }
                     null;
                     _loc23_.var_74 = _loc20_;
                     _loc22_ = _loc23_;
                     _loc22_.next = _loc17_.var_73;
                     _loc17_.var_73 = _loc22_;
                     _loc17_.name_2 = true;
                     _loc17_.length = _loc17_.length + 1;
                     _loc20_;
                     _loc18_ = _loc18_.next;
                     _loc19_ = _loc19_.next;
                  }
                  else if(ZPP_CbSet.method_117(_loc20_,_loc21_))
                  {
                     if(ZNPNode_ZPP_CbSet.var_72 == null)
                     {
                        _loc23_ = new ZNPNode_ZPP_CbSet();
                     }
                     else
                     {
                        _loc23_ = ZNPNode_ZPP_CbSet.var_72;
                        ZNPNode_ZPP_CbSet.var_72 = _loc23_.next;
                        _loc23_.next = null;
                     }
                     null;
                     _loc23_.var_74 = _loc20_;
                     _loc22_ = _loc23_;
                     _loc22_.next = _loc15_.var_73;
                     _loc15_.var_73 = _loc22_;
                     _loc15_.name_2 = true;
                     _loc15_.length = _loc15_.length + 1;
                     _loc20_;
                     _loc18_ = _loc18_.next;
                  }
                  else
                  {
                     if(ZNPNode_ZPP_CbSet.var_72 == null)
                     {
                        _loc23_ = new ZNPNode_ZPP_CbSet();
                     }
                     else
                     {
                        _loc23_ = ZNPNode_ZPP_CbSet.var_72;
                        ZNPNode_ZPP_CbSet.var_72 = _loc23_.next;
                        _loc23_.next = null;
                     }
                     null;
                     _loc23_.var_74 = _loc21_;
                     _loc22_ = _loc23_;
                     _loc22_.next = _loc16_.var_73;
                     _loc16_.var_73 = _loc22_;
                     _loc16_.name_2 = true;
                     _loc16_.length = _loc16_.length + 1;
                     _loc21_;
                     _loc19_ = _loc19_.next;
                  }
               }
               while(_loc18_ != null)
               {
                  _loc20_ = _loc18_.var_74;
                  if(ZNPNode_ZPP_CbSet.var_72 == null)
                  {
                     _loc23_ = new ZNPNode_ZPP_CbSet();
                  }
                  else
                  {
                     _loc23_ = ZNPNode_ZPP_CbSet.var_72;
                     ZNPNode_ZPP_CbSet.var_72 = _loc23_.next;
                     _loc23_.next = null;
                  }
                  null;
                  _loc23_.var_74 = _loc20_;
                  _loc22_ = _loc23_;
                  _loc22_.next = _loc15_.var_73;
                  _loc15_.var_73 = _loc22_;
                  _loc15_.name_2 = true;
                  _loc15_.length = _loc15_.length + 1;
                  _loc20_;
                  _loc18_ = _loc18_.next;
               }
               while(_loc19_ != null)
               {
                  _loc20_ = _loc19_.var_74;
                  if(ZNPNode_ZPP_CbSet.var_72 == null)
                  {
                     _loc23_ = new ZNPNode_ZPP_CbSet();
                  }
                  else
                  {
                     _loc23_ = ZNPNode_ZPP_CbSet.var_72;
                     ZNPNode_ZPP_CbSet.var_72 = _loc23_.next;
                     _loc23_.next = null;
                  }
                  null;
                  _loc23_.var_74 = _loc20_;
                  _loc22_ = _loc23_;
                  _loc22_.next = _loc16_.var_73;
                  _loc16_.var_73 = _loc22_;
                  _loc16_.name_2 = true;
                  _loc16_.length = _loc16_.length + 1;
                  _loc20_;
                  _loc19_ = _loc19_.next;
               }
               while(_loc15_.var_73 != null)
               {
                  _loc20_ = _loc15_.method_105();
                  _loc22_ = _loc14_.var_73;
                  while(_loc22_ != null)
                  {
                     _loc21_ = _loc22_.var_74;
                     _loc20_.validate();
                     _loc21_.validate();
                     if(ZPP_CbSet.method_137(_loc20_,_loc21_,_loc2_))
                     {
                        §§push(_loc3_);
                        if(ZPP_CbSetPair.var_72 == null)
                        {
                           _loc24_ = new ZPP_CbSetPair();
                        }
                        else
                        {
                           _loc24_ = ZPP_CbSetPair.var_72;
                           ZPP_CbSetPair.var_72 = _loc24_.next;
                           _loc24_.next = null;
                        }
                        _loc24_.var_145 = true;
                        if(ZPP_CbSet.method_117(_loc20_,_loc21_))
                        {
                           _loc24_.a = _loc20_;
                           _loc24_.b = _loc21_;
                        }
                        else
                        {
                           _loc24_.a = _loc21_;
                           _loc24_.b = _loc20_;
                        }
                        §§pop().method_127(_loc24_);
                     }
                     _loc22_ = _loc22_.next;
                  }
               }
               while(_loc16_.var_73 != null)
               {
                  _loc20_ = _loc16_.method_105();
                  _loc22_ = _loc17_.var_73;
                  while(_loc22_ != null)
                  {
                     _loc21_ = _loc22_.var_74;
                     _loc20_.validate();
                     _loc21_.validate();
                     if(ZPP_CbSet.method_137(_loc20_,_loc21_,_loc2_))
                     {
                        §§push(_loc3_);
                        if(ZPP_CbSetPair.var_72 == null)
                        {
                           _loc24_ = new ZPP_CbSetPair();
                        }
                        else
                        {
                           _loc24_ = ZPP_CbSetPair.var_72;
                           ZPP_CbSetPair.var_72 = _loc24_.next;
                           _loc24_.next = null;
                        }
                        _loc24_.var_145 = true;
                        if(ZPP_CbSet.method_117(_loc20_,_loc21_))
                        {
                           _loc24_.a = _loc20_;
                           _loc24_.b = _loc21_;
                        }
                        else
                        {
                           _loc24_.a = _loc21_;
                           _loc24_.b = _loc20_;
                        }
                        §§pop().method_127(_loc24_);
                     }
                     _loc22_ = _loc22_.next;
                  }
               }
               while(_loc17_.var_73 != null)
               {
                  _loc20_ = _loc17_.method_105();
                  _loc20_.validate();
                  _loc20_.validate();
                  if(ZPP_CbSet.method_137(_loc20_,_loc20_,_loc2_))
                  {
                     §§push(_loc3_);
                     if(ZPP_CbSetPair.var_72 == null)
                     {
                        _loc24_ = new ZPP_CbSetPair();
                     }
                     else
                     {
                        _loc24_ = ZPP_CbSetPair.var_72;
                        ZPP_CbSetPair.var_72 = _loc24_.next;
                        _loc24_.next = null;
                     }
                     _loc24_.var_145 = true;
                     if(ZPP_CbSet.method_117(_loc20_,_loc20_))
                     {
                        _loc24_.a = _loc20_;
                        _loc24_.b = _loc20_;
                     }
                     else
                     {
                        _loc24_.a = _loc20_;
                        _loc24_.b = _loc20_;
                     }
                     §§pop().method_127(_loc24_);
                  }
                  _loc22_ = _loc17_.var_73;
                  while(_loc22_ != null)
                  {
                     _loc21_ = _loc22_.var_74;
                     _loc20_.validate();
                     _loc21_.validate();
                     if(ZPP_CbSet.method_137(_loc20_,_loc21_,_loc2_))
                     {
                        §§push(_loc3_);
                        if(ZPP_CbSetPair.var_72 == null)
                        {
                           _loc24_ = new ZPP_CbSetPair();
                        }
                        else
                        {
                           _loc24_ = ZPP_CbSetPair.var_72;
                           ZPP_CbSetPair.var_72 = _loc24_.next;
                           _loc24_.next = null;
                        }
                        _loc24_.var_145 = true;
                        if(ZPP_CbSet.method_117(_loc20_,_loc21_))
                        {
                           _loc24_.a = _loc20_;
                           _loc24_.b = _loc21_;
                        }
                        else
                        {
                           _loc24_.a = _loc21_;
                           _loc24_.b = _loc20_;
                        }
                        §§pop().method_127(_loc24_);
                     }
                     _loc22_ = _loc22_.next;
                  }
               }
               _loc12_ = _loc12_.next;
            }
         }
         while(_loc6_.var_73 != null)
         {
            _loc10_ = _loc6_.method_105();
            _loc12_ = _loc7_.var_73;
            while(_loc12_ != null)
            {
               _loc11_ = _loc12_.var_74;
               _loc14_ = _loc11_.var_148;
               _loc15_ = ZPP_InteractionListener.var_823;
               _loc16_ = ZPP_InteractionListener.var_864;
               _loc17_ = ZPP_InteractionListener.var_826;
               _loc18_ = _loc10_.var_148.var_73;
               _loc19_ = _loc14_.var_73;
               while(_loc18_ != null && _loc19_ != null)
               {
                  _loc20_ = _loc18_.var_74;
                  _loc21_ = _loc19_.var_74;
                  if(_loc20_ == _loc21_)
                  {
                     if(ZNPNode_ZPP_CbSet.var_72 == null)
                     {
                        _loc23_ = new ZNPNode_ZPP_CbSet();
                     }
                     else
                     {
                        _loc23_ = ZNPNode_ZPP_CbSet.var_72;
                        ZNPNode_ZPP_CbSet.var_72 = _loc23_.next;
                        _loc23_.next = null;
                     }
                     null;
                     _loc23_.var_74 = _loc20_;
                     _loc22_ = _loc23_;
                     _loc22_.next = _loc17_.var_73;
                     _loc17_.var_73 = _loc22_;
                     _loc17_.name_2 = true;
                     _loc17_.length = _loc17_.length + 1;
                     _loc20_;
                     _loc18_ = _loc18_.next;
                     _loc19_ = _loc19_.next;
                  }
                  else if(ZPP_CbSet.method_117(_loc20_,_loc21_))
                  {
                     if(ZNPNode_ZPP_CbSet.var_72 == null)
                     {
                        _loc23_ = new ZNPNode_ZPP_CbSet();
                     }
                     else
                     {
                        _loc23_ = ZNPNode_ZPP_CbSet.var_72;
                        ZNPNode_ZPP_CbSet.var_72 = _loc23_.next;
                        _loc23_.next = null;
                     }
                     null;
                     _loc23_.var_74 = _loc20_;
                     _loc22_ = _loc23_;
                     _loc22_.next = _loc15_.var_73;
                     _loc15_.var_73 = _loc22_;
                     _loc15_.name_2 = true;
                     _loc15_.length = _loc15_.length + 1;
                     _loc20_;
                     _loc18_ = _loc18_.next;
                  }
                  else
                  {
                     if(ZNPNode_ZPP_CbSet.var_72 == null)
                     {
                        _loc23_ = new ZNPNode_ZPP_CbSet();
                     }
                     else
                     {
                        _loc23_ = ZNPNode_ZPP_CbSet.var_72;
                        ZNPNode_ZPP_CbSet.var_72 = _loc23_.next;
                        _loc23_.next = null;
                     }
                     null;
                     _loc23_.var_74 = _loc21_;
                     _loc22_ = _loc23_;
                     _loc22_.next = _loc16_.var_73;
                     _loc16_.var_73 = _loc22_;
                     _loc16_.name_2 = true;
                     _loc16_.length = _loc16_.length + 1;
                     _loc21_;
                     _loc19_ = _loc19_.next;
                  }
               }
               while(_loc18_ != null)
               {
                  _loc20_ = _loc18_.var_74;
                  if(ZNPNode_ZPP_CbSet.var_72 == null)
                  {
                     _loc23_ = new ZNPNode_ZPP_CbSet();
                  }
                  else
                  {
                     _loc23_ = ZNPNode_ZPP_CbSet.var_72;
                     ZNPNode_ZPP_CbSet.var_72 = _loc23_.next;
                     _loc23_.next = null;
                  }
                  null;
                  _loc23_.var_74 = _loc20_;
                  _loc22_ = _loc23_;
                  _loc22_.next = _loc15_.var_73;
                  _loc15_.var_73 = _loc22_;
                  _loc15_.name_2 = true;
                  _loc15_.length = _loc15_.length + 1;
                  _loc20_;
                  _loc18_ = _loc18_.next;
               }
               while(_loc19_ != null)
               {
                  _loc20_ = _loc19_.var_74;
                  if(ZNPNode_ZPP_CbSet.var_72 == null)
                  {
                     _loc23_ = new ZNPNode_ZPP_CbSet();
                  }
                  else
                  {
                     _loc23_ = ZNPNode_ZPP_CbSet.var_72;
                     ZNPNode_ZPP_CbSet.var_72 = _loc23_.next;
                     _loc23_.next = null;
                  }
                  null;
                  _loc23_.var_74 = _loc20_;
                  _loc22_ = _loc23_;
                  _loc22_.next = _loc16_.var_73;
                  _loc16_.var_73 = _loc22_;
                  _loc16_.name_2 = true;
                  _loc16_.length = _loc16_.length + 1;
                  _loc20_;
                  _loc19_ = _loc19_.next;
               }
               while(_loc15_.var_73 != null)
               {
                  _loc20_ = _loc15_.method_105();
                  _loc22_ = _loc14_.var_73;
                  while(_loc22_ != null)
                  {
                     _loc21_ = _loc22_.var_74;
                     _loc20_.validate();
                     _loc21_.validate();
                     if(ZPP_CbSet.method_137(_loc20_,_loc21_,_loc2_))
                     {
                        §§push(_loc3_);
                        if(ZPP_CbSetPair.var_72 == null)
                        {
                           _loc24_ = new ZPP_CbSetPair();
                        }
                        else
                        {
                           _loc24_ = ZPP_CbSetPair.var_72;
                           ZPP_CbSetPair.var_72 = _loc24_.next;
                           _loc24_.next = null;
                        }
                        _loc24_.var_145 = true;
                        if(ZPP_CbSet.method_117(_loc20_,_loc21_))
                        {
                           _loc24_.a = _loc20_;
                           _loc24_.b = _loc21_;
                        }
                        else
                        {
                           _loc24_.a = _loc21_;
                           _loc24_.b = _loc20_;
                        }
                        §§pop().method_127(_loc24_);
                     }
                     _loc22_ = _loc22_.next;
                  }
               }
               while(_loc16_.var_73 != null)
               {
                  _loc20_ = _loc16_.method_105();
                  _loc22_ = _loc17_.var_73;
                  while(_loc22_ != null)
                  {
                     _loc21_ = _loc22_.var_74;
                     _loc20_.validate();
                     _loc21_.validate();
                     if(ZPP_CbSet.method_137(_loc20_,_loc21_,_loc2_))
                     {
                        §§push(_loc3_);
                        if(ZPP_CbSetPair.var_72 == null)
                        {
                           _loc24_ = new ZPP_CbSetPair();
                        }
                        else
                        {
                           _loc24_ = ZPP_CbSetPair.var_72;
                           ZPP_CbSetPair.var_72 = _loc24_.next;
                           _loc24_.next = null;
                        }
                        _loc24_.var_145 = true;
                        if(ZPP_CbSet.method_117(_loc20_,_loc21_))
                        {
                           _loc24_.a = _loc20_;
                           _loc24_.b = _loc21_;
                        }
                        else
                        {
                           _loc24_.a = _loc21_;
                           _loc24_.b = _loc20_;
                        }
                        §§pop().method_127(_loc24_);
                     }
                     _loc22_ = _loc22_.next;
                  }
               }
               while(_loc17_.var_73 != null)
               {
                  _loc20_ = _loc17_.method_105();
                  _loc20_.validate();
                  _loc20_.validate();
                  if(ZPP_CbSet.method_137(_loc20_,_loc20_,_loc2_))
                  {
                     §§push(_loc3_);
                     if(ZPP_CbSetPair.var_72 == null)
                     {
                        _loc24_ = new ZPP_CbSetPair();
                     }
                     else
                     {
                        _loc24_ = ZPP_CbSetPair.var_72;
                        ZPP_CbSetPair.var_72 = _loc24_.next;
                        _loc24_.next = null;
                     }
                     _loc24_.var_145 = true;
                     if(ZPP_CbSet.method_117(_loc20_,_loc20_))
                     {
                        _loc24_.a = _loc20_;
                        _loc24_.b = _loc20_;
                     }
                     else
                     {
                        _loc24_.a = _loc20_;
                        _loc24_.b = _loc20_;
                     }
                     §§pop().method_127(_loc24_);
                  }
                  _loc22_ = _loc17_.var_73;
                  while(_loc22_ != null)
                  {
                     _loc21_ = _loc22_.var_74;
                     _loc20_.validate();
                     _loc21_.validate();
                     if(ZPP_CbSet.method_137(_loc20_,_loc21_,_loc2_))
                     {
                        §§push(_loc3_);
                        if(ZPP_CbSetPair.var_72 == null)
                        {
                           _loc24_ = new ZPP_CbSetPair();
                        }
                        else
                        {
                           _loc24_ = ZPP_CbSetPair.var_72;
                           ZPP_CbSetPair.var_72 = _loc24_.next;
                           _loc24_.next = null;
                        }
                        _loc24_.var_145 = true;
                        if(ZPP_CbSet.method_117(_loc20_,_loc21_))
                        {
                           _loc24_.a = _loc20_;
                           _loc24_.b = _loc21_;
                        }
                        else
                        {
                           _loc24_.a = _loc21_;
                           _loc24_.b = _loc20_;
                        }
                        §§pop().method_127(_loc24_);
                     }
                     _loc22_ = _loc22_.next;
                  }
               }
               _loc12_ = _loc12_.next;
            }
         }
         while(_loc7_.var_73 != null)
         {
            _loc10_ = _loc7_.method_105();
            _loc14_ = _loc10_.var_148;
            _loc15_ = ZPP_InteractionListener.var_823;
            _loc16_ = ZPP_InteractionListener.var_864;
            _loc17_ = ZPP_InteractionListener.var_826;
            _loc18_ = _loc10_.var_148.var_73;
            _loc19_ = _loc14_.var_73;
            while(_loc18_ != null && _loc19_ != null)
            {
               _loc20_ = _loc18_.var_74;
               _loc21_ = _loc19_.var_74;
               if(_loc20_ == _loc21_)
               {
                  if(ZNPNode_ZPP_CbSet.var_72 == null)
                  {
                     _loc23_ = new ZNPNode_ZPP_CbSet();
                  }
                  else
                  {
                     _loc23_ = ZNPNode_ZPP_CbSet.var_72;
                     ZNPNode_ZPP_CbSet.var_72 = _loc23_.next;
                     _loc23_.next = null;
                  }
                  null;
                  _loc23_.var_74 = _loc20_;
                  _loc22_ = _loc23_;
                  _loc22_.next = _loc17_.var_73;
                  _loc17_.var_73 = _loc22_;
                  _loc17_.name_2 = true;
                  _loc17_.length = _loc17_.length + 1;
                  _loc20_;
                  _loc18_ = _loc18_.next;
                  _loc19_ = _loc19_.next;
               }
               else if(ZPP_CbSet.method_117(_loc20_,_loc21_))
               {
                  if(ZNPNode_ZPP_CbSet.var_72 == null)
                  {
                     _loc23_ = new ZNPNode_ZPP_CbSet();
                  }
                  else
                  {
                     _loc23_ = ZNPNode_ZPP_CbSet.var_72;
                     ZNPNode_ZPP_CbSet.var_72 = _loc23_.next;
                     _loc23_.next = null;
                  }
                  null;
                  _loc23_.var_74 = _loc20_;
                  _loc22_ = _loc23_;
                  _loc22_.next = _loc15_.var_73;
                  _loc15_.var_73 = _loc22_;
                  _loc15_.name_2 = true;
                  _loc15_.length = _loc15_.length + 1;
                  _loc20_;
                  _loc18_ = _loc18_.next;
               }
               else
               {
                  if(ZNPNode_ZPP_CbSet.var_72 == null)
                  {
                     _loc23_ = new ZNPNode_ZPP_CbSet();
                  }
                  else
                  {
                     _loc23_ = ZNPNode_ZPP_CbSet.var_72;
                     ZNPNode_ZPP_CbSet.var_72 = _loc23_.next;
                     _loc23_.next = null;
                  }
                  null;
                  _loc23_.var_74 = _loc21_;
                  _loc22_ = _loc23_;
                  _loc22_.next = _loc16_.var_73;
                  _loc16_.var_73 = _loc22_;
                  _loc16_.name_2 = true;
                  _loc16_.length = _loc16_.length + 1;
                  _loc21_;
                  _loc19_ = _loc19_.next;
               }
            }
            while(_loc18_ != null)
            {
               _loc20_ = _loc18_.var_74;
               if(ZNPNode_ZPP_CbSet.var_72 == null)
               {
                  _loc23_ = new ZNPNode_ZPP_CbSet();
               }
               else
               {
                  _loc23_ = ZNPNode_ZPP_CbSet.var_72;
                  ZNPNode_ZPP_CbSet.var_72 = _loc23_.next;
                  _loc23_.next = null;
               }
               null;
               _loc23_.var_74 = _loc20_;
               _loc22_ = _loc23_;
               _loc22_.next = _loc15_.var_73;
               _loc15_.var_73 = _loc22_;
               _loc15_.name_2 = true;
               _loc15_.length = _loc15_.length + 1;
               _loc20_;
               _loc18_ = _loc18_.next;
            }
            while(_loc19_ != null)
            {
               _loc20_ = _loc19_.var_74;
               if(ZNPNode_ZPP_CbSet.var_72 == null)
               {
                  _loc23_ = new ZNPNode_ZPP_CbSet();
               }
               else
               {
                  _loc23_ = ZNPNode_ZPP_CbSet.var_72;
                  ZNPNode_ZPP_CbSet.var_72 = _loc23_.next;
                  _loc23_.next = null;
               }
               null;
               _loc23_.var_74 = _loc20_;
               _loc22_ = _loc23_;
               _loc22_.next = _loc16_.var_73;
               _loc16_.var_73 = _loc22_;
               _loc16_.name_2 = true;
               _loc16_.length = _loc16_.length + 1;
               _loc20_;
               _loc19_ = _loc19_.next;
            }
            while(_loc15_.var_73 != null)
            {
               _loc20_ = _loc15_.method_105();
               _loc22_ = _loc14_.var_73;
               while(_loc22_ != null)
               {
                  _loc21_ = _loc22_.var_74;
                  _loc20_.validate();
                  _loc21_.validate();
                  if(ZPP_CbSet.method_137(_loc20_,_loc21_,_loc2_))
                  {
                     §§push(_loc3_);
                     if(ZPP_CbSetPair.var_72 == null)
                     {
                        _loc24_ = new ZPP_CbSetPair();
                     }
                     else
                     {
                        _loc24_ = ZPP_CbSetPair.var_72;
                        ZPP_CbSetPair.var_72 = _loc24_.next;
                        _loc24_.next = null;
                     }
                     _loc24_.var_145 = true;
                     if(ZPP_CbSet.method_117(_loc20_,_loc21_))
                     {
                        _loc24_.a = _loc20_;
                        _loc24_.b = _loc21_;
                     }
                     else
                     {
                        _loc24_.a = _loc21_;
                        _loc24_.b = _loc20_;
                     }
                     §§pop().method_127(_loc24_);
                  }
                  _loc22_ = _loc22_.next;
               }
            }
            while(_loc16_.var_73 != null)
            {
               _loc20_ = _loc16_.method_105();
               _loc22_ = _loc17_.var_73;
               while(_loc22_ != null)
               {
                  _loc21_ = _loc22_.var_74;
                  _loc20_.validate();
                  _loc21_.validate();
                  if(ZPP_CbSet.method_137(_loc20_,_loc21_,_loc2_))
                  {
                     §§push(_loc3_);
                     if(ZPP_CbSetPair.var_72 == null)
                     {
                        _loc24_ = new ZPP_CbSetPair();
                     }
                     else
                     {
                        _loc24_ = ZPP_CbSetPair.var_72;
                        ZPP_CbSetPair.var_72 = _loc24_.next;
                        _loc24_.next = null;
                     }
                     _loc24_.var_145 = true;
                     if(ZPP_CbSet.method_117(_loc20_,_loc21_))
                     {
                        _loc24_.a = _loc20_;
                        _loc24_.b = _loc21_;
                     }
                     else
                     {
                        _loc24_.a = _loc21_;
                        _loc24_.b = _loc20_;
                     }
                     §§pop().method_127(_loc24_);
                  }
                  _loc22_ = _loc22_.next;
               }
            }
            while(_loc17_.var_73 != null)
            {
               _loc20_ = _loc17_.method_105();
               _loc20_.validate();
               _loc20_.validate();
               if(ZPP_CbSet.method_137(_loc20_,_loc20_,_loc2_))
               {
                  §§push(_loc3_);
                  if(ZPP_CbSetPair.var_72 == null)
                  {
                     _loc24_ = new ZPP_CbSetPair();
                  }
                  else
                  {
                     _loc24_ = ZPP_CbSetPair.var_72;
                     ZPP_CbSetPair.var_72 = _loc24_.next;
                     _loc24_.next = null;
                  }
                  _loc24_.var_145 = true;
                  if(ZPP_CbSet.method_117(_loc20_,_loc20_))
                  {
                     _loc24_.a = _loc20_;
                     _loc24_.b = _loc20_;
                  }
                  else
                  {
                     _loc24_.a = _loc20_;
                     _loc24_.b = _loc20_;
                  }
                  §§pop().method_127(_loc24_);
               }
               _loc22_ = _loc17_.var_73;
               while(_loc22_ != null)
               {
                  _loc21_ = _loc22_.var_74;
                  _loc20_.validate();
                  _loc21_.validate();
                  if(ZPP_CbSet.method_137(_loc20_,_loc21_,_loc2_))
                  {
                     §§push(_loc3_);
                     if(ZPP_CbSetPair.var_72 == null)
                     {
                        _loc24_ = new ZPP_CbSetPair();
                     }
                     else
                     {
                        _loc24_ = ZPP_CbSetPair.var_72;
                        ZPP_CbSetPair.var_72 = _loc24_.next;
                        _loc24_.next = null;
                     }
                     _loc24_.var_145 = true;
                     if(ZPP_CbSet.method_117(_loc20_,_loc21_))
                     {
                        _loc24_.a = _loc20_;
                        _loc24_.b = _loc21_;
                     }
                     else
                     {
                        _loc24_.a = _loc21_;
                        _loc24_.b = _loc20_;
                     }
                     §§pop().method_127(_loc24_);
                  }
                  _loc22_ = _loc22_.next;
               }
            }
            _loc12_ = _loc7_.var_73;
            while(_loc12_ != null)
            {
               _loc11_ = _loc12_.var_74;
               _loc14_ = _loc11_.var_148;
               _loc15_ = ZPP_InteractionListener.var_823;
               _loc16_ = ZPP_InteractionListener.var_864;
               _loc17_ = ZPP_InteractionListener.var_826;
               _loc18_ = _loc10_.var_148.var_73;
               _loc19_ = _loc14_.var_73;
               while(_loc18_ != null && _loc19_ != null)
               {
                  _loc20_ = _loc18_.var_74;
                  _loc21_ = _loc19_.var_74;
                  if(_loc20_ == _loc21_)
                  {
                     if(ZNPNode_ZPP_CbSet.var_72 == null)
                     {
                        _loc23_ = new ZNPNode_ZPP_CbSet();
                     }
                     else
                     {
                        _loc23_ = ZNPNode_ZPP_CbSet.var_72;
                        ZNPNode_ZPP_CbSet.var_72 = _loc23_.next;
                        _loc23_.next = null;
                     }
                     null;
                     _loc23_.var_74 = _loc20_;
                     _loc22_ = _loc23_;
                     _loc22_.next = _loc17_.var_73;
                     _loc17_.var_73 = _loc22_;
                     _loc17_.name_2 = true;
                     _loc17_.length = _loc17_.length + 1;
                     _loc20_;
                     _loc18_ = _loc18_.next;
                     _loc19_ = _loc19_.next;
                  }
                  else if(ZPP_CbSet.method_117(_loc20_,_loc21_))
                  {
                     if(ZNPNode_ZPP_CbSet.var_72 == null)
                     {
                        _loc23_ = new ZNPNode_ZPP_CbSet();
                     }
                     else
                     {
                        _loc23_ = ZNPNode_ZPP_CbSet.var_72;
                        ZNPNode_ZPP_CbSet.var_72 = _loc23_.next;
                        _loc23_.next = null;
                     }
                     null;
                     _loc23_.var_74 = _loc20_;
                     _loc22_ = _loc23_;
                     _loc22_.next = _loc15_.var_73;
                     _loc15_.var_73 = _loc22_;
                     _loc15_.name_2 = true;
                     _loc15_.length = _loc15_.length + 1;
                     _loc20_;
                     _loc18_ = _loc18_.next;
                  }
                  else
                  {
                     if(ZNPNode_ZPP_CbSet.var_72 == null)
                     {
                        _loc23_ = new ZNPNode_ZPP_CbSet();
                     }
                     else
                     {
                        _loc23_ = ZNPNode_ZPP_CbSet.var_72;
                        ZNPNode_ZPP_CbSet.var_72 = _loc23_.next;
                        _loc23_.next = null;
                     }
                     null;
                     _loc23_.var_74 = _loc21_;
                     _loc22_ = _loc23_;
                     _loc22_.next = _loc16_.var_73;
                     _loc16_.var_73 = _loc22_;
                     _loc16_.name_2 = true;
                     _loc16_.length = _loc16_.length + 1;
                     _loc21_;
                     _loc19_ = _loc19_.next;
                  }
               }
               while(_loc18_ != null)
               {
                  _loc20_ = _loc18_.var_74;
                  if(ZNPNode_ZPP_CbSet.var_72 == null)
                  {
                     _loc23_ = new ZNPNode_ZPP_CbSet();
                  }
                  else
                  {
                     _loc23_ = ZNPNode_ZPP_CbSet.var_72;
                     ZNPNode_ZPP_CbSet.var_72 = _loc23_.next;
                     _loc23_.next = null;
                  }
                  null;
                  _loc23_.var_74 = _loc20_;
                  _loc22_ = _loc23_;
                  _loc22_.next = _loc15_.var_73;
                  _loc15_.var_73 = _loc22_;
                  _loc15_.name_2 = true;
                  _loc15_.length = _loc15_.length + 1;
                  _loc20_;
                  _loc18_ = _loc18_.next;
               }
               while(_loc19_ != null)
               {
                  _loc20_ = _loc19_.var_74;
                  if(ZNPNode_ZPP_CbSet.var_72 == null)
                  {
                     _loc23_ = new ZNPNode_ZPP_CbSet();
                  }
                  else
                  {
                     _loc23_ = ZNPNode_ZPP_CbSet.var_72;
                     ZNPNode_ZPP_CbSet.var_72 = _loc23_.next;
                     _loc23_.next = null;
                  }
                  null;
                  _loc23_.var_74 = _loc20_;
                  _loc22_ = _loc23_;
                  _loc22_.next = _loc16_.var_73;
                  _loc16_.var_73 = _loc22_;
                  _loc16_.name_2 = true;
                  _loc16_.length = _loc16_.length + 1;
                  _loc20_;
                  _loc19_ = _loc19_.next;
               }
               while(_loc15_.var_73 != null)
               {
                  _loc20_ = _loc15_.method_105();
                  _loc22_ = _loc14_.var_73;
                  while(_loc22_ != null)
                  {
                     _loc21_ = _loc22_.var_74;
                     _loc20_.validate();
                     _loc21_.validate();
                     if(ZPP_CbSet.method_137(_loc20_,_loc21_,_loc2_))
                     {
                        §§push(_loc3_);
                        if(ZPP_CbSetPair.var_72 == null)
                        {
                           _loc24_ = new ZPP_CbSetPair();
                        }
                        else
                        {
                           _loc24_ = ZPP_CbSetPair.var_72;
                           ZPP_CbSetPair.var_72 = _loc24_.next;
                           _loc24_.next = null;
                        }
                        _loc24_.var_145 = true;
                        if(ZPP_CbSet.method_117(_loc20_,_loc21_))
                        {
                           _loc24_.a = _loc20_;
                           _loc24_.b = _loc21_;
                        }
                        else
                        {
                           _loc24_.a = _loc21_;
                           _loc24_.b = _loc20_;
                        }
                        §§pop().method_127(_loc24_);
                     }
                     _loc22_ = _loc22_.next;
                  }
               }
               while(_loc16_.var_73 != null)
               {
                  _loc20_ = _loc16_.method_105();
                  _loc22_ = _loc17_.var_73;
                  while(_loc22_ != null)
                  {
                     _loc21_ = _loc22_.var_74;
                     _loc20_.validate();
                     _loc21_.validate();
                     if(ZPP_CbSet.method_137(_loc20_,_loc21_,_loc2_))
                     {
                        §§push(_loc3_);
                        if(ZPP_CbSetPair.var_72 == null)
                        {
                           _loc24_ = new ZPP_CbSetPair();
                        }
                        else
                        {
                           _loc24_ = ZPP_CbSetPair.var_72;
                           ZPP_CbSetPair.var_72 = _loc24_.next;
                           _loc24_.next = null;
                        }
                        _loc24_.var_145 = true;
                        if(ZPP_CbSet.method_117(_loc20_,_loc21_))
                        {
                           _loc24_.a = _loc20_;
                           _loc24_.b = _loc21_;
                        }
                        else
                        {
                           _loc24_.a = _loc21_;
                           _loc24_.b = _loc20_;
                        }
                        §§pop().method_127(_loc24_);
                     }
                     _loc22_ = _loc22_.next;
                  }
               }
               while(_loc17_.var_73 != null)
               {
                  _loc20_ = _loc17_.method_105();
                  _loc20_.validate();
                  _loc20_.validate();
                  if(ZPP_CbSet.method_137(_loc20_,_loc20_,_loc2_))
                  {
                     §§push(_loc3_);
                     if(ZPP_CbSetPair.var_72 == null)
                     {
                        _loc24_ = new ZPP_CbSetPair();
                     }
                     else
                     {
                        _loc24_ = ZPP_CbSetPair.var_72;
                        ZPP_CbSetPair.var_72 = _loc24_.next;
                        _loc24_.next = null;
                     }
                     _loc24_.var_145 = true;
                     if(ZPP_CbSet.method_117(_loc20_,_loc20_))
                     {
                        _loc24_.a = _loc20_;
                        _loc24_.b = _loc20_;
                     }
                     else
                     {
                        _loc24_.a = _loc20_;
                        _loc24_.b = _loc20_;
                     }
                     §§pop().method_127(_loc24_);
                  }
                  _loc22_ = _loc17_.var_73;
                  while(_loc22_ != null)
                  {
                     _loc21_ = _loc22_.var_74;
                     _loc20_.validate();
                     _loc21_.validate();
                     if(ZPP_CbSet.method_137(_loc20_,_loc21_,_loc2_))
                     {
                        §§push(_loc3_);
                        if(ZPP_CbSetPair.var_72 == null)
                        {
                           _loc24_ = new ZPP_CbSetPair();
                        }
                        else
                        {
                           _loc24_ = ZPP_CbSetPair.var_72;
                           ZPP_CbSetPair.var_72 = _loc24_.next;
                           _loc24_.next = null;
                        }
                        _loc24_.var_145 = true;
                        if(ZPP_CbSet.method_117(_loc20_,_loc21_))
                        {
                           _loc24_.a = _loc20_;
                           _loc24_.b = _loc21_;
                        }
                        else
                        {
                           _loc24_.a = _loc21_;
                           _loc24_.b = _loc20_;
                        }
                        §§pop().method_127(_loc24_);
                     }
                     _loc22_ = _loc22_.next;
                  }
               }
               _loc12_ = _loc12_.next;
            }
         }
         if(_loc3_.parent == null)
         {
            null;
         }
         else
         {
            _loc25_ = _loc3_.parent;
            while(_loc25_ != null)
            {
               if(_loc25_.var_75 != null)
               {
                  _loc25_ = _loc25_.var_75;
               }
               else if(_loc25_.next != null)
               {
                  _loc25_ = _loc25_.next;
               }
               else
               {
                  _loc24_ = _loc25_.data;
                  if(param1)
                  {
                     _loc2_.space.method_733(_loc24_.a,_loc24_.b);
                  }
                  else
                  {
                     _loc2_.space.method_591(_loc24_.a,_loc24_.b);
                  }
                  _loc26_ = _loc24_;
                  _loc20_ = null;
                  _loc26_.b = _loc20_;
                  _loc26_.a = _loc20_;
                  _loc26_.name_15.clear();
                  _loc26_.next = ZPP_CbSetPair.var_72;
                  ZPP_CbSetPair.var_72 = _loc26_;
                  _loc27_ = _loc25_.parent;
                  if(_loc27_ != null)
                  {
                     if(_loc25_ == _loc27_.var_75)
                     {
                        _loc27_.var_75 = null;
                     }
                     else
                     {
                        _loc27_.next = null;
                     }
                     _loc25_.parent = null;
                  }
                  _loc28_ = _loc25_;
                  _loc28_.data = null;
                  _loc28_.lt = null;
                  _loc28_.name_9 = null;
                  _loc28_.next = ZPP_Set_ZPP_CbSetPair.var_72;
                  ZPP_Set_ZPP_CbSetPair.var_72 = _loc28_;
                  _loc25_ = _loc27_;
               }
            }
            _loc3_.parent = null;
         }
         _loc25_ = _loc3_;
         _loc25_.data = null;
         _loc25_.lt = null;
         _loc25_.name_9 = null;
         _loc25_.next = ZPP_Set_ZPP_CbSetPair.var_72;
         ZPP_Set_ZPP_CbSetPair.var_72 = _loc25_;
      }
      
      public final function method_106() : void
      {
         var _loc3_:* = null as ZPP_CbType;
         var _loc4_:* = null as ZPP_CbType;
         var _loc5_:* = null as ZNPNode_ZPP_Interactor;
         var _loc6_:* = null as ZPP_Interactor;
         var _loc1_:ZNPNode_ZPP_CbType = options1.name_18.var_73;
         var _loc2_:ZNPNode_ZPP_CbType = options2.name_18.var_73;
         while(_loc1_ != null && _loc2_ != null)
         {
            _loc3_ = _loc1_.var_74;
            _loc4_ = _loc2_.var_74;
            if(_loc3_ == _loc4_)
            {
               _loc5_ = _loc3_.name_26.var_73;
               while(_loc5_ != null)
               {
                  _loc6_ = _loc5_.var_74;
                  _loc6_.method_106();
                  _loc5_ = _loc5_.next;
               }
               _loc1_ = _loc1_.next;
               _loc2_ = _loc2_.next;
            }
            else if(_loc3_.id < _loc4_.id)
            {
               _loc5_ = _loc3_.name_26.var_73;
               while(_loc5_ != null)
               {
                  _loc6_ = _loc5_.var_74;
                  _loc6_.method_106();
                  _loc5_ = _loc5_.next;
               }
               _loc1_ = _loc1_.next;
            }
            else
            {
               _loc5_ = _loc4_.name_26.var_73;
               while(_loc5_ != null)
               {
                  _loc6_ = _loc5_.var_74;
                  _loc6_.method_106();
                  _loc5_ = _loc5_.next;
               }
               _loc2_ = _loc2_.next;
            }
         }
         while(_loc1_ != null)
         {
            _loc5_ = _loc1_.var_74.name_26.var_73;
            while(_loc5_ != null)
            {
               _loc6_ = _loc5_.var_74;
               _loc6_.method_106();
               _loc5_ = _loc5_.next;
            }
            _loc1_ = _loc1_.next;
         }
         while(_loc2_ != null)
         {
            _loc5_ = _loc2_.var_74.name_26.var_73;
            while(_loc5_ != null)
            {
               _loc6_ = _loc5_.var_74;
               _loc6_.method_106();
               _loc5_ = _loc5_.next;
            }
            _loc2_ = _loc2_.next;
         }
      }
      
      override public function method_353(param1:int) : void
      {
         method_120();
         event = param1;
         method_121();
      }
      
      override public function method_120() : void
      {
         var _loc5_:* = null as ZPP_CbType;
         var _loc6_:* = null as ZPP_CbType;
         var _loc7_:* = null as ZNPNode_ZPP_CbSet;
         var _loc8_:* = null as ZPP_CbSet;
         var _loc9_:* = null as ZNPNode_ZPP_Interactor;
         var _loc10_:* = null as ZPP_Interactor;
         var _loc1_:* = {};
         with_uniquesets(false);
         var _loc2_:* = type == class_223.var_868;
         var _loc3_:ZNPNode_ZPP_CbType = options1.name_18.var_73;
         var _loc4_:ZNPNode_ZPP_CbType = options2.name_18.var_73;
         while(_loc3_ != null && _loc4_ != null)
         {
            _loc5_ = _loc3_.var_74;
            _loc6_ = _loc4_.var_74;
            if(_loc5_ == _loc6_)
            {
               _loc5_.name_15.remove(_loc1_);
               _loc7_ = _loc5_.var_148.var_73;
               while(_loc7_ != null)
               {
                  _loc8_ = _loc7_.var_74;
                  _loc8_.var_145 = true;
                  _loc8_.method_131();
                  _loc7_ = _loc7_.next;
               }
               if(_loc2_)
               {
                  _loc9_ = _loc5_.name_26.var_73;
                  while(_loc9_ != null)
                  {
                     _loc10_ = _loc9_.var_74;
                     _loc10_.method_106();
                     _loc9_ = _loc9_.next;
                  }
               }
               _loc3_ = _loc3_.next;
               _loc4_ = _loc4_.next;
            }
            else if(_loc5_.id < _loc6_.id)
            {
               _loc5_.name_15.remove(_loc1_);
               _loc7_ = _loc5_.var_148.var_73;
               while(_loc7_ != null)
               {
                  _loc8_ = _loc7_.var_74;
                  _loc8_.var_145 = true;
                  _loc8_.method_131();
                  _loc7_ = _loc7_.next;
               }
               if(_loc2_)
               {
                  _loc9_ = _loc5_.name_26.var_73;
                  while(_loc9_ != null)
                  {
                     _loc10_ = _loc9_.var_74;
                     _loc10_.method_106();
                     _loc9_ = _loc9_.next;
                  }
               }
               _loc3_ = _loc3_.next;
            }
            else
            {
               _loc6_.name_15.remove(_loc1_);
               _loc7_ = _loc6_.var_148.var_73;
               while(_loc7_ != null)
               {
                  _loc8_ = _loc7_.var_74;
                  _loc8_.var_145 = true;
                  _loc8_.method_131();
                  _loc7_ = _loc7_.next;
               }
               if(_loc2_)
               {
                  _loc9_ = _loc6_.name_26.var_73;
                  while(_loc9_ != null)
                  {
                     _loc10_ = _loc9_.var_74;
                     _loc10_.method_106();
                     _loc9_ = _loc9_.next;
                  }
               }
               _loc4_ = _loc4_.next;
            }
         }
         while(_loc3_ != null)
         {
            _loc5_ = _loc3_.var_74;
            _loc5_.name_15.remove(_loc1_);
            _loc7_ = _loc5_.var_148.var_73;
            while(_loc7_ != null)
            {
               _loc8_ = _loc7_.var_74;
               _loc8_.var_145 = true;
               _loc8_.method_131();
               _loc7_ = _loc7_.next;
            }
            if(_loc2_)
            {
               _loc9_ = _loc5_.name_26.var_73;
               while(_loc9_ != null)
               {
                  _loc10_ = _loc9_.var_74;
                  _loc10_.method_106();
                  _loc9_ = _loc9_.next;
               }
            }
            _loc3_ = _loc3_.next;
         }
         while(_loc4_ != null)
         {
            _loc5_ = _loc4_.var_74;
            _loc5_.name_15.remove(_loc1_);
            _loc7_ = _loc5_.var_148.var_73;
            while(_loc7_ != null)
            {
               _loc8_ = _loc7_.var_74;
               _loc8_.var_145 = true;
               _loc8_.method_131();
               _loc7_ = _loc7_.next;
            }
            if(_loc2_)
            {
               _loc9_ = _loc5_.name_26.var_73;
               while(_loc9_ != null)
               {
                  _loc10_ = _loc9_.var_74;
                  _loc10_.method_106();
                  _loc9_ = _loc9_.next;
               }
            }
            _loc4_ = _loc4_.next;
         }
         options1.handler = null;
         options2.handler = null;
      }
      
      override public function method_331() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = null as ZNPNode_ZPP_CbType;
         var _loc4_:* = null as ZNPNode_ZPP_CbType;
         var _loc5_:* = null as ZPP_CbType;
         var _loc6_:* = null as ZPP_CbType;
         var _loc7_:* = null as ZNPNode_ZPP_CbSet;
         var _loc8_:* = null as ZPP_CbSet;
         var _loc9_:* = null as ZNPNode_ZPP_InteractionListener;
         var _loc10_:* = null as ZNPNode_ZPP_InteractionListener;
         var _loc11_:* = null as ZPP_InteractionListener;
         var _loc12_:* = null as class_289;
         var _loc13_:* = null as ZNPNode_ZPP_InteractionListener;
         var _loc14_:Boolean = false;
         var _loc15_:* = null as ZNPNode_ZPP_Interactor;
         var _loc16_:* = null as ZPP_Interactor;
         var _loc1_:* = {};
         if(space != null)
         {
            _loc2_ = type == class_223.var_868;
            _loc3_ = options1.name_18.var_73;
            _loc4_ = options2.name_18.var_73;
            while(_loc3_ != null && _loc4_ != null)
            {
               _loc5_ = _loc3_.var_74;
               _loc6_ = _loc4_.var_74;
               if(_loc5_ == _loc6_)
               {
                  _loc5_.name_15.remove(_loc1_);
                  _loc7_ = _loc5_.var_148.var_73;
                  while(_loc7_ != null)
                  {
                     _loc8_ = _loc7_.var_74;
                     _loc8_.var_145 = true;
                     _loc8_.method_131();
                     _loc7_ = _loc7_.next;
                  }
                  _loc9_ = null;
                  _loc10_ = _loc5_.name_15.var_73;
                  while(_loc10_ != null)
                  {
                     _loc11_ = _loc10_.var_74;
                     if(_loc1_.name_17 > _loc11_.name_17 || _loc1_.name_17 == _loc11_.name_17 && _loc1_.id > _loc11_.id)
                     {
                        break;
                     }
                     _loc9_ = _loc10_;
                     _loc10_ = _loc10_.next;
                  }
                  _loc12_ = _loc5_.name_15;
                  if(ZNPNode_ZPP_InteractionListener.var_72 == null)
                  {
                     _loc13_ = new ZNPNode_ZPP_InteractionListener();
                  }
                  else
                  {
                     _loc13_ = ZNPNode_ZPP_InteractionListener.var_72;
                     ZNPNode_ZPP_InteractionListener.var_72 = _loc13_.next;
                     _loc13_.next = null;
                  }
                  null;
                  _loc13_.var_74 = _loc1_;
                  _loc10_ = _loc13_;
                  if(_loc9_ == null)
                  {
                     _loc10_.next = _loc12_.var_73;
                     _loc12_.var_73 = _loc10_;
                  }
                  else
                  {
                     _loc10_.next = _loc9_.next;
                     _loc9_.next = _loc10_;
                  }
                  _loc14_ = true;
                  _loc12_.name_2 = _loc14_;
                  _loc12_.var_76 = _loc14_;
                  _loc12_.length = _loc12_.length + 1;
                  _loc10_;
                  _loc7_ = _loc5_.var_148.var_73;
                  while(_loc7_ != null)
                  {
                     _loc8_ = _loc7_.var_74;
                     _loc8_.var_145 = true;
                     _loc8_.method_131();
                     _loc7_ = _loc7_.next;
                  }
                  if(_loc2_)
                  {
                     _loc15_ = _loc5_.name_26.var_73;
                     while(_loc15_ != null)
                     {
                        _loc16_ = _loc15_.var_74;
                        _loc16_.method_106();
                        _loc15_ = _loc15_.next;
                     }
                  }
                  _loc3_ = _loc3_.next;
                  _loc4_ = _loc4_.next;
               }
               else if(_loc5_.id < _loc6_.id)
               {
                  _loc5_.name_15.remove(_loc1_);
                  _loc7_ = _loc5_.var_148.var_73;
                  while(_loc7_ != null)
                  {
                     _loc8_ = _loc7_.var_74;
                     _loc8_.var_145 = true;
                     _loc8_.method_131();
                     _loc7_ = _loc7_.next;
                  }
                  _loc9_ = null;
                  _loc10_ = _loc5_.name_15.var_73;
                  while(_loc10_ != null)
                  {
                     _loc11_ = _loc10_.var_74;
                     if(_loc1_.name_17 > _loc11_.name_17 || _loc1_.name_17 == _loc11_.name_17 && _loc1_.id > _loc11_.id)
                     {
                        break;
                     }
                     _loc9_ = _loc10_;
                     _loc10_ = _loc10_.next;
                  }
                  _loc12_ = _loc5_.name_15;
                  if(ZNPNode_ZPP_InteractionListener.var_72 == null)
                  {
                     _loc13_ = new ZNPNode_ZPP_InteractionListener();
                  }
                  else
                  {
                     _loc13_ = ZNPNode_ZPP_InteractionListener.var_72;
                     ZNPNode_ZPP_InteractionListener.var_72 = _loc13_.next;
                     _loc13_.next = null;
                  }
                  null;
                  _loc13_.var_74 = _loc1_;
                  _loc10_ = _loc13_;
                  if(_loc9_ == null)
                  {
                     _loc10_.next = _loc12_.var_73;
                     _loc12_.var_73 = _loc10_;
                  }
                  else
                  {
                     _loc10_.next = _loc9_.next;
                     _loc9_.next = _loc10_;
                  }
                  _loc14_ = true;
                  _loc12_.name_2 = _loc14_;
                  _loc12_.var_76 = _loc14_;
                  _loc12_.length = _loc12_.length + 1;
                  _loc10_;
                  _loc7_ = _loc5_.var_148.var_73;
                  while(_loc7_ != null)
                  {
                     _loc8_ = _loc7_.var_74;
                     _loc8_.var_145 = true;
                     _loc8_.method_131();
                     _loc7_ = _loc7_.next;
                  }
                  if(_loc2_)
                  {
                     _loc15_ = _loc5_.name_26.var_73;
                     while(_loc15_ != null)
                     {
                        _loc16_ = _loc15_.var_74;
                        _loc16_.method_106();
                        _loc15_ = _loc15_.next;
                     }
                  }
                  _loc3_ = _loc3_.next;
               }
               else
               {
                  _loc6_.name_15.remove(_loc1_);
                  _loc7_ = _loc6_.var_148.var_73;
                  while(_loc7_ != null)
                  {
                     _loc8_ = _loc7_.var_74;
                     _loc8_.var_145 = true;
                     _loc8_.method_131();
                     _loc7_ = _loc7_.next;
                  }
                  _loc9_ = null;
                  _loc10_ = _loc6_.name_15.var_73;
                  while(_loc10_ != null)
                  {
                     _loc11_ = _loc10_.var_74;
                     if(_loc1_.name_17 > _loc11_.name_17 || _loc1_.name_17 == _loc11_.name_17 && _loc1_.id > _loc11_.id)
                     {
                        break;
                     }
                     _loc9_ = _loc10_;
                     _loc10_ = _loc10_.next;
                  }
                  _loc12_ = _loc6_.name_15;
                  if(ZNPNode_ZPP_InteractionListener.var_72 == null)
                  {
                     _loc13_ = new ZNPNode_ZPP_InteractionListener();
                  }
                  else
                  {
                     _loc13_ = ZNPNode_ZPP_InteractionListener.var_72;
                     ZNPNode_ZPP_InteractionListener.var_72 = _loc13_.next;
                     _loc13_.next = null;
                  }
                  null;
                  _loc13_.var_74 = _loc1_;
                  _loc10_ = _loc13_;
                  if(_loc9_ == null)
                  {
                     _loc10_.next = _loc12_.var_73;
                     _loc12_.var_73 = _loc10_;
                  }
                  else
                  {
                     _loc10_.next = _loc9_.next;
                     _loc9_.next = _loc10_;
                  }
                  _loc14_ = true;
                  _loc12_.name_2 = _loc14_;
                  _loc12_.var_76 = _loc14_;
                  _loc12_.length = _loc12_.length + 1;
                  _loc10_;
                  _loc7_ = _loc6_.var_148.var_73;
                  while(_loc7_ != null)
                  {
                     _loc8_ = _loc7_.var_74;
                     _loc8_.var_145 = true;
                     _loc8_.method_131();
                     _loc7_ = _loc7_.next;
                  }
                  if(_loc2_)
                  {
                     _loc15_ = _loc6_.name_26.var_73;
                     while(_loc15_ != null)
                     {
                        _loc16_ = _loc15_.var_74;
                        _loc16_.method_106();
                        _loc15_ = _loc15_.next;
                     }
                  }
                  _loc4_ = _loc4_.next;
               }
            }
            while(_loc3_ != null)
            {
               _loc5_ = _loc3_.var_74;
               _loc5_.name_15.remove(_loc1_);
               _loc7_ = _loc5_.var_148.var_73;
               while(_loc7_ != null)
               {
                  _loc8_ = _loc7_.var_74;
                  _loc8_.var_145 = true;
                  _loc8_.method_131();
                  _loc7_ = _loc7_.next;
               }
               _loc9_ = null;
               _loc10_ = _loc5_.name_15.var_73;
               while(_loc10_ != null)
               {
                  _loc11_ = _loc10_.var_74;
                  if(_loc1_.name_17 > _loc11_.name_17 || _loc1_.name_17 == _loc11_.name_17 && _loc1_.id > _loc11_.id)
                  {
                     break;
                  }
                  _loc9_ = _loc10_;
                  _loc10_ = _loc10_.next;
               }
               _loc12_ = _loc5_.name_15;
               if(ZNPNode_ZPP_InteractionListener.var_72 == null)
               {
                  _loc13_ = new ZNPNode_ZPP_InteractionListener();
               }
               else
               {
                  _loc13_ = ZNPNode_ZPP_InteractionListener.var_72;
                  ZNPNode_ZPP_InteractionListener.var_72 = _loc13_.next;
                  _loc13_.next = null;
               }
               null;
               _loc13_.var_74 = _loc1_;
               _loc10_ = _loc13_;
               if(_loc9_ == null)
               {
                  _loc10_.next = _loc12_.var_73;
                  _loc12_.var_73 = _loc10_;
               }
               else
               {
                  _loc10_.next = _loc9_.next;
                  _loc9_.next = _loc10_;
               }
               _loc14_ = true;
               _loc12_.name_2 = _loc14_;
               _loc12_.var_76 = _loc14_;
               _loc12_.length = _loc12_.length + 1;
               _loc10_;
               _loc7_ = _loc5_.var_148.var_73;
               while(_loc7_ != null)
               {
                  _loc8_ = _loc7_.var_74;
                  _loc8_.var_145 = true;
                  _loc8_.method_131();
                  _loc7_ = _loc7_.next;
               }
               if(_loc2_)
               {
                  _loc15_ = _loc5_.name_26.var_73;
                  while(_loc15_ != null)
                  {
                     _loc16_ = _loc15_.var_74;
                     _loc16_.method_106();
                     _loc15_ = _loc15_.next;
                  }
               }
               _loc3_ = _loc3_.next;
            }
            while(_loc4_ != null)
            {
               _loc5_ = _loc4_.var_74;
               _loc5_.name_15.remove(_loc1_);
               _loc7_ = _loc5_.var_148.var_73;
               while(_loc7_ != null)
               {
                  _loc8_ = _loc7_.var_74;
                  _loc8_.var_145 = true;
                  _loc8_.method_131();
                  _loc7_ = _loc7_.next;
               }
               _loc9_ = null;
               _loc10_ = _loc5_.name_15.var_73;
               while(_loc10_ != null)
               {
                  _loc11_ = _loc10_.var_74;
                  if(_loc1_.name_17 > _loc11_.name_17 || _loc1_.name_17 == _loc11_.name_17 && _loc1_.id > _loc11_.id)
                  {
                     break;
                  }
                  _loc9_ = _loc10_;
                  _loc10_ = _loc10_.next;
               }
               _loc12_ = _loc5_.name_15;
               if(ZNPNode_ZPP_InteractionListener.var_72 == null)
               {
                  _loc13_ = new ZNPNode_ZPP_InteractionListener();
               }
               else
               {
                  _loc13_ = ZNPNode_ZPP_InteractionListener.var_72;
                  ZNPNode_ZPP_InteractionListener.var_72 = _loc13_.next;
                  _loc13_.next = null;
               }
               null;
               _loc13_.var_74 = _loc1_;
               _loc10_ = _loc13_;
               if(_loc9_ == null)
               {
                  _loc10_.next = _loc12_.var_73;
                  _loc12_.var_73 = _loc10_;
               }
               else
               {
                  _loc10_.next = _loc9_.next;
                  _loc9_.next = _loc10_;
               }
               _loc14_ = true;
               _loc12_.name_2 = _loc14_;
               _loc12_.var_76 = _loc14_;
               _loc12_.length = _loc12_.length + 1;
               _loc10_;
               _loc7_ = _loc5_.var_148.var_73;
               while(_loc7_ != null)
               {
                  _loc8_ = _loc7_.var_74;
                  _loc8_.var_145 = true;
                  _loc8_.method_131();
                  _loc7_ = _loc7_.next;
               }
               if(_loc2_)
               {
                  _loc15_ = _loc5_.name_26.var_73;
                  while(_loc15_ != null)
                  {
                     _loc16_ = _loc15_.var_74;
                     _loc16_.method_106();
                     _loc15_ = _loc15_.next;
                  }
               }
               _loc4_ = _loc4_.next;
            }
         }
      }
      
      public final function cbtype_change2(param1:ZPP_CbType, param2:Boolean, param3:Boolean) : void
      {
         cbtype_change(options2,param1,param2,param3);
      }
      
      public final function cbtype_change1(param1:ZPP_CbType, param2:Boolean, param3:Boolean) : void
      {
         cbtype_change(options1,param1,param2,param3);
      }
      
      public final function cbtype_change(param1:ZPP_OptionType, param2:ZPP_CbType, param3:Boolean, param4:Boolean) : void
      {
         var _loc5_:* = null as ZNPNode_ZPP_CbType;
         var _loc6_:* = null as ZNPNode_ZPP_CbType;
         var _loc7_:* = null as ZPP_CbType;
         var _loc8_:* = null as ZNPList_ZPP_CbType;
         var _loc9_:* = null as ZNPNode_ZPP_CbType;
         var _loc10_:Boolean = false;
         method_120();
         if(param3)
         {
            if(param4)
            {
               _loc5_ = null;
               _loc6_ = param1.name_18.var_73;
               while(_loc6_ != null)
               {
                  _loc7_ = _loc6_.var_74;
                  if(param2.id < _loc7_.id)
                  {
                     break;
                  }
                  _loc5_ = _loc6_;
                  _loc6_ = _loc6_.next;
               }
               _loc8_ = param1.name_18;
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
               _loc9_.var_74 = param2;
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
               param1.name_18.remove(param2);
            }
         }
         else if(param4)
         {
            _loc5_ = null;
            _loc6_ = param1.name_22.var_73;
            while(_loc6_ != null)
            {
               _loc7_ = _loc6_.var_74;
               if(param2.id < _loc7_.id)
               {
                  break;
               }
               _loc5_ = _loc6_;
               _loc6_ = _loc6_.next;
            }
            _loc8_ = param1.name_22;
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
            _loc9_.var_74 = param2;
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
            param1.name_22.remove(param2);
         }
         method_121();
         null;
      }
      
      override public function method_121() : void
      {
         var _loc5_:* = null as ZPP_CbType;
         var _loc6_:* = null as ZPP_CbType;
         var _loc7_:* = null as ZNPNode_ZPP_InteractionListener;
         var _loc8_:* = null as ZNPNode_ZPP_InteractionListener;
         var _loc9_:* = null as ZPP_InteractionListener;
         var _loc10_:* = null as class_289;
         var _loc11_:* = null as ZNPNode_ZPP_InteractionListener;
         var _loc12_:Boolean = false;
         var _loc13_:* = null as ZNPNode_ZPP_CbSet;
         var _loc14_:* = null as ZPP_CbSet;
         var _loc15_:* = null as ZNPNode_ZPP_Interactor;
         var _loc16_:* = null as ZPP_Interactor;
         var _loc1_:* = {};
         var _loc2_:* = type == class_223.var_868;
         var _loc3_:ZNPNode_ZPP_CbType = options1.name_18.var_73;
         var _loc4_:ZNPNode_ZPP_CbType = options2.name_18.var_73;
         while(_loc3_ != null && _loc4_ != null)
         {
            _loc5_ = _loc3_.var_74;
            _loc6_ = _loc4_.var_74;
            if(_loc5_ == _loc6_)
            {
               _loc7_ = null;
               _loc8_ = _loc5_.name_15.var_73;
               while(_loc8_ != null)
               {
                  _loc9_ = _loc8_.var_74;
                  if(_loc1_.name_17 > _loc9_.name_17 || _loc1_.name_17 == _loc9_.name_17 && _loc1_.id > _loc9_.id)
                  {
                     break;
                  }
                  _loc7_ = _loc8_;
                  _loc8_ = _loc8_.next;
               }
               _loc10_ = _loc5_.name_15;
               if(ZNPNode_ZPP_InteractionListener.var_72 == null)
               {
                  _loc11_ = new ZNPNode_ZPP_InteractionListener();
               }
               else
               {
                  _loc11_ = ZNPNode_ZPP_InteractionListener.var_72;
                  ZNPNode_ZPP_InteractionListener.var_72 = _loc11_.next;
                  _loc11_.next = null;
               }
               null;
               _loc11_.var_74 = _loc1_;
               _loc8_ = _loc11_;
               if(_loc7_ == null)
               {
                  _loc8_.next = _loc10_.var_73;
                  _loc10_.var_73 = _loc8_;
               }
               else
               {
                  _loc8_.next = _loc7_.next;
                  _loc7_.next = _loc8_;
               }
               _loc12_ = true;
               _loc10_.name_2 = _loc12_;
               _loc10_.var_76 = _loc12_;
               _loc10_.length = _loc10_.length + 1;
               _loc8_;
               _loc13_ = _loc5_.var_148.var_73;
               while(_loc13_ != null)
               {
                  _loc14_ = _loc13_.var_74;
                  _loc14_.var_145 = true;
                  _loc14_.method_131();
                  _loc13_ = _loc13_.next;
               }
               if(_loc2_)
               {
                  _loc15_ = _loc5_.name_26.var_73;
                  while(_loc15_ != null)
                  {
                     _loc16_ = _loc15_.var_74;
                     _loc16_.method_106();
                     _loc15_ = _loc15_.next;
                  }
               }
               _loc3_ = _loc3_.next;
               _loc4_ = _loc4_.next;
            }
            else if(_loc5_.id < _loc6_.id)
            {
               _loc7_ = null;
               _loc8_ = _loc5_.name_15.var_73;
               while(_loc8_ != null)
               {
                  _loc9_ = _loc8_.var_74;
                  if(_loc1_.name_17 > _loc9_.name_17 || _loc1_.name_17 == _loc9_.name_17 && _loc1_.id > _loc9_.id)
                  {
                     break;
                  }
                  _loc7_ = _loc8_;
                  _loc8_ = _loc8_.next;
               }
               _loc10_ = _loc5_.name_15;
               if(ZNPNode_ZPP_InteractionListener.var_72 == null)
               {
                  _loc11_ = new ZNPNode_ZPP_InteractionListener();
               }
               else
               {
                  _loc11_ = ZNPNode_ZPP_InteractionListener.var_72;
                  ZNPNode_ZPP_InteractionListener.var_72 = _loc11_.next;
                  _loc11_.next = null;
               }
               null;
               _loc11_.var_74 = _loc1_;
               _loc8_ = _loc11_;
               if(_loc7_ == null)
               {
                  _loc8_.next = _loc10_.var_73;
                  _loc10_.var_73 = _loc8_;
               }
               else
               {
                  _loc8_.next = _loc7_.next;
                  _loc7_.next = _loc8_;
               }
               _loc12_ = true;
               _loc10_.name_2 = _loc12_;
               _loc10_.var_76 = _loc12_;
               _loc10_.length = _loc10_.length + 1;
               _loc8_;
               _loc13_ = _loc5_.var_148.var_73;
               while(_loc13_ != null)
               {
                  _loc14_ = _loc13_.var_74;
                  _loc14_.var_145 = true;
                  _loc14_.method_131();
                  _loc13_ = _loc13_.next;
               }
               if(_loc2_)
               {
                  _loc15_ = _loc5_.name_26.var_73;
                  while(_loc15_ != null)
                  {
                     _loc16_ = _loc15_.var_74;
                     _loc16_.method_106();
                     _loc15_ = _loc15_.next;
                  }
               }
               _loc3_ = _loc3_.next;
            }
            else
            {
               _loc7_ = null;
               _loc8_ = _loc6_.name_15.var_73;
               while(_loc8_ != null)
               {
                  _loc9_ = _loc8_.var_74;
                  if(_loc1_.name_17 > _loc9_.name_17 || _loc1_.name_17 == _loc9_.name_17 && _loc1_.id > _loc9_.id)
                  {
                     break;
                  }
                  _loc7_ = _loc8_;
                  _loc8_ = _loc8_.next;
               }
               _loc10_ = _loc6_.name_15;
               if(ZNPNode_ZPP_InteractionListener.var_72 == null)
               {
                  _loc11_ = new ZNPNode_ZPP_InteractionListener();
               }
               else
               {
                  _loc11_ = ZNPNode_ZPP_InteractionListener.var_72;
                  ZNPNode_ZPP_InteractionListener.var_72 = _loc11_.next;
                  _loc11_.next = null;
               }
               null;
               _loc11_.var_74 = _loc1_;
               _loc8_ = _loc11_;
               if(_loc7_ == null)
               {
                  _loc8_.next = _loc10_.var_73;
                  _loc10_.var_73 = _loc8_;
               }
               else
               {
                  _loc8_.next = _loc7_.next;
                  _loc7_.next = _loc8_;
               }
               _loc12_ = true;
               _loc10_.name_2 = _loc12_;
               _loc10_.var_76 = _loc12_;
               _loc10_.length = _loc10_.length + 1;
               _loc8_;
               _loc13_ = _loc6_.var_148.var_73;
               while(_loc13_ != null)
               {
                  _loc14_ = _loc13_.var_74;
                  _loc14_.var_145 = true;
                  _loc14_.method_131();
                  _loc13_ = _loc13_.next;
               }
               if(_loc2_)
               {
                  _loc15_ = _loc6_.name_26.var_73;
                  while(_loc15_ != null)
                  {
                     _loc16_ = _loc15_.var_74;
                     _loc16_.method_106();
                     _loc15_ = _loc15_.next;
                  }
               }
               _loc4_ = _loc4_.next;
            }
         }
         while(_loc3_ != null)
         {
            _loc5_ = _loc3_.var_74;
            _loc7_ = null;
            _loc8_ = _loc5_.name_15.var_73;
            while(_loc8_ != null)
            {
               _loc9_ = _loc8_.var_74;
               if(_loc1_.name_17 > _loc9_.name_17 || _loc1_.name_17 == _loc9_.name_17 && _loc1_.id > _loc9_.id)
               {
                  break;
               }
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.next;
            }
            _loc10_ = _loc5_.name_15;
            if(ZNPNode_ZPP_InteractionListener.var_72 == null)
            {
               _loc11_ = new ZNPNode_ZPP_InteractionListener();
            }
            else
            {
               _loc11_ = ZNPNode_ZPP_InteractionListener.var_72;
               ZNPNode_ZPP_InteractionListener.var_72 = _loc11_.next;
               _loc11_.next = null;
            }
            null;
            _loc11_.var_74 = _loc1_;
            _loc8_ = _loc11_;
            if(_loc7_ == null)
            {
               _loc8_.next = _loc10_.var_73;
               _loc10_.var_73 = _loc8_;
            }
            else
            {
               _loc8_.next = _loc7_.next;
               _loc7_.next = _loc8_;
            }
            _loc12_ = true;
            _loc10_.name_2 = _loc12_;
            _loc10_.var_76 = _loc12_;
            _loc10_.length = _loc10_.length + 1;
            _loc8_;
            _loc13_ = _loc5_.var_148.var_73;
            while(_loc13_ != null)
            {
               _loc14_ = _loc13_.var_74;
               _loc14_.var_145 = true;
               _loc14_.method_131();
               _loc13_ = _loc13_.next;
            }
            if(_loc2_)
            {
               _loc15_ = _loc5_.name_26.var_73;
               while(_loc15_ != null)
               {
                  _loc16_ = _loc15_.var_74;
                  _loc16_.method_106();
                  _loc15_ = _loc15_.next;
               }
            }
            _loc3_ = _loc3_.next;
         }
         while(_loc4_ != null)
         {
            _loc5_ = _loc4_.var_74;
            _loc7_ = null;
            _loc8_ = _loc5_.name_15.var_73;
            while(_loc8_ != null)
            {
               _loc9_ = _loc8_.var_74;
               if(_loc1_.name_17 > _loc9_.name_17 || _loc1_.name_17 == _loc9_.name_17 && _loc1_.id > _loc9_.id)
               {
                  break;
               }
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.next;
            }
            _loc10_ = _loc5_.name_15;
            if(ZNPNode_ZPP_InteractionListener.var_72 == null)
            {
               _loc11_ = new ZNPNode_ZPP_InteractionListener();
            }
            else
            {
               _loc11_ = ZNPNode_ZPP_InteractionListener.var_72;
               ZNPNode_ZPP_InteractionListener.var_72 = _loc11_.next;
               _loc11_.next = null;
            }
            null;
            _loc11_.var_74 = _loc1_;
            _loc8_ = _loc11_;
            if(_loc7_ == null)
            {
               _loc8_.next = _loc10_.var_73;
               _loc10_.var_73 = _loc8_;
            }
            else
            {
               _loc8_.next = _loc7_.next;
               _loc7_.next = _loc8_;
            }
            _loc12_ = true;
            _loc10_.name_2 = _loc12_;
            _loc10_.var_76 = _loc12_;
            _loc10_.length = _loc10_.length + 1;
            _loc8_;
            _loc13_ = _loc5_.var_148.var_73;
            while(_loc13_ != null)
            {
               _loc14_ = _loc13_.var_74;
               _loc14_.var_145 = true;
               _loc14_.method_131();
               _loc13_ = _loc13_.next;
            }
            if(_loc2_)
            {
               _loc15_ = _loc5_.name_26.var_73;
               while(_loc15_ != null)
               {
                  _loc16_ = _loc15_.var_74;
                  _loc16_.method_106();
                  _loc15_ = _loc15_.next;
               }
            }
            _loc4_ = _loc4_.next;
         }
         options1.handler = cbtype_change1;
         options2.handler = cbtype_change2;
         with_uniquesets(true);
      }
   }
}
