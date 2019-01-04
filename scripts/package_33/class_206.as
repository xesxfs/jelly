package package_33
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
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
   import zpp_nape.util.class_276;
   
   public final class class_206 extends Debug
   {
       
      
      public var var_85:class_276;
      
      public function class_206(param1:int, param2:int, param3:int = 3355443, param4:Boolean = false)
      {
         var_85 = null;
         super();
         var_85 = new class_276(param1,param2,param3,param4);
         var_85.outer_zn = this;
         zpp_inner = var_85;
         zpp_inner.outer = this;
      }
      
      public final function method_463() : void
      {
         var_85.method_463();
      }
      
      override public function flush() : void
      {
         var_85.flush();
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
         var _loc9_:* = null as Array;
         var _loc10_:int = 0;
         var _loc11_:* = null;
         var _loc12_:* = null as Vec2;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:* = false;
         var _loc16_:* = null as ZPP_Vec2;
         var _loc17_:Boolean = false;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:* = null as Vec2;
         var _loc21_:Boolean = false;
         var _loc22_:* = null as Vec2;
         var _loc23_:* = null as ZPP_Vec2;
         var _loc24_:* = null as Vector.<Vec2>;
         var _loc25_:* = null as Vec2;
         var _loc26_:* = null as Vec2List;
         var _loc27_:* = null as Vec2Iterator;
         var _loc28_:* = null as class_260;
         var _loc29_:* = null as ZPP_GeomVert;
         var _loc30_:* = null as ZPP_GeomVert;
         var _loc31_:* = null as class_259;
         var _loc32_:* = null as ZNPNode_ZPP_Vec2;
         var _loc33_:* = null as ZNPNode_ZPP_Vec2;
         var _loc34_:* = null as ZPP_Vec2;
         var _loc3_:* = param2 | -16777216;
         var _loc6_:* = null;
         var _loc8_:int = 0;
         var _loc7_:* = int(_loc8_);
         var _loc5_:int = _loc7_;
         var _loc4_:int = _loc5_;
         if(param1 is Array)
         {
            _loc9_ = param1;
            _loc10_ = 0;
            while(_loc10_ < int(_loc9_.length))
            {
               _loc11_ = _loc9_[_loc10_];
               _loc10_++;
               _loc12_ = _loc11_;
               _loc15_ = _loc6_ == null;
               if(zpp_inner.var_235)
               {
                  _loc16_ = _loc12_.zpp_inner;
                  if(_loc16_._validate != null)
                  {
                     _loc16_._validate();
                  }
                  _loc13_ = Number(_loc12_.zpp_inner.x + 0.5);
                  _loc16_ = _loc12_.zpp_inner;
                  if(_loc16_._validate != null)
                  {
                     _loc16_._validate();
                  }
                  _loc14_ = Number(_loc12_.zpp_inner.y + 0.5);
                  if(_loc15_)
                  {
                     _loc17_ = false;
                     _loc16_ = _loc12_.zpp_inner;
                     if(_loc16_._validate != null)
                     {
                        _loc16_._validate();
                     }
                     _loc18_ = _loc12_.zpp_inner.x;
                     _loc16_ = _loc12_.zpp_inner;
                     if(_loc16_._validate != null)
                     {
                        _loc16_._validate();
                     }
                     _loc19_ = _loc12_.zpp_inner.y;
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
                        _loc21_ = false;
                        if(ZPP_Vec2.var_72 == null)
                        {
                           _loc16_ = new ZPP_Vec2();
                        }
                        else
                        {
                           _loc16_ = ZPP_Vec2.var_72;
                           ZPP_Vec2.var_72 = _loc16_.next;
                           _loc16_.next = null;
                        }
                        _loc16_.name_5 = false;
                        _loc16_.var_109 = _loc21_;
                        _loc16_.x = _loc18_;
                        _loc16_.y = _loc19_;
                        _loc20_.zpp_inner = _loc16_;
                        _loc20_.zpp_inner.outer = _loc20_;
                     }
                     else
                     {
                        _loc16_ = _loc20_.zpp_inner;
                        §§push(false);
                        if(_loc16_._validate != null)
                        {
                           _loc16_._validate();
                        }
                        if(_loc20_.zpp_inner.x == _loc18_)
                        {
                           §§pop();
                           _loc16_ = _loc20_.zpp_inner;
                           if(_loc16_._validate != null)
                           {
                              _loc16_._validate();
                           }
                           §§push(_loc20_.zpp_inner.y == _loc19_);
                        }
                        if(!§§pop())
                        {
                           _loc20_.zpp_inner.x = _loc18_;
                           _loc20_.zpp_inner.y = _loc19_;
                           _loc16_ = _loc20_.zpp_inner;
                           if(_loc16_._invalidate != null)
                           {
                              _loc16_._invalidate(_loc16_);
                           }
                        }
                        _loc20_;
                     }
                     _loc20_.zpp_inner.name_5 = _loc17_;
                     _loc6_ = _loc20_;
                  }
               }
               else
               {
                  _loc20_ = zpp_inner.var_125.outer.transform(_loc12_);
                  _loc16_ = _loc20_.zpp_inner;
                  if(_loc16_._validate != null)
                  {
                     _loc16_._validate();
                  }
                  _loc13_ = Number(_loc20_.zpp_inner.x + 0.5);
                  _loc16_ = _loc20_.zpp_inner;
                  if(_loc16_._validate != null)
                  {
                     _loc16_._validate();
                  }
                  _loc14_ = Number(_loc20_.zpp_inner.y + 0.5);
                  if(_loc15_)
                  {
                     _loc6_ = _loc20_;
                  }
                  else
                  {
                     _loc16_ = _loc20_.zpp_inner;
                     _loc20_.zpp_inner.outer = null;
                     _loc20_.zpp_inner = null;
                     _loc22_ = _loc20_;
                     _loc22_.var_72 = class_219.poolVec2;
                     class_219.poolVec2 = _loc22_;
                     _loc23_ = _loc16_;
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
               }
               if(_loc15_)
               {
                  _loc7_ = int(_loc13_);
                  _loc4_ = int(_loc13_);
                  _loc8_ = _loc14_;
                  _loc5_ = _loc8_;
               }
               else
               {
                  var_85.method_110(_loc7_,_loc8_,_loc13_,_loc14_,_loc3_);
                  _loc7_ = int(_loc13_);
                  _loc8_ = _loc14_;
               }
            }
         }
         else if(param1 is class_258.var_373)
         {
            _loc24_ = param1;
            _loc10_ = 0;
            while(_loc10_ < int(_loc24_.length))
            {
               _loc12_ = _loc24_[_loc10_];
               _loc10_++;
               _loc20_ = _loc12_;
               _loc15_ = _loc6_ == null;
               if(zpp_inner.var_235)
               {
                  _loc16_ = _loc20_.zpp_inner;
                  if(_loc16_._validate != null)
                  {
                     _loc16_._validate();
                  }
                  _loc13_ = Number(_loc20_.zpp_inner.x + 0.5);
                  _loc16_ = _loc20_.zpp_inner;
                  if(_loc16_._validate != null)
                  {
                     _loc16_._validate();
                  }
                  _loc14_ = Number(_loc20_.zpp_inner.y + 0.5);
                  if(_loc15_)
                  {
                     _loc17_ = false;
                     _loc16_ = _loc20_.zpp_inner;
                     if(_loc16_._validate != null)
                     {
                        _loc16_._validate();
                     }
                     _loc18_ = _loc20_.zpp_inner.x;
                     _loc16_ = _loc20_.zpp_inner;
                     if(_loc16_._validate != null)
                     {
                        _loc16_._validate();
                     }
                     _loc19_ = _loc20_.zpp_inner.y;
                     if(class_219.poolVec2 == null)
                     {
                        _loc22_ = new Vec2();
                     }
                     else
                     {
                        _loc22_ = class_219.poolVec2;
                        class_219.poolVec2 = _loc22_.var_72;
                        _loc22_.var_72 = null;
                     }
                     if(_loc22_.zpp_inner == null)
                     {
                        _loc21_ = false;
                        if(ZPP_Vec2.var_72 == null)
                        {
                           _loc16_ = new ZPP_Vec2();
                        }
                        else
                        {
                           _loc16_ = ZPP_Vec2.var_72;
                           ZPP_Vec2.var_72 = _loc16_.next;
                           _loc16_.next = null;
                        }
                        _loc16_.name_5 = false;
                        _loc16_.var_109 = _loc21_;
                        _loc16_.x = _loc18_;
                        _loc16_.y = _loc19_;
                        _loc22_.zpp_inner = _loc16_;
                        _loc22_.zpp_inner.outer = _loc22_;
                     }
                     else
                     {
                        _loc16_ = _loc22_.zpp_inner;
                        §§push(false);
                        if(_loc16_._validate != null)
                        {
                           _loc16_._validate();
                        }
                        if(_loc22_.zpp_inner.x == _loc18_)
                        {
                           §§pop();
                           _loc16_ = _loc22_.zpp_inner;
                           if(_loc16_._validate != null)
                           {
                              _loc16_._validate();
                           }
                           §§push(_loc22_.zpp_inner.y == _loc19_);
                        }
                        if(!§§pop())
                        {
                           _loc22_.zpp_inner.x = _loc18_;
                           _loc22_.zpp_inner.y = _loc19_;
                           _loc16_ = _loc22_.zpp_inner;
                           if(_loc16_._invalidate != null)
                           {
                              _loc16_._invalidate(_loc16_);
                           }
                        }
                        _loc22_;
                     }
                     _loc22_.zpp_inner.name_5 = _loc17_;
                     _loc6_ = _loc22_;
                  }
               }
               else
               {
                  _loc22_ = zpp_inner.var_125.outer.transform(_loc20_);
                  _loc16_ = _loc22_.zpp_inner;
                  if(_loc16_._validate != null)
                  {
                     _loc16_._validate();
                  }
                  _loc13_ = Number(_loc22_.zpp_inner.x + 0.5);
                  _loc16_ = _loc22_.zpp_inner;
                  if(_loc16_._validate != null)
                  {
                     _loc16_._validate();
                  }
                  _loc14_ = Number(_loc22_.zpp_inner.y + 0.5);
                  if(_loc15_)
                  {
                     _loc6_ = _loc22_;
                  }
                  else
                  {
                     _loc16_ = _loc22_.zpp_inner;
                     _loc22_.zpp_inner.outer = null;
                     _loc22_.zpp_inner = null;
                     _loc25_ = _loc22_;
                     _loc25_.var_72 = class_219.poolVec2;
                     class_219.poolVec2 = _loc25_;
                     _loc23_ = _loc16_;
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
               }
               if(_loc15_)
               {
                  _loc7_ = int(_loc13_);
                  _loc4_ = int(_loc13_);
                  _loc8_ = _loc14_;
                  _loc5_ = _loc8_;
               }
               else
               {
                  var_85.method_110(_loc7_,_loc8_,_loc13_,_loc14_,_loc3_);
                  _loc7_ = int(_loc13_);
                  _loc8_ = _loc14_;
               }
            }
         }
         else if(param1 is Vec2List)
         {
            _loc26_ = param1;
            _loc27_ = _loc26_.iterator();
            _loc27_.zpp_inner.zpp_inner.method_104();
            _loc10_ = _loc27_.zpp_inner.method_108();
            _loc27_.var_98 = true;
            if(_loc27_.var_90 < _loc10_)
            {
               §§push(true);
            }
            else
            {
               _loc27_.var_106 = Vec2Iterator.var_72;
               Vec2Iterator.var_72 = _loc27_;
               _loc27_.zpp_inner = null;
               §§push(false);
            }
         }
         else if(param1 is class_260)
         {
            _loc28_ = param1;
            _loc29_ = _loc28_.zpp_inner.vertices;
            if(_loc29_ != null)
            {
               _loc30_ = _loc29_;
               do
               {
                  _loc18_ = _loc30_.x;
                  _loc19_ = _loc30_.y;
                  _loc15_ = false;
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
                     _loc17_ = false;
                     if(ZPP_Vec2.var_72 == null)
                     {
                        _loc16_ = new ZPP_Vec2();
                     }
                     else
                     {
                        _loc16_ = ZPP_Vec2.var_72;
                        ZPP_Vec2.var_72 = _loc16_.next;
                        _loc16_.next = null;
                     }
                     _loc16_.name_5 = false;
                     _loc16_.var_109 = _loc17_;
                     _loc16_.x = _loc18_;
                     _loc16_.y = _loc19_;
                     _loc20_.zpp_inner = _loc16_;
                     _loc20_.zpp_inner.outer = _loc20_;
                  }
                  else
                  {
                     _loc16_ = _loc20_.zpp_inner;
                     §§push(false);
                     if(_loc16_._validate != null)
                     {
                        _loc16_._validate();
                     }
                     if(_loc20_.zpp_inner.x == _loc18_)
                     {
                        §§pop();
                        _loc16_ = _loc20_.zpp_inner;
                        if(_loc16_._validate != null)
                        {
                           _loc16_._validate();
                        }
                        §§push(_loc20_.zpp_inner.y == _loc19_);
                     }
                     if(!§§pop())
                     {
                        _loc20_.zpp_inner.x = _loc18_;
                        _loc20_.zpp_inner.y = _loc19_;
                        _loc16_ = _loc20_.zpp_inner;
                        if(_loc16_._invalidate != null)
                        {
                           _loc16_._invalidate(_loc16_);
                        }
                     }
                     _loc20_;
                  }
                  _loc20_.zpp_inner.name_5 = _loc15_;
                  _loc12_ = _loc20_;
                  _loc30_ = _loc30_.next;
                  _loc15_ = _loc6_ == null;
                  if(zpp_inner.var_235)
                  {
                     _loc16_ = _loc12_.zpp_inner;
                     if(_loc16_._validate != null)
                     {
                        _loc16_._validate();
                     }
                     _loc10_ = Number(_loc12_.zpp_inner.x + 0.5);
                     _loc16_ = _loc12_.zpp_inner;
                     if(_loc16_._validate != null)
                     {
                        _loc16_._validate();
                     }
                     _loc13_ = Number(_loc12_.zpp_inner.y + 0.5);
                     if(_loc15_)
                     {
                        _loc17_ = false;
                        _loc16_ = _loc12_.zpp_inner;
                        if(_loc16_._validate != null)
                        {
                           _loc16_._validate();
                        }
                        _loc18_ = _loc12_.zpp_inner.x;
                        _loc16_ = _loc12_.zpp_inner;
                        if(_loc16_._validate != null)
                        {
                           _loc16_._validate();
                        }
                        _loc19_ = _loc12_.zpp_inner.y;
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
                           _loc21_ = false;
                           if(ZPP_Vec2.var_72 == null)
                           {
                              _loc16_ = new ZPP_Vec2();
                           }
                           else
                           {
                              _loc16_ = ZPP_Vec2.var_72;
                              ZPP_Vec2.var_72 = _loc16_.next;
                              _loc16_.next = null;
                           }
                           _loc16_.name_5 = false;
                           _loc16_.var_109 = _loc21_;
                           _loc16_.x = _loc18_;
                           _loc16_.y = _loc19_;
                           _loc20_.zpp_inner = _loc16_;
                           _loc20_.zpp_inner.outer = _loc20_;
                        }
                        else
                        {
                           _loc16_ = _loc20_.zpp_inner;
                           §§push(false);
                           if(_loc16_._validate != null)
                           {
                              _loc16_._validate();
                           }
                           if(_loc20_.zpp_inner.x == _loc18_)
                           {
                              §§pop();
                              _loc16_ = _loc20_.zpp_inner;
                              if(_loc16_._validate != null)
                              {
                                 _loc16_._validate();
                              }
                              §§push(_loc20_.zpp_inner.y == _loc19_);
                           }
                           if(!§§pop())
                           {
                              _loc20_.zpp_inner.x = _loc18_;
                              _loc20_.zpp_inner.y = _loc19_;
                              _loc16_ = _loc20_.zpp_inner;
                              if(_loc16_._invalidate != null)
                              {
                                 _loc16_._invalidate(_loc16_);
                              }
                           }
                           _loc20_;
                        }
                        _loc20_.zpp_inner.name_5 = _loc17_;
                        _loc6_ = _loc20_;
                     }
                  }
                  else
                  {
                     _loc20_ = zpp_inner.var_125.outer.transform(_loc12_);
                     _loc16_ = _loc20_.zpp_inner;
                     if(_loc16_._validate != null)
                     {
                        _loc16_._validate();
                     }
                     _loc10_ = Number(_loc20_.zpp_inner.x + 0.5);
                     _loc16_ = _loc20_.zpp_inner;
                     if(_loc16_._validate != null)
                     {
                        _loc16_._validate();
                     }
                     _loc13_ = Number(_loc20_.zpp_inner.y + 0.5);
                     if(_loc15_)
                     {
                        _loc6_ = _loc20_;
                     }
                     else
                     {
                        _loc16_ = _loc20_.zpp_inner;
                        _loc20_.zpp_inner.outer = null;
                        _loc20_.zpp_inner = null;
                        _loc22_ = _loc20_;
                        _loc22_.var_72 = class_219.poolVec2;
                        class_219.poolVec2 = _loc22_;
                        _loc23_ = _loc16_;
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
                  }
                  if(_loc15_)
                  {
                     _loc7_ = int(_loc10_);
                     _loc4_ = int(_loc10_);
                     _loc8_ = _loc13_;
                     _loc5_ = _loc8_;
                  }
                  else
                  {
                     var_85.method_110(_loc7_,_loc8_,_loc10_,_loc13_,_loc3_);
                     _loc7_ = int(_loc10_);
                     _loc8_ = _loc13_;
                  }
                  _loc16_ = _loc12_.zpp_inner;
                  _loc12_.zpp_inner.outer = null;
                  _loc12_.zpp_inner = null;
                  _loc20_ = _loc12_;
                  _loc20_.var_72 = class_219.poolVec2;
                  class_219.poolVec2 = _loc20_;
                  _loc23_ = _loc16_;
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
               while(_loc30_ != _loc29_);
               
            }
         }
         var_85.method_110(_loc7_,_loc8_,_loc4_,_loc5_,_loc3_);
         _loc16_ = _loc6_.zpp_inner;
         _loc6_.zpp_inner.outer = null;
         _loc6_.zpp_inner = null;
         _loc12_ = _loc6_;
         _loc12_.var_72 = class_219.poolVec2;
         class_219.poolVec2 = _loc12_;
         _loc23_ = _loc16_;
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
         if(param1 is Array)
         {
            _loc9_ = param1;
            _loc10_ = 0;
            while(_loc10_ < int(_loc9_.length))
            {
               _loc12_ = _loc9_[_loc10_];
               if(_loc12_.zpp_inner.name_5)
               {
                  _loc16_ = _loc12_.zpp_inner;
                  _loc12_.zpp_inner.outer = null;
                  _loc12_.zpp_inner = null;
                  _loc20_ = _loc12_;
                  _loc20_.var_72 = class_219.poolVec2;
                  class_219.poolVec2 = _loc20_;
                  _loc23_ = _loc16_;
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
               _loc9_.splice(_loc10_,1);
            }
         }
         else if(param1 is class_258.var_373)
         {
            _loc24_ = param1;
            if(!_loc24_.fixed)
            {
               _loc10_ = 0;
               while(_loc10_ < int(_loc24_.length))
               {
                  _loc12_ = _loc24_[_loc10_];
                  if(_loc12_.zpp_inner.name_5)
                  {
                     _loc16_ = _loc12_.zpp_inner;
                     _loc12_.zpp_inner.outer = null;
                     _loc12_.zpp_inner = null;
                     _loc20_ = _loc12_;
                     _loc20_.var_72 = class_219.poolVec2;
                     class_219.poolVec2 = _loc20_;
                     _loc23_ = _loc16_;
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
                  _loc24_.splice(_loc10_,1);
               }
            }
         }
         else if(param1 is Vec2List)
         {
            _loc26_ = param1;
            if(_loc26_.zpp_inner._validate != null)
            {
               _loc26_.zpp_inner._validate();
            }
            _loc31_ = _loc26_.zpp_inner.name_4;
            _loc32_ = null;
            _loc33_ = _loc31_.var_73;
            while(_loc33_ != null)
            {
               _loc16_ = _loc33_.var_74;
               if(_loc16_.outer.zpp_inner.name_5)
               {
                  _loc33_ = _loc31_.erase(_loc32_);
                  if(_loc16_.outer.zpp_inner.name_5)
                  {
                     _loc12_ = _loc16_.outer;
                     _loc23_ = _loc12_.zpp_inner;
                     _loc12_.zpp_inner.outer = null;
                     _loc12_.zpp_inner = null;
                     _loc20_ = _loc12_;
                     _loc20_.var_72 = class_219.poolVec2;
                     class_219.poolVec2 = _loc20_;
                     _loc34_ = _loc23_;
                     if(_loc34_.outer != null)
                     {
                        _loc34_.outer.zpp_inner = null;
                        _loc34_.outer = null;
                     }
                     _loc34_.var_103 = null;
                     _loc34_._validate = null;
                     _loc34_._invalidate = null;
                     _loc34_.next = ZPP_Vec2.var_72;
                     ZPP_Vec2.var_72 = _loc34_;
                  }
                  else
                  {
                     false;
                  }
               }
               else
               {
                  _loc32_ = _loc33_;
                  _loc33_ = _loc33_.next;
               }
            }
         }
      }
      
      override public function method_253(param1:Vec2, param2:Vec2, param3:int) : void
      {
         var _loc4_:int = 0;
         var _loc5_:* = null as ZPP_Vec2;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:* = null as Vec2;
         var _loc10_:* = null as ZPP_Vec2;
         var _loc11_:* = null as Vec2;
         if(zpp_inner.var_235)
         {
            _loc5_ = param1.zpp_inner;
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            _loc4_ = Number(param1.zpp_inner.x + 0.5);
            _loc5_ = param1.zpp_inner;
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            _loc6_ = Number(param1.zpp_inner.y + 0.5);
            _loc5_ = param2.zpp_inner;
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            _loc7_ = Number(param2.zpp_inner.x + 0.5);
            _loc5_ = param2.zpp_inner;
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            _loc8_ = Number(param2.zpp_inner.y + 0.5);
            var_85.method_110(_loc4_,_loc6_,_loc7_,_loc8_,param3 | -16777216);
            if(param1.zpp_inner.name_5)
            {
               _loc5_ = param1.zpp_inner;
               param1.zpp_inner.outer = null;
               param1.zpp_inner = null;
               _loc9_ = param1;
               _loc9_.var_72 = class_219.poolVec2;
               class_219.poolVec2 = _loc9_;
               _loc10_ = _loc5_;
               if(_loc10_.outer != null)
               {
                  _loc10_.outer.zpp_inner = null;
                  _loc10_.outer = null;
               }
               _loc10_.var_103 = null;
               _loc10_._validate = null;
               _loc10_._invalidate = null;
               _loc10_.next = ZPP_Vec2.var_72;
               ZPP_Vec2.var_72 = _loc10_;
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
               _loc9_ = param2;
               _loc9_.var_72 = class_219.poolVec2;
               class_219.poolVec2 = _loc9_;
               _loc10_ = _loc5_;
               if(_loc10_.outer != null)
               {
                  _loc10_.outer.zpp_inner = null;
                  _loc10_.outer = null;
               }
               _loc10_.var_103 = null;
               _loc10_._validate = null;
               _loc10_._invalidate = null;
               _loc10_.next = ZPP_Vec2.var_72;
               ZPP_Vec2.var_72 = _loc10_;
            }
            else
            {
               false;
            }
         }
         else
         {
            _loc9_ = zpp_inner.var_125.outer.transform(param1);
            _loc5_ = _loc9_.zpp_inner;
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            _loc4_ = Number(_loc9_.zpp_inner.x + 0.5);
            _loc5_ = _loc9_.zpp_inner;
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            _loc6_ = Number(_loc9_.zpp_inner.y + 0.5);
            _loc5_ = _loc9_.zpp_inner;
            _loc9_.zpp_inner.outer = null;
            _loc9_.zpp_inner = null;
            _loc11_ = _loc9_;
            _loc11_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc11_;
            _loc10_ = _loc5_;
            if(_loc10_.outer != null)
            {
               _loc10_.outer.zpp_inner = null;
               _loc10_.outer = null;
            }
            _loc10_.var_103 = null;
            _loc10_._validate = null;
            _loc10_._invalidate = null;
            _loc10_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc10_;
            _loc9_ = zpp_inner.var_125.outer.transform(param2);
            _loc5_ = _loc9_.zpp_inner;
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            _loc7_ = Number(_loc9_.zpp_inner.x + 0.5);
            _loc5_ = _loc9_.zpp_inner;
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            _loc8_ = Number(_loc9_.zpp_inner.y + 0.5);
            _loc5_ = _loc9_.zpp_inner;
            _loc9_.zpp_inner.outer = null;
            _loc9_.zpp_inner = null;
            _loc11_ = _loc9_;
            _loc11_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc11_;
            _loc10_ = _loc5_;
            if(_loc10_.outer != null)
            {
               _loc10_.outer.zpp_inner = null;
               _loc10_.outer = null;
            }
            _loc10_.var_103 = null;
            _loc10_._validate = null;
            _loc10_._invalidate = null;
            _loc10_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc10_;
            var_85.method_110(_loc4_,_loc6_,_loc7_,_loc8_,param3 | -16777216);
         }
      }
      
      override public function method_456(param1:Vec2, param2:Vec2, param3:Vec2, param4:int) : void
      {
         var _loc5_:* = null as ZPP_Vec2;
         var _loc6_:* = null as Vec2;
         var _loc7_:* = null as ZPP_Vec2;
         var_85.method_656(param1,param2,param3,param4);
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
            true;
         }
         else
         {
            false;
         }
         if(param3.zpp_inner.name_5)
         {
            _loc5_ = param3.zpp_inner;
            param3.zpp_inner.outer = null;
            param3.zpp_inner = null;
            _loc6_ = param3;
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
      
      override public function method_445(param1:*, param2:int) : void
      {
         var _loc7_:* = null as Array;
         var _loc8_:int = 0;
         var _loc9_:* = null;
         var _loc10_:* = null as Vec2;
         var _loc11_:* = null as Vec2;
         var _loc12_:Boolean = false;
         var _loc13_:Number = NaN;
         var _loc14_:* = null as ZPP_Vec2;
         var _loc15_:Number = NaN;
         var _loc16_:* = null as Vec2;
         var _loc17_:Boolean = false;
         var _loc18_:* = null as Vector.<Vec2>;
         var _loc19_:* = null as Vec2;
         var _loc20_:* = null as Vec2List;
         var _loc21_:* = null as Vec2Iterator;
         var _loc22_:* = null as class_260;
         var _loc23_:* = null as ZPP_GeomVert;
         var _loc24_:* = null as ZPP_GeomVert;
         var _loc25_:* = null as ZPP_Vec2;
         var _loc26_:* = null as class_259;
         var _loc27_:* = null as ZNPNode_ZPP_Vec2;
         var _loc28_:* = null as ZNPNode_ZPP_Vec2;
         var _loc29_:* = null as ZPP_Vec2;
         var _loc33_:int = 0;
         var _loc34_:int = 0;
         var _loc35_:int = 0;
         var _loc36_:int = 0;
         var _loc37_:* = 0;
         var _loc38_:* = 0;
         var _loc39_:* = 0;
         var _loc40_:* = 0;
         var _loc41_:int = 0;
         var _loc42_:int = 0;
         var _loc3_:* = param2 | -16777216;
         var _loc4_:Number = Number(Math.POSITIVE_INFINITY);
         var _loc5_:Number = Number(Math.NEGATIVE_INFINITY);
         var _loc6_:Array = var_85.var_1051;
         if(param1 is Array)
         {
            _loc7_ = param1;
            _loc8_ = 0;
            while(_loc8_ < int(_loc7_.length))
            {
               _loc9_ = _loc7_[_loc8_];
               _loc8_++;
               _loc10_ = _loc9_;
               if(zpp_inner.var_235)
               {
                  _loc12_ = false;
                  _loc14_ = _loc10_.zpp_inner;
                  §§push(_loc6_);
                  if(_loc14_._validate != null)
                  {
                     _loc14_._validate();
                  }
                  _loc13_ = _loc10_.zpp_inner.x;
                  _loc14_ = _loc10_.zpp_inner;
                  if(_loc14_._validate != null)
                  {
                     _loc14_._validate();
                  }
                  _loc15_ = _loc10_.zpp_inner.y;
                  if(class_219.poolVec2 == null)
                  {
                     _loc16_ = new Vec2();
                  }
                  else
                  {
                     _loc16_ = class_219.poolVec2;
                     class_219.poolVec2 = _loc16_.var_72;
                     _loc16_.var_72 = null;
                  }
                  if(_loc16_.zpp_inner == null)
                  {
                     _loc17_ = false;
                     if(ZPP_Vec2.var_72 == null)
                     {
                        _loc14_ = new ZPP_Vec2();
                     }
                     else
                     {
                        _loc14_ = ZPP_Vec2.var_72;
                        ZPP_Vec2.var_72 = _loc14_.next;
                        _loc14_.next = null;
                     }
                     _loc14_.name_5 = false;
                     _loc14_.var_109 = _loc17_;
                     _loc14_.x = _loc13_;
                     _loc14_.y = _loc15_;
                     _loc16_.zpp_inner = _loc14_;
                     _loc16_.zpp_inner.outer = _loc16_;
                  }
                  else
                  {
                     _loc14_ = _loc16_.zpp_inner;
                     §§push(false);
                     if(_loc14_._validate != null)
                     {
                        _loc14_._validate();
                     }
                     if(_loc16_.zpp_inner.x == _loc13_)
                     {
                        §§pop();
                        _loc14_ = _loc16_.zpp_inner;
                        if(_loc14_._validate != null)
                        {
                           _loc14_._validate();
                        }
                        §§push(_loc16_.zpp_inner.y == _loc15_);
                     }
                     if(!§§pop())
                     {
                        _loc16_.zpp_inner.x = _loc13_;
                        _loc16_.zpp_inner.y = _loc15_;
                        _loc14_ = _loc16_.zpp_inner;
                        if(_loc14_._invalidate != null)
                        {
                           _loc14_._invalidate(_loc14_);
                        }
                     }
                     _loc16_;
                  }
                  _loc16_.zpp_inner.name_5 = _loc12_;
                  _loc11_ = _loc16_;
                  §§pop().push(_loc11_);
               }
               else
               {
                  _loc11_ = zpp_inner.var_125.outer.transform(_loc10_);
                  _loc6_.push(_loc11_);
               }
               _loc14_ = _loc11_.zpp_inner;
               if(_loc14_._validate != null)
               {
                  _loc14_._validate();
               }
               if(_loc11_.zpp_inner.y < _loc4_)
               {
                  _loc14_ = _loc11_.zpp_inner;
                  if(_loc14_._validate != null)
                  {
                     _loc14_._validate();
                  }
                  _loc4_ = _loc11_.zpp_inner.y;
               }
               _loc14_ = _loc11_.zpp_inner;
               if(_loc14_._validate != null)
               {
                  _loc14_._validate();
               }
               if(_loc11_.zpp_inner.y > _loc5_)
               {
                  _loc14_ = _loc11_.zpp_inner;
                  if(_loc14_._validate != null)
                  {
                     _loc14_._validate();
                  }
                  _loc5_ = _loc11_.zpp_inner.y;
               }
            }
         }
         else if(param1 is class_258.var_373)
         {
            _loc18_ = param1;
            _loc8_ = 0;
            while(_loc8_ < int(_loc18_.length))
            {
               _loc10_ = _loc18_[_loc8_];
               _loc8_++;
               _loc11_ = _loc10_;
               if(zpp_inner.var_235)
               {
                  _loc12_ = false;
                  _loc14_ = _loc11_.zpp_inner;
                  §§push(_loc6_);
                  if(_loc14_._validate != null)
                  {
                     _loc14_._validate();
                  }
                  _loc13_ = _loc11_.zpp_inner.x;
                  _loc14_ = _loc11_.zpp_inner;
                  if(_loc14_._validate != null)
                  {
                     _loc14_._validate();
                  }
                  _loc15_ = _loc11_.zpp_inner.y;
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
                     _loc17_ = false;
                     if(ZPP_Vec2.var_72 == null)
                     {
                        _loc14_ = new ZPP_Vec2();
                     }
                     else
                     {
                        _loc14_ = ZPP_Vec2.var_72;
                        ZPP_Vec2.var_72 = _loc14_.next;
                        _loc14_.next = null;
                     }
                     _loc14_.name_5 = false;
                     _loc14_.var_109 = _loc17_;
                     _loc14_.x = _loc13_;
                     _loc14_.y = _loc15_;
                     _loc19_.zpp_inner = _loc14_;
                     _loc19_.zpp_inner.outer = _loc19_;
                  }
                  else
                  {
                     _loc14_ = _loc19_.zpp_inner;
                     §§push(false);
                     if(_loc14_._validate != null)
                     {
                        _loc14_._validate();
                     }
                     if(_loc19_.zpp_inner.x == _loc13_)
                     {
                        §§pop();
                        _loc14_ = _loc19_.zpp_inner;
                        if(_loc14_._validate != null)
                        {
                           _loc14_._validate();
                        }
                        §§push(_loc19_.zpp_inner.y == _loc15_);
                     }
                     if(!§§pop())
                     {
                        _loc19_.zpp_inner.x = _loc13_;
                        _loc19_.zpp_inner.y = _loc15_;
                        _loc14_ = _loc19_.zpp_inner;
                        if(_loc14_._invalidate != null)
                        {
                           _loc14_._invalidate(_loc14_);
                        }
                     }
                     _loc19_;
                  }
                  _loc19_.zpp_inner.name_5 = _loc12_;
                  _loc16_ = _loc19_;
                  §§pop().push(_loc16_);
               }
               else
               {
                  _loc16_ = zpp_inner.var_125.outer.transform(_loc11_);
                  _loc6_.push(_loc16_);
               }
               _loc14_ = _loc16_.zpp_inner;
               if(_loc14_._validate != null)
               {
                  _loc14_._validate();
               }
               if(_loc16_.zpp_inner.y < _loc4_)
               {
                  _loc14_ = _loc16_.zpp_inner;
                  if(_loc14_._validate != null)
                  {
                     _loc14_._validate();
                  }
                  _loc4_ = _loc16_.zpp_inner.y;
               }
               _loc14_ = _loc16_.zpp_inner;
               if(_loc14_._validate != null)
               {
                  _loc14_._validate();
               }
               if(_loc16_.zpp_inner.y > _loc5_)
               {
                  _loc14_ = _loc16_.zpp_inner;
                  if(_loc14_._validate != null)
                  {
                     _loc14_._validate();
                  }
                  _loc5_ = _loc16_.zpp_inner.y;
               }
            }
         }
         else if(param1 is Vec2List)
         {
            _loc20_ = param1;
            _loc21_ = _loc20_.iterator();
            _loc21_.zpp_inner.zpp_inner.method_104();
            _loc8_ = _loc21_.zpp_inner.method_108();
            _loc21_.var_98 = true;
            if(_loc21_.var_90 < _loc8_)
            {
               §§push(true);
            }
            else
            {
               _loc21_.var_106 = Vec2Iterator.var_72;
               Vec2Iterator.var_72 = _loc21_;
               _loc21_.zpp_inner = null;
               §§push(false);
            }
         }
         else if(param1 is class_260)
         {
            _loc22_ = param1;
            _loc23_ = _loc22_.zpp_inner.vertices;
            if(_loc23_ != null)
            {
               _loc24_ = _loc23_;
               do
               {
                  _loc13_ = _loc24_.x;
                  _loc15_ = _loc24_.y;
                  _loc12_ = false;
                  if(class_219.poolVec2 == null)
                  {
                     _loc11_ = new Vec2();
                  }
                  else
                  {
                     _loc11_ = class_219.poolVec2;
                     class_219.poolVec2 = _loc11_.var_72;
                     _loc11_.var_72 = null;
                  }
                  if(_loc11_.zpp_inner == null)
                  {
                     _loc17_ = false;
                     if(ZPP_Vec2.var_72 == null)
                     {
                        _loc14_ = new ZPP_Vec2();
                     }
                     else
                     {
                        _loc14_ = ZPP_Vec2.var_72;
                        ZPP_Vec2.var_72 = _loc14_.next;
                        _loc14_.next = null;
                     }
                     _loc14_.name_5 = false;
                     _loc14_.var_109 = _loc17_;
                     _loc14_.x = _loc13_;
                     _loc14_.y = _loc15_;
                     _loc11_.zpp_inner = _loc14_;
                     _loc11_.zpp_inner.outer = _loc11_;
                  }
                  else
                  {
                     _loc14_ = _loc11_.zpp_inner;
                     §§push(false);
                     if(_loc14_._validate != null)
                     {
                        _loc14_._validate();
                     }
                     if(_loc11_.zpp_inner.x == _loc13_)
                     {
                        §§pop();
                        _loc14_ = _loc11_.zpp_inner;
                        if(_loc14_._validate != null)
                        {
                           _loc14_._validate();
                        }
                        §§push(_loc11_.zpp_inner.y == _loc15_);
                     }
                     if(!§§pop())
                     {
                        _loc11_.zpp_inner.x = _loc13_;
                        _loc11_.zpp_inner.y = _loc15_;
                        _loc14_ = _loc11_.zpp_inner;
                        if(_loc14_._invalidate != null)
                        {
                           _loc14_._invalidate(_loc14_);
                        }
                     }
                     _loc11_;
                  }
                  _loc11_.zpp_inner.name_5 = _loc12_;
                  _loc10_ = _loc11_;
                  _loc24_ = _loc24_.next;
                  if(zpp_inner.var_235)
                  {
                     _loc12_ = false;
                     _loc14_ = _loc10_.zpp_inner;
                     §§push(_loc6_);
                     if(_loc14_._validate != null)
                     {
                        _loc14_._validate();
                     }
                     _loc13_ = _loc10_.zpp_inner.x;
                     _loc14_ = _loc10_.zpp_inner;
                     if(_loc14_._validate != null)
                     {
                        _loc14_._validate();
                     }
                     _loc15_ = _loc10_.zpp_inner.y;
                     if(class_219.poolVec2 == null)
                     {
                        _loc16_ = new Vec2();
                     }
                     else
                     {
                        _loc16_ = class_219.poolVec2;
                        class_219.poolVec2 = _loc16_.var_72;
                        _loc16_.var_72 = null;
                     }
                     if(_loc16_.zpp_inner == null)
                     {
                        _loc17_ = false;
                        if(ZPP_Vec2.var_72 == null)
                        {
                           _loc14_ = new ZPP_Vec2();
                        }
                        else
                        {
                           _loc14_ = ZPP_Vec2.var_72;
                           ZPP_Vec2.var_72 = _loc14_.next;
                           _loc14_.next = null;
                        }
                        _loc14_.name_5 = false;
                        _loc14_.var_109 = _loc17_;
                        _loc14_.x = _loc13_;
                        _loc14_.y = _loc15_;
                        _loc16_.zpp_inner = _loc14_;
                        _loc16_.zpp_inner.outer = _loc16_;
                     }
                     else
                     {
                        _loc14_ = _loc16_.zpp_inner;
                        §§push(false);
                        if(_loc14_._validate != null)
                        {
                           _loc14_._validate();
                        }
                        if(_loc16_.zpp_inner.x == _loc13_)
                        {
                           §§pop();
                           _loc14_ = _loc16_.zpp_inner;
                           if(_loc14_._validate != null)
                           {
                              _loc14_._validate();
                           }
                           §§push(_loc16_.zpp_inner.y == _loc15_);
                        }
                        if(!§§pop())
                        {
                           _loc16_.zpp_inner.x = _loc13_;
                           _loc16_.zpp_inner.y = _loc15_;
                           _loc14_ = _loc16_.zpp_inner;
                           if(_loc14_._invalidate != null)
                           {
                              _loc14_._invalidate(_loc14_);
                           }
                        }
                        _loc16_;
                     }
                     _loc16_.zpp_inner.name_5 = _loc12_;
                     _loc11_ = _loc16_;
                     §§pop().push(_loc11_);
                  }
                  else
                  {
                     _loc11_ = zpp_inner.var_125.outer.transform(_loc10_);
                     _loc6_.push(_loc11_);
                  }
                  _loc14_ = _loc11_.zpp_inner;
                  if(_loc14_._validate != null)
                  {
                     _loc14_._validate();
                  }
                  if(_loc11_.zpp_inner.y < _loc4_)
                  {
                     _loc14_ = _loc11_.zpp_inner;
                     if(_loc14_._validate != null)
                     {
                        _loc14_._validate();
                     }
                     _loc4_ = _loc11_.zpp_inner.y;
                  }
                  _loc14_ = _loc11_.zpp_inner;
                  if(_loc14_._validate != null)
                  {
                     _loc14_._validate();
                  }
                  if(_loc11_.zpp_inner.y > _loc5_)
                  {
                     _loc14_ = _loc11_.zpp_inner;
                     if(_loc14_._validate != null)
                     {
                        _loc14_._validate();
                     }
                     _loc5_ = _loc11_.zpp_inner.y;
                  }
                  _loc14_ = _loc10_.zpp_inner;
                  _loc10_.zpp_inner.outer = null;
                  _loc10_.zpp_inner = null;
                  _loc11_ = _loc10_;
                  _loc11_.var_72 = class_219.poolVec2;
                  class_219.poolVec2 = _loc11_;
                  _loc25_ = _loc14_;
                  if(_loc25_.outer != null)
                  {
                     _loc25_.outer.zpp_inner = null;
                     _loc25_.outer = null;
                  }
                  _loc25_.var_103 = null;
                  _loc25_._validate = null;
                  _loc25_._invalidate = null;
                  _loc25_.next = ZPP_Vec2.var_72;
                  ZPP_Vec2.var_72 = _loc25_;
               }
               while(_loc24_ != _loc23_);
               
            }
         }
         if(param1 is Array)
         {
            _loc7_ = param1;
            _loc8_ = 0;
            while(_loc8_ < int(_loc7_.length))
            {
               _loc10_ = _loc7_[_loc8_];
               if(_loc10_.zpp_inner.name_5)
               {
                  _loc14_ = _loc10_.zpp_inner;
                  _loc10_.zpp_inner.outer = null;
                  _loc10_.zpp_inner = null;
                  _loc11_ = _loc10_;
                  _loc11_.var_72 = class_219.poolVec2;
                  class_219.poolVec2 = _loc11_;
                  _loc25_ = _loc14_;
                  if(_loc25_.outer != null)
                  {
                     _loc25_.outer.zpp_inner = null;
                     _loc25_.outer = null;
                  }
                  _loc25_.var_103 = null;
                  _loc25_._validate = null;
                  _loc25_._invalidate = null;
                  _loc25_.next = ZPP_Vec2.var_72;
                  ZPP_Vec2.var_72 = _loc25_;
                  §§push(true);
               }
               else
               {
                  §§push(false);
               }
               _loc7_.splice(_loc8_,1);
            }
         }
         else if(param1 is class_258.var_373)
         {
            _loc18_ = param1;
            if(!_loc18_.fixed)
            {
               _loc8_ = 0;
               while(_loc8_ < int(_loc18_.length))
               {
                  _loc10_ = _loc18_[_loc8_];
                  if(_loc10_.zpp_inner.name_5)
                  {
                     _loc14_ = _loc10_.zpp_inner;
                     _loc10_.zpp_inner.outer = null;
                     _loc10_.zpp_inner = null;
                     _loc11_ = _loc10_;
                     _loc11_.var_72 = class_219.poolVec2;
                     class_219.poolVec2 = _loc11_;
                     _loc25_ = _loc14_;
                     if(_loc25_.outer != null)
                     {
                        _loc25_.outer.zpp_inner = null;
                        _loc25_.outer = null;
                     }
                     _loc25_.var_103 = null;
                     _loc25_._validate = null;
                     _loc25_._invalidate = null;
                     _loc25_.next = ZPP_Vec2.var_72;
                     ZPP_Vec2.var_72 = _loc25_;
                     §§push(true);
                  }
                  else
                  {
                     §§push(false);
                  }
                  _loc18_.splice(_loc8_,1);
               }
            }
         }
         else if(param1 is Vec2List)
         {
            _loc20_ = param1;
            if(_loc20_.zpp_inner._validate != null)
            {
               _loc20_.zpp_inner._validate();
            }
            _loc26_ = _loc20_.zpp_inner.name_4;
            _loc27_ = null;
            _loc28_ = _loc26_.var_73;
            while(_loc28_ != null)
            {
               _loc14_ = _loc28_.var_74;
               if(_loc14_.outer.zpp_inner.name_5)
               {
                  _loc28_ = _loc26_.erase(_loc27_);
                  if(_loc14_.outer.zpp_inner.name_5)
                  {
                     _loc10_ = _loc14_.outer;
                     _loc25_ = _loc10_.zpp_inner;
                     _loc10_.zpp_inner.outer = null;
                     _loc10_.zpp_inner = null;
                     _loc11_ = _loc10_;
                     _loc11_.var_72 = class_219.poolVec2;
                     class_219.poolVec2 = _loc11_;
                     _loc29_ = _loc25_;
                     if(_loc29_.outer != null)
                     {
                        _loc29_.outer.zpp_inner = null;
                        _loc29_.outer = null;
                     }
                     _loc29_.var_103 = null;
                     _loc29_._validate = null;
                     _loc29_._invalidate = null;
                     _loc29_.next = ZPP_Vec2.var_72;
                     ZPP_Vec2.var_72 = _loc29_;
                  }
                  else
                  {
                     false;
                  }
               }
               else
               {
                  _loc27_ = _loc28_;
                  _loc28_ = _loc28_.next;
               }
            }
         }
         _loc8_ = Number(_loc4_ + 0.5);
         var _loc30_:* = int(Number(_loc5_ + 0.5));
         if(_loc30_ < 0 || _loc8_ >= zpp_inner.height)
         {
            return;
         }
         if(_loc8_ < 0)
         {
            _loc8_ = 0;
         }
         if(_loc30_ >= zpp_inner.height)
         {
            _loc30_ = zpp_inner.height - 1;
         }
         _loc7_ = var_85.var_984;
         var _loc31_:int = _loc8_;
         var _loc32_:* = _loc30_ + 1;
         while(_loc31_ < _loc32_)
         {
            _loc31_++;
            _loc33_ = _loc31_;
            _loc34_ = 0;
            _loc35_ = 0;
            _loc36_ = _loc6_.length;
            while(_loc35_ < _loc36_)
            {
               _loc35_++;
               _loc37_ = int(_loc35_);
               _loc10_ = _loc6_[_loc37_];
               _loc11_ = _loc6_[int((_loc37_ + 1) % int(_loc6_.length))];
               _loc14_ = _loc11_.zpp_inner;
               §§push(true);
               §§push(false);
               if(_loc14_._validate != null)
               {
                  _loc14_._validate();
               }
               if(_loc11_.zpp_inner.y < _loc33_)
               {
                  §§pop();
                  _loc14_ = _loc10_.zpp_inner;
                  if(_loc14_._validate != null)
                  {
                     _loc14_._validate();
                  }
                  §§push(_loc10_.zpp_inner.y >= _loc33_);
               }
               if(!§§pop())
               {
                  §§pop();
                  _loc14_ = _loc10_.zpp_inner;
                  §§push(false);
                  if(_loc14_._validate != null)
                  {
                     _loc14_._validate();
                  }
                  if(_loc10_.zpp_inner.y < _loc33_)
                  {
                     §§pop();
                     _loc14_ = _loc11_.zpp_inner;
                     if(_loc14_._validate != null)
                     {
                        _loc14_._validate();
                     }
                     §§push(_loc11_.zpp_inner.y >= _loc33_);
                  }
                  §§push(Boolean(§§pop()));
               }
               if(§§pop())
               {
                  _loc14_ = _loc11_.zpp_inner;
                  if(_loc14_._validate != null)
                  {
                     _loc14_._validate();
                  }
                  _loc14_ = _loc11_.zpp_inner;
                  §§push(_loc11_.zpp_inner.x);
                  §§push(_loc33_);
                  if(_loc14_._validate != null)
                  {
                     _loc14_._validate();
                  }
                  _loc14_ = _loc10_.zpp_inner;
                  §§push(§§pop() - _loc11_.zpp_inner.y);
                  if(_loc14_._validate != null)
                  {
                     _loc14_._validate();
                  }
                  _loc14_ = _loc11_.zpp_inner;
                  §§push(_loc10_.zpp_inner.y);
                  if(_loc14_._validate != null)
                  {
                     _loc14_._validate();
                  }
                  _loc14_ = _loc10_.zpp_inner;
                  §§push(§§pop() / (§§pop() - _loc11_.zpp_inner.y));
                  if(_loc14_._validate != null)
                  {
                     _loc14_._validate();
                  }
                  _loc14_ = _loc11_.zpp_inner;
                  §§push(_loc10_.zpp_inner.x);
                  if(_loc14_._validate != null)
                  {
                     _loc14_._validate();
                  }
                  _loc13_ = Number(§§pop() + §§pop() * (§§pop() - _loc11_.zpp_inner.x));
                  _loc34_++;
                  _loc7_[_loc34_] = int(Number(_loc13_ + 0.5));
               }
            }
            _loc35_ = 1;
            while(_loc35_ < _loc34_)
            {
               _loc35_++;
               _loc36_ = _loc35_;
               _loc37_ = int(_loc7_[_loc36_]);
               _loc38_ = int(_loc36_);
               while(_loc38_ > 0)
               {
                  _loc39_ = int(_loc7_[_loc38_ - 1]);
                  if(int(_loc7_[_loc38_ - 1]) < _loc37_)
                  {
                     break;
                  }
                  _loc7_[_loc38_] = _loc39_;
                  _loc38_--;
               }
               _loc7_[_loc38_] = _loc37_;
            }
            _loc35_ = 0;
            while(_loc35_ + 1 < _loc34_)
            {
               _loc35_++;
               _loc36_ = _loc7_[_loc35_];
               _loc35_++;
               _loc37_ = int(_loc7_[_loc35_]);
               if(int(_loc7_[_loc35_]) >= 0)
               {
                  if(_loc36_ >= zpp_inner.width)
                  {
                     break;
                  }
                  if(_loc36_ < 0)
                  {
                     _loc36_ = 0;
                  }
                  if(_loc37_ >= zpp_inner.width)
                  {
                     _loc37_ = zpp_inner.width - 1;
                  }
                  _loc38_ = _loc33_ * var_85.width + _loc36_;
                  _loc39_ = int(_loc36_);
                  _loc40_ = _loc37_ + 1;
                  while(_loc39_ < _loc40_)
                  {
                     _loc39_++;
                     _loc41_ = _loc39_;
                     _loc38_++;
                     _loc42_ = _loc38_;
                     si32(_loc3_,_loc42_ << 2);
                  }
               }
            }
         }
         while(int(_loc6_.length) > 0)
         {
            _loc10_ = _loc6_.pop();
            _loc14_ = _loc10_.zpp_inner;
            _loc10_.zpp_inner.outer = null;
            _loc10_.zpp_inner = null;
            _loc11_ = _loc10_;
            _loc11_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc11_;
            _loc25_ = _loc14_;
            if(_loc25_.outer != null)
            {
               _loc25_.outer.zpp_inner = null;
               _loc25_.outer = null;
            }
            _loc25_.var_103 = null;
            _loc25_._validate = null;
            _loc25_._invalidate = null;
            _loc25_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc25_;
         }
      }
      
      override public function method_305(param1:Vec2, param2:Number, param3:int) : void
      {
         var _loc4_:int = 0;
         var _loc5_:* = null as ZPP_Vec2;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:* = null as Vec2;
         var _loc9_:* = null as ZPP_Vec2;
         var _loc10_:* = null as Vec2;
         if(zpp_inner.var_235)
         {
            _loc5_ = param1.zpp_inner;
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            _loc4_ = Number(param1.zpp_inner.x + 0.5);
            _loc5_ = param1.zpp_inner;
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            _loc6_ = Number(param1.zpp_inner.y + 0.5);
            _loc7_ = Number(param2 + 0.5);
            var_85.method_483(_loc4_,_loc6_,_loc7_,param3 | -16777216);
            if(param1.zpp_inner.name_5)
            {
               _loc5_ = param1.zpp_inner;
               param1.zpp_inner.outer = null;
               param1.zpp_inner = null;
               _loc8_ = param1;
               _loc8_.var_72 = class_219.poolVec2;
               class_219.poolVec2 = _loc8_;
               _loc9_ = _loc5_;
               if(_loc9_.outer != null)
               {
                  _loc9_.outer.zpp_inner = null;
                  _loc9_.outer = null;
               }
               _loc9_.var_103 = null;
               _loc9_._validate = null;
               _loc9_._invalidate = null;
               _loc9_.next = ZPP_Vec2.var_72;
               ZPP_Vec2.var_72 = _loc9_;
            }
            else
            {
               false;
            }
         }
         else
         {
            _loc8_ = zpp_inner.var_125.outer.transform(param1);
            _loc5_ = _loc8_.zpp_inner;
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            _loc4_ = Number(_loc8_.zpp_inner.x + 0.5);
            _loc5_ = _loc8_.zpp_inner;
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            _loc6_ = Number(_loc8_.zpp_inner.y + 0.5);
            _loc5_ = _loc8_.zpp_inner;
            _loc8_.zpp_inner.outer = null;
            _loc8_.zpp_inner = null;
            _loc10_ = _loc8_;
            _loc10_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc10_;
            _loc9_ = _loc5_;
            if(_loc9_.outer != null)
            {
               _loc9_.outer.zpp_inner = null;
               _loc9_.outer = null;
            }
            _loc9_.var_103 = null;
            _loc9_._validate = null;
            _loc9_._invalidate = null;
            _loc9_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc9_;
            _loc7_ = Number(param2 * zpp_inner.xdet + 0.5);
            var_85.method_483(_loc4_,_loc6_,_loc7_,param3 | -16777216);
         }
      }
      
      override public function method_171(param1:Vec2, param2:Vec2, param3:Vec2, param4:int) : void
      {
         var _loc5_:* = null as ZPP_Vec2;
         var _loc6_:* = null as Vec2;
         var _loc7_:* = null as ZPP_Vec2;
         var _loc8_:* = null as Vec2;
         var _loc9_:* = null as Vec2;
         var _loc10_:* = null as Vec2;
         if(zpp_inner.var_235)
         {
            var_85.method_246(param1,param2,param3,param4);
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
               true;
            }
            else
            {
               false;
            }
            if(param3.zpp_inner.name_5)
            {
               _loc5_ = param3.zpp_inner;
               param3.zpp_inner.outer = null;
               param3.zpp_inner = null;
               _loc6_ = param3;
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
            _loc8_ = zpp_inner.var_125.outer.transform(param2);
            _loc9_ = zpp_inner.var_125.outer.transform(param3);
            var_85.method_246(_loc6_,_loc8_,_loc9_,param4);
            _loc5_ = _loc6_.zpp_inner;
            _loc6_.zpp_inner.outer = null;
            _loc6_.zpp_inner = null;
            _loc10_ = _loc6_;
            _loc10_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc10_;
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
            _loc5_ = _loc8_.zpp_inner;
            _loc8_.zpp_inner.outer = null;
            _loc8_.zpp_inner = null;
            _loc10_ = _loc8_;
            _loc10_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc10_;
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
            _loc5_ = _loc9_.zpp_inner;
            _loc9_.zpp_inner.outer = null;
            _loc9_.zpp_inner = null;
            _loc10_ = _loc9_;
            _loc10_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc10_;
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
      
      override public function drawCircle(param1:Vec2, param2:Number, param3:int) : void
      {
         var _loc4_:int = 0;
         var _loc5_:* = null as ZPP_Vec2;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:* = null as Vec2;
         var _loc9_:* = null as ZPP_Vec2;
         var _loc10_:* = null as Vec2;
         if(zpp_inner.var_235)
         {
            _loc5_ = param1.zpp_inner;
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            _loc4_ = Number(param1.zpp_inner.x + 0.5);
            _loc5_ = param1.zpp_inner;
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            _loc6_ = Number(param1.zpp_inner.y + 0.5);
            _loc7_ = Number(param2 + 0.5);
            var_85.method_149(_loc4_,_loc6_,_loc7_,param3 | -16777216);
            if(param1.zpp_inner.name_5)
            {
               _loc5_ = param1.zpp_inner;
               param1.zpp_inner.outer = null;
               param1.zpp_inner = null;
               _loc8_ = param1;
               _loc8_.var_72 = class_219.poolVec2;
               class_219.poolVec2 = _loc8_;
               _loc9_ = _loc5_;
               if(_loc9_.outer != null)
               {
                  _loc9_.outer.zpp_inner = null;
                  _loc9_.outer = null;
               }
               _loc9_.var_103 = null;
               _loc9_._validate = null;
               _loc9_._invalidate = null;
               _loc9_.next = ZPP_Vec2.var_72;
               ZPP_Vec2.var_72 = _loc9_;
            }
            else
            {
               false;
            }
         }
         else
         {
            _loc8_ = zpp_inner.var_125.outer.transform(param1);
            _loc5_ = _loc8_.zpp_inner;
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            _loc4_ = Number(_loc8_.zpp_inner.x + 0.5);
            _loc5_ = _loc8_.zpp_inner;
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            _loc6_ = Number(_loc8_.zpp_inner.y + 0.5);
            _loc5_ = _loc8_.zpp_inner;
            _loc8_.zpp_inner.outer = null;
            _loc8_.zpp_inner = null;
            _loc10_ = _loc8_;
            _loc10_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc10_;
            _loc9_ = _loc5_;
            if(_loc9_.outer != null)
            {
               _loc9_.outer.zpp_inner = null;
               _loc9_.outer = null;
            }
            _loc9_.var_103 = null;
            _loc9_._validate = null;
            _loc9_._invalidate = null;
            _loc9_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc9_;
            _loc7_ = Number(param2 * zpp_inner.xdet + 0.5);
            var_85.method_149(_loc4_,_loc6_,_loc7_,param3 | -16777216);
         }
      }
      
      override public function method_468(param1:class_237, param2:int) : void
      {
         var _loc3_:* = null as Vec2;
         var _loc4_:* = null as Vec2;
         var _loc5_:Number = NaN;
         var _loc6_:* = null as ZPP_AABB;
         var _loc7_:Boolean = false;
         var _loc8_:* = null as Vec2;
         var _loc9_:Boolean = false;
         var _loc10_:* = null as ZPP_Vec2;
         var _loc11_:* = null as Vec2;
         var _loc12_:* = null as Vec2;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         var _loc19_:int = 0;
         var _loc20_:int = 0;
         var _loc21_:* = null as Vec2;
         var _loc22_:* = null as ZPP_Vec2;
         var _loc23_:* = 0;
         if(zpp_inner.var_235)
         {
            var_85.method_275(param1.zpp_inner,param2);
         }
         else
         {
            _loc3_ = zpp_inner.var_125.outer.transform(param1.zpp_inner.method_301());
            _loc6_ = param1.zpp_inner;
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc6_ = param1.zpp_inner;
            _loc5_ = _loc6_.var_79 - _loc6_.var_77;
            _loc7_ = false;
            if(class_219.poolVec2 == null)
            {
               _loc8_ = new Vec2();
            }
            else
            {
               _loc8_ = class_219.poolVec2;
               class_219.poolVec2 = _loc8_.var_72;
               _loc8_.var_72 = null;
            }
            if(_loc8_.zpp_inner == null)
            {
               _loc9_ = false;
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
               _loc10_.var_109 = _loc9_;
               _loc10_.x = _loc5_;
               _loc10_.y = 0;
               _loc8_.zpp_inner = _loc10_;
               _loc8_.zpp_inner.outer = _loc8_;
            }
            else
            {
               _loc10_ = _loc8_.zpp_inner;
               §§push(false);
               if(_loc10_._validate != null)
               {
                  _loc10_._validate();
               }
               if(_loc8_.zpp_inner.x == _loc5_)
               {
                  §§pop();
                  _loc10_ = _loc8_.zpp_inner;
                  if(_loc10_._validate != null)
                  {
                     _loc10_._validate();
                  }
                  §§push(_loc8_.zpp_inner.y == 0);
               }
               if(!§§pop())
               {
                  _loc8_.zpp_inner.x = _loc5_;
                  _loc8_.zpp_inner.y = 0;
                  _loc10_ = _loc8_.zpp_inner;
                  if(_loc10_._invalidate != null)
                  {
                     _loc10_._invalidate(_loc10_);
                  }
               }
               _loc8_;
            }
            _loc8_.zpp_inner.name_5 = _loc7_;
            _loc4_ = _loc8_;
            _loc8_ = zpp_inner.var_125.outer.transform(_loc4_,true);
            _loc6_ = param1.zpp_inner;
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc6_ = param1.zpp_inner;
            _loc5_ = _loc6_.var_80 - _loc6_.var_78;
            _loc7_ = false;
            if(class_219.poolVec2 == null)
            {
               _loc12_ = new Vec2();
            }
            else
            {
               _loc12_ = class_219.poolVec2;
               class_219.poolVec2 = _loc12_.var_72;
               _loc12_.var_72 = null;
            }
            if(_loc12_.zpp_inner == null)
            {
               _loc9_ = false;
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
               _loc10_.var_109 = _loc9_;
               _loc10_.x = 0;
               _loc10_.y = _loc5_;
               _loc12_.zpp_inner = _loc10_;
               _loc12_.zpp_inner.outer = _loc12_;
            }
            else
            {
               _loc10_ = _loc12_.zpp_inner;
               §§push(false);
               if(_loc10_._validate != null)
               {
                  _loc10_._validate();
               }
               if(_loc12_.zpp_inner.x == 0)
               {
                  §§pop();
                  _loc10_ = _loc12_.zpp_inner;
                  if(_loc10_._validate != null)
                  {
                     _loc10_._validate();
                  }
                  §§push(_loc12_.zpp_inner.y == _loc5_);
               }
               if(!§§pop())
               {
                  _loc12_.zpp_inner.x = 0;
                  _loc12_.zpp_inner.y = _loc5_;
                  _loc10_ = _loc12_.zpp_inner;
                  if(_loc10_._invalidate != null)
                  {
                     _loc10_._invalidate(_loc10_);
                  }
               }
               _loc12_;
            }
            _loc12_.zpp_inner.name_5 = _loc7_;
            _loc11_ = _loc12_;
            _loc12_ = zpp_inner.var_125.outer.transform(_loc11_,true);
            _loc10_ = _loc3_.zpp_inner;
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc13_ = Number(_loc3_.zpp_inner.x + 0.5);
            _loc10_ = _loc3_.zpp_inner;
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc14_ = Number(_loc3_.zpp_inner.y + 0.5);
            _loc10_ = _loc3_.zpp_inner;
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc10_ = _loc8_.zpp_inner;
            §§push(_loc3_.zpp_inner.x);
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc15_ = Number(Number(§§pop() + _loc8_.zpp_inner.x) + 0.5);
            _loc10_ = _loc3_.zpp_inner;
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc10_ = _loc8_.zpp_inner;
            §§push(_loc3_.zpp_inner.y);
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc16_ = Number(Number(§§pop() + _loc8_.zpp_inner.y) + 0.5);
            _loc10_ = _loc3_.zpp_inner;
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc10_ = _loc8_.zpp_inner;
            §§push(_loc3_.zpp_inner.x);
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc10_ = _loc12_.zpp_inner;
            §§push(Number(§§pop() + _loc8_.zpp_inner.x));
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc17_ = Number(Number(§§pop() + _loc12_.zpp_inner.x) + 0.5);
            _loc10_ = _loc3_.zpp_inner;
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc10_ = _loc8_.zpp_inner;
            §§push(_loc3_.zpp_inner.y);
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc10_ = _loc12_.zpp_inner;
            §§push(Number(§§pop() + _loc8_.zpp_inner.y));
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc18_ = Number(Number(§§pop() + _loc12_.zpp_inner.y) + 0.5);
            _loc10_ = _loc3_.zpp_inner;
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc10_ = _loc12_.zpp_inner;
            §§push(_loc3_.zpp_inner.x);
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc19_ = Number(Number(§§pop() + _loc12_.zpp_inner.x) + 0.5);
            _loc10_ = _loc3_.zpp_inner;
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc10_ = _loc12_.zpp_inner;
            §§push(_loc3_.zpp_inner.y);
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc20_ = Number(Number(§§pop() + _loc12_.zpp_inner.y) + 0.5);
            _loc10_ = _loc3_.zpp_inner;
            _loc3_.zpp_inner.outer = null;
            _loc3_.zpp_inner = null;
            _loc21_ = _loc3_;
            _loc21_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc21_;
            _loc22_ = _loc10_;
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
            _loc10_ = _loc4_.zpp_inner;
            _loc4_.zpp_inner.outer = null;
            _loc4_.zpp_inner = null;
            _loc21_ = _loc4_;
            _loc21_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc21_;
            _loc22_ = _loc10_;
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
            _loc10_ = _loc8_.zpp_inner;
            _loc8_.zpp_inner.outer = null;
            _loc8_.zpp_inner = null;
            _loc21_ = _loc8_;
            _loc21_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc21_;
            _loc22_ = _loc10_;
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
            _loc10_ = _loc11_.zpp_inner;
            _loc11_.zpp_inner.outer = null;
            _loc11_.zpp_inner = null;
            _loc21_ = _loc11_;
            _loc21_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc21_;
            _loc22_ = _loc10_;
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
            _loc10_ = _loc12_.zpp_inner;
            _loc12_.zpp_inner.outer = null;
            _loc12_.zpp_inner = null;
            _loc21_ = _loc12_;
            _loc21_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc21_;
            _loc22_ = _loc10_;
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
            _loc23_ = param2 | -16777216;
            var_85.method_110(_loc13_,_loc14_,_loc15_,_loc16_,_loc23_);
            var_85.method_110(_loc15_,_loc16_,_loc17_,_loc18_,_loc23_);
            var_85.method_110(_loc17_,_loc18_,_loc19_,_loc20_,_loc23_);
            var_85.method_110(_loc19_,_loc20_,_loc13_,_loc14_,_loc23_);
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
         var_85.clear();
      }
   }
}
