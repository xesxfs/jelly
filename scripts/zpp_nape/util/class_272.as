package zpp_nape.util
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
   import nape.geom.Vec2;
   import nape.geom.class_242;
   import package_33.Debug;
   import zpp_nape.geom.ZPP_AABB;
   import zpp_nape.geom.ZPP_Mat23;
   import zpp_nape.geom.ZPP_Vec2;
   
   public class class_272
   {
      
      public static var var_87:Boolean = false;
       
      
      public var var_235:Boolean;
      
      public var var_125:ZPP_Mat23;
      
      public var xdet:Number;
      
      public var width:int;
      
      public var var_633:ZPP_AABB;
      
      public var var_302:ZPP_AABB;
      
      public var outer:Debug;
      
      public var var_575:Boolean;
      
      public var var_262:ZPP_AABB;
      
      public var height:int;
      
      public var var_726:class_331;
      
      public var var_725:class_276;
      
      public var var_480:Number;
      
      public var var_505:Number;
      
      public var var_234:int;
      
      public var var_499:Number;
      
      public function class_272(param1:int, param2:int)
      {
         var _loc3_:* = null as ZPP_AABB;
         var_302 = null;
         var_262 = null;
         var_633 = null;
         height = 0;
         width = 0;
         xdet = 0;
         var_235 = false;
         var_125 = null;
         var_234 = 0;
         var_499 = 0;
         var_505 = 0;
         var_480 = 0;
         var_726 = null;
         var_725 = null;
         var_575 = false;
         outer = null;
         var_235 = true;
         xdet = 1;
         width = param1;
         height = param2;
         if(ZPP_AABB.var_72 == null)
         {
            _loc3_ = new ZPP_AABB();
         }
         else
         {
            _loc3_ = ZPP_AABB.var_72;
            ZPP_AABB.var_72 = _loc3_.next;
            _loc3_.next = null;
         }
         null;
         _loc3_.var_77 = 0;
         _loc3_.var_78 = 0;
         _loc3_.var_79 = param1;
         _loc3_.var_80 = param2;
         var_633 = _loc3_;
         if(ZPP_AABB.var_72 == null)
         {
            _loc3_ = new ZPP_AABB();
         }
         else
         {
            _loc3_ = ZPP_AABB.var_72;
            ZPP_AABB.var_72 = _loc3_.next;
            _loc3_.next = null;
         }
         null;
         _loc3_.var_77 = 0;
         _loc3_.var_78 = 0;
         _loc3_.var_79 = param1;
         _loc3_.var_80 = param2;
         var_262 = _loc3_;
         var_302 = new ZPP_AABB();
      }
      
      public final function xform_invalidate() : void
      {
         var _loc1_:* = NaN;
         var _loc2_:* = NaN;
         var _loc4_:* = 0;
         var _loc7_:* = null as Vec2;
         var _loc8_:Boolean = false;
         var _loc9_:* = null as ZPP_Vec2;
         var _loc3_:class_242 = var_125.outer;
         _loc2_ = Number(_loc3_.zpp_inner.a * _loc3_.zpp_inner.d - _loc3_.zpp_inner.b * _loc3_.zpp_inner.c);
         if(_loc2_ < 0)
         {
            _loc1_ = Number(-_loc2_);
         }
         else
         {
            _loc1_ = Number(_loc2_);
         }
         if(_loc1_ == 0)
         {
            xdet = 0;
         }
         else
         {
            sf32(_loc1_,0);
            _loc4_ = 1597463007 - (li32(0) >> 1);
            si32(_loc4_,0);
            _loc2_ = Number(lf32(0));
            xdet = 1 / (_loc2_ * (1.5 - 0.5 * _loc1_ * _loc2_ * _loc2_));
         }
         var_235 = var_125.a == 1 && var_125.b == 0 && var_125.c == 0 && var_125.d == 1 && var_125.tx == 0 && var_125.ty == 0;
         _loc3_ = var_125.outer.method_722();
         _loc1_ = 0;
         _loc2_ = 0;
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
               _loc9_ = new ZPP_Vec2();
            }
            else
            {
               _loc9_ = ZPP_Vec2.var_72;
               ZPP_Vec2.var_72 = _loc9_.next;
               _loc9_.next = null;
            }
            _loc9_.name_5 = false;
            _loc9_.var_109 = _loc8_;
            _loc9_.x = _loc1_;
            _loc9_.y = _loc2_;
            _loc7_.zpp_inner = _loc9_;
            _loc7_.zpp_inner.outer = _loc7_;
         }
         else
         {
            _loc9_ = _loc7_.zpp_inner;
            §§push(false);
            if(_loc9_._validate != null)
            {
               _loc9_._validate();
            }
            if(_loc7_.zpp_inner.x == _loc1_)
            {
               §§pop();
               _loc9_ = _loc7_.zpp_inner;
               if(_loc9_._validate != null)
               {
                  _loc9_._validate();
               }
               §§push(_loc7_.zpp_inner.y == _loc2_);
            }
            if(!§§pop())
            {
               _loc7_.zpp_inner.x = _loc1_;
               _loc7_.zpp_inner.y = _loc2_;
               _loc9_ = _loc7_.zpp_inner;
               if(_loc9_._invalidate != null)
               {
                  _loc9_._invalidate(_loc9_);
               }
            }
            _loc7_;
         }
         _loc7_.zpp_inner.name_5 = false;
         var _loc5_:Vec2 = _loc7_;
         _loc7_ = _loc3_.transform(_loc5_);
         _loc9_ = _loc7_.zpp_inner;
         if(_loc9_._validate != null)
         {
            _loc9_._validate();
         }
         var_262.var_77 = _loc7_.zpp_inner.x;
         _loc9_ = _loc7_.zpp_inner;
         if(_loc9_._validate != null)
         {
            _loc9_._validate();
         }
         var_262.var_78 = _loc7_.zpp_inner.y;
         var_262.var_79 = var_262.var_77;
         var_262.var_80 = var_262.var_78;
         _loc9_ = _loc7_.zpp_inner;
         _loc7_.zpp_inner.outer = null;
         _loc7_.zpp_inner = null;
         var _loc10_:Vec2 = _loc7_;
         _loc10_.var_72 = class_219.poolVec2;
         class_219.poolVec2 = _loc10_;
         var _loc11_:ZPP_Vec2 = _loc9_;
         if(_loc11_.outer != null)
         {
            _loc11_.outer.zpp_inner = null;
            _loc11_.outer = null;
         }
         _loc11_.var_103 = null;
         _loc11_._validate = null;
         _loc11_._invalidate = null;
         _loc11_.next = ZPP_Vec2.var_72;
         ZPP_Vec2.var_72 = _loc11_;
         _loc1_ = Number(width);
         _loc9_ = _loc5_.zpp_inner;
         if(_loc9_._validate != null)
         {
            _loc9_._validate();
         }
         if(_loc5_.zpp_inner.x != _loc1_)
         {
            _loc5_.zpp_inner.x = _loc1_;
            _loc9_ = _loc5_.zpp_inner;
            if(_loc9_._invalidate != null)
            {
               _loc9_._invalidate(_loc9_);
            }
         }
         _loc9_ = _loc5_.zpp_inner;
         if(_loc9_._validate != null)
         {
            _loc9_._validate();
         }
         _loc5_.zpp_inner.x;
         _loc7_ = _loc3_.transform(_loc5_);
         var _loc12_:ZPP_AABB = var_262;
         _loc9_ = _loc7_.zpp_inner;
         if(_loc9_._validate != null)
         {
            _loc9_._validate();
         }
         _loc1_ = Number(_loc7_.zpp_inner.x);
         _loc9_ = _loc7_.zpp_inner;
         if(_loc9_._validate != null)
         {
            _loc9_._validate();
         }
         _loc2_ = Number(_loc7_.zpp_inner.y);
         if(_loc1_ < _loc12_.var_77)
         {
            _loc12_.var_77 = _loc1_;
         }
         if(_loc1_ > _loc12_.var_79)
         {
            _loc12_.var_79 = _loc1_;
         }
         if(_loc2_ < _loc12_.var_78)
         {
            _loc12_.var_78 = _loc2_;
         }
         if(_loc2_ > _loc12_.var_80)
         {
            _loc12_.var_80 = _loc2_;
         }
         _loc9_ = _loc7_.zpp_inner;
         _loc7_.zpp_inner.outer = null;
         _loc7_.zpp_inner = null;
         _loc10_ = _loc7_;
         _loc10_.var_72 = class_219.poolVec2;
         class_219.poolVec2 = _loc10_;
         _loc11_ = _loc9_;
         if(_loc11_.outer != null)
         {
            _loc11_.outer.zpp_inner = null;
            _loc11_.outer = null;
         }
         _loc11_.var_103 = null;
         _loc11_._validate = null;
         _loc11_._invalidate = null;
         _loc11_.next = ZPP_Vec2.var_72;
         ZPP_Vec2.var_72 = _loc11_;
         _loc1_ = Number(height);
         _loc9_ = _loc5_.zpp_inner;
         if(_loc9_._validate != null)
         {
            _loc9_._validate();
         }
         if(_loc5_.zpp_inner.y != _loc1_)
         {
            _loc5_.zpp_inner.y = _loc1_;
            _loc9_ = _loc5_.zpp_inner;
            if(_loc9_._invalidate != null)
            {
               _loc9_._invalidate(_loc9_);
            }
         }
         _loc9_ = _loc5_.zpp_inner;
         if(_loc9_._validate != null)
         {
            _loc9_._validate();
         }
         _loc5_.zpp_inner.y;
         _loc7_ = _loc3_.transform(_loc5_);
         _loc12_ = var_262;
         _loc9_ = _loc7_.zpp_inner;
         if(_loc9_._validate != null)
         {
            _loc9_._validate();
         }
         _loc1_ = Number(_loc7_.zpp_inner.x);
         _loc9_ = _loc7_.zpp_inner;
         if(_loc9_._validate != null)
         {
            _loc9_._validate();
         }
         _loc2_ = Number(_loc7_.zpp_inner.y);
         if(_loc1_ < _loc12_.var_77)
         {
            _loc12_.var_77 = _loc1_;
         }
         if(_loc1_ > _loc12_.var_79)
         {
            _loc12_.var_79 = _loc1_;
         }
         if(_loc2_ < _loc12_.var_78)
         {
            _loc12_.var_78 = _loc2_;
         }
         if(_loc2_ > _loc12_.var_80)
         {
            _loc12_.var_80 = _loc2_;
         }
         _loc9_ = _loc7_.zpp_inner;
         _loc7_.zpp_inner.outer = null;
         _loc7_.zpp_inner = null;
         _loc10_ = _loc7_;
         _loc10_.var_72 = class_219.poolVec2;
         class_219.poolVec2 = _loc10_;
         _loc11_ = _loc9_;
         if(_loc11_.outer != null)
         {
            _loc11_.outer.zpp_inner = null;
            _loc11_.outer = null;
         }
         _loc11_.var_103 = null;
         _loc11_._validate = null;
         _loc11_._invalidate = null;
         _loc11_.next = ZPP_Vec2.var_72;
         ZPP_Vec2.var_72 = _loc11_;
         _loc9_ = _loc5_.zpp_inner;
         if(_loc9_._validate != null)
         {
            _loc9_._validate();
         }
         if(_loc5_.zpp_inner.x != 0)
         {
            _loc5_.zpp_inner.x = 0;
            _loc9_ = _loc5_.zpp_inner;
            if(_loc9_._invalidate != null)
            {
               _loc9_._invalidate(_loc9_);
            }
         }
         _loc9_ = _loc5_.zpp_inner;
         if(_loc9_._validate != null)
         {
            _loc9_._validate();
         }
         _loc5_.zpp_inner.x;
         _loc7_ = _loc3_.transform(_loc5_);
         _loc12_ = var_262;
         _loc9_ = _loc7_.zpp_inner;
         if(_loc9_._validate != null)
         {
            _loc9_._validate();
         }
         _loc1_ = Number(_loc7_.zpp_inner.x);
         _loc9_ = _loc7_.zpp_inner;
         if(_loc9_._validate != null)
         {
            _loc9_._validate();
         }
         _loc2_ = Number(_loc7_.zpp_inner.y);
         if(_loc1_ < _loc12_.var_77)
         {
            _loc12_.var_77 = _loc1_;
         }
         if(_loc1_ > _loc12_.var_79)
         {
            _loc12_.var_79 = _loc1_;
         }
         if(_loc2_ < _loc12_.var_78)
         {
            _loc12_.var_78 = _loc2_;
         }
         if(_loc2_ > _loc12_.var_80)
         {
            _loc12_.var_80 = _loc2_;
         }
         _loc9_ = _loc7_.zpp_inner;
         _loc7_.zpp_inner.outer = null;
         _loc7_.zpp_inner = null;
         _loc10_ = _loc7_;
         _loc10_.var_72 = class_219.poolVec2;
         class_219.poolVec2 = _loc10_;
         _loc11_ = _loc9_;
         if(_loc11_.outer != null)
         {
            _loc11_.outer.zpp_inner = null;
            _loc11_.outer = null;
         }
         _loc11_.var_103 = null;
         _loc11_._validate = null;
         _loc11_._invalidate = null;
         _loc11_.next = ZPP_Vec2.var_72;
         ZPP_Vec2.var_72 = _loc11_;
         _loc9_ = _loc5_.zpp_inner;
         _loc5_.zpp_inner.outer = null;
         _loc5_.zpp_inner = null;
         _loc10_ = _loc5_;
         _loc10_.var_72 = class_219.poolVec2;
         class_219.poolVec2 = _loc10_;
         _loc11_ = _loc9_;
         if(_loc11_.outer != null)
         {
            _loc11_.outer.zpp_inner = null;
            _loc11_.outer = null;
         }
         _loc11_.var_103 = null;
         _loc11_._validate = null;
         _loc11_._invalidate = null;
         _loc11_.next = ZPP_Vec2.var_72;
         ZPP_Vec2.var_72 = _loc11_;
      }
      
      public final function method_338(param1:int) : void
      {
         var_480 = param1 >> 16 & 255;
         var_505 = param1 >> 8 & 255;
         var_499 = param1 & 255;
         var_234 = param1;
      }
      
      public final function method_386() : void
      {
         var_125 = new class_242().zpp_inner;
         var_125._invalidate = xform_invalidate;
      }
      
      public final function method_814(param1:ZPP_AABB) : Boolean
      {
         var _loc2_:* = null as ZPP_AABB;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = null as ZPP_AABB;
         if(var_235)
         {
            _loc2_ = var_633;
            return _loc2_.var_78 <= param1.var_80 && param1.var_78 <= _loc2_.var_80 && _loc2_.var_77 <= param1.var_79 && param1.var_77 <= _loc2_.var_79;
         }
         _loc3_ = 0;
         _loc4_ = 0;
         _loc5_ = 0;
         _loc6_ = 0;
         _loc5_ = Number(param1.var_77);
         _loc6_ = Number(param1.var_78);
         var_302.var_77 = Number(Number(var_125.a * _loc5_ + var_125.b * _loc6_) + var_125.tx);
         var_302.var_78 = Number(Number(var_125.c * _loc5_ + var_125.d * _loc6_) + var_125.ty);
         var_302.var_79 = var_302.var_77;
         var_302.var_80 = var_302.var_78;
         _loc5_ = Number(param1.var_79);
         _loc3_ = Number(Number(Number(var_125.a * _loc5_ + var_125.b * _loc6_) + var_125.tx));
         _loc4_ = Number(Number(Number(var_125.c * _loc5_ + var_125.d * _loc6_) + var_125.ty));
         _loc2_ = var_302;
         if(_loc3_ < _loc2_.var_77)
         {
            _loc2_.var_77 = _loc3_;
         }
         if(_loc3_ > _loc2_.var_79)
         {
            _loc2_.var_79 = _loc3_;
         }
         if(_loc4_ < _loc2_.var_78)
         {
            _loc2_.var_78 = _loc4_;
         }
         if(_loc4_ > _loc2_.var_80)
         {
            _loc2_.var_80 = _loc4_;
         }
         _loc6_ = Number(param1.var_80);
         _loc3_ = Number(Number(Number(var_125.a * _loc5_ + var_125.b * _loc6_) + var_125.tx));
         _loc4_ = Number(Number(Number(var_125.c * _loc5_ + var_125.d * _loc6_) + var_125.ty));
         _loc2_ = var_302;
         if(_loc3_ < _loc2_.var_77)
         {
            _loc2_.var_77 = _loc3_;
         }
         if(_loc3_ > _loc2_.var_79)
         {
            _loc2_.var_79 = _loc3_;
         }
         if(_loc4_ < _loc2_.var_78)
         {
            _loc2_.var_78 = _loc4_;
         }
         if(_loc4_ > _loc2_.var_80)
         {
            _loc2_.var_80 = _loc4_;
         }
         _loc5_ = Number(param1.var_77);
         _loc3_ = Number(Number(Number(var_125.a * _loc5_ + var_125.b * _loc6_) + var_125.tx));
         _loc4_ = Number(Number(Number(var_125.c * _loc5_ + var_125.d * _loc6_) + var_125.ty));
         _loc2_ = var_302;
         if(_loc3_ < _loc2_.var_77)
         {
            _loc2_.var_77 = _loc3_;
         }
         if(_loc3_ > _loc2_.var_79)
         {
            _loc2_.var_79 = _loc3_;
         }
         if(_loc4_ < _loc2_.var_78)
         {
            _loc2_.var_78 = _loc4_;
         }
         if(_loc4_ > _loc2_.var_80)
         {
            _loc2_.var_80 = _loc4_;
         }
         _loc2_ = var_302;
         _loc7_ = var_633;
         return _loc7_.var_78 <= _loc2_.var_80 && _loc2_.var_78 <= _loc7_.var_80 && _loc7_.var_77 <= _loc2_.var_79 && _loc2_.var_77 <= _loc7_.var_79;
      }
   }
}
