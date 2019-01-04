package package_31
{
   import nape.constraint.Constraint;
   import nape.constraint.class_218;
   import nape.constraint.class_234;
   import nape.geom.ConvexResult;
   import nape.geom.RayResult;
   import nape.geom.Vec2;
   import nape.geom.class_232;
   import nape.geom.class_233;
   import nape.geom.class_236;
   import nape.geom.class_237;
   import package_26.class_222;
   import package_26.class_227;
   import package_29.Body;
   import package_29.Compound;
   import package_29.class_205;
   import package_29.class_229;
   import package_29.class_231;
   import package_29.class_235;
   import package_32.Shape;
   import package_32.class_226;
   import package_32.class_230;
   import package_34.class_221;
   import package_34.class_224;
   import zpp_nape.constraint.ZPP_Constraint;
   import zpp_nape.dynamics.ZPP_InteractionFilter;
   import zpp_nape.dynamics.ZPP_InteractionGroup;
   import zpp_nape.dynamics.class_228;
   import zpp_nape.geom.ZPP_Vec2;
   import zpp_nape.phys.ZPP_Body;
   import zpp_nape.phys.ZPP_Compound;
   import zpp_nape.phys.ZPP_Interactor;
   import zpp_nape.shape.ZPP_Shape;
   import zpp_nape.space.ZPP_Space;
   import zpp_nape.util.ZNPNode_ZPP_Constraint;
   import zpp_nape.util.class_219;
   import zpp_nape.util.class_223;
   
   public final class class_197
   {
       
      
      public var zpp_inner:ZPP_Space;
      
      public function class_197(param1:Vec2 = undefined, param2:class_225 = undefined)
      {
         var _loc3_:* = null as ZPP_Vec2;
         var _loc4_:* = null as Vec2;
         var _loc5_:* = null as ZPP_Vec2;
         zpp_inner = null;
         zpp_inner = new ZPP_Space(param1 == null?null:param1.zpp_inner,param2);
         zpp_inner.outer = this;
         if(param1 != null)
         {
            if(param1.zpp_inner.name_5)
            {
               _loc3_ = param1.zpp_inner;
               param1.zpp_inner.outer = null;
               param1.zpp_inner = null;
               _loc4_ = param1;
               _loc4_.var_72 = class_219.poolVec2;
               class_219.poolVec2 = _loc4_;
               _loc5_ = _loc3_;
               if(_loc5_.outer != null)
               {
                  _loc5_.outer.zpp_inner = null;
                  _loc5_.outer = null;
               }
               _loc5_.var_103 = null;
               _loc5_._validate = null;
               _loc5_._invalidate = null;
               _loc5_.next = ZPP_Vec2.var_72;
               ZPP_Vec2.var_72 = _loc5_;
            }
            else
            {
               false;
            }
         }
      }
      
      public static function method_321(param1:Shape, param2:Shape) : class_221
      {
         var _loc5_:int = 0;
         var _loc10_:* = null as ZPP_Constraint;
         var _loc11_:* = null as ZPP_InteractionGroup;
         var _loc12_:* = null as ZPP_Interactor;
         var _loc13_:* = null as ZPP_InteractionGroup;
         var _loc14_:Boolean = false;
         var _loc15_:* = null as ZPP_InteractionFilter;
         var _loc16_:* = null as ZPP_InteractionFilter;
         if((param1.zpp_inner.body != null?param1.zpp_inner.body.outer:null).zpp_inner.type == class_223.var_240 && (param2.zpp_inner.body != null?param2.zpp_inner.body.outer:null).zpp_inner.type == class_223.var_240)
         {
            return null;
         }
         if((param1.zpp_inner.body != null?param1.zpp_inner.body.outer:null) == (param2.zpp_inner.body != null?param2.zpp_inner.body.outer:null))
         {
            return null;
         }
         var _loc3_:ZPP_Shape = param1.zpp_inner;
         var _loc4_:ZPP_Shape = param2.zpp_inner;
         var _loc6_:ZPP_Body = _loc3_.body;
         var _loc7_:ZPP_Body = _loc4_.body;
         var _loc8_:Boolean = false;
         var _loc9_:ZNPNode_ZPP_Constraint = _loc6_.name_19.var_73;
         while(_loc9_ != null)
         {
            _loc10_ = _loc9_.var_74;
            if(!!_loc10_.name_36 && _loc10_.method_312(_loc6_.id,_loc7_.id))
            {
               _loc8_ = true;
               break;
            }
            _loc9_ = _loc9_.next;
         }
         if((_loc3_.sensorEnabled || _loc4_.sensorEnabled) && ((_loc15_.name_48 & _loc16_.name_46) != 0 && (_loc16_.name_48 & _loc15_.name_46) != 0))
         {
            _loc5_ = 2;
         }
         else if((_loc3_.fluidEnabled || _loc4_.fluidEnabled) && ((_loc15_.name_43 & _loc16_.name_47) != 0 && (_loc16_.name_43 & _loc15_.name_47) != 0) && !(_loc6_.var_123 == 0 && _loc7_.var_123 == 0 && _loc6_.var_136 == 0 && _loc7_.var_136 == 0))
         {
            _loc5_ = 0;
         }
         else
         {
            _loc15_ = _loc3_.filter;
            _loc16_ = _loc4_.filter;
            if((_loc15_.name_14 & _loc16_.name_13) != 0 && (_loc16_.name_14 & _loc15_.name_13) != 0 && !(_loc6_.var_123 == 0 && _loc7_.var_123 == 0 && _loc6_.var_136 == 0 && _loc7_.var_136 == 0))
            {
               _loc5_ = 1;
            }
            else
            {
               _loc5_ = -1;
            }
         }
         switch(_loc5_)
         {
            case 0:
               if(class_223.var_193 == null)
               {
                  class_223.var_87 = true;
                  class_223.var_193 = new class_221();
                  class_223.var_87 = false;
               }
               return class_223.var_193;
            case 1:
               if(class_223.var_189 == null)
               {
                  class_223.var_87 = true;
                  class_223.var_189 = new class_221();
                  class_223.var_87 = false;
               }
               return class_223.var_189;
            case 2:
               if(class_223.var_187 == null)
               {
                  class_223.var_87 = true;
                  class_223.var_187 = new class_221();
                  class_223.var_87 = false;
               }
               return class_223.var_187;
         }
      }
      
      public final function method_368(param1:Function) : void
      {
         var _loc3_:* = null as class_218;
         var _loc4_:* = null as Constraint;
         var _loc5_:int = 0;
         var _loc7_:* = null as class_235;
         var _loc8_:* = null as Compound;
         _loc3_ = zpp_inner.var_185;
         _loc3_.zpp_inner.method_104();
         var _loc2_:class_234 = class_234.method_65(_loc3_);
         _loc2_.zpp_inner.zpp_inner.method_104();
         _loc3_ = _loc2_.zpp_inner;
         _loc3_.zpp_inner.method_104();
         if(_loc3_.zpp_inner.var_86)
         {
            _loc3_.zpp_inner.var_86 = false;
            _loc3_.zpp_inner.var_89 = _loc3_.zpp_inner.name_4.length;
         }
         _loc5_ = _loc3_.zpp_inner.var_89;
         _loc2_.var_98 = true;
         if(_loc2_.var_90 < _loc5_)
         {
            §§push(true);
         }
         else
         {
            _loc2_.var_106 = class_234.var_72;
            class_234.var_72 = _loc2_;
            _loc2_.zpp_inner = null;
            §§push(false);
         }
         _loc7_ = zpp_inner.var_241;
         _loc7_.zpp_inner.method_104();
         var _loc6_:class_229 = class_229.method_65(_loc7_);
         _loc6_.zpp_inner.zpp_inner.method_104();
         _loc7_ = _loc6_.zpp_inner;
         _loc7_.zpp_inner.method_104();
         if(_loc7_.zpp_inner.var_86)
         {
            _loc7_.zpp_inner.var_86 = false;
            _loc7_.zpp_inner.var_89 = _loc7_.zpp_inner.name_4.length;
         }
         _loc5_ = _loc7_.zpp_inner.var_89;
         _loc6_.var_98 = true;
         if(_loc6_.var_90 < _loc5_)
         {
            §§push(true);
         }
         else
         {
            _loc6_.var_106 = class_229.var_72;
            class_229.var_72 = _loc6_;
            _loc6_.zpp_inner = null;
            §§push(false);
         }
      }
      
      public final function method_401(param1:Function) : void
      {
         var _loc3_:* = null as class_235;
         var _loc4_:* = null as Compound;
         var _loc5_:int = 0;
         _loc3_ = zpp_inner.var_241;
         _loc3_.zpp_inner.method_104();
         var _loc2_:class_229 = class_229.method_65(_loc3_);
         _loc2_.zpp_inner.zpp_inner.method_104();
         _loc3_ = _loc2_.zpp_inner;
         _loc3_.zpp_inner.method_104();
         if(_loc3_.zpp_inner.var_86)
         {
            _loc3_.zpp_inner.var_86 = false;
            _loc3_.zpp_inner.var_89 = _loc3_.zpp_inner.name_4.length;
         }
         _loc5_ = _loc3_.zpp_inner.var_89;
         _loc2_.var_98 = true;
         if(_loc2_.var_90 < _loc5_)
         {
            §§push(true);
         }
         else
         {
            _loc2_.var_106 = class_229.var_72;
            class_229.var_72 = _loc2_;
            _loc2_.zpp_inner = null;
            §§push(false);
         }
      }
      
      public final function method_161(param1:Function) : void
      {
         var _loc3_:* = null as class_205;
         var _loc4_:* = null as Body;
         var _loc5_:int = 0;
         var _loc7_:* = null as class_235;
         var _loc8_:* = null as Compound;
         _loc3_ = zpp_inner.var_269;
         _loc3_.zpp_inner.method_104();
         var _loc2_:class_231 = class_231.method_65(_loc3_);
         _loc2_.zpp_inner.zpp_inner.method_104();
         _loc3_ = _loc2_.zpp_inner;
         _loc3_.zpp_inner.method_104();
         if(_loc3_.zpp_inner.var_86)
         {
            _loc3_.zpp_inner.var_86 = false;
            _loc3_.zpp_inner.var_89 = _loc3_.zpp_inner.name_4.length;
         }
         _loc5_ = _loc3_.zpp_inner.var_89;
         _loc2_.var_98 = true;
         if(_loc2_.var_90 < _loc5_)
         {
            §§push(true);
         }
         else
         {
            _loc2_.var_106 = class_231.var_72;
            class_231.var_72 = _loc2_;
            _loc2_.zpp_inner = null;
            §§push(false);
         }
         _loc7_ = zpp_inner.var_241;
         _loc7_.zpp_inner.method_104();
         var _loc6_:class_229 = class_229.method_65(_loc7_);
         _loc6_.zpp_inner.zpp_inner.method_104();
         _loc7_ = _loc6_.zpp_inner;
         _loc7_.zpp_inner.method_104();
         if(_loc7_.zpp_inner.var_86)
         {
            _loc7_.zpp_inner.var_86 = false;
            _loc7_.zpp_inner.var_89 = _loc7_.zpp_inner.name_4.length;
         }
         _loc5_ = _loc7_.zpp_inner.var_89;
         _loc6_.var_98 = true;
         if(_loc6_.var_90 < _loc5_)
         {
            §§push(true);
         }
         else
         {
            _loc6_.var_106 = class_229.var_72;
            class_229.var_72 = _loc6_;
            _loc6_.zpp_inner = null;
            §§push(false);
         }
      }
      
      public final function name_53(param1:Number, param2:int = 10, param3:int = 10) : void
      {
         zpp_inner.name_53(param1,param2,param3);
      }
      
      public final function method_267(param1:Vec2, param2:class_222 = undefined, param3:class_230 = undefined) : class_230
      {
         var _loc5_:* = null as ZPP_Vec2;
         var _loc6_:* = null as Vec2;
         var _loc7_:* = null as ZPP_Vec2;
         _loc5_ = param1.zpp_inner;
         §§push(zpp_inner);
         if(_loc5_._validate != null)
         {
            _loc5_._validate();
         }
         _loc5_ = param1.zpp_inner;
         §§push(param1.zpp_inner.x);
         if(_loc5_._validate != null)
         {
            _loc5_._validate();
         }
         var _loc4_:class_230 = §§pop().method_267(§§pop(),param1.zpp_inner.y,param2 == null?null:param2.zpp_inner,param3);
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
         return _loc4_;
      }
      
      public final function shapesInShape(param1:Shape, param2:Boolean = false, param3:class_222 = undefined, param4:class_230 = undefined) : class_230
      {
         return zpp_inner.shapesInShape(param1.zpp_inner,param2,param3 == null?null:param3.zpp_inner,param4);
      }
      
      public final function method_256(param1:Vec2, param2:Number, param3:Boolean = false, param4:class_222 = undefined, param5:class_230 = undefined) : class_230
      {
         var _loc7_:* = null as ZPP_Vec2;
         var _loc8_:* = null as Vec2;
         var _loc9_:* = null as ZPP_Vec2;
         var _loc6_:class_230 = zpp_inner.method_256(param1,param2,param3,param4 == null?null:param4.zpp_inner,param5);
         if(param1.zpp_inner.name_5)
         {
            _loc7_ = param1.zpp_inner;
            param1.zpp_inner.outer = null;
            param1.zpp_inner = null;
            _loc8_ = param1;
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
         }
         else
         {
            false;
         }
         return _loc6_;
      }
      
      public final function method_853(param1:Body, param2:class_222 = undefined, param3:class_230 = undefined) : class_230
      {
         var _loc4_:* = null as class_230;
         var _loc6_:* = null as class_230;
         var _loc7_:* = null as Shape;
         var _loc8_:int = 0;
         if(param3 == null)
         {
            _loc4_ = new class_230();
         }
         else
         {
            _loc4_ = param3;
         }
         _loc6_ = param1.zpp_inner.var_222;
         _loc6_.zpp_inner.method_104();
         var _loc5_:class_226 = class_226.method_65(_loc6_);
         _loc5_.zpp_inner.zpp_inner.method_104();
         _loc6_ = _loc5_.zpp_inner;
         _loc6_.zpp_inner.method_104();
         if(_loc6_.zpp_inner.var_86)
         {
            _loc6_.zpp_inner.var_86 = false;
            _loc6_.zpp_inner.var_89 = _loc6_.zpp_inner.name_4.length;
         }
         _loc8_ = _loc6_.zpp_inner.var_89;
         _loc5_.var_98 = true;
         if(_loc5_.var_90 < _loc8_)
         {
            §§push(true);
         }
         else
         {
            _loc5_.var_106 = class_226.var_72;
            class_226.var_72 = _loc5_;
            _loc5_.zpp_inner = null;
            §§push(false);
         }
         return _loc4_;
      }
      
      public final function method_178(param1:class_237, param2:Boolean = false, param3:Boolean = true, param4:class_222 = undefined, param5:class_230 = undefined) : class_230
      {
         return zpp_inner.method_178(param1,param3,param2,param4 == null?null:param4.zpp_inner,param5);
      }
      
      public function set method_645(param1:Number) : Number
      {
         var _loc2_:Number = param1;
         zpp_inner.var_585 = _loc2_;
         return zpp_inner.var_585;
      }
      
      public function set method_671(param1:Number) : Number
      {
         var _loc2_:Number = param1;
         zpp_inner.var_626 = _loc2_;
         return zpp_inner.var_626;
      }
      
      public function set method_594(param1:Boolean) : Boolean
      {
         zpp_inner.var_595 = param1;
         return zpp_inner.var_595;
      }
      
      public function set method_409(param1:Vec2) : Vec2
      {
         var _loc5_:* = null as ZPP_Vec2;
         var _loc7_:* = null as Vec2;
         var _loc8_:* = null as ZPP_Vec2;
         if(zpp_inner.var_184 == null)
         {
            zpp_inner.method_266();
         }
         var _loc2_:Vec2 = zpp_inner.var_184;
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
         if(zpp_inner.var_184 == null)
         {
            zpp_inner.method_266();
         }
         return zpp_inner.var_184;
      }
      
      public final function method_222(param1:class_232, param2:Boolean = false, param3:class_222 = undefined, param4:class_233 = undefined) : class_233
      {
         return zpp_inner.method_222(param1,param2,param3,param4);
      }
      
      public final function method_176(param1:class_232, param2:Boolean = false, param3:class_222 = undefined) : RayResult
      {
         return zpp_inner.method_176(param1,param2,param3);
      }
      
      public function get method_645() : Number
      {
         return zpp_inner.var_585;
      }
      
      public function get method_671() : Number
      {
         return zpp_inner.var_626;
      }
      
      public function get name_29() : Body
      {
         return zpp_inner.name_71;
      }
      
      public function get name_21() : *
      {
         if(zpp_inner.name_21 == null)
         {
            zpp_inner.name_21 = {};
         }
         return zpp_inner.name_21;
      }
      
      public function get method_915() : int
      {
         return zpp_inner.var_114;
      }
      
      public function get method_594() : Boolean
      {
         return zpp_inner.var_595;
      }
      
      public function get method_776() : class_218
      {
         return zpp_inner.var_883;
      }
      
      public function get method_765() : class_205
      {
         return zpp_inner.var_850;
      }
      
      public function get name_15() : class_224
      {
         return zpp_inner.var_503;
      }
      
      public function get method_409() : Vec2
      {
         if(zpp_inner.var_184 == null)
         {
            zpp_inner.method_266();
         }
         return zpp_inner.var_184;
      }
      
      public function get method_752() : Number
      {
         return zpp_inner.time;
      }
      
      public function get name_19() : class_218
      {
         return zpp_inner.var_185;
      }
      
      public function get name_27() : class_235
      {
         return zpp_inner.var_241;
      }
      
      public function get method_298() : class_225
      {
         if(zpp_inner.var_166.var_432)
         {
            if(class_223.var_506 == null)
            {
               class_223.var_87 = true;
               class_223.var_506 = new class_225();
               class_223.var_87 = false;
            }
            return class_223.var_506;
         }
         if(class_223.var_495 == null)
         {
            class_223.var_87 = true;
            class_223.var_495 = new class_225();
            class_223.var_87 = false;
         }
         return class_223.var_495;
      }
      
      public function get name_30() : class_205
      {
         return zpp_inner.var_269;
      }
      
      public function get name_12() : class_227
      {
         var _loc1_:* = null as class_228;
         if(zpp_inner.var_174 == null)
         {
            _loc1_ = new class_228();
            _loc1_.space = zpp_inner;
            zpp_inner.var_174 = _loc1_;
         }
         return zpp_inner.var_174;
      }
      
      public final function method_431(param1:Shape, param2:Number, param3:Boolean = false, param4:class_222 = undefined, param5:class_236 = undefined) : class_236
      {
         return zpp_inner.method_431(param1.zpp_inner,param2,param4,param3,param5);
      }
      
      public final function method_454(param1:Shape, param2:Number, param3:Boolean = false, param4:class_222 = undefined) : ConvexResult
      {
         return zpp_inner.method_454(param1.zpp_inner,param2,param4,param3);
      }
      
      public final function clear() : void
      {
         zpp_inner.clear();
      }
      
      public final function method_187(param1:Vec2, param2:class_222 = undefined, param3:class_205 = undefined) : class_205
      {
         var _loc5_:* = null as ZPP_Vec2;
         var _loc6_:* = null as Vec2;
         var _loc7_:* = null as ZPP_Vec2;
         _loc5_ = param1.zpp_inner;
         §§push(zpp_inner);
         if(_loc5_._validate != null)
         {
            _loc5_._validate();
         }
         _loc5_ = param1.zpp_inner;
         §§push(param1.zpp_inner.x);
         if(_loc5_._validate != null)
         {
            _loc5_._validate();
         }
         var _loc4_:class_205 = §§pop().method_187(§§pop(),param1.zpp_inner.y,param2 == null?null:param2.zpp_inner,param3);
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
         return _loc4_;
      }
      
      public final function bodiesInShape(param1:Shape, param2:Boolean = false, param3:class_222 = undefined, param4:class_205 = undefined) : class_205
      {
         return zpp_inner.bodiesInShape(param1.zpp_inner,param2,param3 == null?null:param3.zpp_inner,param4);
      }
      
      public final function method_261(param1:Vec2, param2:Number, param3:Boolean = false, param4:class_222 = undefined, param5:class_205 = undefined) : class_205
      {
         var _loc7_:* = null as ZPP_Vec2;
         var _loc8_:* = null as Vec2;
         var _loc9_:* = null as ZPP_Vec2;
         var _loc6_:class_205 = zpp_inner.method_261(param1,param2,param3,param4 == null?null:param4.zpp_inner,param5);
         if(param1.zpp_inner.name_5)
         {
            _loc7_ = param1.zpp_inner;
            param1.zpp_inner.outer = null;
            param1.zpp_inner = null;
            _loc8_ = param1;
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
         }
         else
         {
            false;
         }
         return _loc6_;
      }
      
      public final function method_924(param1:Body, param2:class_222 = undefined, param3:class_205 = undefined) : class_205
      {
         var _loc4_:* = null as class_205;
         var _loc6_:* = null as class_230;
         var _loc7_:* = null as Shape;
         var _loc8_:int = 0;
         var _loc9_:* = null as class_205;
         if(param3 == null)
         {
            _loc4_ = new class_205();
         }
         else
         {
            _loc4_ = param3;
         }
         _loc6_ = param1.zpp_inner.var_222;
         _loc6_.zpp_inner.method_104();
         var _loc5_:class_226 = class_226.method_65(_loc6_);
         _loc5_.zpp_inner.zpp_inner.method_104();
         _loc6_ = _loc5_.zpp_inner;
         _loc6_.zpp_inner.method_104();
         if(_loc6_.zpp_inner.var_86)
         {
            _loc6_.zpp_inner.var_86 = false;
            _loc6_.zpp_inner.var_89 = _loc6_.zpp_inner.name_4.length;
         }
         _loc8_ = _loc6_.zpp_inner.var_89;
         _loc5_.var_98 = true;
         if(_loc5_.var_90 < _loc8_)
         {
            §§push(true);
         }
         else
         {
            _loc5_.var_106 = class_226.var_72;
            class_226.var_72 = _loc5_;
            _loc5_.zpp_inner = null;
            §§push(false);
         }
         return _loc4_;
      }
      
      public final function method_201(param1:class_237, param2:Boolean = false, param3:Boolean = true, param4:class_222 = undefined, param5:class_205 = undefined) : class_205
      {
         return zpp_inner.method_201(param1,param3,param2,param4 == null?null:param4.zpp_inner,param5);
      }
   }
}
