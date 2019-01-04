package zpp_nape.geom
{
   import nape.geom.Vec2;
   import nape.geom.class_237;
   import zpp_nape.util.class_219;
   
   public final class ZPP_AABB
   {
      
      public static var var_72:ZPP_AABB = null;
       
      
      public var var_238:Vec2;
      
      public var var_239:Vec2;
      
      public var outer:class_237;
      
      public var next:ZPP_AABB;
      
      public var var_78:Number;
      
      public var var_77:Number;
      
      public var var_80:Number;
      
      public var var_79:Number;
      
      public var _validate:Object;
      
      public var _invalidate:Object;
      
      public var var_109:Boolean;
      
      public function ZPP_AABB()
      {
         var_239 = null;
         var_80 = 0;
         var_79 = 0;
         var_238 = null;
         var_78 = 0;
         var_77 = 0;
         next = null;
         outer = null;
         var_109 = false;
         _validate = null;
         _invalidate = null;
      }
      
      public static function method_65(param1:Number, param2:Number, param3:Number, param4:Number) : ZPP_AABB
      {
         var _loc5_:* = null as ZPP_AABB;
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
         _loc5_.var_79 = param3;
         _loc5_.var_80 = param4;
         return _loc5_;
      }
      
      public final function method_109() : class_237
      {
         var _loc1_:* = null as ZPP_AABB;
         var _loc2_:* = null as Vec2;
         if(outer == null)
         {
            outer = new class_237();
            _loc1_ = outer.zpp_inner;
            if(_loc1_.outer != null)
            {
               _loc1_.outer.zpp_inner = null;
               _loc1_.outer = null;
            }
            _loc2_ = null;
            _loc1_.var_239 = _loc2_;
            _loc1_.var_238 = _loc2_;
            _loc1_._invalidate = null;
            _loc1_._validate = null;
            _loc1_.next = ZPP_AABB.var_72;
            ZPP_AABB.var_72 = _loc1_;
            outer.zpp_inner = this;
         }
         return outer;
      }
      
      public final function toString() : String
      {
         return class_2.method_14(-1820302616) + var_77 + class_2.method_14(-1820302784) + var_78 + class_2.method_14(-1820302772) + (var_79 - var_77) + class_2.method_14(-1820302597) + (var_80 - var_78) + class_2.method_14(-1820302790);
      }
      
      public final function mod_min(param1:ZPP_Vec2) : void
      {
         if(param1.x != var_77 || param1.y != var_78)
         {
            var_77 = param1.x;
            var_78 = param1.y;
            if(_invalidate != null)
            {
               _invalidate(this);
            }
         }
      }
      
      public final function mod_max(param1:ZPP_Vec2) : void
      {
         if(param1.x != var_79 || param1.y != var_80)
         {
            var_79 = param1.x;
            var_80 = param1.y;
            if(_invalidate != null)
            {
               _invalidate(this);
            }
         }
      }
      
      public final function method_301() : Vec2
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Boolean = false;
         var _loc4_:* = null as Vec2;
         var _loc5_:Boolean = false;
         var _loc6_:* = null as ZPP_Vec2;
         if(var_238 == null)
         {
            _loc1_ = var_77;
            _loc2_ = var_78;
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
            var_238 = _loc4_;
            var_238.zpp_inner.var_120 = true;
            if(var_109)
            {
               var_238.zpp_inner.var_109 = true;
            }
            else
            {
               var_238.zpp_inner._invalidate = mod_min;
            }
            var_238.zpp_inner._validate = dom_min;
         }
         return var_238;
      }
      
      public final function method_383() : Vec2
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Boolean = false;
         var _loc4_:* = null as Vec2;
         var _loc5_:Boolean = false;
         var _loc6_:* = null as ZPP_Vec2;
         if(var_239 == null)
         {
            _loc1_ = var_79;
            _loc2_ = var_80;
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
            var_239 = _loc4_;
            var_239.zpp_inner.var_120 = true;
            if(var_109)
            {
               var_239.zpp_inner.var_109 = true;
            }
            else
            {
               var_239.zpp_inner._invalidate = mod_max;
            }
            var_239.zpp_inner._validate = dom_max;
         }
         return var_239;
      }
      
      public final function dom_min() : void
      {
         if(_validate != null)
         {
            _validate();
         }
         var_238.zpp_inner.x = var_77;
         var_238.zpp_inner.y = var_78;
      }
      
      public final function dom_max() : void
      {
         if(_validate != null)
         {
            _validate();
         }
         var_239.zpp_inner.x = var_79;
         var_239.zpp_inner.y = var_80;
      }
   }
}
