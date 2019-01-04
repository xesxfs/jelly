package zpp_nape.geom
{
   import nape.geom.RayResult;
   import nape.geom.Vec2;
   import nape.geom.class_233;
   import package_35.class_238;
   import zpp_nape.phys.ZPP_Body;
   import zpp_nape.shape.ZPP_Circle;
   import zpp_nape.shape.ZPP_Edge;
   import zpp_nape.shape.ZPP_Polygon;
   import zpp_nape.util.ZNPNode_RayResult;
   import zpp_nape.util.ZNPNode_ZPP_Edge;
   import zpp_nape.util.class_219;
   import zpp_nape.util.class_223;
   import zpp_nape.util.class_339;
   
   public final class class_311
   {
       
      
      public var var_487:Boolean;
      
      public var name_21;
      
      public var var_201:Number;
      
      public var var_195:Number;
      
      public var name_55:Vec2;
      
      public var var_657:Number;
      
      public var var_663:Number;
      
      public var maxdist:Number;
      
      public var var_661:Number;
      
      public var var_658:Number;
      
      public var var_147:Number;
      
      public var var_146:Number;
      
      public var direction:Vec2;
      
      public var var_636:Number;
      
      public var var_675:Number;
      
      public function class_311()
      {
         var _loc4_:* = null as Vec2;
         var _loc5_:Boolean = false;
         var _loc6_:* = null as ZPP_Vec2;
         var_487 = false;
         var_636 = 0;
         var_675 = 0;
         var_657 = 0;
         var_663 = 0;
         var_661 = 0;
         var_658 = 0;
         var_147 = 0;
         var_146 = 0;
         var_201 = 0;
         var_195 = 0;
         name_21 = null;
         maxdist = 0;
         direction = null;
         name_55 = null;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         var _loc3_:Boolean = false;
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
         name_55 = _loc4_;
         name_55.zpp_inner._invalidate = origin_invalidate;
         _loc1_ = 0;
         _loc2_ = 0;
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
         direction = _loc4_;
         direction.zpp_inner._invalidate = direction_invalidate;
         var_195 = 0;
         var_201 = 0;
         var_146 = 0;
         var_147 = 0;
         var_487 = false;
      }
      
      public final function method_292() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(var_487)
         {
            var_487 = false;
            _loc1_ = Number(var_146 * var_146 + var_147 * var_147);
            _loc2_ = 1 / Math.sqrt(_loc1_);
            _loc3_ = _loc2_;
            var_146 = var_146 * _loc3_;
            var_147 = var_147 * _loc3_;
            var_658 = 1 / var_146;
            var_661 = 1 / var_147;
            var_663 = -var_147;
            var_657 = var_146;
            _loc1_ = var_663;
            if(_loc1_ < 0)
            {
               var_675 = -_loc1_;
            }
            else
            {
               var_675 = _loc1_;
            }
            _loc1_ = var_657;
            if(_loc1_ < 0)
            {
               var_636 = -_loc1_;
            }
            else
            {
               var_636 = _loc1_;
            }
         }
      }
      
      public final function method_364() : ZPP_AABB
      {
         var _loc5_:Number = NaN;
         var _loc7_:* = null as ZPP_AABB;
         var _loc1_:Number = var_195;
         var _loc2_:* = Number(_loc1_);
         var _loc3_:Number = var_201;
         var _loc4_:* = Number(_loc3_);
         if(maxdist >= 1.79e308)
         {
            if(var_146 > 0)
            {
               _loc2_ = 1.79e308;
            }
            else if(var_146 < 0)
            {
               _loc2_ = -1.79e308;
            }
            if(var_147 > 0)
            {
               _loc4_ = 1.79e308;
            }
            else if(var_147 < 0)
            {
               _loc4_ = -1.79e308;
            }
         }
         else
         {
            _loc2_ = Number(Number(_loc2_ + maxdist * var_146));
            _loc4_ = Number(Number(_loc4_ + maxdist * var_147));
         }
         if(_loc2_ < _loc1_)
         {
            _loc5_ = _loc1_;
            _loc1_ = _loc2_;
            _loc2_ = Number(_loc5_);
         }
         if(_loc4_ < _loc3_)
         {
            _loc5_ = _loc3_;
            _loc3_ = _loc4_;
            _loc4_ = Number(_loc5_);
         }
         if(ZPP_AABB.var_72 == null)
         {
            _loc7_ = new ZPP_AABB();
         }
         else
         {
            _loc7_ = ZPP_AABB.var_72;
            ZPP_AABB.var_72 = _loc7_.next;
            _loc7_.next = null;
         }
         null;
         _loc7_.var_77 = _loc1_;
         _loc7_.var_78 = _loc3_;
         _loc7_.var_79 = _loc2_;
         _loc7_.var_80 = _loc4_;
         var _loc6_:ZPP_AABB = _loc7_;
         return _loc6_;
      }
      
      public final function polysect2(param1:ZPP_Polygon, param2:Boolean, param3:class_233) : void
      {
         var _loc9_:* = false;
         var _loc10_:* = null as ZPP_Vec2;
         var _loc13_:* = null as ZPP_Vec2;
         var _loc14_:* = null as ZPP_Edge;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         var _loc18_:* = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:* = null as RayResult;
         var _loc23_:Boolean = false;
         var _loc24_:* = null as Vec2;
         var _loc25_:Boolean = false;
         var _loc26_:* = null as ZNPNode_RayResult;
         var _loc27_:* = null as ZNPNode_RayResult;
         var _loc28_:* = null as RayResult;
         var _loc29_:* = null as class_339;
         var _loc30_:* = null as ZNPNode_RayResult;
         var _loc4_:* = 1.79e308;
         var _loc5_:* = -1;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:ZNPNode_ZPP_Edge = param1.name_11.var_73;
         _loc9_ = true;
         _loc10_ = param1.var_107.next;
         var _loc11_:ZPP_Vec2 = _loc10_;
         var _loc12_:ZPP_Vec2 = _loc10_.next;
         while(_loc12_ != null)
         {
            _loc13_ = _loc12_;
            _loc14_ = _loc8_.var_74;
            if(param2 || Number(_loc14_.var_92 * var_146 + _loc14_.var_91 * var_147) < 0)
            {
               _loc15_ = 0;
               _loc16_ = 0;
               _loc15_ = Number(_loc13_.x - _loc11_.x);
               _loc16_ = Number(_loc13_.y - _loc11_.y);
               _loc17_ = 0;
               _loc18_ = 0;
               _loc17_ = Number(_loc11_.x - var_195);
               _loc18_ = Number(_loc11_.y - var_201);
               _loc19_ = _loc16_ * var_146 - _loc15_ * var_147;
               if(_loc19_ * _loc19_ > class_238.name_8)
               {
                  _loc19_ = 1 / _loc19_;
                  _loc20_ = (_loc16_ * _loc17_ - _loc15_ * _loc18_) * _loc19_;
                  if(_loc20_ > 0 && _loc20_ <= maxdist && (_loc20_ < _loc4_ || _loc20_ > _loc5_))
                  {
                     _loc21_ = (var_147 * _loc17_ - var_146 * _loc18_) * _loc19_;
                     if(_loc21_ > -class_238.name_8 && _loc21_ < Number(1 + class_238.name_8))
                     {
                        if(_loc20_ < _loc4_)
                        {
                           _loc4_ = Number(_loc20_);
                           _loc6_ = _loc8_.var_74;
                        }
                        if(_loc20_ > _loc5_)
                        {
                           _loc5_ = Number(_loc20_);
                           _loc7_ = _loc8_.var_74;
                        }
                     }
                  }
               }
            }
            _loc8_ = _loc8_.next;
            _loc10_ = _loc12_;
            _loc11_ = _loc13_;
            _loc12_ = _loc12_.next;
         }
         if(_loc9_)
         {
            _loc12_ = param1.var_107.next;
            _loc13_ = _loc12_;
            _loc14_ = _loc8_.var_74;
            if(param2 || Number(_loc14_.var_92 * var_146 + _loc14_.var_91 * var_147) < 0)
            {
               _loc15_ = 0;
               _loc16_ = 0;
               _loc15_ = Number(_loc13_.x - _loc11_.x);
               _loc16_ = Number(_loc13_.y - _loc11_.y);
               _loc17_ = 0;
               _loc18_ = 0;
               _loc17_ = Number(_loc11_.x - var_195);
               _loc18_ = Number(_loc11_.y - var_201);
               _loc19_ = _loc16_ * var_146 - _loc15_ * var_147;
               if(_loc19_ * _loc19_ > class_238.name_8)
               {
                  _loc19_ = 1 / _loc19_;
                  _loc20_ = (_loc16_ * _loc17_ - _loc15_ * _loc18_) * _loc19_;
                  if(_loc20_ > 0 && _loc20_ <= maxdist && (_loc20_ < _loc4_ || _loc20_ > _loc5_))
                  {
                     _loc21_ = (var_147 * _loc17_ - var_146 * _loc18_) * _loc19_;
                     if(_loc21_ > -class_238.name_8 && _loc21_ < Number(1 + class_238.name_8))
                     {
                        if(_loc20_ < _loc4_)
                        {
                           _loc4_ = Number(_loc20_);
                           _loc6_ = _loc8_.var_74;
                        }
                        if(_loc20_ > _loc5_)
                        {
                           _loc5_ = Number(_loc20_);
                           _loc7_ = _loc8_.var_74;
                        }
                     }
                  }
               }
            }
            _loc8_ = _loc8_.next;
         }
         if(_loc6_ != null)
         {
            _loc15_ = 0;
            _loc16_ = 0;
            _loc15_ = Number(_loc6_.var_92);
            _loc16_ = Number(_loc6_.var_91);
            _loc9_ = Number(_loc15_ * var_146 + _loc16_ * var_147) > 0;
            if(_loc9_)
            {
               _loc15_ = Number(-_loc15_);
               _loc16_ = Number(-_loc16_);
            }
            _loc23_ = false;
            §§push(class_297);
            if(class_219.poolVec2 == null)
            {
               _loc24_ = new Vec2();
            }
            else
            {
               _loc24_ = class_219.poolVec2;
               class_219.poolVec2 = _loc24_.var_72;
               _loc24_.var_72 = null;
            }
            if(_loc24_.zpp_inner == null)
            {
               _loc25_ = false;
               if(ZPP_Vec2.var_72 == null)
               {
                  _loc10_ = new ZPP_Vec2();
               }
               else
               {
                  _loc10_ = ZPP_Vec2.var_72;
                  ZPP_Vec2.var_72 = _loc10_.next;
                  _loc10_.next = null;
               }
               _loc10_.name_5 = false;
               _loc10_.var_109 = _loc25_;
               _loc10_.x = _loc15_;
               _loc10_.y = _loc16_;
               _loc24_.zpp_inner = _loc10_;
               _loc24_.zpp_inner.outer = _loc24_;
            }
            else
            {
               _loc10_ = _loc24_.zpp_inner;
               §§push(false);
               if(_loc10_._validate != null)
               {
                  _loc10_._validate();
               }
               if(_loc24_.zpp_inner.x == _loc15_)
               {
                  §§pop();
                  _loc10_ = _loc24_.zpp_inner;
                  if(_loc10_._validate != null)
                  {
                     _loc10_._validate();
                  }
                  §§push(_loc24_.zpp_inner.y == _loc16_);
               }
               if(!§§pop())
               {
                  _loc24_.zpp_inner.x = _loc15_;
                  _loc24_.zpp_inner.y = _loc16_;
                  _loc10_ = _loc24_.zpp_inner;
                  if(_loc10_._invalidate != null)
                  {
                     _loc10_._invalidate(_loc10_);
                  }
               }
               _loc24_;
            }
            _loc24_.zpp_inner.name_5 = _loc23_;
            _loc22_ = §§pop().method_193(_loc24_,_loc4_,_loc9_,param1.outer);
            _loc26_ = null;
            _loc27_ = param3.zpp_inner.name_4.var_73;
            while(_loc27_ != null)
            {
               _loc28_ = _loc27_.var_74;
               if(_loc22_.zpp_inner.var_285 < _loc28_.zpp_inner.var_285)
               {
                  break;
               }
               _loc26_ = _loc27_;
               _loc27_ = _loc27_.next;
            }
            _loc29_ = param3.zpp_inner.name_4;
            if(ZNPNode_RayResult.var_72 == null)
            {
               _loc30_ = new ZNPNode_RayResult();
            }
            else
            {
               _loc30_ = ZNPNode_RayResult.var_72;
               ZNPNode_RayResult.var_72 = _loc30_.next;
               _loc30_.next = null;
            }
            null;
            _loc30_.var_74 = _loc22_;
            _loc27_ = _loc30_;
            if(_loc26_ == null)
            {
               _loc27_.next = _loc29_.var_73;
               _loc29_.var_73 = _loc27_;
            }
            else
            {
               _loc27_.next = _loc26_.next;
               _loc26_.next = _loc27_;
            }
            _loc23_ = true;
            _loc29_.name_2 = _loc23_;
            _loc29_.var_76 = _loc23_;
            _loc29_.length = _loc29_.length + 1;
            _loc27_;
         }
         if(_loc7_ != null && _loc6_ != _loc7_)
         {
            _loc15_ = 0;
            _loc16_ = 0;
            _loc15_ = Number(_loc7_.var_92);
            _loc16_ = Number(_loc7_.var_91);
            _loc9_ = Number(_loc15_ * var_146 + _loc16_ * var_147) > 0;
            if(_loc9_)
            {
               _loc15_ = Number(-_loc15_);
               _loc16_ = Number(-_loc16_);
            }
            _loc23_ = false;
            §§push(class_297);
            if(class_219.poolVec2 == null)
            {
               _loc24_ = new Vec2();
            }
            else
            {
               _loc24_ = class_219.poolVec2;
               class_219.poolVec2 = _loc24_.var_72;
               _loc24_.var_72 = null;
            }
            if(_loc24_.zpp_inner == null)
            {
               _loc25_ = false;
               if(ZPP_Vec2.var_72 == null)
               {
                  _loc10_ = new ZPP_Vec2();
               }
               else
               {
                  _loc10_ = ZPP_Vec2.var_72;
                  ZPP_Vec2.var_72 = _loc10_.next;
                  _loc10_.next = null;
               }
               _loc10_.name_5 = false;
               _loc10_.var_109 = _loc25_;
               _loc10_.x = _loc15_;
               _loc10_.y = _loc16_;
               _loc24_.zpp_inner = _loc10_;
               _loc24_.zpp_inner.outer = _loc24_;
            }
            else
            {
               _loc10_ = _loc24_.zpp_inner;
               §§push(false);
               if(_loc10_._validate != null)
               {
                  _loc10_._validate();
               }
               if(_loc24_.zpp_inner.x == _loc15_)
               {
                  §§pop();
                  _loc10_ = _loc24_.zpp_inner;
                  if(_loc10_._validate != null)
                  {
                     _loc10_._validate();
                  }
                  §§push(_loc24_.zpp_inner.y == _loc16_);
               }
               if(!§§pop())
               {
                  _loc24_.zpp_inner.x = _loc15_;
                  _loc24_.zpp_inner.y = _loc16_;
                  _loc10_ = _loc24_.zpp_inner;
                  if(_loc10_._invalidate != null)
                  {
                     _loc10_._invalidate(_loc10_);
                  }
               }
               _loc24_;
            }
            _loc24_.zpp_inner.name_5 = _loc23_;
            _loc22_ = §§pop().method_193(_loc24_,_loc5_,_loc9_,param1.outer);
            _loc26_ = null;
            _loc27_ = param3.zpp_inner.name_4.var_73;
            while(_loc27_ != null)
            {
               _loc28_ = _loc27_.var_74;
               if(_loc22_.zpp_inner.var_285 < _loc28_.zpp_inner.var_285)
               {
                  break;
               }
               _loc26_ = _loc27_;
               _loc27_ = _loc27_.next;
            }
            _loc29_ = param3.zpp_inner.name_4;
            if(ZNPNode_RayResult.var_72 == null)
            {
               _loc30_ = new ZNPNode_RayResult();
            }
            else
            {
               _loc30_ = ZNPNode_RayResult.var_72;
               ZNPNode_RayResult.var_72 = _loc30_.next;
               _loc30_.next = null;
            }
            null;
            _loc30_.var_74 = _loc22_;
            _loc27_ = _loc30_;
            if(_loc26_ == null)
            {
               _loc27_.next = _loc29_.var_73;
               _loc29_.var_73 = _loc27_;
            }
            else
            {
               _loc27_.next = _loc26_.next;
               _loc26_.next = _loc27_;
            }
            _loc23_ = true;
            _loc29_.name_2 = _loc23_;
            _loc29_.var_76 = _loc23_;
            _loc29_.length = _loc29_.length + 1;
            _loc27_;
         }
      }
      
      public final function method_346(param1:ZPP_Polygon, param2:Boolean, param3:Number) : RayResult
      {
         var _loc7_:* = false;
         var _loc8_:* = null as ZPP_Vec2;
         var _loc11_:* = null as ZPP_Vec2;
         var _loc12_:* = null as ZPP_Edge;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Boolean = false;
         var _loc21_:* = null as Vec2;
         var _loc22_:Boolean = false;
         var _loc4_:Number = param3;
         var _loc5_:* = null;
         var _loc6_:ZNPNode_ZPP_Edge = param1.name_11.var_73;
         _loc7_ = true;
         _loc8_ = param1.var_107.next;
         var _loc9_:ZPP_Vec2 = _loc8_;
         var _loc10_:ZPP_Vec2 = _loc8_.next;
         while(_loc10_ != null)
         {
            _loc11_ = _loc10_;
            _loc12_ = _loc6_.var_74;
            if(param2 || Number(_loc12_.var_92 * var_146 + _loc12_.var_91 * var_147) < 0)
            {
               _loc13_ = 0;
               _loc14_ = 0;
               _loc13_ = Number(_loc11_.x - _loc9_.x);
               _loc14_ = Number(_loc11_.y - _loc9_.y);
               _loc15_ = 0;
               _loc16_ = 0;
               _loc15_ = Number(_loc9_.x - var_195);
               _loc16_ = Number(_loc9_.y - var_201);
               _loc17_ = _loc14_ * var_146 - _loc13_ * var_147;
               if(_loc17_ * _loc17_ > class_238.name_8)
               {
                  _loc17_ = 1 / _loc17_;
                  _loc18_ = (_loc14_ * _loc15_ - _loc13_ * _loc16_) * _loc17_;
                  if(_loc18_ > 0 && _loc18_ < _loc4_ && _loc18_ <= maxdist)
                  {
                     _loc19_ = (var_147 * _loc15_ - var_146 * _loc16_) * _loc17_;
                     if(_loc19_ > -class_238.name_8 && _loc19_ < Number(1 + class_238.name_8))
                     {
                        _loc4_ = _loc18_;
                        _loc5_ = _loc6_.var_74;
                     }
                  }
               }
            }
            _loc6_ = _loc6_.next;
            _loc8_ = _loc10_;
            _loc9_ = _loc11_;
            _loc10_ = _loc10_.next;
         }
         if(_loc7_)
         {
            _loc10_ = param1.var_107.next;
            _loc11_ = _loc10_;
            _loc12_ = _loc6_.var_74;
            if(param2 || Number(_loc12_.var_92 * var_146 + _loc12_.var_91 * var_147) < 0)
            {
               _loc13_ = 0;
               _loc14_ = 0;
               _loc13_ = Number(_loc11_.x - _loc9_.x);
               _loc14_ = Number(_loc11_.y - _loc9_.y);
               _loc15_ = 0;
               _loc16_ = 0;
               _loc15_ = Number(_loc9_.x - var_195);
               _loc16_ = Number(_loc9_.y - var_201);
               _loc17_ = _loc14_ * var_146 - _loc13_ * var_147;
               if(_loc17_ * _loc17_ > class_238.name_8)
               {
                  _loc17_ = 1 / _loc17_;
                  _loc18_ = (_loc14_ * _loc15_ - _loc13_ * _loc16_) * _loc17_;
                  if(_loc18_ > 0 && _loc18_ < _loc4_ && _loc18_ <= maxdist)
                  {
                     _loc19_ = (var_147 * _loc15_ - var_146 * _loc16_) * _loc17_;
                     if(_loc19_ > -class_238.name_8 && _loc19_ < Number(1 + class_238.name_8))
                     {
                        _loc4_ = _loc18_;
                        _loc5_ = _loc6_.var_74;
                     }
                  }
               }
            }
            _loc6_ = _loc6_.next;
         }
         if(_loc5_ != null)
         {
            _loc13_ = 0;
            _loc14_ = 0;
            _loc13_ = Number(_loc5_.var_92);
            _loc14_ = Number(_loc5_.var_91);
            _loc7_ = Number(_loc13_ * var_146 + _loc14_ * var_147) > 0;
            if(_loc7_)
            {
               _loc13_ = Number(-_loc13_);
               _loc14_ = Number(-_loc14_);
            }
            _loc20_ = false;
            §§push(class_297);
            if(class_219.poolVec2 == null)
            {
               _loc21_ = new Vec2();
            }
            else
            {
               _loc21_ = class_219.poolVec2;
               class_219.poolVec2 = _loc21_.var_72;
               _loc21_.var_72 = null;
            }
            if(_loc21_.zpp_inner == null)
            {
               _loc22_ = false;
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
               _loc8_.var_109 = _loc22_;
               _loc8_.x = _loc13_;
               _loc8_.y = _loc14_;
               _loc21_.zpp_inner = _loc8_;
               _loc21_.zpp_inner.outer = _loc21_;
            }
            else
            {
               _loc8_ = _loc21_.zpp_inner;
               §§push(false);
               if(_loc8_._validate != null)
               {
                  _loc8_._validate();
               }
               if(_loc21_.zpp_inner.x == _loc13_)
               {
                  §§pop();
                  _loc8_ = _loc21_.zpp_inner;
                  if(_loc8_._validate != null)
                  {
                     _loc8_._validate();
                  }
                  §§push(_loc21_.zpp_inner.y == _loc14_);
               }
               if(!§§pop())
               {
                  _loc21_.zpp_inner.x = _loc13_;
                  _loc21_.zpp_inner.y = _loc14_;
                  _loc8_ = _loc21_.zpp_inner;
                  if(_loc8_._invalidate != null)
                  {
                     _loc8_._invalidate(_loc8_);
                  }
               }
               _loc21_;
            }
            _loc21_.zpp_inner.name_5 = _loc20_;
            return §§pop().method_193(_loc21_,_loc4_,_loc7_,param1.outer);
         }
         return null;
      }
      
      public final function origin_invalidate(param1:ZPP_Vec2) : void
      {
         var_195 = param1.x;
         var_201 = param1.y;
      }
      
      public final function direction_invalidate(param1:ZPP_Vec2) : void
      {
         var_146 = param1.x;
         var_147 = param1.y;
         var_487 = true;
      }
      
      public final function circlesect2(param1:ZPP_Circle, param2:Boolean, param3:class_233) : void
      {
         var _loc4_:* = null as ZPP_Polygon;
         var _loc5_:* = NaN;
         var _loc6_:* = null as ZPP_Vec2;
         var _loc7_:* = null as ZPP_Vec2;
         var _loc8_:* = null as ZPP_Vec2;
         var _loc9_:* = null as ZPP_Vec2;
         var _loc10_:* = NaN;
         var _loc11_:* = null as ZPP_Vec2;
         var _loc12_:* = null as ZPP_Body;
         var _loc17_:Number = NaN;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         var _loc21_:* = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:* = null as RayResult;
         var _loc24_:Boolean = false;
         var _loc25_:* = null as Vec2;
         var _loc26_:Boolean = false;
         var _loc27_:* = null as ZNPNode_RayResult;
         var _loc28_:* = null as ZNPNode_RayResult;
         var _loc29_:* = null as RayResult;
         var _loc30_:* = null as class_339;
         var _loc31_:* = null as ZNPNode_RayResult;
         var _loc32_:Number = NaN;
         if(param1.var_139)
         {
            if(param1.body != null)
            {
               param1.var_139 = false;
               if(param1.var_140)
               {
                  param1.var_140 = false;
                  if(param1.type == class_223.var_155)
                  {
                     _loc4_ = param1.name_6;
                     if(_loc4_.var_88.next.next == null)
                     {
                        _loc4_.var_82 = _loc4_.var_88.next.x;
                        _loc4_.var_81 = _loc4_.var_88.next.y;
                        null;
                     }
                     else if(_loc4_.var_88.next.next.next == null)
                     {
                        _loc4_.var_82 = _loc4_.var_88.next.x;
                        _loc4_.var_81 = _loc4_.var_88.next.y;
                        _loc5_ = 1;
                        _loc4_.var_82 = Number(_loc4_.var_82 + _loc4_.var_88.next.next.x * _loc5_);
                        _loc4_.var_81 = Number(_loc4_.var_81 + _loc4_.var_88.next.next.y * _loc5_);
                        _loc5_ = 0.5;
                        _loc4_.var_82 = _loc4_.var_82 * _loc5_;
                        _loc4_.var_81 = _loc4_.var_81 * _loc5_;
                     }
                     else
                     {
                        _loc4_.var_82 = 0;
                        _loc4_.var_81 = 0;
                        _loc5_ = 0;
                        _loc6_ = _loc4_.var_88.next;
                        _loc7_ = _loc6_;
                        _loc6_ = _loc6_.next;
                        _loc8_ = _loc6_;
                        _loc6_ = _loc6_.next;
                        while(_loc6_ != null)
                        {
                           _loc9_ = _loc6_;
                           _loc5_ = Number(Number(_loc5_ + _loc8_.x * (_loc9_.y - _loc7_.y)));
                           _loc10_ = Number(_loc9_.y * _loc8_.x - _loc9_.x * _loc8_.y);
                           _loc4_.var_82 = Number(_loc4_.var_82 + (_loc8_.x + _loc9_.x) * _loc10_);
                           _loc4_.var_81 = Number(_loc4_.var_81 + (_loc8_.y + _loc9_.y) * _loc10_);
                           _loc7_ = _loc8_;
                           _loc8_ = _loc9_;
                           _loc6_ = _loc6_.next;
                        }
                        _loc6_ = _loc4_.var_88.next;
                        _loc9_ = _loc6_;
                        _loc5_ = Number(Number(_loc5_ + _loc8_.x * (_loc9_.y - _loc7_.y)));
                        _loc10_ = Number(_loc9_.y * _loc8_.x - _loc9_.x * _loc8_.y);
                        _loc4_.var_82 = Number(_loc4_.var_82 + (_loc8_.x + _loc9_.x) * _loc10_);
                        _loc4_.var_81 = Number(_loc4_.var_81 + (_loc8_.y + _loc9_.y) * _loc10_);
                        _loc7_ = _loc8_;
                        _loc8_ = _loc9_;
                        _loc6_ = _loc6_.next;
                        _loc11_ = _loc6_;
                        _loc5_ = Number(Number(_loc5_ + _loc8_.x * (_loc11_.y - _loc7_.y)));
                        _loc10_ = Number(_loc11_.y * _loc8_.x - _loc11_.x * _loc8_.y);
                        _loc4_.var_82 = Number(_loc4_.var_82 + (_loc8_.x + _loc11_.x) * _loc10_);
                        _loc4_.var_81 = Number(_loc4_.var_81 + (_loc8_.y + _loc11_.y) * _loc10_);
                        _loc5_ = Number(1 / (3 * _loc5_));
                        _loc10_ = Number(_loc5_);
                        _loc4_.var_82 = _loc4_.var_82 * _loc10_;
                        _loc4_.var_81 = _loc4_.var_81 * _loc10_;
                     }
                  }
                  if(param1.var_115 != null)
                  {
                     param1.var_115.zpp_inner.x = param1.var_82;
                     param1.var_115.zpp_inner.y = param1.var_81;
                  }
               }
               _loc12_ = param1.body;
               if(_loc12_.var_113)
               {
                  _loc12_.var_113 = false;
                  _loc12_.var_84 = Number(Math.sin(_loc12_.var_93));
                  _loc12_.var_83 = Number(Math.cos(_loc12_.var_93));
                  null;
               }
               param1.var_99 = Number(param1.body.var_95 + (param1.body.var_83 * param1.var_82 - param1.body.var_84 * param1.var_81));
               param1.var_100 = Number(param1.body.var_96 + (Number(param1.var_82 * param1.body.var_84 + param1.var_81 * param1.body.var_83)));
            }
         }
         _loc5_ = 0;
         _loc10_ = 0;
         _loc5_ = Number(var_195 - param1.var_99);
         _loc10_ = Number(var_201 - param1.var_100);
         var _loc13_:Number = Number(var_146 * var_146 + var_147 * var_147);
         var _loc14_:Number = 2 * (_loc5_ * var_146 + _loc10_ * var_147);
         var _loc15_:Number = _loc5_ * _loc5_ + _loc10_ * _loc10_ - param1.radius * param1.radius;
         var _loc16_:Number = _loc14_ * _loc14_ - 4 * _loc13_ * _loc15_;
         if(_loc16_ == 0)
         {
            _loc17_ = -_loc14_ / 2 * _loc13_;
            if((!param2 || _loc15_ > 0) && _loc17_ > 0 && _loc17_ <= maxdist)
            {
               _loc18_ = 0;
               _loc19_ = 0;
               _loc18_ = Number(var_195);
               _loc19_ = Number(var_201);
               _loc20_ = Number(_loc17_);
               _loc18_ = Number(Number(_loc18_ + var_146 * _loc20_));
               _loc19_ = Number(Number(_loc19_ + var_147 * _loc20_));
               _loc20_ = 1;
               _loc18_ = Number(_loc18_ - param1.var_99 * _loc20_);
               _loc19_ = Number(_loc19_ - param1.var_100 * _loc20_);
               _loc20_ = Number(Number(_loc18_ * _loc18_ + _loc19_ * _loc19_));
               _loc21_ = Number(1 / Math.sqrt(_loc20_));
               _loc22_ = _loc21_;
               _loc18_ = Number(_loc18_ * _loc22_);
               _loc19_ = Number(_loc19_ * _loc22_);
               if(_loc15_ <= 0)
               {
                  _loc18_ = Number(-_loc18_);
                  _loc19_ = Number(-_loc19_);
               }
               _loc24_ = false;
               §§push(class_297);
               if(class_219.poolVec2 == null)
               {
                  _loc25_ = new Vec2();
               }
               else
               {
                  _loc25_ = class_219.poolVec2;
                  class_219.poolVec2 = _loc25_.var_72;
                  _loc25_.var_72 = null;
               }
               if(_loc25_.zpp_inner == null)
               {
                  _loc26_ = false;
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
                  _loc6_.var_109 = _loc26_;
                  _loc6_.x = _loc18_;
                  _loc6_.y = _loc19_;
                  _loc25_.zpp_inner = _loc6_;
                  _loc25_.zpp_inner.outer = _loc25_;
               }
               else
               {
                  _loc6_ = _loc25_.zpp_inner;
                  §§push(false);
                  if(_loc6_._validate != null)
                  {
                     _loc6_._validate();
                  }
                  if(_loc25_.zpp_inner.x == _loc18_)
                  {
                     §§pop();
                     _loc6_ = _loc25_.zpp_inner;
                     if(_loc6_._validate != null)
                     {
                        _loc6_._validate();
                     }
                     §§push(_loc25_.zpp_inner.y == _loc19_);
                  }
                  if(!§§pop())
                  {
                     _loc25_.zpp_inner.x = _loc18_;
                     _loc25_.zpp_inner.y = _loc19_;
                     _loc6_ = _loc25_.zpp_inner;
                     if(_loc6_._invalidate != null)
                     {
                        _loc6_._invalidate(_loc6_);
                     }
                  }
                  _loc25_;
               }
               _loc25_.zpp_inner.name_5 = _loc24_;
               _loc23_ = §§pop().method_193(_loc25_,_loc17_,_loc15_ <= 0,param1.outer);
               _loc27_ = null;
               _loc28_ = param3.zpp_inner.name_4.var_73;
               while(_loc28_ != null)
               {
                  _loc29_ = _loc28_.var_74;
                  if(_loc23_.zpp_inner.var_285 < _loc29_.zpp_inner.var_285)
                  {
                     break;
                  }
                  _loc27_ = _loc28_;
                  _loc28_ = _loc28_.next;
               }
               _loc30_ = param3.zpp_inner.name_4;
               if(ZNPNode_RayResult.var_72 == null)
               {
                  _loc31_ = new ZNPNode_RayResult();
               }
               else
               {
                  _loc31_ = ZNPNode_RayResult.var_72;
                  ZNPNode_RayResult.var_72 = _loc31_.next;
                  _loc31_.next = null;
               }
               null;
               _loc31_.var_74 = _loc23_;
               _loc28_ = _loc31_;
               if(_loc27_ == null)
               {
                  _loc28_.next = _loc30_.var_73;
                  _loc30_.var_73 = _loc28_;
               }
               else
               {
                  _loc28_.next = _loc27_.next;
                  _loc27_.next = _loc28_;
               }
               _loc24_ = true;
               _loc30_.name_2 = _loc24_;
               _loc30_.var_76 = _loc24_;
               _loc30_.length = _loc30_.length + 1;
               _loc28_;
            }
         }
         else
         {
            _loc16_ = Number(Math.sqrt(_loc16_));
            _loc13_ = 1 / (2 * _loc13_);
            _loc17_ = (-_loc14_ - _loc16_) * _loc13_;
            _loc18_ = Number((-_loc14_ + _loc16_) * _loc13_);
            if(_loc17_ > 0 && _loc17_ <= maxdist)
            {
               _loc19_ = 0;
               _loc20_ = 0;
               _loc19_ = Number(var_195);
               _loc20_ = Number(var_201);
               _loc21_ = Number(_loc17_);
               _loc19_ = Number(Number(_loc19_ + var_146 * _loc21_));
               _loc20_ = Number(Number(_loc20_ + var_147 * _loc21_));
               _loc21_ = 1;
               _loc19_ = Number(_loc19_ - param1.var_99 * _loc21_);
               _loc20_ = Number(_loc20_ - param1.var_100 * _loc21_);
               _loc21_ = Number(Number(_loc19_ * _loc19_ + _loc20_ * _loc20_));
               _loc22_ = 1 / Math.sqrt(_loc21_);
               _loc32_ = _loc22_;
               _loc19_ = Number(_loc19_ * _loc32_);
               _loc20_ = Number(_loc20_ * _loc32_);
               _loc24_ = false;
               §§push(class_297);
               if(class_219.poolVec2 == null)
               {
                  _loc25_ = new Vec2();
               }
               else
               {
                  _loc25_ = class_219.poolVec2;
                  class_219.poolVec2 = _loc25_.var_72;
                  _loc25_.var_72 = null;
               }
               if(_loc25_.zpp_inner == null)
               {
                  _loc26_ = false;
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
                  _loc6_.var_109 = _loc26_;
                  _loc6_.x = _loc19_;
                  _loc6_.y = _loc20_;
                  _loc25_.zpp_inner = _loc6_;
                  _loc25_.zpp_inner.outer = _loc25_;
               }
               else
               {
                  _loc6_ = _loc25_.zpp_inner;
                  §§push(false);
                  if(_loc6_._validate != null)
                  {
                     _loc6_._validate();
                  }
                  if(_loc25_.zpp_inner.x == _loc19_)
                  {
                     §§pop();
                     _loc6_ = _loc25_.zpp_inner;
                     if(_loc6_._validate != null)
                     {
                        _loc6_._validate();
                     }
                     §§push(_loc25_.zpp_inner.y == _loc20_);
                  }
                  if(!§§pop())
                  {
                     _loc25_.zpp_inner.x = _loc19_;
                     _loc25_.zpp_inner.y = _loc20_;
                     _loc6_ = _loc25_.zpp_inner;
                     if(_loc6_._invalidate != null)
                     {
                        _loc6_._invalidate(_loc6_);
                     }
                  }
                  _loc25_;
               }
               _loc25_.zpp_inner.name_5 = _loc24_;
               _loc23_ = §§pop().method_193(_loc25_,_loc17_,false,param1.outer);
               _loc27_ = null;
               _loc28_ = param3.zpp_inner.name_4.var_73;
               while(_loc28_ != null)
               {
                  _loc29_ = _loc28_.var_74;
                  if(_loc23_.zpp_inner.var_285 < _loc29_.zpp_inner.var_285)
                  {
                     break;
                  }
                  _loc27_ = _loc28_;
                  _loc28_ = _loc28_.next;
               }
               _loc30_ = param3.zpp_inner.name_4;
               if(ZNPNode_RayResult.var_72 == null)
               {
                  _loc31_ = new ZNPNode_RayResult();
               }
               else
               {
                  _loc31_ = ZNPNode_RayResult.var_72;
                  ZNPNode_RayResult.var_72 = _loc31_.next;
                  _loc31_.next = null;
               }
               null;
               _loc31_.var_74 = _loc23_;
               _loc28_ = _loc31_;
               if(_loc27_ == null)
               {
                  _loc28_.next = _loc30_.var_73;
                  _loc30_.var_73 = _loc28_;
               }
               else
               {
                  _loc28_.next = _loc27_.next;
                  _loc27_.next = _loc28_;
               }
               _loc24_ = true;
               _loc30_.name_2 = _loc24_;
               _loc30_.var_76 = _loc24_;
               _loc30_.length = _loc30_.length + 1;
               _loc28_;
            }
            if(_loc18_ > 0 && _loc18_ <= maxdist && param2)
            {
               _loc19_ = 0;
               _loc20_ = 0;
               _loc19_ = Number(var_195);
               _loc20_ = Number(var_201);
               _loc21_ = Number(_loc18_);
               _loc19_ = Number(Number(_loc19_ + var_146 * _loc21_));
               _loc20_ = Number(Number(_loc20_ + var_147 * _loc21_));
               _loc21_ = 1;
               _loc19_ = Number(_loc19_ - param1.var_99 * _loc21_);
               _loc20_ = Number(_loc20_ - param1.var_100 * _loc21_);
               _loc21_ = Number(Number(_loc19_ * _loc19_ + _loc20_ * _loc20_));
               _loc22_ = 1 / Math.sqrt(_loc21_);
               _loc32_ = _loc22_;
               _loc19_ = Number(_loc19_ * _loc32_);
               _loc20_ = Number(_loc20_ * _loc32_);
               _loc19_ = Number(-_loc19_);
               _loc20_ = Number(-_loc20_);
               _loc24_ = false;
               §§push(class_297);
               if(class_219.poolVec2 == null)
               {
                  _loc25_ = new Vec2();
               }
               else
               {
                  _loc25_ = class_219.poolVec2;
                  class_219.poolVec2 = _loc25_.var_72;
                  _loc25_.var_72 = null;
               }
               if(_loc25_.zpp_inner == null)
               {
                  _loc26_ = false;
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
                  _loc6_.var_109 = _loc26_;
                  _loc6_.x = _loc19_;
                  _loc6_.y = _loc20_;
                  _loc25_.zpp_inner = _loc6_;
                  _loc25_.zpp_inner.outer = _loc25_;
               }
               else
               {
                  _loc6_ = _loc25_.zpp_inner;
                  §§push(false);
                  if(_loc6_._validate != null)
                  {
                     _loc6_._validate();
                  }
                  if(_loc25_.zpp_inner.x == _loc19_)
                  {
                     §§pop();
                     _loc6_ = _loc25_.zpp_inner;
                     if(_loc6_._validate != null)
                     {
                        _loc6_._validate();
                     }
                     §§push(_loc25_.zpp_inner.y == _loc20_);
                  }
                  if(!§§pop())
                  {
                     _loc25_.zpp_inner.x = _loc19_;
                     _loc25_.zpp_inner.y = _loc20_;
                     _loc6_ = _loc25_.zpp_inner;
                     if(_loc6_._invalidate != null)
                     {
                        _loc6_._invalidate(_loc6_);
                     }
                  }
                  _loc25_;
               }
               _loc25_.zpp_inner.name_5 = _loc24_;
               _loc23_ = §§pop().method_193(_loc25_,_loc18_,true,param1.outer);
               _loc27_ = null;
               _loc28_ = param3.zpp_inner.name_4.var_73;
               while(_loc28_ != null)
               {
                  _loc29_ = _loc28_.var_74;
                  if(_loc23_.zpp_inner.var_285 < _loc29_.zpp_inner.var_285)
                  {
                     break;
                  }
                  _loc27_ = _loc28_;
                  _loc28_ = _loc28_.next;
               }
               _loc30_ = param3.zpp_inner.name_4;
               if(ZNPNode_RayResult.var_72 == null)
               {
                  _loc31_ = new ZNPNode_RayResult();
               }
               else
               {
                  _loc31_ = ZNPNode_RayResult.var_72;
                  ZNPNode_RayResult.var_72 = _loc31_.next;
                  _loc31_.next = null;
               }
               null;
               _loc31_.var_74 = _loc23_;
               _loc28_ = _loc31_;
               if(_loc27_ == null)
               {
                  _loc28_.next = _loc30_.var_73;
                  _loc30_.var_73 = _loc28_;
               }
               else
               {
                  _loc28_.next = _loc27_.next;
                  _loc27_.next = _loc28_;
               }
               _loc24_ = true;
               _loc30_.name_2 = _loc24_;
               _loc30_.var_76 = _loc24_;
               _loc30_.length = _loc30_.length + 1;
               _loc28_;
            }
         }
      }
      
      public final function method_355(param1:ZPP_Circle, param2:Boolean, param3:Number) : RayResult
      {
         var _loc4_:* = null as ZPP_Polygon;
         var _loc5_:* = NaN;
         var _loc6_:* = null as ZPP_Vec2;
         var _loc7_:* = null as ZPP_Vec2;
         var _loc8_:* = null as ZPP_Vec2;
         var _loc9_:* = null as ZPP_Vec2;
         var _loc10_:* = NaN;
         var _loc11_:* = null as ZPP_Vec2;
         var _loc12_:* = null as ZPP_Body;
         var _loc17_:Number = NaN;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         var _loc21_:* = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Boolean = false;
         var _loc24_:* = null as Vec2;
         var _loc25_:Boolean = false;
         var _loc26_:Number = NaN;
         if(param1.var_139)
         {
            if(param1.body != null)
            {
               param1.var_139 = false;
               if(param1.var_140)
               {
                  param1.var_140 = false;
                  if(param1.type == class_223.var_155)
                  {
                     _loc4_ = param1.name_6;
                     if(_loc4_.var_88.next.next == null)
                     {
                        _loc4_.var_82 = _loc4_.var_88.next.x;
                        _loc4_.var_81 = _loc4_.var_88.next.y;
                        null;
                     }
                     else if(_loc4_.var_88.next.next.next == null)
                     {
                        _loc4_.var_82 = _loc4_.var_88.next.x;
                        _loc4_.var_81 = _loc4_.var_88.next.y;
                        _loc5_ = 1;
                        _loc4_.var_82 = Number(_loc4_.var_82 + _loc4_.var_88.next.next.x * _loc5_);
                        _loc4_.var_81 = Number(_loc4_.var_81 + _loc4_.var_88.next.next.y * _loc5_);
                        _loc5_ = 0.5;
                        _loc4_.var_82 = _loc4_.var_82 * _loc5_;
                        _loc4_.var_81 = _loc4_.var_81 * _loc5_;
                     }
                     else
                     {
                        _loc4_.var_82 = 0;
                        _loc4_.var_81 = 0;
                        _loc5_ = 0;
                        _loc6_ = _loc4_.var_88.next;
                        _loc7_ = _loc6_;
                        _loc6_ = _loc6_.next;
                        _loc8_ = _loc6_;
                        _loc6_ = _loc6_.next;
                        while(_loc6_ != null)
                        {
                           _loc9_ = _loc6_;
                           _loc5_ = Number(Number(_loc5_ + _loc8_.x * (_loc9_.y - _loc7_.y)));
                           _loc10_ = Number(_loc9_.y * _loc8_.x - _loc9_.x * _loc8_.y);
                           _loc4_.var_82 = Number(_loc4_.var_82 + (_loc8_.x + _loc9_.x) * _loc10_);
                           _loc4_.var_81 = Number(_loc4_.var_81 + (_loc8_.y + _loc9_.y) * _loc10_);
                           _loc7_ = _loc8_;
                           _loc8_ = _loc9_;
                           _loc6_ = _loc6_.next;
                        }
                        _loc6_ = _loc4_.var_88.next;
                        _loc9_ = _loc6_;
                        _loc5_ = Number(Number(_loc5_ + _loc8_.x * (_loc9_.y - _loc7_.y)));
                        _loc10_ = Number(_loc9_.y * _loc8_.x - _loc9_.x * _loc8_.y);
                        _loc4_.var_82 = Number(_loc4_.var_82 + (_loc8_.x + _loc9_.x) * _loc10_);
                        _loc4_.var_81 = Number(_loc4_.var_81 + (_loc8_.y + _loc9_.y) * _loc10_);
                        _loc7_ = _loc8_;
                        _loc8_ = _loc9_;
                        _loc6_ = _loc6_.next;
                        _loc11_ = _loc6_;
                        _loc5_ = Number(Number(_loc5_ + _loc8_.x * (_loc11_.y - _loc7_.y)));
                        _loc10_ = Number(_loc11_.y * _loc8_.x - _loc11_.x * _loc8_.y);
                        _loc4_.var_82 = Number(_loc4_.var_82 + (_loc8_.x + _loc11_.x) * _loc10_);
                        _loc4_.var_81 = Number(_loc4_.var_81 + (_loc8_.y + _loc11_.y) * _loc10_);
                        _loc5_ = Number(1 / (3 * _loc5_));
                        _loc10_ = Number(_loc5_);
                        _loc4_.var_82 = _loc4_.var_82 * _loc10_;
                        _loc4_.var_81 = _loc4_.var_81 * _loc10_;
                     }
                  }
                  if(param1.var_115 != null)
                  {
                     param1.var_115.zpp_inner.x = param1.var_82;
                     param1.var_115.zpp_inner.y = param1.var_81;
                  }
               }
               _loc12_ = param1.body;
               if(_loc12_.var_113)
               {
                  _loc12_.var_113 = false;
                  _loc12_.var_84 = Number(Math.sin(_loc12_.var_93));
                  _loc12_.var_83 = Number(Math.cos(_loc12_.var_93));
                  null;
               }
               param1.var_99 = Number(param1.body.var_95 + (param1.body.var_83 * param1.var_82 - param1.body.var_84 * param1.var_81));
               param1.var_100 = Number(param1.body.var_96 + (Number(param1.var_82 * param1.body.var_84 + param1.var_81 * param1.body.var_83)));
            }
         }
         _loc5_ = 0;
         _loc10_ = 0;
         _loc5_ = Number(var_195 - param1.var_99);
         _loc10_ = Number(var_201 - param1.var_100);
         var _loc13_:Number = Number(var_146 * var_146 + var_147 * var_147);
         var _loc14_:Number = 2 * (_loc5_ * var_146 + _loc10_ * var_147);
         var _loc15_:Number = _loc5_ * _loc5_ + _loc10_ * _loc10_ - param1.radius * param1.radius;
         var _loc16_:Number = _loc14_ * _loc14_ - 4 * _loc13_ * _loc15_;
         if(_loc16_ == 0)
         {
            _loc17_ = -_loc14_ / 2 * _loc13_;
            if((!param2 || _loc15_ > 0) && _loc17_ > 0 && _loc17_ < param3 && _loc17_ <= maxdist)
            {
               _loc18_ = 0;
               _loc19_ = 0;
               _loc18_ = Number(var_195);
               _loc19_ = Number(var_201);
               _loc20_ = Number(_loc17_);
               _loc18_ = Number(Number(_loc18_ + var_146 * _loc20_));
               _loc19_ = Number(Number(_loc19_ + var_147 * _loc20_));
               _loc20_ = 1;
               _loc18_ = Number(_loc18_ - param1.var_99 * _loc20_);
               _loc19_ = Number(_loc19_ - param1.var_100 * _loc20_);
               _loc20_ = Number(Number(_loc18_ * _loc18_ + _loc19_ * _loc19_));
               _loc21_ = Number(1 / Math.sqrt(_loc20_));
               _loc22_ = _loc21_;
               _loc18_ = Number(_loc18_ * _loc22_);
               _loc19_ = Number(_loc19_ * _loc22_);
               if(_loc15_ <= 0)
               {
                  _loc18_ = Number(-_loc18_);
                  _loc19_ = Number(-_loc19_);
               }
               _loc23_ = false;
               §§push(class_297);
               if(class_219.poolVec2 == null)
               {
                  _loc24_ = new Vec2();
               }
               else
               {
                  _loc24_ = class_219.poolVec2;
                  class_219.poolVec2 = _loc24_.var_72;
                  _loc24_.var_72 = null;
               }
               if(_loc24_.zpp_inner == null)
               {
                  _loc25_ = false;
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
                  _loc6_.var_109 = _loc25_;
                  _loc6_.x = _loc18_;
                  _loc6_.y = _loc19_;
                  _loc24_.zpp_inner = _loc6_;
                  _loc24_.zpp_inner.outer = _loc24_;
               }
               else
               {
                  _loc6_ = _loc24_.zpp_inner;
                  §§push(false);
                  if(_loc6_._validate != null)
                  {
                     _loc6_._validate();
                  }
                  if(_loc24_.zpp_inner.x == _loc18_)
                  {
                     §§pop();
                     _loc6_ = _loc24_.zpp_inner;
                     if(_loc6_._validate != null)
                     {
                        _loc6_._validate();
                     }
                     §§push(_loc24_.zpp_inner.y == _loc19_);
                  }
                  if(!§§pop())
                  {
                     _loc24_.zpp_inner.x = _loc18_;
                     _loc24_.zpp_inner.y = _loc19_;
                     _loc6_ = _loc24_.zpp_inner;
                     if(_loc6_._invalidate != null)
                     {
                        _loc6_._invalidate(_loc6_);
                     }
                  }
                  _loc24_;
               }
               _loc24_.zpp_inner.name_5 = _loc23_;
               return §§pop().method_193(_loc24_,_loc17_,_loc15_ <= 0,param1.outer);
            }
            return null;
         }
         _loc16_ = Number(Math.sqrt(_loc16_));
         _loc13_ = 1 / (2 * _loc13_);
         _loc17_ = (-_loc14_ - _loc16_) * _loc13_;
         _loc18_ = Number((-_loc14_ + _loc16_) * _loc13_);
         if(_loc17_ > 0)
         {
            if(_loc17_ < param3 && _loc17_ <= maxdist)
            {
               _loc19_ = 0;
               _loc20_ = 0;
               _loc19_ = Number(var_195);
               _loc20_ = Number(var_201);
               _loc21_ = Number(_loc17_);
               _loc19_ = Number(Number(_loc19_ + var_146 * _loc21_));
               _loc20_ = Number(Number(_loc20_ + var_147 * _loc21_));
               _loc21_ = 1;
               _loc19_ = Number(_loc19_ - param1.var_99 * _loc21_);
               _loc20_ = Number(_loc20_ - param1.var_100 * _loc21_);
               _loc21_ = Number(Number(_loc19_ * _loc19_ + _loc20_ * _loc20_));
               _loc22_ = 1 / Math.sqrt(_loc21_);
               _loc26_ = _loc22_;
               _loc19_ = Number(_loc19_ * _loc26_);
               _loc20_ = Number(_loc20_ * _loc26_);
               _loc23_ = false;
               §§push(class_297);
               if(class_219.poolVec2 == null)
               {
                  _loc24_ = new Vec2();
               }
               else
               {
                  _loc24_ = class_219.poolVec2;
                  class_219.poolVec2 = _loc24_.var_72;
                  _loc24_.var_72 = null;
               }
               if(_loc24_.zpp_inner == null)
               {
                  _loc25_ = false;
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
                  _loc6_.var_109 = _loc25_;
                  _loc6_.x = _loc19_;
                  _loc6_.y = _loc20_;
                  _loc24_.zpp_inner = _loc6_;
                  _loc24_.zpp_inner.outer = _loc24_;
               }
               else
               {
                  _loc6_ = _loc24_.zpp_inner;
                  §§push(false);
                  if(_loc6_._validate != null)
                  {
                     _loc6_._validate();
                  }
                  if(_loc24_.zpp_inner.x == _loc19_)
                  {
                     §§pop();
                     _loc6_ = _loc24_.zpp_inner;
                     if(_loc6_._validate != null)
                     {
                        _loc6_._validate();
                     }
                     §§push(_loc24_.zpp_inner.y == _loc20_);
                  }
                  if(!§§pop())
                  {
                     _loc24_.zpp_inner.x = _loc19_;
                     _loc24_.zpp_inner.y = _loc20_;
                     _loc6_ = _loc24_.zpp_inner;
                     if(_loc6_._invalidate != null)
                     {
                        _loc6_._invalidate(_loc6_);
                     }
                  }
                  _loc24_;
               }
               _loc24_.zpp_inner.name_5 = _loc23_;
               return §§pop().method_193(_loc24_,_loc17_,false,param1.outer);
            }
            return null;
         }
         if(_loc18_ > 0 && param2)
         {
            if(_loc18_ < param3 && _loc18_ <= maxdist)
            {
               _loc19_ = 0;
               _loc20_ = 0;
               _loc19_ = Number(var_195);
               _loc20_ = Number(var_201);
               _loc21_ = Number(_loc18_);
               _loc19_ = Number(Number(_loc19_ + var_146 * _loc21_));
               _loc20_ = Number(Number(_loc20_ + var_147 * _loc21_));
               _loc21_ = 1;
               _loc19_ = Number(_loc19_ - param1.var_99 * _loc21_);
               _loc20_ = Number(_loc20_ - param1.var_100 * _loc21_);
               _loc21_ = Number(Number(_loc19_ * _loc19_ + _loc20_ * _loc20_));
               _loc22_ = 1 / Math.sqrt(_loc21_);
               _loc26_ = _loc22_;
               _loc19_ = Number(_loc19_ * _loc26_);
               _loc20_ = Number(_loc20_ * _loc26_);
               _loc19_ = Number(-_loc19_);
               _loc20_ = Number(-_loc20_);
               _loc23_ = false;
               §§push(class_297);
               if(class_219.poolVec2 == null)
               {
                  _loc24_ = new Vec2();
               }
               else
               {
                  _loc24_ = class_219.poolVec2;
                  class_219.poolVec2 = _loc24_.var_72;
                  _loc24_.var_72 = null;
               }
               if(_loc24_.zpp_inner == null)
               {
                  _loc25_ = false;
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
                  _loc6_.var_109 = _loc25_;
                  _loc6_.x = _loc19_;
                  _loc6_.y = _loc20_;
                  _loc24_.zpp_inner = _loc6_;
                  _loc24_.zpp_inner.outer = _loc24_;
               }
               else
               {
                  _loc6_ = _loc24_.zpp_inner;
                  §§push(false);
                  if(_loc6_._validate != null)
                  {
                     _loc6_._validate();
                  }
                  if(_loc24_.zpp_inner.x == _loc19_)
                  {
                     §§pop();
                     _loc6_ = _loc24_.zpp_inner;
                     if(_loc6_._validate != null)
                     {
                        _loc6_._validate();
                     }
                     §§push(_loc24_.zpp_inner.y == _loc20_);
                  }
                  if(!§§pop())
                  {
                     _loc24_.zpp_inner.x = _loc19_;
                     _loc24_.zpp_inner.y = _loc20_;
                     _loc6_ = _loc24_.zpp_inner;
                     if(_loc6_._invalidate != null)
                     {
                        _loc6_._invalidate(_loc6_);
                     }
                  }
                  _loc24_;
               }
               _loc24_.zpp_inner.name_5 = _loc23_;
               return §§pop().method_193(_loc24_,_loc18_,true,param1.outer);
            }
            return null;
         }
         return null;
      }
      
      public final function method_170(param1:ZPP_AABB) : Boolean
      {
         var _loc2_:Number = Number(var_663 * (var_195 - 0.5 * (param1.var_77 + param1.var_79)) + var_657 * (var_201 - 0.5 * (param1.var_78 + param1.var_80)));
         var _loc3_:Number = Number(var_675 * 0.5 * (param1.var_79 - param1.var_77) + var_636 * 0.5 * (param1.var_80 - param1.var_78));
         var _loc4_:Number = _loc2_;
         return (_loc4_ < 0?-_loc4_:_loc4_) < _loc3_;
      }
      
      public final function method_144(param1:ZPP_AABB) : Number
      {
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:Boolean = var_195 >= param1.var_77 && var_195 <= param1.var_79;
         var _loc3_:Boolean = var_201 >= param1.var_78 && var_201 <= param1.var_80;
         if(!!_loc2_ && _loc3_)
         {
            return 0;
         }
         _loc4_ = -1;
         if(!(var_146 >= 0 && var_195 >= param1.var_79))
         {
            if(!(var_146 <= 0 && var_195 <= param1.var_77))
            {
               if(!(var_147 >= 0 && var_201 >= param1.var_80))
               {
                  if(!(var_147 <= 0 && var_201 <= param1.var_78))
                  {
                     if(var_146 > 0)
                     {
                        _loc5_ = (param1.var_77 - var_195) * var_658;
                        if(_loc5_ >= 0 && _loc5_ <= maxdist)
                        {
                           _loc6_ = Number(var_201 + _loc5_ * var_147);
                           if(_loc6_ >= param1.var_78 && _loc6_ <= param1.var_80)
                           {
                              _loc4_ = Number(_loc5_);
                           }
                        }
                     }
                     else if(var_146 < 0)
                     {
                        _loc5_ = (param1.var_79 - var_195) * var_658;
                        if(_loc5_ >= 0 && _loc5_ <= maxdist)
                        {
                           _loc6_ = Number(var_201 + _loc5_ * var_147);
                           if(_loc6_ >= param1.var_78 && _loc6_ <= param1.var_80)
                           {
                              _loc4_ = Number(_loc5_);
                           }
                        }
                     }
                     if(var_147 > 0)
                     {
                        _loc5_ = (param1.var_78 - var_201) * var_661;
                        if(_loc5_ >= 0 && _loc5_ <= maxdist)
                        {
                           _loc6_ = Number(var_195 + _loc5_ * var_146);
                           if(_loc6_ >= param1.var_77 && _loc6_ <= param1.var_79)
                           {
                              _loc4_ = Number(_loc5_);
                           }
                        }
                     }
                     else if(var_147 < 0)
                     {
                        _loc5_ = (param1.var_80 - var_201) * var_661;
                        if(_loc5_ >= 0 && _loc5_ <= maxdist)
                        {
                           _loc6_ = Number(var_195 + _loc5_ * var_146);
                           if(_loc6_ >= param1.var_77 && _loc6_ <= param1.var_79)
                           {
                              _loc4_ = Number(_loc5_);
                           }
                        }
                     }
                  }
               }
            }
         }
         return _loc4_;
      }
   }
}
