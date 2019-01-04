package package_29
{
   import nape.constraint.Constraint;
   import nape.constraint.class_218;
   import nape.constraint.class_234;
   import nape.geom.Vec2;
   import nape.geom.Vec3;
   import nape.geom.class_237;
   import nape.geom.class_242;
   import package_26.CollisionArbiter;
   import package_26.FluidArbiter;
   import package_26.class_222;
   import package_26.class_227;
   import package_26.class_251;
   import package_26.class_252;
   import package_31.class_197;
   import package_32.Shape;
   import package_32.class_230;
   import package_34.class_221;
   import zpp_nape.callbacks.ZPP_CbType;
   import zpp_nape.constraint.ZPP_Constraint;
   import zpp_nape.dynamics.ZPP_Arbiter;
   import zpp_nape.geom.ZPP_Vec2;
   import zpp_nape.geom.ZPP_Vec3;
   import zpp_nape.phys.ZPP_Body;
   import zpp_nape.phys.ZPP_Compound;
   import zpp_nape.phys.class_265;
   import zpp_nape.shape.ZPP_Shape;
   import zpp_nape.space.ZPP_Space;
   import zpp_nape.util.ZNPNode_ZPP_Constraint;
   import zpp_nape.util.ZNPNode_ZPP_Shape;
   import zpp_nape.util.ZPP_ArbiterList;
   import zpp_nape.util.ZPP_ConstraintList;
   import zpp_nape.util.class_219;
   import zpp_nape.util.class_223;
   import zpp_nape.util.class_254;
   
   public final class Body extends Interactor
   {
       
      
      public var zpp_inner:ZPP_Body;
      
      public var var_323:Boolean;
      
      public function Body(param1:class_198 = undefined, param2:Vec2 = undefined)
      {
         var _loc3_:* = null as ZPP_Vec2;
         var _loc4_:* = null as class_198;
         var _loc5_:int = 0;
         var _loc6_:* = null as Vec2;
         var _loc7_:* = null as ZPP_Vec2;
         var_323 = true;
         zpp_inner = null;
         super();
         zpp_inner = new ZPP_Body();
         zpp_inner.outer = this;
         zpp_inner.var_307 = this;
         var_150 = zpp_inner;
         if(param2 != null)
         {
            _loc3_ = param2.zpp_inner;
            if(_loc3_._validate != null)
            {
               _loc3_._validate();
            }
            zpp_inner.var_95 = param2.zpp_inner.x;
            _loc3_ = param2.zpp_inner;
            if(_loc3_._validate != null)
            {
               _loc3_._validate();
            }
            zpp_inner.var_96 = param2.zpp_inner.y;
         }
         else
         {
            zpp_inner.var_95 = 0;
            zpp_inner.var_96 = 0;
         }
         if(param1 == null)
         {
            if(class_223.var_357 == null)
            {
               class_223.var_87 = true;
               class_223.var_357 = new class_198();
               class_223.var_87 = false;
            }
            _loc4_ = class_223.var_357;
         }
         else
         {
            _loc4_ = param1;
         }
         zpp_inner.method_112(class_2.method_14(-1820302654));
         if(ZPP_Body.var_406[zpp_inner.type] != _loc4_)
         {
            §§push(_loc4_);
            if(class_223.var_357 == null)
            {
               class_223.var_87 = true;
               class_223.var_357 = new class_198();
               class_223.var_87 = false;
            }
            if(§§pop() == class_223.var_357)
            {
               _loc5_ = class_223.var_188;
            }
            else
            {
               §§push(_loc4_);
               if(class_223.var_404 == null)
               {
                  class_223.var_87 = true;
                  class_223.var_404 = new class_198();
                  class_223.var_87 = false;
               }
               if(§§pop() == class_223.var_404)
               {
                  _loc5_ = class_223.var_216;
               }
               else
               {
                  _loc5_ = class_223.var_240;
               }
            }
            if(_loc5_ == class_223.var_240 && zpp_inner.space != null)
            {
               zpp_inner.var_104 = 0;
               zpp_inner.var_105 = 0;
               zpp_inner.var_94 = 0;
            }
            zpp_inner.method_533();
            if(zpp_inner.space != null)
            {
               zpp_inner.space.method_474(zpp_inner,_loc5_);
            }
            else
            {
               zpp_inner.type = _loc5_;
            }
         }
         ZPP_Body.var_406[zpp_inner.type];
         if(param2 != null)
         {
            if(param2.zpp_inner.name_5)
            {
               _loc3_ = param2.zpp_inner;
               param2.zpp_inner.outer = null;
               param2.zpp_inner = null;
               _loc6_ = param2;
               _loc6_.var_72 = class_219.poolVec2;
               class_219.poolVec2 = _loc6_;
               _loc7_ = _loc3_;
               if(_loc7_.outer != null)
               {
                  _loc7_.outer.zpp_inner = null;
                  _loc7_.outer = null;
               }
               _loc7_.var_103 = null;
               _loc7_._validate = null;
               _loc7_._invalidate = null;
               _loc7_.next = ZPP_Vec2.var_72;
               ZPP_Vec2.var_72 = _loc7_;
            }
            else
            {
               false;
            }
         }
         var_150.method_175(ZPP_CbType.ANY_BODY.zpp_inner);
      }
      
      public final function method_764(param1:Vec2, param2:Boolean = false) : Vec2
      {
         var _loc6_:* = null as ZPP_Vec2;
         var _loc7_:* = null as Vec2;
         var _loc8_:* = null as ZPP_Vec2;
         var _loc9_:Boolean = false;
         var _loc3_:ZPP_Body = zpp_inner;
         if(_loc3_.var_113)
         {
            _loc3_.var_113 = false;
            _loc3_.var_84 = Number(Math.sin(_loc3_.var_93));
            _loc3_.var_83 = Number(Math.cos(_loc3_.var_93));
            null;
         }
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         _loc6_ = param1.zpp_inner;
         if(_loc6_._validate != null)
         {
            _loc6_._validate();
         }
         _loc6_ = param1.zpp_inner;
         §§push(param1.zpp_inner.x * zpp_inner.var_83);
         if(_loc6_._validate != null)
         {
            _loc6_._validate();
         }
         _loc4_ = Number(Number(§§pop() + param1.zpp_inner.y * zpp_inner.var_84));
         _loc6_ = param1.zpp_inner;
         if(_loc6_._validate != null)
         {
            _loc6_._validate();
         }
         _loc6_ = param1.zpp_inner;
         §§push(param1.zpp_inner.y * zpp_inner.var_83);
         if(_loc6_._validate != null)
         {
            _loc6_._validate();
         }
         _loc5_ = Number(§§pop() - param1.zpp_inner.x * zpp_inner.var_84);
         if(param1.zpp_inner.name_5)
         {
            _loc6_ = param1.zpp_inner;
            param1.zpp_inner.outer = null;
            param1.zpp_inner = null;
            _loc7_ = param1;
            _loc7_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc7_;
            _loc8_ = _loc6_;
            if(_loc8_.outer != null)
            {
               _loc8_.outer.zpp_inner = null;
               _loc8_.outer = null;
            }
            _loc8_.var_103 = null;
            _loc8_._validate = null;
            _loc8_._invalidate = null;
            _loc8_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc8_;
         }
         else
         {
            false;
         }
         if(class_219.poolVec2 == null)
         {
            _loc7_ = new Vec2();
         }
         else
         {
            _loc7_ = class_219.poolVec2;
            class_219.poolVec2 = _loc7_.var_72;
            _loc7_.var_72 = null;
         }
         if(_loc7_.zpp_inner == null)
         {
            _loc9_ = false;
            if(ZPP_Vec2.var_72 == null)
            {
               _loc6_ = new ZPP_Vec2();
            }
            else
            {
               _loc6_ = ZPP_Vec2.var_72;
               ZPP_Vec2.var_72 = _loc6_.next;
               _loc6_.next = null;
            }
            _loc6_.name_5 = false;
            _loc6_.var_109 = _loc9_;
            _loc6_.x = _loc4_;
            _loc6_.y = _loc5_;
            _loc7_.zpp_inner = _loc6_;
            _loc7_.zpp_inner.outer = _loc7_;
         }
         else
         {
            _loc6_ = _loc7_.zpp_inner;
            §§push(false);
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            if(_loc7_.zpp_inner.x == _loc4_)
            {
               §§pop();
               _loc6_ = _loc7_.zpp_inner;
               if(_loc6_._validate != null)
               {
                  _loc6_._validate();
               }
               §§push(_loc7_.zpp_inner.y == _loc5_);
            }
            if(!§§pop())
            {
               _loc7_.zpp_inner.x = _loc4_;
               _loc7_.zpp_inner.y = _loc5_;
               _loc6_ = _loc7_.zpp_inner;
               if(_loc6_._invalidate != null)
               {
                  _loc6_._invalidate(_loc6_);
               }
            }
            _loc7_;
         }
         _loc7_.zpp_inner.name_5 = param2;
         return _loc7_;
      }
      
      public final function method_726(param1:Vec2, param2:Boolean = false) : Vec2
      {
         var _loc8_:* = null as ZPP_Vec2;
         var _loc9_:* = null as Vec2;
         var _loc10_:* = null as ZPP_Vec2;
         var _loc11_:Boolean = false;
         var _loc3_:ZPP_Body = zpp_inner;
         if(_loc3_.var_113)
         {
            _loc3_.var_113 = false;
            _loc3_.var_84 = Number(Math.sin(_loc3_.var_93));
            _loc3_.var_83 = Number(Math.cos(_loc3_.var_93));
            null;
         }
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         _loc8_ = param1.zpp_inner;
         if(_loc8_._validate != null)
         {
            _loc8_._validate();
         }
         _loc6_ = Number(param1.zpp_inner.x - zpp_inner.var_95);
         _loc8_ = param1.zpp_inner;
         if(_loc8_._validate != null)
         {
            _loc8_._validate();
         }
         _loc7_ = Number(param1.zpp_inner.y - zpp_inner.var_96);
         _loc4_ = Number(Number(_loc6_ * zpp_inner.var_83 + _loc7_ * zpp_inner.var_84));
         _loc5_ = Number(_loc7_ * zpp_inner.var_83 - _loc6_ * zpp_inner.var_84);
         if(param1.zpp_inner.name_5)
         {
            _loc8_ = param1.zpp_inner;
            param1.zpp_inner.outer = null;
            param1.zpp_inner = null;
            _loc9_ = param1;
            _loc9_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc9_;
            _loc10_ = _loc8_;
            if(_loc10_.outer != null)
            {
               _loc10_.outer.zpp_inner = null;
               _loc10_.outer = null;
            }
            _loc10_.var_103 = null;
            _loc10_._validate = null;
            _loc10_._invalidate = null;
            _loc10_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc10_;
         }
         else
         {
            false;
         }
         if(class_219.poolVec2 == null)
         {
            _loc9_ = new Vec2();
         }
         else
         {
            _loc9_ = class_219.poolVec2;
            class_219.poolVec2 = _loc9_.var_72;
            _loc9_.var_72 = null;
         }
         if(_loc9_.zpp_inner == null)
         {
            _loc11_ = false;
            if(ZPP_Vec2.var_72 == null)
            {
               _loc8_ = new ZPP_Vec2();
            }
            else
            {
               _loc8_ = ZPP_Vec2.var_72;
               ZPP_Vec2.var_72 = _loc8_.next;
               _loc8_.next = null;
            }
            _loc8_.name_5 = false;
            _loc8_.var_109 = _loc11_;
            _loc8_.x = _loc4_;
            _loc8_.y = _loc5_;
            _loc9_.zpp_inner = _loc8_;
            _loc9_.zpp_inner.outer = _loc9_;
         }
         else
         {
            _loc8_ = _loc9_.zpp_inner;
            §§push(false);
            if(_loc8_._validate != null)
            {
               _loc8_._validate();
            }
            if(_loc9_.zpp_inner.x == _loc4_)
            {
               §§pop();
               _loc8_ = _loc9_.zpp_inner;
               if(_loc8_._validate != null)
               {
                  _loc8_._validate();
               }
               §§push(_loc9_.zpp_inner.y == _loc5_);
            }
            if(!§§pop())
            {
               _loc9_.zpp_inner.x = _loc4_;
               _loc9_.zpp_inner.y = _loc5_;
               _loc8_ = _loc9_.zpp_inner;
               if(_loc8_._invalidate != null)
               {
                  _loc8_._invalidate(_loc8_);
               }
            }
            _loc9_;
         }
         _loc9_.zpp_inner.name_5 = param2;
         return _loc9_;
      }
      
      public final function translateShapes(param1:Vec2) : Body
      {
         var _loc4_:* = null as ZPP_Shape;
         var _loc5_:* = null as ZPP_Vec2;
         var _loc6_:* = null as Vec2;
         var _loc7_:* = null as ZPP_Vec2;
         zpp_inner.method_112(class_2.method_14(-1820302643));
         var _loc2_:Boolean = param1.zpp_inner.name_5;
         param1.zpp_inner.name_5 = false;
         var _loc3_:ZNPNode_ZPP_Shape = zpp_inner.shapes.var_73;
         while(_loc3_ != null)
         {
            _loc4_ = _loc3_.var_74;
            _loc4_.outer.translate(param1);
            _loc3_ = _loc3_.next;
         }
         param1.zpp_inner.name_5 = _loc2_;
         if(param1.zpp_inner.name_5)
         {
            _loc5_ = param1.zpp_inner;
            param1.zpp_inner.outer = null;
            param1.zpp_inner = null;
            _loc6_ = param1;
            _loc6_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc6_;
            _loc7_ = _loc5_;
            if(_loc7_.outer != null)
            {
               _loc7_.outer.zpp_inner = null;
               _loc7_.outer = null;
            }
            _loc7_.var_103 = null;
            _loc7_._validate = null;
            _loc7_._invalidate = null;
            _loc7_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc7_;
         }
         else
         {
            false;
         }
         return this;
      }
      
      public final function method_795(param1:class_242) : Body
      {
         var _loc3_:* = null as ZPP_Shape;
         zpp_inner.method_112(class_2.method_14(-1820302624));
         var _loc2_:ZNPNode_ZPP_Shape = zpp_inner.shapes.var_73;
         while(_loc2_ != null)
         {
            _loc3_ = _loc2_.var_74;
            _loc3_.outer.transform(param1);
            _loc2_ = _loc2_.next;
         }
         return this;
      }
      
      public final function method_172(param1:Body = undefined, param2:Boolean = false) : Vec3
      {
         var _loc8_:* = null as class_252;
         var _loc9_:int = 0;
         var _loc10_:* = null as ZPP_Arbiter;
         var _loc11_:* = null as Vec3;
         var _loc12_:int = 0;
         var _loc13_:* = null as ZPP_Vec3;
         var _loc15_:* = null as ZPP_Constraint;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:class_254 = zpp_inner.name_12;
         if(zpp_inner.var_174 == null)
         {
            zpp_inner.var_174 = ZPP_ArbiterList.method_65(zpp_inner.name_12,true);
         }
         var _loc7_:class_251 = zpp_inner.var_174.iterator();
         _loc7_.zpp_inner.zpp_inner.method_104();
         _loc9_ = _loc7_.zpp_inner.method_108();
         _loc7_.var_98 = true;
         if(_loc7_.var_90 < _loc9_)
         {
            §§push(true);
         }
         else
         {
            _loc7_.var_106 = class_251.var_72;
            class_251.var_72 = _loc7_;
            _loc7_.zpp_inner = null;
            §§push(false);
         }
         var _loc14_:ZNPNode_ZPP_Constraint = zpp_inner.name_19.var_73;
         while(_loc14_ != null)
         {
            _loc15_ = _loc14_.var_74;
            if(_loc15_.active)
            {
               _loc11_ = _loc15_.outer.method_262(this);
               _loc9_ = 1;
               _loc12_ = _loc9_;
               _loc13_ = _loc11_.zpp_inner;
               §§push(_loc3_);
               if(_loc13_._validate != null)
               {
                  _loc13_._validate();
               }
               _loc3_ = Number(Number(§§pop() + _loc11_.zpp_inner.x * _loc12_));
               _loc13_ = _loc11_.zpp_inner;
               §§push(_loc4_);
               if(_loc13_._validate != null)
               {
                  _loc13_._validate();
               }
               _loc4_ = Number(Number(§§pop() + _loc11_.zpp_inner.y * _loc12_));
               _loc13_ = _loc11_.zpp_inner;
               §§push(_loc5_);
               if(_loc13_._validate != null)
               {
                  _loc13_._validate();
               }
               _loc5_ = Number(Number(§§pop() + _loc11_.zpp_inner.z * _loc9_));
               _loc11_.dispose();
            }
            _loc14_ = _loc14_.next;
         }
         return Vec3.method_65(_loc3_,_loc4_,_loc5_);
      }
      
      public final function method_798(param1:Body = undefined) : Vec3
      {
         var _loc7_:* = null as class_252;
         var _loc8_:int = 0;
         var _loc9_:* = null as ZPP_Arbiter;
         var _loc10_:* = null as Vec3;
         var _loc11_:* = null as class_252;
         var _loc13_:* = null as ZPP_Vec3;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:class_254 = zpp_inner.name_12;
         if(zpp_inner.var_174 == null)
         {
            zpp_inner.var_174 = ZPP_ArbiterList.method_65(zpp_inner.name_12,true);
         }
         var _loc6_:class_251 = zpp_inner.var_174.iterator();
         _loc6_.zpp_inner.zpp_inner.method_104();
         _loc8_ = _loc6_.zpp_inner.method_108();
         _loc6_.var_98 = true;
         if(_loc6_.var_90 < _loc8_)
         {
            §§push(true);
         }
         else
         {
            _loc6_.var_106 = class_251.var_72;
            class_251.var_72 = _loc6_;
            _loc6_.zpp_inner = null;
            §§push(false);
         }
         return Vec3.method_65(_loc2_,_loc3_,_loc4_);
      }
      
      public final function method_862(param1:Body = undefined, param2:Boolean = false) : Vec3
      {
         var _loc8_:* = null as class_252;
         var _loc9_:int = 0;
         var _loc10_:* = null as ZPP_Arbiter;
         var _loc11_:* = null as Vec3;
         var _loc12_:* = null as class_252;
         var _loc14_:* = null as ZPP_Vec3;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:class_254 = zpp_inner.name_12;
         if(zpp_inner.var_174 == null)
         {
            zpp_inner.var_174 = ZPP_ArbiterList.method_65(zpp_inner.name_12,true);
         }
         var _loc7_:class_251 = zpp_inner.var_174.iterator();
         _loc7_.zpp_inner.zpp_inner.method_104();
         _loc9_ = _loc7_.zpp_inner.method_108();
         _loc7_.var_98 = true;
         if(_loc7_.var_90 < _loc9_)
         {
            §§push(true);
         }
         else
         {
            _loc7_.var_106 = class_251.var_72;
            class_251.var_72 = _loc7_;
            _loc7_.zpp_inner = null;
            §§push(false);
         }
         return Vec3.method_65(_loc3_,_loc4_,_loc5_);
      }
      
      override public function toString() : String
      {
         return (!!zpp_inner.name_29?class_2.method_14(-1820302821):"(" + (zpp_inner.type == class_223.var_188?"dynamic":zpp_inner.type == class_223.var_240?class_2.method_14(-1820302629):"kinematic")) + class_2.method_14(-1820302681) + var_150.id;
      }
      
      public final function method_290(param1:Body = undefined, param2:Boolean = false) : Vec3
      {
         var _loc8_:* = null as class_252;
         var _loc9_:int = 0;
         var _loc10_:* = null as ZPP_Arbiter;
         var _loc11_:* = null as Vec3;
         var _loc12_:* = null as class_252;
         var _loc14_:* = null as ZPP_Vec3;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:class_254 = zpp_inner.name_12;
         if(zpp_inner.var_174 == null)
         {
            zpp_inner.var_174 = ZPP_ArbiterList.method_65(zpp_inner.name_12,true);
         }
         var _loc7_:class_251 = zpp_inner.var_174.iterator();
         _loc7_.zpp_inner.zpp_inner.method_104();
         _loc9_ = _loc7_.zpp_inner.method_108();
         _loc7_.var_98 = true;
         if(_loc7_.var_90 < _loc9_)
         {
            §§push(true);
         }
         else
         {
            _loc7_.var_106 = class_251.var_72;
            class_251.var_72 = _loc7_;
            _loc7_.zpp_inner = null;
            §§push(false);
         }
         return Vec3.method_65(_loc3_,_loc4_,_loc5_);
      }
      
      public function set velocity(param1:Vec2) : Vec2
      {
         var _loc5_:* = null as ZPP_Vec2;
         var _loc7_:* = null as Vec2;
         var _loc8_:* = null as ZPP_Vec2;
         if(zpp_inner.var_303 == null)
         {
            zpp_inner.method_335();
         }
         var _loc2_:Vec2 = zpp_inner.var_303;
         _loc5_ = param1.zpp_inner;
         if(_loc5_._validate != null)
         {
            _loc5_._validate();
         }
         var _loc4_:Number = param1.zpp_inner.x;
         _loc5_ = param1.zpp_inner;
         if(_loc5_._validate != null)
         {
            _loc5_._validate();
         }
         var _loc6_:Number = param1.zpp_inner.y;
         _loc5_ = _loc2_.zpp_inner;
         §§push(false);
         if(_loc5_._validate != null)
         {
            _loc5_._validate();
         }
         if(_loc2_.zpp_inner.x == _loc4_)
         {
            §§pop();
            _loc5_ = _loc2_.zpp_inner;
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            §§push(_loc2_.zpp_inner.y == _loc6_);
         }
         if(!§§pop())
         {
            _loc2_.zpp_inner.x = _loc4_;
            _loc2_.zpp_inner.y = _loc6_;
            _loc5_ = _loc2_.zpp_inner;
            if(_loc5_._invalidate != null)
            {
               _loc5_._invalidate(_loc5_);
            }
         }
         var _loc3_:Vec2 = _loc2_;
         if(param1.zpp_inner.name_5)
         {
            _loc5_ = param1.zpp_inner;
            param1.zpp_inner.outer = null;
            param1.zpp_inner = null;
            _loc7_ = param1;
            _loc7_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc7_;
            _loc8_ = _loc5_;
            if(_loc8_.outer != null)
            {
               _loc8_.outer.zpp_inner = null;
               _loc8_.outer = null;
            }
            _loc8_.var_103 = null;
            _loc8_._validate = null;
            _loc8_._invalidate = null;
            _loc8_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc8_;
         }
         _loc3_;
         if(zpp_inner.var_303 == null)
         {
            zpp_inner.method_335();
         }
         return zpp_inner.var_303;
      }
      
      public function set type(param1:class_198) : class_198
      {
         var _loc2_:int = 0;
         zpp_inner.method_112("Body::type");
         if(ZPP_Body.var_406[zpp_inner.type] != param1)
         {
            §§push(param1);
            if(class_223.var_357 == null)
            {
               class_223.var_87 = true;
               class_223.var_357 = new class_198();
               class_223.var_87 = false;
            }
            if(§§pop() == class_223.var_357)
            {
               _loc2_ = class_223.var_188;
            }
            else
            {
               §§push(param1);
               if(class_223.var_404 == null)
               {
                  class_223.var_87 = true;
                  class_223.var_404 = new class_198();
                  class_223.var_87 = false;
               }
               if(§§pop() == class_223.var_404)
               {
                  _loc2_ = class_223.var_216;
               }
               else
               {
                  _loc2_ = class_223.var_240;
               }
            }
            if(_loc2_ == class_223.var_240 && zpp_inner.space != null)
            {
               zpp_inner.var_104 = 0;
               zpp_inner.var_105 = 0;
               zpp_inner.var_94 = 0;
            }
            zpp_inner.method_533();
            if(zpp_inner.space != null)
            {
               zpp_inner.space.method_474(zpp_inner,_loc2_);
            }
            else
            {
               zpp_inner.type = _loc2_;
            }
         }
         return ZPP_Body.var_406[zpp_inner.type];
      }
      
      public function set name_63(param1:Number) : Number
      {
         if(zpp_inner.name_63 != param1)
         {
            zpp_inner.name_63 = param1;
            zpp_inner.method_106();
         }
         return zpp_inner.name_63;
      }
      
      public function set method_629(param1:Vec2) : Vec2
      {
         var _loc5_:* = null as ZPP_Vec2;
         var _loc7_:* = null as Vec2;
         var _loc8_:* = null as ZPP_Vec2;
         if(zpp_inner.var_313 == null)
         {
            zpp_inner.method_416();
         }
         var _loc2_:Vec2 = zpp_inner.var_313;
         _loc5_ = param1.zpp_inner;
         if(_loc5_._validate != null)
         {
            _loc5_._validate();
         }
         var _loc4_:Number = param1.zpp_inner.x;
         _loc5_ = param1.zpp_inner;
         if(_loc5_._validate != null)
         {
            _loc5_._validate();
         }
         var _loc6_:Number = param1.zpp_inner.y;
         _loc5_ = _loc2_.zpp_inner;
         §§push(false);
         if(_loc5_._validate != null)
         {
            _loc5_._validate();
         }
         if(_loc2_.zpp_inner.x == _loc4_)
         {
            §§pop();
            _loc5_ = _loc2_.zpp_inner;
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            §§push(_loc2_.zpp_inner.y == _loc6_);
         }
         if(!§§pop())
         {
            _loc2_.zpp_inner.x = _loc4_;
            _loc2_.zpp_inner.y = _loc6_;
            _loc5_ = _loc2_.zpp_inner;
            if(_loc5_._invalidate != null)
            {
               _loc5_._invalidate(_loc5_);
            }
         }
         var _loc3_:Vec2 = _loc2_;
         if(param1.zpp_inner.name_5)
         {
            _loc5_ = param1.zpp_inner;
            param1.zpp_inner.outer = null;
            param1.zpp_inner = null;
            _loc7_ = param1;
            _loc7_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc7_;
            _loc8_ = _loc5_;
            if(_loc8_.outer != null)
            {
               _loc8_.outer.zpp_inner = null;
               _loc8_.outer = null;
            }
            _loc8_.var_103 = null;
            _loc8_._validate = null;
            _loc8_._invalidate = null;
            _loc8_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc8_;
         }
         _loc3_;
         if(zpp_inner.var_313 == null)
         {
            zpp_inner.method_416();
         }
         return zpp_inner.var_313;
      }
      
      public function set space(param1:class_197) : class_197
      {
         var _loc2_:* = null as class_205;
         zpp_inner.method_112("Body::space");
         if((zpp_inner.space == null?null:zpp_inner.space.outer) != param1)
         {
            if(param1 != null)
            {
               _loc2_ = param1.zpp_inner.var_269;
               if(_loc2_.zpp_inner.var_111)
               {
                  _loc2_.push(this);
               }
               else
               {
                  _loc2_.unshift(this);
               }
            }
         }
         if(zpp_inner.space == null)
         {
            return null;
         }
         return zpp_inner.space.outer;
      }
      
      public function set rotation(param1:Number) : Number
      {
         var _loc2_:* = null as ZPP_Body;
         var _loc3_:* = null as ZNPNode_ZPP_Shape;
         var _loc4_:* = null as ZPP_Shape;
         zpp_inner.method_112("Body::rotation");
         if(zpp_inner.var_93 != param1)
         {
            zpp_inner.var_93 = param1;
            _loc2_ = zpp_inner;
            _loc2_.var_113 = true;
            _loc3_ = _loc2_.shapes.var_73;
            while(_loc3_ != null)
            {
               _loc4_ = _loc3_.var_74;
               if(_loc4_.type == class_223.var_155)
               {
                  _loc4_.name_6.method_142();
                  _loc4_.name_6.method_141();
               }
               _loc4_.method_139();
               _loc3_ = _loc3_.next;
            }
            _loc2_.var_139 = true;
            zpp_inner.method_106();
         }
         return zpp_inner.var_93;
      }
      
      public function set position(param1:Vec2) : Vec2
      {
         var _loc5_:* = null as ZPP_Vec2;
         var _loc7_:* = null as Vec2;
         var _loc8_:* = null as ZPP_Vec2;
         if(zpp_inner.var_245 == null)
         {
            zpp_inner.method_185();
         }
         var _loc2_:Vec2 = zpp_inner.var_245;
         _loc5_ = param1.zpp_inner;
         if(_loc5_._validate != null)
         {
            _loc5_._validate();
         }
         var _loc4_:Number = param1.zpp_inner.x;
         _loc5_ = param1.zpp_inner;
         if(_loc5_._validate != null)
         {
            _loc5_._validate();
         }
         var _loc6_:Number = param1.zpp_inner.y;
         _loc5_ = _loc2_.zpp_inner;
         §§push(false);
         if(_loc5_._validate != null)
         {
            _loc5_._validate();
         }
         if(_loc2_.zpp_inner.x == _loc4_)
         {
            §§pop();
            _loc5_ = _loc2_.zpp_inner;
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            §§push(_loc2_.zpp_inner.y == _loc6_);
         }
         if(!§§pop())
         {
            _loc2_.zpp_inner.x = _loc4_;
            _loc2_.zpp_inner.y = _loc6_;
            _loc5_ = _loc2_.zpp_inner;
            if(_loc5_._invalidate != null)
            {
               _loc5_._invalidate(_loc5_);
            }
         }
         var _loc3_:Vec2 = _loc2_;
         if(param1.zpp_inner.name_5)
         {
            _loc5_ = param1.zpp_inner;
            param1.zpp_inner.outer = null;
            param1.zpp_inner = null;
            _loc7_ = param1;
            _loc7_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc7_;
            _loc8_ = _loc5_;
            if(_loc8_.outer != null)
            {
               _loc8_.outer.zpp_inner = null;
               _loc8_.outer = null;
            }
            _loc8_.var_103 = null;
            _loc8_._validate = null;
            _loc8_._invalidate = null;
            _loc8_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc8_;
         }
         _loc3_;
         if(zpp_inner.var_245 == null)
         {
            zpp_inner.method_185();
         }
         return zpp_inner.var_245;
      }
      
      public function set massMode(param1:class_256) : class_256
      {
         zpp_inner.method_112("Body::massMode");
         §§push(param1);
         if(class_223.var_410 == null)
         {
            class_223.var_87 = true;
            class_223.var_410 = new class_256();
            class_223.var_87 = false;
         }
         if(§§pop() == class_223.var_410)
         {
            zpp_inner.massMode = class_223.var_703;
         }
         else
         {
            zpp_inner.massMode = class_223.var_1016;
         }
         zpp_inner.method_169();
         if(class_223.var_410 == null)
         {
            class_223.var_87 = true;
            class_223.var_410 = new class_256();
            class_223.var_87 = false;
         }
         §§push(class_223.var_410);
         if(class_223.var_471 == null)
         {
            class_223.var_87 = true;
            class_223.var_471 = new class_256();
            class_223.var_87 = false;
         }
         return null[zpp_inner.massMode];
      }
      
      public function set mass(param1:Number) : Number
      {
         zpp_inner.method_112("Body::mass");
         zpp_inner.massMode = class_223.var_1016;
         zpp_inner.var_263 = param1;
         zpp_inner.method_169();
         zpp_inner.method_136();
         return zpp_inner.var_263;
      }
      
      public function set method_579(param1:Vec2) : Vec2
      {
         var _loc5_:* = null as ZPP_Vec2;
         var _loc7_:* = null as Vec2;
         var _loc8_:* = null as ZPP_Vec2;
         if(zpp_inner.var_316 == null)
         {
            zpp_inner.method_361();
         }
         var _loc2_:Vec2 = zpp_inner.var_316;
         _loc5_ = param1.zpp_inner;
         if(_loc5_._validate != null)
         {
            _loc5_._validate();
         }
         var _loc4_:Number = param1.zpp_inner.x;
         _loc5_ = param1.zpp_inner;
         if(_loc5_._validate != null)
         {
            _loc5_._validate();
         }
         var _loc6_:Number = param1.zpp_inner.y;
         _loc5_ = _loc2_.zpp_inner;
         §§push(false);
         if(_loc5_._validate != null)
         {
            _loc5_._validate();
         }
         if(_loc2_.zpp_inner.x == _loc4_)
         {
            §§pop();
            _loc5_ = _loc2_.zpp_inner;
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            §§push(_loc2_.zpp_inner.y == _loc6_);
         }
         if(!§§pop())
         {
            _loc2_.zpp_inner.x = _loc4_;
            _loc2_.zpp_inner.y = _loc6_;
            _loc5_ = _loc2_.zpp_inner;
            if(_loc5_._invalidate != null)
            {
               _loc5_._invalidate(_loc5_);
            }
         }
         var _loc3_:Vec2 = _loc2_;
         if(param1.zpp_inner.name_5)
         {
            _loc5_ = param1.zpp_inner;
            param1.zpp_inner.outer = null;
            param1.zpp_inner = null;
            _loc7_ = param1;
            _loc7_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc7_;
            _loc8_ = _loc5_;
            if(_loc8_.outer != null)
            {
               _loc8_.outer.zpp_inner = null;
               _loc8_.outer = null;
            }
            _loc8_.var_103 = null;
            _loc8_._validate = null;
            _loc8_._invalidate = null;
            _loc8_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc8_;
         }
         _loc3_;
         if(zpp_inner.var_316 == null)
         {
            zpp_inner.method_361();
         }
         return zpp_inner.var_316;
      }
      
      public function set method_686(param1:Number) : Number
      {
         if(zpp_inner.var_237 != param1)
         {
            zpp_inner.var_237 = param1;
            zpp_inner.method_106();
         }
         return zpp_inner.var_237;
      }
      
      public function set method_572(param1:Boolean) : Boolean
      {
         zpp_inner.var_478 = param1;
         return zpp_inner.var_478;
      }
      
      public function set inertiaMode(param1:class_255) : class_255
      {
         zpp_inner.method_112("Body::inertiaMode");
         §§push(param1);
         if(class_223.var_414 == null)
         {
            class_223.var_87 = true;
            class_223.var_414 = new class_255();
            class_223.var_87 = false;
         }
         if(§§pop() == class_223.var_414)
         {
            zpp_inner.inertiaMode = class_223.var_1003;
         }
         else
         {
            zpp_inner.inertiaMode = class_223.var_800;
         }
         zpp_inner.method_148();
         if(class_223.var_508 == null)
         {
            class_223.var_87 = true;
            class_223.var_508 = new class_255();
            class_223.var_87 = false;
         }
         §§push(class_223.var_508);
         if(class_223.var_414 == null)
         {
            class_223.var_87 = true;
            class_223.var_414 = new class_255();
            class_223.var_87 = false;
         }
         return null[zpp_inner.inertiaMode];
      }
      
      public function set inertia(param1:Number) : Number
      {
         zpp_inner.method_112("Body::inertia");
         zpp_inner.inertiaMode = class_223.var_1003;
         zpp_inner.var_384 = param1;
         zpp_inner.method_148();
         zpp_inner.method_204();
         return zpp_inner.var_384;
      }
      
      public function set gravMassScale(param1:Number) : Number
      {
         zpp_inner.method_112("Body::gravMassScale");
         zpp_inner.gravMassMode = class_223.var_753;
         zpp_inner.gravMassScale = param1;
         zpp_inner.method_452();
         zpp_inner.method_545();
         return zpp_inner.gravMassScale;
      }
      
      public function set gravMassMode(param1:class_253) : class_253
      {
         zpp_inner.method_112("Body::gravMassMode");
         §§push(param1);
         if(class_223.var_422 == null)
         {
            class_223.var_87 = true;
            class_223.var_422 = new class_253();
            class_223.var_87 = false;
         }
         if(§§pop() == class_223.var_422)
         {
            zpp_inner.gravMassMode = class_223.var_753;
         }
         else
         {
            §§push(param1);
            if(class_223.var_411 == null)
            {
               class_223.var_87 = true;
               class_223.var_411 = new class_253();
               class_223.var_87 = false;
            }
            if(§§pop() == class_223.var_411)
            {
               zpp_inner.gravMassMode = class_223.var_769;
            }
            else
            {
               zpp_inner.gravMassMode = class_223.var_836;
            }
         }
         zpp_inner.method_230();
         if(class_223.var_411 == null)
         {
            class_223.var_87 = true;
            class_223.var_411 = new class_253();
            class_223.var_87 = false;
         }
         §§push(class_223.var_411);
         if(class_223.var_500 == null)
         {
            class_223.var_87 = true;
            class_223.var_500 = new class_253();
            class_223.var_87 = false;
         }
         §§push(class_223.var_500);
         if(class_223.var_422 == null)
         {
            class_223.var_87 = true;
            class_223.var_422 = new class_253();
            class_223.var_87 = false;
         }
         return null[zpp_inner.massMode];
      }
      
      public function set gravMass(param1:Number) : Number
      {
         zpp_inner.method_112("Body::gravMass");
         zpp_inner.gravMassMode = class_223.var_836;
         zpp_inner.gravMass = param1;
         zpp_inner.method_230();
         zpp_inner.method_354();
         return zpp_inner.gravMass;
      }
      
      public function set name_74(param1:Vec2) : Vec2
      {
         var _loc5_:* = null as ZPP_Vec2;
         var _loc7_:* = null as Vec2;
         var _loc8_:* = null as ZPP_Vec2;
         if(zpp_inner.var_312 == null)
         {
            zpp_inner.method_427();
         }
         var _loc2_:Vec2 = zpp_inner.var_312;
         _loc5_ = param1.zpp_inner;
         if(_loc5_._validate != null)
         {
            _loc5_._validate();
         }
         var _loc4_:Number = param1.zpp_inner.x;
         _loc5_ = param1.zpp_inner;
         if(_loc5_._validate != null)
         {
            _loc5_._validate();
         }
         var _loc6_:Number = param1.zpp_inner.y;
         _loc5_ = _loc2_.zpp_inner;
         §§push(false);
         if(_loc5_._validate != null)
         {
            _loc5_._validate();
         }
         if(_loc2_.zpp_inner.x == _loc4_)
         {
            §§pop();
            _loc5_ = _loc2_.zpp_inner;
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            §§push(_loc2_.zpp_inner.y == _loc6_);
         }
         if(!§§pop())
         {
            _loc2_.zpp_inner.x = _loc4_;
            _loc2_.zpp_inner.y = _loc6_;
            _loc5_ = _loc2_.zpp_inner;
            if(_loc5_._invalidate != null)
            {
               _loc5_._invalidate(_loc5_);
            }
         }
         var _loc3_:Vec2 = _loc2_;
         if(param1.zpp_inner.name_5)
         {
            _loc5_ = param1.zpp_inner;
            param1.zpp_inner.outer = null;
            param1.zpp_inner = null;
            _loc7_ = param1;
            _loc7_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc7_;
            _loc8_ = _loc5_;
            if(_loc8_.outer != null)
            {
               _loc8_.outer.zpp_inner = null;
               _loc8_.outer = null;
            }
            _loc8_.var_103 = null;
            _loc8_._validate = null;
            _loc8_._invalidate = null;
            _loc8_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc8_;
         }
         _loc3_;
         if(zpp_inner.var_312 == null)
         {
            zpp_inner.method_427();
         }
         return zpp_inner.var_312;
      }
      
      public function set name_64(param1:Boolean) : Boolean
      {
         zpp_inner.name_64 = param1;
         return zpp_inner.name_64;
      }
      
      public function set compound(param1:Compound) : Compound
      {
         var _loc2_:* = null as class_205;
         if((zpp_inner.compound == null?null:zpp_inner.compound.outer) != param1)
         {
            if(param1 != null)
            {
               _loc2_ = param1.zpp_inner.var_269;
               if(_loc2_.zpp_inner.var_111)
               {
                  _loc2_.push(this);
               }
               else
               {
                  _loc2_.unshift(this);
               }
            }
         }
         if(zpp_inner.compound == null)
         {
            return null;
         }
         return zpp_inner.compound.outer;
      }
      
      public function set method_711(param1:Number) : Number
      {
         if(zpp_inner.var_94 != param1)
         {
            zpp_inner.var_94 = param1;
            zpp_inner.method_106();
         }
         return zpp_inner.var_94;
      }
      
      public function set method_502(param1:Boolean) : Boolean
      {
         zpp_inner.method_112("Body::" + Std.string(param1));
         if(!zpp_inner.var_408 != param1)
         {
            zpp_inner.var_408 = !param1;
            zpp_inner.method_148();
         }
         return !zpp_inner.var_408;
      }
      
      public function set method_635(param1:Boolean) : Boolean
      {
         zpp_inner.method_112("Body::" + Std.string(param1));
         if(!zpp_inner.var_424 != param1)
         {
            zpp_inner.var_424 = !param1;
            zpp_inner.method_169();
         }
         return !zpp_inner.var_424;
      }
      
      public final function method_754(param1:Vec2, param2:Number, param3:Number) : Body
      {
         var _loc5_:* = null as Vec2;
         var _loc9_:* = null as ZPP_Vec2;
         var _loc11_:* = null as Vec2;
         var _loc12_:* = null as ZPP_Vec2;
         var _loc4_:Number = 1 / param3;
         if(zpp_inner.var_303 == null)
         {
            zpp_inner.method_335();
         }
         _loc5_ = zpp_inner.var_303;
         §§push(param1);
         if(zpp_inner.var_245 == null)
         {
            zpp_inner.method_185();
         }
         var _loc6_:Vec2 = §§pop().method_302(zpp_inner.var_245,true).method_360(_loc4_);
         _loc9_ = _loc6_.zpp_inner;
         if(_loc9_._validate != null)
         {
            _loc9_._validate();
         }
         var _loc8_:Number = _loc6_.zpp_inner.x;
         _loc9_ = _loc6_.zpp_inner;
         if(_loc9_._validate != null)
         {
            _loc9_._validate();
         }
         var _loc10_:Number = _loc6_.zpp_inner.y;
         _loc9_ = _loc5_.zpp_inner;
         §§push(false);
         if(_loc9_._validate != null)
         {
            _loc9_._validate();
         }
         if(_loc5_.zpp_inner.x == _loc8_)
         {
            §§pop();
            _loc9_ = _loc5_.zpp_inner;
            if(_loc9_._validate != null)
            {
               _loc9_._validate();
            }
            §§push(_loc5_.zpp_inner.y == _loc10_);
         }
         if(!§§pop())
         {
            _loc5_.zpp_inner.x = _loc8_;
            _loc5_.zpp_inner.y = _loc10_;
            _loc9_ = _loc5_.zpp_inner;
            if(_loc9_._invalidate != null)
            {
               _loc9_._invalidate(_loc9_);
            }
         }
         var _loc7_:Vec2 = _loc5_;
         if(_loc6_.zpp_inner.name_5)
         {
            _loc9_ = _loc6_.zpp_inner;
            _loc6_.zpp_inner.outer = null;
            _loc6_.zpp_inner = null;
            _loc11_ = _loc6_;
            _loc11_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc11_;
            _loc12_ = _loc9_;
            if(_loc12_.outer != null)
            {
               _loc12_.outer.zpp_inner = null;
               _loc12_.outer = null;
            }
            _loc12_.var_103 = null;
            _loc12_._validate = null;
            _loc12_._invalidate = null;
            _loc12_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc12_;
            true;
         }
         else
         {
            false;
         }
         _loc7_;
         _loc8_ = (param2 - zpp_inner.var_93) * _loc4_;
         if(zpp_inner.var_94 != _loc8_)
         {
            zpp_inner.var_94 = _loc8_;
            zpp_inner.method_106();
         }
         zpp_inner.var_94;
         if(param1.zpp_inner.name_5)
         {
            _loc9_ = param1.zpp_inner;
            param1.zpp_inner.outer = null;
            param1.zpp_inner = null;
            _loc5_ = param1;
            _loc5_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc5_;
            _loc12_ = _loc9_;
            if(_loc12_.outer != null)
            {
               _loc12_.outer.zpp_inner = null;
               _loc12_.outer = null;
            }
            _loc12_.var_103 = null;
            _loc12_._validate = null;
            _loc12_._invalidate = null;
            _loc12_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc12_;
         }
         else
         {
            false;
         }
         return this;
      }
      
      public final function method_886(param1:class_199) : Body
      {
         var _loc3_:* = null as ZPP_Shape;
         var _loc4_:* = null as Shape;
         zpp_inner.method_112(class_2.method_14(-1820302843));
         var _loc2_:ZNPNode_ZPP_Shape = zpp_inner.shapes.var_73;
         while(_loc2_ != null)
         {
            _loc3_ = _loc2_.var_74;
            _loc4_ = _loc3_.outer;
            _loc4_.zpp_inner.method_112(class_2.method_14(-1820302416));
            _loc4_.zpp_inner.method_323(param1.zpp_inner);
            _loc4_.zpp_inner.material.method_109();
            _loc2_ = _loc2_.next;
         }
         return this;
      }
      
      public final function method_900(param1:class_240) : Body
      {
         var _loc3_:* = null as ZPP_Shape;
         var _loc4_:* = null as Shape;
         zpp_inner.method_112(class_2.method_14(-1820302587));
         var _loc2_:ZNPNode_ZPP_Shape = zpp_inner.shapes.var_73;
         while(_loc2_ != null)
         {
            _loc3_ = _loc2_.var_74;
            _loc4_ = _loc3_.outer;
            _loc4_.zpp_inner.method_219(param1.zpp_inner);
            _loc4_.zpp_inner.method_112(class_2.method_14(-1820302816));
            if(_loc4_.zpp_inner.fluidProperties == null)
            {
               _loc4_.zpp_inner.method_219(new class_240().zpp_inner);
            }
            _loc4_.zpp_inner.fluidProperties.method_109();
            _loc2_ = _loc2_.next;
         }
         return this;
      }
      
      public final function method_758(param1:class_222) : Body
      {
         var _loc3_:* = null as ZPP_Shape;
         var _loc4_:* = null as Shape;
         zpp_inner.method_112(class_2.method_14(-1820302800));
         var _loc2_:ZNPNode_ZPP_Shape = zpp_inner.shapes.var_73;
         while(_loc2_ != null)
         {
            _loc3_ = _loc2_.var_74;
            _loc4_ = _loc3_.outer;
            _loc4_.zpp_inner.method_112(class_2.method_14(-1820302682));
            _loc4_.zpp_inner.method_330(param1.zpp_inner);
            _loc4_.zpp_inner.filter.method_109();
            _loc2_ = _loc2_.next;
         }
         return this;
      }
      
      public final function method_767(param1:Number, param2:Number) : Body
      {
         var _loc4_:* = null as ZPP_Shape;
         zpp_inner.method_112(class_2.method_14(-1820302692));
         var _loc3_:ZNPNode_ZPP_Shape = zpp_inner.shapes.var_73;
         while(_loc3_ != null)
         {
            _loc4_ = _loc3_.var_74;
            _loc4_.outer.scale(param1,param2);
            _loc3_ = _loc3_.next;
         }
         return this;
      }
      
      public final function method_843(param1:Number) : Body
      {
         var _loc3_:* = null as ZPP_Shape;
         zpp_inner.method_112(class_2.method_14(-1820302592));
         var _loc2_:ZNPNode_ZPP_Shape = zpp_inner.shapes.var_73;
         while(_loc2_ != null)
         {
            _loc3_ = _loc2_.var_74;
            _loc3_.outer.rotate(param1);
            _loc2_ = _loc2_.next;
         }
         return this;
      }
      
      public final function rotate(param1:Vec2, param2:Number) : Body
      {
         var _loc5_:* = null as Vec2;
         var _loc9_:* = null as ZPP_Vec2;
         var _loc11_:* = null as Vec2;
         var _loc12_:* = null as ZPP_Vec2;
         var _loc14_:* = null as ZPP_Body;
         var _loc15_:* = null as ZNPNode_ZPP_Shape;
         var _loc16_:* = null as ZPP_Shape;
         var _loc3_:Boolean = param1.zpp_inner.name_5;
         param1.zpp_inner.name_5 = false;
         if(zpp_inner.var_245 == null)
         {
            zpp_inner.method_185();
         }
         var _loc4_:Vec2 = zpp_inner.var_245.method_302(param1);
         _loc4_.rotate(param2);
         _loc5_ = param1.add(_loc4_,true);
         if(zpp_inner.var_245 == null)
         {
            zpp_inner.method_185();
         }
         var _loc6_:Vec2 = zpp_inner.var_245;
         _loc9_ = _loc5_.zpp_inner;
         if(_loc9_._validate != null)
         {
            _loc9_._validate();
         }
         var _loc8_:Number = _loc5_.zpp_inner.x;
         _loc9_ = _loc5_.zpp_inner;
         if(_loc9_._validate != null)
         {
            _loc9_._validate();
         }
         var _loc10_:Number = _loc5_.zpp_inner.y;
         _loc9_ = _loc6_.zpp_inner;
         §§push(false);
         if(_loc9_._validate != null)
         {
            _loc9_._validate();
         }
         if(_loc6_.zpp_inner.x == _loc8_)
         {
            §§pop();
            _loc9_ = _loc6_.zpp_inner;
            if(_loc9_._validate != null)
            {
               _loc9_._validate();
            }
            §§push(_loc6_.zpp_inner.y == _loc10_);
         }
         if(!§§pop())
         {
            _loc6_.zpp_inner.x = _loc8_;
            _loc6_.zpp_inner.y = _loc10_;
            _loc9_ = _loc6_.zpp_inner;
            if(_loc9_._invalidate != null)
            {
               _loc9_._invalidate(_loc9_);
            }
         }
         var _loc7_:Vec2 = _loc6_;
         if(_loc5_.zpp_inner.name_5)
         {
            _loc9_ = _loc5_.zpp_inner;
            _loc5_.zpp_inner.outer = null;
            _loc5_.zpp_inner = null;
            _loc11_ = _loc5_;
            _loc11_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc11_;
            _loc12_ = _loc9_;
            if(_loc12_.outer != null)
            {
               _loc12_.outer.zpp_inner = null;
               _loc12_.outer = null;
            }
            _loc12_.var_103 = null;
            _loc12_._validate = null;
            _loc12_._invalidate = null;
            _loc12_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc12_;
         }
         else
         {
            false;
         }
         _loc7_;
         if(zpp_inner.var_245 == null)
         {
            zpp_inner.method_185();
         }
         zpp_inner.var_245;
         _loc9_ = _loc4_.zpp_inner;
         _loc4_.zpp_inner.outer = null;
         _loc4_.zpp_inner = null;
         _loc5_ = _loc4_;
         _loc5_.var_72 = class_219.poolVec2;
         class_219.poolVec2 = _loc5_;
         _loc12_ = _loc9_;
         if(_loc12_.outer != null)
         {
            _loc12_.outer.zpp_inner = null;
            _loc12_.outer = null;
         }
         _loc12_.var_103 = null;
         _loc12_._validate = null;
         _loc12_._invalidate = null;
         _loc12_.next = ZPP_Vec2.var_72;
         ZPP_Vec2.var_72 = _loc12_;
         var _loc13_:Body = this;
         _loc8_ = Number(_loc13_.zpp_inner.var_93 + param2);
         _loc13_.zpp_inner.method_112(class_2.method_14(-1820302518));
         if(_loc13_.zpp_inner.var_93 != _loc8_)
         {
            _loc13_.zpp_inner.var_93 = _loc8_;
            _loc14_ = _loc13_.zpp_inner;
            _loc14_.var_113 = true;
            _loc15_ = _loc14_.shapes.var_73;
            while(_loc15_ != null)
            {
               _loc16_ = _loc15_.var_74;
               if(_loc16_.type == class_223.var_155)
               {
                  _loc16_.name_6.method_142();
                  _loc16_.name_6.method_141();
               }
               _loc16_.method_139();
               _loc15_ = _loc15_.next;
            }
            _loc14_.var_139 = true;
            _loc13_.zpp_inner.method_106();
         }
         _loc13_.zpp_inner.var_93;
         param1.zpp_inner.name_5 = _loc3_;
         if(param1.zpp_inner.name_5)
         {
            _loc9_ = param1.zpp_inner;
            param1.zpp_inner.outer = null;
            param1.zpp_inner = null;
            _loc5_ = param1;
            _loc5_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc5_;
            _loc12_ = _loc9_;
            if(_loc12_.outer != null)
            {
               _loc12_.outer.zpp_inner = null;
               _loc12_.outer = null;
            }
            _loc12_.var_103 = null;
            _loc12_._validate = null;
            _loc12_._invalidate = null;
            _loc12_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc12_;
         }
         else
         {
            false;
         }
         return this;
      }
      
      public final function method_340(param1:Body = undefined, param2:Boolean = false) : Number
      {
         var _loc6_:* = null as class_252;
         var _loc7_:int = 0;
         var _loc8_:* = null as ZPP_Arbiter;
         var _loc9_:* = null as class_252;
         var _loc4_:class_254 = zpp_inner.name_12;
         if(zpp_inner.var_174 == null)
         {
            zpp_inner.var_174 = ZPP_ArbiterList.method_65(zpp_inner.name_12,true);
         }
         var _loc5_:class_251 = zpp_inner.var_174.iterator();
         _loc5_.zpp_inner.zpp_inner.method_104();
         _loc7_ = _loc5_.zpp_inner.method_108();
         _loc5_.var_98 = true;
         if(_loc5_.var_90 < _loc7_)
         {
            §§push(true);
         }
         else
         {
            _loc5_.var_106 = class_251.var_72;
            class_251.var_72 = _loc5_;
            _loc5_.zpp_inner = null;
            §§push(false);
         }
         return 0;
      }
      
      public final function method_271(param1:Body = undefined, param2:Boolean = false) : Vec3
      {
         var _loc8_:* = null as class_252;
         var _loc9_:int = 0;
         var _loc10_:* = null as ZPP_Arbiter;
         var _loc11_:* = null as Vec3;
         var _loc12_:* = null as class_252;
         var _loc14_:* = null as ZPP_Vec3;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:class_254 = zpp_inner.name_12;
         if(zpp_inner.var_174 == null)
         {
            zpp_inner.var_174 = ZPP_ArbiterList.method_65(zpp_inner.name_12,true);
         }
         var _loc7_:class_251 = zpp_inner.var_174.iterator();
         _loc7_.zpp_inner.zpp_inner.method_104();
         _loc9_ = _loc7_.zpp_inner.method_108();
         _loc7_.var_98 = true;
         if(_loc7_.var_90 < _loc9_)
         {
            §§push(true);
         }
         else
         {
            _loc7_.var_106 = class_251.var_72;
            class_251.var_72 = _loc7_;
            _loc7_.zpp_inner = null;
            §§push(false);
         }
         return Vec3.method_65(_loc3_,_loc4_,_loc5_);
      }
      
      public final function localVectorToWorld(param1:Vec2, param2:Boolean = false) : Vec2
      {
         var _loc6_:* = null as ZPP_Vec2;
         var _loc7_:* = null as Vec2;
         var _loc8_:* = null as ZPP_Vec2;
         var _loc9_:Boolean = false;
         var _loc3_:ZPP_Body = zpp_inner;
         if(_loc3_.var_113)
         {
            _loc3_.var_113 = false;
            _loc3_.var_84 = Number(Math.sin(_loc3_.var_93));
            _loc3_.var_83 = Number(Math.cos(_loc3_.var_93));
            null;
         }
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         _loc6_ = param1.zpp_inner;
         §§push(zpp_inner.var_83);
         if(_loc6_._validate != null)
         {
            _loc6_._validate();
         }
         _loc6_ = param1.zpp_inner;
         §§push(§§pop() * param1.zpp_inner.x);
         §§push(zpp_inner.var_84);
         if(_loc6_._validate != null)
         {
            _loc6_._validate();
         }
         _loc4_ = Number(§§pop() - §§pop() * param1.zpp_inner.y);
         _loc6_ = param1.zpp_inner;
         if(_loc6_._validate != null)
         {
            _loc6_._validate();
         }
         _loc6_ = param1.zpp_inner;
         §§push(param1.zpp_inner.x * zpp_inner.var_84);
         if(_loc6_._validate != null)
         {
            _loc6_._validate();
         }
         _loc5_ = Number(Number(§§pop() + param1.zpp_inner.y * zpp_inner.var_83));
         if(param1.zpp_inner.name_5)
         {
            _loc6_ = param1.zpp_inner;
            param1.zpp_inner.outer = null;
            param1.zpp_inner = null;
            _loc7_ = param1;
            _loc7_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc7_;
            _loc8_ = _loc6_;
            if(_loc8_.outer != null)
            {
               _loc8_.outer.zpp_inner = null;
               _loc8_.outer = null;
            }
            _loc8_.var_103 = null;
            _loc8_._validate = null;
            _loc8_._invalidate = null;
            _loc8_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc8_;
         }
         else
         {
            false;
         }
         if(class_219.poolVec2 == null)
         {
            _loc7_ = new Vec2();
         }
         else
         {
            _loc7_ = class_219.poolVec2;
            class_219.poolVec2 = _loc7_.var_72;
            _loc7_.var_72 = null;
         }
         if(_loc7_.zpp_inner == null)
         {
            _loc9_ = false;
            if(ZPP_Vec2.var_72 == null)
            {
               _loc6_ = new ZPP_Vec2();
            }
            else
            {
               _loc6_ = ZPP_Vec2.var_72;
               ZPP_Vec2.var_72 = _loc6_.next;
               _loc6_.next = null;
            }
            _loc6_.name_5 = false;
            _loc6_.var_109 = _loc9_;
            _loc6_.x = _loc4_;
            _loc6_.y = _loc5_;
            _loc7_.zpp_inner = _loc6_;
            _loc7_.zpp_inner.outer = _loc7_;
         }
         else
         {
            _loc6_ = _loc7_.zpp_inner;
            §§push(false);
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            if(_loc7_.zpp_inner.x == _loc4_)
            {
               §§pop();
               _loc6_ = _loc7_.zpp_inner;
               if(_loc6_._validate != null)
               {
                  _loc6_._validate();
               }
               §§push(_loc7_.zpp_inner.y == _loc5_);
            }
            if(!§§pop())
            {
               _loc7_.zpp_inner.x = _loc4_;
               _loc7_.zpp_inner.y = _loc5_;
               _loc6_ = _loc7_.zpp_inner;
               if(_loc6_._invalidate != null)
               {
                  _loc6_._invalidate(_loc6_);
               }
            }
            _loc7_;
         }
         _loc7_.zpp_inner.name_5 = param2;
         return _loc7_;
      }
      
      public final function method_486(param1:Vec2, param2:Boolean = false) : Vec2
      {
         var _loc6_:* = null as ZPP_Vec2;
         var _loc7_:* = null as Vec2;
         var _loc8_:* = null as ZPP_Vec2;
         var _loc11_:Boolean = false;
         var _loc3_:ZPP_Body = zpp_inner;
         if(_loc3_.var_113)
         {
            _loc3_.var_113 = false;
            _loc3_.var_84 = Number(Math.sin(_loc3_.var_93));
            _loc3_.var_83 = Number(Math.cos(_loc3_.var_93));
            null;
         }
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         _loc6_ = param1.zpp_inner;
         §§push(zpp_inner.var_83);
         if(_loc6_._validate != null)
         {
            _loc6_._validate();
         }
         _loc6_ = param1.zpp_inner;
         §§push(§§pop() * param1.zpp_inner.x);
         §§push(zpp_inner.var_84);
         if(_loc6_._validate != null)
         {
            _loc6_._validate();
         }
         _loc4_ = Number(§§pop() - §§pop() * param1.zpp_inner.y);
         _loc6_ = param1.zpp_inner;
         if(_loc6_._validate != null)
         {
            _loc6_._validate();
         }
         _loc6_ = param1.zpp_inner;
         §§push(param1.zpp_inner.x * zpp_inner.var_84);
         if(_loc6_._validate != null)
         {
            _loc6_._validate();
         }
         _loc5_ = Number(Number(§§pop() + param1.zpp_inner.y * zpp_inner.var_83));
         if(param1.zpp_inner.name_5)
         {
            _loc6_ = param1.zpp_inner;
            param1.zpp_inner.outer = null;
            param1.zpp_inner = null;
            _loc7_ = param1;
            _loc7_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc7_;
            _loc8_ = _loc6_;
            if(_loc8_.outer != null)
            {
               _loc8_.outer.zpp_inner = null;
               _loc8_.outer = null;
            }
            _loc8_.var_103 = null;
            _loc8_._validate = null;
            _loc8_._invalidate = null;
            _loc8_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc8_;
         }
         else
         {
            false;
         }
         var _loc9_:Number = Number(_loc4_ + zpp_inner.var_95);
         var _loc10_:Number = Number(_loc5_ + zpp_inner.var_96);
         if(class_219.poolVec2 == null)
         {
            _loc7_ = new Vec2();
         }
         else
         {
            _loc7_ = class_219.poolVec2;
            class_219.poolVec2 = _loc7_.var_72;
            _loc7_.var_72 = null;
         }
         if(_loc7_.zpp_inner == null)
         {
            _loc11_ = false;
            if(ZPP_Vec2.var_72 == null)
            {
               _loc6_ = new ZPP_Vec2();
            }
            else
            {
               _loc6_ = ZPP_Vec2.var_72;
               ZPP_Vec2.var_72 = _loc6_.next;
               _loc6_.next = null;
            }
            _loc6_.name_5 = false;
            _loc6_.var_109 = _loc11_;
            _loc6_.x = _loc9_;
            _loc6_.y = _loc10_;
            _loc7_.zpp_inner = _loc6_;
            _loc7_.zpp_inner.outer = _loc7_;
         }
         else
         {
            _loc6_ = _loc7_.zpp_inner;
            §§push(false);
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            if(_loc7_.zpp_inner.x == _loc9_)
            {
               §§pop();
               _loc6_ = _loc7_.zpp_inner;
               if(_loc6_._validate != null)
               {
                  _loc6_._validate();
               }
               §§push(_loc7_.zpp_inner.y == _loc10_);
            }
            if(!§§pop())
            {
               _loc7_.zpp_inner.x = _loc9_;
               _loc7_.zpp_inner.y = _loc10_;
               _loc6_ = _loc7_.zpp_inner;
               if(_loc6_._invalidate != null)
               {
                  _loc6_._invalidate(_loc6_);
               }
            }
            _loc7_;
         }
         _loc7_.zpp_inner.name_5 = param2;
         return _loc7_;
      }
      
      public final function method_876() : Boolean
      {
         return zpp_inner.type == class_223.var_240;
      }
      
      public final function method_895() : Boolean
      {
         return zpp_inner.type == class_223.var_216;
      }
      
      public final function isDynamic() : Boolean
      {
         return zpp_inner.type == class_223.var_188;
      }
      
      public final function method_514(param1:class_221 = undefined, param2:int = -1, param3:class_205 = undefined) : class_205
      {
         var _loc4_:* = 0;
         if(param1 == null)
         {
            _loc4_ = ZPP_Arbiter.var_292 | ZPP_Arbiter.SENSOR | ZPP_Arbiter.FLUID;
         }
         else
         {
            §§push(param1);
            if(class_223.var_189 == null)
            {
               class_223.var_87 = true;
               class_223.var_189 = new class_221();
               class_223.var_87 = false;
            }
            if(§§pop() == class_223.var_189)
            {
               _loc4_ = int(ZPP_Arbiter.var_292);
            }
            else
            {
               §§push(param1);
               if(class_223.var_187 == null)
               {
                  class_223.var_87 = true;
                  class_223.var_187 = new class_221();
                  class_223.var_87 = false;
               }
               if(§§pop() == class_223.var_187)
               {
                  _loc4_ = int(ZPP_Arbiter.SENSOR);
               }
               else
               {
                  _loc4_ = int(ZPP_Arbiter.FLUID);
               }
            }
         }
         return zpp_inner.method_514(_loc4_,param2,param3);
      }
      
      public final function method_883(param1:Number) : Body
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc10_:* = null as ZPP_Shape;
         zpp_inner.method_112(class_2.method_14(-1820302516));
         if(param1 == 0)
         {
            return this;
         }
         var _loc2_:ZPP_Body = zpp_inner;
         _loc2_.var_176 = 0;
         _loc2_.var_191 = _loc2_.var_94;
         var _loc3_:Number = param1 - _loc2_.var_176;
         if(_loc3_ != 0)
         {
            _loc2_.var_176 = param1;
            _loc4_ = _loc3_;
            _loc2_.var_95 = Number(_loc2_.var_95 + _loc2_.var_104 * _loc4_);
            _loc2_.var_96 = Number(_loc2_.var_96 + _loc2_.var_105 * _loc4_);
            if(_loc2_.var_94 != 0)
            {
               _loc4_ = _loc2_.var_191 * _loc3_;
               _loc2_.var_93 = Number(_loc2_.var_93 + _loc4_);
               if(_loc4_ * _loc4_ > 0.0001)
               {
                  _loc2_.var_84 = Number(Math.sin(_loc2_.var_93));
                  _loc2_.var_83 = Number(Math.cos(_loc2_.var_93));
                  null;
               }
               else
               {
                  _loc5_ = _loc4_ * _loc4_;
                  _loc6_ = 1 - 0.5 * _loc5_;
                  _loc7_ = 1 - _loc5_ * _loc5_ / 8;
                  _loc8_ = (_loc6_ * _loc2_.var_84 + _loc4_ * _loc2_.var_83) * _loc7_;
                  _loc2_.var_83 = (_loc6_ * _loc2_.var_83 - _loc4_ * _loc2_.var_84) * _loc7_;
                  _loc2_.var_84 = _loc8_;
               }
            }
         }
         var _loc9_:ZNPNode_ZPP_Shape = _loc2_.shapes.var_73;
         while(_loc9_ != null)
         {
            _loc10_ = _loc9_.var_74;
            if(_loc10_.type == class_223.var_155)
            {
               _loc10_.name_6.method_142();
               _loc10_.name_6.method_141();
            }
            _loc10_.method_139();
            _loc9_ = _loc9_.next;
         }
         _loc2_.var_139 = true;
         _loc2_.var_113 = true;
         _loc9_ = _loc2_.shapes.var_73;
         while(_loc9_ != null)
         {
            _loc10_ = _loc9_.var_74;
            if(_loc10_.type == class_223.var_155)
            {
               _loc10_.name_6.method_142();
               _loc10_.name_6.method_141();
            }
            _loc10_.method_139();
            _loc9_ = _loc9_.next;
         }
         _loc2_.var_139 = true;
         _loc2_.var_176 = 0;
         return this;
      }
      
      public function get method_718() : Vec2
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Boolean = false;
         var _loc4_:* = null as Vec2;
         var _loc5_:Boolean = false;
         var _loc6_:* = null as ZPP_Vec2;
         if(zpp_inner.var_116 == null)
         {
            _loc1_ = zpp_inner.var_99;
            _loc2_ = zpp_inner.var_100;
            _loc3_ = false;
            if(class_219.poolVec2 == null)
            {
               _loc4_ = new Vec2();
            }
            else
            {
               _loc4_ = class_219.poolVec2;
               class_219.poolVec2 = _loc4_.var_72;
               _loc4_.var_72 = null;
            }
            if(_loc4_.zpp_inner == null)
            {
               _loc5_ = false;
               if(ZPP_Vec2.var_72 == null)
               {
                  _loc6_ = new ZPP_Vec2();
               }
               else
               {
                  _loc6_ = ZPP_Vec2.var_72;
                  ZPP_Vec2.var_72 = _loc6_.next;
                  _loc6_.next = null;
               }
               _loc6_.name_5 = false;
               _loc6_.var_109 = _loc5_;
               _loc6_.x = _loc1_;
               _loc6_.y = _loc2_;
               _loc4_.zpp_inner = _loc6_;
               _loc4_.zpp_inner.outer = _loc4_;
            }
            else
            {
               _loc6_ = _loc4_.zpp_inner;
               §§push(false);
               if(_loc6_._validate != null)
               {
                  _loc6_._validate();
               }
               if(_loc4_.zpp_inner.x == _loc1_)
               {
                  §§pop();
                  _loc6_ = _loc4_.zpp_inner;
                  if(_loc6_._validate != null)
                  {
                     _loc6_._validate();
                  }
                  §§push(_loc4_.zpp_inner.y == _loc2_);
               }
               if(!§§pop())
               {
                  _loc4_.zpp_inner.x = _loc1_;
                  _loc4_.zpp_inner.y = _loc2_;
                  _loc6_ = _loc4_.zpp_inner;
                  if(_loc6_._invalidate != null)
                  {
                     _loc6_._invalidate(_loc6_);
                  }
               }
               _loc4_;
            }
            _loc4_.zpp_inner.name_5 = _loc3_;
            zpp_inner.var_116 = _loc4_;
            zpp_inner.var_116.zpp_inner.var_120 = true;
            zpp_inner.var_116.zpp_inner.var_109 = true;
            zpp_inner.var_116.zpp_inner._validate = zpp_inner.method_122;
         }
         return zpp_inner.var_116;
      }
      
      public function get velocity() : Vec2
      {
         if(zpp_inner.var_303 == null)
         {
            zpp_inner.method_335();
         }
         return zpp_inner.var_303;
      }
      
      public function get type() : class_198
      {
         return ZPP_Body.var_406[zpp_inner.type];
      }
      
      public function get name_63() : Number
      {
         return zpp_inner.name_63;
      }
      
      public function get method_629() : Vec2
      {
         if(zpp_inner.var_313 == null)
         {
            zpp_inner.method_416();
         }
         return zpp_inner.var_313;
      }
      
      public function get space() : class_197
      {
         if(zpp_inner.space == null)
         {
            return null;
         }
         return zpp_inner.space.outer;
      }
      
      public function get shapes() : class_230
      {
         return zpp_inner.var_222;
      }
      
      public function get rotation() : Number
      {
         return zpp_inner.var_93;
      }
      
      public function get position() : Vec2
      {
         if(zpp_inner.var_245 == null)
         {
            zpp_inner.method_185();
         }
         return zpp_inner.var_245;
      }
      
      public function get massMode() : class_256
      {
         if(class_223.var_410 == null)
         {
            class_223.var_87 = true;
            class_223.var_410 = new class_256();
            class_223.var_87 = false;
         }
         §§push(class_223.var_410);
         if(class_223.var_471 == null)
         {
            class_223.var_87 = true;
            class_223.var_471 = new class_256();
            class_223.var_87 = false;
         }
         return null[zpp_inner.massMode];
      }
      
      public function get mass() : Number
      {
         zpp_inner.method_136();
         return zpp_inner.var_263;
      }
      
      public function get localCOM() : Vec2
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Boolean = false;
         var _loc4_:* = null as Vec2;
         var _loc5_:Boolean = false;
         var _loc6_:* = null as ZPP_Vec2;
         if(zpp_inner.var_115 == null)
         {
            _loc1_ = zpp_inner.var_82;
            _loc2_ = zpp_inner.var_81;
            _loc3_ = false;
            if(class_219.poolVec2 == null)
            {
               _loc4_ = new Vec2();
            }
            else
            {
               _loc4_ = class_219.poolVec2;
               class_219.poolVec2 = _loc4_.var_72;
               _loc4_.var_72 = null;
            }
            if(_loc4_.zpp_inner == null)
            {
               _loc5_ = false;
               if(ZPP_Vec2.var_72 == null)
               {
                  _loc6_ = new ZPP_Vec2();
               }
               else
               {
                  _loc6_ = ZPP_Vec2.var_72;
                  ZPP_Vec2.var_72 = _loc6_.next;
                  _loc6_.next = null;
               }
               _loc6_.name_5 = false;
               _loc6_.var_109 = _loc5_;
               _loc6_.x = _loc1_;
               _loc6_.y = _loc2_;
               _loc4_.zpp_inner = _loc6_;
               _loc4_.zpp_inner.outer = _loc4_;
            }
            else
            {
               _loc6_ = _loc4_.zpp_inner;
               §§push(false);
               if(_loc6_._validate != null)
               {
                  _loc6_._validate();
               }
               if(_loc4_.zpp_inner.x == _loc1_)
               {
                  §§pop();
                  _loc6_ = _loc4_.zpp_inner;
                  if(_loc6_._validate != null)
                  {
                     _loc6_._validate();
                  }
                  §§push(_loc4_.zpp_inner.y == _loc2_);
               }
               if(!§§pop())
               {
                  _loc4_.zpp_inner.x = _loc1_;
                  _loc4_.zpp_inner.y = _loc2_;
                  _loc6_ = _loc4_.zpp_inner;
                  if(_loc6_._invalidate != null)
                  {
                     _loc6_._invalidate(_loc6_);
                  }
               }
               _loc4_;
            }
            _loc4_.zpp_inner.name_5 = _loc3_;
            zpp_inner.var_115 = _loc4_;
            zpp_inner.var_115.zpp_inner.var_120 = true;
            zpp_inner.var_115.zpp_inner.var_109 = true;
            zpp_inner.var_115.zpp_inner._validate = zpp_inner.method_626;
         }
         return zpp_inner.var_115;
      }
      
      public function get method_579() : Vec2
      {
         if(zpp_inner.var_316 == null)
         {
            zpp_inner.method_361();
         }
         return zpp_inner.var_316;
      }
      
      public function get method_686() : Number
      {
         return zpp_inner.var_237;
      }
      
      public function get method_510() : Boolean
      {
         return zpp_inner.var_112.var_129;
      }
      
      public function get method_572() : Boolean
      {
         return zpp_inner.var_478;
      }
      
      public function get inertiaMode() : class_255
      {
         if(class_223.var_508 == null)
         {
            class_223.var_87 = true;
            class_223.var_508 = new class_255();
            class_223.var_87 = false;
         }
         §§push(class_223.var_508);
         if(class_223.var_414 == null)
         {
            class_223.var_87 = true;
            class_223.var_414 = new class_255();
            class_223.var_87 = false;
         }
         return null[zpp_inner.inertiaMode];
      }
      
      public function get inertia() : Number
      {
         zpp_inner.method_204();
         return zpp_inner.var_384;
      }
      
      public function get gravMassScale() : Number
      {
         zpp_inner.method_545();
         return zpp_inner.gravMassScale;
      }
      
      public function get gravMassMode() : class_253
      {
         if(class_223.var_411 == null)
         {
            class_223.var_87 = true;
            class_223.var_411 = new class_253();
            class_223.var_87 = false;
         }
         §§push(class_223.var_411);
         if(class_223.var_500 == null)
         {
            class_223.var_87 = true;
            class_223.var_500 = new class_253();
            class_223.var_87 = false;
         }
         §§push(class_223.var_500);
         if(class_223.var_422 == null)
         {
            class_223.var_87 = true;
            class_223.var_422 = new class_253();
            class_223.var_87 = false;
         }
         return null[zpp_inner.massMode];
      }
      
      public function get gravMass() : Number
      {
         zpp_inner.method_354();
         return zpp_inner.gravMass;
      }
      
      public function get name_74() : Vec2
      {
         if(zpp_inner.var_312 == null)
         {
            zpp_inner.method_427();
         }
         return zpp_inner.var_312;
      }
      
      public function get name_64() : Boolean
      {
         return zpp_inner.name_64;
      }
      
      public function get name_19() : class_218
      {
         if(zpp_inner.var_185 == null)
         {
            zpp_inner.var_185 = ZPP_ConstraintList.method_65(zpp_inner.name_19,true);
         }
         return zpp_inner.var_185;
      }
      
      public function get method_811() : Vec3
      {
         if(zpp_inner.var_393 == null)
         {
            zpp_inner.method_639();
         }
         return zpp_inner.var_393;
      }
      
      public function get method_864() : Number
      {
         if(!zpp_inner.name_29)
         {
            zpp_inner.method_136();
         }
         return zpp_inner.var_264;
      }
      
      public function get method_837() : Number
      {
         if(!zpp_inner.name_29)
         {
            zpp_inner.method_204();
         }
         return zpp_inner.var_194;
      }
      
      public function get compound() : Compound
      {
         if(zpp_inner.compound == null)
         {
            return null;
         }
         return zpp_inner.compound.outer;
      }
      
      public function get bounds() : class_237
      {
         return zpp_inner.name_3.method_109();
      }
      
      public function get name_12() : class_227
      {
         if(zpp_inner.var_174 == null)
         {
            zpp_inner.var_174 = ZPP_ArbiterList.method_65(zpp_inner.name_12,true);
         }
         return zpp_inner.var_174;
      }
      
      public function get method_711() : Number
      {
         return zpp_inner.var_94;
      }
      
      public function get method_502() : Boolean
      {
         return !zpp_inner.var_408;
      }
      
      public function get method_635() : Boolean
      {
         return !zpp_inner.var_424;
      }
      
      public final function method_334(param1:Body = undefined) : Vec3
      {
         var _loc7_:* = null as class_252;
         var _loc8_:int = 0;
         var _loc9_:* = null as ZPP_Arbiter;
         var _loc10_:* = null as Vec3;
         var _loc11_:* = null as class_252;
         var _loc13_:* = null as ZPP_Vec3;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:class_254 = zpp_inner.name_12;
         if(zpp_inner.var_174 == null)
         {
            zpp_inner.var_174 = ZPP_ArbiterList.method_65(zpp_inner.name_12,true);
         }
         var _loc6_:class_251 = zpp_inner.var_174.iterator();
         _loc6_.zpp_inner.zpp_inner.method_104();
         _loc8_ = _loc6_.zpp_inner.method_108();
         _loc6_.var_98 = true;
         if(_loc6_.var_90 < _loc8_)
         {
            §§push(true);
         }
         else
         {
            _loc6_.var_106 = class_251.var_72;
            class_251.var_72 = _loc6_;
            _loc6_.zpp_inner = null;
            §§push(false);
         }
         return Vec3.method_65(_loc2_,_loc3_,_loc4_);
      }
      
      public final function method_773() : Number
      {
         var _loc6_:* = null as Vec2;
         var _loc7_:Boolean = false;
         var _loc8_:* = null as ZPP_Vec2;
         var _loc10_:* = null as class_252;
         var _loc11_:int = 0;
         var _loc12_:* = null as Vec3;
         var _loc13_:* = null as Vec2;
         var _loc14_:* = null as ZPP_Vec2;
         var _loc16_:* = null as class_218;
         var _loc17_:* = null as Constraint;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(class_219.poolVec2 == null)
         {
            _loc6_ = new Vec2();
         }
         else
         {
            _loc6_ = class_219.poolVec2;
            class_219.poolVec2 = _loc6_.var_72;
            _loc6_.var_72 = null;
         }
         if(_loc6_.zpp_inner == null)
         {
            _loc7_ = false;
            if(ZPP_Vec2.var_72 == null)
            {
               _loc8_ = new ZPP_Vec2();
            }
            else
            {
               _loc8_ = ZPP_Vec2.var_72;
               ZPP_Vec2.var_72 = _loc8_.next;
               _loc8_.next = null;
            }
            _loc8_.name_5 = false;
            _loc8_.var_109 = _loc7_;
            _loc8_.x = _loc3_;
            _loc8_.y = _loc4_;
            _loc6_.zpp_inner = _loc8_;
            _loc6_.zpp_inner.outer = _loc6_;
         }
         else
         {
            _loc8_ = _loc6_.zpp_inner;
            §§push(false);
            if(_loc8_._validate != null)
            {
               _loc8_._validate();
            }
            if(_loc6_.zpp_inner.x == _loc3_)
            {
               §§pop();
               _loc8_ = _loc6_.zpp_inner;
               if(_loc8_._validate != null)
               {
                  _loc8_._validate();
               }
               §§push(_loc6_.zpp_inner.y == _loc4_);
            }
            if(!§§pop())
            {
               _loc6_.zpp_inner.x = _loc3_;
               _loc6_.zpp_inner.y = _loc4_;
               _loc8_ = _loc6_.zpp_inner;
               if(_loc8_._invalidate != null)
               {
                  _loc8_._invalidate(_loc8_);
               }
            }
            _loc6_;
         }
         _loc6_.zpp_inner.name_5 = false;
         var _loc2_:Vec2 = _loc6_;
         if(zpp_inner.var_174 == null)
         {
            zpp_inner.var_174 = ZPP_ArbiterList.method_65(zpp_inner.name_12,true);
         }
         var _loc9_:class_251 = zpp_inner.var_174.iterator();
         _loc9_.zpp_inner.zpp_inner.method_104();
         _loc11_ = _loc9_.zpp_inner.method_108();
         _loc9_.var_98 = true;
         if(_loc9_.var_90 < _loc11_)
         {
            §§push(true);
         }
         else
         {
            _loc9_.var_106 = class_251.var_72;
            class_251.var_72 = _loc9_;
            _loc9_.zpp_inner = null;
            §§push(false);
         }
         if(zpp_inner.var_185 == null)
         {
            zpp_inner.var_185 = ZPP_ConstraintList.method_65(zpp_inner.name_19,true);
         }
         _loc16_ = zpp_inner.var_185;
         _loc16_.zpp_inner.method_104();
         var _loc15_:class_234 = class_234.method_65(_loc16_);
         _loc15_.zpp_inner.zpp_inner.method_104();
         _loc16_ = _loc15_.zpp_inner;
         _loc16_.zpp_inner.method_104();
         if(_loc16_.zpp_inner.var_86)
         {
            _loc16_.zpp_inner.var_86 = false;
            _loc16_.zpp_inner.var_89 = _loc16_.zpp_inner.name_4.length;
         }
         _loc11_ = _loc16_.zpp_inner.var_89;
         _loc15_.var_98 = true;
         if(_loc15_.var_90 < _loc11_)
         {
            §§push(true);
         }
         else
         {
            _loc15_.var_106 = class_234.var_72;
            class_234.var_72 = _loc15_;
            _loc15_.zpp_inner = null;
            §§push(false);
         }
         _loc8_ = _loc2_.zpp_inner;
         §§push(0);
         §§push(Math);
         if(_loc8_._validate != null)
         {
            _loc8_._validate();
         }
         _loc8_ = _loc2_.zpp_inner;
         §§push(_loc2_.zpp_inner.x);
         if(_loc8_._validate != null)
         {
            _loc8_._validate();
         }
         _loc8_ = _loc2_.zpp_inner;
         §§push(§§pop() * _loc2_.zpp_inner.x);
         if(_loc8_._validate != null)
         {
            _loc8_._validate();
         }
         _loc8_ = _loc2_.zpp_inner;
         §§push(_loc2_.zpp_inner.y);
         if(_loc8_._validate != null)
         {
            _loc8_._validate();
         }
         zpp_inner.method_136();
         _loc3_ = Number((§§pop() - §§pop().sqrt(Number(§§pop() + §§pop() * _loc2_.zpp_inner.y))) / (zpp_inner.var_263 * (zpp_inner.space == null?null:zpp_inner.space.outer).zpp_inner.var_197));
         _loc8_ = _loc2_.zpp_inner;
         _loc2_.zpp_inner.outer = null;
         _loc2_.zpp_inner = null;
         _loc6_ = _loc2_;
         _loc6_.var_72 = class_219.poolVec2;
         class_219.poolVec2 = _loc6_;
         _loc14_ = _loc8_;
         if(_loc14_.outer != null)
         {
            _loc14_.outer.zpp_inner = null;
            _loc14_.outer = null;
         }
         _loc14_.var_103 = null;
         _loc14_._validate = null;
         _loc14_._invalidate = null;
         _loc14_.next = ZPP_Vec2.var_72;
         ZPP_Vec2.var_72 = _loc14_;
         return _loc3_;
      }
      
      public final function copy() : Body
      {
         return zpp_inner.copy();
      }
      
      public final function contains(param1:Vec2) : Boolean
      {
         var _loc5_:* = null as ZPP_Shape;
         var _loc6_:* = null as ZPP_Vec2;
         var _loc7_:* = null as Vec2;
         var _loc8_:* = null as ZPP_Vec2;
         var _loc2_:Boolean = param1.zpp_inner.name_5;
         param1.zpp_inner.name_5 = false;
         var _loc3_:Boolean = false;
         var _loc4_:ZNPNode_ZPP_Shape = zpp_inner.shapes.var_73;
         while(_loc4_ != null)
         {
            _loc5_ = _loc4_.var_74;
            if(_loc5_.outer.contains(param1))
            {
               _loc3_ = true;
               break;
            }
            _loc4_ = _loc4_.next;
         }
         param1.zpp_inner.name_5 = _loc2_;
         if(param1.zpp_inner.name_5)
         {
            _loc6_ = param1.zpp_inner;
            param1.zpp_inner.outer = null;
            param1.zpp_inner = null;
            _loc7_ = param1;
            _loc7_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc7_;
            _loc8_ = _loc6_;
            if(_loc8_.outer != null)
            {
               _loc8_.outer.zpp_inner = null;
               _loc8_.outer = null;
            }
            _loc8_.var_103 = null;
            _loc8_._validate = null;
            _loc8_._invalidate = null;
            _loc8_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc8_;
            true;
         }
         else
         {
            false;
         }
         return _loc3_;
      }
      
      public final function method_869() : Vec3
      {
         var _loc5_:* = null as ZPP_Constraint;
         var _loc6_:* = null as Vec3;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:* = null as ZPP_Vec3;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:ZNPNode_ZPP_Constraint = zpp_inner.name_19.var_73;
         while(_loc4_ != null)
         {
            _loc5_ = _loc4_.var_74;
            _loc6_ = _loc5_.outer.method_262(this);
            _loc7_ = 1;
            _loc8_ = _loc7_;
            _loc9_ = _loc6_.zpp_inner;
            §§push(_loc1_);
            if(_loc9_._validate != null)
            {
               _loc9_._validate();
            }
            _loc1_ = Number(Number(§§pop() + _loc6_.zpp_inner.x * _loc8_));
            _loc9_ = _loc6_.zpp_inner;
            §§push(_loc2_);
            if(_loc9_._validate != null)
            {
               _loc9_._validate();
            }
            _loc2_ = Number(Number(§§pop() + _loc6_.zpp_inner.y * _loc8_));
            _loc9_ = _loc6_.zpp_inner;
            §§push(_loc3_);
            if(_loc9_._validate != null)
            {
               _loc9_._validate();
            }
            _loc3_ = Number(Number(§§pop() + _loc6_.zpp_inner.z * _loc7_));
            _loc6_.dispose();
            _loc4_ = _loc4_.next;
         }
         return Vec3.method_65(_loc1_,_loc2_,_loc3_);
      }
      
      public final function method_442(param1:int = -1, param2:class_205 = undefined) : class_205
      {
         return zpp_inner.method_442(param1,param2);
      }
      
      public final function method_342(param1:Body = undefined) : Vec3
      {
         var _loc7_:* = null as class_252;
         var _loc8_:int = 0;
         var _loc9_:* = null as ZPP_Arbiter;
         var _loc10_:* = null as Vec3;
         var _loc11_:* = null as class_252;
         var _loc13_:* = null as ZPP_Vec3;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:class_254 = zpp_inner.name_12;
         if(zpp_inner.var_174 == null)
         {
            zpp_inner.var_174 = ZPP_ArbiterList.method_65(zpp_inner.name_12,true);
         }
         var _loc6_:class_251 = zpp_inner.var_174.iterator();
         _loc6_.zpp_inner.zpp_inner.method_104();
         _loc8_ = _loc6_.zpp_inner.method_108();
         _loc6_.var_98 = true;
         if(_loc6_.var_90 < _loc8_)
         {
            §§push(true);
         }
         else
         {
            _loc6_.var_106 = class_251.var_72;
            class_251.var_72 = _loc6_;
            _loc6_.zpp_inner = null;
            §§push(false);
         }
         return Vec3.method_65(_loc2_,_loc3_,_loc4_);
      }
      
      public final function method_715(param1:Vec2, param2:Vec2 = undefined, param3:Boolean = false) : Body
      {
         var _loc4_:* = null as ZPP_Vec2;
         var _loc5_:* = null as Vec2;
         var _loc6_:* = null as ZPP_Vec2;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         if(!!param3 && zpp_inner.var_112.var_129)
         {
            if(param1.zpp_inner.name_5)
            {
               _loc4_ = param1.zpp_inner;
               param1.zpp_inner.outer = null;
               param1.zpp_inner = null;
               _loc5_ = param1;
               _loc5_.var_72 = class_219.poolVec2;
               class_219.poolVec2 = _loc5_;
               _loc6_ = _loc4_;
               if(_loc6_.outer != null)
               {
                  _loc6_.outer.zpp_inner = null;
                  _loc6_.outer = null;
               }
               _loc6_.var_103 = null;
               _loc6_._validate = null;
               _loc6_._invalidate = null;
               _loc6_.next = ZPP_Vec2.var_72;
               ZPP_Vec2.var_72 = _loc6_;
               true;
            }
            else
            {
               false;
            }
            if(param2 != null)
            {
               if(param2.zpp_inner.name_5)
               {
                  _loc4_ = param2.zpp_inner;
                  param2.zpp_inner.outer = null;
                  param2.zpp_inner = null;
                  _loc5_ = param2;
                  _loc5_.var_72 = class_219.poolVec2;
                  class_219.poolVec2 = _loc5_;
                  _loc6_ = _loc4_;
                  if(_loc6_.outer != null)
                  {
                     _loc6_.outer.zpp_inner = null;
                     _loc6_.outer = null;
                  }
                  _loc6_.var_103 = null;
                  _loc6_._validate = null;
                  _loc6_._invalidate = null;
                  _loc6_.next = ZPP_Vec2.var_72;
                  ZPP_Vec2.var_72 = _loc6_;
               }
               else
               {
                  false;
               }
            }
            return this;
         }
         zpp_inner.method_136();
         _loc7_ = Number(zpp_inner.var_123);
         _loc4_ = param1.zpp_inner;
         §§push(zpp_inner);
         §§push(zpp_inner.var_104);
         if(_loc4_._validate != null)
         {
            _loc4_._validate();
         }
         §§pop().var_104 = Number(§§pop() + param1.zpp_inner.x * _loc7_);
         _loc4_ = param1.zpp_inner;
         §§push(zpp_inner);
         §§push(zpp_inner.var_105);
         if(_loc4_._validate != null)
         {
            _loc4_._validate();
         }
         §§pop().var_105 = Number(§§pop() + param1.zpp_inner.y * _loc7_);
         if(param2 != null)
         {
            _loc7_ = 0;
            _loc8_ = 0;
            _loc4_ = param2.zpp_inner;
            if(_loc4_._validate != null)
            {
               _loc4_._validate();
            }
            _loc7_ = Number(param2.zpp_inner.x - zpp_inner.var_95);
            _loc4_ = param2.zpp_inner;
            if(_loc4_._validate != null)
            {
               _loc4_._validate();
            }
            _loc8_ = Number(param2.zpp_inner.y - zpp_inner.var_96);
            zpp_inner.method_204();
            _loc4_ = param1.zpp_inner;
            §§push(zpp_inner);
            §§push(zpp_inner.var_94);
            if(_loc4_._validate != null)
            {
               _loc4_._validate();
            }
            _loc4_ = param1.zpp_inner;
            §§push(param1.zpp_inner.y * _loc7_);
            if(_loc4_._validate != null)
            {
               _loc4_._validate();
            }
            §§pop().var_94 = Number(§§pop() + (§§pop() - param1.zpp_inner.x * _loc8_) * zpp_inner.var_136);
            if(param2.zpp_inner.name_5)
            {
               _loc4_ = param2.zpp_inner;
               param2.zpp_inner.outer = null;
               param2.zpp_inner = null;
               _loc5_ = param2;
               _loc5_.var_72 = class_219.poolVec2;
               class_219.poolVec2 = _loc5_;
               _loc6_ = _loc4_;
               if(_loc6_.outer != null)
               {
                  _loc6_.outer.zpp_inner = null;
                  _loc6_.outer = null;
               }
               _loc6_.var_103 = null;
               _loc6_._validate = null;
               _loc6_._invalidate = null;
               _loc6_.next = ZPP_Vec2.var_72;
               ZPP_Vec2.var_72 = _loc6_;
            }
            else
            {
               false;
            }
         }
         if(!param3)
         {
            if(zpp_inner.type == class_223.var_188)
            {
               zpp_inner.method_106();
            }
         }
         if(param1.zpp_inner.name_5)
         {
            _loc4_ = param1.zpp_inner;
            param1.zpp_inner.outer = null;
            param1.zpp_inner = null;
            _loc5_ = param1;
            _loc5_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc5_;
            _loc6_ = _loc4_;
            if(_loc6_.outer != null)
            {
               _loc6_.outer.zpp_inner = null;
               _loc6_.outer = null;
            }
            _loc6_.var_103 = null;
            _loc6_._validate = null;
            _loc6_._invalidate = null;
            _loc6_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc6_;
         }
         else
         {
            false;
         }
         return this;
      }
      
      public final function method_882(param1:Number, param2:Boolean = false) : Body
      {
         if(!!param2 && zpp_inner.var_112.var_129)
         {
            return this;
         }
         zpp_inner.method_204();
         zpp_inner.var_94 = Number(zpp_inner.var_94 + param1 * zpp_inner.var_136);
         if(!param2)
         {
            if(zpp_inner.type == class_223.var_188)
            {
               zpp_inner.method_106();
            }
         }
         return this;
      }
      
      public final function align() : Body
      {
         var _loc2_:* = NaN;
         var _loc5_:* = null as Vec2;
         var _loc6_:Boolean = false;
         var _loc7_:* = null as ZPP_Vec2;
         zpp_inner.method_112(class_2.method_14(-1820302468));
         zpp_inner.method_299();
         _loc2_ = Number(-zpp_inner.var_82);
         var _loc3_:Number = -zpp_inner.var_81;
         if(class_219.poolVec2 == null)
         {
            _loc5_ = new Vec2();
         }
         else
         {
            _loc5_ = class_219.poolVec2;
            class_219.poolVec2 = _loc5_.var_72;
            _loc5_.var_72 = null;
         }
         if(_loc5_.zpp_inner == null)
         {
            _loc6_ = false;
            if(ZPP_Vec2.var_72 == null)
            {
               _loc7_ = new ZPP_Vec2();
            }
            else
            {
               _loc7_ = ZPP_Vec2.var_72;
               ZPP_Vec2.var_72 = _loc7_.next;
               _loc7_.next = null;
            }
            _loc7_.name_5 = false;
            _loc7_.var_109 = _loc6_;
            _loc7_.x = _loc2_;
            _loc7_.y = _loc3_;
            _loc5_.zpp_inner = _loc7_;
            _loc5_.zpp_inner.outer = _loc5_;
         }
         else
         {
            _loc7_ = _loc5_.zpp_inner;
            §§push(false);
            if(_loc7_._validate != null)
            {
               _loc7_._validate();
            }
            if(_loc5_.zpp_inner.x == _loc2_)
            {
               §§pop();
               _loc7_ = _loc5_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               §§push(_loc5_.zpp_inner.y == _loc3_);
            }
            if(!§§pop())
            {
               _loc5_.zpp_inner.x = _loc2_;
               _loc5_.zpp_inner.y = _loc3_;
               _loc7_ = _loc5_.zpp_inner;
               if(_loc7_._invalidate != null)
               {
                  _loc7_._invalidate(_loc7_);
               }
            }
            _loc5_;
         }
         _loc5_.zpp_inner.name_5 = false;
         var _loc1_:Vec2 = _loc5_;
         translateShapes(_loc1_);
         _loc5_ = localVectorToWorld(_loc1_);
         if(zpp_inner.var_245 == null)
         {
            zpp_inner.method_185();
         }
         zpp_inner.var_245.method_549(_loc5_);
         if(zpp_inner.var_306 < 1.79e308)
         {
            _loc2_ = 1;
            _loc7_ = _loc5_.zpp_inner;
            §§push(zpp_inner);
            §§push(zpp_inner.var_306);
            if(_loc7_._validate != null)
            {
               _loc7_._validate();
            }
            §§pop().var_306 = §§pop() - _loc5_.zpp_inner.x * _loc2_;
            _loc7_ = _loc5_.zpp_inner;
            §§push(zpp_inner);
            §§push(zpp_inner.var_315);
            if(_loc7_._validate != null)
            {
               _loc7_._validate();
            }
            §§pop().var_315 = §§pop() - _loc5_.zpp_inner.y * _loc2_;
         }
         _loc7_ = _loc1_.zpp_inner;
         _loc1_.zpp_inner.outer = null;
         _loc1_.zpp_inner = null;
         var _loc8_:Vec2 = _loc1_;
         _loc8_.var_72 = class_219.poolVec2;
         class_219.poolVec2 = _loc8_;
         var _loc9_:ZPP_Vec2 = _loc7_;
         if(_loc9_.outer != null)
         {
            _loc9_.outer.zpp_inner = null;
            _loc9_.outer = null;
         }
         _loc9_.var_103 = null;
         _loc9_._validate = null;
         _loc9_._invalidate = null;
         _loc9_.next = ZPP_Vec2.var_72;
         ZPP_Vec2.var_72 = _loc9_;
         _loc7_ = _loc5_.zpp_inner;
         _loc5_.zpp_inner.outer = null;
         _loc5_.zpp_inner = null;
         _loc8_ = _loc5_;
         _loc8_.var_72 = class_219.poolVec2;
         class_219.poolVec2 = _loc8_;
         _loc9_ = _loc7_;
         if(_loc9_.outer != null)
         {
            _loc9_.outer.zpp_inner = null;
            _loc9_.outer = null;
         }
         _loc9_.var_103 = null;
         _loc9_._validate = null;
         _loc9_._invalidate = null;
         _loc9_.next = ZPP_Vec2.var_72;
         ZPP_Vec2.var_72 = _loc9_;
         return this;
      }
   }
}
