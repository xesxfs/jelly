package zpp_nape.space
{
   import nape.geom.RayResult;
   import nape.geom.Vec2;
   import nape.geom.class_233;
   import nape.geom.class_237;
   import package_29.Body;
   import package_29.class_205;
   import package_32.class_230;
   import zpp_nape.dynamics.ZPP_Arbiter;
   import zpp_nape.dynamics.ZPP_InteractionFilter;
   import zpp_nape.geom.ZPP_AABB;
   import zpp_nape.geom.ZPP_Vec2;
   import zpp_nape.geom.class_239;
   import zpp_nape.geom.class_311;
   import zpp_nape.phys.ZPP_Body;
   import zpp_nape.shape.ZPP_Shape;
   import zpp_nape.util.class_223;
   
   public final class class_301 extends ZPP_Broadphase
   {
       
      
      public var var_177:ZPP_SweepData;
      
      public var var_143:class_205;
      
      public function class_301(param1:ZPP_Space)
      {
         var_143 = null;
         var_177 = null;
         space = param1;
         var_432 = true;
         var_219 = this;
      }
      
      public final function sync_broadphase() : void
      {
         var _loc1_:* = null as ZPP_SweepData;
         var _loc2_:* = null as ZPP_SweepData;
         var _loc3_:* = null as ZPP_SweepData;
         var _loc4_:* = null as ZPP_SweepData;
         space.name_58();
         if(var_177 != null)
         {
            _loc1_ = var_177.next;
            while(_loc1_ != null)
            {
               _loc2_ = _loc1_.next;
               _loc3_ = _loc1_.var_75;
               if(_loc1_.name_3.var_77 > _loc3_.name_3.var_77)
               {
                  _loc1_ = _loc2_;
               }
               else
               {
                  while(_loc3_.var_75 != null && _loc3_.var_75.name_3.var_77 > _loc1_.name_3.var_77)
                  {
                     _loc3_ = _loc3_.var_75;
                  }
                  _loc4_ = _loc1_.var_75;
                  _loc4_.next = _loc1_.next;
                  if(_loc1_.next != null)
                  {
                     _loc1_.next.var_75 = _loc4_;
                  }
                  if(_loc3_.var_75 == null)
                  {
                     _loc1_.var_75 = null;
                     var_177 = _loc1_;
                     _loc1_.next = _loc3_;
                     _loc3_.var_75 = _loc1_;
                  }
                  else
                  {
                     _loc1_.var_75 = _loc3_.var_75;
                     _loc3_.var_75 = _loc1_;
                     _loc1_.var_75.next = _loc1_;
                     _loc1_.next = _loc3_;
                  }
                  _loc1_ = _loc2_;
               }
            }
         }
      }
      
      override public function method_267(param1:Number, param2:Number, param3:ZPP_InteractionFilter, param4:class_230) : class_230
      {
         var _loc7_:* = null as ZPP_Vec2;
         var _loc8_:* = null as class_230;
         var _loc10_:* = null as ZPP_Shape;
         var _loc11_:* = null as ZPP_InteractionFilter;
         sync_broadphase();
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
         _loc7_.var_109 = false;
         _loc7_.x = param1;
         _loc7_.y = param2;
         var _loc5_:ZPP_Vec2 = _loc7_;
         if(param4 == null)
         {
            _loc8_ = new class_230();
         }
         else
         {
            _loc8_ = param4;
         }
         var _loc9_:ZPP_SweepData = var_177;
         while(_loc9_ != null && _loc9_.name_3.var_77 > param1)
         {
            _loc9_ = _loc9_.next;
         }
         while(_loc9_ != null && _loc9_.name_3.var_77 <= param1)
         {
            if(_loc9_.name_3.var_79 >= param1 && _loc9_.name_3.var_78 <= param2 && _loc9_.name_3.var_80 >= param2)
            {
               _loc10_ = _loc9_.name_7;
               if(param3 == null || (_loc11_.name_14 & param3.name_13) != 0 && (param3.name_14 & _loc11_.name_13) != 0)
               {
                  if(_loc10_.type == class_223.var_131)
                  {
                     if(class_239.method_223(_loc10_.var_102,_loc5_))
                     {
                        _loc8_.push(_loc10_.outer);
                     }
                  }
                  else if(class_239.method_231(_loc10_.name_6,_loc5_))
                  {
                     _loc8_.push(_loc10_.outer);
                  }
               }
            }
            _loc9_ = _loc9_.next;
         }
         _loc7_ = _loc5_;
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
         return _loc8_;
      }
      
      override public function shapesInShape(param1:ZPP_Shape, param2:Boolean, param3:ZPP_InteractionFilter, param4:class_230) : class_230
      {
         var _loc6_:* = null as class_230;
         var _loc8_:* = null as ZPP_AABB;
         var _loc9_:* = null as ZPP_Shape;
         var _loc10_:* = null as ZPP_InteractionFilter;
         sync_broadphase();
         ;
         ZPP_Broadphase.method_180(param1);
         var _loc5_:ZPP_AABB = param1.name_3;
         if(param4 == null)
         {
            _loc6_ = new class_230();
         }
         else
         {
            _loc6_ = param4;
         }
         var _loc7_:ZPP_SweepData = var_177;
         while(_loc7_ != null && _loc7_.name_3.var_79 < _loc5_.var_77)
         {
            _loc7_ = _loc7_.next;
         }
         while(_loc7_ != null && _loc7_.name_3.var_77 <= _loc5_.var_79)
         {
            _loc8_ = _loc7_.name_3;
            if(_loc5_.var_78 <= _loc8_.var_80 && _loc8_.var_78 <= _loc5_.var_80 && _loc5_.var_77 <= _loc8_.var_79 && _loc8_.var_77 <= _loc5_.var_79)
            {
               _loc9_ = _loc7_.name_7;
               if(param3 == null || (_loc10_.name_14 & param3.name_13) != 0 && (param3.name_14 & _loc10_.name_13) != 0)
               {
                  if(param2)
                  {
                     if(class_239.method_135(param1,_loc9_))
                     {
                        _loc6_.push(_loc9_.outer);
                     }
                  }
                  else if(class_239.method_133(_loc9_,param1))
                  {
                     _loc6_.push(_loc9_.outer);
                  }
               }
            }
            _loc7_ = _loc7_.next;
         }
         return _loc6_;
      }
      
      override public function method_256(param1:Number, param2:Number, param3:Number, param4:Boolean, param5:ZPP_InteractionFilter, param6:class_230) : class_230
      {
         var _loc8_:* = null as class_230;
         var _loc10_:* = null as ZPP_AABB;
         var _loc11_:* = null as ZPP_Shape;
         var _loc12_:* = null as ZPP_InteractionFilter;
         sync_broadphase();
         method_202(param1,param2,param3);
         var _loc7_:ZPP_AABB = var_214.zpp_inner.name_3;
         if(param6 == null)
         {
            _loc8_ = new class_230();
         }
         else
         {
            _loc8_ = param6;
         }
         var _loc9_:ZPP_SweepData = var_177;
         while(_loc9_ != null && _loc9_.name_3.var_79 < _loc7_.var_77)
         {
            _loc9_ = _loc9_.next;
         }
         while(_loc9_ != null && _loc9_.name_3.var_77 <= _loc7_.var_79)
         {
            _loc10_ = _loc9_.name_3;
            if(_loc7_.var_78 <= _loc10_.var_80 && _loc10_.var_78 <= _loc7_.var_80 && _loc7_.var_77 <= _loc10_.var_79 && _loc10_.var_77 <= _loc7_.var_79)
            {
               _loc11_ = _loc9_.name_7;
               if(param5 == null || (_loc12_.name_14 & param5.name_13) != 0 && (param5.name_14 & _loc12_.name_13) != 0)
               {
                  if(param4)
                  {
                     if(class_239.method_135(var_214.zpp_inner,_loc11_))
                     {
                        _loc8_.push(_loc11_.outer);
                     }
                  }
                  else if(class_239.method_133(_loc11_,var_214.zpp_inner))
                  {
                     _loc8_.push(_loc11_.outer);
                  }
               }
            }
            _loc9_ = _loc9_.next;
         }
         return _loc8_;
      }
      
      override public function method_178(param1:ZPP_AABB, param2:Boolean, param3:Boolean, param4:ZPP_InteractionFilter, param5:class_230) : class_230
      {
         var _loc7_:* = null as class_230;
         var _loc9_:* = null as ZPP_Shape;
         var _loc10_:* = null as ZPP_InteractionFilter;
         var _loc11_:* = null as ZPP_AABB;
         sync_broadphase();
         method_210(param1);
         var _loc6_:ZPP_AABB = var_210.zpp_inner.name_3;
         if(param5 == null)
         {
            _loc7_ = new class_230();
         }
         else
         {
            _loc7_ = param5;
         }
         var _loc8_:ZPP_SweepData = var_177;
         while(_loc8_ != null && _loc8_.name_3.var_79 < _loc6_.var_77)
         {
            _loc8_ = _loc8_.next;
         }
         while(_loc8_ != null && _loc8_.name_3.var_77 <= _loc6_.var_79)
         {
            _loc9_ = _loc8_.name_7;
            if(param4 == null || (_loc10_.name_14 & param4.name_13) != 0 && (param4.name_14 & _loc10_.name_13) != 0)
            {
               if(param2)
               {
                  if(param3)
                  {
                     if(class_239.method_135(var_210.zpp_inner,_loc9_))
                     {
                        _loc7_.push(_loc9_.outer);
                     }
                  }
                  else
                  {
                     _loc11_ = _loc8_.name_3;
                     if(_loc11_.var_77 >= _loc6_.var_77 && _loc11_.var_78 >= _loc6_.var_78 && _loc11_.var_79 <= _loc6_.var_79 && _loc11_.var_80 <= _loc6_.var_80)
                     {
                        _loc7_.push(_loc9_.outer);
                     }
                     else
                     {
                        _loc11_ = _loc8_.name_3;
                        if(_loc6_.var_78 <= _loc11_.var_80 && _loc11_.var_78 <= _loc6_.var_80 && _loc6_.var_77 <= _loc11_.var_79 && _loc11_.var_77 <= _loc6_.var_79)
                        {
                           if(class_239.method_133(_loc9_,var_210.zpp_inner))
                           {
                              _loc7_.push(_loc9_.outer);
                           }
                        }
                     }
                  }
               }
               else
               {
                  if(param3)
                  {
                     _loc11_ = _loc8_.name_3;
                     §§push(_loc11_.var_77 >= _loc6_.var_77 && _loc11_.var_78 >= _loc6_.var_78 && _loc11_.var_79 <= _loc6_.var_79 && _loc11_.var_80 <= _loc6_.var_80);
                  }
                  else
                  {
                     _loc11_ = _loc8_.name_3;
                     §§push(_loc6_.var_78 <= _loc11_.var_80 && _loc11_.var_78 <= _loc6_.var_80 && _loc6_.var_77 <= _loc11_.var_79 && _loc11_.var_77 <= _loc6_.var_79);
                  }
                  if(§§pop())
                  {
                     _loc7_.push(_loc9_.outer);
                  }
               }
            }
            _loc8_ = _loc8_.next;
         }
         return _loc7_;
      }
      
      override public function method_222(param1:class_311, param2:Boolean, param3:ZPP_InteractionFilter, param4:class_233) : class_233
      {
         var _loc6_:* = null as class_233;
         var _loc7_:* = null as ZPP_SweepData;
         var _loc8_:* = null as ZPP_AABB;
         var _loc9_:* = null as ZPP_InteractionFilter;
         var _loc10_:Number = NaN;
         var _loc11_:* = null as ZPP_SweepData;
         sync_broadphase();
         param1.method_292();
         var _loc5_:ZPP_AABB = param1.method_364();
         if(param4 == null)
         {
            _loc6_ = new class_233();
         }
         else
         {
            _loc6_ = param4;
         }
         if(param1.var_146 == 0)
         {
            _loc7_ = var_177;
            while(_loc7_ != null && _loc7_.name_3.var_77 <= _loc5_.var_77)
            {
               _loc8_ = _loc7_.name_3;
               if(_loc5_.var_78 <= _loc8_.var_80 && _loc8_.var_78 <= _loc5_.var_80 && _loc5_.var_77 <= _loc8_.var_79 && _loc8_.var_77 <= _loc5_.var_79 && (param3 == null || (_loc9_.name_14 & param3.name_13) != 0 && (param3.name_14 & _loc9_.name_13) != 0))
               {
                  _loc10_ = Number(param1.method_144(_loc7_.name_3));
                  if(_loc10_ >= 0)
                  {
                     if(_loc7_.name_7.type == class_223.var_131)
                     {
                        param1.circlesect2(_loc7_.name_7.var_102,param2,_loc6_);
                     }
                     else
                     {
                        param1.polysect2(_loc7_.name_7.name_6,param2,_loc6_);
                     }
                  }
               }
               _loc7_ = _loc7_.next;
            }
         }
         else if(param1.var_146 < 0)
         {
            _loc7_ = var_177;
            _loc11_ = null;
            while(_loc7_ != null && _loc7_.name_3.var_77 <= _loc5_.var_79)
            {
               _loc11_ = _loc7_;
               _loc7_ = _loc7_.next;
            }
            _loc7_ = _loc11_;
            while(_loc7_ != null)
            {
               _loc8_ = _loc7_.name_3;
               if(_loc5_.var_78 <= _loc8_.var_80 && _loc8_.var_78 <= _loc5_.var_80 && _loc5_.var_77 <= _loc8_.var_79 && _loc8_.var_77 <= _loc5_.var_79 && (param3 == null || (_loc9_.name_14 & param3.name_13) != 0 && (param3.name_14 & _loc9_.name_13) != 0))
               {
                  _loc10_ = Number(param1.method_144(_loc7_.name_3));
                  if(_loc10_ >= 0)
                  {
                     if(_loc7_.name_7.type == class_223.var_131)
                     {
                        param1.circlesect2(_loc7_.name_7.var_102,param2,_loc6_);
                     }
                     else
                     {
                        param1.polysect2(_loc7_.name_7.name_6,param2,_loc6_);
                     }
                  }
               }
               _loc7_ = _loc7_.var_75;
            }
         }
         else
         {
            _loc7_ = var_177;
            while(_loc7_ != null && _loc7_.name_3.var_77 <= _loc5_.var_79)
            {
               _loc8_ = _loc7_.name_3;
               if(_loc5_.var_78 <= _loc8_.var_80 && _loc8_.var_78 <= _loc5_.var_80 && _loc5_.var_77 <= _loc8_.var_79 && _loc8_.var_77 <= _loc5_.var_79 && (param3 == null || (_loc9_.name_14 & param3.name_13) != 0 && (param3.name_14 & _loc9_.name_13) != 0))
               {
                  _loc10_ = Number(param1.method_144(_loc7_.name_3));
                  if(_loc10_ >= 0)
                  {
                     if(_loc7_.name_7.type == class_223.var_131)
                     {
                        param1.circlesect2(_loc7_.name_7.var_102,param2,_loc6_);
                     }
                     else
                     {
                        param1.polysect2(_loc7_.name_7.name_6,param2,_loc6_);
                     }
                  }
               }
               _loc7_ = _loc7_.next;
            }
         }
         _loc8_ = _loc5_;
         if(_loc8_.outer != null)
         {
            _loc8_.outer.zpp_inner = null;
            _loc8_.outer = null;
         }
         _loc8_.var_239 = null;
         _loc8_.var_238 = null;
         _loc8_._invalidate = null;
         _loc8_._validate = null;
         _loc8_.next = ZPP_AABB.var_72;
         ZPP_AABB.var_72 = _loc8_;
         return _loc6_;
      }
      
      override public function method_176(param1:class_311, param2:Boolean, param3:ZPP_InteractionFilter) : RayResult
      {
         var _loc7_:* = null as ZPP_SweepData;
         var _loc8_:* = null as ZPP_AABB;
         var _loc9_:* = null as ZPP_InteractionFilter;
         var _loc10_:Number = NaN;
         var _loc11_:* = null as RayResult;
         var _loc12_:* = null as ZPP_SweepData;
         sync_broadphase();
         param1.method_292();
         var _loc4_:ZPP_AABB = param1.method_364();
         var _loc5_:Number = param1.maxdist;
         var _loc6_:* = null;
         if(param1.var_146 == 0)
         {
            _loc7_ = var_177;
            while(_loc7_ != null && _loc7_.name_3.var_77 <= _loc4_.var_77)
            {
               _loc8_ = _loc7_.name_3;
               if(_loc4_.var_78 <= _loc8_.var_80 && _loc8_.var_78 <= _loc4_.var_80 && _loc4_.var_77 <= _loc8_.var_79 && _loc8_.var_77 <= _loc4_.var_79 && (param3 == null || (_loc9_.name_14 & param3.name_13) != 0 && (param3.name_14 & _loc9_.name_13) != 0))
               {
                  _loc10_ = Number(param1.method_144(_loc7_.name_3));
                  if(_loc10_ >= 0 && _loc10_ < _loc5_)
                  {
                     if(_loc7_.name_7.type == class_223.var_131)
                     {
                        _loc11_ = param1.method_355(_loc7_.name_7.var_102,param2,_loc5_);
                     }
                     else
                     {
                        _loc11_ = param1.method_346(_loc7_.name_7.name_6,param2,_loc5_);
                     }
                     if(_loc11_ != null)
                     {
                        _loc5_ = _loc11_.zpp_inner.var_285;
                        if(_loc6_ != null)
                        {
                           _loc6_.zpp_inner.method_129();
                        }
                        _loc6_ = _loc11_;
                     }
                  }
               }
               _loc7_ = _loc7_.next;
            }
         }
         else if(param1.var_146 < 0)
         {
            _loc7_ = var_177;
            _loc12_ = null;
            while(_loc7_ != null && _loc7_.name_3.var_77 <= _loc4_.var_79)
            {
               _loc12_ = _loc7_;
               _loc7_ = _loc7_.next;
            }
            _loc7_ = _loc12_;
            while(_loc7_ != null)
            {
               _loc8_ = _loc7_.name_3;
               if(_loc4_.var_78 <= _loc8_.var_80 && _loc8_.var_78 <= _loc4_.var_80 && _loc4_.var_77 <= _loc8_.var_79 && _loc8_.var_77 <= _loc4_.var_79 && (param3 == null || (_loc9_.name_14 & param3.name_13) != 0 && (param3.name_14 & _loc9_.name_13) != 0))
               {
                  _loc10_ = Number(param1.method_144(_loc7_.name_3));
                  if(_loc10_ >= 0 && _loc10_ < _loc5_)
                  {
                     if(_loc7_.name_7.type == class_223.var_131)
                     {
                        _loc11_ = param1.method_355(_loc7_.name_7.var_102,param2,_loc5_);
                     }
                     else
                     {
                        _loc11_ = param1.method_346(_loc7_.name_7.name_6,param2,_loc5_);
                     }
                     if(_loc11_ != null)
                     {
                        _loc5_ = _loc11_.zpp_inner.var_285;
                        if(_loc6_ != null)
                        {
                           _loc6_.zpp_inner.method_129();
                        }
                        _loc6_ = _loc11_;
                     }
                  }
               }
               _loc7_ = _loc7_.var_75;
            }
         }
         else
         {
            _loc7_ = var_177;
            while(_loc7_ != null && _loc7_.name_3.var_77 <= _loc4_.var_79 && _loc7_.name_3.var_77 < Number(param1.var_195 + param1.var_146 * _loc5_))
            {
               _loc8_ = _loc7_.name_3;
               if(_loc4_.var_78 <= _loc8_.var_80 && _loc8_.var_78 <= _loc4_.var_80 && _loc4_.var_77 <= _loc8_.var_79 && _loc8_.var_77 <= _loc4_.var_79 && (param3 == null || (_loc9_.name_14 & param3.name_13) != 0 && (param3.name_14 & _loc9_.name_13) != 0))
               {
                  _loc10_ = Number(param1.method_144(_loc7_.name_3));
                  if(_loc10_ >= 0 && _loc10_ < _loc5_)
                  {
                     if(_loc7_.name_7.type == class_223.var_131)
                     {
                        _loc11_ = param1.method_355(_loc7_.name_7.var_102,param2,_loc5_);
                     }
                     else
                     {
                        _loc11_ = param1.method_346(_loc7_.name_7.name_6,param2,_loc5_);
                     }
                     if(_loc11_ != null)
                     {
                        _loc5_ = _loc11_.zpp_inner.var_285;
                        if(_loc6_ != null)
                        {
                           _loc6_.zpp_inner.method_129();
                        }
                        _loc6_ = _loc11_;
                     }
                  }
               }
               _loc7_ = _loc7_.next;
            }
         }
         _loc8_ = _loc4_;
         if(_loc8_.outer != null)
         {
            _loc8_.outer.zpp_inner = null;
            _loc8_.outer = null;
         }
         _loc8_.var_239 = null;
         _loc8_.var_238 = null;
         _loc8_._invalidate = null;
         _loc8_._validate = null;
         _loc8_.next = ZPP_AABB.var_72;
         ZPP_AABB.var_72 = _loc8_;
         return _loc6_;
      }
      
      override public function clear() : void
      {
         while(var_177 != null)
         {
            var_177.name_7.method_120();
            method_296(var_177.name_7);
         }
      }
      
      override public function method_298(param1:ZPP_Space, param2:Boolean) : void
      {
         var _loc3_:* = null as ZPP_SweepData;
         var _loc4_:* = null as ZPP_SweepData;
         var _loc5_:* = null as ZPP_SweepData;
         var _loc6_:* = null as ZPP_SweepData;
         var _loc7_:* = null as ZPP_Shape;
         var _loc8_:* = null as ZPP_Body;
         var _loc9_:Number = NaN;
         var _loc10_:* = null as ZPP_Shape;
         var _loc11_:* = null as ZPP_Body;
         var _loc12_:* = null as ZPP_AABB;
         var _loc13_:* = null as ZPP_AABB;
         if(var_177 != null)
         {
            _loc3_ = var_177.next;
            while(_loc3_ != null)
            {
               _loc4_ = _loc3_.next;
               _loc5_ = _loc3_.var_75;
               if(_loc3_.name_3.var_77 > _loc5_.name_3.var_77)
               {
                  _loc3_ = _loc4_;
               }
               else
               {
                  while(_loc5_.var_75 != null && _loc5_.var_75.name_3.var_77 > _loc3_.name_3.var_77)
                  {
                     _loc5_ = _loc5_.var_75;
                  }
                  _loc6_ = _loc3_.var_75;
                  _loc6_.next = _loc3_.next;
                  if(_loc3_.next != null)
                  {
                     _loc3_.next.var_75 = _loc6_;
                  }
                  if(_loc5_.var_75 == null)
                  {
                     _loc3_.var_75 = null;
                     var_177 = _loc3_;
                     _loc3_.next = _loc5_;
                     _loc5_.var_75 = _loc3_;
                  }
                  else
                  {
                     _loc3_.var_75 = _loc5_.var_75;
                     _loc5_.var_75 = _loc3_;
                     _loc3_.var_75.next = _loc3_;
                     _loc3_.next = _loc5_;
                  }
                  _loc3_ = _loc4_;
               }
            }
            _loc3_ = var_177;
            while(_loc3_ != null)
            {
               _loc4_ = _loc3_.next;
               _loc7_ = _loc3_.name_7;
               _loc8_ = _loc7_.body;
               _loc9_ = _loc3_.name_3.var_79;
               while(_loc4_ != null)
               {
                  if(_loc4_.name_3.var_77 > _loc9_)
                  {
                     break;
                  }
                  _loc10_ = _loc4_.name_7;
                  _loc11_ = _loc10_.body;
                  if(_loc11_ == _loc8_)
                  {
                     _loc4_ = _loc4_.next;
                  }
                  else if(_loc8_.type == class_223.var_240 && _loc11_.type == class_223.var_240)
                  {
                     _loc4_ = _loc4_.next;
                  }
                  else if(!!_loc8_.var_112.var_129 && _loc11_.var_112.var_129)
                  {
                     _loc4_ = _loc4_.next;
                  }
                  else
                  {
                     _loc12_ = _loc7_.name_3;
                     _loc13_ = _loc10_.name_3;
                     if(!(_loc13_.var_78 > _loc12_.var_80 || _loc12_.var_78 > _loc13_.var_80))
                     {
                        if(param2)
                        {
                           param1.method_357(_loc7_,_loc10_,_loc8_.type != class_223.var_188 || _loc11_.type != class_223.var_188,null,false);
                        }
                        else
                        {
                           param1.method_495(_loc7_,_loc10_,_loc8_.type != class_223.var_188 || _loc11_.type != class_223.var_188,null,false);
                        }
                     }
                     _loc4_ = _loc4_.next;
                  }
               }
               _loc3_ = _loc3_.next;
            }
         }
      }
      
      override public function method_187(param1:Number, param2:Number, param3:ZPP_InteractionFilter, param4:class_205) : class_205
      {
         var _loc7_:* = null as ZPP_Vec2;
         var _loc8_:* = null as class_205;
         var _loc10_:* = null as ZPP_Shape;
         var _loc11_:* = null as Body;
         var _loc12_:* = null as ZPP_InteractionFilter;
         sync_broadphase();
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
         _loc7_.var_109 = false;
         _loc7_.x = param1;
         _loc7_.y = param2;
         var _loc5_:ZPP_Vec2 = _loc7_;
         if(param4 == null)
         {
            _loc8_ = new class_205();
         }
         else
         {
            _loc8_ = param4;
         }
         var _loc9_:ZPP_SweepData = var_177;
         while(_loc9_ != null && _loc9_.name_3.var_77 > param1)
         {
            _loc9_ = _loc9_.next;
         }
         while(_loc9_ != null && _loc9_.name_3.var_77 <= param1)
         {
            if(_loc9_.name_3.var_79 >= param1 && _loc9_.name_3.var_78 <= param2 && _loc9_.name_3.var_80 >= param2)
            {
               _loc10_ = _loc9_.name_7;
               _loc11_ = _loc10_.body.outer;
               if(!_loc8_.has(_loc11_))
               {
                  if(param3 == null || (_loc12_.name_14 & param3.name_13) != 0 && (param3.name_14 & _loc12_.name_13) != 0)
                  {
                     if(_loc10_.type == class_223.var_131)
                     {
                        if(class_239.method_223(_loc10_.var_102,_loc5_))
                        {
                           _loc8_.push(_loc11_);
                        }
                     }
                     else if(class_239.method_231(_loc10_.name_6,_loc5_))
                     {
                        _loc8_.push(_loc11_);
                     }
                  }
               }
            }
            _loc9_ = _loc9_.next;
         }
         _loc7_ = _loc5_;
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
         return _loc8_;
      }
      
      override public function bodiesInShape(param1:ZPP_Shape, param2:Boolean, param3:ZPP_InteractionFilter, param4:class_205) : class_205
      {
         var _loc6_:* = null as class_205;
         var _loc8_:* = null as ZPP_AABB;
         var _loc9_:* = null as ZPP_Shape;
         var _loc10_:* = null as Body;
         var _loc11_:* = null as ZPP_InteractionFilter;
         var _loc12_:Boolean = false;
         sync_broadphase();
         ;
         ZPP_Broadphase.method_180(param1);
         var _loc5_:ZPP_AABB = param1.name_3;
         if(param4 == null)
         {
            _loc6_ = new class_205();
         }
         else
         {
            _loc6_ = param4;
         }
         if(var_143 == null)
         {
            var_143 = new class_205();
         }
         var _loc7_:ZPP_SweepData = var_177;
         while(_loc7_ != null && _loc7_.name_3.var_79 < _loc5_.var_77)
         {
            _loc7_ = _loc7_.next;
         }
         while(_loc7_ != null && _loc7_.name_3.var_77 <= _loc5_.var_79)
         {
            _loc8_ = _loc7_.name_3;
            if(_loc5_.var_78 <= _loc8_.var_80 && _loc8_.var_78 <= _loc5_.var_80 && _loc5_.var_77 <= _loc8_.var_79 && _loc8_.var_77 <= _loc5_.var_79)
            {
               _loc9_ = _loc7_.name_7;
               _loc10_ = _loc9_.body.outer;
               if(param3 == null || (_loc11_.name_14 & param3.name_13) != 0 && (param3.name_14 & _loc11_.name_13) != 0)
               {
                  if(param2)
                  {
                     if(!var_143.has(_loc10_))
                     {
                        _loc12_ = class_239.method_135(param1,_loc9_);
                        if(!_loc6_.has(_loc10_) && _loc12_)
                        {
                           _loc6_.push(_loc10_);
                        }
                        else if(!_loc12_)
                        {
                           _loc6_.remove(_loc10_);
                           var_143.push(_loc10_);
                        }
                     }
                  }
                  else if(!_loc6_.has(_loc10_) && class_239.method_133(param1,_loc9_))
                  {
                     _loc6_.push(_loc10_);
                  }
               }
            }
            _loc7_ = _loc7_.next;
         }
         var_143.clear();
         return _loc6_;
      }
      
      override public function method_261(param1:Number, param2:Number, param3:Number, param4:Boolean, param5:ZPP_InteractionFilter, param6:class_205) : class_205
      {
         var _loc8_:* = null as class_205;
         var _loc10_:* = null as ZPP_AABB;
         var _loc11_:* = null as ZPP_Shape;
         var _loc12_:* = null as Body;
         var _loc13_:* = null as ZPP_InteractionFilter;
         var _loc14_:Boolean = false;
         sync_broadphase();
         method_202(param1,param2,param3);
         var _loc7_:ZPP_AABB = var_214.zpp_inner.name_3;
         if(param6 == null)
         {
            _loc8_ = new class_205();
         }
         else
         {
            _loc8_ = param6;
         }
         if(var_143 == null)
         {
            var_143 = new class_205();
         }
         var _loc9_:ZPP_SweepData = var_177;
         while(_loc9_ != null && _loc9_.name_3.var_79 < _loc7_.var_77)
         {
            _loc9_ = _loc9_.next;
         }
         while(_loc9_ != null && _loc9_.name_3.var_77 <= _loc7_.var_79)
         {
            _loc10_ = _loc9_.name_3;
            if(_loc7_.var_78 <= _loc10_.var_80 && _loc10_.var_78 <= _loc7_.var_80 && _loc7_.var_77 <= _loc10_.var_79 && _loc10_.var_77 <= _loc7_.var_79)
            {
               _loc11_ = _loc9_.name_7;
               _loc12_ = _loc11_.body.outer;
               if(param5 == null || (_loc13_.name_14 & param5.name_13) != 0 && (param5.name_14 & _loc13_.name_13) != 0)
               {
                  if(param4)
                  {
                     if(!var_143.has(_loc12_))
                     {
                        _loc14_ = class_239.method_135(var_214.zpp_inner,_loc11_);
                        if(!_loc8_.has(_loc12_) && _loc14_)
                        {
                           _loc8_.push(_loc12_);
                        }
                        else if(!_loc14_)
                        {
                           _loc8_.remove(_loc12_);
                           var_143.push(_loc12_);
                        }
                     }
                  }
                  else if(!_loc8_.has(_loc12_) && class_239.method_133(_loc11_,var_214.zpp_inner))
                  {
                     _loc8_.push(_loc12_);
                  }
               }
            }
            _loc9_ = _loc9_.next;
         }
         var_143.clear();
         return _loc8_;
      }
      
      override public function method_201(param1:ZPP_AABB, param2:Boolean, param3:Boolean, param4:ZPP_InteractionFilter, param5:class_205) : class_205
      {
         var _loc7_:* = null as class_205;
         var _loc9_:* = null as ZPP_Shape;
         var _loc10_:* = null as Body;
         var _loc11_:* = null as ZPP_AABB;
         var _loc12_:* = null as ZPP_InteractionFilter;
         var _loc13_:Boolean = false;
         sync_broadphase();
         method_210(param1);
         var _loc6_:ZPP_AABB = var_210.zpp_inner.name_3;
         if(param5 == null)
         {
            _loc7_ = new class_205();
         }
         else
         {
            _loc7_ = param5;
         }
         if(var_143 == null)
         {
            var_143 = new class_205();
         }
         var _loc8_:ZPP_SweepData = var_177;
         while(_loc8_ != null && _loc8_.name_3.var_79 < _loc6_.var_77)
         {
            _loc8_ = _loc8_.next;
         }
         while(_loc8_ != null && _loc8_.name_3.var_77 <= _loc6_.var_79)
         {
            _loc9_ = _loc8_.name_7;
            _loc10_ = _loc9_.body.outer;
            _loc11_ = _loc8_.name_3;
            if(_loc6_.var_78 <= _loc11_.var_80 && _loc11_.var_78 <= _loc6_.var_80 && _loc6_.var_77 <= _loc11_.var_79 && _loc11_.var_77 <= _loc6_.var_79)
            {
               if(param4 == null || (_loc12_.name_14 & param4.name_13) != 0 && (param4.name_14 & _loc12_.name_13) != 0)
               {
                  if(param2)
                  {
                     if(param3)
                     {
                        if(!var_143.has(_loc10_))
                        {
                           _loc13_ = class_239.method_135(var_210.zpp_inner,_loc9_);
                           if(!_loc7_.has(_loc10_) && _loc13_)
                           {
                              _loc7_.push(_loc10_);
                           }
                           else if(!_loc13_)
                           {
                              _loc7_.remove(_loc10_);
                              var_143.push(_loc10_);
                           }
                        }
                     }
                     else if(!_loc7_.has(_loc10_) && class_239.method_133(_loc9_,var_210.zpp_inner))
                     {
                        _loc7_.push(_loc10_);
                     }
                  }
                  else if(param3)
                  {
                     if(!var_143.has(_loc10_))
                     {
                        _loc11_ = _loc9_.name_3;
                        _loc13_ = _loc11_.var_77 >= _loc6_.var_77 && _loc11_.var_78 >= _loc6_.var_78 && _loc11_.var_79 <= _loc6_.var_79 && _loc11_.var_80 <= _loc6_.var_80;
                        if(!_loc7_.has(_loc10_) && _loc13_)
                        {
                           _loc7_.push(_loc10_);
                        }
                        else if(!_loc13_)
                        {
                           _loc7_.remove(_loc10_);
                           var_143.push(_loc10_);
                        }
                     }
                  }
                  else if(!_loc7_.has(_loc10_) && (_loc11_.var_77 >= _loc6_.var_77 && _loc11_.var_78 >= _loc6_.var_78 && _loc11_.var_79 <= _loc6_.var_79 && _loc11_.var_80 <= _loc6_.var_80))
                  {
                     _loc7_.push(_loc10_);
                  }
               }
            }
            _loc8_ = _loc8_.next;
         }
         var_143.clear();
         return _loc7_;
      }
      
      public final function method_296(param1:ZPP_Shape) : void
      {
         var _loc2_:ZPP_SweepData = param1.var_219;
         if(_loc2_.var_75 == null)
         {
            var_177 = _loc2_.next;
         }
         else
         {
            _loc2_.var_75.next = _loc2_.next;
         }
         if(_loc2_.next != null)
         {
            _loc2_.next.var_75 = _loc2_.var_75;
         }
         param1.var_219 = null;
         var _loc3_:ZPP_SweepData = _loc2_;
         _loc3_.var_75 = null;
         _loc3_.name_7 = null;
         _loc3_.name_3 = null;
         _loc3_.next = ZPP_SweepData.var_72;
         ZPP_SweepData.var_72 = _loc3_;
      }
      
      public final function method_393(param1:ZPP_Shape) : void
      {
         var _loc2_:* = null as ZPP_SweepData;
         if(ZPP_SweepData.var_72 == null)
         {
            _loc2_ = new ZPP_SweepData();
         }
         else
         {
            _loc2_ = ZPP_SweepData.var_72;
            ZPP_SweepData.var_72 = _loc2_.next;
            _loc2_.next = null;
         }
         null;
         param1.var_219 = _loc2_;
         _loc2_.name_7 = param1;
         _loc2_.name_3 = param1.name_3;
         _loc2_.next = var_177;
         if(var_177 != null)
         {
            var_177.var_75 = _loc2_;
         }
         var_177 = _loc2_;
      }
   }
}
