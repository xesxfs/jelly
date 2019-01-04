package zpp_nape.phys
{
   import nape.geom.Vec2;
   import package_29.class_240;
   import package_32.class_230;
   import zpp_nape.geom.ZPP_Vec2;
   import zpp_nape.shape.ZPP_Shape;
   import zpp_nape.util.ZNPNode_ZPP_Shape;
   import zpp_nape.util.class_219;
   import zpp_nape.util.class_292;
   
   public final class class_265
   {
      
      public static var var_72:class_265 = null;
       
      
      public var var_222:class_230;
      
      public var var_184:Vec2;
      
      public var name_49:Number;
      
      public var name_21;
      
      public var shapes:class_292;
      
      public var outer:class_240;
      
      public var next:class_265;
      
      public var var_252:Number;
      
      public var var_254:Number;
      
      public var name_25:Number;
      
      public function class_265()
      {
         var_184 = null;
         var_252 = 0;
         var_254 = 0;
         name_25 = 0;
         name_49 = 0;
         var_222 = null;
         shapes = null;
         outer = null;
         name_21 = null;
         next = null;
         shapes = new class_292();
         name_49 = 1;
         name_25 = 1;
         var_184 = null;
         var_254 = 0;
         var_252 = 0;
      }
      
      public final function method_109() : class_240
      {
         var _loc1_:* = null as class_265;
         if(outer == null)
         {
            outer = new class_240();
            _loc1_ = outer.zpp_inner;
            _loc1_.outer = null;
            _loc1_.next = class_265.var_72;
            class_265.var_72 = _loc1_;
            outer.zpp_inner = this;
         }
         return outer;
      }
      
      public final function invalidate() : void
      {
         var _loc2_:* = null as ZPP_Shape;
         var _loc1_:ZNPNode_ZPP_Shape = shapes.var_73;
         while(_loc1_ != null)
         {
            _loc2_ = _loc1_.var_74;
            _loc2_.method_702();
            _loc1_ = _loc1_.next;
         }
      }
      
      public final function gravity_validate() : void
      {
         var_184.zpp_inner.x = var_254;
         var_184.zpp_inner.y = var_252;
      }
      
      public final function gravity_invalidate(param1:ZPP_Vec2) : void
      {
         var_254 = param1.x;
         var_252 = param1.y;
         invalidate();
      }
      
      public final function method_266() : void
      {
         var _loc4_:* = null as Vec2;
         var _loc5_:Boolean = false;
         var _loc6_:* = null as ZPP_Vec2;
         var _loc1_:Number = var_254;
         var _loc2_:Number = var_252;
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
         var_184 = _loc4_;
         var_184.zpp_inner.var_120 = true;
         var_184.zpp_inner._invalidate = gravity_invalidate;
         var_184.zpp_inner._validate = gravity_validate;
      }
      
      public final function copy() : class_265
      {
         var _loc1_:* = null as class_265;
         if(class_265.var_72 == null)
         {
            _loc1_ = new class_265();
         }
         else
         {
            _loc1_ = class_265.var_72;
            class_265.var_72 = _loc1_.next;
            _loc1_.next = null;
         }
         null;
         _loc1_.name_49 = name_49;
         _loc1_.name_25 = name_25;
         return _loc1_;
      }
   }
}
