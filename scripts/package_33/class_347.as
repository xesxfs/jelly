package package_33
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
   import flash.display.Graphics;
   import nape.constraint.Constraint;
   import nape.geom.Vec2;
   import nape.geom.Vec2Iterator;
   import nape.geom.Vec2List;
   import nape.geom.class_237;
   import nape.geom.class_260;
   import package_29.Body;
   import package_29.Compound;
   import package_31.class_197;
   import package_32.Shape;
   import package_36.class_258;
   import zpp_nape.geom.ZPP_AABB;
   import zpp_nape.geom.ZPP_GeomVert;
   import zpp_nape.geom.ZPP_Mat23;
   import zpp_nape.geom.ZPP_Vec2;
   import zpp_nape.util.ZNPNode_ZPP_Vec2;
   import zpp_nape.util.class_219;
   import zpp_nape.util.class_259;
   import zpp_nape.util.class_331;
   
   public final class class_347 extends Debug
   {
       
      
      public var var_85:class_331;
      
      public var thickness:Number;
      
      public function class_347(param1:int, param2:int, param3:int = 3355443)
      {
         thickness = 0;
         var_85 = null;
         super();
         var_85 = new class_331(param1,param2);
         var_85.outer_zn = this;
         zpp_inner = var_85;
         zpp_inner.outer = this;
         if(zpp_inner.var_575)
         {
            zpp_inner.var_725.method_229(param3);
         }
         else
         {
            zpp_inner.var_726.method_229(param3);
         }
         zpp_inner.var_234;
         thickness = 0.1;
      }
      
      override public function method_387(param1:Vec2, param2:Vec2, param3:int, param4:int = 3, param5:Number = 3.0) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:* = null as ZPP_Vec2;
         var _loc8_:Number = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = 0;
         var _loc14_:* = NaN;
         var _loc15_:* = null as Vec2;
         var _loc16_:Boolean = false;
         var _loc17_:* = null as Vec2;
         var _loc18_:Boolean = false;
         var _loc19_:* = null as Vec2;
         var _loc20_:* = null as Vec2;
         var _loc21_:int = 0;
         var _loc22_:* = null as ZPP_Vec2;
         if(param4 == 0)
         {
            method_253(param1,param2,param3);
         }
         else
         {
            _loc7_ = param2.zpp_inner;
            if(_loc7_._validate != null)
            {
               _loc7_._validate();
            }
            _loc7_ = param1.zpp_inner;
            §§push(param2.zpp_inner.x);
            if(_loc7_._validate != null)
            {
               _loc7_._validate();
            }
            _loc6_ = §§pop() - param1.zpp_inner.x;
            _loc7_ = param2.zpp_inner;
            if(_loc7_._validate != null)
            {
               _loc7_._validate();
            }
            _loc7_ = param1.zpp_inner;
            §§push(param2.zpp_inner.y);
            if(_loc7_._validate != null)
            {
               _loc7_._validate();
            }
            _loc8_ = §§pop() - param1.zpp_inner.y;
            _loc9_ = Number(1 / (param4 * 4));
            _loc6_ = _loc6_ * _loc9_;
            _loc8_ = _loc8_ * _loc9_;
            _loc9_ = 0;
            _loc10_ = 0;
            _loc9_ = Number(_loc6_);
            _loc10_ = Number(_loc8_);
            if(Number(_loc9_ * _loc9_ + _loc10_ * _loc10_) < 0.1)
            {
               return;
            }
            _loc11_ = Number(Number(_loc9_ * _loc9_ + _loc10_ * _loc10_));
            sf32(_loc11_,0);
            _loc13_ = 1597463007 - (li32(0) >> 1);
            si32(1597463007 - (li32(0) >> 1),0);
            _loc14_ = Number(lf32(0));
            _loc12_ = Number(lf32(0) * (1.5 - 0.5 * _loc11_ * _loc14_ * _loc14_));
            _loc14_ = Number(Number(lf32(0) * (1.5 - 0.5 * _loc11_ * _loc14_ * _loc14_)));
            _loc9_ = Number(_loc9_ * _loc14_);
            _loc10_ = Number(_loc10_ * _loc14_);
            _loc11_ = Number(_loc9_);
            _loc9_ = Number(-_loc10_);
            _loc10_ = Number(_loc11_);
            _loc11_ = Number(param5 * 2);
            _loc9_ = Number(_loc9_ * _loc11_);
            _loc10_ = Number(_loc10_ * _loc11_);
            _loc16_ = false;
            _loc7_ = param1.zpp_inner;
            if(_loc7_._validate != null)
            {
               _loc7_._validate();
            }
            _loc11_ = Number(param1.zpp_inner.x);
            _loc7_ = param1.zpp_inner;
            if(_loc7_._validate != null)
            {
               _loc7_._validate();
            }
            _loc12_ = Number(param1.zpp_inner.y);
            if(class_219.poolVec2 == null)
            {
               _loc17_ = new Vec2();
            }
            else
            {
               _loc17_ = class_219.poolVec2;
               class_219.poolVec2 = _loc17_.var_72;
               _loc17_.var_72 = null;
            }
            if(_loc17_.zpp_inner == null)
            {
               _loc18_ = false;
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
               _loc7_.var_109 = _loc18_;
               _loc7_.x = _loc11_;
               _loc7_.y = _loc12_;
               _loc17_.zpp_inner = _loc7_;
               _loc17_.zpp_inner.outer = _loc17_;
            }
            else
            {
               _loc7_ = _loc17_.zpp_inner;
               §§push(false);
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               if(_loc17_.zpp_inner.x == _loc11_)
               {
                  §§pop();
                  _loc7_ = _loc17_.zpp_inner;
                  if(_loc7_._validate != null)
                  {
                     _loc7_._validate();
                  }
                  §§push(_loc17_.zpp_inner.y == _loc12_);
               }
               if(!§§pop())
               {
                  _loc17_.zpp_inner.x = _loc11_;
                  _loc17_.zpp_inner.y = _loc12_;
                  _loc7_ = _loc17_.zpp_inner;
                  if(_loc7_._invalidate != null)
                  {
                     _loc7_._invalidate(_loc7_);
                  }
               }
               _loc17_;
            }
            _loc17_.zpp_inner.name_5 = _loc16_;
            _loc15_ = _loc17_;
            _loc11_ = 0;
            _loc12_ = 0;
            _loc16_ = false;
            if(class_219.poolVec2 == null)
            {
               _loc19_ = new Vec2();
            }
            else
            {
               _loc19_ = class_219.poolVec2;
               class_219.poolVec2 = _loc19_.var_72;
               _loc19_.var_72 = null;
            }
            if(_loc19_.zpp_inner == null)
            {
               _loc18_ = false;
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
               _loc7_.var_109 = _loc18_;
               _loc7_.x = _loc11_;
               _loc7_.y = _loc12_;
               _loc19_.zpp_inner = _loc7_;
               _loc19_.zpp_inner.outer = _loc19_;
            }
            else
            {
               _loc7_ = _loc19_.zpp_inner;
               §§push(false);
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               if(_loc19_.zpp_inner.x == _loc11_)
               {
                  §§pop();
                  _loc7_ = _loc19_.zpp_inner;
                  if(_loc7_._validate != null)
                  {
                     _loc7_._validate();
                  }
                  §§push(_loc19_.zpp_inner.y == _loc12_);
               }
               if(!§§pop())
               {
                  _loc19_.zpp_inner.x = _loc11_;
                  _loc19_.zpp_inner.y = _loc12_;
                  _loc7_ = _loc19_.zpp_inner;
                  if(_loc7_._invalidate != null)
                  {
                     _loc7_._invalidate(_loc7_);
                  }
               }
               _loc19_;
            }
            _loc19_.zpp_inner.name_5 = _loc16_;
            _loc17_ = _loc19_;
            _loc11_ = 0;
            _loc12_ = 0;
            _loc16_ = false;
            if(class_219.poolVec2 == null)
            {
               _loc20_ = new Vec2();
            }
            else
            {
               _loc20_ = class_219.poolVec2;
               class_219.poolVec2 = _loc20_.var_72;
               _loc20_.var_72 = null;
            }
            if(_loc20_.zpp_inner == null)
            {
               _loc18_ = false;
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
               _loc7_.var_109 = _loc18_;
               _loc7_.x = _loc11_;
               _loc7_.y = _loc12_;
               _loc20_.zpp_inner = _loc7_;
               _loc20_.zpp_inner.outer = _loc20_;
            }
            else
            {
               _loc7_ = _loc20_.zpp_inner;
               §§push(false);
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               if(_loc20_.zpp_inner.x == _loc11_)
               {
                  §§pop();
                  _loc7_ = _loc20_.zpp_inner;
                  if(_loc7_._validate != null)
                  {
                     _loc7_._validate();
                  }
                  §§push(_loc20_.zpp_inner.y == _loc12_);
               }
               if(!§§pop())
               {
                  _loc20_.zpp_inner.x = _loc11_;
                  _loc20_.zpp_inner.y = _loc12_;
                  _loc7_ = _loc20_.zpp_inner;
                  if(_loc7_._invalidate != null)
                  {
                     _loc7_._invalidate(_loc7_);
                  }
               }
               _loc20_;
            }
            _loc20_.zpp_inner.name_5 = _loc16_;
            _loc19_ = _loc20_;
            _loc13_ = 0;
            while(_loc13_ < param4)
            {
               _loc13_++;
               _loc21_ = _loc13_;
               _loc7_ = _loc15_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               _loc11_ = Number(Number(Number(_loc15_.zpp_inner.x + _loc6_) + _loc9_));
               _loc7_ = _loc17_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               if(_loc17_.zpp_inner.x != _loc11_)
               {
                  _loc17_.zpp_inner.x = _loc11_;
                  _loc7_ = _loc17_.zpp_inner;
                  if(_loc7_._invalidate != null)
                  {
                     _loc7_._invalidate(_loc7_);
                  }
               }
               _loc7_ = _loc17_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               _loc17_.zpp_inner.x;
               _loc7_ = _loc15_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               _loc11_ = Number(Number(Number(_loc15_.zpp_inner.y + _loc8_) + _loc10_));
               _loc7_ = _loc17_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               if(_loc17_.zpp_inner.y != _loc11_)
               {
                  _loc17_.zpp_inner.y = _loc11_;
                  _loc7_ = _loc17_.zpp_inner;
                  if(_loc7_._invalidate != null)
                  {
                     _loc7_._invalidate(_loc7_);
                  }
               }
               _loc7_ = _loc17_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               _loc17_.zpp_inner.y;
               _loc7_ = _loc15_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               _loc11_ = Number(Number(_loc15_.zpp_inner.x + _loc6_ * 2));
               _loc7_ = _loc19_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               if(_loc19_.zpp_inner.x != _loc11_)
               {
                  _loc19_.zpp_inner.x = _loc11_;
                  _loc7_ = _loc19_.zpp_inner;
                  if(_loc7_._invalidate != null)
                  {
                     _loc7_._invalidate(_loc7_);
                  }
               }
               _loc7_ = _loc19_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               _loc19_.zpp_inner.x;
               _loc7_ = _loc15_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               _loc11_ = Number(Number(_loc15_.zpp_inner.y + _loc8_ * 2));
               _loc7_ = _loc19_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               if(_loc19_.zpp_inner.y != _loc11_)
               {
                  _loc19_.zpp_inner.y = _loc11_;
                  _loc7_ = _loc19_.zpp_inner;
                  if(_loc7_._invalidate != null)
                  {
                     _loc7_._invalidate(_loc7_);
                  }
               }
               _loc7_ = _loc19_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               _loc19_.zpp_inner.y;
               method_171(_loc15_,_loc17_,_loc19_,param3);
               _loc7_ = _loc19_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               _loc11_ = Number(_loc19_.zpp_inner.x);
               _loc7_ = _loc15_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               if(_loc15_.zpp_inner.x != _loc11_)
               {
                  _loc15_.zpp_inner.x = _loc11_;
                  _loc7_ = _loc15_.zpp_inner;
                  if(_loc7_._invalidate != null)
                  {
                     _loc7_._invalidate(_loc7_);
                  }
               }
               _loc7_ = _loc15_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               _loc15_.zpp_inner.x;
               _loc7_ = _loc19_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               _loc11_ = Number(_loc19_.zpp_inner.y);
               _loc7_ = _loc15_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               if(_loc15_.zpp_inner.y != _loc11_)
               {
                  _loc15_.zpp_inner.y = _loc11_;
                  _loc7_ = _loc15_.zpp_inner;
                  if(_loc7_._invalidate != null)
                  {
                     _loc7_._invalidate(_loc7_);
                  }
               }
               _loc7_ = _loc15_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               _loc15_.zpp_inner.y;
               _loc7_ = _loc15_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               _loc11_ = Number(_loc15_.zpp_inner.x + _loc6_ - _loc9_);
               _loc7_ = _loc17_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               if(_loc17_.zpp_inner.x != _loc11_)
               {
                  _loc17_.zpp_inner.x = _loc11_;
                  _loc7_ = _loc17_.zpp_inner;
                  if(_loc7_._invalidate != null)
                  {
                     _loc7_._invalidate(_loc7_);
                  }
               }
               _loc7_ = _loc17_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               _loc17_.zpp_inner.x;
               _loc7_ = _loc15_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               _loc11_ = Number(_loc15_.zpp_inner.y + _loc8_ - _loc10_);
               _loc7_ = _loc17_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               if(_loc17_.zpp_inner.y != _loc11_)
               {
                  _loc17_.zpp_inner.y = _loc11_;
                  _loc7_ = _loc17_.zpp_inner;
                  if(_loc7_._invalidate != null)
                  {
                     _loc7_._invalidate(_loc7_);
                  }
               }
               _loc7_ = _loc17_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               _loc17_.zpp_inner.y;
               _loc7_ = _loc15_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               _loc11_ = Number(Number(_loc15_.zpp_inner.x + _loc6_ * 2));
               _loc7_ = _loc19_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               if(_loc19_.zpp_inner.x != _loc11_)
               {
                  _loc19_.zpp_inner.x = _loc11_;
                  _loc7_ = _loc19_.zpp_inner;
                  if(_loc7_._invalidate != null)
                  {
                     _loc7_._invalidate(_loc7_);
                  }
               }
               _loc7_ = _loc19_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               _loc19_.zpp_inner.x;
               _loc7_ = _loc15_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               _loc11_ = Number(Number(_loc15_.zpp_inner.y + _loc8_ * 2));
               _loc7_ = _loc19_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               if(_loc19_.zpp_inner.y != _loc11_)
               {
                  _loc19_.zpp_inner.y = _loc11_;
                  _loc7_ = _loc19_.zpp_inner;
                  if(_loc7_._invalidate != null)
                  {
                     _loc7_._invalidate(_loc7_);
                  }
               }
               _loc7_ = _loc19_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               _loc19_.zpp_inner.y;
               method_171(_loc15_,_loc17_,_loc19_,param3);
               _loc7_ = _loc19_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               _loc11_ = Number(_loc19_.zpp_inner.x);
               _loc7_ = _loc15_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               if(_loc15_.zpp_inner.x != _loc11_)
               {
                  _loc15_.zpp_inner.x = _loc11_;
                  _loc7_ = _loc15_.zpp_inner;
                  if(_loc7_._invalidate != null)
                  {
                     _loc7_._invalidate(_loc7_);
                  }
               }
               _loc7_ = _loc15_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               _loc15_.zpp_inner.x;
               _loc7_ = _loc19_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               _loc11_ = Number(_loc19_.zpp_inner.y);
               _loc7_ = _loc15_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               if(_loc15_.zpp_inner.y != _loc11_)
               {
                  _loc15_.zpp_inner.y = _loc11_;
                  _loc7_ = _loc15_.zpp_inner;
                  if(_loc7_._invalidate != null)
                  {
                     _loc7_._invalidate(_loc7_);
                  }
               }
               _loc7_ = _loc15_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               _loc15_.zpp_inner.y;
            }
            _loc7_ = _loc15_.zpp_inner;
            _loc15_.zpp_inner.outer = null;
            _loc15_.zpp_inner = null;
            _loc20_ = _loc15_;
            _loc20_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc20_;
            _loc22_ = _loc7_;
            if(_loc22_.outer != null)
            {
               _loc22_.outer.zpp_inner = null;
               _loc22_.outer = null;
            }
            _loc22_.var_103 = null;
            _loc22_._validate = null;
            _loc22_._invalidate = null;
            _loc22_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc22_;
            _loc7_ = _loc17_.zpp_inner;
            _loc17_.zpp_inner.outer = null;
            _loc17_.zpp_inner = null;
            _loc20_ = _loc17_;
            _loc20_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc20_;
            _loc22_ = _loc7_;
            if(_loc22_.outer != null)
            {
               _loc22_.outer.zpp_inner = null;
               _loc22_.outer = null;
            }
            _loc22_.var_103 = null;
            _loc22_._validate = null;
            _loc22_._invalidate = null;
            _loc22_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc22_;
            _loc7_ = _loc19_.zpp_inner;
            _loc19_.zpp_inner.outer = null;
            _loc19_.zpp_inner = null;
            _loc20_ = _loc19_;
            _loc20_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc20_;
            _loc22_ = _loc7_;
            if(_loc22_.outer != null)
            {
               _loc22_.outer.zpp_inner = null;
               _loc22_.outer = null;
            }
            _loc22_.var_103 = null;
            _loc22_._validate = null;
            _loc22_._invalidate = null;
            _loc22_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc22_;
         }
         if(param1.zpp_inner.name_5)
         {
            _loc7_ = param1.zpp_inner;
            param1.zpp_inner.outer = null;
            param1.zpp_inner = null;
            _loc15_ = param1;
            _loc15_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc15_;
            _loc22_ = _loc7_;
            if(_loc22_.outer != null)
            {
               _loc22_.outer.zpp_inner = null;
               _loc22_.outer = null;
            }
            _loc22_.var_103 = null;
            _loc22_._validate = null;
            _loc22_._invalidate = null;
            _loc22_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc22_;
            true;
         }
         else
         {
            false;
         }
         if(param2.zpp_inner.name_5)
         {
            _loc7_ = param2.zpp_inner;
            param2.zpp_inner.outer = null;
            param2.zpp_inner = null;
            _loc15_ = param2;
            _loc15_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc15_;
            _loc22_ = _loc7_;
            if(_loc22_.outer != null)
            {
               _loc22_.outer.zpp_inner = null;
               _loc22_.outer = null;
            }
            _loc22_.var_103 = null;
            _loc22_._validate = null;
            _loc22_._invalidate = null;
            _loc22_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc22_;
         }
         else
         {
            false;
         }
      }
      
      override public function method_435(param1:*, param2:int) : void
      {
         var _loc6_:* = null as Array;
         var _loc7_:int = 0;
         var _loc8_:* = null;
         var _loc9_:* = null as Vec2;
         var _loc10_:Boolean = false;
         var _loc11_:Number = NaN;
         var _loc12_:* = null as ZPP_Vec2;
         var _loc13_:Number = NaN;
         var _loc14_:* = null as Vec2;
         var _loc15_:Boolean = false;
         var _loc16_:* = null as Vector.<Vec2>;
         var _loc17_:* = null as Vec2;
         var _loc18_:* = null as Vec2List;
         var _loc19_:* = null as Vec2Iterator;
         var _loc20_:* = null as class_260;
         var _loc21_:* = null as ZPP_GeomVert;
         var _loc22_:* = null as ZPP_GeomVert;
         var _loc23_:* = null as ZPP_Vec2;
         var _loc24_:* = null as Vec2;
         var _loc25_:* = null as class_259;
         var _loc26_:* = null as ZNPNode_ZPP_Vec2;
         var _loc27_:* = null as ZNPNode_ZPP_Vec2;
         var _loc28_:* = null as ZPP_Vec2;
         var _loc3_:Graphics = var_85.graphics;
         _loc3_.lineStyle(thickness,param2 & 16777215,1);
         var _loc4_:* = null;
         var _loc5_:Boolean = true;
         if(zpp_inner.var_235)
         {
            if(param1 is Array)
            {
               _loc6_ = param1;
               _loc7_ = 0;
               while(_loc7_ < int(_loc6_.length))
               {
                  _loc8_ = _loc6_[_loc7_];
                  _loc7_++;
                  _loc9_ = _loc8_;
                  if(_loc5_)
                  {
                     _loc10_ = false;
                     _loc12_ = _loc9_.zpp_inner;
                     if(_loc12_._validate != null)
                     {
                        _loc12_._validate();
                     }
                     _loc11_ = _loc9_.zpp_inner.x;
                     _loc12_ = _loc9_.zpp_inner;
                     if(_loc12_._validate != null)
                     {
                        _loc12_._validate();
                     }
                     _loc13_ = _loc9_.zpp_inner.y;
                     if(class_219.poolVec2 == null)
                     {
                        _loc14_ = new Vec2();
                     }
                     else
                     {
                        _loc14_ = class_219.poolVec2;
                        class_219.poolVec2 = _loc14_.var_72;
                        _loc14_.var_72 = null;
                     }
                     if(_loc14_.zpp_inner == null)
                     {
                        _loc15_ = false;
                        if(ZPP_Vec2.var_72 == null)
                        {
                           _loc12_ = new ZPP_Vec2();
                        }
                        else
                        {
                           _loc12_ = ZPP_Vec2.var_72;
                           ZPP_Vec2.var_72 = _loc12_.next;
                           _loc12_.next = null;
                        }
                        _loc12_.name_5 = false;
                        _loc12_.var_109 = _loc15_;
                        _loc12_.x = _loc11_;
                        _loc12_.y = _loc13_;
                        _loc14_.zpp_inner = _loc12_;
                        _loc14_.zpp_inner.outer = _loc14_;
                     }
                     else
                     {
                        _loc12_ = _loc14_.zpp_inner;
                        §§push(false);
                        if(_loc12_._validate != null)
                        {
                           _loc12_._validate();
                        }
                        if(_loc14_.zpp_inner.x == _loc11_)
                        {
                           §§pop();
                           _loc12_ = _loc14_.zpp_inner;
                           if(_loc12_._validate != null)
                           {
                              _loc12_._validate();
                           }
                           §§push(_loc14_.zpp_inner.y == _loc13_);
                        }
                        if(!§§pop())
                        {
                           _loc14_.zpp_inner.x = _loc11_;
                           _loc14_.zpp_inner.y = _loc13_;
                           _loc12_ = _loc14_.zpp_inner;
                           if(_loc12_._invalidate != null)
                           {
                              _loc12_._invalidate(_loc12_);
                           }
                        }
                        _loc14_;
                     }
                     _loc14_.zpp_inner.name_5 = _loc10_;
                     _loc4_ = _loc14_;
                     _loc12_ = _loc9_.zpp_inner;
                     §§push(_loc3_);
                     if(_loc12_._validate != null)
                     {
                        _loc12_._validate();
                     }
                     _loc12_ = _loc9_.zpp_inner;
                     §§push(_loc9_.zpp_inner.x);
                     if(_loc12_._validate != null)
                     {
                        _loc12_._validate();
                     }
                     §§pop().moveTo(§§pop(),_loc9_.zpp_inner.y);
                  }
                  else
                  {
                     _loc12_ = _loc9_.zpp_inner;
                     §§push(_loc3_);
                     if(_loc12_._validate != null)
                     {
                        _loc12_._validate();
                     }
                     _loc12_ = _loc9_.zpp_inner;
                     §§push(_loc9_.zpp_inner.x);
                     if(_loc12_._validate != null)
                     {
                        _loc12_._validate();
                     }
                     §§pop().lineTo(§§pop(),_loc9_.zpp_inner.y);
                  }
                  _loc5_ = false;
               }
            }
            else if(param1 is class_258.var_373)
            {
               _loc16_ = param1;
               _loc7_ = 0;
               while(_loc7_ < int(_loc16_.length))
               {
                  _loc9_ = _loc16_[_loc7_];
                  _loc7_++;
                  _loc14_ = _loc9_;
                  if(_loc5_)
                  {
                     _loc10_ = false;
                     _loc12_ = _loc14_.zpp_inner;
                     if(_loc12_._validate != null)
                     {
                        _loc12_._validate();
                     }
                     _loc11_ = _loc14_.zpp_inner.x;
                     _loc12_ = _loc14_.zpp_inner;
                     if(_loc12_._validate != null)
                     {
                        _loc12_._validate();
                     }
                     _loc13_ = _loc14_.zpp_inner.y;
                     if(class_219.poolVec2 == null)
                     {
                        _loc17_ = new Vec2();
                     }
                     else
                     {
                        _loc17_ = class_219.poolVec2;
                        class_219.poolVec2 = _loc17_.var_72;
                        _loc17_.var_72 = null;
                     }
                     if(_loc17_.zpp_inner == null)
                     {
                        _loc15_ = false;
                        if(ZPP_Vec2.var_72 == null)
                        {
                           _loc12_ = new ZPP_Vec2();
                        }
                        else
                        {
                           _loc12_ = ZPP_Vec2.var_72;
                           ZPP_Vec2.var_72 = _loc12_.next;
                           _loc12_.next = null;
                        }
                        _loc12_.name_5 = false;
                        _loc12_.var_109 = _loc15_;
                        _loc12_.x = _loc11_;
                        _loc12_.y = _loc13_;
                        _loc17_.zpp_inner = _loc12_;
                        _loc17_.zpp_inner.outer = _loc17_;
                     }
                     else
                     {
                        _loc12_ = _loc17_.zpp_inner;
                        §§push(false);
                        if(_loc12_._validate != null)
                        {
                           _loc12_._validate();
                        }
                        if(_loc17_.zpp_inner.x == _loc11_)
                        {
                           §§pop();
                           _loc12_ = _loc17_.zpp_inner;
                           if(_loc12_._validate != null)
                           {
                              _loc12_._validate();
                           }
                           §§push(_loc17_.zpp_inner.y == _loc13_);
                        }
                        if(!§§pop())
                        {
                           _loc17_.zpp_inner.x = _loc11_;
                           _loc17_.zpp_inner.y = _loc13_;
                           _loc12_ = _loc17_.zpp_inner;
                           if(_loc12_._invalidate != null)
                           {
                              _loc12_._invalidate(_loc12_);
                           }
                        }
                        _loc17_;
                     }
                     _loc17_.zpp_inner.name_5 = _loc10_;
                     _loc4_ = _loc17_;
                     _loc12_ = _loc14_.zpp_inner;
                     §§push(_loc3_);
                     if(_loc12_._validate != null)
                     {
                        _loc12_._validate();
                     }
                     _loc12_ = _loc14_.zpp_inner;
                     §§push(_loc14_.zpp_inner.x);
                     if(_loc12_._validate != null)
                     {
                        _loc12_._validate();
                     }
                     §§pop().moveTo(§§pop(),_loc14_.zpp_inner.y);
                  }
                  else
                  {
                     _loc12_ = _loc14_.zpp_inner;
                     §§push(_loc3_);
                     if(_loc12_._validate != null)
                     {
                        _loc12_._validate();
                     }
                     _loc12_ = _loc14_.zpp_inner;
                     §§push(_loc14_.zpp_inner.x);
                     if(_loc12_._validate != null)
                     {
                        _loc12_._validate();
                     }
                     §§pop().lineTo(§§pop(),_loc14_.zpp_inner.y);
                  }
                  _loc5_ = false;
               }
            }
            else if(param1 is Vec2List)
            {
               _loc18_ = param1;
               _loc19_ = _loc18_.iterator();
               _loc19_.zpp_inner.zpp_inner.method_104();
               _loc7_ = _loc19_.zpp_inner.method_108();
               _loc19_.var_98 = true;
               if(_loc19_.var_90 < _loc7_)
               {
                  §§push(true);
               }
               else
               {
                  _loc19_.var_106 = Vec2Iterator.var_72;
                  Vec2Iterator.var_72 = _loc19_;
                  _loc19_.zpp_inner = null;
                  §§push(false);
               }
            }
            else if(param1 is class_260)
            {
               _loc20_ = param1;
               _loc21_ = _loc20_.zpp_inner.vertices;
               if(_loc21_ != null)
               {
                  _loc22_ = _loc21_;
                  do
                  {
                     _loc11_ = _loc22_.x;
                     _loc13_ = _loc22_.y;
                     _loc10_ = false;
                     if(class_219.poolVec2 == null)
                     {
                        _loc14_ = new Vec2();
                     }
                     else
                     {
                        _loc14_ = class_219.poolVec2;
                        class_219.poolVec2 = _loc14_.var_72;
                        _loc14_.var_72 = null;
                     }
                     if(_loc14_.zpp_inner == null)
                     {
                        _loc15_ = false;
                        if(ZPP_Vec2.var_72 == null)
                        {
                           _loc12_ = new ZPP_Vec2();
                        }
                        else
                        {
                           _loc12_ = ZPP_Vec2.var_72;
                           ZPP_Vec2.var_72 = _loc12_.next;
                           _loc12_.next = null;
                        }
                        _loc12_.name_5 = false;
                        _loc12_.var_109 = _loc15_;
                        _loc12_.x = _loc11_;
                        _loc12_.y = _loc13_;
                        _loc14_.zpp_inner = _loc12_;
                        _loc14_.zpp_inner.outer = _loc14_;
                     }
                     else
                     {
                        _loc12_ = _loc14_.zpp_inner;
                        §§push(false);
                        if(_loc12_._validate != null)
                        {
                           _loc12_._validate();
                        }
                        if(_loc14_.zpp_inner.x == _loc11_)
                        {
                           §§pop();
                           _loc12_ = _loc14_.zpp_inner;
                           if(_loc12_._validate != null)
                           {
                              _loc12_._validate();
                           }
                           §§push(_loc14_.zpp_inner.y == _loc13_);
                        }
                        if(!§§pop())
                        {
                           _loc14_.zpp_inner.x = _loc11_;
                           _loc14_.zpp_inner.y = _loc13_;
                           _loc12_ = _loc14_.zpp_inner;
                           if(_loc12_._invalidate != null)
                           {
                              _loc12_._invalidate(_loc12_);
                           }
                        }
                        _loc14_;
                     }
                     _loc14_.zpp_inner.name_5 = _loc10_;
                     _loc9_ = _loc14_;
                     _loc22_ = _loc22_.next;
                     if(_loc5_)
                     {
                        _loc10_ = false;
                        _loc12_ = _loc9_.zpp_inner;
                        if(_loc12_._validate != null)
                        {
                           _loc12_._validate();
                        }
                        _loc11_ = _loc9_.zpp_inner.x;
                        _loc12_ = _loc9_.zpp_inner;
                        if(_loc12_._validate != null)
                        {
                           _loc12_._validate();
                        }
                        _loc13_ = _loc9_.zpp_inner.y;
                        if(class_219.poolVec2 == null)
                        {
                           _loc14_ = new Vec2();
                        }
                        else
                        {
                           _loc14_ = class_219.poolVec2;
                           class_219.poolVec2 = _loc14_.var_72;
                           _loc14_.var_72 = null;
                        }
                        if(_loc14_.zpp_inner == null)
                        {
                           _loc15_ = false;
                           if(ZPP_Vec2.var_72 == null)
                           {
                              _loc12_ = new ZPP_Vec2();
                           }
                           else
                           {
                              _loc12_ = ZPP_Vec2.var_72;
                              ZPP_Vec2.var_72 = _loc12_.next;
                              _loc12_.next = null;
                           }
                           _loc12_.name_5 = false;
                           _loc12_.var_109 = _loc15_;
                           _loc12_.x = _loc11_;
                           _loc12_.y = _loc13_;
                           _loc14_.zpp_inner = _loc12_;
                           _loc14_.zpp_inner.outer = _loc14_;
                        }
                        else
                        {
                           _loc12_ = _loc14_.zpp_inner;
                           §§push(false);
                           if(_loc12_._validate != null)
                           {
                              _loc12_._validate();
                           }
                           if(_loc14_.zpp_inner.x == _loc11_)
                           {
                              §§pop();
                              _loc12_ = _loc14_.zpp_inner;
                              if(_loc12_._validate != null)
                              {
                                 _loc12_._validate();
                              }
                              §§push(_loc14_.zpp_inner.y == _loc13_);
                           }
                           if(!§§pop())
                           {
                              _loc14_.zpp_inner.x = _loc11_;
                              _loc14_.zpp_inner.y = _loc13_;
                              _loc12_ = _loc14_.zpp_inner;
                              if(_loc12_._invalidate != null)
                              {
                                 _loc12_._invalidate(_loc12_);
                              }
                           }
                           _loc14_;
                        }
                        _loc14_.zpp_inner.name_5 = _loc10_;
                        _loc4_ = _loc14_;
                        _loc12_ = _loc9_.zpp_inner;
                        §§push(_loc3_);
                        if(_loc12_._validate != null)
                        {
                           _loc12_._validate();
                        }
                        _loc12_ = _loc9_.zpp_inner;
                        §§push(_loc9_.zpp_inner.x);
                        if(_loc12_._validate != null)
                        {
                           _loc12_._validate();
                        }
                        §§pop().moveTo(§§pop(),_loc9_.zpp_inner.y);
                     }
                     else
                     {
                        _loc12_ = _loc9_.zpp_inner;
                        §§push(_loc3_);
                        if(_loc12_._validate != null)
                        {
                           _loc12_._validate();
                        }
                        _loc12_ = _loc9_.zpp_inner;
                        §§push(_loc9_.zpp_inner.x);
                        if(_loc12_._validate != null)
                        {
                           _loc12_._validate();
                        }
                        §§pop().lineTo(§§pop(),_loc9_.zpp_inner.y);
                     }
                     _loc5_ = false;
                     _loc12_ = _loc9_.zpp_inner;
                     _loc9_.zpp_inner.outer = null;
                     _loc9_.zpp_inner = null;
                     _loc14_ = _loc9_;
                     _loc14_.var_72 = class_219.poolVec2;
                     class_219.poolVec2 = _loc14_;
                     _loc23_ = _loc12_;
                     if(_loc23_.outer != null)
                     {
                        _loc23_.outer.zpp_inner = null;
                        _loc23_.outer = null;
                     }
                     _loc23_.var_103 = null;
                     _loc23_._validate = null;
                     _loc23_._invalidate = null;
                     _loc23_.next = ZPP_Vec2.var_72;
                     ZPP_Vec2.var_72 = _loc23_;
                  }
                  while(_loc22_ != _loc21_);
                  
               }
            }
            _loc12_ = _loc4_.zpp_inner;
            §§push(_loc3_);
            if(_loc12_._validate != null)
            {
               _loc12_._validate();
            }
            _loc12_ = _loc4_.zpp_inner;
            §§push(_loc4_.zpp_inner.x);
            if(_loc12_._validate != null)
            {
               _loc12_._validate();
            }
            §§pop().lineTo(§§pop(),_loc4_.zpp_inner.y);
            _loc12_ = _loc4_.zpp_inner;
            _loc4_.zpp_inner.outer = null;
            _loc4_.zpp_inner = null;
            _loc9_ = _loc4_;
            _loc9_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc9_;
            _loc23_ = _loc12_;
            if(_loc23_.outer != null)
            {
               _loc23_.outer.zpp_inner = null;
               _loc23_.outer = null;
            }
            _loc23_.var_103 = null;
            _loc23_._validate = null;
            _loc23_._invalidate = null;
            _loc23_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc23_;
         }
         else
         {
            if(param1 is Array)
            {
               _loc6_ = param1;
               _loc7_ = 0;
               while(_loc7_ < int(_loc6_.length))
               {
                  _loc8_ = _loc6_[_loc7_];
                  _loc7_++;
                  _loc9_ = _loc8_;
                  _loc14_ = zpp_inner.var_125.outer.transform(_loc9_);
                  if(_loc5_)
                  {
                     _loc4_ = _loc14_;
                     _loc12_ = _loc14_.zpp_inner;
                     §§push(_loc3_);
                     if(_loc12_._validate != null)
                     {
                        _loc12_._validate();
                     }
                     _loc12_ = _loc14_.zpp_inner;
                     §§push(_loc14_.zpp_inner.x);
                     if(_loc12_._validate != null)
                     {
                        _loc12_._validate();
                     }
                     §§pop().moveTo(§§pop(),_loc14_.zpp_inner.y);
                  }
                  else
                  {
                     _loc12_ = _loc14_.zpp_inner;
                     §§push(_loc3_);
                     if(_loc12_._validate != null)
                     {
                        _loc12_._validate();
                     }
                     _loc12_ = _loc14_.zpp_inner;
                     §§push(_loc14_.zpp_inner.x);
                     if(_loc12_._validate != null)
                     {
                        _loc12_._validate();
                     }
                     §§pop().lineTo(§§pop(),_loc14_.zpp_inner.y);
                  }
                  if(!_loc5_)
                  {
                     _loc12_ = _loc14_.zpp_inner;
                     _loc14_.zpp_inner.outer = null;
                     _loc14_.zpp_inner = null;
                     _loc17_ = _loc14_;
                     _loc17_.var_72 = class_219.poolVec2;
                     class_219.poolVec2 = _loc17_;
                     _loc23_ = _loc12_;
                     if(_loc23_.outer != null)
                     {
                        _loc23_.outer.zpp_inner = null;
                        _loc23_.outer = null;
                     }
                     _loc23_.var_103 = null;
                     _loc23_._validate = null;
                     _loc23_._invalidate = null;
                     _loc23_.next = ZPP_Vec2.var_72;
                     ZPP_Vec2.var_72 = _loc23_;
                  }
                  _loc5_ = false;
               }
            }
            else if(param1 is class_258.var_373)
            {
               _loc16_ = param1;
               _loc7_ = 0;
               while(_loc7_ < int(_loc16_.length))
               {
                  _loc9_ = _loc16_[_loc7_];
                  _loc7_++;
                  _loc14_ = _loc9_;
                  _loc17_ = zpp_inner.var_125.outer.transform(_loc14_);
                  if(_loc5_)
                  {
                     _loc4_ = _loc17_;
                     _loc12_ = _loc17_.zpp_inner;
                     §§push(_loc3_);
                     if(_loc12_._validate != null)
                     {
                        _loc12_._validate();
                     }
                     _loc12_ = _loc17_.zpp_inner;
                     §§push(_loc17_.zpp_inner.x);
                     if(_loc12_._validate != null)
                     {
                        _loc12_._validate();
                     }
                     §§pop().moveTo(§§pop(),_loc17_.zpp_inner.y);
                  }
                  else
                  {
                     _loc12_ = _loc17_.zpp_inner;
                     §§push(_loc3_);
                     if(_loc12_._validate != null)
                     {
                        _loc12_._validate();
                     }
                     _loc12_ = _loc17_.zpp_inner;
                     §§push(_loc17_.zpp_inner.x);
                     if(_loc12_._validate != null)
                     {
                        _loc12_._validate();
                     }
                     §§pop().lineTo(§§pop(),_loc17_.zpp_inner.y);
                  }
                  if(!_loc5_)
                  {
                     _loc12_ = _loc17_.zpp_inner;
                     _loc17_.zpp_inner.outer = null;
                     _loc17_.zpp_inner = null;
                     _loc24_ = _loc17_;
                     _loc24_.var_72 = class_219.poolVec2;
                     class_219.poolVec2 = _loc24_;
                     _loc23_ = _loc12_;
                     if(_loc23_.outer != null)
                     {
                        _loc23_.outer.zpp_inner = null;
                        _loc23_.outer = null;
                     }
                     _loc23_.var_103 = null;
                     _loc23_._validate = null;
                     _loc23_._invalidate = null;
                     _loc23_.next = ZPP_Vec2.var_72;
                     ZPP_Vec2.var_72 = _loc23_;
                  }
                  _loc5_ = false;
               }
            }
            else if(param1 is Vec2List)
            {
               _loc18_ = param1;
               _loc19_ = _loc18_.iterator();
               _loc19_.zpp_inner.zpp_inner.method_104();
               _loc7_ = _loc19_.zpp_inner.method_108();
               _loc19_.var_98 = true;
               if(_loc19_.var_90 < _loc7_)
               {
                  §§push(true);
               }
               else
               {
                  _loc19_.var_106 = Vec2Iterator.var_72;
                  Vec2Iterator.var_72 = _loc19_;
                  _loc19_.zpp_inner = null;
                  §§push(false);
               }
            }
            else if(param1 is class_260)
            {
               _loc20_ = param1;
               _loc21_ = _loc20_.zpp_inner.vertices;
               if(_loc21_ != null)
               {
                  _loc22_ = _loc21_;
                  do
                  {
                     _loc11_ = _loc22_.x;
                     _loc13_ = _loc22_.y;
                     _loc10_ = false;
                     if(class_219.poolVec2 == null)
                     {
                        _loc14_ = new Vec2();
                     }
                     else
                     {
                        _loc14_ = class_219.poolVec2;
                        class_219.poolVec2 = _loc14_.var_72;
                        _loc14_.var_72 = null;
                     }
                     if(_loc14_.zpp_inner == null)
                     {
                        _loc15_ = false;
                        if(ZPP_Vec2.var_72 == null)
                        {
                           _loc12_ = new ZPP_Vec2();
                        }
                        else
                        {
                           _loc12_ = ZPP_Vec2.var_72;
                           ZPP_Vec2.var_72 = _loc12_.next;
                           _loc12_.next = null;
                        }
                        _loc12_.name_5 = false;
                        _loc12_.var_109 = _loc15_;
                        _loc12_.x = _loc11_;
                        _loc12_.y = _loc13_;
                        _loc14_.zpp_inner = _loc12_;
                        _loc14_.zpp_inner.outer = _loc14_;
                     }
                     else
                     {
                        _loc12_ = _loc14_.zpp_inner;
                        §§push(false);
                        if(_loc12_._validate != null)
                        {
                           _loc12_._validate();
                        }
                        if(_loc14_.zpp_inner.x == _loc11_)
                        {
                           §§pop();
                           _loc12_ = _loc14_.zpp_inner;
                           if(_loc12_._validate != null)
                           {
                              _loc12_._validate();
                           }
                           §§push(_loc14_.zpp_inner.y == _loc13_);
                        }
                        if(!§§pop())
                        {
                           _loc14_.zpp_inner.x = _loc11_;
                           _loc14_.zpp_inner.y = _loc13_;
                           _loc12_ = _loc14_.zpp_inner;
                           if(_loc12_._invalidate != null)
                           {
                              _loc12_._invalidate(_loc12_);
                           }
                        }
                        _loc14_;
                     }
                     _loc14_.zpp_inner.name_5 = _loc10_;
                     _loc9_ = _loc14_;
                     _loc22_ = _loc22_.next;
                     _loc14_ = zpp_inner.var_125.outer.transform(_loc9_);
                     if(_loc5_)
                     {
                        _loc4_ = _loc14_;
                        _loc12_ = _loc14_.zpp_inner;
                        §§push(_loc3_);
                        if(_loc12_._validate != null)
                        {
                           _loc12_._validate();
                        }
                        _loc12_ = _loc14_.zpp_inner;
                        §§push(_loc14_.zpp_inner.x);
                        if(_loc12_._validate != null)
                        {
                           _loc12_._validate();
                        }
                        §§pop().moveTo(§§pop(),_loc14_.zpp_inner.y);
                     }
                     else
                     {
                        _loc12_ = _loc14_.zpp_inner;
                        §§push(_loc3_);
                        if(_loc12_._validate != null)
                        {
                           _loc12_._validate();
                        }
                        _loc12_ = _loc14_.zpp_inner;
                        §§push(_loc14_.zpp_inner.x);
                        if(_loc12_._validate != null)
                        {
                           _loc12_._validate();
                        }
                        §§pop().lineTo(§§pop(),_loc14_.zpp_inner.y);
                     }
                     if(!_loc5_)
                     {
                        _loc12_ = _loc14_.zpp_inner;
                        _loc14_.zpp_inner.outer = null;
                        _loc14_.zpp_inner = null;
                        _loc17_ = _loc14_;
                        _loc17_.var_72 = class_219.poolVec2;
                        class_219.poolVec2 = _loc17_;
                        _loc23_ = _loc12_;
                        if(_loc23_.outer != null)
                        {
                           _loc23_.outer.zpp_inner = null;
                           _loc23_.outer = null;
                        }
                        _loc23_.var_103 = null;
                        _loc23_._validate = null;
                        _loc23_._invalidate = null;
                        _loc23_.next = ZPP_Vec2.var_72;
                        ZPP_Vec2.var_72 = _loc23_;
                     }
                     _loc5_ = false;
                     _loc12_ = _loc9_.zpp_inner;
                     _loc9_.zpp_inner.outer = null;
                     _loc9_.zpp_inner = null;
                     _loc14_ = _loc9_;
                     _loc14_.var_72 = class_219.poolVec2;
                     class_219.poolVec2 = _loc14_;
                     _loc23_ = _loc12_;
                     if(_loc23_.outer != null)
                     {
                        _loc23_.outer.zpp_inner = null;
                        _loc23_.outer = null;
                     }
                     _loc23_.var_103 = null;
                     _loc23_._validate = null;
                     _loc23_._invalidate = null;
                     _loc23_.next = ZPP_Vec2.var_72;
                     ZPP_Vec2.var_72 = _loc23_;
                  }
                  while(_loc22_ != _loc21_);
                  
               }
            }
            _loc12_ = _loc4_.zpp_inner;
            §§push(_loc3_);
            if(_loc12_._validate != null)
            {
               _loc12_._validate();
            }
            _loc12_ = _loc4_.zpp_inner;
            §§push(_loc4_.zpp_inner.x);
            if(_loc12_._validate != null)
            {
               _loc12_._validate();
            }
            §§pop().lineTo(§§pop(),_loc4_.zpp_inner.y);
            _loc12_ = _loc4_.zpp_inner;
            _loc4_.zpp_inner.outer = null;
            _loc4_.zpp_inner = null;
            _loc9_ = _loc4_;
            _loc9_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc9_;
            _loc23_ = _loc12_;
            if(_loc23_.outer != null)
            {
               _loc23_.outer.zpp_inner = null;
               _loc23_.outer = null;
            }
            _loc23_.var_103 = null;
            _loc23_._validate = null;
            _loc23_._invalidate = null;
            _loc23_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc23_;
         }
         if(param1 is Array)
         {
            _loc6_ = param1;
            _loc7_ = 0;
            while(_loc7_ < int(_loc6_.length))
            {
               _loc9_ = _loc6_[_loc7_];
               if(_loc9_.zpp_inner.name_5)
               {
                  _loc12_ = _loc9_.zpp_inner;
                  _loc9_.zpp_inner.outer = null;
                  _loc9_.zpp_inner = null;
                  _loc14_ = _loc9_;
                  _loc14_.var_72 = class_219.poolVec2;
                  class_219.poolVec2 = _loc14_;
                  _loc23_ = _loc12_;
                  if(_loc23_.outer != null)
                  {
                     _loc23_.outer.zpp_inner = null;
                     _loc23_.outer = null;
                  }
                  _loc23_.var_103 = null;
                  _loc23_._validate = null;
                  _loc23_._invalidate = null;
                  _loc23_.next = ZPP_Vec2.var_72;
                  ZPP_Vec2.var_72 = _loc23_;
                  §§push(true);
               }
               else
               {
                  §§push(false);
               }
               _loc6_.splice(_loc7_,1);
            }
         }
         else if(param1 is class_258.var_373)
         {
            _loc16_ = param1;
            if(!_loc16_.fixed)
            {
               _loc7_ = 0;
               while(_loc7_ < int(_loc16_.length))
               {
                  _loc9_ = _loc16_[_loc7_];
                  if(_loc9_.zpp_inner.name_5)
                  {
                     _loc12_ = _loc9_.zpp_inner;
                     _loc9_.zpp_inner.outer = null;
                     _loc9_.zpp_inner = null;
                     _loc14_ = _loc9_;
                     _loc14_.var_72 = class_219.poolVec2;
                     class_219.poolVec2 = _loc14_;
                     _loc23_ = _loc12_;
                     if(_loc23_.outer != null)
                     {
                        _loc23_.outer.zpp_inner = null;
                        _loc23_.outer = null;
                     }
                     _loc23_.var_103 = null;
                     _loc23_._validate = null;
                     _loc23_._invalidate = null;
                     _loc23_.next = ZPP_Vec2.var_72;
                     ZPP_Vec2.var_72 = _loc23_;
                     §§push(true);
                  }
                  else
                  {
                     §§push(false);
                  }
                  _loc16_.splice(_loc7_,1);
               }
            }
         }
         else if(param1 is Vec2List)
         {
            _loc18_ = param1;
            if(_loc18_.zpp_inner._validate != null)
            {
               _loc18_.zpp_inner._validate();
            }
            _loc25_ = _loc18_.zpp_inner.name_4;
            _loc26_ = null;
            _loc27_ = _loc25_.var_73;
            while(_loc27_ != null)
            {
               _loc12_ = _loc27_.var_74;
               if(_loc12_.outer.zpp_inner.name_5)
               {
                  _loc27_ = _loc25_.erase(_loc26_);
                  if(_loc12_.outer.zpp_inner.name_5)
                  {
                     _loc9_ = _loc12_.outer;
                     _loc23_ = _loc9_.zpp_inner;
                     _loc9_.zpp_inner.outer = null;
                     _loc9_.zpp_inner = null;
                     _loc14_ = _loc9_;
                     _loc14_.var_72 = class_219.poolVec2;
                     class_219.poolVec2 = _loc14_;
                     _loc28_ = _loc23_;
                     if(_loc28_.outer != null)
                     {
                        _loc28_.outer.zpp_inner = null;
                        _loc28_.outer = null;
                     }
                     _loc28_.var_103 = null;
                     _loc28_._validate = null;
                     _loc28_._invalidate = null;
                     _loc28_.next = ZPP_Vec2.var_72;
                     ZPP_Vec2.var_72 = _loc28_;
                  }
                  else
                  {
                     false;
                  }
               }
               else
               {
                  _loc26_ = _loc27_;
                  _loc27_ = _loc27_.next;
               }
            }
         }
      }
      
      override public function method_253(param1:Vec2, param2:Vec2, param3:int) : void
      {
         var _loc5_:* = null as ZPP_Vec2;
         var _loc6_:* = null as Vec2;
         var _loc7_:* = null as ZPP_Vec2;
         var _loc8_:* = null as Vec2;
         var _loc4_:Graphics = var_85.graphics;
         _loc4_.lineStyle(thickness,param3 & 16777215,1);
         if(zpp_inner.var_235)
         {
            _loc5_ = param1.zpp_inner;
            §§push(_loc4_);
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            _loc5_ = param1.zpp_inner;
            §§push(param1.zpp_inner.x);
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            §§pop().moveTo(§§pop(),param1.zpp_inner.y);
            _loc5_ = param2.zpp_inner;
            §§push(_loc4_);
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            _loc5_ = param2.zpp_inner;
            §§push(param2.zpp_inner.x);
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            §§pop().lineTo(§§pop(),param2.zpp_inner.y);
            if(param1.zpp_inner.name_5)
            {
               _loc5_ = param1.zpp_inner;
               param1.zpp_inner.outer = null;
               param1.zpp_inner = null;
               _loc6_ = param1;
               _loc6_.var_72 = class_219.poolVec2;
               class_219.poolVec2 = _loc6_;
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
               _loc6_ = param2;
               _loc6_.var_72 = class_219.poolVec2;
               class_219.poolVec2 = _loc6_;
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
            }
            else
            {
               false;
            }
         }
         else
         {
            _loc6_ = zpp_inner.var_125.outer.transform(param1);
            _loc5_ = _loc6_.zpp_inner;
            §§push(_loc4_);
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            _loc5_ = _loc6_.zpp_inner;
            §§push(_loc6_.zpp_inner.x);
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            §§pop().moveTo(§§pop(),_loc6_.zpp_inner.y);
            _loc5_ = _loc6_.zpp_inner;
            _loc6_.zpp_inner.outer = null;
            _loc6_.zpp_inner = null;
            _loc8_ = _loc6_;
            _loc8_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc8_;
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
            _loc6_ = zpp_inner.var_125.outer.transform(param2);
            _loc5_ = _loc6_.zpp_inner;
            §§push(_loc4_);
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            _loc5_ = _loc6_.zpp_inner;
            §§push(_loc6_.zpp_inner.x);
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            §§pop().lineTo(§§pop(),_loc6_.zpp_inner.y);
            _loc5_ = _loc6_.zpp_inner;
            _loc6_.zpp_inner.outer = null;
            _loc6_.zpp_inner = null;
            _loc8_ = _loc6_;
            _loc8_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc8_;
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
         }
      }
      
      override public function method_456(param1:Vec2, param2:Vec2, param3:Vec2, param4:int) : void
      {
         var _loc6_:* = null as ZPP_Vec2;
         var _loc7_:* = null as Vec2;
         var _loc8_:* = null as ZPP_Vec2;
         var _loc9_:* = null as Vec2;
         var _loc5_:Graphics = var_85.graphics;
         _loc5_.lineStyle(0,0,0);
         _loc5_.beginFill(param4 & 16777215,1);
         if(zpp_inner.var_235)
         {
            _loc6_ = param1.zpp_inner;
            §§push(_loc5_);
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc6_ = param1.zpp_inner;
            §§push(param1.zpp_inner.x);
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            §§pop().moveTo(§§pop(),param1.zpp_inner.y);
            _loc6_ = param2.zpp_inner;
            §§push(_loc5_);
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc6_ = param2.zpp_inner;
            §§push(param2.zpp_inner.x);
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            §§pop().lineTo(§§pop(),param2.zpp_inner.y);
            _loc6_ = param3.zpp_inner;
            §§push(_loc5_);
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc6_ = param3.zpp_inner;
            §§push(param3.zpp_inner.x);
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            §§pop().lineTo(§§pop(),param3.zpp_inner.y);
            if(param1.zpp_inner.name_5)
            {
               _loc6_ = param1.zpp_inner;
               param1.zpp_inner.outer = null;
               param1.zpp_inner = null;
               _loc7_ = param1;
               _loc7_.var_72 = class_219.poolVec2;
               class_219.poolVec2 = _loc7_;
               _loc8_ = _loc6_;
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
               true;
            }
            else
            {
               false;
            }
            if(param2.zpp_inner.name_5)
            {
               _loc6_ = param2.zpp_inner;
               param2.zpp_inner.outer = null;
               param2.zpp_inner = null;
               _loc7_ = param2;
               _loc7_.var_72 = class_219.poolVec2;
               class_219.poolVec2 = _loc7_;
               _loc8_ = _loc6_;
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
               true;
            }
            else
            {
               false;
            }
            if(param3.zpp_inner.name_5)
            {
               _loc6_ = param3.zpp_inner;
               param3.zpp_inner.outer = null;
               param3.zpp_inner = null;
               _loc7_ = param3;
               _loc7_.var_72 = class_219.poolVec2;
               class_219.poolVec2 = _loc7_;
               _loc8_ = _loc6_;
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
            else
            {
               false;
            }
         }
         else
         {
            _loc7_ = zpp_inner.var_125.outer.transform(param1);
            _loc6_ = _loc7_.zpp_inner;
            §§push(_loc5_);
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc6_ = _loc7_.zpp_inner;
            §§push(_loc7_.zpp_inner.x);
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            §§pop().moveTo(§§pop(),_loc7_.zpp_inner.y);
            _loc6_ = _loc7_.zpp_inner;
            _loc7_.zpp_inner.outer = null;
            _loc7_.zpp_inner = null;
            _loc9_ = _loc7_;
            _loc9_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc9_;
            _loc8_ = _loc6_;
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
            _loc7_ = zpp_inner.var_125.outer.transform(param2);
            _loc6_ = _loc7_.zpp_inner;
            §§push(_loc5_);
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc6_ = _loc7_.zpp_inner;
            §§push(_loc7_.zpp_inner.x);
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            §§pop().lineTo(§§pop(),_loc7_.zpp_inner.y);
            _loc6_ = _loc7_.zpp_inner;
            _loc7_.zpp_inner.outer = null;
            _loc7_.zpp_inner = null;
            _loc9_ = _loc7_;
            _loc9_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc9_;
            _loc8_ = _loc6_;
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
            _loc7_ = zpp_inner.var_125.outer.transform(param3);
            _loc6_ = _loc7_.zpp_inner;
            §§push(_loc5_);
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc6_ = _loc7_.zpp_inner;
            §§push(_loc7_.zpp_inner.x);
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            §§pop().lineTo(§§pop(),_loc7_.zpp_inner.y);
            _loc6_ = _loc7_.zpp_inner;
            _loc7_.zpp_inner.outer = null;
            _loc7_.zpp_inner = null;
            _loc9_ = _loc7_;
            _loc9_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc9_;
            _loc8_ = _loc6_;
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
         _loc5_.endFill();
      }
      
      override public function method_445(param1:*, param2:int) : void
      {
         var _loc6_:* = null as Array;
         var _loc7_:int = 0;
         var _loc8_:* = null;
         var _loc9_:* = null as Vec2;
         var _loc10_:Boolean = false;
         var _loc11_:Number = NaN;
         var _loc12_:* = null as ZPP_Vec2;
         var _loc13_:Number = NaN;
         var _loc14_:* = null as Vec2;
         var _loc15_:Boolean = false;
         var _loc16_:* = null as Vector.<Vec2>;
         var _loc17_:* = null as Vec2;
         var _loc18_:* = null as Vec2List;
         var _loc19_:* = null as Vec2Iterator;
         var _loc20_:* = null as class_260;
         var _loc21_:* = null as ZPP_GeomVert;
         var _loc22_:* = null as ZPP_GeomVert;
         var _loc23_:* = null as ZPP_Vec2;
         var _loc24_:* = null as Vec2;
         var _loc25_:* = null as class_259;
         var _loc26_:* = null as ZNPNode_ZPP_Vec2;
         var _loc27_:* = null as ZNPNode_ZPP_Vec2;
         var _loc28_:* = null as ZPP_Vec2;
         var _loc3_:Graphics = var_85.graphics;
         _loc3_.beginFill(param2 & 16777215,1);
         _loc3_.lineStyle(0,0,0);
         var _loc4_:* = null;
         var _loc5_:Boolean = true;
         if(zpp_inner.var_235)
         {
            if(param1 is Array)
            {
               _loc6_ = param1;
               _loc7_ = 0;
               while(_loc7_ < int(_loc6_.length))
               {
                  _loc8_ = _loc6_[_loc7_];
                  _loc7_++;
                  _loc9_ = _loc8_;
                  if(_loc5_)
                  {
                     _loc10_ = false;
                     _loc12_ = _loc9_.zpp_inner;
                     if(_loc12_._validate != null)
                     {
                        _loc12_._validate();
                     }
                     _loc11_ = _loc9_.zpp_inner.x;
                     _loc12_ = _loc9_.zpp_inner;
                     if(_loc12_._validate != null)
                     {
                        _loc12_._validate();
                     }
                     _loc13_ = _loc9_.zpp_inner.y;
                     if(class_219.poolVec2 == null)
                     {
                        _loc14_ = new Vec2();
                     }
                     else
                     {
                        _loc14_ = class_219.poolVec2;
                        class_219.poolVec2 = _loc14_.var_72;
                        _loc14_.var_72 = null;
                     }
                     if(_loc14_.zpp_inner == null)
                     {
                        _loc15_ = false;
                        if(ZPP_Vec2.var_72 == null)
                        {
                           _loc12_ = new ZPP_Vec2();
                        }
                        else
                        {
                           _loc12_ = ZPP_Vec2.var_72;
                           ZPP_Vec2.var_72 = _loc12_.next;
                           _loc12_.next = null;
                        }
                        _loc12_.name_5 = false;
                        _loc12_.var_109 = _loc15_;
                        _loc12_.x = _loc11_;
                        _loc12_.y = _loc13_;
                        _loc14_.zpp_inner = _loc12_;
                        _loc14_.zpp_inner.outer = _loc14_;
                     }
                     else
                     {
                        _loc12_ = _loc14_.zpp_inner;
                        §§push(false);
                        if(_loc12_._validate != null)
                        {
                           _loc12_._validate();
                        }
                        if(_loc14_.zpp_inner.x == _loc11_)
                        {
                           §§pop();
                           _loc12_ = _loc14_.zpp_inner;
                           if(_loc12_._validate != null)
                           {
                              _loc12_._validate();
                           }
                           §§push(_loc14_.zpp_inner.y == _loc13_);
                        }
                        if(!§§pop())
                        {
                           _loc14_.zpp_inner.x = _loc11_;
                           _loc14_.zpp_inner.y = _loc13_;
                           _loc12_ = _loc14_.zpp_inner;
                           if(_loc12_._invalidate != null)
                           {
                              _loc12_._invalidate(_loc12_);
                           }
                        }
                        _loc14_;
                     }
                     _loc14_.zpp_inner.name_5 = _loc10_;
                     _loc4_ = _loc14_;
                     _loc12_ = _loc9_.zpp_inner;
                     §§push(_loc3_);
                     if(_loc12_._validate != null)
                     {
                        _loc12_._validate();
                     }
                     _loc12_ = _loc9_.zpp_inner;
                     §§push(_loc9_.zpp_inner.x);
                     if(_loc12_._validate != null)
                     {
                        _loc12_._validate();
                     }
                     §§pop().moveTo(§§pop(),_loc9_.zpp_inner.y);
                  }
                  else
                  {
                     _loc12_ = _loc9_.zpp_inner;
                     §§push(_loc3_);
                     if(_loc12_._validate != null)
                     {
                        _loc12_._validate();
                     }
                     _loc12_ = _loc9_.zpp_inner;
                     §§push(_loc9_.zpp_inner.x);
                     if(_loc12_._validate != null)
                     {
                        _loc12_._validate();
                     }
                     §§pop().lineTo(§§pop(),_loc9_.zpp_inner.y);
                  }
                  _loc5_ = false;
               }
            }
            else if(param1 is class_258.var_373)
            {
               _loc16_ = param1;
               _loc7_ = 0;
               while(_loc7_ < int(_loc16_.length))
               {
                  _loc9_ = _loc16_[_loc7_];
                  _loc7_++;
                  _loc14_ = _loc9_;
                  if(_loc5_)
                  {
                     _loc10_ = false;
                     _loc12_ = _loc14_.zpp_inner;
                     if(_loc12_._validate != null)
                     {
                        _loc12_._validate();
                     }
                     _loc11_ = _loc14_.zpp_inner.x;
                     _loc12_ = _loc14_.zpp_inner;
                     if(_loc12_._validate != null)
                     {
                        _loc12_._validate();
                     }
                     _loc13_ = _loc14_.zpp_inner.y;
                     if(class_219.poolVec2 == null)
                     {
                        _loc17_ = new Vec2();
                     }
                     else
                     {
                        _loc17_ = class_219.poolVec2;
                        class_219.poolVec2 = _loc17_.var_72;
                        _loc17_.var_72 = null;
                     }
                     if(_loc17_.zpp_inner == null)
                     {
                        _loc15_ = false;
                        if(ZPP_Vec2.var_72 == null)
                        {
                           _loc12_ = new ZPP_Vec2();
                        }
                        else
                        {
                           _loc12_ = ZPP_Vec2.var_72;
                           ZPP_Vec2.var_72 = _loc12_.next;
                           _loc12_.next = null;
                        }
                        _loc12_.name_5 = false;
                        _loc12_.var_109 = _loc15_;
                        _loc12_.x = _loc11_;
                        _loc12_.y = _loc13_;
                        _loc17_.zpp_inner = _loc12_;
                        _loc17_.zpp_inner.outer = _loc17_;
                     }
                     else
                     {
                        _loc12_ = _loc17_.zpp_inner;
                        §§push(false);
                        if(_loc12_._validate != null)
                        {
                           _loc12_._validate();
                        }
                        if(_loc17_.zpp_inner.x == _loc11_)
                        {
                           §§pop();
                           _loc12_ = _loc17_.zpp_inner;
                           if(_loc12_._validate != null)
                           {
                              _loc12_._validate();
                           }
                           §§push(_loc17_.zpp_inner.y == _loc13_);
                        }
                        if(!§§pop())
                        {
                           _loc17_.zpp_inner.x = _loc11_;
                           _loc17_.zpp_inner.y = _loc13_;
                           _loc12_ = _loc17_.zpp_inner;
                           if(_loc12_._invalidate != null)
                           {
                              _loc12_._invalidate(_loc12_);
                           }
                        }
                        _loc17_;
                     }
                     _loc17_.zpp_inner.name_5 = _loc10_;
                     _loc4_ = _loc17_;
                     _loc12_ = _loc14_.zpp_inner;
                     §§push(_loc3_);
                     if(_loc12_._validate != null)
                     {
                        _loc12_._validate();
                     }
                     _loc12_ = _loc14_.zpp_inner;
                     §§push(_loc14_.zpp_inner.x);
                     if(_loc12_._validate != null)
                     {
                        _loc12_._validate();
                     }
                     §§pop().moveTo(§§pop(),_loc14_.zpp_inner.y);
                  }
                  else
                  {
                     _loc12_ = _loc14_.zpp_inner;
                     §§push(_loc3_);
                     if(_loc12_._validate != null)
                     {
                        _loc12_._validate();
                     }
                     _loc12_ = _loc14_.zpp_inner;
                     §§push(_loc14_.zpp_inner.x);
                     if(_loc12_._validate != null)
                     {
                        _loc12_._validate();
                     }
                     §§pop().lineTo(§§pop(),_loc14_.zpp_inner.y);
                  }
                  _loc5_ = false;
               }
            }
            else if(param1 is Vec2List)
            {
               _loc18_ = param1;
               _loc19_ = _loc18_.iterator();
               _loc19_.zpp_inner.zpp_inner.method_104();
               _loc7_ = _loc19_.zpp_inner.method_108();
               _loc19_.var_98 = true;
               if(_loc19_.var_90 < _loc7_)
               {
                  §§push(true);
               }
               else
               {
                  _loc19_.var_106 = Vec2Iterator.var_72;
                  Vec2Iterator.var_72 = _loc19_;
                  _loc19_.zpp_inner = null;
                  §§push(false);
               }
            }
            else if(param1 is class_260)
            {
               _loc20_ = param1;
               _loc21_ = _loc20_.zpp_inner.vertices;
               if(_loc21_ != null)
               {
                  _loc22_ = _loc21_;
                  do
                  {
                     _loc11_ = _loc22_.x;
                     _loc13_ = _loc22_.y;
                     _loc10_ = false;
                     if(class_219.poolVec2 == null)
                     {
                        _loc14_ = new Vec2();
                     }
                     else
                     {
                        _loc14_ = class_219.poolVec2;
                        class_219.poolVec2 = _loc14_.var_72;
                        _loc14_.var_72 = null;
                     }
                     if(_loc14_.zpp_inner == null)
                     {
                        _loc15_ = false;
                        if(ZPP_Vec2.var_72 == null)
                        {
                           _loc12_ = new ZPP_Vec2();
                        }
                        else
                        {
                           _loc12_ = ZPP_Vec2.var_72;
                           ZPP_Vec2.var_72 = _loc12_.next;
                           _loc12_.next = null;
                        }
                        _loc12_.name_5 = false;
                        _loc12_.var_109 = _loc15_;
                        _loc12_.x = _loc11_;
                        _loc12_.y = _loc13_;
                        _loc14_.zpp_inner = _loc12_;
                        _loc14_.zpp_inner.outer = _loc14_;
                     }
                     else
                     {
                        _loc12_ = _loc14_.zpp_inner;
                        §§push(false);
                        if(_loc12_._validate != null)
                        {
                           _loc12_._validate();
                        }
                        if(_loc14_.zpp_inner.x == _loc11_)
                        {
                           §§pop();
                           _loc12_ = _loc14_.zpp_inner;
                           if(_loc12_._validate != null)
                           {
                              _loc12_._validate();
                           }
                           §§push(_loc14_.zpp_inner.y == _loc13_);
                        }
                        if(!§§pop())
                        {
                           _loc14_.zpp_inner.x = _loc11_;
                           _loc14_.zpp_inner.y = _loc13_;
                           _loc12_ = _loc14_.zpp_inner;
                           if(_loc12_._invalidate != null)
                           {
                              _loc12_._invalidate(_loc12_);
                           }
                        }
                        _loc14_;
                     }
                     _loc14_.zpp_inner.name_5 = _loc10_;
                     _loc9_ = _loc14_;
                     _loc22_ = _loc22_.next;
                     if(_loc5_)
                     {
                        _loc10_ = false;
                        _loc12_ = _loc9_.zpp_inner;
                        if(_loc12_._validate != null)
                        {
                           _loc12_._validate();
                        }
                        _loc11_ = _loc9_.zpp_inner.x;
                        _loc12_ = _loc9_.zpp_inner;
                        if(_loc12_._validate != null)
                        {
                           _loc12_._validate();
                        }
                        _loc13_ = _loc9_.zpp_inner.y;
                        if(class_219.poolVec2 == null)
                        {
                           _loc14_ = new Vec2();
                        }
                        else
                        {
                           _loc14_ = class_219.poolVec2;
                           class_219.poolVec2 = _loc14_.var_72;
                           _loc14_.var_72 = null;
                        }
                        if(_loc14_.zpp_inner == null)
                        {
                           _loc15_ = false;
                           if(ZPP_Vec2.var_72 == null)
                           {
                              _loc12_ = new ZPP_Vec2();
                           }
                           else
                           {
                              _loc12_ = ZPP_Vec2.var_72;
                              ZPP_Vec2.var_72 = _loc12_.next;
                              _loc12_.next = null;
                           }
                           _loc12_.name_5 = false;
                           _loc12_.var_109 = _loc15_;
                           _loc12_.x = _loc11_;
                           _loc12_.y = _loc13_;
                           _loc14_.zpp_inner = _loc12_;
                           _loc14_.zpp_inner.outer = _loc14_;
                        }
                        else
                        {
                           _loc12_ = _loc14_.zpp_inner;
                           §§push(false);
                           if(_loc12_._validate != null)
                           {
                              _loc12_._validate();
                           }
                           if(_loc14_.zpp_inner.x == _loc11_)
                           {
                              §§pop();
                              _loc12_ = _loc14_.zpp_inner;
                              if(_loc12_._validate != null)
                              {
                                 _loc12_._validate();
                              }
                              §§push(_loc14_.zpp_inner.y == _loc13_);
                           }
                           if(!§§pop())
                           {
                              _loc14_.zpp_inner.x = _loc11_;
                              _loc14_.zpp_inner.y = _loc13_;
                              _loc12_ = _loc14_.zpp_inner;
                              if(_loc12_._invalidate != null)
                              {
                                 _loc12_._invalidate(_loc12_);
                              }
                           }
                           _loc14_;
                        }
                        _loc14_.zpp_inner.name_5 = _loc10_;
                        _loc4_ = _loc14_;
                        _loc12_ = _loc9_.zpp_inner;
                        §§push(_loc3_);
                        if(_loc12_._validate != null)
                        {
                           _loc12_._validate();
                        }
                        _loc12_ = _loc9_.zpp_inner;
                        §§push(_loc9_.zpp_inner.x);
                        if(_loc12_._validate != null)
                        {
                           _loc12_._validate();
                        }
                        §§pop().moveTo(§§pop(),_loc9_.zpp_inner.y);
                     }
                     else
                     {
                        _loc12_ = _loc9_.zpp_inner;
                        §§push(_loc3_);
                        if(_loc12_._validate != null)
                        {
                           _loc12_._validate();
                        }
                        _loc12_ = _loc9_.zpp_inner;
                        §§push(_loc9_.zpp_inner.x);
                        if(_loc12_._validate != null)
                        {
                           _loc12_._validate();
                        }
                        §§pop().lineTo(§§pop(),_loc9_.zpp_inner.y);
                     }
                     _loc5_ = false;
                     _loc12_ = _loc9_.zpp_inner;
                     _loc9_.zpp_inner.outer = null;
                     _loc9_.zpp_inner = null;
                     _loc14_ = _loc9_;
                     _loc14_.var_72 = class_219.poolVec2;
                     class_219.poolVec2 = _loc14_;
                     _loc23_ = _loc12_;
                     if(_loc23_.outer != null)
                     {
                        _loc23_.outer.zpp_inner = null;
                        _loc23_.outer = null;
                     }
                     _loc23_.var_103 = null;
                     _loc23_._validate = null;
                     _loc23_._invalidate = null;
                     _loc23_.next = ZPP_Vec2.var_72;
                     ZPP_Vec2.var_72 = _loc23_;
                  }
                  while(_loc22_ != _loc21_);
                  
               }
            }
            _loc12_ = _loc4_.zpp_inner;
            §§push(_loc3_);
            if(_loc12_._validate != null)
            {
               _loc12_._validate();
            }
            _loc12_ = _loc4_.zpp_inner;
            §§push(_loc4_.zpp_inner.x);
            if(_loc12_._validate != null)
            {
               _loc12_._validate();
            }
            §§pop().lineTo(§§pop(),_loc4_.zpp_inner.y);
            _loc12_ = _loc4_.zpp_inner;
            _loc4_.zpp_inner.outer = null;
            _loc4_.zpp_inner = null;
            _loc9_ = _loc4_;
            _loc9_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc9_;
            _loc23_ = _loc12_;
            if(_loc23_.outer != null)
            {
               _loc23_.outer.zpp_inner = null;
               _loc23_.outer = null;
            }
            _loc23_.var_103 = null;
            _loc23_._validate = null;
            _loc23_._invalidate = null;
            _loc23_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc23_;
         }
         else
         {
            if(param1 is Array)
            {
               _loc6_ = param1;
               _loc7_ = 0;
               while(_loc7_ < int(_loc6_.length))
               {
                  _loc8_ = _loc6_[_loc7_];
                  _loc7_++;
                  _loc9_ = _loc8_;
                  _loc14_ = zpp_inner.var_125.outer.transform(_loc9_);
                  if(_loc5_)
                  {
                     _loc4_ = _loc14_;
                     _loc12_ = _loc14_.zpp_inner;
                     §§push(_loc3_);
                     if(_loc12_._validate != null)
                     {
                        _loc12_._validate();
                     }
                     _loc12_ = _loc14_.zpp_inner;
                     §§push(_loc14_.zpp_inner.x);
                     if(_loc12_._validate != null)
                     {
                        _loc12_._validate();
                     }
                     §§pop().moveTo(§§pop(),_loc14_.zpp_inner.y);
                  }
                  else
                  {
                     _loc12_ = _loc14_.zpp_inner;
                     §§push(_loc3_);
                     if(_loc12_._validate != null)
                     {
                        _loc12_._validate();
                     }
                     _loc12_ = _loc14_.zpp_inner;
                     §§push(_loc14_.zpp_inner.x);
                     if(_loc12_._validate != null)
                     {
                        _loc12_._validate();
                     }
                     §§pop().lineTo(§§pop(),_loc14_.zpp_inner.y);
                  }
                  if(!_loc5_)
                  {
                     _loc12_ = _loc14_.zpp_inner;
                     _loc14_.zpp_inner.outer = null;
                     _loc14_.zpp_inner = null;
                     _loc17_ = _loc14_;
                     _loc17_.var_72 = class_219.poolVec2;
                     class_219.poolVec2 = _loc17_;
                     _loc23_ = _loc12_;
                     if(_loc23_.outer != null)
                     {
                        _loc23_.outer.zpp_inner = null;
                        _loc23_.outer = null;
                     }
                     _loc23_.var_103 = null;
                     _loc23_._validate = null;
                     _loc23_._invalidate = null;
                     _loc23_.next = ZPP_Vec2.var_72;
                     ZPP_Vec2.var_72 = _loc23_;
                  }
                  _loc5_ = false;
               }
            }
            else if(param1 is class_258.var_373)
            {
               _loc16_ = param1;
               _loc7_ = 0;
               while(_loc7_ < int(_loc16_.length))
               {
                  _loc9_ = _loc16_[_loc7_];
                  _loc7_++;
                  _loc14_ = _loc9_;
                  _loc17_ = zpp_inner.var_125.outer.transform(_loc14_);
                  if(_loc5_)
                  {
                     _loc4_ = _loc17_;
                     _loc12_ = _loc17_.zpp_inner;
                     §§push(_loc3_);
                     if(_loc12_._validate != null)
                     {
                        _loc12_._validate();
                     }
                     _loc12_ = _loc17_.zpp_inner;
                     §§push(_loc17_.zpp_inner.x);
                     if(_loc12_._validate != null)
                     {
                        _loc12_._validate();
                     }
                     §§pop().moveTo(§§pop(),_loc17_.zpp_inner.y);
                  }
                  else
                  {
                     _loc12_ = _loc17_.zpp_inner;
                     §§push(_loc3_);
                     if(_loc12_._validate != null)
                     {
                        _loc12_._validate();
                     }
                     _loc12_ = _loc17_.zpp_inner;
                     §§push(_loc17_.zpp_inner.x);
                     if(_loc12_._validate != null)
                     {
                        _loc12_._validate();
                     }
                     §§pop().lineTo(§§pop(),_loc17_.zpp_inner.y);
                  }
                  if(!_loc5_)
                  {
                     _loc12_ = _loc17_.zpp_inner;
                     _loc17_.zpp_inner.outer = null;
                     _loc17_.zpp_inner = null;
                     _loc24_ = _loc17_;
                     _loc24_.var_72 = class_219.poolVec2;
                     class_219.poolVec2 = _loc24_;
                     _loc23_ = _loc12_;
                     if(_loc23_.outer != null)
                     {
                        _loc23_.outer.zpp_inner = null;
                        _loc23_.outer = null;
                     }
                     _loc23_.var_103 = null;
                     _loc23_._validate = null;
                     _loc23_._invalidate = null;
                     _loc23_.next = ZPP_Vec2.var_72;
                     ZPP_Vec2.var_72 = _loc23_;
                  }
                  _loc5_ = false;
               }
            }
            else if(param1 is Vec2List)
            {
               _loc18_ = param1;
               _loc19_ = _loc18_.iterator();
               _loc19_.zpp_inner.zpp_inner.method_104();
               _loc7_ = _loc19_.zpp_inner.method_108();
               _loc19_.var_98 = true;
               if(_loc19_.var_90 < _loc7_)
               {
                  §§push(true);
               }
               else
               {
                  _loc19_.var_106 = Vec2Iterator.var_72;
                  Vec2Iterator.var_72 = _loc19_;
                  _loc19_.zpp_inner = null;
                  §§push(false);
               }
            }
            else if(param1 is class_260)
            {
               _loc20_ = param1;
               _loc21_ = _loc20_.zpp_inner.vertices;
               if(_loc21_ != null)
               {
                  _loc22_ = _loc21_;
                  do
                  {
                     _loc11_ = _loc22_.x;
                     _loc13_ = _loc22_.y;
                     _loc10_ = false;
                     if(class_219.poolVec2 == null)
                     {
                        _loc14_ = new Vec2();
                     }
                     else
                     {
                        _loc14_ = class_219.poolVec2;
                        class_219.poolVec2 = _loc14_.var_72;
                        _loc14_.var_72 = null;
                     }
                     if(_loc14_.zpp_inner == null)
                     {
                        _loc15_ = false;
                        if(ZPP_Vec2.var_72 == null)
                        {
                           _loc12_ = new ZPP_Vec2();
                        }
                        else
                        {
                           _loc12_ = ZPP_Vec2.var_72;
                           ZPP_Vec2.var_72 = _loc12_.next;
                           _loc12_.next = null;
                        }
                        _loc12_.name_5 = false;
                        _loc12_.var_109 = _loc15_;
                        _loc12_.x = _loc11_;
                        _loc12_.y = _loc13_;
                        _loc14_.zpp_inner = _loc12_;
                        _loc14_.zpp_inner.outer = _loc14_;
                     }
                     else
                     {
                        _loc12_ = _loc14_.zpp_inner;
                        §§push(false);
                        if(_loc12_._validate != null)
                        {
                           _loc12_._validate();
                        }
                        if(_loc14_.zpp_inner.x == _loc11_)
                        {
                           §§pop();
                           _loc12_ = _loc14_.zpp_inner;
                           if(_loc12_._validate != null)
                           {
                              _loc12_._validate();
                           }
                           §§push(_loc14_.zpp_inner.y == _loc13_);
                        }
                        if(!§§pop())
                        {
                           _loc14_.zpp_inner.x = _loc11_;
                           _loc14_.zpp_inner.y = _loc13_;
                           _loc12_ = _loc14_.zpp_inner;
                           if(_loc12_._invalidate != null)
                           {
                              _loc12_._invalidate(_loc12_);
                           }
                        }
                        _loc14_;
                     }
                     _loc14_.zpp_inner.name_5 = _loc10_;
                     _loc9_ = _loc14_;
                     _loc22_ = _loc22_.next;
                     _loc14_ = zpp_inner.var_125.outer.transform(_loc9_);
                     if(_loc5_)
                     {
                        _loc4_ = _loc14_;
                        _loc12_ = _loc14_.zpp_inner;
                        §§push(_loc3_);
                        if(_loc12_._validate != null)
                        {
                           _loc12_._validate();
                        }
                        _loc12_ = _loc14_.zpp_inner;
                        §§push(_loc14_.zpp_inner.x);
                        if(_loc12_._validate != null)
                        {
                           _loc12_._validate();
                        }
                        §§pop().moveTo(§§pop(),_loc14_.zpp_inner.y);
                     }
                     else
                     {
                        _loc12_ = _loc14_.zpp_inner;
                        §§push(_loc3_);
                        if(_loc12_._validate != null)
                        {
                           _loc12_._validate();
                        }
                        _loc12_ = _loc14_.zpp_inner;
                        §§push(_loc14_.zpp_inner.x);
                        if(_loc12_._validate != null)
                        {
                           _loc12_._validate();
                        }
                        §§pop().lineTo(§§pop(),_loc14_.zpp_inner.y);
                     }
                     if(!_loc5_)
                     {
                        _loc12_ = _loc14_.zpp_inner;
                        _loc14_.zpp_inner.outer = null;
                        _loc14_.zpp_inner = null;
                        _loc17_ = _loc14_;
                        _loc17_.var_72 = class_219.poolVec2;
                        class_219.poolVec2 = _loc17_;
                        _loc23_ = _loc12_;
                        if(_loc23_.outer != null)
                        {
                           _loc23_.outer.zpp_inner = null;
                           _loc23_.outer = null;
                        }
                        _loc23_.var_103 = null;
                        _loc23_._validate = null;
                        _loc23_._invalidate = null;
                        _loc23_.next = ZPP_Vec2.var_72;
                        ZPP_Vec2.var_72 = _loc23_;
                     }
                     _loc5_ = false;
                     _loc12_ = _loc9_.zpp_inner;
                     _loc9_.zpp_inner.outer = null;
                     _loc9_.zpp_inner = null;
                     _loc14_ = _loc9_;
                     _loc14_.var_72 = class_219.poolVec2;
                     class_219.poolVec2 = _loc14_;
                     _loc23_ = _loc12_;
                     if(_loc23_.outer != null)
                     {
                        _loc23_.outer.zpp_inner = null;
                        _loc23_.outer = null;
                     }
                     _loc23_.var_103 = null;
                     _loc23_._validate = null;
                     _loc23_._invalidate = null;
                     _loc23_.next = ZPP_Vec2.var_72;
                     ZPP_Vec2.var_72 = _loc23_;
                  }
                  while(_loc22_ != _loc21_);
                  
               }
            }
            _loc12_ = _loc4_.zpp_inner;
            §§push(_loc3_);
            if(_loc12_._validate != null)
            {
               _loc12_._validate();
            }
            _loc12_ = _loc4_.zpp_inner;
            §§push(_loc4_.zpp_inner.x);
            if(_loc12_._validate != null)
            {
               _loc12_._validate();
            }
            §§pop().lineTo(§§pop(),_loc4_.zpp_inner.y);
            _loc12_ = _loc4_.zpp_inner;
            _loc4_.zpp_inner.outer = null;
            _loc4_.zpp_inner = null;
            _loc9_ = _loc4_;
            _loc9_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc9_;
            _loc23_ = _loc12_;
            if(_loc23_.outer != null)
            {
               _loc23_.outer.zpp_inner = null;
               _loc23_.outer = null;
            }
            _loc23_.var_103 = null;
            _loc23_._validate = null;
            _loc23_._invalidate = null;
            _loc23_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc23_;
         }
         _loc3_.endFill();
         if(param1 is Array)
         {
            _loc6_ = param1;
            _loc7_ = 0;
            while(_loc7_ < int(_loc6_.length))
            {
               _loc9_ = _loc6_[_loc7_];
               if(_loc9_.zpp_inner.name_5)
               {
                  _loc12_ = _loc9_.zpp_inner;
                  _loc9_.zpp_inner.outer = null;
                  _loc9_.zpp_inner = null;
                  _loc14_ = _loc9_;
                  _loc14_.var_72 = class_219.poolVec2;
                  class_219.poolVec2 = _loc14_;
                  _loc23_ = _loc12_;
                  if(_loc23_.outer != null)
                  {
                     _loc23_.outer.zpp_inner = null;
                     _loc23_.outer = null;
                  }
                  _loc23_.var_103 = null;
                  _loc23_._validate = null;
                  _loc23_._invalidate = null;
                  _loc23_.next = ZPP_Vec2.var_72;
                  ZPP_Vec2.var_72 = _loc23_;
                  §§push(true);
               }
               else
               {
                  §§push(false);
               }
               _loc6_.splice(_loc7_,1);
            }
         }
         else if(param1 is class_258.var_373)
         {
            _loc16_ = param1;
            if(!_loc16_.fixed)
            {
               _loc7_ = 0;
               while(_loc7_ < int(_loc16_.length))
               {
                  _loc9_ = _loc16_[_loc7_];
                  if(_loc9_.zpp_inner.name_5)
                  {
                     _loc12_ = _loc9_.zpp_inner;
                     _loc9_.zpp_inner.outer = null;
                     _loc9_.zpp_inner = null;
                     _loc14_ = _loc9_;
                     _loc14_.var_72 = class_219.poolVec2;
                     class_219.poolVec2 = _loc14_;
                     _loc23_ = _loc12_;
                     if(_loc23_.outer != null)
                     {
                        _loc23_.outer.zpp_inner = null;
                        _loc23_.outer = null;
                     }
                     _loc23_.var_103 = null;
                     _loc23_._validate = null;
                     _loc23_._invalidate = null;
                     _loc23_.next = ZPP_Vec2.var_72;
                     ZPP_Vec2.var_72 = _loc23_;
                     §§push(true);
                  }
                  else
                  {
                     §§push(false);
                  }
                  _loc16_.splice(_loc7_,1);
               }
            }
         }
         else if(param1 is Vec2List)
         {
            _loc18_ = param1;
            if(_loc18_.zpp_inner._validate != null)
            {
               _loc18_.zpp_inner._validate();
            }
            _loc25_ = _loc18_.zpp_inner.name_4;
            _loc26_ = null;
            _loc27_ = _loc25_.var_73;
            while(_loc27_ != null)
            {
               _loc12_ = _loc27_.var_74;
               if(_loc12_.outer.zpp_inner.name_5)
               {
                  _loc27_ = _loc25_.erase(_loc26_);
                  if(_loc12_.outer.zpp_inner.name_5)
                  {
                     _loc9_ = _loc12_.outer;
                     _loc23_ = _loc9_.zpp_inner;
                     _loc9_.zpp_inner.outer = null;
                     _loc9_.zpp_inner = null;
                     _loc14_ = _loc9_;
                     _loc14_.var_72 = class_219.poolVec2;
                     class_219.poolVec2 = _loc14_;
                     _loc28_ = _loc23_;
                     if(_loc28_.outer != null)
                     {
                        _loc28_.outer.zpp_inner = null;
                        _loc28_.outer = null;
                     }
                     _loc28_.var_103 = null;
                     _loc28_._validate = null;
                     _loc28_._invalidate = null;
                     _loc28_.next = ZPP_Vec2.var_72;
                     ZPP_Vec2.var_72 = _loc28_;
                  }
                  else
                  {
                     false;
                  }
               }
               else
               {
                  _loc26_ = _loc27_;
                  _loc27_ = _loc27_.next;
               }
            }
         }
      }
      
      override public function method_305(param1:Vec2, param2:Number, param3:int) : void
      {
         var _loc5_:* = null as ZPP_Vec2;
         var _loc6_:* = null as Vec2;
         var _loc7_:* = null as ZPP_Vec2;
         var _loc8_:* = null as Vec2;
         var _loc4_:Graphics = var_85.graphics;
         _loc4_.lineStyle(0,0,0);
         _loc4_.beginFill(param3 & 16777215,1);
         if(zpp_inner.var_235)
         {
            _loc5_ = param1.zpp_inner;
            §§push(_loc4_);
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            _loc5_ = param1.zpp_inner;
            §§push(param1.zpp_inner.x);
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            §§pop().drawCircle(§§pop(),param1.zpp_inner.y,param2);
            if(param1.zpp_inner.name_5)
            {
               _loc5_ = param1.zpp_inner;
               param1.zpp_inner.outer = null;
               param1.zpp_inner = null;
               _loc6_ = param1;
               _loc6_.var_72 = class_219.poolVec2;
               class_219.poolVec2 = _loc6_;
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
            }
            else
            {
               false;
            }
         }
         else
         {
            _loc6_ = zpp_inner.var_125.outer.transform(param1);
            _loc5_ = _loc6_.zpp_inner;
            §§push(_loc4_);
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            _loc5_ = _loc6_.zpp_inner;
            §§push(_loc6_.zpp_inner.x);
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            §§pop().drawCircle(§§pop(),_loc6_.zpp_inner.y,param2 * zpp_inner.xdet);
            _loc5_ = _loc6_.zpp_inner;
            _loc6_.zpp_inner.outer = null;
            _loc6_.zpp_inner = null;
            _loc8_ = _loc6_;
            _loc8_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc8_;
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
         }
         _loc4_.endFill();
      }
      
      override public function method_171(param1:Vec2, param2:Vec2, param3:Vec2, param4:int) : void
      {
         var _loc6_:* = null as ZPP_Vec2;
         var _loc7_:* = null as Vec2;
         var _loc8_:* = null as ZPP_Vec2;
         var _loc9_:* = null as Vec2;
         var _loc10_:* = null as Vec2;
         var _loc11_:* = null as Vec2;
         var _loc5_:Graphics = var_85.graphics;
         _loc5_.lineStyle(thickness,param4 & 16777215,1);
         if(zpp_inner.var_235)
         {
            _loc6_ = param1.zpp_inner;
            §§push(_loc5_);
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc6_ = param1.zpp_inner;
            §§push(param1.zpp_inner.x);
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            §§pop().moveTo(§§pop(),param1.zpp_inner.y);
            _loc6_ = param2.zpp_inner;
            §§push(_loc5_);
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc6_ = param2.zpp_inner;
            §§push(param2.zpp_inner.x);
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc6_ = param3.zpp_inner;
            §§push(param2.zpp_inner.y);
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc6_ = param3.zpp_inner;
            §§push(param3.zpp_inner.x);
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            §§pop().curveTo(§§pop(),§§pop(),§§pop(),param3.zpp_inner.y);
            if(param1.zpp_inner.name_5)
            {
               _loc6_ = param1.zpp_inner;
               param1.zpp_inner.outer = null;
               param1.zpp_inner = null;
               _loc7_ = param1;
               _loc7_.var_72 = class_219.poolVec2;
               class_219.poolVec2 = _loc7_;
               _loc8_ = _loc6_;
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
               true;
            }
            else
            {
               false;
            }
            if(param2.zpp_inner.name_5)
            {
               _loc6_ = param2.zpp_inner;
               param2.zpp_inner.outer = null;
               param2.zpp_inner = null;
               _loc7_ = param2;
               _loc7_.var_72 = class_219.poolVec2;
               class_219.poolVec2 = _loc7_;
               _loc8_ = _loc6_;
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
               true;
            }
            else
            {
               false;
            }
            if(param3.zpp_inner.name_5)
            {
               _loc6_ = param3.zpp_inner;
               param3.zpp_inner.outer = null;
               param3.zpp_inner = null;
               _loc7_ = param3;
               _loc7_.var_72 = class_219.poolVec2;
               class_219.poolVec2 = _loc7_;
               _loc8_ = _loc6_;
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
            else
            {
               false;
            }
         }
         else
         {
            _loc7_ = zpp_inner.var_125.outer.transform(param1);
            _loc9_ = zpp_inner.var_125.outer.transform(param2);
            _loc10_ = zpp_inner.var_125.outer.transform(param3);
            _loc6_ = _loc7_.zpp_inner;
            §§push(_loc5_);
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc6_ = _loc7_.zpp_inner;
            §§push(_loc7_.zpp_inner.x);
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            §§pop().moveTo(§§pop(),_loc7_.zpp_inner.y);
            _loc6_ = _loc9_.zpp_inner;
            §§push(_loc5_);
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc6_ = _loc9_.zpp_inner;
            §§push(_loc9_.zpp_inner.x);
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc6_ = _loc10_.zpp_inner;
            §§push(_loc9_.zpp_inner.y);
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc6_ = _loc10_.zpp_inner;
            §§push(_loc10_.zpp_inner.x);
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            §§pop().curveTo(§§pop(),§§pop(),§§pop(),_loc10_.zpp_inner.y);
            _loc6_ = _loc7_.zpp_inner;
            _loc7_.zpp_inner.outer = null;
            _loc7_.zpp_inner = null;
            _loc11_ = _loc7_;
            _loc11_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc11_;
            _loc8_ = _loc6_;
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
            _loc6_ = _loc9_.zpp_inner;
            _loc9_.zpp_inner.outer = null;
            _loc9_.zpp_inner = null;
            _loc11_ = _loc9_;
            _loc11_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc11_;
            _loc8_ = _loc6_;
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
            _loc6_ = _loc10_.zpp_inner;
            _loc10_.zpp_inner.outer = null;
            _loc10_.zpp_inner = null;
            _loc11_ = _loc10_;
            _loc11_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc11_;
            _loc8_ = _loc6_;
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
      }
      
      override public function drawCircle(param1:Vec2, param2:Number, param3:int) : void
      {
         var _loc5_:* = null as ZPP_Vec2;
         var _loc6_:* = null as Vec2;
         var _loc7_:* = null as ZPP_Vec2;
         var _loc8_:* = null as Vec2;
         var _loc4_:Graphics = var_85.graphics;
         _loc4_.lineStyle(thickness,param3 & 16777215,1);
         if(zpp_inner.var_235)
         {
            _loc5_ = param1.zpp_inner;
            §§push(_loc4_);
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            _loc5_ = param1.zpp_inner;
            §§push(param1.zpp_inner.x);
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            §§pop().drawCircle(§§pop(),param1.zpp_inner.y,param2);
            if(param1.zpp_inner.name_5)
            {
               _loc5_ = param1.zpp_inner;
               param1.zpp_inner.outer = null;
               param1.zpp_inner = null;
               _loc6_ = param1;
               _loc6_.var_72 = class_219.poolVec2;
               class_219.poolVec2 = _loc6_;
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
            }
            else
            {
               false;
            }
         }
         else
         {
            _loc6_ = zpp_inner.var_125.outer.transform(param1);
            _loc5_ = _loc6_.zpp_inner;
            §§push(_loc4_);
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            _loc5_ = _loc6_.zpp_inner;
            §§push(_loc6_.zpp_inner.x);
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            §§pop().drawCircle(§§pop(),_loc6_.zpp_inner.y,param2 * zpp_inner.xdet);
            _loc5_ = _loc6_.zpp_inner;
            _loc6_.zpp_inner.outer = null;
            _loc6_.zpp_inner = null;
            _loc8_ = _loc6_;
            _loc8_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc8_;
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
         }
      }
      
      override public function method_468(param1:class_237, param2:int) : void
      {
         var _loc4_:* = null as ZPP_AABB;
         var _loc5_:* = null as Vec2;
         var _loc6_:* = null as Vec2;
         var _loc7_:Number = NaN;
         var _loc8_:Boolean = false;
         var _loc9_:* = null as Vec2;
         var _loc10_:Boolean = false;
         var _loc11_:* = null as ZPP_Vec2;
         var _loc12_:* = null as Vec2;
         var _loc13_:* = null as Vec2;
         var _loc14_:* = null as Vec2;
         var _loc15_:* = null as ZPP_Vec2;
         var _loc3_:Graphics = var_85.graphics;
         _loc3_.lineStyle(thickness,param2 & 16777215,1);
         if(zpp_inner.var_235)
         {
            _loc4_ = param1.zpp_inner;
            §§push(_loc3_);
            if(_loc4_._validate != null)
            {
               _loc4_._validate();
            }
            _loc4_ = param1.zpp_inner;
            §§push(param1.zpp_inner.var_77);
            if(_loc4_._validate != null)
            {
               _loc4_._validate();
            }
            _loc4_ = param1.zpp_inner;
            §§push(param1.zpp_inner.var_78);
            if(_loc4_._validate != null)
            {
               _loc4_._validate();
            }
            _loc4_ = param1.zpp_inner;
            _loc4_ = param1.zpp_inner;
            §§push(_loc4_.var_79 - _loc4_.var_77);
            if(_loc4_._validate != null)
            {
               _loc4_._validate();
            }
            _loc4_ = param1.zpp_inner;
            §§pop().drawRect(§§pop(),§§pop(),§§pop(),_loc4_.var_80 - _loc4_.var_78);
         }
         else
         {
            _loc5_ = zpp_inner.var_125.outer.transform(param1.zpp_inner.method_301());
            _loc4_ = param1.zpp_inner;
            if(_loc4_._validate != null)
            {
               _loc4_._validate();
            }
            _loc4_ = param1.zpp_inner;
            _loc7_ = _loc4_.var_79 - _loc4_.var_77;
            _loc8_ = false;
            if(class_219.poolVec2 == null)
            {
               _loc9_ = new Vec2();
            }
            else
            {
               _loc9_ = class_219.poolVec2;
               class_219.poolVec2 = _loc9_.var_72;
               _loc9_.var_72 = null;
            }
            if(_loc9_.zpp_inner == null)
            {
               _loc10_ = false;
               if(ZPP_Vec2.var_72 == null)
               {
                  _loc11_ = new ZPP_Vec2();
               }
               else
               {
                  _loc11_ = ZPP_Vec2.var_72;
                  ZPP_Vec2.var_72 = _loc11_.next;
                  _loc11_.next = null;
               }
               _loc11_.name_5 = false;
               _loc11_.var_109 = _loc10_;
               _loc11_.x = _loc7_;
               _loc11_.y = 0;
               _loc9_.zpp_inner = _loc11_;
               _loc9_.zpp_inner.outer = _loc9_;
            }
            else
            {
               _loc11_ = _loc9_.zpp_inner;
               §§push(false);
               if(_loc11_._validate != null)
               {
                  _loc11_._validate();
               }
               if(_loc9_.zpp_inner.x == _loc7_)
               {
                  §§pop();
                  _loc11_ = _loc9_.zpp_inner;
                  if(_loc11_._validate != null)
                  {
                     _loc11_._validate();
                  }
                  §§push(_loc9_.zpp_inner.y == 0);
               }
               if(!§§pop())
               {
                  _loc9_.zpp_inner.x = _loc7_;
                  _loc9_.zpp_inner.y = 0;
                  _loc11_ = _loc9_.zpp_inner;
                  if(_loc11_._invalidate != null)
                  {
                     _loc11_._invalidate(_loc11_);
                  }
               }
               _loc9_;
            }
            _loc9_.zpp_inner.name_5 = _loc8_;
            _loc6_ = _loc9_;
            _loc9_ = zpp_inner.var_125.outer.transform(_loc6_,true);
            _loc4_ = param1.zpp_inner;
            if(_loc4_._validate != null)
            {
               _loc4_._validate();
            }
            _loc4_ = param1.zpp_inner;
            _loc7_ = _loc4_.var_80 - _loc4_.var_78;
            _loc8_ = false;
            if(class_219.poolVec2 == null)
            {
               _loc13_ = new Vec2();
            }
            else
            {
               _loc13_ = class_219.poolVec2;
               class_219.poolVec2 = _loc13_.var_72;
               _loc13_.var_72 = null;
            }
            if(_loc13_.zpp_inner == null)
            {
               _loc10_ = false;
               if(ZPP_Vec2.var_72 == null)
               {
                  _loc11_ = new ZPP_Vec2();
               }
               else
               {
                  _loc11_ = ZPP_Vec2.var_72;
                  ZPP_Vec2.var_72 = _loc11_.next;
                  _loc11_.next = null;
               }
               _loc11_.name_5 = false;
               _loc11_.var_109 = _loc10_;
               _loc11_.x = 0;
               _loc11_.y = _loc7_;
               _loc13_.zpp_inner = _loc11_;
               _loc13_.zpp_inner.outer = _loc13_;
            }
            else
            {
               _loc11_ = _loc13_.zpp_inner;
               §§push(false);
               if(_loc11_._validate != null)
               {
                  _loc11_._validate();
               }
               if(_loc13_.zpp_inner.x == 0)
               {
                  §§pop();
                  _loc11_ = _loc13_.zpp_inner;
                  if(_loc11_._validate != null)
                  {
                     _loc11_._validate();
                  }
                  §§push(_loc13_.zpp_inner.y == _loc7_);
               }
               if(!§§pop())
               {
                  _loc13_.zpp_inner.x = 0;
                  _loc13_.zpp_inner.y = _loc7_;
                  _loc11_ = _loc13_.zpp_inner;
                  if(_loc11_._invalidate != null)
                  {
                     _loc11_._invalidate(_loc11_);
                  }
               }
               _loc13_;
            }
            _loc13_.zpp_inner.name_5 = _loc8_;
            _loc12_ = _loc13_;
            _loc13_ = zpp_inner.var_125.outer.transform(_loc12_,true);
            _loc11_ = _loc5_.zpp_inner;
            §§push(_loc3_);
            if(_loc11_._validate != null)
            {
               _loc11_._validate();
            }
            _loc11_ = _loc5_.zpp_inner;
            §§push(_loc5_.zpp_inner.x);
            if(_loc11_._validate != null)
            {
               _loc11_._validate();
            }
            §§pop().moveTo(§§pop(),_loc5_.zpp_inner.y);
            _loc11_ = _loc5_.zpp_inner;
            §§push(_loc3_);
            if(_loc11_._validate != null)
            {
               _loc11_._validate();
            }
            _loc11_ = _loc9_.zpp_inner;
            §§push(_loc5_.zpp_inner.x);
            if(_loc11_._validate != null)
            {
               _loc11_._validate();
            }
            _loc11_ = _loc5_.zpp_inner;
            §§push(Number(§§pop() + _loc9_.zpp_inner.x));
            if(_loc11_._validate != null)
            {
               _loc11_._validate();
            }
            _loc11_ = _loc9_.zpp_inner;
            §§push(_loc5_.zpp_inner.y);
            if(_loc11_._validate != null)
            {
               _loc11_._validate();
            }
            §§pop().lineTo(§§pop(),Number(§§pop() + _loc9_.zpp_inner.y));
            _loc11_ = _loc5_.zpp_inner;
            §§push(_loc3_);
            if(_loc11_._validate != null)
            {
               _loc11_._validate();
            }
            _loc11_ = _loc9_.zpp_inner;
            §§push(_loc5_.zpp_inner.x);
            if(_loc11_._validate != null)
            {
               _loc11_._validate();
            }
            _loc11_ = _loc13_.zpp_inner;
            §§push(Number(§§pop() + _loc9_.zpp_inner.x));
            if(_loc11_._validate != null)
            {
               _loc11_._validate();
            }
            _loc11_ = _loc5_.zpp_inner;
            §§push(Number(§§pop() + _loc13_.zpp_inner.x));
            if(_loc11_._validate != null)
            {
               _loc11_._validate();
            }
            _loc11_ = _loc9_.zpp_inner;
            §§push(_loc5_.zpp_inner.y);
            if(_loc11_._validate != null)
            {
               _loc11_._validate();
            }
            _loc11_ = _loc13_.zpp_inner;
            §§push(Number(§§pop() + _loc9_.zpp_inner.y));
            if(_loc11_._validate != null)
            {
               _loc11_._validate();
            }
            §§pop().lineTo(§§pop(),Number(§§pop() + _loc13_.zpp_inner.y));
            _loc11_ = _loc5_.zpp_inner;
            §§push(_loc3_);
            if(_loc11_._validate != null)
            {
               _loc11_._validate();
            }
            _loc11_ = _loc13_.zpp_inner;
            §§push(_loc5_.zpp_inner.x);
            if(_loc11_._validate != null)
            {
               _loc11_._validate();
            }
            _loc11_ = _loc5_.zpp_inner;
            §§push(Number(§§pop() + _loc13_.zpp_inner.x));
            if(_loc11_._validate != null)
            {
               _loc11_._validate();
            }
            _loc11_ = _loc13_.zpp_inner;
            §§push(_loc5_.zpp_inner.y);
            if(_loc11_._validate != null)
            {
               _loc11_._validate();
            }
            §§pop().lineTo(§§pop(),Number(§§pop() + _loc13_.zpp_inner.y));
            _loc11_ = _loc5_.zpp_inner;
            §§push(_loc3_);
            if(_loc11_._validate != null)
            {
               _loc11_._validate();
            }
            _loc11_ = _loc5_.zpp_inner;
            §§push(_loc5_.zpp_inner.x);
            if(_loc11_._validate != null)
            {
               _loc11_._validate();
            }
            §§pop().lineTo(§§pop(),_loc5_.zpp_inner.y);
            _loc11_ = _loc5_.zpp_inner;
            _loc5_.zpp_inner.outer = null;
            _loc5_.zpp_inner = null;
            _loc14_ = _loc5_;
            _loc14_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc14_;
            _loc15_ = _loc11_;
            if(_loc15_.outer != null)
            {
               _loc15_.outer.zpp_inner = null;
               _loc15_.outer = null;
            }
            _loc15_.var_103 = null;
            _loc15_._validate = null;
            _loc15_._invalidate = null;
            _loc15_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc15_;
            _loc11_ = _loc6_.zpp_inner;
            _loc6_.zpp_inner.outer = null;
            _loc6_.zpp_inner = null;
            _loc14_ = _loc6_;
            _loc14_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc14_;
            _loc15_ = _loc11_;
            if(_loc15_.outer != null)
            {
               _loc15_.outer.zpp_inner = null;
               _loc15_.outer = null;
            }
            _loc15_.var_103 = null;
            _loc15_._validate = null;
            _loc15_._invalidate = null;
            _loc15_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc15_;
            _loc11_ = _loc9_.zpp_inner;
            _loc9_.zpp_inner.outer = null;
            _loc9_.zpp_inner = null;
            _loc14_ = _loc9_;
            _loc14_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc14_;
            _loc15_ = _loc11_;
            if(_loc15_.outer != null)
            {
               _loc15_.outer.zpp_inner = null;
               _loc15_.outer = null;
            }
            _loc15_.var_103 = null;
            _loc15_._validate = null;
            _loc15_._invalidate = null;
            _loc15_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc15_;
            _loc11_ = _loc12_.zpp_inner;
            _loc12_.zpp_inner.outer = null;
            _loc12_.zpp_inner = null;
            _loc14_ = _loc12_;
            _loc14_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc14_;
            _loc15_ = _loc11_;
            if(_loc15_.outer != null)
            {
               _loc15_.outer.zpp_inner = null;
               _loc15_.outer = null;
            }
            _loc15_.var_103 = null;
            _loc15_._validate = null;
            _loc15_._invalidate = null;
            _loc15_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc15_;
            _loc11_ = _loc13_.zpp_inner;
            _loc13_.zpp_inner.outer = null;
            _loc13_.zpp_inner = null;
            _loc14_ = _loc13_;
            _loc14_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc14_;
            _loc15_ = _loc11_;
            if(_loc15_.outer != null)
            {
               _loc15_.outer.zpp_inner = null;
               _loc15_.outer = null;
            }
            _loc15_.var_103 = null;
            _loc15_._validate = null;
            _loc15_._invalidate = null;
            _loc15_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc15_;
         }
      }
      
      override public function draw(param1:*) : void
      {
         if(zpp_inner.var_235)
         {
            if(param1 is class_197)
            {
               var_85.method_279(param1.zpp_inner,null,1,true);
            }
            else if(param1 is Compound)
            {
               var_85.method_224(param1.zpp_inner,null,1,true);
            }
            else if(param1 is Body)
            {
               var_85.method_130(param1.zpp_inner,null,1,true);
            }
            else if(param1 is Shape)
            {
               var_85.method_154(param1.zpp_inner,null,1,true);
            }
            else if(param1 is Constraint)
            {
               param1.zpp_inner.draw(this);
            }
         }
         else if(param1 is class_197)
         {
            var_85.method_279(param1.zpp_inner,zpp_inner.var_125,zpp_inner.xdet,false);
         }
         else if(param1 is Body)
         {
            var_85.method_130(param1.zpp_inner,zpp_inner.var_125,zpp_inner.xdet,false);
         }
         else if(param1 is Shape)
         {
            var_85.method_154(param1.zpp_inner,zpp_inner.var_125,zpp_inner.xdet,false);
         }
         else if(param1 is Constraint)
         {
            param1.zpp_inner.draw(this);
         }
      }
      
      override public function clear() : void
      {
         var_85.graphics.clear();
      }
   }
}
