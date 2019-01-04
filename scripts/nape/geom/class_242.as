package nape.geom
{
   import flash.geom.Matrix;
   import package_35.class_238;
   import zpp_nape.geom.ZPP_Mat23;
   import zpp_nape.geom.ZPP_Vec2;
   import zpp_nape.util.class_219;
   
   public final class class_242
   {
       
      
      public var zpp_inner:ZPP_Mat23;
      
      public function class_242(param1:Number = 1.0, param2:Number = 0.0, param3:Number = 0.0, param4:Number = 1.0, param5:Number = 0.0, param6:Number = 0.0)
      {
         zpp_inner = null;
         zpp_inner = ZPP_Mat23.method_65();
         zpp_inner.outer = this;
         zpp_inner.a = param1;
         var _loc7_:ZPP_Mat23 = zpp_inner;
         if(_loc7_._invalidate != null)
         {
            _loc7_._invalidate();
         }
         zpp_inner.a;
         zpp_inner.b = param2;
         _loc7_ = zpp_inner;
         if(_loc7_._invalidate != null)
         {
            _loc7_._invalidate();
         }
         zpp_inner.b;
         zpp_inner.tx = param5;
         _loc7_ = zpp_inner;
         if(_loc7_._invalidate != null)
         {
            _loc7_._invalidate();
         }
         zpp_inner.tx;
         zpp_inner.c = param3;
         _loc7_ = zpp_inner;
         if(_loc7_._invalidate != null)
         {
            _loc7_._invalidate();
         }
         zpp_inner.c;
         zpp_inner.d = param4;
         _loc7_ = zpp_inner;
         if(_loc7_._invalidate != null)
         {
            _loc7_._invalidate();
         }
         zpp_inner.d;
         zpp_inner.ty = param6;
         _loc7_ = zpp_inner;
         if(_loc7_._invalidate != null)
         {
            _loc7_._invalidate();
         }
         zpp_inner.ty;
      }
      
      public static function method_793(param1:Matrix) : class_242
      {
         var _loc2_:Matrix = param1;
         return new class_242(_loc2_.a,_loc2_.c,_loc2_.b,_loc2_.d,_loc2_.tx,_loc2_.ty);
      }
      
      public static function rotation(param1:Number) : class_242
      {
         var _loc2_:Number = Number(Math.cos(param1));
         var _loc3_:Number = Number(Math.sin(param1));
         return new class_242(_loc2_,-_loc3_,_loc3_,_loc2_,0,0);
      }
      
      public static function method_810(param1:Number, param2:Number) : class_242
      {
         return new class_242(1,0,0,1,param1,param2);
      }
      
      public static function scale(param1:Number, param2:Number) : class_242
      {
         return new class_242(param1,0,0,param2,0,0);
      }
      
      public final function method_697() : class_242
      {
         return new class_242(zpp_inner.a,zpp_inner.c,zpp_inner.b,zpp_inner.d,-zpp_inner.a * zpp_inner.tx - zpp_inner.c * zpp_inner.ty,-zpp_inner.b * zpp_inner.tx - zpp_inner.d * zpp_inner.ty);
      }
      
      public final function transform(param1:Vec2, param2:Boolean = false, param3:Boolean = false) : Vec2
      {
         var _loc4_:* = null as Vec2;
         var _loc5_:Number = NaN;
         var _loc6_:* = null as ZPP_Vec2;
         var _loc7_:Number = NaN;
         var _loc8_:* = null as Vec2;
         var _loc9_:Boolean = false;
         var _loc10_:* = null as ZPP_Vec2;
         if(param2)
         {
            _loc6_ = param1.zpp_inner;
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc6_ = param1.zpp_inner;
            §§push(param1.zpp_inner.x * zpp_inner.a);
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc5_ = Number(§§pop() + param1.zpp_inner.y * zpp_inner.b);
            _loc6_ = param1.zpp_inner;
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc6_ = param1.zpp_inner;
            §§push(param1.zpp_inner.x * zpp_inner.c);
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc7_ = Number(§§pop() + param1.zpp_inner.y * zpp_inner.d);
            if(class_219.poolVec2 == null)
            {
               _loc8_ = new Vec2();
            }
            else
            {
               _loc8_ = class_219.poolVec2;
               class_219.poolVec2 = _loc8_.var_72;
               _loc8_.var_72 = null;
            }
            if(_loc8_.zpp_inner == null)
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
               _loc6_.x = _loc5_;
               _loc6_.y = _loc7_;
               _loc8_.zpp_inner = _loc6_;
               _loc8_.zpp_inner.outer = _loc8_;
            }
            else
            {
               _loc6_ = _loc8_.zpp_inner;
               §§push(false);
               if(_loc6_._validate != null)
               {
                  _loc6_._validate();
               }
               if(_loc8_.zpp_inner.x == _loc5_)
               {
                  §§pop();
                  _loc6_ = _loc8_.zpp_inner;
                  if(_loc6_._validate != null)
                  {
                     _loc6_._validate();
                  }
                  §§push(_loc8_.zpp_inner.y == _loc7_);
               }
               if(!§§pop())
               {
                  _loc8_.zpp_inner.x = _loc5_;
                  _loc8_.zpp_inner.y = _loc7_;
                  _loc6_ = _loc8_.zpp_inner;
                  if(_loc6_._invalidate != null)
                  {
                     _loc6_._invalidate(_loc6_);
                  }
               }
               _loc8_;
            }
            _loc8_.zpp_inner.name_5 = param3;
            _loc4_ = _loc8_;
         }
         else
         {
            _loc6_ = param1.zpp_inner;
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc6_ = param1.zpp_inner;
            §§push(param1.zpp_inner.x * zpp_inner.a);
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc5_ = Number(Number(§§pop() + param1.zpp_inner.y * zpp_inner.b) + zpp_inner.tx);
            _loc6_ = param1.zpp_inner;
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc6_ = param1.zpp_inner;
            §§push(param1.zpp_inner.x * zpp_inner.c);
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc7_ = Number(Number(§§pop() + param1.zpp_inner.y * zpp_inner.d) + zpp_inner.ty);
            if(class_219.poolVec2 == null)
            {
               _loc8_ = new Vec2();
            }
            else
            {
               _loc8_ = class_219.poolVec2;
               class_219.poolVec2 = _loc8_.var_72;
               _loc8_.var_72 = null;
            }
            if(_loc8_.zpp_inner == null)
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
               _loc6_.x = _loc5_;
               _loc6_.y = _loc7_;
               _loc8_.zpp_inner = _loc6_;
               _loc8_.zpp_inner.outer = _loc8_;
            }
            else
            {
               _loc6_ = _loc8_.zpp_inner;
               §§push(false);
               if(_loc6_._validate != null)
               {
                  _loc6_._validate();
               }
               if(_loc8_.zpp_inner.x == _loc5_)
               {
                  §§pop();
                  _loc6_ = _loc8_.zpp_inner;
                  if(_loc6_._validate != null)
                  {
                     _loc6_._validate();
                  }
                  §§push(_loc8_.zpp_inner.y == _loc7_);
               }
               if(!§§pop())
               {
                  _loc8_.zpp_inner.x = _loc5_;
                  _loc8_.zpp_inner.y = _loc7_;
                  _loc6_ = _loc8_.zpp_inner;
                  if(_loc6_._invalidate != null)
                  {
                     _loc6_._invalidate(_loc6_);
                  }
               }
               _loc8_;
            }
            _loc8_.zpp_inner.name_5 = param3;
            _loc4_ = _loc8_;
         }
         if(param1.zpp_inner.name_5)
         {
            _loc6_ = param1.zpp_inner;
            param1.zpp_inner.outer = null;
            param1.zpp_inner = null;
            _loc8_ = param1;
            _loc8_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc8_;
            _loc10_ = _loc6_;
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
         return _loc4_;
      }
      
      public final function toString() : String
      {
         return class_2.method_14(-1820302484) + zpp_inner.a + class_2.method_14(-1820302431) + zpp_inner.b + class_2.method_14(-1820302418) + zpp_inner.c + class_2.method_14(-1820302430) + zpp_inner.d + class_2.method_14(-1820302482) + zpp_inner.tx + class_2.method_14(-1820302427) + zpp_inner.ty + class_2.method_14(-1820302790);
      }
      
      public final function method_766(param1:Matrix = undefined) : Matrix
      {
         if(param1 == null)
         {
            param1 = new Matrix();
         }
         param1.a = zpp_inner.a;
         param1.b = zpp_inner.c;
         param1.c = zpp_inner.b;
         param1.d = zpp_inner.d;
         param1.tx = zpp_inner.tx;
         param1.ty = zpp_inner.ty;
         return param1;
      }
      
      public final function singular() : Boolean
      {
         var _loc1_:Number = Number(Number(Number(zpp_inner.a * zpp_inner.a + zpp_inner.b * zpp_inner.b) + zpp_inner.c * zpp_inner.c) + zpp_inner.d * zpp_inner.d);
         var _loc2_:Number = zpp_inner.a * zpp_inner.d - zpp_inner.b * zpp_inner.c;
         if(_loc2_ < 0)
         {
            _loc2_ = -_loc2_;
         }
         return _loc1_ > class_238.var_1043 * _loc2_;
      }
      
      public function set ty(param1:Number) : Number
      {
         zpp_inner.ty = param1;
         var _loc2_:ZPP_Mat23 = zpp_inner;
         if(_loc2_._invalidate != null)
         {
            _loc2_._invalidate();
         }
         return zpp_inner.ty;
      }
      
      public function set tx(param1:Number) : Number
      {
         zpp_inner.tx = param1;
         var _loc2_:ZPP_Mat23 = zpp_inner;
         if(_loc2_._invalidate != null)
         {
            _loc2_._invalidate();
         }
         return zpp_inner.tx;
      }
      
      public function set d(param1:Number) : Number
      {
         zpp_inner.d = param1;
         var _loc2_:ZPP_Mat23 = zpp_inner;
         if(_loc2_._invalidate != null)
         {
            _loc2_._invalidate();
         }
         return zpp_inner.d;
      }
      
      public function set c(param1:Number) : Number
      {
         zpp_inner.c = param1;
         var _loc2_:ZPP_Mat23 = zpp_inner;
         if(_loc2_._invalidate != null)
         {
            _loc2_._invalidate();
         }
         return zpp_inner.c;
      }
      
      public function set b(param1:Number) : Number
      {
         zpp_inner.b = param1;
         var _loc2_:ZPP_Mat23 = zpp_inner;
         if(_loc2_._invalidate != null)
         {
            _loc2_._invalidate();
         }
         return zpp_inner.b;
      }
      
      public function set a(param1:Number) : Number
      {
         zpp_inner.a = param1;
         var _loc2_:ZPP_Mat23 = zpp_inner;
         if(_loc2_._invalidate != null)
         {
            _loc2_._invalidate();
         }
         return zpp_inner.a;
      }
      
      public final function setAs(param1:Number = 1.0, param2:Number = 0.0, param3:Number = 0.0, param4:Number = 1.0, param5:Number = 0.0, param6:Number = 0.0) : class_242
      {
         zpp_inner.method_370(param1,param2,param3,param4,param5,param6);
         var _loc7_:ZPP_Mat23 = zpp_inner;
         if(_loc7_._invalidate != null)
         {
            _loc7_._invalidate();
         }
         return this;
      }
      
      public final function name_40(param1:class_242) : class_242
      {
         var _loc2_:ZPP_Mat23 = param1.zpp_inner;
         zpp_inner.method_370(_loc2_.a,_loc2_.b,_loc2_.c,_loc2_.d,_loc2_.tx,_loc2_.ty);
         _loc2_ = zpp_inner;
         if(_loc2_._invalidate != null)
         {
            _loc2_._invalidate();
         }
         return this;
      }
      
      public final function reset() : class_242
      {
         return setAs();
      }
      
      public final function method_856() : class_242
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         var _loc4_:* = null as class_242;
         var _loc5_:* = null as ZPP_Mat23;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         if(!orthogonal())
         {
            _loc1_ = Number(Math.sqrt(Number(zpp_inner.a * zpp_inner.a + zpp_inner.c * zpp_inner.c)));
            _loc2_ = Number(Math.sqrt(Number(zpp_inner.b * zpp_inner.b + zpp_inner.d * zpp_inner.d)));
            _loc3_ = 1;
            _loc1_ = _loc3_ / _loc1_;
            _loc2_ = _loc3_ / _loc2_;
            _loc4_ = this;
            _loc4_.zpp_inner.a = _loc4_.zpp_inner.a * _loc1_;
            _loc5_ = _loc4_.zpp_inner;
            if(_loc5_._invalidate != null)
            {
               _loc5_._invalidate();
            }
            _loc4_.zpp_inner.a;
            _loc4_ = this;
            _loc4_.zpp_inner.c = _loc4_.zpp_inner.c * _loc1_;
            _loc5_ = _loc4_.zpp_inner;
            if(_loc5_._invalidate != null)
            {
               _loc5_._invalidate();
            }
            _loc4_.zpp_inner.c;
            _loc4_ = this;
            _loc4_.zpp_inner.b = _loc4_.zpp_inner.b * _loc2_;
            _loc5_ = _loc4_.zpp_inner;
            if(_loc5_._invalidate != null)
            {
               _loc5_._invalidate();
            }
            _loc4_.zpp_inner.b;
            _loc4_ = this;
            _loc4_.zpp_inner.d = _loc4_.zpp_inner.d * _loc2_;
            _loc5_ = _loc4_.zpp_inner;
            if(_loc5_._invalidate != null)
            {
               _loc5_._invalidate();
            }
            _loc4_.zpp_inner.d;
            _loc6_ = Number(zpp_inner.a * zpp_inner.b + zpp_inner.c * zpp_inner.d);
            _loc7_ = 0.25 * Math.PI - 0.5 * Math.acos(_loc6_ / (_loc3_ * _loc3_));
            if(zpp_inner.a * zpp_inner.d - zpp_inner.b * zpp_inner.c > 0)
            {
               _loc7_ = -_loc7_;
            }
            _loc8_ = Number(Math.sin(_loc7_));
            _loc9_ = Number(Math.cos(_loc7_));
            _loc10_ = zpp_inner.a * _loc9_ - zpp_inner.c * _loc8_;
            _loc11_ = Number(zpp_inner.b * _loc9_ + zpp_inner.d * _loc8_);
            zpp_inner.c = Number(zpp_inner.c * _loc9_ + zpp_inner.a * _loc8_);
            _loc5_ = zpp_inner;
            if(_loc5_._invalidate != null)
            {
               _loc5_._invalidate();
            }
            zpp_inner.c;
            zpp_inner.a = _loc10_;
            _loc5_ = zpp_inner;
            if(_loc5_._invalidate != null)
            {
               _loc5_._invalidate();
            }
            zpp_inner.a;
            zpp_inner.d = zpp_inner.d * _loc9_ - zpp_inner.b * _loc8_;
            _loc5_ = zpp_inner;
            if(_loc5_._invalidate != null)
            {
               _loc5_._invalidate();
            }
            zpp_inner.d;
            zpp_inner.b = _loc11_;
            _loc5_ = zpp_inner;
            if(_loc5_._invalidate != null)
            {
               _loc5_._invalidate();
            }
            zpp_inner.b;
            _loc5_ = zpp_inner;
            if(_loc5_._invalidate != null)
            {
               _loc5_._invalidate();
            }
         }
         return this;
      }
      
      public final function orthogonal() : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc1_:Number = Number(zpp_inner.a * zpp_inner.b + zpp_inner.c * zpp_inner.d);
         if(_loc1_ * _loc1_ < class_238.name_8)
         {
            _loc2_ = Number(zpp_inner.a * zpp_inner.a + zpp_inner.b * zpp_inner.b) - 1;
            _loc3_ = Number(zpp_inner.c * zpp_inner.c + zpp_inner.d * zpp_inner.d) - 1;
            return _loc2_ * _loc2_ < class_238.name_8 && _loc3_ * _loc3_ < class_238.name_8;
         }
         return false;
      }
      
      public final function method_781(param1:Vec2, param2:Boolean = false, param3:Boolean = false) : Vec2
      {
         var _loc5_:* = null as Vec2;
         var _loc6_:Number = NaN;
         var _loc7_:* = null as ZPP_Vec2;
         var _loc8_:Number = NaN;
         var _loc9_:* = null as Vec2;
         var _loc10_:Boolean = false;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:* = null as ZPP_Vec2;
         var _loc4_:Number = 1 / (zpp_inner.a * zpp_inner.d - zpp_inner.b * zpp_inner.c);
         if(param2)
         {
            _loc7_ = param1.zpp_inner;
            if(_loc7_._validate != null)
            {
               _loc7_._validate();
            }
            _loc7_ = param1.zpp_inner;
            §§push(param1.zpp_inner.x * zpp_inner.d);
            if(_loc7_._validate != null)
            {
               _loc7_._validate();
            }
            _loc6_ = (§§pop() - param1.zpp_inner.y * zpp_inner.b) * _loc4_;
            _loc7_ = param1.zpp_inner;
            if(_loc7_._validate != null)
            {
               _loc7_._validate();
            }
            _loc7_ = param1.zpp_inner;
            §§push(param1.zpp_inner.y * zpp_inner.a);
            if(_loc7_._validate != null)
            {
               _loc7_._validate();
            }
            _loc8_ = (§§pop() - param1.zpp_inner.x * zpp_inner.c) * _loc4_;
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
               _loc10_ = false;
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
               _loc7_.var_109 = _loc10_;
               _loc7_.x = _loc6_;
               _loc7_.y = _loc8_;
               _loc9_.zpp_inner = _loc7_;
               _loc9_.zpp_inner.outer = _loc9_;
            }
            else
            {
               _loc7_ = _loc9_.zpp_inner;
               §§push(false);
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               if(_loc9_.zpp_inner.x == _loc6_)
               {
                  §§pop();
                  _loc7_ = _loc9_.zpp_inner;
                  if(_loc7_._validate != null)
                  {
                     _loc7_._validate();
                  }
                  §§push(_loc9_.zpp_inner.y == _loc8_);
               }
               if(!§§pop())
               {
                  _loc9_.zpp_inner.x = _loc6_;
                  _loc9_.zpp_inner.y = _loc8_;
                  _loc7_ = _loc9_.zpp_inner;
                  if(_loc7_._invalidate != null)
                  {
                     _loc7_._invalidate(_loc7_);
                  }
               }
               _loc9_;
            }
            _loc9_.zpp_inner.name_5 = param3;
            _loc5_ = _loc9_;
         }
         else
         {
            _loc7_ = param1.zpp_inner;
            if(_loc7_._validate != null)
            {
               _loc7_._validate();
            }
            _loc6_ = param1.zpp_inner.x - zpp_inner.tx;
            _loc7_ = param1.zpp_inner;
            if(_loc7_._validate != null)
            {
               _loc7_._validate();
            }
            _loc8_ = param1.zpp_inner.y - zpp_inner.ty;
            _loc11_ = (_loc6_ * zpp_inner.d - _loc8_ * zpp_inner.b) * _loc4_;
            _loc12_ = (_loc8_ * zpp_inner.a - _loc6_ * zpp_inner.c) * _loc4_;
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
               _loc10_ = false;
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
               _loc7_.var_109 = _loc10_;
               _loc7_.x = _loc11_;
               _loc7_.y = _loc12_;
               _loc9_.zpp_inner = _loc7_;
               _loc9_.zpp_inner.outer = _loc9_;
            }
            else
            {
               _loc7_ = _loc9_.zpp_inner;
               §§push(false);
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               if(_loc9_.zpp_inner.x == _loc11_)
               {
                  §§pop();
                  _loc7_ = _loc9_.zpp_inner;
                  if(_loc7_._validate != null)
                  {
                     _loc7_._validate();
                  }
                  §§push(_loc9_.zpp_inner.y == _loc12_);
               }
               if(!§§pop())
               {
                  _loc9_.zpp_inner.x = _loc11_;
                  _loc9_.zpp_inner.y = _loc12_;
                  _loc7_ = _loc9_.zpp_inner;
                  if(_loc7_._invalidate != null)
                  {
                     _loc7_._invalidate(_loc7_);
                  }
               }
               _loc9_;
            }
            _loc9_.zpp_inner.name_5 = param3;
            _loc5_ = _loc9_;
         }
         if(param1.zpp_inner.name_5)
         {
            _loc7_ = param1.zpp_inner;
            param1.zpp_inner.outer = null;
            param1.zpp_inner = null;
            _loc9_ = param1;
            _loc9_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc9_;
            _loc13_ = _loc7_;
            if(_loc13_.outer != null)
            {
               _loc13_.outer.zpp_inner = null;
               _loc13_.outer = null;
            }
            _loc13_.var_103 = null;
            _loc13_._validate = null;
            _loc13_._invalidate = null;
            _loc13_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc13_;
         }
         else
         {
            false;
         }
         return _loc5_;
      }
      
      public final function method_722() : class_242
      {
         var _loc1_:Number = 1 / (zpp_inner.a * zpp_inner.d - zpp_inner.b * zpp_inner.c);
         return new class_242(zpp_inner.d * _loc1_,-zpp_inner.b * _loc1_,-zpp_inner.c * _loc1_,zpp_inner.a * _loc1_,(zpp_inner.b * zpp_inner.ty - zpp_inner.d * zpp_inner.tx) * _loc1_,(zpp_inner.c * zpp_inner.tx - zpp_inner.a * zpp_inner.ty) * _loc1_);
      }
      
      public function get ty() : Number
      {
         return zpp_inner.ty;
      }
      
      public function get tx() : Number
      {
         return zpp_inner.tx;
      }
      
      public function get method_825() : Number
      {
         return zpp_inner.a * zpp_inner.d - zpp_inner.b * zpp_inner.c;
      }
      
      public function get d() : Number
      {
         return zpp_inner.d;
      }
      
      public function get c() : Number
      {
         return zpp_inner.c;
      }
      
      public function get b() : Number
      {
         return zpp_inner.b;
      }
      
      public function get a() : Number
      {
         return zpp_inner.a;
      }
      
      public final function method_756() : class_242
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:* = null as class_242;
         var _loc5_:* = null as ZPP_Mat23;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         if(!method_395())
         {
            _loc1_ = Number(Math.sqrt(Number(zpp_inner.a * zpp_inner.a + zpp_inner.c * zpp_inner.c)));
            _loc2_ = Number(Math.sqrt(Number(zpp_inner.b * zpp_inner.b + zpp_inner.d * zpp_inner.d)));
            _loc3_ = (_loc1_ + _loc2_) / 2;
            _loc1_ = _loc3_ / _loc1_;
            _loc2_ = _loc3_ / _loc2_;
            _loc4_ = this;
            _loc4_.zpp_inner.a = _loc4_.zpp_inner.a * _loc1_;
            _loc5_ = _loc4_.zpp_inner;
            if(_loc5_._invalidate != null)
            {
               _loc5_._invalidate();
            }
            _loc4_.zpp_inner.a;
            _loc4_ = this;
            _loc4_.zpp_inner.c = _loc4_.zpp_inner.c * _loc1_;
            _loc5_ = _loc4_.zpp_inner;
            if(_loc5_._invalidate != null)
            {
               _loc5_._invalidate();
            }
            _loc4_.zpp_inner.c;
            _loc4_ = this;
            _loc4_.zpp_inner.b = _loc4_.zpp_inner.b * _loc2_;
            _loc5_ = _loc4_.zpp_inner;
            if(_loc5_._invalidate != null)
            {
               _loc5_._invalidate();
            }
            _loc4_.zpp_inner.b;
            _loc4_ = this;
            _loc4_.zpp_inner.d = _loc4_.zpp_inner.d * _loc2_;
            _loc5_ = _loc4_.zpp_inner;
            if(_loc5_._invalidate != null)
            {
               _loc5_._invalidate();
            }
            _loc4_.zpp_inner.d;
            _loc6_ = Number(zpp_inner.a * zpp_inner.b + zpp_inner.c * zpp_inner.d);
            _loc7_ = 0.25 * Math.PI - 0.5 * Math.acos(_loc6_ / (_loc3_ * _loc3_));
            if(zpp_inner.a * zpp_inner.d - zpp_inner.b * zpp_inner.c > 0)
            {
               _loc7_ = -_loc7_;
            }
            _loc8_ = Number(Math.sin(_loc7_));
            _loc9_ = Number(Math.cos(_loc7_));
            _loc10_ = zpp_inner.a * _loc9_ - zpp_inner.c * _loc8_;
            _loc11_ = Number(zpp_inner.b * _loc9_ + zpp_inner.d * _loc8_);
            zpp_inner.c = Number(zpp_inner.c * _loc9_ + zpp_inner.a * _loc8_);
            _loc5_ = zpp_inner;
            if(_loc5_._invalidate != null)
            {
               _loc5_._invalidate();
            }
            zpp_inner.c;
            zpp_inner.a = _loc10_;
            _loc5_ = zpp_inner;
            if(_loc5_._invalidate != null)
            {
               _loc5_._invalidate();
            }
            zpp_inner.a;
            zpp_inner.d = zpp_inner.d * _loc9_ - zpp_inner.b * _loc8_;
            _loc5_ = zpp_inner;
            if(_loc5_._invalidate != null)
            {
               _loc5_._invalidate();
            }
            zpp_inner.d;
            zpp_inner.b = _loc11_;
            _loc5_ = zpp_inner;
            if(_loc5_._invalidate != null)
            {
               _loc5_._invalidate();
            }
            zpp_inner.b;
            _loc5_ = zpp_inner;
            if(_loc5_._invalidate != null)
            {
               _loc5_._invalidate();
            }
         }
         return this;
      }
      
      public final function method_395() : Boolean
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         if(singular())
         {
            return false;
         }
         _loc1_ = Number(zpp_inner.a * zpp_inner.b + zpp_inner.c * zpp_inner.d);
         if(_loc1_ * _loc1_ < class_238.name_8)
         {
            _loc2_ = zpp_inner.a * zpp_inner.a + zpp_inner.b * zpp_inner.b - zpp_inner.c * zpp_inner.c - zpp_inner.d * zpp_inner.d;
            return _loc2_ * _loc2_ < class_238.name_8;
         }
         return false;
      }
      
      public final function copy() : class_242
      {
         return new class_242(zpp_inner.a,zpp_inner.b,zpp_inner.c,zpp_inner.d,zpp_inner.tx,zpp_inner.ty);
      }
      
      public final function concat(param1:class_242) : class_242
      {
         var _loc2_:class_242 = param1;
         return new class_242(Number(_loc2_.zpp_inner.a * zpp_inner.a + _loc2_.zpp_inner.b * zpp_inner.c),Number(_loc2_.zpp_inner.a * zpp_inner.b + _loc2_.zpp_inner.b * zpp_inner.d),Number(_loc2_.zpp_inner.c * zpp_inner.a + _loc2_.zpp_inner.d * zpp_inner.c),Number(_loc2_.zpp_inner.c * zpp_inner.b + _loc2_.zpp_inner.d * zpp_inner.d),Number(Number(_loc2_.zpp_inner.a * zpp_inner.tx + _loc2_.zpp_inner.b * zpp_inner.ty) + _loc2_.zpp_inner.tx),Number(Number(_loc2_.zpp_inner.c * zpp_inner.tx + _loc2_.zpp_inner.d * zpp_inner.ty) + _loc2_.zpp_inner.ty));
      }
   }
}
