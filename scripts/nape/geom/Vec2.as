package nape.geom
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
   import flash.geom.Point;
   import zpp_nape.geom.ZPP_Vec2;
   import zpp_nape.util.class_219;
   
   public final class Vec2
   {
       
      
      public var var_72:Vec2;
      
      public var zpp_inner:ZPP_Vec2;
      
      public function Vec2(param1:Number = 0, param2:Number = 0)
      {
         var _loc4_:* = null as ZPP_Vec2;
         var_72 = null;
         zpp_inner = null;
         if(ZPP_Vec2.var_72 == null)
         {
            _loc4_ = new ZPP_Vec2();
         }
         else
         {
            _loc4_ = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc4_.next;
            _loc4_.next = null;
         }
         _loc4_.name_5 = false;
         _loc4_.var_109 = false;
         _loc4_.x = param1;
         _loc4_.y = param2;
         zpp_inner = _loc4_;
         zpp_inner.outer = this;
      }
      
      public static function name_5(param1:Number = 0, param2:Number = 0) : Vec2
      {
         var _loc3_:* = null as Vec2;
         var _loc4_:Boolean = false;
         var _loc5_:* = null as ZPP_Vec2;
         if(class_219.poolVec2 == null)
         {
            _loc3_ = new Vec2();
         }
         else
         {
            _loc3_ = class_219.poolVec2;
            class_219.poolVec2 = _loc3_.var_72;
            _loc3_.var_72 = null;
         }
         if(_loc3_.zpp_inner == null)
         {
            _loc4_ = false;
            if(ZPP_Vec2.var_72 == null)
            {
               _loc5_ = new ZPP_Vec2();
            }
            else
            {
               _loc5_ = ZPP_Vec2.var_72;
               ZPP_Vec2.var_72 = _loc5_.next;
               _loc5_.next = null;
            }
            _loc5_.name_5 = false;
            _loc5_.var_109 = _loc4_;
            _loc5_.x = param1;
            _loc5_.y = param2;
            _loc3_.zpp_inner = _loc5_;
            _loc3_.zpp_inner.outer = _loc3_;
         }
         else
         {
            _loc5_ = _loc3_.zpp_inner;
            §§push(false);
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            if(_loc3_.zpp_inner.x == param1)
            {
               §§pop();
               _loc5_ = _loc3_.zpp_inner;
               if(_loc5_._validate != null)
               {
                  _loc5_._validate();
               }
               §§push(_loc3_.zpp_inner.y == param2);
            }
            if(!§§pop())
            {
               _loc3_.zpp_inner.x = param1;
               _loc3_.zpp_inner.y = param2;
               _loc5_ = _loc3_.zpp_inner;
               if(_loc5_._invalidate != null)
               {
                  _loc5_._invalidate(_loc5_);
               }
            }
            _loc3_;
         }
         _loc3_.zpp_inner.name_5 = true;
         return _loc3_;
      }
      
      public static function method_65(param1:Number = 0, param2:Number = 0, param3:Boolean = false) : Vec2
      {
         var _loc4_:* = null as Vec2;
         var _loc5_:Boolean = false;
         var _loc6_:* = null as ZPP_Vec2;
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
            _loc6_.x = param1;
            _loc6_.y = param2;
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
            if(_loc4_.zpp_inner.x == param1)
            {
               §§pop();
               _loc6_ = _loc4_.zpp_inner;
               if(_loc6_._validate != null)
               {
                  _loc6_._validate();
               }
               §§push(_loc4_.zpp_inner.y == param2);
            }
            if(!§§pop())
            {
               _loc4_.zpp_inner.x = param1;
               _loc4_.zpp_inner.y = param2;
               _loc6_ = _loc4_.zpp_inner;
               if(_loc6_._invalidate != null)
               {
                  _loc6_._invalidate(_loc6_);
               }
            }
            _loc4_;
         }
         _loc4_.zpp_inner.name_5 = param3;
         return _loc4_;
      }
      
      public static function method_527(param1:Point, param2:Boolean = false) : Vec2
      {
         var _loc5_:* = null as Vec2;
         var _loc6_:Boolean = false;
         var _loc7_:* = null as ZPP_Vec2;
         var _loc3_:Number = param1.x;
         var _loc4_:Number = param1.y;
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
            _loc7_.x = _loc3_;
            _loc7_.y = _loc4_;
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
            if(_loc5_.zpp_inner.x == _loc3_)
            {
               §§pop();
               _loc7_ = _loc5_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               §§push(_loc5_.zpp_inner.y == _loc4_);
            }
            if(!§§pop())
            {
               _loc5_.zpp_inner.x = _loc3_;
               _loc5_.zpp_inner.y = _loc4_;
               _loc7_ = _loc5_.zpp_inner;
               if(_loc7_._invalidate != null)
               {
                  _loc7_._invalidate(_loc7_);
               }
            }
            _loc5_;
         }
         _loc5_.zpp_inner.name_5 = param2;
         return _loc5_;
      }
      
      public static function method_836(param1:Number, param2:Number, param3:Boolean = false) : Vec2
      {
         var _loc6_:* = null as Vec2;
         var _loc7_:Boolean = false;
         var _loc8_:* = null as ZPP_Vec2;
         var _loc4_:Number = param1 * Math.cos(param2);
         var _loc5_:Number = param1 * Math.sin(param2);
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
            _loc8_.x = _loc4_;
            _loc8_.y = _loc5_;
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
            if(_loc6_.zpp_inner.x == _loc4_)
            {
               §§pop();
               _loc8_ = _loc6_.zpp_inner;
               if(_loc8_._validate != null)
               {
                  _loc8_._validate();
               }
               §§push(_loc6_.zpp_inner.y == _loc5_);
            }
            if(!§§pop())
            {
               _loc6_.zpp_inner.x = _loc4_;
               _loc6_.zpp_inner.y = _loc5_;
               _loc8_ = _loc6_.zpp_inner;
               if(_loc8_._invalidate != null)
               {
                  _loc8_._invalidate(_loc8_);
               }
            }
            _loc6_;
         }
         _loc6_.zpp_inner.name_5 = param3;
         return _loc6_;
      }
      
      public static function method_831(param1:Vec2, param2:Vec2) : Number
      {
         var _loc5_:* = null as ZPP_Vec2;
         var _loc11_:* = null as Vec2;
         var _loc12_:* = null as ZPP_Vec2;
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
         _loc5_ = param2.zpp_inner;
         if(_loc5_._validate != null)
         {
            _loc5_._validate();
         }
         var _loc7_:Number = param2.zpp_inner.x;
         _loc5_ = param2.zpp_inner;
         if(_loc5_._validate != null)
         {
            _loc5_._validate();
         }
         var _loc8_:Number = param2.zpp_inner.y;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         _loc9_ = Number(_loc4_ - _loc7_);
         _loc10_ = Number(_loc6_ - _loc8_);
         var _loc3_:Number = Number(_loc9_ * _loc9_ + _loc10_ * _loc10_);
         if(param1.zpp_inner.name_5)
         {
            _loc5_ = param1.zpp_inner;
            param1.zpp_inner.outer = null;
            param1.zpp_inner = null;
            _loc11_ = param1;
            _loc11_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc11_;
            _loc12_ = _loc5_;
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
         if(param2.zpp_inner.name_5)
         {
            _loc5_ = param2.zpp_inner;
            param2.zpp_inner.outer = null;
            param2.zpp_inner = null;
            _loc11_ = param2;
            _loc11_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc11_;
            _loc12_ = _loc5_;
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
         return _loc3_;
      }
      
      public static function distance(param1:Vec2, param2:Vec2) : Number
      {
         var _loc5_:* = null as ZPP_Vec2;
         var _loc11_:* = null as Vec2;
         var _loc12_:* = null as ZPP_Vec2;
         _loc5_ = param1.zpp_inner;
         §§push(Math);
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
         _loc5_ = param2.zpp_inner;
         if(_loc5_._validate != null)
         {
            _loc5_._validate();
         }
         var _loc7_:Number = param2.zpp_inner.x;
         _loc5_ = param2.zpp_inner;
         if(_loc5_._validate != null)
         {
            _loc5_._validate();
         }
         var _loc8_:Number = param2.zpp_inner.y;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         _loc9_ = Number(_loc4_ - _loc7_);
         _loc10_ = Number(_loc6_ - _loc8_);
         var _loc3_:Number = Number(§§pop().sqrt(Number(_loc9_ * _loc9_ + _loc10_ * _loc10_)));
         if(param1.zpp_inner.name_5)
         {
            _loc5_ = param1.zpp_inner;
            param1.zpp_inner.outer = null;
            param1.zpp_inner = null;
            _loc11_ = param1;
            _loc11_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc11_;
            _loc12_ = _loc5_;
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
         if(param2.zpp_inner.name_5)
         {
            _loc5_ = param2.zpp_inner;
            param2.zpp_inner.outer = null;
            param2.zpp_inner = null;
            _loc11_ = param2;
            _loc11_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc11_;
            _loc12_ = _loc5_;
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
         return _loc3_;
      }
      
      public final function method_875(param1:Boolean = false) : Vec2
      {
         var _loc4_:* = null as ZPP_Vec2;
         var _loc5_:* = 0;
         var _loc6_:* = NaN;
         var _loc7_:* = null as Vec2;
         var _loc8_:Boolean = false;
         _loc4_ = zpp_inner;
         §§push(1);
         if(_loc4_._validate != null)
         {
            _loc4_._validate();
         }
         _loc4_ = zpp_inner;
         §§push(zpp_inner.x);
         if(_loc4_._validate != null)
         {
            _loc4_._validate();
         }
         _loc4_ = zpp_inner;
         §§push(§§pop() * zpp_inner.x);
         if(_loc4_._validate != null)
         {
            _loc4_._validate();
         }
         _loc4_ = zpp_inner;
         §§push(zpp_inner.y);
         if(_loc4_._validate != null)
         {
            _loc4_._validate();
         }
         var _loc3_:Number = Number(§§pop() + §§pop() * zpp_inner.y);
         if(_loc3_ == 0)
         {
            §§push(0);
         }
         else
         {
            sf32(_loc3_,0);
            _loc5_ = 1597463007 - (li32(0) >> 1);
            si32(1597463007 - (li32(0) >> 1),0);
            _loc6_ = Number(lf32(0));
            §§push(1 / (lf32(0) * (1.5 - 0.5 * _loc3_ * _loc6_ * _loc6_)));
         }
         var _loc2_:Number = §§pop() / §§pop();
         _loc4_ = zpp_inner;
         if(_loc4_._validate != null)
         {
            _loc4_._validate();
         }
         _loc3_ = zpp_inner.x * _loc2_;
         _loc4_ = zpp_inner;
         if(_loc4_._validate != null)
         {
            _loc4_._validate();
         }
         _loc6_ = Number(zpp_inner.y * _loc2_);
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
            _loc8_ = false;
            if(ZPP_Vec2.var_72 == null)
            {
               _loc4_ = new ZPP_Vec2();
            }
            else
            {
               _loc4_ = ZPP_Vec2.var_72;
               ZPP_Vec2.var_72 = _loc4_.next;
               _loc4_.next = null;
            }
            _loc4_.name_5 = false;
            _loc4_.var_109 = _loc8_;
            _loc4_.x = _loc3_;
            _loc4_.y = _loc6_;
            _loc7_.zpp_inner = _loc4_;
            _loc7_.zpp_inner.outer = _loc7_;
         }
         else
         {
            _loc4_ = _loc7_.zpp_inner;
            §§push(false);
            if(_loc4_._validate != null)
            {
               _loc4_._validate();
            }
            if(_loc7_.zpp_inner.x == _loc3_)
            {
               §§pop();
               _loc4_ = _loc7_.zpp_inner;
               if(_loc4_._validate != null)
               {
                  _loc4_._validate();
               }
               §§push(_loc7_.zpp_inner.y == _loc6_);
            }
            if(!§§pop())
            {
               _loc7_.zpp_inner.x = _loc3_;
               _loc7_.zpp_inner.y = _loc6_;
               _loc4_ = _loc7_.zpp_inner;
               if(_loc4_._invalidate != null)
               {
                  _loc4_._invalidate(_loc4_);
               }
            }
            _loc7_;
         }
         _loc7_.zpp_inner.name_5 = param1;
         return _loc7_;
      }
      
      public final function toString() : String
      {
         var _loc1_:ZPP_Vec2 = zpp_inner;
         if(_loc1_._validate != null)
         {
            _loc1_._validate();
         }
         return zpp_inner.toString();
      }
      
      public final function method_922(param1:Point = undefined) : Point
      {
         if(param1 == null)
         {
            param1 = new Point();
         }
         var _loc2_:ZPP_Vec2 = zpp_inner;
         if(_loc2_._validate != null)
         {
            _loc2_._validate();
         }
         param1.x = zpp_inner.x;
         _loc2_ = zpp_inner;
         if(_loc2_._validate != null)
         {
            _loc2_._validate();
         }
         param1.y = zpp_inner.y;
         return param1;
      }
      
      public final function method_549(param1:Vec2) : Vec2
      {
         var _loc3_:* = null as ZPP_Vec2;
         var _loc5_:* = null as Vec2;
         var _loc6_:* = null as ZPP_Vec2;
         _loc3_ = zpp_inner;
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         _loc3_ = param1.zpp_inner;
         §§push(zpp_inner.x);
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         var _loc2_:Number = §§pop() - param1.zpp_inner.x;
         _loc3_ = zpp_inner;
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         _loc3_ = param1.zpp_inner;
         §§push(zpp_inner.y);
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         var _loc4_:Number = §§pop() - param1.zpp_inner.y;
         _loc3_ = zpp_inner;
         §§push(false);
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         if(zpp_inner.x == _loc2_)
         {
            §§pop();
            _loc3_ = zpp_inner;
            if(_loc3_._validate != null)
            {
               _loc3_._validate();
            }
            §§push(zpp_inner.y == _loc4_);
         }
         if(!§§pop())
         {
            zpp_inner.x = _loc2_;
            zpp_inner.y = _loc4_;
            _loc3_ = zpp_inner;
            if(_loc3_._invalidate != null)
            {
               _loc3_._invalidate(_loc3_);
            }
         }
         this;
         if(param1.zpp_inner.name_5)
         {
            _loc3_ = param1.zpp_inner;
            param1.zpp_inner.outer = null;
            param1.zpp_inner = null;
            _loc5_ = param1;
            _loc5_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc5_;
            _loc6_ = _loc3_;
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
      
      public final function method_302(param1:Vec2, param2:Boolean = false) : Vec2
      {
         var _loc5_:* = null as ZPP_Vec2;
         var _loc7_:* = null as Vec2;
         var _loc8_:Boolean = false;
         var _loc9_:* = null as ZPP_Vec2;
         _loc5_ = zpp_inner;
         if(_loc5_._validate != null)
         {
            _loc5_._validate();
         }
         _loc5_ = param1.zpp_inner;
         §§push(zpp_inner.x);
         if(_loc5_._validate != null)
         {
            _loc5_._validate();
         }
         var _loc4_:Number = §§pop() - param1.zpp_inner.x;
         _loc5_ = zpp_inner;
         if(_loc5_._validate != null)
         {
            _loc5_._validate();
         }
         _loc5_ = param1.zpp_inner;
         §§push(zpp_inner.y);
         if(_loc5_._validate != null)
         {
            _loc5_._validate();
         }
         var _loc6_:Number = §§pop() - param1.zpp_inner.y;
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
            _loc8_ = false;
            if(ZPP_Vec2.var_72 == null)
            {
               _loc5_ = new ZPP_Vec2();
            }
            else
            {
               _loc5_ = ZPP_Vec2.var_72;
               ZPP_Vec2.var_72 = _loc5_.next;
               _loc5_.next = null;
            }
            _loc5_.name_5 = false;
            _loc5_.var_109 = _loc8_;
            _loc5_.x = _loc4_;
            _loc5_.y = _loc6_;
            _loc7_.zpp_inner = _loc5_;
            _loc7_.zpp_inner.outer = _loc7_;
         }
         else
         {
            _loc5_ = _loc7_.zpp_inner;
            §§push(false);
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            if(_loc7_.zpp_inner.x == _loc4_)
            {
               §§pop();
               _loc5_ = _loc7_.zpp_inner;
               if(_loc5_._validate != null)
               {
                  _loc5_._validate();
               }
               §§push(_loc7_.zpp_inner.y == _loc6_);
            }
            if(!§§pop())
            {
               _loc7_.zpp_inner.x = _loc4_;
               _loc7_.zpp_inner.y = _loc6_;
               _loc5_ = _loc7_.zpp_inner;
               if(_loc5_._invalidate != null)
               {
                  _loc5_._invalidate(_loc5_);
               }
            }
            _loc7_;
         }
         _loc7_.zpp_inner.name_5 = param2;
         var _loc3_:Vec2 = _loc7_;
         if(param1.zpp_inner.name_5)
         {
            _loc5_ = param1.zpp_inner;
            param1.zpp_inner.outer = null;
            param1.zpp_inner = null;
            _loc7_ = param1;
            _loc7_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc7_;
            _loc9_ = _loc5_;
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
         return _loc3_;
      }
      
      public final function method_211(param1:Number, param2:Number) : Vec2
      {
         var _loc3_:* = null as ZPP_Vec2;
         _loc3_ = zpp_inner;
         §§push(false);
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         if(zpp_inner.x == param1)
         {
            §§pop();
            _loc3_ = zpp_inner;
            if(_loc3_._validate != null)
            {
               _loc3_._validate();
            }
            §§push(zpp_inner.y == param2);
         }
         if(!§§pop())
         {
            zpp_inner.x = param1;
            zpp_inner.y = param2;
            _loc3_ = zpp_inner;
            if(_loc3_._invalidate != null)
            {
               _loc3_._invalidate(_loc3_);
            }
         }
         return this;
      }
      
      public function set y(param1:Number) : Number
      {
         var _loc2_:* = null as ZPP_Vec2;
         _loc2_ = zpp_inner;
         if(_loc2_._validate != null)
         {
            _loc2_._validate();
         }
         if(zpp_inner.y != param1)
         {
            zpp_inner.y = param1;
            _loc2_ = zpp_inner;
            if(_loc2_._invalidate != null)
            {
               _loc2_._invalidate(_loc2_);
            }
         }
         _loc2_ = zpp_inner;
         if(_loc2_._validate != null)
         {
            _loc2_._validate();
         }
         return zpp_inner.y;
      }
      
      public function set x(param1:Number) : Number
      {
         var _loc2_:* = null as ZPP_Vec2;
         _loc2_ = zpp_inner;
         if(_loc2_._validate != null)
         {
            _loc2_._validate();
         }
         if(zpp_inner.x != param1)
         {
            zpp_inner.x = param1;
            _loc2_ = zpp_inner;
            if(_loc2_._invalidate != null)
            {
               _loc2_._invalidate(_loc2_);
            }
         }
         _loc2_ = zpp_inner;
         if(_loc2_._validate != null)
         {
            _loc2_._validate();
         }
         return zpp_inner.x;
      }
      
      public function set length(param1:Number) : Number
      {
         var _loc3_:* = null as ZPP_Vec2;
         _loc3_ = zpp_inner;
         §§push(param1);
         §§push(Math);
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         _loc3_ = zpp_inner;
         §§push(zpp_inner.x);
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         _loc3_ = zpp_inner;
         §§push(§§pop() * zpp_inner.x);
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         _loc3_ = zpp_inner;
         §§push(zpp_inner.y);
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         var _loc2_:Number = §§pop() / §§pop().sqrt(Number(§§pop() + §§pop() * zpp_inner.y));
         var _loc4_:Vec2 = this;
         _loc3_ = _loc4_.zpp_inner;
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         var _loc5_:Number = _loc4_.zpp_inner.x * _loc2_;
         _loc3_ = _loc4_.zpp_inner;
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         if(_loc4_.zpp_inner.x != _loc5_)
         {
            _loc4_.zpp_inner.x = _loc5_;
            _loc3_ = _loc4_.zpp_inner;
            if(_loc3_._invalidate != null)
            {
               _loc3_._invalidate(_loc3_);
            }
         }
         _loc3_ = _loc4_.zpp_inner;
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         _loc4_.zpp_inner.x;
         _loc4_ = this;
         _loc3_ = _loc4_.zpp_inner;
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         _loc5_ = _loc4_.zpp_inner.y * _loc2_;
         _loc3_ = _loc4_.zpp_inner;
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         if(_loc4_.zpp_inner.y != _loc5_)
         {
            _loc4_.zpp_inner.y = _loc5_;
            _loc3_ = _loc4_.zpp_inner;
            if(_loc3_._invalidate != null)
            {
               _loc3_._invalidate(_loc3_);
            }
         }
         _loc3_ = _loc4_.zpp_inner;
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         _loc4_.zpp_inner.y;
         _loc3_ = zpp_inner;
         if(_loc3_._invalidate != null)
         {
            _loc3_._invalidate(_loc3_);
         }
         _loc3_ = zpp_inner;
         §§push(Math);
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         _loc3_ = zpp_inner;
         §§push(zpp_inner.x);
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         _loc3_ = zpp_inner;
         §§push(§§pop() * zpp_inner.x);
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         _loc3_ = zpp_inner;
         §§push(zpp_inner.y);
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         return Number(§§pop().sqrt(Number(§§pop() + §§pop() * zpp_inner.y)));
      }
      
      public function set angle(param1:Number) : Number
      {
         var _loc3_:* = null as ZPP_Vec2;
         _loc3_ = zpp_inner;
         §§push(Math);
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         _loc3_ = zpp_inner;
         §§push(zpp_inner.x);
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         _loc3_ = zpp_inner;
         §§push(§§pop() * zpp_inner.x);
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         _loc3_ = zpp_inner;
         §§push(zpp_inner.y);
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         var _loc2_:Number = Number(§§pop().sqrt(Number(§§pop() + §§pop() * zpp_inner.y)));
         var _loc4_:Number = _loc2_ * Math.cos(param1);
         var _loc5_:Number = _loc2_ * Math.sin(param1);
         _loc3_ = zpp_inner;
         §§push(false);
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         if(zpp_inner.x == _loc4_)
         {
            §§pop();
            _loc3_ = zpp_inner;
            if(_loc3_._validate != null)
            {
               _loc3_._validate();
            }
            §§push(zpp_inner.y == _loc5_);
         }
         if(!§§pop())
         {
            zpp_inner.x = _loc4_;
            zpp_inner.y = _loc5_;
            _loc3_ = zpp_inner;
            if(_loc3_._invalidate != null)
            {
               _loc3_._invalidate(_loc3_);
            }
         }
         this;
         _loc3_ = zpp_inner;
         §§push(false);
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         _loc3_ = zpp_inner;
         §§push(zpp_inner.x);
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         if(§§pop() == zpp_inner.y)
         {
            §§pop();
            _loc3_ = zpp_inner;
            if(_loc3_._validate != null)
            {
               _loc3_._validate();
            }
            §§push(zpp_inner.x == 0);
         }
         if(§§pop())
         {
            return 0;
         }
         _loc3_ = zpp_inner;
         §§push(Math);
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         _loc3_ = zpp_inner;
         §§push(zpp_inner.y);
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         return Number(§§pop().atan2(§§pop(),zpp_inner.x));
      }
      
      public final function name_40(param1:Vec2) : Vec2
      {
         var _loc4_:* = null as ZPP_Vec2;
         var _loc6_:* = null as Vec2;
         var _loc7_:* = null as ZPP_Vec2;
         _loc4_ = param1.zpp_inner;
         if(_loc4_._validate != null)
         {
            _loc4_._validate();
         }
         var _loc3_:Number = param1.zpp_inner.x;
         _loc4_ = param1.zpp_inner;
         if(_loc4_._validate != null)
         {
            _loc4_._validate();
         }
         var _loc5_:Number = param1.zpp_inner.y;
         _loc4_ = zpp_inner;
         §§push(false);
         if(_loc4_._validate != null)
         {
            _loc4_._validate();
         }
         if(zpp_inner.x == _loc3_)
         {
            §§pop();
            _loc4_ = zpp_inner;
            if(_loc4_._validate != null)
            {
               _loc4_._validate();
            }
            §§push(zpp_inner.y == _loc5_);
         }
         if(!§§pop())
         {
            zpp_inner.x = _loc3_;
            zpp_inner.y = _loc5_;
            _loc4_ = zpp_inner;
            if(_loc4_._invalidate != null)
            {
               _loc4_._invalidate(_loc4_);
            }
         }
         var _loc2_:Vec2 = this;
         if(param1.zpp_inner.name_5)
         {
            _loc4_ = param1.zpp_inner;
            param1.zpp_inner.outer = null;
            param1.zpp_inner = null;
            _loc6_ = param1;
            _loc6_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc6_;
            _loc7_ = _loc4_;
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
         return _loc2_;
      }
      
      public final function rotate(param1:Number) : Vec2
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:* = null as ZPP_Vec2;
         if(param1 % (Math.PI * 2) != 0)
         {
            _loc2_ = Number(Math.sin(param1));
            _loc3_ = Number(Math.cos(param1));
            _loc4_ = _loc3_ * zpp_inner.x - _loc2_ * zpp_inner.y;
            zpp_inner.y = Number(zpp_inner.x * _loc2_ + zpp_inner.y * _loc3_);
            zpp_inner.x = _loc4_;
            _loc5_ = zpp_inner;
            if(_loc5_._invalidate != null)
            {
               _loc5_._invalidate(_loc5_);
            }
         }
         return this;
      }
      
      public final function method_808(param1:Vec2, param2:Boolean = false) : Vec2
      {
         var _loc5_:* = null as ZPP_Vec2;
         var _loc7_:* = null as Vec2;
         var _loc8_:Boolean = false;
         var _loc9_:* = null as Vec2;
         var _loc10_:* = null as ZPP_Vec2;
         _loc5_ = zpp_inner;
         if(_loc5_._validate != null)
         {
            _loc5_._validate();
         }
         var _loc4_:Number = zpp_inner.x;
         _loc5_ = zpp_inner;
         if(_loc5_._validate != null)
         {
            _loc5_._validate();
         }
         var _loc6_:Number = zpp_inner.y;
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
            _loc8_ = false;
            if(ZPP_Vec2.var_72 == null)
            {
               _loc5_ = new ZPP_Vec2();
            }
            else
            {
               _loc5_ = ZPP_Vec2.var_72;
               ZPP_Vec2.var_72 = _loc5_.next;
               _loc5_.next = null;
            }
            _loc5_.name_5 = false;
            _loc5_.var_109 = _loc8_;
            _loc5_.x = _loc4_;
            _loc5_.y = _loc6_;
            _loc7_.zpp_inner = _loc5_;
            _loc7_.zpp_inner.outer = _loc7_;
         }
         else
         {
            _loc5_ = _loc7_.zpp_inner;
            §§push(false);
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            if(_loc7_.zpp_inner.x == _loc4_)
            {
               §§pop();
               _loc5_ = _loc7_.zpp_inner;
               if(_loc5_._validate != null)
               {
                  _loc5_._validate();
               }
               §§push(_loc7_.zpp_inner.y == _loc6_);
            }
            if(!§§pop())
            {
               _loc7_.zpp_inner.x = _loc4_;
               _loc7_.zpp_inner.y = _loc6_;
               _loc5_ = _loc7_.zpp_inner;
               if(_loc5_._invalidate != null)
               {
                  _loc5_._invalidate(_loc5_);
               }
            }
            _loc7_;
         }
         _loc7_.zpp_inner.name_5 = true;
         var _loc3_:Vec2 = _loc7_.normalise();
         _loc7_ = param1.method_302(_loc3_.method_360(2 * _loc3_.dot(param1)),param2);
         if(param1.zpp_inner.name_5)
         {
            _loc5_ = param1.zpp_inner;
            param1.zpp_inner.outer = null;
            param1.zpp_inner = null;
            _loc9_ = param1;
            _loc9_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc9_;
            _loc10_ = _loc5_;
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
         return _loc7_;
      }
      
      public final function method_763(param1:Boolean = false) : Vec2
      {
         var _loc3_:* = null as ZPP_Vec2;
         var _loc5_:* = null as Vec2;
         var _loc6_:Boolean = false;
         _loc3_ = zpp_inner;
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         var _loc2_:Number = -zpp_inner.y;
         _loc3_ = zpp_inner;
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         var _loc4_:Number = zpp_inner.x;
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
               _loc3_ = new ZPP_Vec2();
            }
            else
            {
               _loc3_ = ZPP_Vec2.var_72;
               ZPP_Vec2.var_72 = _loc3_.next;
               _loc3_.next = null;
            }
            _loc3_.name_5 = false;
            _loc3_.var_109 = _loc6_;
            _loc3_.x = _loc2_;
            _loc3_.y = _loc4_;
            _loc5_.zpp_inner = _loc3_;
            _loc5_.zpp_inner.outer = _loc5_;
         }
         else
         {
            _loc3_ = _loc5_.zpp_inner;
            §§push(false);
            if(_loc3_._validate != null)
            {
               _loc3_._validate();
            }
            if(_loc5_.zpp_inner.x == _loc2_)
            {
               §§pop();
               _loc3_ = _loc5_.zpp_inner;
               if(_loc3_._validate != null)
               {
                  _loc3_._validate();
               }
               §§push(_loc5_.zpp_inner.y == _loc4_);
            }
            if(!§§pop())
            {
               _loc5_.zpp_inner.x = _loc2_;
               _loc5_.zpp_inner.y = _loc4_;
               _loc3_ = _loc5_.zpp_inner;
               if(_loc3_._invalidate != null)
               {
                  _loc3_._invalidate(_loc3_);
               }
            }
            _loc5_;
         }
         _loc5_.zpp_inner.name_5 = param1;
         return _loc5_;
      }
      
      public final function normalise() : Vec2
      {
         var _loc2_:* = null as ZPP_Vec2;
         _loc2_ = zpp_inner;
         if(_loc2_._validate != null)
         {
            _loc2_._validate();
         }
         _loc2_ = zpp_inner;
         §§push(zpp_inner.x);
         if(_loc2_._validate != null)
         {
            _loc2_._validate();
         }
         _loc2_ = zpp_inner;
         §§push(§§pop() * zpp_inner.x);
         if(_loc2_._validate != null)
         {
            _loc2_._validate();
         }
         _loc2_ = zpp_inner;
         §§push(zpp_inner.y);
         if(_loc2_._validate != null)
         {
            _loc2_._validate();
         }
         var _loc1_:Number = Number(§§pop() + §§pop() * zpp_inner.y);
         var _loc3_:Number = 1 / Math.sqrt(_loc1_);
         var _loc4_:Number = _loc3_;
         var _loc5_:Vec2 = this;
         _loc2_ = _loc5_.zpp_inner;
         if(_loc2_._validate != null)
         {
            _loc2_._validate();
         }
         var _loc6_:Number = _loc5_.zpp_inner.x * _loc4_;
         _loc2_ = _loc5_.zpp_inner;
         if(_loc2_._validate != null)
         {
            _loc2_._validate();
         }
         if(_loc5_.zpp_inner.x != _loc6_)
         {
            _loc5_.zpp_inner.x = _loc6_;
            _loc2_ = _loc5_.zpp_inner;
            if(_loc2_._invalidate != null)
            {
               _loc2_._invalidate(_loc2_);
            }
         }
         _loc2_ = _loc5_.zpp_inner;
         if(_loc2_._validate != null)
         {
            _loc2_._validate();
         }
         _loc5_.zpp_inner.x;
         _loc5_ = this;
         _loc2_ = _loc5_.zpp_inner;
         if(_loc2_._validate != null)
         {
            _loc2_._validate();
         }
         _loc6_ = _loc5_.zpp_inner.y * _loc4_;
         _loc2_ = _loc5_.zpp_inner;
         if(_loc2_._validate != null)
         {
            _loc2_._validate();
         }
         if(_loc5_.zpp_inner.y != _loc6_)
         {
            _loc5_.zpp_inner.y = _loc6_;
            _loc2_ = _loc5_.zpp_inner;
            if(_loc2_._invalidate != null)
            {
               _loc2_._invalidate(_loc2_);
            }
         }
         _loc2_ = _loc5_.zpp_inner;
         if(_loc2_._validate != null)
         {
            _loc2_._validate();
         }
         _loc5_.zpp_inner.y;
         _loc2_ = zpp_inner;
         if(_loc2_._invalidate != null)
         {
            _loc2_._invalidate(_loc2_);
         }
         return this;
      }
      
      public final function method_360(param1:Number) : Vec2
      {
         var _loc3_:* = null as ZPP_Vec2;
         _loc3_ = zpp_inner;
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         var _loc2_:Number = zpp_inner.x * param1;
         _loc3_ = zpp_inner;
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         var _loc4_:Number = zpp_inner.y * param1;
         _loc3_ = zpp_inner;
         §§push(false);
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         if(zpp_inner.x == _loc2_)
         {
            §§pop();
            _loc3_ = zpp_inner;
            if(_loc3_._validate != null)
            {
               _loc3_._validate();
            }
            §§push(zpp_inner.y == _loc4_);
         }
         if(!§§pop())
         {
            zpp_inner.x = _loc2_;
            zpp_inner.y = _loc4_;
            _loc3_ = zpp_inner;
            if(_loc3_._invalidate != null)
            {
               _loc3_._invalidate(_loc3_);
            }
         }
         return this;
      }
      
      public final function method_392(param1:Number, param2:Boolean = false) : Vec2
      {
         var _loc4_:* = null as ZPP_Vec2;
         var _loc6_:* = null as Vec2;
         var _loc7_:Boolean = false;
         _loc4_ = zpp_inner;
         if(_loc4_._validate != null)
         {
            _loc4_._validate();
         }
         var _loc3_:Number = zpp_inner.x * param1;
         _loc4_ = zpp_inner;
         if(_loc4_._validate != null)
         {
            _loc4_._validate();
         }
         var _loc5_:Number = zpp_inner.y * param1;
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
               _loc4_ = new ZPP_Vec2();
            }
            else
            {
               _loc4_ = ZPP_Vec2.var_72;
               ZPP_Vec2.var_72 = _loc4_.next;
               _loc4_.next = null;
            }
            _loc4_.name_5 = false;
            _loc4_.var_109 = _loc7_;
            _loc4_.x = _loc3_;
            _loc4_.y = _loc5_;
            _loc6_.zpp_inner = _loc4_;
            _loc6_.zpp_inner.outer = _loc6_;
         }
         else
         {
            _loc4_ = _loc6_.zpp_inner;
            §§push(false);
            if(_loc4_._validate != null)
            {
               _loc4_._validate();
            }
            if(_loc6_.zpp_inner.x == _loc3_)
            {
               §§pop();
               _loc4_ = _loc6_.zpp_inner;
               if(_loc4_._validate != null)
               {
                  _loc4_._validate();
               }
               §§push(_loc6_.zpp_inner.y == _loc5_);
            }
            if(!§§pop())
            {
               _loc6_.zpp_inner.x = _loc3_;
               _loc6_.zpp_inner.y = _loc5_;
               _loc4_ = _loc6_.zpp_inner;
               if(_loc4_._invalidate != null)
               {
                  _loc4_._invalidate(_loc4_);
               }
            }
            _loc6_;
         }
         _loc6_.zpp_inner.name_5 = param2;
         return _loc6_;
      }
      
      public final function method_437() : Number
      {
         var _loc1_:ZPP_Vec2 = zpp_inner;
         if(_loc1_._validate != null)
         {
            _loc1_._validate();
         }
         _loc1_ = zpp_inner;
         §§push(zpp_inner.x);
         if(_loc1_._validate != null)
         {
            _loc1_._validate();
         }
         _loc1_ = zpp_inner;
         §§push(§§pop() * zpp_inner.x);
         if(_loc1_._validate != null)
         {
            _loc1_._validate();
         }
         _loc1_ = zpp_inner;
         §§push(zpp_inner.y);
         if(_loc1_._validate != null)
         {
            _loc1_._validate();
         }
         return Number(§§pop() + §§pop() * zpp_inner.y);
      }
      
      public function get y() : Number
      {
         var _loc1_:ZPP_Vec2 = zpp_inner;
         if(_loc1_._validate != null)
         {
            _loc1_._validate();
         }
         return zpp_inner.y;
      }
      
      public function get x() : Number
      {
         var _loc1_:ZPP_Vec2 = zpp_inner;
         if(_loc1_._validate != null)
         {
            _loc1_._validate();
         }
         return zpp_inner.x;
      }
      
      public function get length() : Number
      {
         var _loc1_:ZPP_Vec2 = zpp_inner;
         §§push(Math);
         if(_loc1_._validate != null)
         {
            _loc1_._validate();
         }
         _loc1_ = zpp_inner;
         §§push(zpp_inner.x);
         if(_loc1_._validate != null)
         {
            _loc1_._validate();
         }
         _loc1_ = zpp_inner;
         §§push(§§pop() * zpp_inner.x);
         if(_loc1_._validate != null)
         {
            _loc1_._validate();
         }
         _loc1_ = zpp_inner;
         §§push(zpp_inner.y);
         if(_loc1_._validate != null)
         {
            _loc1_._validate();
         }
         return Number(§§pop().sqrt(Number(§§pop() + §§pop() * zpp_inner.y)));
      }
      
      public function get angle() : Number
      {
         var _loc1_:* = null as ZPP_Vec2;
         _loc1_ = zpp_inner;
         §§push(false);
         if(_loc1_._validate != null)
         {
            _loc1_._validate();
         }
         _loc1_ = zpp_inner;
         §§push(zpp_inner.x);
         if(_loc1_._validate != null)
         {
            _loc1_._validate();
         }
         if(§§pop() == zpp_inner.y)
         {
            §§pop();
            _loc1_ = zpp_inner;
            if(_loc1_._validate != null)
            {
               _loc1_._validate();
            }
            §§push(zpp_inner.x == 0);
         }
         if(§§pop())
         {
            return 0;
         }
         _loc1_ = zpp_inner;
         §§push(Math);
         if(_loc1_._validate != null)
         {
            _loc1_._validate();
         }
         _loc1_ = zpp_inner;
         §§push(zpp_inner.y);
         if(_loc1_._validate != null)
         {
            _loc1_._validate();
         }
         return Number(§§pop().atan2(§§pop(),zpp_inner.x));
      }
      
      public final function dot(param1:Vec2) : Number
      {
         var _loc3_:* = null as ZPP_Vec2;
         var _loc4_:* = null as Vec2;
         var _loc5_:* = null as ZPP_Vec2;
         _loc3_ = zpp_inner;
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         _loc3_ = param1.zpp_inner;
         §§push(zpp_inner.x);
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         _loc3_ = zpp_inner;
         §§push(§§pop() * param1.zpp_inner.x);
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         _loc3_ = param1.zpp_inner;
         §§push(zpp_inner.y);
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         var _loc2_:Number = Number(§§pop() + §§pop() * param1.zpp_inner.y);
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
         return _loc2_;
      }
      
      public final function dispose() : void
      {
         var _loc1_:ZPP_Vec2 = zpp_inner;
         zpp_inner.outer = null;
         zpp_inner = null;
         var _loc2_:Vec2 = this;
         _loc2_.var_72 = class_219.poolVec2;
         class_219.poolVec2 = _loc2_;
         var _loc3_:ZPP_Vec2 = _loc1_;
         if(_loc3_.outer != null)
         {
            _loc3_.outer.zpp_inner = null;
            _loc3_.outer = null;
         }
         _loc3_.var_103 = null;
         _loc3_._validate = null;
         _loc3_._invalidate = null;
         _loc3_.next = ZPP_Vec2.var_72;
         ZPP_Vec2.var_72 = _loc3_;
      }
      
      public final function method_851(param1:Vec2) : Number
      {
         var _loc3_:* = null as ZPP_Vec2;
         var _loc4_:* = null as Vec2;
         var _loc5_:* = null as ZPP_Vec2;
         _loc3_ = param1.zpp_inner;
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         _loc3_ = zpp_inner;
         §§push(param1.zpp_inner.y);
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         _loc3_ = param1.zpp_inner;
         §§push(§§pop() * zpp_inner.x);
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         _loc3_ = zpp_inner;
         §§push(param1.zpp_inner.x);
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         var _loc2_:Number = §§pop() - §§pop() * zpp_inner.y;
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
         return _loc2_;
      }
      
      public final function copy(param1:Boolean = false) : Vec2
      {
         var _loc3_:* = null as ZPP_Vec2;
         var _loc5_:* = null as Vec2;
         var _loc6_:Boolean = false;
         _loc3_ = zpp_inner;
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         var _loc2_:Number = zpp_inner.x;
         _loc3_ = zpp_inner;
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         var _loc4_:Number = zpp_inner.y;
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
               _loc3_ = new ZPP_Vec2();
            }
            else
            {
               _loc3_ = ZPP_Vec2.var_72;
               ZPP_Vec2.var_72 = _loc3_.next;
               _loc3_.next = null;
            }
            _loc3_.name_5 = false;
            _loc3_.var_109 = _loc6_;
            _loc3_.x = _loc2_;
            _loc3_.y = _loc4_;
            _loc5_.zpp_inner = _loc3_;
            _loc5_.zpp_inner.outer = _loc5_;
         }
         else
         {
            _loc3_ = _loc5_.zpp_inner;
            §§push(false);
            if(_loc3_._validate != null)
            {
               _loc3_._validate();
            }
            if(_loc5_.zpp_inner.x == _loc2_)
            {
               §§pop();
               _loc3_ = _loc5_.zpp_inner;
               if(_loc3_._validate != null)
               {
                  _loc3_._validate();
               }
               §§push(_loc5_.zpp_inner.y == _loc4_);
            }
            if(!§§pop())
            {
               _loc5_.zpp_inner.x = _loc2_;
               _loc5_.zpp_inner.y = _loc4_;
               _loc3_ = _loc5_.zpp_inner;
               if(_loc3_._invalidate != null)
               {
                  _loc3_._invalidate(_loc3_);
               }
            }
            _loc5_;
         }
         _loc5_.zpp_inner.name_5 = param1;
         return _loc5_;
      }
      
      public final function method_282(param1:Vec2) : Vec2
      {
         var _loc3_:* = null as ZPP_Vec2;
         var _loc5_:* = null as Vec2;
         var _loc6_:* = null as ZPP_Vec2;
         _loc3_ = zpp_inner;
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         _loc3_ = param1.zpp_inner;
         §§push(zpp_inner.x);
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         var _loc2_:Number = Number(§§pop() + param1.zpp_inner.x);
         _loc3_ = zpp_inner;
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         _loc3_ = param1.zpp_inner;
         §§push(zpp_inner.y);
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         var _loc4_:Number = Number(§§pop() + param1.zpp_inner.y);
         _loc3_ = zpp_inner;
         §§push(false);
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         if(zpp_inner.x == _loc2_)
         {
            §§pop();
            _loc3_ = zpp_inner;
            if(_loc3_._validate != null)
            {
               _loc3_._validate();
            }
            §§push(zpp_inner.y == _loc4_);
         }
         if(!§§pop())
         {
            zpp_inner.x = _loc2_;
            zpp_inner.y = _loc4_;
            _loc3_ = zpp_inner;
            if(_loc3_._invalidate != null)
            {
               _loc3_._invalidate(_loc3_);
            }
         }
         this;
         if(param1.zpp_inner.name_5)
         {
            _loc3_ = param1.zpp_inner;
            param1.zpp_inner.outer = null;
            param1.zpp_inner = null;
            _loc5_ = param1;
            _loc5_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc5_;
            _loc6_ = _loc3_;
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
      
      public final function method_833(param1:Vec2, param2:Number, param3:Boolean = false) : Vec2
      {
         var _loc6_:* = null as ZPP_Vec2;
         var _loc8_:* = null as Vec2;
         var _loc9_:Boolean = false;
         var _loc10_:* = null as ZPP_Vec2;
         _loc6_ = zpp_inner;
         if(_loc6_._validate != null)
         {
            _loc6_._validate();
         }
         _loc6_ = param1.zpp_inner;
         §§push(zpp_inner.x);
         if(_loc6_._validate != null)
         {
            _loc6_._validate();
         }
         var _loc5_:Number = Number(§§pop() + param1.zpp_inner.x * param2);
         _loc6_ = zpp_inner;
         if(_loc6_._validate != null)
         {
            _loc6_._validate();
         }
         _loc6_ = param1.zpp_inner;
         §§push(zpp_inner.y);
         if(_loc6_._validate != null)
         {
            _loc6_._validate();
         }
         var _loc7_:Number = Number(§§pop() + param1.zpp_inner.y * param2);
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
         var _loc4_:Vec2 = _loc8_;
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
      
      public final function add(param1:Vec2, param2:Boolean = false) : Vec2
      {
         var _loc5_:* = null as ZPP_Vec2;
         var _loc7_:* = null as Vec2;
         var _loc8_:Boolean = false;
         var _loc9_:* = null as ZPP_Vec2;
         _loc5_ = zpp_inner;
         if(_loc5_._validate != null)
         {
            _loc5_._validate();
         }
         _loc5_ = param1.zpp_inner;
         §§push(zpp_inner.x);
         if(_loc5_._validate != null)
         {
            _loc5_._validate();
         }
         var _loc4_:Number = Number(§§pop() + param1.zpp_inner.x);
         _loc5_ = zpp_inner;
         if(_loc5_._validate != null)
         {
            _loc5_._validate();
         }
         _loc5_ = param1.zpp_inner;
         §§push(zpp_inner.y);
         if(_loc5_._validate != null)
         {
            _loc5_._validate();
         }
         var _loc6_:Number = Number(§§pop() + param1.zpp_inner.y);
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
            _loc8_ = false;
            if(ZPP_Vec2.var_72 == null)
            {
               _loc5_ = new ZPP_Vec2();
            }
            else
            {
               _loc5_ = ZPP_Vec2.var_72;
               ZPP_Vec2.var_72 = _loc5_.next;
               _loc5_.next = null;
            }
            _loc5_.name_5 = false;
            _loc5_.var_109 = _loc8_;
            _loc5_.x = _loc4_;
            _loc5_.y = _loc6_;
            _loc7_.zpp_inner = _loc5_;
            _loc7_.zpp_inner.outer = _loc7_;
         }
         else
         {
            _loc5_ = _loc7_.zpp_inner;
            §§push(false);
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            if(_loc7_.zpp_inner.x == _loc4_)
            {
               §§pop();
               _loc5_ = _loc7_.zpp_inner;
               if(_loc5_._validate != null)
               {
                  _loc5_._validate();
               }
               §§push(_loc7_.zpp_inner.y == _loc6_);
            }
            if(!§§pop())
            {
               _loc7_.zpp_inner.x = _loc4_;
               _loc7_.zpp_inner.y = _loc6_;
               _loc5_ = _loc7_.zpp_inner;
               if(_loc5_._invalidate != null)
               {
                  _loc5_._invalidate(_loc5_);
               }
            }
            _loc7_;
         }
         _loc7_.zpp_inner.name_5 = param2;
         var _loc3_:Vec2 = _loc7_;
         if(param1.zpp_inner.name_5)
         {
            _loc5_ = param1.zpp_inner;
            param1.zpp_inner.outer = null;
            param1.zpp_inner = null;
            _loc7_ = param1;
            _loc7_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc7_;
            _loc9_ = _loc5_;
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
         return _loc3_;
      }
   }
}
