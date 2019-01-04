package nape.geom
{
   import flash.geom.Rectangle;
   import zpp_nape.geom.ZPP_AABB;
   import zpp_nape.geom.ZPP_Vec2;
   import zpp_nape.util.class_219;
   
   public final class class_237
   {
       
      
      public var zpp_inner:ZPP_AABB;
      
      public function class_237(param1:Number = 0, param2:Number = 0, param3:Number = 0, param4:Number = 0)
      {
         var _loc5_:* = null as ZPP_AABB;
         zpp_inner = null;
         if(ZPP_AABB.var_72 == null)
         {
            _loc5_ = new ZPP_AABB();
         }
         else
         {
            _loc5_ = ZPP_AABB.var_72;
            ZPP_AABB.var_72 = _loc5_.next;
            _loc5_.next = null;
         }
         null;
         _loc5_.var_77 = param1;
         _loc5_.var_78 = param2;
         _loc5_.var_79 = Number(param1 + param3);
         _loc5_.var_80 = Number(param2 + param4);
         zpp_inner = _loc5_;
         zpp_inner.outer = this;
      }
      
      public static function method_788(param1:Rectangle) : class_237
      {
         return new class_237(param1.x,param1.y,param1.width,param1.height);
      }
      
      public final function toString() : String
      {
         var _loc1_:ZPP_AABB = zpp_inner;
         if(_loc1_._validate != null)
         {
            _loc1_._validate();
         }
         return zpp_inner.toString();
      }
      
      public final function method_778() : Rectangle
      {
         var _loc1_:ZPP_AABB = zpp_inner;
         §§push();
         if(_loc1_._validate != null)
         {
            _loc1_._validate();
         }
         _loc1_ = zpp_inner;
         §§push(zpp_inner.var_77);
         if(_loc1_._validate != null)
         {
            _loc1_._validate();
         }
         _loc1_ = zpp_inner;
         §§push(zpp_inner.var_78);
         if(_loc1_._validate != null)
         {
            _loc1_._validate();
         }
         _loc1_ = zpp_inner;
         _loc1_ = zpp_inner;
         §§push(_loc1_.var_79 - _loc1_.var_77);
         if(_loc1_._validate != null)
         {
            _loc1_._validate();
         }
         _loc1_ = zpp_inner;
         return new §§pop().Rectangle(§§pop(),§§pop(),§§pop(),_loc1_.var_80 - _loc1_.var_78);
      }
      
      public function set y(param1:Number) : Number
      {
         var _loc2_:* = null as ZPP_AABB;
         _loc2_ = zpp_inner;
         if(_loc2_._validate != null)
         {
            _loc2_._validate();
         }
         if(zpp_inner.var_78 != param1)
         {
            zpp_inner.var_80 = Number(zpp_inner.var_80 + (param1 - zpp_inner.var_78));
            zpp_inner.var_78 = param1;
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
         return zpp_inner.var_78;
      }
      
      public function set x(param1:Number) : Number
      {
         var _loc2_:* = null as ZPP_AABB;
         _loc2_ = zpp_inner;
         if(_loc2_._validate != null)
         {
            _loc2_._validate();
         }
         if(zpp_inner.var_77 != param1)
         {
            zpp_inner.var_79 = Number(zpp_inner.var_79 + (param1 - zpp_inner.var_77));
            zpp_inner.var_77 = param1;
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
         return zpp_inner.var_77;
      }
      
      public function set width(param1:Number) : Number
      {
         var _loc2_:* = null as ZPP_AABB;
         _loc2_ = zpp_inner;
         if(_loc2_._validate != null)
         {
            _loc2_._validate();
         }
         _loc2_ = zpp_inner;
         if(_loc2_.var_79 - _loc2_.var_77 != param1)
         {
            _loc2_ = zpp_inner;
            §§push(zpp_inner);
            if(_loc2_._validate != null)
            {
               _loc2_._validate();
            }
            §§pop().var_79 = Number(zpp_inner.var_77 + param1);
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
         _loc2_ = zpp_inner;
         return _loc2_.var_79 - _loc2_.var_77;
      }
      
      public function set min(param1:Vec2) : Vec2
      {
         var _loc5_:* = null as ZPP_Vec2;
         var _loc7_:* = null as Vec2;
         var _loc8_:* = null as ZPP_Vec2;
         var _loc2_:Vec2 = zpp_inner.method_301();
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
         return zpp_inner.method_301();
      }
      
      public function set max(param1:Vec2) : Vec2
      {
         var _loc5_:* = null as ZPP_Vec2;
         var _loc7_:* = null as Vec2;
         var _loc8_:* = null as ZPP_Vec2;
         var _loc2_:Vec2 = zpp_inner.method_383();
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
         return zpp_inner.method_383();
      }
      
      public function set height(param1:Number) : Number
      {
         var _loc2_:* = null as ZPP_AABB;
         _loc2_ = zpp_inner;
         if(_loc2_._validate != null)
         {
            _loc2_._validate();
         }
         _loc2_ = zpp_inner;
         if(_loc2_.var_80 - _loc2_.var_78 != param1)
         {
            _loc2_ = zpp_inner;
            §§push(zpp_inner);
            if(_loc2_._validate != null)
            {
               _loc2_._validate();
            }
            §§pop().var_80 = Number(zpp_inner.var_78 + param1);
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
         _loc2_ = zpp_inner;
         return _loc2_.var_80 - _loc2_.var_78;
      }
      
      public function get y() : Number
      {
         var _loc1_:ZPP_AABB = zpp_inner;
         if(_loc1_._validate != null)
         {
            _loc1_._validate();
         }
         return zpp_inner.var_78;
      }
      
      public function get x() : Number
      {
         var _loc1_:ZPP_AABB = zpp_inner;
         if(_loc1_._validate != null)
         {
            _loc1_._validate();
         }
         return zpp_inner.var_77;
      }
      
      public function get width() : Number
      {
         var _loc1_:ZPP_AABB = zpp_inner;
         if(_loc1_._validate != null)
         {
            _loc1_._validate();
         }
         _loc1_ = zpp_inner;
         return _loc1_.var_79 - _loc1_.var_77;
      }
      
      public function get min() : Vec2
      {
         return zpp_inner.method_301();
      }
      
      public function get max() : Vec2
      {
         return zpp_inner.method_383();
      }
      
      public function get height() : Number
      {
         var _loc1_:ZPP_AABB = zpp_inner;
         if(_loc1_._validate != null)
         {
            _loc1_._validate();
         }
         _loc1_ = zpp_inner;
         return _loc1_.var_80 - _loc1_.var_78;
      }
      
      public final function copy() : class_237
      {
         var _loc2_:* = null as ZPP_AABB;
         var _loc1_:ZPP_AABB = zpp_inner;
         if(_loc1_._validate != null)
         {
            _loc1_._validate();
         }
         _loc1_ = zpp_inner;
         if(ZPP_AABB.var_72 == null)
         {
            _loc2_ = new ZPP_AABB();
         }
         else
         {
            _loc2_ = ZPP_AABB.var_72;
            ZPP_AABB.var_72 = _loc2_.next;
            _loc2_.next = null;
         }
         null;
         _loc2_.var_77 = _loc1_.var_77;
         _loc2_.var_78 = _loc1_.var_78;
         _loc2_.var_79 = _loc1_.var_79;
         _loc2_.var_80 = _loc1_.var_80;
         return _loc2_.method_109();
      }
   }
}
