package package_26
{
   import nape.geom.Vec2;
   import nape.geom.Vec3;
   import package_29.Body;
   import zpp_nape.dynamics.ZPP_FluidArbiter;
   import zpp_nape.geom.ZPP_Vec2;
   import zpp_nape.geom.ZPP_Vec3;
   import zpp_nape.util.class_219;
   
   public final class FluidArbiter extends class_252
   {
       
      
      public function FluidArbiter()
      {
         super();
      }
      
      override public function method_172(param1:Body = undefined, param2:Boolean = false) : Vec3
      {
         var _loc3_:Vec3 = method_342(param1);
         var _loc4_:Vec3 = method_334(param1);
         var _loc5_:Vec3 = _loc4_;
         var _loc7_:ZPP_Vec3 = _loc5_.zpp_inner;
         if(_loc7_._validate != null)
         {
            _loc7_._validate();
         }
         _loc7_ = _loc3_.zpp_inner;
         §§push(_loc5_.zpp_inner.x);
         if(_loc7_._validate != null)
         {
            _loc7_._validate();
         }
         var _loc6_:Number = Number(§§pop() + _loc3_.zpp_inner.x);
         _loc5_.zpp_inner.x = _loc6_;
         _loc7_ = _loc5_.zpp_inner;
         if(_loc7_._validate != null)
         {
            _loc7_._validate();
         }
         _loc5_.zpp_inner.x;
         _loc5_ = _loc4_;
         _loc7_ = _loc5_.zpp_inner;
         if(_loc7_._validate != null)
         {
            _loc7_._validate();
         }
         _loc7_ = _loc3_.zpp_inner;
         §§push(_loc5_.zpp_inner.y);
         if(_loc7_._validate != null)
         {
            _loc7_._validate();
         }
         _loc6_ = Number(§§pop() + _loc3_.zpp_inner.y);
         _loc5_.zpp_inner.y = _loc6_;
         _loc7_ = _loc5_.zpp_inner;
         if(_loc7_._validate != null)
         {
            _loc7_._validate();
         }
         _loc5_.zpp_inner.y;
         _loc5_ = _loc4_;
         _loc7_ = _loc5_.zpp_inner;
         if(_loc7_._validate != null)
         {
            _loc7_._validate();
         }
         _loc7_ = _loc3_.zpp_inner;
         §§push(_loc5_.zpp_inner.z);
         if(_loc7_._validate != null)
         {
            _loc7_._validate();
         }
         _loc6_ = Number(§§pop() + _loc3_.zpp_inner.z);
         _loc5_.zpp_inner.z = _loc6_;
         _loc7_ = _loc5_.zpp_inner;
         if(_loc7_._validate != null)
         {
            _loc7_._validate();
         }
         _loc5_.zpp_inner.z;
         _loc3_.dispose();
         return _loc4_;
      }
      
      public function set position(param1:Vec2) : Vec2
      {
         var _loc5_:* = null as ZPP_Vec2;
         var _loc7_:* = null as Vec2;
         var _loc8_:* = null as ZPP_Vec2;
         if(zpp_inner.var_161.var_157 == null)
         {
            zpp_inner.var_161.method_123();
         }
         var _loc2_:Vec2 = zpp_inner.var_161.var_157;
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
         if(zpp_inner.var_161.var_157 == null)
         {
            zpp_inner.var_161.method_123();
         }
         return zpp_inner.var_161.var_157;
      }
      
      public function set name_42(param1:Number) : Number
      {
         zpp_inner.var_161.name_42 = param1;
         return zpp_inner.var_161.name_42;
      }
      
      public function get position() : Vec2
      {
         if(zpp_inner.var_161.var_157 == null)
         {
            zpp_inner.var_161.method_123();
         }
         return zpp_inner.var_161.var_157;
      }
      
      public function get name_42() : Number
      {
         return zpp_inner.var_161.name_42;
      }
      
      public final function method_334(param1:Body = undefined) : Vec3
      {
         var _loc3_:int = 0;
         var _loc2_:ZPP_FluidArbiter = zpp_inner.var_161;
         if(param1 == null || param1.zpp_inner == zpp_inner.b2)
         {
            _loc3_ = 1;
         }
         else
         {
            _loc3_ = -1;
         }
         return Vec3.method_65(_loc2_.var_444 * _loc3_,_loc2_.var_447 * _loc3_,_loc2_.var_470 * _loc3_);
      }
      
      public final function method_342(param1:Body = undefined) : Vec3
      {
         var _loc2_:ZPP_FluidArbiter = zpp_inner.var_161;
         if(param1 == null)
         {
            return Vec3.method_65(_loc2_.var_543,_loc2_.var_568,0);
         }
         if(param1.zpp_inner == zpp_inner.b2)
         {
            return Vec3.method_65(_loc2_.var_543,_loc2_.var_568,_loc2_.var_568 * _loc2_.r2x - _loc2_.var_543 * _loc2_.r2y);
         }
         return Vec3.method_65(-_loc2_.var_543,-_loc2_.var_568,-(_loc2_.var_568 * _loc2_.r1x - _loc2_.var_543 * _loc2_.r1y));
      }
   }
}
