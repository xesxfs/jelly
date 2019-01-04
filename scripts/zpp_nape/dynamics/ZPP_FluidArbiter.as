package zpp_nape.dynamics
{
   import nape.geom.Vec2;
   import package_26.FluidArbiter;
   import zpp_nape.geom.ZPP_Vec2;
   import zpp_nape.util.class_219;
   
   public final class ZPP_FluidArbiter extends ZPP_Arbiter
   {
      
      public static var var_72:ZPP_FluidArbiter = null;
       
      
      public var var_157:Vec2;
      
      public var var_631:Number;
      
      public var var_686:Number;
      
      public var var_638:Number;
      
      public var var_737:Number;
      
      public var r2y:Number;
      
      public var r2x:Number;
      
      public var r1y:Number;
      
      public var r1x:Number;
      
      public var var_197:Number;
      
      public var name_42:Number;
      
      public var outer_zn:FluidArbiter;
      
      public var ny:Number;
      
      public var nx:Number;
      
      public var var_817:Boolean;
      
      public var next:ZPP_FluidArbiter;
      
      public var var_600:Boolean;
      
      public var var_586:Number;
      
      public var var_447:Number;
      
      public var var_444:Number;
      
      public var var_336:Number;
      
      public var var_331:Number;
      
      public var var_568:Number;
      
      public var var_543:Number;
      
      public var var_627:Number;
      
      public var var_470:Number;
      
      public function ZPP_FluidArbiter()
      {
         var_197 = 0;
         var_600 = false;
         var_157 = null;
         var_568 = 0;
         var_543 = 0;
         ny = 0;
         nx = 0;
         var_586 = 0;
         var_447 = 0;
         var_444 = 0;
         var_686 = 0;
         var_638 = 0;
         var_737 = 0;
         var_627 = 0;
         var_470 = 0;
         var_631 = 0;
         var_817 = false;
         r2y = 0;
         r2x = 0;
         r1y = 0;
         r1x = 0;
         name_42 = 0;
         var_336 = 0;
         var_331 = 0;
         next = null;
         outer_zn = null;
         super();
         type = ZPP_Arbiter.FLUID;
         var_161 = this;
         var_543 = 0;
         var_568 = 0;
         var_197 = -1;
      }
      
      public final function position_validate() : void
      {
         var_157.zpp_inner.x = var_331;
         var_157.zpp_inner.y = var_336;
      }
      
      public final function position_invalidate(param1:ZPP_Vec2) : void
      {
         var_331 = param1.x;
         var_336 = param1.y;
      }
      
      public final function method_123() : void
      {
         var _loc4_:* = null as Vec2;
         var _loc5_:Boolean = false;
         var _loc6_:* = null as ZPP_Vec2;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
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
         var_157 = _loc4_;
         var_157.zpp_inner.var_120 = true;
         var_157.zpp_inner.var_109 = !var_600;
         var_157.zpp_inner._validate = position_validate;
         var_157.zpp_inner._invalidate = position_invalidate;
      }
   }
}
