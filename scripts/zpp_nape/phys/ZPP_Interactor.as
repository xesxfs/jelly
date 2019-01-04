package zpp_nape.phys
{
   import package_29.Interactor;
   import package_34.class_216;
   import package_34.class_250;
   import package_34.class_264;
   import package_36.class_284;
   import zpp_nape.callbacks.ZPP_CbSet;
   import zpp_nape.callbacks.ZPP_CbType;
   import zpp_nape.callbacks.ZPP_InteractionListener;
   import zpp_nape.callbacks.ZPP_OptionType;
   import zpp_nape.callbacks.class_273;
   import zpp_nape.dynamics.ZPP_InteractionGroup;
   import zpp_nape.shape.ZPP_Shape;
   import zpp_nape.space.ZPP_CallbackSet;
   import zpp_nape.space.ZPP_Space;
   import zpp_nape.util.ZNPList_ZPP_CbType;
   import zpp_nape.util.ZNPNode_ZPP_CallbackSet;
   import zpp_nape.util.ZNPNode_ZPP_CbType;
   import zpp_nape.util.ZPP_CbTypeList;
   import zpp_nape.util.class_283;
   
   public class ZPP_Interactor
   {
       
      
      public var var_251:class_216;
      
      public var name_21;
      
      public var var_307:Interactor;
      
      public var var_160:ZPP_Shape;
      
      public var id:int;
      
      public var var_207:ZPP_Compound;
      
      public var var_182:ZPP_Body;
      
      public var group:ZPP_InteractionGroup;
      
      public var var_148:class_283;
      
      public var name_10:ZNPList_ZPP_CbType;
      
      public var var_134:ZPP_CbSet;
      
      public function ZPP_Interactor()
      {
         var_251 = null;
         var_134 = null;
         name_10 = null;
         group = null;
         var_148 = null;
         var_207 = null;
         var_182 = null;
         var_160 = null;
         name_21 = null;
         id = 0;
         var_307 = null;
         id = int(class_284.Interactor());
         var_148 = new class_283();
         name_10 = new ZNPList_ZPP_CbType();
      }
      
      public static function method_65(param1:ZPP_Interactor, param2:ZPP_Interactor) : ZPP_CallbackSet
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:* = null as class_283;
         var _loc8_:* = null as ZPP_CallbackSet;
         if(param1.id < param2.id)
         {
            _loc3_ = param1.id;
         }
         else
         {
            _loc3_ = param2.id;
         }
         if(param1.id < param2.id)
         {
            _loc4_ = param2.id;
         }
         else
         {
            _loc4_ = param1.id;
         }
         if(param1.var_148.length < param2.var_148.length)
         {
            _loc5_ = param1.var_148;
         }
         else
         {
            _loc5_ = param2.var_148;
         }
         var _loc6_:* = null;
         var _loc7_:ZNPNode_ZPP_CallbackSet = _loc5_.var_73;
         while(_loc7_ != null)
         {
            _loc8_ = _loc7_.var_74;
            if(_loc8_.id == _loc3_ && _loc8_.var_179 == _loc4_)
            {
               _loc6_ = _loc8_;
               break;
            }
            _loc7_ = _loc7_.next;
         }
         return _loc6_;
      }
      
      public static function method_898(param1:ZPP_CallbackSet, param2:ZPP_InteractionListener, param3:class_273) : void
      {
         var _loc6_:* = null as ZPP_OptionType;
         var _loc7_:* = null as ZNPList_ZPP_CbType;
         var _loc4_:ZPP_Interactor = param1.int1;
         var _loc5_:ZPP_Interactor = param1.int2;
         _loc6_ = param2.options1;
         _loc7_ = _loc4_.name_10;
         _loc6_;
         if(!!ZPP_OptionType.method_113(_loc7_,_loc6_.name_18) && !ZPP_OptionType.method_113(_loc7_,_loc6_.name_22) && (!!ZPP_OptionType.method_113(_loc7_,_loc6_.name_18) && !ZPP_OptionType.method_113(_loc7_,_loc6_.name_22)))
         {
            param3.int1 = _loc4_;
            param3.int2 = _loc5_;
         }
         else
         {
            param3.int1 = _loc5_;
            param3.int2 = _loc4_;
         }
      }
      
      public final function wrap_cbTypes_subber(param1:class_250) : void
      {
         var _loc3_:* = null as ZPP_Space;
         var _loc2_:ZPP_CbType = param1.zpp_inner;
         if(name_10.has(_loc2_))
         {
            if(var_160 != null)
            {
               if(var_160.body == null)
               {
                  _loc3_ = null;
               }
               else
               {
                  _loc3_ = var_160.body.space;
               }
            }
            else if(var_182 != null)
            {
               _loc3_ = var_182.space;
            }
            else
            {
               _loc3_ = var_207.space;
            }
            if(_loc3_ != null)
            {
               dealloc_cbSet();
               _loc2_.name_26.remove(this);
            }
            name_10.remove(_loc2_);
            if(_loc3_ != null)
            {
               alloc_cbSet();
               method_106();
            }
         }
      }
      
      public final function wrap_cbTypes_adder(param1:class_250) : Boolean
      {
         method_175(param1.zpp_inner);
         return false;
      }
      
      public final function method_106() : void
      {
         var _loc1_:* = null as ZPP_Body;
         if(var_160 != null)
         {
            _loc1_ = var_160.body;
            if(_loc1_ != null && _loc1_.space != null)
            {
               _loc1_.space.method_498(_loc1_);
            }
         }
         else if(var_182 != null)
         {
            if(var_182.space != null)
            {
               var_182.space.method_498(var_182);
            }
         }
         else if(var_207.space != null)
         {
            var_207.space.method_375(var_207);
         }
      }
      
      public final function method_236() : void
      {
         var_251 = ZPP_CbTypeList.method_65(name_10);
         var_251.zpp_inner.var_130 = wrap_cbTypes_adder;
         var_251.zpp_inner.var_110 = wrap_cbTypes_subber;
         var_251.zpp_inner.var_126 = true;
      }
      
      public final function method_362(param1:ZPP_InteractionGroup) : void
      {
         var _loc2_:* = false;
         var _loc3_:int = 0;
         if(group != param1)
         {
            _loc2_ = (var_160 != null?var_160.body == null?null:var_160.body.space:var_182 != null?var_182.space:var_207.space) != null;
            if(!!_loc2_ && group != null)
            {
               _loc3_ = -1;
               group.name_26.remove(this);
            }
            group = param1;
            if(!!_loc2_ && param1 != null)
            {
               param1.name_26.add(this);
            }
            if(_loc2_)
            {
               if(var_160 != null)
               {
                  var_160.body.method_106();
               }
               else if(var_182 != null)
               {
                  var_182.method_106();
               }
               else
               {
                  var_207.method_106();
               }
            }
         }
      }
      
      public final function method_175(param1:ZPP_CbType) : void
      {
         var _loc2_:* = null as ZPP_Space;
         var _loc3_:* = null as ZNPNode_ZPP_CbType;
         var _loc4_:* = null as ZNPNode_ZPP_CbType;
         var _loc5_:* = null as ZPP_CbType;
         var _loc6_:* = null as ZNPList_ZPP_CbType;
         var _loc7_:* = null as ZNPNode_ZPP_CbType;
         var _loc8_:Boolean = false;
         if(!name_10.has(param1))
         {
            if(var_160 != null)
            {
               if(var_160.body == null)
               {
                  _loc2_ = null;
               }
               else
               {
                  _loc2_ = var_160.body.space;
               }
            }
            else if(var_182 != null)
            {
               _loc2_ = var_182.space;
            }
            else
            {
               _loc2_ = var_207.space;
            }
            if(_loc2_ != null)
            {
               dealloc_cbSet();
               param1.name_26.add(this);
            }
            _loc3_ = null;
            _loc4_ = name_10.var_73;
            while(_loc4_ != null)
            {
               _loc5_ = _loc4_.var_74;
               if(param1.id < _loc5_.id)
               {
                  break;
               }
               _loc3_ = _loc4_;
               _loc4_ = _loc4_.next;
            }
            _loc6_ = name_10;
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
            _loc7_.var_74 = param1;
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
            if(_loc2_ != null)
            {
               alloc_cbSet();
               method_106();
            }
         }
      }
      
      public final function method_112(param1:String) : void
      {
         if(var_182 != null)
         {
            null;
         }
         else if(var_160 != null)
         {
            var_160;
            ZPP_Shape.method_586(param1);
         }
         else
         {
            var_207;
            ZPP_Compound.method_633(param1);
         }
      }
      
      public final function dealloc_cbSet() : void
      {
         var _loc1_:* = null as ZPP_Space;
         var _loc2_:* = 0;
         var _loc3_:* = null as ZPP_CbSet;
         var _loc4_:* = null as ZPP_CbType;
         if(var_160 != null)
         {
            if(var_160.body == null)
            {
               _loc1_ = null;
            }
            else
            {
               _loc1_ = var_160.body.space;
            }
         }
         else if(var_182 != null)
         {
            _loc1_ = var_182.space;
         }
         else
         {
            _loc1_ = var_207.space;
         }
         if(var_134 != null)
         {
            var_134.name_26.remove(this);
            _loc1_.method_251(this);
            _loc2_ = var_134.count - 1;
            var_134.count = _loc2_;
            if(_loc2_ == 0)
            {
               _loc1_.var_148.remove(var_134);
               _loc3_ = var_134;
               _loc3_.name_15.clear();
               _loc3_.var_145 = true;
               _loc3_.var_293.clear();
               _loc3_.var_453 = true;
               _loc3_.var_283.clear();
               _loc3_.var_455 = true;
               while(_loc3_.name_10.var_73 != null)
               {
                  _loc4_ = _loc3_.name_10.method_105();
                  _loc4_.var_148.remove(_loc3_);
               }
               null;
               _loc3_.next = ZPP_CbSet.var_72;
               ZPP_CbSet.var_72 = _loc3_;
            }
            var_134 = null;
         }
      }
      
      public final function method_184(param1:Interactor) : void
      {
         var _loc3_:* = null as class_216;
         var _loc5_:* = null as class_250;
         var _loc6_:int = 0;
         param1.var_150.group = group;
         var _loc4_:Interactor = var_307;
         if(_loc4_.var_150.var_251 == null)
         {
            _loc4_.var_150.method_236();
         }
         _loc3_ = _loc4_.var_150.var_251;
         _loc3_.zpp_inner.method_104();
         var _loc2_:class_264 = class_264.method_65(_loc3_);
         while(true)
         {
            _loc2_.zpp_inner.zpp_inner.method_104();
            _loc3_ = _loc2_.zpp_inner;
            _loc3_.zpp_inner.method_104();
            if(_loc3_.zpp_inner.var_86)
            {
               _loc3_.zpp_inner.var_86 = false;
               _loc3_.zpp_inner.var_89 = _loc3_.zpp_inner.name_4.length;
            }
            _loc6_ = _loc3_.zpp_inner.var_89;
            _loc2_.var_98 = true;
            if(_loc2_.var_90 < _loc6_)
            {
               §§push(true);
            }
            else
            {
               _loc2_.var_106 = class_264.var_72;
               class_264.var_72 = _loc2_;
               _loc2_.zpp_inner = null;
            }
            _loc2_.var_98 = false;
            _loc6_ = _loc2_.var_90;
            _loc2_.var_90 = _loc2_.var_90 + 1;
            _loc5_ = _loc2_.zpp_inner.at(_loc6_);
            if(param1.var_150.var_251 == null)
            {
               param1.var_150.method_236();
            }
            _loc3_ = param1.var_150.var_251;
            if(_loc3_.zpp_inner.var_111)
            {
               _loc3_.push(_loc5_);
            }
            else
            {
               _loc3_.unshift(_loc5_);
            }
         }
      }
      
      public final function alloc_cbSet() : void
      {
         var _loc1_:* = null as ZPP_Space;
         if(var_160 != null)
         {
            if(var_160.body == null)
            {
               _loc1_ = null;
            }
            else
            {
               _loc1_ = var_160.body.space;
            }
         }
         else if(var_182 != null)
         {
            _loc1_ = var_182.space;
         }
         else
         {
            _loc1_ = var_207.space;
         }
         var _loc2_:ZPP_CbSet = _loc1_.var_148.method_65(name_10);
         var_134 = _loc2_;
         if(_loc2_ != null)
         {
            var_134.count = var_134.count + 1;
            var_134.name_26.add(this);
            var_134.validate();
            _loc1_.method_242(this);
         }
      }
      
      public final function method_197() : void
      {
         var _loc1_:int = 0;
         var _loc3_:* = null as ZPP_CbType;
         if(group != null)
         {
            _loc1_ = -1;
            group.name_26.remove(this);
         }
         var _loc2_:ZNPNode_ZPP_CbType = name_10.var_73;
         while(_loc2_ != null)
         {
            _loc3_ = _loc2_.var_74;
            _loc3_.name_26.remove(this);
            _loc2_ = _loc2_.next;
         }
         dealloc_cbSet();
      }
      
      public final function method_252() : void
      {
         var _loc2_:* = null as ZPP_CbType;
         if(group != null)
         {
            group.name_26.add(this);
         }
         var _loc1_:ZNPNode_ZPP_CbType = name_10.var_73;
         while(_loc1_ != null)
         {
            _loc2_ = _loc1_.var_74;
            _loc2_.name_26.add(this);
            _loc1_ = _loc1_.next;
         }
         alloc_cbSet();
      }
   }
}
