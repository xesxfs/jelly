package zpp_nape.constraint
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
   import flash.class_189;
   import nape.constraint.Constraint;
   import nape.constraint.class_196;
   import nape.geom.Vec2;
   import nape.geom.Vec3;
   import package_29.Body;
   import package_33.Debug;
   import package_35.class_238;
   import zpp_nape.geom.ZPP_Vec2;
   import zpp_nape.phys.ZPP_Body;
   import zpp_nape.space.ZPP_Component;
   import zpp_nape.util.class_219;
   import zpp_nape.util.class_223;
   
   public final class class_220 extends ZPP_Constraint
   {
       
      
      public var wrap_a2:Vec2;
      
      public var wrap_a1:Vec2;
      
      public var var_678:Boolean;
      
      public var outer_zn:class_196;
      
      public var var_173:Number;
      
      public var var_171:Number;
      
      public var var_172:Number;
      
      public var var_489:Number;
      
      public var var_196:Number;
      
      public var var_198:Number;
      
      public var var_399:Number;
      
      public var var_296:Number;
      
      public var var_295:Number;
      
      public var b2:ZPP_Body;
      
      public var b1:ZPP_Body;
      
      public var a2rely:Number;
      
      public var a2relx:Number;
      
      public var a2localy:Number;
      
      public var a2localx:Number;
      
      public var a1rely:Number;
      
      public var a1relx:Number;
      
      public var a1localy:Number;
      
      public var a1localx:Number;
      
      public function class_220()
      {
         var_678 = false;
         var_296 = 0;
         var_295 = 0;
         var_399 = 0;
         var_489 = 0;
         var_196 = 0;
         var_198 = 0;
         var_173 = 0;
         var_171 = 0;
         var_172 = 0;
         wrap_a2 = null;
         a2rely = 0;
         a2relx = 0;
         a2localy = 0;
         a2localx = 0;
         b2 = null;
         wrap_a1 = null;
         a1rely = 0;
         a1relx = 0;
         a1localy = 0;
         a1localx = 0;
         b1 = null;
         outer_zn = null;
         super();
         var_678 = false;
         var_198 = 0;
         var_196 = 0;
         var_489 = 1.79e308;
         a1localx = 0;
         a1localy = 0;
         a1relx = 0;
         a1rely = 0;
         a2localx = 0;
         a2localy = 0;
         a2relx = 0;
         a2rely = 0;
      }
      
      override public function warmStart() : void
      {
         var _loc1_:Number = b1.var_123;
         b1.var_104 = b1.var_104 - var_198 * _loc1_;
         b1.var_105 = b1.var_105 - var_196 * _loc1_;
         _loc1_ = b2.var_123;
         b2.var_104 = Number(b2.var_104 + var_198 * _loc1_);
         b2.var_105 = Number(b2.var_105 + var_196 * _loc1_);
         b1.var_94 = b1.var_94 - (var_196 * a1relx - var_198 * a1rely) * b1.var_136;
         b2.var_94 = Number(b2.var_94 + (var_196 * a2relx - var_198 * a2rely) * b2.var_136);
      }
      
      override public function method_508() : void
      {
         if(b1 != null && b1.type == class_223.var_188)
         {
            b1.method_106();
         }
         if(b2 != null && b2.type == class_223.var_188)
         {
            b2.method_106();
         }
      }
      
      public final function validate_a2() : void
      {
         wrap_a2.zpp_inner.x = a2localx;
         wrap_a2.zpp_inner.y = a2localy;
      }
      
      public final function validate_a1() : void
      {
         wrap_a1.zpp_inner.x = a1localx;
         wrap_a1.zpp_inner.y = a1localy;
      }
      
      override public function validate() : void
      {
         if(b1 == null || b2 == null)
         {
            class_189.var_771 = new Error();
            throw class_2.method_14(-1820302608);
         }
         if(b1 == b2)
         {
            class_189.var_771 = new Error();
            throw class_2.method_14(-1820302848) + b1.outer.toString() + ")";
         }
         if(b1.space != space || b2.space != space)
         {
            class_189.var_771 = new Error();
            throw class_2.method_14(-1820302737) + b1.outer.toString() + class_2.method_14(-1820302479) + b2.outer.toString() + ")";
         }
         if(b1.type != class_223.var_188 && b2.type != class_223.var_188)
         {
            class_189.var_771 = new Error();
            throw class_2.method_14(-1820302432) + b1.outer.toString() + class_2.method_14(-1820302479) + b2.outer.toString() + ")";
         }
      }
      
      public final function setup_a2() : void
      {
         var _loc4_:* = null as Vec2;
         var _loc5_:Boolean = false;
         var _loc6_:* = null as ZPP_Vec2;
         var _loc1_:Number = a2localx;
         var _loc2_:Number = a2localy;
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
         _loc4_.zpp_inner.name_5 = false;
         wrap_a2 = _loc4_;
         wrap_a2.zpp_inner.var_120 = true;
         wrap_a2.zpp_inner._validate = validate_a2;
         wrap_a2.zpp_inner._invalidate = invalidate_a2;
      }
      
      public final function setup_a1() : void
      {
         var _loc4_:* = null as Vec2;
         var _loc5_:Boolean = false;
         var _loc6_:* = null as ZPP_Vec2;
         var _loc1_:Number = a1localx;
         var _loc2_:Number = a1localy;
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
         _loc4_.zpp_inner.name_5 = false;
         wrap_a1 = _loc4_;
         wrap_a1.zpp_inner.var_120 = true;
         wrap_a1.zpp_inner._validate = validate_a1;
         wrap_a1.zpp_inner._invalidate = invalidate_a1;
      }
      
      override public function method_544(param1:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:* = 0;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         if(var_197 == -1)
         {
            var_197 = param1;
         }
         var _loc2_:Number = param1 / var_197;
         var_197 = param1;
         var_678 = true;
         a1relx = b1.var_83 * a1localx - b1.var_84 * a1localy;
         a1rely = Number(a1localx * b1.var_84 + a1localy * b1.var_83);
         a2relx = b2.var_83 * a2localx - b2.var_84 * a2localy;
         a2rely = Number(a2localx * b2.var_84 + a2localy * b2.var_83);
         _loc3_ = Number(b1.var_264 + b2.var_264);
         var_172 = _loc3_;
         var_171 = 0;
         var_173 = _loc3_;
         if(b1.var_194 != 0)
         {
            _loc4_ = Number(a1relx * b1.var_194);
            _loc5_ = a1rely * b1.var_194;
            var_172 = Number(var_172 + _loc5_ * a1rely);
            var_171 = Number(var_171 + -_loc5_ * a1relx);
            var_173 = Number(var_173 + _loc4_ * a1relx);
         }
         if(b2.var_194 != 0)
         {
            _loc4_ = Number(a2relx * b2.var_194);
            _loc5_ = a2rely * b2.var_194;
            var_172 = Number(var_172 + _loc5_ * a2rely);
            var_171 = Number(var_171 + -_loc5_ * a2relx);
            var_173 = Number(var_173 + _loc4_ * a2relx);
         }
         _loc3_ = var_172 * var_173 - var_171 * var_171;
         if(_loc3_ != _loc3_)
         {
            _loc4_ = 0;
            var_173 = _loc4_;
            _loc4_ = Number(_loc4_);
            var_171 = _loc4_;
            var_172 = _loc4_;
            _loc6_ = 3;
         }
         else if(_loc3_ == 0)
         {
            _loc7_ = 0;
            if(var_172 != 0)
            {
               var_172 = 1 / var_172;
            }
            else
            {
               var_172 = 0;
               _loc7_ = _loc7_ | 1;
            }
            if(var_173 != 0)
            {
               var_173 = 1 / var_173;
            }
            else
            {
               var_173 = 0;
               _loc7_ = _loc7_ | 2;
            }
            var_171 = 0;
            _loc6_ = _loc7_;
         }
         else
         {
            _loc3_ = 1 / _loc3_;
            _loc4_ = Number(var_173 * _loc3_);
            var_173 = var_172 * _loc3_;
            var_172 = _loc4_;
            var_171 = var_171 * -_loc3_;
            _loc6_ = 0;
         }
         if((_loc6_ & 1) != 0)
         {
            var_198 = 0;
         }
         if((_loc6_ & 2) != 0)
         {
            var_196 = 0;
         }
         if(!name_45)
         {
            _loc5_ = 2 * Math.PI * name_56;
            var_399 = 1 / (param1 * _loc5_ * (2 * name_57 + _loc5_ * param1));
            _loc8_ = 1 / (Number(1 + var_399));
            _loc3_ = param1 * _loc5_ * _loc5_ * var_399;
            var_399 = var_399 * _loc8_;
            _loc4_ = Number(_loc8_);
            var_172 = var_172 * _loc4_;
            var_171 = var_171 * _loc4_;
            var_173 = var_173 * _loc4_;
            var_295 = Number(b2.var_95 + a2relx) - (Number(b1.var_95 + a1relx));
            var_296 = Number(b2.var_96 + a2rely) - (Number(b1.var_96 + a1rely));
            if(!!name_60 && Number(var_295 * var_295 + var_296 * var_296) > name_50 * name_50)
            {
               return true;
            }
            _loc4_ = Number(-_loc3_);
            var_295 = var_295 * _loc4_;
            var_296 = var_296 * _loc4_;
            _loc4_ = Number(name_50);
            _loc5_ = Number(var_295 * var_295 + var_296 * var_296);
            if(_loc5_ > _loc4_ * _loc4_)
            {
               sf32(_loc5_,0);
               _loc7_ = 1597463007 - (li32(0) >> 1);
               si32(_loc7_,0);
               _loc9_ = lf32(0);
               _loc8_ = _loc4_ * (_loc9_ * (1.5 - 0.5 * _loc5_ * _loc9_ * _loc9_));
               var_295 = var_295 * _loc8_;
               var_296 = var_296 * _loc8_;
            }
         }
         else
         {
            var_295 = 0;
            var_296 = 0;
            var_399 = 0;
         }
         _loc3_ = _loc2_;
         var_198 = var_198 * _loc3_;
         var_196 = var_196 * _loc3_;
         var_489 = name_61 * param1;
         return false;
      }
      
      override public function method_312(param1:int, param2:int) : Boolean
      {
         return b1.id == param1 && b2.id == param2 || b1.id == param2 && b2.id == param1;
      }
      
      public final function invalidate_a2(param1:ZPP_Vec2) : void
      {
         ;
         ZPP_Constraint.method_112(class_2.method_14(-1820302443) + class_2.method_14(-1820302501));
         a2localx = param1.x;
         a2localy = param1.y;
         method_106();
      }
      
      public final function invalidate_a1(param1:ZPP_Vec2) : void
      {
         ;
         ZPP_Constraint.method_112(class_2.method_14(-1820302443) + class_2.method_14(-1820302500));
         a1localx = param1.x;
         a1localy = param1.y;
         method_106();
      }
      
      override public function method_372() : void
      {
         if(b1 != null)
         {
            b1.name_19.remove(this);
         }
         if(b2 != b1)
         {
            if(b2 != null)
            {
               b2.name_19.remove(this);
            }
         }
      }
      
      override public function method_438() : void
      {
         var _loc1_:* = null as ZPP_Component;
         var _loc2_:* = null as ZPP_Component;
         var _loc3_:* = null as ZPP_Component;
         var _loc4_:* = null as ZPP_Component;
         var _loc5_:* = null as ZPP_Component;
         if(b1.type == class_223.var_188)
         {
            if(b1.var_112 == b1.var_112.parent)
            {
               _loc1_ = b1.var_112;
            }
            else
            {
               _loc2_ = b1.var_112;
               _loc3_ = null;
               while(_loc2_ != _loc2_.parent)
               {
                  _loc4_ = _loc2_.parent;
                  _loc2_.parent = _loc3_;
                  _loc3_ = _loc2_;
                  _loc2_ = _loc4_;
               }
               while(_loc3_ != null)
               {
                  _loc4_ = _loc3_.parent;
                  _loc3_.parent = _loc2_;
                  _loc3_ = _loc4_;
               }
               _loc1_ = _loc2_;
            }
            if(var_112 == var_112.parent)
            {
               _loc2_ = var_112;
            }
            else
            {
               _loc3_ = var_112;
               _loc4_ = null;
               while(_loc3_ != _loc3_.parent)
               {
                  _loc5_ = _loc3_.parent;
                  _loc3_.parent = _loc4_;
                  _loc4_ = _loc3_;
                  _loc3_ = _loc5_;
               }
               while(_loc4_ != null)
               {
                  _loc5_ = _loc4_.parent;
                  _loc4_.parent = _loc3_;
                  _loc4_ = _loc5_;
               }
               _loc2_ = _loc3_;
            }
            if(_loc1_ != _loc2_)
            {
               if(_loc1_.var_158 < _loc2_.var_158)
               {
                  _loc1_.parent = _loc2_;
               }
               else if(_loc1_.var_158 > _loc2_.var_158)
               {
                  _loc2_.parent = _loc1_;
               }
               else
               {
                  _loc2_.parent = _loc1_;
                  _loc1_.var_158 = _loc1_.var_158 + 1;
               }
            }
         }
         if(b2.type == class_223.var_188)
         {
            if(b2.var_112 == b2.var_112.parent)
            {
               _loc1_ = b2.var_112;
            }
            else
            {
               _loc2_ = b2.var_112;
               _loc3_ = null;
               while(_loc2_ != _loc2_.parent)
               {
                  _loc4_ = _loc2_.parent;
                  _loc2_.parent = _loc3_;
                  _loc3_ = _loc2_;
                  _loc2_ = _loc4_;
               }
               while(_loc3_ != null)
               {
                  _loc4_ = _loc3_.parent;
                  _loc3_.parent = _loc2_;
                  _loc3_ = _loc4_;
               }
               _loc1_ = _loc2_;
            }
            if(var_112 == var_112.parent)
            {
               _loc2_ = var_112;
            }
            else
            {
               _loc3_ = var_112;
               _loc4_ = null;
               while(_loc3_ != _loc3_.parent)
               {
                  _loc5_ = _loc3_.parent;
                  _loc3_.parent = _loc4_;
                  _loc4_ = _loc3_;
                  _loc3_ = _loc5_;
               }
               while(_loc4_ != null)
               {
                  _loc5_ = _loc4_.parent;
                  _loc4_.parent = _loc3_;
                  _loc4_ = _loc5_;
               }
               _loc2_ = _loc3_;
            }
            if(_loc1_ != _loc2_)
            {
               if(_loc1_.var_158 < _loc2_.var_158)
               {
                  _loc1_.parent = _loc2_;
               }
               else if(_loc1_.var_158 > _loc2_.var_158)
               {
                  _loc2_.parent = _loc1_;
               }
               else
               {
                  _loc2_.parent = _loc1_;
                  _loc1_.var_158 = _loc1_.var_158 + 1;
               }
            }
         }
      }
      
      override public function draw(param1:Debug) : void
      {
         var _loc5_:* = null as Vec2;
         var _loc6_:Number = NaN;
         var _loc7_:* = null as ZPP_Vec2;
         var _loc8_:* = null as Vec2;
         var _loc9_:* = null as ZPP_Vec2;
         var _loc2_:class_196 = outer_zn;
         §§push(_loc2_.var_85.b1 == null?null:_loc2_.var_85.b1.outer);
         if(_loc2_.var_85.wrap_a1 == null)
         {
            _loc2_.var_85.setup_a1();
         }
         var _loc3_:Vec2 = §§pop().method_486(_loc2_.var_85.wrap_a1);
         §§push(_loc2_.var_85.b2 == null?null:_loc2_.var_85.b2.outer);
         if(_loc2_.var_85.wrap_a2 == null)
         {
            _loc2_.var_85.setup_a2();
         }
         var _loc4_:Vec2 = §§pop().method_486(_loc2_.var_85.wrap_a2);
         if(!name_45)
         {
            _loc5_ = _loc4_.method_302(_loc3_);
            _loc7_ = _loc5_.zpp_inner;
            §§push(Math);
            if(_loc7_._validate != null)
            {
               _loc7_._validate();
            }
            _loc7_ = _loc5_.zpp_inner;
            §§push(_loc5_.zpp_inner.x);
            if(_loc7_._validate != null)
            {
               _loc7_._validate();
            }
            _loc7_ = _loc5_.zpp_inner;
            §§push(§§pop() * _loc5_.zpp_inner.x);
            if(_loc7_._validate != null)
            {
               _loc7_._validate();
            }
            _loc7_ = _loc5_.zpp_inner;
            §§push(_loc5_.zpp_inner.y);
            if(_loc7_._validate != null)
            {
               _loc7_._validate();
            }
            _loc6_ = Number(§§pop().sqrt(Number(§§pop() + §§pop() * _loc5_.zpp_inner.y)));
            if(_loc6_ != 0)
            {
               param1.method_387(_loc3_,_loc4_,16711935);
            }
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
         }
         param1.method_305(_loc3_,2,255);
         param1.method_305(_loc4_,2,16711680);
         _loc7_ = _loc3_.zpp_inner;
         _loc3_.zpp_inner.outer = null;
         _loc3_.zpp_inner = null;
         _loc5_ = _loc3_;
         _loc5_.var_72 = class_219.poolVec2;
         class_219.poolVec2 = _loc5_;
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
         _loc7_ = _loc4_.zpp_inner;
         _loc4_.zpp_inner.outer = null;
         _loc4_.zpp_inner = null;
         _loc5_ = _loc4_;
         _loc5_.var_72 = class_219.poolVec2;
         class_219.poolVec2 = _loc5_;
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
      
      override public function copy(param1:Array = undefined, param2:Array = undefined) : Constraint
      {
         var _loc4_:* = null as Body;
         var _loc5_:int = 0;
         var _loc6_:* = null as class_286;
         var _loc3_:class_196 = outer_zn;
         §§push(§§newactivation());
         §§push();
         §§push(null);
         §§push(null);
         if(_loc3_.var_85.wrap_a1 == null)
         {
            _loc3_.var_85.setup_a1();
         }
         _loc3_ = outer_zn;
         §§push(_loc3_.var_85.wrap_a1);
         if(_loc3_.var_85.wrap_a2 == null)
         {
            _loc3_.var_85.setup_a2();
         }
         var /*UnknownSlot*/:* = new §§pop().class_196(§§pop(),§§pop(),§§pop(),_loc3_.var_85.wrap_a2);
         method_184(ret);
         if(param1 != null && b1 != null)
         {
            _loc4_ = null;
            _loc5_ = 0;
            while(_loc5_ < int(param1.length))
            {
               _loc6_ = param1[_loc5_];
               _loc5_++;
               if(_loc6_.id == b1.id)
               {
                  _loc4_ = _loc6_.var_781;
                  break;
               }
            }
            if(_loc4_ != null)
            {
               ret.var_85.b1 = _loc4_.zpp_inner;
            }
            else
            {
               param2.push(class_286.method_500(b1.id,function(param1:Body):void
               {
                  ret.var_85.b1 = param1.zpp_inner;
               }));
            }
         }
         if(param1 != null && b2 != null)
         {
            _loc4_ = null;
            _loc5_ = 0;
            while(_loc5_ < int(param1.length))
            {
               _loc6_ = param1[_loc5_];
               _loc5_++;
               if(_loc6_.id == b2.id)
               {
                  _loc4_ = _loc6_.var_781;
                  break;
               }
            }
            if(_loc4_ != null)
            {
               ret.var_85.b2 = _loc4_.zpp_inner;
            }
            else
            {
               param2.push(class_286.method_500(b2.id,function(param1:Body):void
               {
                  ret.var_85.b2 = param1.zpp_inner;
               }));
            }
         }
         return ret;
      }
      
      override public function method_239() : void
      {
         var_198 = 0;
         var_196 = 0;
         var_197 = -1;
      }
      
      public final function method_262(param1:ZPP_Body) : Vec3
      {
         if(var_678)
         {
            if(param1 == b1)
            {
               return Vec3.method_65(-var_198,-var_196,-(var_196 * a1relx - var_198 * a1rely));
            }
            return Vec3.method_65(var_198,var_196,var_196 * a2relx - var_198 * a2rely);
         }
         return Vec3.method_65(0,0,0);
      }
      
      override public function method_441() : Boolean
      {
         var _loc7_:* = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:* = 0;
         var _loc11_:Number = NaN;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         _loc1_ = Number(b2.var_104 + b2.var_272 - a2rely * (b2.var_94 + b2.var_237) - (b1.var_104 + b1.var_272 - a1rely * (b1.var_94 + b1.var_237)));
         _loc2_ = Number(Number(Number(b2.var_105 + b2.var_274) + a2relx * (b2.var_94 + b2.var_237)) - (Number(Number(b1.var_105 + b1.var_274) + a1relx * (b1.var_94 + b1.var_237))));
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         _loc3_ = Number(var_295 - _loc1_);
         _loc4_ = Number(var_296 - _loc2_);
         var _loc5_:* = Number(Number(var_172 * _loc3_ + var_171 * _loc4_));
         _loc4_ = Number(Number(var_171 * _loc3_ + var_173 * _loc4_));
         _loc3_ = Number(_loc5_);
         _loc5_ = Number(var_399);
         _loc3_ = Number(_loc3_ - var_198 * _loc5_);
         _loc4_ = Number(_loc4_ - var_196 * _loc5_);
         _loc5_ = 0;
         var _loc6_:* = 0;
         _loc5_ = Number(var_198);
         _loc6_ = Number(var_196);
         _loc7_ = 1;
         var_198 = Number(var_198 + _loc3_ * _loc7_);
         var_196 = Number(var_196 + _loc4_ * _loc7_);
         if(name_62)
         {
            if(Number(var_198 * var_198 + var_196 * var_196) > var_489 * var_489)
            {
               return true;
            }
         }
         else if(!name_45)
         {
            _loc7_ = Number(var_489);
            _loc8_ = Number(var_198 * var_198 + var_196 * var_196);
            if(_loc8_ > _loc7_ * _loc7_)
            {
               sf32(_loc8_,0);
               _loc10_ = 1597463007 - (li32(0) >> 1);
               si32(_loc10_,0);
               _loc11_ = lf32(0);
               _loc9_ = _loc7_ * (_loc11_ * (1.5 - 0.5 * _loc8_ * _loc11_ * _loc11_));
               var_198 = var_198 * _loc9_;
               var_196 = var_196 * _loc9_;
            }
         }
         _loc3_ = Number(var_198 - _loc5_);
         _loc4_ = Number(var_196 - _loc6_);
         _loc5_ = Number(b1.var_123);
         b1.var_104 = b1.var_104 - _loc3_ * _loc5_;
         b1.var_105 = b1.var_105 - _loc4_ * _loc5_;
         _loc5_ = Number(b2.var_123);
         b2.var_104 = Number(b2.var_104 + _loc3_ * _loc5_);
         b2.var_105 = Number(b2.var_105 + _loc4_ * _loc5_);
         b1.var_94 = b1.var_94 - (_loc4_ * a1relx - _loc3_ * a1rely) * b1.var_136;
         b2.var_94 = Number(b2.var_94 + (_loc4_ * a2relx - _loc3_ * a2rely) * b2.var_136);
         return false;
      }
      
      override public function method_499() : Boolean
      {
         var _loc9_:* = NaN;
         var _loc10_:int = 0;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = 0;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         _loc1_ = Number(b1.var_83 * a1localx - b1.var_84 * a1localy);
         _loc2_ = Number(Number(a1localx * b1.var_84 + a1localy * b1.var_83));
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         _loc3_ = Number(b2.var_83 * a2localx - b2.var_84 * a2localy);
         _loc4_ = Number(Number(a2localx * b2.var_84 + a2localy * b2.var_83));
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         _loc5_ = Number(Number(b2.var_95 + _loc3_) - (Number(b1.var_95 + _loc1_)));
         _loc6_ = Number(Number(b2.var_96 + _loc4_) - (Number(b1.var_96 + _loc2_)));
         if(!!name_60 && Number(_loc5_ * _loc5_ + _loc6_ * _loc6_) > name_50 * name_50)
         {
            return true;
         }
         if(Number(_loc5_ * _loc5_ + _loc6_ * _loc6_) < class_238.var_1032 * class_238.var_1032)
         {
            return false;
         }
         var _loc7_:* = 0.5;
         _loc5_ = Number(_loc5_ * _loc7_);
         _loc6_ = Number(_loc6_ * _loc7_);
         _loc7_ = 0;
         var _loc8_:* = 0;
         if(Number(_loc5_ * _loc5_ + _loc6_ * _loc6_) > 6)
         {
            _loc9_ = Number(Number(b1.var_264 + b2.var_264));
            if(_loc9_ > class_238.name_8)
            {
               _loc9_ = Number(0.75 / _loc9_);
               _loc7_ = Number(-_loc5_ * _loc9_);
               _loc8_ = Number(-_loc6_ * _loc9_);
               _loc10_ = 20;
               _loc11_ = Number(Number(_loc7_ * _loc7_ + _loc8_ * _loc8_));
               if(_loc11_ > _loc10_ * _loc10_)
               {
                  sf32(_loc11_,0);
                  _loc13_ = 1597463007 - (li32(0) >> 1);
                  si32(_loc13_,0);
                  _loc14_ = lf32(0);
                  _loc12_ = Number(_loc10_ * (_loc14_ * (1.5 - 0.5 * _loc11_ * _loc14_ * _loc14_)));
                  _loc7_ = Number(_loc7_ * _loc12_);
                  _loc8_ = Number(_loc8_ * _loc12_);
               }
               _loc11_ = Number(b1.var_123);
               b1.var_95 = b1.var_95 - _loc7_ * _loc11_;
               b1.var_96 = b1.var_96 - _loc8_ * _loc11_;
               _loc11_ = Number(b2.var_123);
               b2.var_95 = Number(b2.var_95 + _loc7_ * _loc11_);
               b2.var_96 = Number(b2.var_96 + _loc8_ * _loc11_);
               _loc5_ = Number(Number(b2.var_95 + _loc3_) - (Number(b1.var_95 + _loc1_)));
               _loc6_ = Number(Number(b2.var_96 + _loc4_) - (Number(b1.var_96 + _loc2_)));
               _loc11_ = 0.5;
               _loc5_ = Number(_loc5_ * _loc11_);
               _loc6_ = Number(_loc6_ * _loc11_);
            }
         }
         _loc9_ = 0;
         _loc11_ = 0;
         _loc12_ = 0;
         _loc14_ = Number(b1.var_264 + b2.var_264);
         _loc9_ = Number(_loc14_);
         _loc11_ = 0;
         _loc12_ = Number(_loc14_);
         if(b1.var_194 != 0)
         {
            _loc15_ = _loc1_ * b1.var_194;
            _loc16_ = _loc2_ * b1.var_194;
            _loc9_ = Number(Number(_loc9_ + _loc16_ * _loc2_));
            _loc11_ = Number(Number(_loc11_ + -_loc16_ * _loc1_));
            _loc12_ = Number(Number(_loc12_ + _loc15_ * _loc1_));
         }
         if(b2.var_194 != 0)
         {
            _loc15_ = _loc3_ * b2.var_194;
            _loc16_ = _loc4_ * b2.var_194;
            _loc9_ = Number(Number(_loc9_ + _loc16_ * _loc4_));
            _loc11_ = Number(Number(_loc11_ + -_loc16_ * _loc3_));
            _loc12_ = Number(Number(_loc12_ + _loc15_ * _loc3_));
         }
         _loc7_ = Number(-_loc5_);
         _loc8_ = Number(-_loc6_);
         _loc10_ = 6;
         _loc14_ = Number(_loc7_ * _loc7_ + _loc8_ * _loc8_);
         if(_loc14_ > _loc10_ * _loc10_)
         {
            sf32(_loc14_,0);
            _loc13_ = 1597463007 - (li32(0) >> 1);
            si32(_loc13_,0);
            _loc16_ = lf32(0);
            _loc15_ = _loc10_ * (_loc16_ * (1.5 - 0.5 * _loc14_ * _loc16_ * _loc16_));
            _loc7_ = Number(_loc7_ * _loc15_);
            _loc8_ = Number(_loc8_ * _loc15_);
         }
         _loc14_ = _loc9_ * _loc12_ - _loc11_ * _loc11_;
         if(_loc14_ != _loc14_)
         {
            _loc8_ = 0;
            _loc7_ = Number(_loc8_);
         }
         else if(_loc14_ == 0)
         {
            if(_loc9_ != 0)
            {
               _loc7_ = Number(_loc7_ / _loc9_);
            }
            else
            {
               _loc7_ = 0;
            }
            if(_loc12_ != 0)
            {
               _loc8_ = Number(_loc8_ / _loc12_);
            }
            else
            {
               _loc8_ = 0;
            }
         }
         else
         {
            _loc14_ = 1 / _loc14_;
            _loc15_ = _loc14_ * (_loc12_ * _loc7_ - _loc11_ * _loc8_);
            _loc8_ = Number(_loc14_ * (_loc9_ * _loc8_ - _loc11_ * _loc7_));
            _loc7_ = Number(_loc15_);
         }
         _loc14_ = b1.var_123;
         b1.var_95 = b1.var_95 - _loc7_ * _loc14_;
         b1.var_96 = b1.var_96 - _loc8_ * _loc14_;
         _loc14_ = b2.var_123;
         b2.var_95 = Number(b2.var_95 + _loc7_ * _loc14_);
         b2.var_96 = Number(b2.var_96 + _loc8_ * _loc14_);
         var _loc17_:ZPP_Body = b1;
         _loc14_ = -(_loc8_ * _loc1_ - _loc7_ * _loc2_) * b1.var_136;
         _loc17_.var_93 = Number(_loc17_.var_93 + _loc14_);
         if(_loc14_ * _loc14_ > 0.0001)
         {
            _loc17_.var_84 = Number(Math.sin(_loc17_.var_93));
            _loc17_.var_83 = Number(Math.cos(_loc17_.var_93));
            null;
         }
         else
         {
            _loc15_ = _loc14_ * _loc14_;
            _loc16_ = 1 - 0.5 * _loc15_;
            _loc18_ = 1 - _loc15_ * _loc15_ / 8;
            _loc19_ = (_loc16_ * _loc17_.var_84 + _loc14_ * _loc17_.var_83) * _loc18_;
            _loc17_.var_83 = (_loc16_ * _loc17_.var_83 - _loc14_ * _loc17_.var_84) * _loc18_;
            _loc17_.var_84 = _loc19_;
         }
         _loc17_ = b2;
         _loc14_ = (_loc8_ * _loc3_ - _loc7_ * _loc4_) * b2.var_136;
         _loc17_.var_93 = Number(_loc17_.var_93 + _loc14_);
         if(_loc14_ * _loc14_ > 0.0001)
         {
            _loc17_.var_84 = Number(Math.sin(_loc17_.var_93));
            _loc17_.var_83 = Number(Math.cos(_loc17_.var_93));
            null;
         }
         else
         {
            _loc15_ = _loc14_ * _loc14_;
            _loc16_ = 1 - 0.5 * _loc15_;
            _loc18_ = 1 - _loc15_ * _loc15_ / 8;
            _loc19_ = (_loc16_ * _loc17_.var_84 + _loc14_ * _loc17_.var_83) * _loc18_;
            _loc17_.var_83 = (_loc16_ * _loc17_.var_83 - _loc14_ * _loc17_.var_84) * _loc18_;
            _loc17_.var_84 = _loc19_;
         }
         return false;
      }
      
      override public function method_411() : void
      {
         if(b1 != null)
         {
            b1.name_19.add(this);
         }
         if(b2 != b1)
         {
            if(b2 != null)
            {
               b2.name_19.add(this);
            }
         }
      }
   }
}
