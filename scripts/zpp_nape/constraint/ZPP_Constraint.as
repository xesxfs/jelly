package zpp_nape.constraint
{
   import nape.constraint.Constraint;
   import package_33.Debug;
   import package_34.class_216;
   import package_34.class_250;
   import package_34.class_264;
   import package_36.class_284;
   import zpp_nape.callbacks.ZPP_CbSet;
   import zpp_nape.callbacks.ZPP_CbType;
   import zpp_nape.phys.ZPP_Body;
   import zpp_nape.phys.ZPP_Compound;
   import zpp_nape.space.ZPP_Component;
   import zpp_nape.space.ZPP_Space;
   import zpp_nape.util.ZNPList_ZPP_CbType;
   import zpp_nape.util.ZNPNode_ZPP_CbType;
   import zpp_nape.util.ZPP_CbTypeList;
   
   public class ZPP_Constraint
   {
       
      
      public var var_251:class_216;
      
      public var name_21;
      
      public var name_45:Boolean;
      
      public var space:ZPP_Space;
      
      public var name_65:Boolean;
      
      public var var_197:Number;
      
      public var outer:Constraint;
      
      public var name_61:Number;
      
      public var name_50:Number;
      
      public var name_36:Boolean;
      
      public var id:int;
      
      public var name_56:Number;
      
      public var name_57:Number;
      
      public var compound:ZPP_Compound;
      
      public var var_112:ZPP_Component;
      
      public var name_10:ZNPList_ZPP_CbType;
      
      public var var_134:ZPP_CbSet;
      
      public var name_62:Boolean;
      
      public var name_60:Boolean;
      
      public var active:Boolean;
      
      public var var_876:Boolean;
      
      public function ZPP_Constraint()
      {
         var_197 = 0;
         var_251 = null;
         var_134 = null;
         name_10 = null;
         var_876 = false;
         name_36 = false;
         var_112 = null;
         name_65 = false;
         name_60 = false;
         name_62 = false;
         name_50 = 0;
         name_61 = 0;
         name_57 = 0;
         name_56 = 0;
         name_45 = false;
         active = false;
         space = null;
         compound = null;
         name_21 = null;
         id = 0;
         outer = null;
         var_876 = false;
         id = int(class_284.Constraint());
         name_45 = true;
         active = true;
         name_36 = false;
         name_56 = 10;
         name_57 = 1;
         name_61 = 1.79e308;
         name_50 = 1.79e308;
         name_62 = false;
         name_65 = true;
         var_197 = -1;
         name_10 = new ZNPList_ZPP_CbType();
      }
      
      public static function method_112(param1:String) : void
      {
      }
      
      public static function clear() : void
      {
      }
      
      public static function method_365() : void
      {
      }
      
      public final function wrap_cbTypes_subber(param1:class_250) : void
      {
         var _loc2_:ZPP_CbType = param1.zpp_inner;
         if(name_10.has(_loc2_))
         {
            if(space != null)
            {
               dealloc_cbSet();
               _loc2_.name_19.remove(this);
            }
            name_10.remove(_loc2_);
            if(space != null)
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
      
      public function warmStart() : void
      {
      }
      
      public function method_508() : void
      {
      }
      
      public final function method_106() : void
      {
         if(space != null)
         {
            space.method_165(this);
         }
      }
      
      public function validate() : void
      {
      }
      
      public final function method_236() : void
      {
         var_251 = ZPP_CbTypeList.method_65(name_10);
         var_251.zpp_inner.var_130 = wrap_cbTypes_adder;
         var_251.zpp_inner.var_110 = wrap_cbTypes_subber;
         var_251.zpp_inner.var_126 = true;
      }
      
      public final function method_120() : void
      {
         var _loc2_:* = null as ZPP_CbType;
         if(active)
         {
            inactiveOrOutSpace();
         }
         method_372();
         var _loc1_:ZNPNode_ZPP_CbType = name_10.var_73;
         while(_loc1_ != null)
         {
            _loc2_ = _loc1_.var_74;
            _loc2_.name_19.remove(this);
            _loc1_ = _loc1_.next;
         }
      }
      
      public function method_544(param1:Number) : Boolean
      {
         return false;
      }
      
      public function method_312(param1:int, param2:int) : Boolean
      {
         return false;
      }
      
      public final function method_175(param1:ZPP_CbType) : void
      {
         var _loc2_:* = null as ZNPNode_ZPP_CbType;
         var _loc3_:* = null as ZNPNode_ZPP_CbType;
         var _loc4_:* = null as ZPP_CbType;
         var _loc5_:* = null as ZNPList_ZPP_CbType;
         var _loc6_:* = null as ZNPNode_ZPP_CbType;
         var _loc7_:Boolean = false;
         if(!name_10.has(param1))
         {
            if(space != null)
            {
               dealloc_cbSet();
               param1.name_19.add(this);
            }
            _loc2_ = null;
            _loc3_ = name_10.var_73;
            while(_loc3_ != null)
            {
               _loc4_ = _loc3_.var_74;
               if(param1.id < _loc4_.id)
               {
                  break;
               }
               _loc2_ = _loc3_;
               _loc3_ = _loc3_.next;
            }
            _loc5_ = name_10;
            if(ZNPNode_ZPP_CbType.var_72 == null)
            {
               _loc6_ = new ZNPNode_ZPP_CbType();
            }
            else
            {
               _loc6_ = ZNPNode_ZPP_CbType.var_72;
               ZNPNode_ZPP_CbType.var_72 = _loc6_.next;
               _loc6_.next = null;
            }
            null;
            _loc6_.var_74 = param1;
            _loc3_ = _loc6_;
            if(_loc2_ == null)
            {
               _loc3_.next = _loc5_.var_73;
               _loc5_.var_73 = _loc3_;
            }
            else
            {
               _loc3_.next = _loc2_.next;
               _loc2_.next = _loc3_;
            }
            _loc7_ = true;
            _loc5_.name_2 = _loc7_;
            _loc5_.var_76 = _loc7_;
            _loc5_.length = _loc5_.length + 1;
            _loc3_;
            if(space != null)
            {
               alloc_cbSet();
               method_106();
            }
         }
      }
      
      public final function inactiveOrOutSpace() : void
      {
         dealloc_cbSet();
         var _loc1_:ZPP_Component = var_112;
         _loc1_.body = null;
         _loc1_.name_44 = null;
         null;
         _loc1_.next = ZPP_Component.var_72;
         ZPP_Component.var_72 = _loc1_;
         var_112 = null;
      }
      
      public function method_372() : void
      {
      }
      
      public function method_438() : void
      {
      }
      
      public function draw(param1:Debug) : void
      {
      }
      
      public final function dealloc_cbSet() : void
      {
         var _loc1_:* = 0;
         var _loc2_:* = null as ZPP_CbSet;
         var _loc3_:* = null as ZPP_CbType;
         if(var_134 != null)
         {
            var_134.name_19.remove(this);
            _loc1_ = var_134.count - 1;
            var_134.count = _loc1_;
            if(_loc1_ == 0)
            {
               space.var_148.remove(var_134);
               _loc2_ = var_134;
               _loc2_.name_15.clear();
               _loc2_.var_145 = true;
               _loc2_.var_293.clear();
               _loc2_.var_453 = true;
               _loc2_.var_283.clear();
               _loc2_.var_455 = true;
               while(_loc2_.name_10.var_73 != null)
               {
                  _loc3_ = _loc2_.name_10.method_105();
                  _loc3_.var_148.remove(_loc2_);
               }
               null;
               _loc2_.next = ZPP_CbSet.var_72;
               ZPP_CbSet.var_72 = _loc2_;
            }
            var_134 = null;
         }
      }
      
      public final function deactivate() : void
      {
         if(space != null)
         {
            inactiveOrOutSpace();
         }
      }
      
      public final function method_184(param1:Constraint) : void
      {
         var _loc4_:* = null as class_216;
         var _loc5_:* = null as class_250;
         var _loc6_:int = 0;
         var _loc2_:Constraint = outer;
         if(_loc2_.zpp_inner.var_251 == null)
         {
            _loc2_.zpp_inner.method_236();
         }
         _loc4_ = _loc2_.zpp_inner.var_251;
         _loc4_.zpp_inner.method_104();
         var _loc3_:class_264 = class_264.method_65(_loc4_);
         while(true)
         {
            _loc3_.zpp_inner.zpp_inner.method_104();
            _loc4_ = _loc3_.zpp_inner;
            _loc4_.zpp_inner.method_104();
            if(_loc4_.zpp_inner.var_86)
            {
               _loc4_.zpp_inner.var_86 = false;
               _loc4_.zpp_inner.var_89 = _loc4_.zpp_inner.name_4.length;
            }
            _loc6_ = _loc4_.zpp_inner.var_89;
            _loc3_.var_98 = true;
            if(_loc3_.var_90 < _loc6_)
            {
               §§push(true);
            }
            else
            {
               _loc3_.var_106 = class_264.var_72;
               class_264.var_72 = _loc3_;
               _loc3_.zpp_inner = null;
            }
            _loc3_.var_98 = false;
            _loc6_ = _loc3_.var_90;
            _loc3_.var_90 = _loc3_.var_90 + 1;
            _loc5_ = _loc3_.zpp_inner.at(_loc6_);
            if(param1.zpp_inner.var_251 == null)
            {
               param1.zpp_inner.method_236();
            }
            _loc4_ = param1.zpp_inner.var_251;
            if(_loc4_.zpp_inner.var_111)
            {
               _loc4_.push(_loc5_);
            }
            else
            {
               _loc4_.unshift(_loc5_);
            }
         }
      }
      
      public function copy(param1:Array = undefined, param2:Array = undefined) : Constraint
      {
         return null;
      }
      
      public function method_239() : void
      {
      }
      
      public function method_441() : Boolean
      {
         return false;
      }
      
      public function method_499() : Boolean
      {
         return false;
      }
      
      public final function alloc_cbSet() : void
      {
         var _loc1_:ZPP_CbSet = space.var_148.method_65(name_10);
         var_134 = _loc1_;
         if(_loc1_ != null)
         {
            var_134.count = var_134.count + 1;
            var_134.name_19.add(this);
         }
      }
      
      public final function method_121() : void
      {
         var _loc2_:* = null as ZPP_CbType;
         if(active)
         {
            activeInSpace();
         }
         method_411();
         var _loc1_:ZNPNode_ZPP_CbType = name_10.var_73;
         while(_loc1_ != null)
         {
            _loc2_ = _loc1_.var_74;
            _loc2_.name_19.add(this);
            _loc1_ = _loc1_.next;
         }
      }
      
      public final function activeInSpace() : void
      {
         alloc_cbSet();
         if(ZPP_Component.var_72 == null)
         {
            var_112 = new ZPP_Component();
         }
         else
         {
            var_112 = ZPP_Component.var_72;
            ZPP_Component.var_72 = var_112.next;
            var_112.next = null;
         }
         null;
         var_112.name_75 = false;
         var_112.name_44 = this;
      }
      
      public function method_411() : void
      {
      }
      
      public final function activate() : void
      {
         if(space != null)
         {
            activeInSpace();
         }
      }
   }
}
