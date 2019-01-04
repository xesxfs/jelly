package zpp_nape.phys
{
   import nape.constraint.Constraint;
   import nape.constraint.class_218;
   import package_29.Body;
   import package_29.Compound;
   import package_29.class_205;
   import package_29.class_235;
   import zpp_nape.constraint.ZPP_Constraint;
   import zpp_nape.constraint.class_286;
   import zpp_nape.space.ZPP_Space;
   import zpp_nape.util.ZNPNode_ZPP_Body;
   import zpp_nape.util.ZNPNode_ZPP_Compound;
   import zpp_nape.util.ZNPNode_ZPP_Constraint;
   import zpp_nape.util.ZPP_BodyList;
   import zpp_nape.util.ZPP_CompoundList;
   import zpp_nape.util.ZPP_ConstraintList;
   import zpp_nape.util.class_287;
   import zpp_nape.util.class_291;
   import zpp_nape.util.class_308;
   
   public final class ZPP_Compound extends ZPP_Interactor
   {
       
      
      public var var_185:class_218;
      
      public var var_241:class_235;
      
      public var var_269:class_205;
      
      public var space:ZPP_Space;
      
      public var outer:Compound;
      
      public var depth:int;
      
      public var name_19:class_287;
      
      public var name_27:class_308;
      
      public var compound:ZPP_Compound;
      
      public var name_30:class_291;
      
      public function ZPP_Compound()
      {
         space = null;
         compound = null;
         depth = 0;
         var_241 = null;
         var_185 = null;
         var_269 = null;
         name_27 = null;
         name_19 = null;
         name_30 = null;
         outer = null;
         super();
         var_207 = this;
         depth = 1;
         name_30 = new class_291();
         var_269 = ZPP_BodyList.method_65(name_30);
         var_269.zpp_inner.var_130 = bodies_adder;
         var_269.zpp_inner.var_110 = bodies_subber;
         name_19 = new class_287();
         var_185 = ZPP_ConstraintList.method_65(name_19);
         var_185.zpp_inner.var_130 = constraints_adder;
         var_185.zpp_inner.var_110 = constraints_subber;
         name_27 = new class_308();
         var_241 = ZPP_CompoundList.method_65(name_27);
         var_241.zpp_inner.var_130 = compounds_adder;
         var_241.zpp_inner.var_110 = compounds_subber;
      }
      
      public static function method_633(param1:String) : void
      {
      }
      
      public final function method_120() : void
      {
         method_197();
      }
      
      public final function copy(param1:Array = undefined, param2:Array = undefined) : Compound
      {
         var _loc6_:* = null as ZPP_Compound;
         var _loc7_:* = null as Compound;
         var _loc8_:* = null as class_235;
         var _loc10_:* = null as ZPP_Body;
         var _loc11_:* = null as Body;
         var _loc12_:* = null as class_205;
         var _loc14_:* = null as ZPP_Constraint;
         var _loc15_:* = null as Constraint;
         var _loc16_:* = null as class_218;
         var _loc17_:* = null as class_286;
         var _loc18_:int = 0;
         var _loc19_:* = null as class_286;
         var _loc3_:* = param1 == null;
         if(param1 == null)
         {
            param1 = [];
         }
         if(param2 == null)
         {
            param2 = [];
         }
         var _loc4_:Compound = new Compound();
         var _loc5_:ZNPNode_ZPP_Compound = name_27.var_73;
         while(_loc5_ != null)
         {
            _loc6_ = _loc5_.var_74;
            _loc7_ = _loc6_.copy(param1,param2);
            _loc7_.zpp_inner.method_112(class_2.method_14(-1820302568));
            if((_loc7_.zpp_inner.compound == null?null:_loc7_.zpp_inner.compound.outer) != _loc4_)
            {
               if(_loc4_ != null)
               {
                  _loc8_ = _loc4_.zpp_inner.var_241;
                  if(_loc8_.zpp_inner.var_111)
                  {
                     _loc8_.push(_loc7_);
                  }
                  else
                  {
                     _loc8_.unshift(_loc7_);
                  }
               }
            }
            if(_loc7_.zpp_inner.compound == null)
            {
               null;
            }
            else
            {
               _loc7_.zpp_inner.compound.outer;
            }
            _loc5_ = _loc5_.next;
         }
         var _loc9_:ZNPNode_ZPP_Body = name_30.var_73;
         while(_loc9_ != null)
         {
            _loc10_ = _loc9_.var_74;
            _loc11_ = _loc10_.outer.copy();
            param1.push(class_286.method_638(_loc10_.id,_loc11_));
            if((_loc11_.zpp_inner.compound == null?null:_loc11_.zpp_inner.compound.outer) != _loc4_)
            {
               if(_loc4_ != null)
               {
                  _loc12_ = _loc4_.zpp_inner.var_269;
                  if(_loc12_.zpp_inner.var_111)
                  {
                     _loc12_.push(_loc11_);
                  }
                  else
                  {
                     _loc12_.unshift(_loc11_);
                  }
               }
            }
            if(_loc11_.zpp_inner.compound == null)
            {
               null;
            }
            else
            {
               _loc11_.zpp_inner.compound.outer;
            }
            _loc9_ = _loc9_.next;
         }
         var _loc13_:ZNPNode_ZPP_Constraint = name_19.var_73;
         while(_loc13_ != null)
         {
            _loc14_ = _loc13_.var_74;
            _loc15_ = _loc14_.copy(param1,param2);
            if((_loc15_.zpp_inner.compound == null?null:_loc15_.zpp_inner.compound.outer) != _loc4_)
            {
               if(_loc4_ != null)
               {
                  _loc16_ = _loc4_.zpp_inner.var_185;
                  if(_loc16_.zpp_inner.var_111)
                  {
                     _loc16_.push(_loc15_);
                  }
                  else
                  {
                     _loc16_.unshift(_loc15_);
                  }
               }
            }
            if(_loc15_.zpp_inner.compound == null)
            {
               null;
            }
            else
            {
               _loc15_.zpp_inner.compound.outer;
            }
            _loc13_ = _loc13_.next;
         }
         if(_loc3_)
         {
            while(int(param2.length) > 0)
            {
               _loc17_ = param2.pop();
               _loc18_ = 0;
               while(_loc18_ < int(param1.length))
               {
                  _loc19_ = param1[_loc18_];
                  _loc18_++;
                  if(_loc19_.id == _loc17_.id)
                  {
                     _loc17_.var_923(_loc19_.var_781);
                     break;
                  }
               }
            }
         }
         method_184(_loc4_);
         return _loc4_;
      }
      
      public final function constraints_subber(param1:Constraint) : void
      {
         param1.zpp_inner.compound = null;
         if(space != null)
         {
            space.method_300(param1.zpp_inner);
         }
      }
      
      public final function constraints_adder(param1:Constraint) : Boolean
      {
         if(param1.zpp_inner.compound != this)
         {
            if(param1.zpp_inner.compound != null)
            {
               param1.zpp_inner.compound.var_185.remove(param1);
            }
            else if(param1.zpp_inner.space != null)
            {
               param1.zpp_inner.space.var_185.remove(param1);
            }
            param1.zpp_inner.compound = this;
            if(space != null)
            {
               space.method_303(param1.zpp_inner);
            }
            return true;
         }
         return false;
      }
      
      public final function compounds_subber(param1:Compound) : void
      {
         param1.zpp_inner.compound = null;
         param1.zpp_inner.depth = 1;
         if(space != null)
         {
            space.method_304(param1.zpp_inner);
         }
      }
      
      public final function compounds_adder(param1:Compound) : Boolean
      {
         if(param1.zpp_inner.compound != this)
         {
            if(param1.zpp_inner.compound != null)
            {
               param1.zpp_inner.compound.var_241.remove(param1);
            }
            else if(param1.zpp_inner.space != null)
            {
               param1.zpp_inner.space.var_241.remove(param1);
            }
            param1.zpp_inner.compound = this;
            param1.zpp_inner.depth = depth + 1;
            if(space != null)
            {
               space.method_276(param1.zpp_inner);
            }
            return true;
         }
         return false;
      }
      
      public final function method_505() : void
      {
         var _loc1_:* = null as ZPP_Body;
         var _loc2_:* = null as ZPP_Compound;
         var _loc3_:* = null as ZPP_Constraint;
         var _loc4_:* = null as ZPP_Compound;
         if(space != null)
         {
            method_197();
            space.method_251(this);
         }
         if(compound != null)
         {
            compound.name_27.remove(this);
         }
         else if(space != null)
         {
            space.name_27.remove(this);
         }
         while(name_30.var_73 != null)
         {
            _loc1_ = name_30.method_105();
            _loc2_ = compound;
            _loc1_.compound = _loc2_;
            if(_loc2_ != null)
            {
               compound.name_30.add(_loc1_);
            }
            else if(space != null)
            {
               space.name_30.add(_loc1_);
            }
            if(space != null)
            {
               space.method_242(_loc1_);
            }
         }
         while(name_19.var_73 != null)
         {
            _loc3_ = name_19.method_105();
            _loc2_ = compound;
            _loc3_.compound = _loc2_;
            if(_loc2_ != null)
            {
               compound.name_19.add(_loc3_);
            }
            else if(space != null)
            {
               space.name_19.add(_loc3_);
            }
         }
         while(name_27.var_73 != null)
         {
            _loc2_ = name_27.method_105();
            _loc4_ = compound;
            _loc2_.compound = _loc4_;
            if(_loc4_ != null)
            {
               compound.name_27.add(_loc2_);
            }
            else if(space != null)
            {
               space.name_27.add(_loc2_);
            }
            if(space != null)
            {
               space.method_242(_loc2_);
            }
         }
         compound = null;
         space = null;
      }
      
      public final function bodies_subber(param1:Body) : void
      {
         param1.zpp_inner.compound = null;
         if(space != null)
         {
            space.method_281(param1.zpp_inner);
         }
      }
      
      public final function bodies_adder(param1:Body) : Boolean
      {
         if(param1.zpp_inner.compound != this)
         {
            if(param1.zpp_inner.compound != null)
            {
               param1.zpp_inner.compound.var_269.remove(param1);
            }
            else if(param1.zpp_inner.space != null)
            {
               param1.zpp_inner.space.var_269.remove(param1);
            }
            param1.zpp_inner.compound = this;
            if(space != null)
            {
               space.method_283(param1.zpp_inner);
            }
            return true;
         }
         return false;
      }
      
      public final function method_121() : void
      {
         method_252();
      }
   }
}
