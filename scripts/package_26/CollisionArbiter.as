package package_26
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
   import nape.geom.Vec2;
   import nape.geom.Vec3;
   import package_29.Body;
   import package_32.class_317;
   import zpp_nape.dynamics.ZPP_ColArbiter;
   import zpp_nape.geom.ZPP_Vec3;
   import zpp_nape.shape.ZPP_Edge;
   import zpp_nape.util.class_223;
   
   public final class CollisionArbiter extends class_252
   {
       
      
      public function CollisionArbiter()
      {
         super();
      }
      
      override public function method_172(param1:Body = undefined, param2:Boolean = false) : Vec3
      {
         var _loc7_:* = null as Vec3;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:* = null as ZPP_Vec3;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:ZPP_ColArbiter = zpp_inner.var_128;
         if(!param2 || _loc6_.oc1.name_23)
         {
            _loc7_ = _loc6_.oc1.method_109().method_172(param1);
            _loc8_ = 1;
            _loc9_ = _loc8_;
            _loc10_ = _loc7_.zpp_inner;
            §§push(_loc3_);
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc3_ = Number(Number(§§pop() + _loc7_.zpp_inner.x * _loc9_));
            _loc10_ = _loc7_.zpp_inner;
            §§push(_loc4_);
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc4_ = Number(Number(§§pop() + _loc7_.zpp_inner.y * _loc9_));
            _loc10_ = _loc7_.zpp_inner;
            §§push(_loc5_);
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc5_ = Number(Number(§§pop() + _loc7_.zpp_inner.z * _loc8_));
            _loc7_.dispose();
         }
         if(_loc6_.var_270)
         {
            if(!param2 || _loc6_.oc2.name_23)
            {
               _loc7_ = _loc6_.oc2.method_109().method_172(param1);
               _loc8_ = 1;
               _loc9_ = _loc8_;
               _loc10_ = _loc7_.zpp_inner;
               §§push(_loc3_);
               if(_loc10_._validate != null)
               {
                  _loc10_._validate();
               }
               _loc3_ = Number(Number(§§pop() + _loc7_.zpp_inner.x * _loc9_));
               _loc10_ = _loc7_.zpp_inner;
               §§push(_loc4_);
               if(_loc10_._validate != null)
               {
                  _loc10_._validate();
               }
               _loc4_ = Number(Number(§§pop() + _loc7_.zpp_inner.y * _loc9_));
               _loc10_ = _loc7_.zpp_inner;
               §§push(_loc5_);
               if(_loc10_._validate != null)
               {
                  _loc10_._validate();
               }
               _loc5_ = Number(Number(§§pop() + _loc7_.zpp_inner.z * _loc8_));
               _loc7_.dispose();
            }
         }
         return Vec3.method_65(_loc3_,_loc4_,_loc5_);
      }
      
      public final function method_290(param1:Body = undefined, param2:Boolean = false) : Vec3
      {
         var _loc7_:* = null as Vec3;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:* = null as ZPP_Vec3;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:ZPP_ColArbiter = zpp_inner.var_128;
         if(!param2 || _loc6_.oc1.name_23)
         {
            _loc7_ = _loc6_.oc1.method_109().method_290(param1);
            _loc8_ = 1;
            _loc9_ = _loc8_;
            _loc10_ = _loc7_.zpp_inner;
            §§push(_loc3_);
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc3_ = Number(Number(§§pop() + _loc7_.zpp_inner.x * _loc9_));
            _loc10_ = _loc7_.zpp_inner;
            §§push(_loc4_);
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc4_ = Number(Number(§§pop() + _loc7_.zpp_inner.y * _loc9_));
            _loc10_ = _loc7_.zpp_inner;
            §§push(_loc5_);
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc5_ = Number(Number(§§pop() + _loc7_.zpp_inner.z * _loc8_));
            _loc7_.dispose();
         }
         if(_loc6_.var_270)
         {
            if(!param2 || _loc6_.oc2.name_23)
            {
               _loc7_ = _loc6_.oc2.method_109().method_290(param1);
               _loc8_ = 1;
               _loc9_ = _loc8_;
               _loc10_ = _loc7_.zpp_inner;
               §§push(_loc3_);
               if(_loc10_._validate != null)
               {
                  _loc10_._validate();
               }
               _loc3_ = Number(Number(§§pop() + _loc7_.zpp_inner.x * _loc9_));
               _loc10_ = _loc7_.zpp_inner;
               §§push(_loc4_);
               if(_loc10_._validate != null)
               {
                  _loc10_._validate();
               }
               _loc4_ = Number(Number(§§pop() + _loc7_.zpp_inner.y * _loc9_));
               _loc10_ = _loc7_.zpp_inner;
               §§push(_loc5_);
               if(_loc10_._validate != null)
               {
                  _loc10_._validate();
               }
               _loc5_ = Number(Number(§§pop() + _loc7_.zpp_inner.z * _loc8_));
               _loc7_.dispose();
            }
         }
         return Vec3.method_65(_loc3_,_loc4_,_loc5_);
      }
      
      public function set name_33(param1:Number) : Number
      {
         var _loc3_:Number = NaN;
         var _loc4_:* = 0;
         var _loc5_:Number = NaN;
         var _loc2_:ZPP_ColArbiter = zpp_inner.var_128;
         _loc2_.stat_fric = param1;
         _loc2_.var_382 = true;
         _loc2_ = zpp_inner.var_128;
         if(_loc2_.var_329)
         {
            _loc2_.var_329 = false;
            if(!_loc2_.var_379)
            {
               if(_loc2_.s1.material.name_16 <= -1.79e308 || _loc2_.s2.material.name_16 <= -1.79e308)
               {
                  _loc2_.var_159 = 0;
               }
               else if(_loc2_.s1.material.name_16 >= 1.79e308 || _loc2_.s2.material.name_16 >= 1.79e308)
               {
                  _loc2_.var_159 = 1;
               }
               else
               {
                  _loc2_.var_159 = (_loc2_.s1.material.name_16 + _loc2_.s2.material.name_16) / 2;
               }
               if(_loc2_.var_159 < 0)
               {
                  _loc2_.var_159 = 0;
               }
               if(_loc2_.var_159 > 1)
               {
                  _loc2_.var_159 = 1;
               }
            }
            if(!_loc2_.var_376)
            {
               _loc3_ = _loc2_.s1.material.name_28 * _loc2_.s2.material.name_28;
               if(_loc3_ == 0)
               {
                  _loc2_.dyn_fric = 0;
               }
               else
               {
                  sf32(_loc3_,0);
                  _loc4_ = 1597463007 - (li32(0) >> 1);
                  si32(_loc4_,0);
                  _loc5_ = lf32(0);
                  _loc2_.dyn_fric = 1 / (_loc5_ * (1.5 - 0.5 * _loc3_ * _loc5_ * _loc5_));
               }
            }
            if(!_loc2_.var_382)
            {
               _loc3_ = _loc2_.s1.material.name_33 * _loc2_.s2.material.name_33;
               if(_loc3_ == 0)
               {
                  _loc2_.stat_fric = 0;
               }
               else
               {
                  sf32(_loc3_,0);
                  _loc4_ = 1597463007 - (li32(0) >> 1);
                  si32(_loc4_,0);
                  _loc5_ = lf32(0);
                  _loc2_.stat_fric = 1 / (_loc5_ * (1.5 - 0.5 * _loc3_ * _loc5_ * _loc5_));
               }
            }
            if(!_loc2_.var_381)
            {
               _loc3_ = _loc2_.s1.material.name_31 * _loc2_.s2.material.name_31;
               if(_loc3_ == 0)
               {
                  _loc2_.rfric = 0;
               }
               else
               {
                  sf32(_loc3_,0);
                  _loc4_ = 1597463007 - (li32(0) >> 1);
                  si32(_loc4_,0);
                  _loc5_ = lf32(0);
                  _loc2_.rfric = 1 / (_loc5_ * (1.5 - 0.5 * _loc3_ * _loc5_ * _loc5_));
               }
            }
         }
         return _loc2_.stat_fric;
      }
      
      public function set name_31(param1:Number) : Number
      {
         var _loc3_:Number = NaN;
         var _loc4_:* = 0;
         var _loc5_:Number = NaN;
         var _loc2_:ZPP_ColArbiter = zpp_inner.var_128;
         _loc2_.rfric = param1;
         _loc2_.var_381 = true;
         _loc2_ = zpp_inner.var_128;
         if(_loc2_.var_329)
         {
            _loc2_.var_329 = false;
            if(!_loc2_.var_379)
            {
               if(_loc2_.s1.material.name_16 <= -1.79e308 || _loc2_.s2.material.name_16 <= -1.79e308)
               {
                  _loc2_.var_159 = 0;
               }
               else if(_loc2_.s1.material.name_16 >= 1.79e308 || _loc2_.s2.material.name_16 >= 1.79e308)
               {
                  _loc2_.var_159 = 1;
               }
               else
               {
                  _loc2_.var_159 = (_loc2_.s1.material.name_16 + _loc2_.s2.material.name_16) / 2;
               }
               if(_loc2_.var_159 < 0)
               {
                  _loc2_.var_159 = 0;
               }
               if(_loc2_.var_159 > 1)
               {
                  _loc2_.var_159 = 1;
               }
            }
            if(!_loc2_.var_376)
            {
               _loc3_ = _loc2_.s1.material.name_28 * _loc2_.s2.material.name_28;
               if(_loc3_ == 0)
               {
                  _loc2_.dyn_fric = 0;
               }
               else
               {
                  sf32(_loc3_,0);
                  _loc4_ = 1597463007 - (li32(0) >> 1);
                  si32(_loc4_,0);
                  _loc5_ = lf32(0);
                  _loc2_.dyn_fric = 1 / (_loc5_ * (1.5 - 0.5 * _loc3_ * _loc5_ * _loc5_));
               }
            }
            if(!_loc2_.var_382)
            {
               _loc3_ = _loc2_.s1.material.name_33 * _loc2_.s2.material.name_33;
               if(_loc3_ == 0)
               {
                  _loc2_.stat_fric = 0;
               }
               else
               {
                  sf32(_loc3_,0);
                  _loc4_ = 1597463007 - (li32(0) >> 1);
                  si32(_loc4_,0);
                  _loc5_ = lf32(0);
                  _loc2_.stat_fric = 1 / (_loc5_ * (1.5 - 0.5 * _loc3_ * _loc5_ * _loc5_));
               }
            }
            if(!_loc2_.var_381)
            {
               _loc3_ = _loc2_.s1.material.name_31 * _loc2_.s2.material.name_31;
               if(_loc3_ == 0)
               {
                  _loc2_.rfric = 0;
               }
               else
               {
                  sf32(_loc3_,0);
                  _loc4_ = 1597463007 - (li32(0) >> 1);
                  si32(_loc4_,0);
                  _loc5_ = lf32(0);
                  _loc2_.rfric = 1 / (_loc5_ * (1.5 - 0.5 * _loc3_ * _loc5_ * _loc5_));
               }
            }
         }
         return _loc2_.rfric;
      }
      
      public function set name_16(param1:Number) : Number
      {
         var _loc3_:Number = NaN;
         var _loc4_:* = 0;
         var _loc5_:Number = NaN;
         var _loc2_:ZPP_ColArbiter = zpp_inner.var_128;
         _loc2_.var_159 = param1;
         _loc2_.var_379 = true;
         _loc2_ = zpp_inner.var_128;
         if(_loc2_.var_329)
         {
            _loc2_.var_329 = false;
            if(!_loc2_.var_379)
            {
               if(_loc2_.s1.material.name_16 <= -1.79e308 || _loc2_.s2.material.name_16 <= -1.79e308)
               {
                  _loc2_.var_159 = 0;
               }
               else if(_loc2_.s1.material.name_16 >= 1.79e308 || _loc2_.s2.material.name_16 >= 1.79e308)
               {
                  _loc2_.var_159 = 1;
               }
               else
               {
                  _loc2_.var_159 = (_loc2_.s1.material.name_16 + _loc2_.s2.material.name_16) / 2;
               }
               if(_loc2_.var_159 < 0)
               {
                  _loc2_.var_159 = 0;
               }
               if(_loc2_.var_159 > 1)
               {
                  _loc2_.var_159 = 1;
               }
            }
            if(!_loc2_.var_376)
            {
               _loc3_ = _loc2_.s1.material.name_28 * _loc2_.s2.material.name_28;
               if(_loc3_ == 0)
               {
                  _loc2_.dyn_fric = 0;
               }
               else
               {
                  sf32(_loc3_,0);
                  _loc4_ = 1597463007 - (li32(0) >> 1);
                  si32(_loc4_,0);
                  _loc5_ = lf32(0);
                  _loc2_.dyn_fric = 1 / (_loc5_ * (1.5 - 0.5 * _loc3_ * _loc5_ * _loc5_));
               }
            }
            if(!_loc2_.var_382)
            {
               _loc3_ = _loc2_.s1.material.name_33 * _loc2_.s2.material.name_33;
               if(_loc3_ == 0)
               {
                  _loc2_.stat_fric = 0;
               }
               else
               {
                  sf32(_loc3_,0);
                  _loc4_ = 1597463007 - (li32(0) >> 1);
                  si32(_loc4_,0);
                  _loc5_ = lf32(0);
                  _loc2_.stat_fric = 1 / (_loc5_ * (1.5 - 0.5 * _loc3_ * _loc5_ * _loc5_));
               }
            }
            if(!_loc2_.var_381)
            {
               _loc3_ = _loc2_.s1.material.name_31 * _loc2_.s2.material.name_31;
               if(_loc3_ == 0)
               {
                  _loc2_.rfric = 0;
               }
               else
               {
                  sf32(_loc3_,0);
                  _loc4_ = 1597463007 - (li32(0) >> 1);
                  si32(_loc4_,0);
                  _loc5_ = lf32(0);
                  _loc2_.rfric = 1 / (_loc5_ * (1.5 - 0.5 * _loc3_ * _loc5_ * _loc5_));
               }
            }
         }
         return _loc2_.var_159;
      }
      
      public function set name_28(param1:Number) : Number
      {
         var _loc3_:Number = NaN;
         var _loc4_:* = 0;
         var _loc5_:Number = NaN;
         var _loc2_:ZPP_ColArbiter = zpp_inner.var_128;
         _loc2_.dyn_fric = param1;
         _loc2_.var_376 = true;
         _loc2_ = zpp_inner.var_128;
         if(_loc2_.var_329)
         {
            _loc2_.var_329 = false;
            if(!_loc2_.var_379)
            {
               if(_loc2_.s1.material.name_16 <= -1.79e308 || _loc2_.s2.material.name_16 <= -1.79e308)
               {
                  _loc2_.var_159 = 0;
               }
               else if(_loc2_.s1.material.name_16 >= 1.79e308 || _loc2_.s2.material.name_16 >= 1.79e308)
               {
                  _loc2_.var_159 = 1;
               }
               else
               {
                  _loc2_.var_159 = (_loc2_.s1.material.name_16 + _loc2_.s2.material.name_16) / 2;
               }
               if(_loc2_.var_159 < 0)
               {
                  _loc2_.var_159 = 0;
               }
               if(_loc2_.var_159 > 1)
               {
                  _loc2_.var_159 = 1;
               }
            }
            if(!_loc2_.var_376)
            {
               _loc3_ = _loc2_.s1.material.name_28 * _loc2_.s2.material.name_28;
               if(_loc3_ == 0)
               {
                  _loc2_.dyn_fric = 0;
               }
               else
               {
                  sf32(_loc3_,0);
                  _loc4_ = 1597463007 - (li32(0) >> 1);
                  si32(_loc4_,0);
                  _loc5_ = lf32(0);
                  _loc2_.dyn_fric = 1 / (_loc5_ * (1.5 - 0.5 * _loc3_ * _loc5_ * _loc5_));
               }
            }
            if(!_loc2_.var_382)
            {
               _loc3_ = _loc2_.s1.material.name_33 * _loc2_.s2.material.name_33;
               if(_loc3_ == 0)
               {
                  _loc2_.stat_fric = 0;
               }
               else
               {
                  sf32(_loc3_,0);
                  _loc4_ = 1597463007 - (li32(0) >> 1);
                  si32(_loc4_,0);
                  _loc5_ = lf32(0);
                  _loc2_.stat_fric = 1 / (_loc5_ * (1.5 - 0.5 * _loc3_ * _loc5_ * _loc5_));
               }
            }
            if(!_loc2_.var_381)
            {
               _loc3_ = _loc2_.s1.material.name_31 * _loc2_.s2.material.name_31;
               if(_loc3_ == 0)
               {
                  _loc2_.rfric = 0;
               }
               else
               {
                  sf32(_loc3_,0);
                  _loc4_ = 1597463007 - (li32(0) >> 1);
                  si32(_loc4_,0);
                  _loc5_ = lf32(0);
                  _loc2_.rfric = 1 / (_loc5_ * (1.5 - 0.5 * _loc3_ * _loc5_ * _loc5_));
               }
            }
         }
         return _loc2_.dyn_fric;
      }
      
      public final function method_807() : Boolean
      {
         var _loc1_:* = zpp_inner.var_128.__ref_edge1 != null != (zpp_inner.var_128.__ref_edge2 != null);
         if(_loc1_)
         {
            return zpp_inner.var_128.var_746 == 1;
         }
         return false;
      }
      
      public final function method_340(param1:Body = undefined, param2:Boolean = false) : Number
      {
         var _loc3_:ZPP_ColArbiter = zpp_inner.var_128;
         if(!param2 || _loc3_.oc1.name_23)
         {
            return Number(_loc3_.oc1.method_109().method_340(param1));
         }
         return 0;
      }
      
      public final function method_271(param1:Body = undefined, param2:Boolean = false) : Vec3
      {
         var _loc7_:* = null as Vec3;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:* = null as ZPP_Vec3;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:ZPP_ColArbiter = zpp_inner.var_128;
         if(!param2 || _loc6_.oc1.name_23)
         {
            _loc7_ = _loc6_.oc1.method_109().method_271(param1);
            _loc8_ = 1;
            _loc9_ = _loc8_;
            _loc10_ = _loc7_.zpp_inner;
            §§push(_loc3_);
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc3_ = Number(Number(§§pop() + _loc7_.zpp_inner.x * _loc9_));
            _loc10_ = _loc7_.zpp_inner;
            §§push(_loc4_);
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc4_ = Number(Number(§§pop() + _loc7_.zpp_inner.y * _loc9_));
            _loc10_ = _loc7_.zpp_inner;
            §§push(_loc5_);
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc5_ = Number(Number(§§pop() + _loc7_.zpp_inner.z * _loc8_));
            _loc7_.dispose();
         }
         if(_loc6_.var_270)
         {
            if(!param2 || _loc6_.oc2.name_23)
            {
               _loc7_ = _loc6_.oc2.method_109().method_271(param1);
               _loc8_ = 1;
               _loc9_ = _loc8_;
               _loc10_ = _loc7_.zpp_inner;
               §§push(_loc3_);
               if(_loc10_._validate != null)
               {
                  _loc10_._validate();
               }
               _loc3_ = Number(Number(§§pop() + _loc7_.zpp_inner.x * _loc9_));
               _loc10_ = _loc7_.zpp_inner;
               §§push(_loc4_);
               if(_loc10_._validate != null)
               {
                  _loc10_._validate();
               }
               _loc4_ = Number(Number(§§pop() + _loc7_.zpp_inner.y * _loc9_));
               _loc10_ = _loc7_.zpp_inner;
               §§push(_loc5_);
               if(_loc10_._validate != null)
               {
                  _loc10_._validate();
               }
               _loc5_ = Number(Number(§§pop() + _loc7_.zpp_inner.z * _loc8_));
               _loc7_.dispose();
            }
         }
         return Vec3.method_65(_loc3_,_loc4_,_loc5_);
      }
      
      public function get name_33() : Number
      {
         var _loc2_:Number = NaN;
         var _loc3_:* = 0;
         var _loc4_:Number = NaN;
         var _loc1_:ZPP_ColArbiter = zpp_inner.var_128;
         if(_loc1_.var_329)
         {
            _loc1_.var_329 = false;
            if(!_loc1_.var_379)
            {
               if(_loc1_.s1.material.name_16 <= -1.79e308 || _loc1_.s2.material.name_16 <= -1.79e308)
               {
                  _loc1_.var_159 = 0;
               }
               else if(_loc1_.s1.material.name_16 >= 1.79e308 || _loc1_.s2.material.name_16 >= 1.79e308)
               {
                  _loc1_.var_159 = 1;
               }
               else
               {
                  _loc1_.var_159 = (_loc1_.s1.material.name_16 + _loc1_.s2.material.name_16) / 2;
               }
               if(_loc1_.var_159 < 0)
               {
                  _loc1_.var_159 = 0;
               }
               if(_loc1_.var_159 > 1)
               {
                  _loc1_.var_159 = 1;
               }
            }
            if(!_loc1_.var_376)
            {
               _loc2_ = _loc1_.s1.material.name_28 * _loc1_.s2.material.name_28;
               if(_loc2_ == 0)
               {
                  _loc1_.dyn_fric = 0;
               }
               else
               {
                  sf32(_loc2_,0);
                  _loc3_ = 1597463007 - (li32(0) >> 1);
                  si32(_loc3_,0);
                  _loc4_ = lf32(0);
                  _loc1_.dyn_fric = 1 / (_loc4_ * (1.5 - 0.5 * _loc2_ * _loc4_ * _loc4_));
               }
            }
            if(!_loc1_.var_382)
            {
               _loc2_ = _loc1_.s1.material.name_33 * _loc1_.s2.material.name_33;
               if(_loc2_ == 0)
               {
                  _loc1_.stat_fric = 0;
               }
               else
               {
                  sf32(_loc2_,0);
                  _loc3_ = 1597463007 - (li32(0) >> 1);
                  si32(_loc3_,0);
                  _loc4_ = lf32(0);
                  _loc1_.stat_fric = 1 / (_loc4_ * (1.5 - 0.5 * _loc2_ * _loc4_ * _loc4_));
               }
            }
            if(!_loc1_.var_381)
            {
               _loc2_ = _loc1_.s1.material.name_31 * _loc1_.s2.material.name_31;
               if(_loc2_ == 0)
               {
                  _loc1_.rfric = 0;
               }
               else
               {
                  sf32(_loc2_,0);
                  _loc3_ = 1597463007 - (li32(0) >> 1);
                  si32(_loc3_,0);
                  _loc4_ = lf32(0);
                  _loc1_.rfric = 1 / (_loc4_ * (1.5 - 0.5 * _loc2_ * _loc4_ * _loc4_));
               }
            }
         }
         return _loc1_.stat_fric;
      }
      
      public function get name_31() : Number
      {
         var _loc2_:Number = NaN;
         var _loc3_:* = 0;
         var _loc4_:Number = NaN;
         var _loc1_:ZPP_ColArbiter = zpp_inner.var_128;
         if(_loc1_.var_329)
         {
            _loc1_.var_329 = false;
            if(!_loc1_.var_379)
            {
               if(_loc1_.s1.material.name_16 <= -1.79e308 || _loc1_.s2.material.name_16 <= -1.79e308)
               {
                  _loc1_.var_159 = 0;
               }
               else if(_loc1_.s1.material.name_16 >= 1.79e308 || _loc1_.s2.material.name_16 >= 1.79e308)
               {
                  _loc1_.var_159 = 1;
               }
               else
               {
                  _loc1_.var_159 = (_loc1_.s1.material.name_16 + _loc1_.s2.material.name_16) / 2;
               }
               if(_loc1_.var_159 < 0)
               {
                  _loc1_.var_159 = 0;
               }
               if(_loc1_.var_159 > 1)
               {
                  _loc1_.var_159 = 1;
               }
            }
            if(!_loc1_.var_376)
            {
               _loc2_ = _loc1_.s1.material.name_28 * _loc1_.s2.material.name_28;
               if(_loc2_ == 0)
               {
                  _loc1_.dyn_fric = 0;
               }
               else
               {
                  sf32(_loc2_,0);
                  _loc3_ = 1597463007 - (li32(0) >> 1);
                  si32(_loc3_,0);
                  _loc4_ = lf32(0);
                  _loc1_.dyn_fric = 1 / (_loc4_ * (1.5 - 0.5 * _loc2_ * _loc4_ * _loc4_));
               }
            }
            if(!_loc1_.var_382)
            {
               _loc2_ = _loc1_.s1.material.name_33 * _loc1_.s2.material.name_33;
               if(_loc2_ == 0)
               {
                  _loc1_.stat_fric = 0;
               }
               else
               {
                  sf32(_loc2_,0);
                  _loc3_ = 1597463007 - (li32(0) >> 1);
                  si32(_loc3_,0);
                  _loc4_ = lf32(0);
                  _loc1_.stat_fric = 1 / (_loc4_ * (1.5 - 0.5 * _loc2_ * _loc4_ * _loc4_));
               }
            }
            if(!_loc1_.var_381)
            {
               _loc2_ = _loc1_.s1.material.name_31 * _loc1_.s2.material.name_31;
               if(_loc2_ == 0)
               {
                  _loc1_.rfric = 0;
               }
               else
               {
                  sf32(_loc2_,0);
                  _loc3_ = 1597463007 - (li32(0) >> 1);
                  si32(_loc3_,0);
                  _loc4_ = lf32(0);
                  _loc1_.rfric = 1 / (_loc4_ * (1.5 - 0.5 * _loc2_ * _loc4_ * _loc4_));
               }
            }
         }
         return _loc1_.rfric;
      }
      
      public function get referenceEdge2() : class_317
      {
         var _loc1_:ZPP_Edge = zpp_inner.var_128.__ref_edge1;
         if(_loc1_ != null && ((zpp_inner.ws1.id > zpp_inner.ws2.id?zpp_inner.ws1.outer:zpp_inner.ws2.outer).zpp_inner.type != class_223.var_155 || (zpp_inner.ws1.id > zpp_inner.ws2.id?zpp_inner.ws1.outer:zpp_inner.ws2.outer).zpp_inner != _loc1_.name_6))
         {
            _loc1_ = zpp_inner.var_128.__ref_edge2;
         }
         if(_loc1_ == null)
         {
            return null;
         }
         return _loc1_.method_109();
      }
      
      public function get referenceEdge1() : class_317
      {
         var _loc1_:ZPP_Edge = zpp_inner.var_128.__ref_edge1;
         if(_loc1_ != null && ((zpp_inner.ws1.id > zpp_inner.ws2.id?zpp_inner.ws2.outer:zpp_inner.ws1.outer).zpp_inner.type != class_223.var_155 || (zpp_inner.ws1.id > zpp_inner.ws2.id?zpp_inner.ws2.outer:zpp_inner.ws1.outer).zpp_inner != _loc1_.name_6))
         {
            _loc1_ = zpp_inner.var_128.__ref_edge2;
         }
         if(_loc1_ == null)
         {
            return null;
         }
         return _loc1_.method_109();
      }
      
      public function get radius() : Number
      {
         return zpp_inner.var_128.radius;
      }
      
      public function get normal() : Vec2
      {
         if(zpp_inner.var_128.var_231 == null)
         {
            zpp_inner.var_128.method_221();
         }
         return zpp_inner.var_128.var_231;
      }
      
      public function get name_16() : Number
      {
         var _loc2_:Number = NaN;
         var _loc3_:* = 0;
         var _loc4_:Number = NaN;
         var _loc1_:ZPP_ColArbiter = zpp_inner.var_128;
         if(_loc1_.var_329)
         {
            _loc1_.var_329 = false;
            if(!_loc1_.var_379)
            {
               if(_loc1_.s1.material.name_16 <= -1.79e308 || _loc1_.s2.material.name_16 <= -1.79e308)
               {
                  _loc1_.var_159 = 0;
               }
               else if(_loc1_.s1.material.name_16 >= 1.79e308 || _loc1_.s2.material.name_16 >= 1.79e308)
               {
                  _loc1_.var_159 = 1;
               }
               else
               {
                  _loc1_.var_159 = (_loc1_.s1.material.name_16 + _loc1_.s2.material.name_16) / 2;
               }
               if(_loc1_.var_159 < 0)
               {
                  _loc1_.var_159 = 0;
               }
               if(_loc1_.var_159 > 1)
               {
                  _loc1_.var_159 = 1;
               }
            }
            if(!_loc1_.var_376)
            {
               _loc2_ = _loc1_.s1.material.name_28 * _loc1_.s2.material.name_28;
               if(_loc2_ == 0)
               {
                  _loc1_.dyn_fric = 0;
               }
               else
               {
                  sf32(_loc2_,0);
                  _loc3_ = 1597463007 - (li32(0) >> 1);
                  si32(_loc3_,0);
                  _loc4_ = lf32(0);
                  _loc1_.dyn_fric = 1 / (_loc4_ * (1.5 - 0.5 * _loc2_ * _loc4_ * _loc4_));
               }
            }
            if(!_loc1_.var_382)
            {
               _loc2_ = _loc1_.s1.material.name_33 * _loc1_.s2.material.name_33;
               if(_loc2_ == 0)
               {
                  _loc1_.stat_fric = 0;
               }
               else
               {
                  sf32(_loc2_,0);
                  _loc3_ = 1597463007 - (li32(0) >> 1);
                  si32(_loc3_,0);
                  _loc4_ = lf32(0);
                  _loc1_.stat_fric = 1 / (_loc4_ * (1.5 - 0.5 * _loc2_ * _loc4_ * _loc4_));
               }
            }
            if(!_loc1_.var_381)
            {
               _loc2_ = _loc1_.s1.material.name_31 * _loc1_.s2.material.name_31;
               if(_loc2_ == 0)
               {
                  _loc1_.rfric = 0;
               }
               else
               {
                  sf32(_loc2_,0);
                  _loc3_ = 1597463007 - (li32(0) >> 1);
                  si32(_loc3_,0);
                  _loc4_ = lf32(0);
                  _loc1_.rfric = 1 / (_loc4_ * (1.5 - 0.5 * _loc2_ * _loc4_ * _loc4_));
               }
            }
         }
         return _loc1_.var_159;
      }
      
      public function get name_28() : Number
      {
         var _loc2_:Number = NaN;
         var _loc3_:* = 0;
         var _loc4_:Number = NaN;
         var _loc1_:ZPP_ColArbiter = zpp_inner.var_128;
         if(_loc1_.var_329)
         {
            _loc1_.var_329 = false;
            if(!_loc1_.var_379)
            {
               if(_loc1_.s1.material.name_16 <= -1.79e308 || _loc1_.s2.material.name_16 <= -1.79e308)
               {
                  _loc1_.var_159 = 0;
               }
               else if(_loc1_.s1.material.name_16 >= 1.79e308 || _loc1_.s2.material.name_16 >= 1.79e308)
               {
                  _loc1_.var_159 = 1;
               }
               else
               {
                  _loc1_.var_159 = (_loc1_.s1.material.name_16 + _loc1_.s2.material.name_16) / 2;
               }
               if(_loc1_.var_159 < 0)
               {
                  _loc1_.var_159 = 0;
               }
               if(_loc1_.var_159 > 1)
               {
                  _loc1_.var_159 = 1;
               }
            }
            if(!_loc1_.var_376)
            {
               _loc2_ = _loc1_.s1.material.name_28 * _loc1_.s2.material.name_28;
               if(_loc2_ == 0)
               {
                  _loc1_.dyn_fric = 0;
               }
               else
               {
                  sf32(_loc2_,0);
                  _loc3_ = 1597463007 - (li32(0) >> 1);
                  si32(_loc3_,0);
                  _loc4_ = lf32(0);
                  _loc1_.dyn_fric = 1 / (_loc4_ * (1.5 - 0.5 * _loc2_ * _loc4_ * _loc4_));
               }
            }
            if(!_loc1_.var_382)
            {
               _loc2_ = _loc1_.s1.material.name_33 * _loc1_.s2.material.name_33;
               if(_loc2_ == 0)
               {
                  _loc1_.stat_fric = 0;
               }
               else
               {
                  sf32(_loc2_,0);
                  _loc3_ = 1597463007 - (li32(0) >> 1);
                  si32(_loc3_,0);
                  _loc4_ = lf32(0);
                  _loc1_.stat_fric = 1 / (_loc4_ * (1.5 - 0.5 * _loc2_ * _loc4_ * _loc4_));
               }
            }
            if(!_loc1_.var_381)
            {
               _loc2_ = _loc1_.s1.material.name_31 * _loc1_.s2.material.name_31;
               if(_loc2_ == 0)
               {
                  _loc1_.rfric = 0;
               }
               else
               {
                  sf32(_loc2_,0);
                  _loc3_ = 1597463007 - (li32(0) >> 1);
                  si32(_loc3_,0);
                  _loc4_ = lf32(0);
                  _loc1_.rfric = 1 / (_loc4_ * (1.5 - 0.5 * _loc2_ * _loc4_ * _loc4_));
               }
            }
         }
         return _loc1_.dyn_fric;
      }
      
      public function get name_24() : class_328
      {
         if(zpp_inner.var_128.var_226 == null)
         {
            zpp_inner.var_128.method_152();
         }
         return zpp_inner.var_128.var_226;
      }
      
      public final function method_743() : Boolean
      {
         var _loc1_:* = zpp_inner.var_128.__ref_edge1 != null != (zpp_inner.var_128.__ref_edge2 != null);
         if(_loc1_)
         {
            return zpp_inner.var_128.var_746 == -1;
         }
         return false;
      }
   }
}
