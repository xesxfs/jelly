package zpp_nape.util
{
   import flash.display.Graphics;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import nape.geom.Vec2;
   import package_26.CollisionArbiter;
   import package_26.FluidArbiter;
   import package_26.class_227;
   import package_26.class_251;
   import package_26.class_252;
   import package_26.class_328;
   import package_26.class_329;
   import package_29.Body;
   import package_29.class_205;
   import package_31.class_197;
   import package_32.class_230;
   import package_33.class_347;
   import zpp_nape.constraint.ZPP_Constraint;
   import zpp_nape.dynamics.ZPP_Arbiter;
   import zpp_nape.dynamics.ZPP_Contact;
   import zpp_nape.dynamics.ZPP_InteractionFilter;
   import zpp_nape.dynamics.class_228;
   import zpp_nape.geom.ZPP_AABB;
   import zpp_nape.geom.ZPP_Mat23;
   import zpp_nape.geom.ZPP_Vec2;
   import zpp_nape.phys.ZPP_Body;
   import zpp_nape.phys.ZPP_Compound;
   import zpp_nape.shape.ZPP_Circle;
   import zpp_nape.shape.ZPP_Polygon;
   import zpp_nape.shape.ZPP_Shape;
   import zpp_nape.space.ZPP_Space;
   
   public final class class_331 extends class_272
   {
       
      
      public var var_463:class_230;
      
      public var name_7:flash.display.Shape;
      
      public var outer_zn:class_347;
      
      public var graphics:Graphics;
      
      public var var_190:class_308;
      
      public var var_462:class_205;
      
      public function class_331(param1:int, param2:int)
      {
         var_462 = null;
         var_463 = null;
         var_190 = null;
         graphics = null;
         name_7 = null;
         outer_zn = null;
         super(param1,param2);
         name_7 = new flash.display.Shape();
         name_7.scrollRect = new Rectangle(0,0,param1,param2);
         graphics = name_7.graphics;
         var_575 = false;
         var_726 = this;
      }
      
      public final function method_229(param1:int) : void
      {
         method_338(param1);
      }
      
      public final function method_279(param1:ZPP_Space, param2:ZPP_Mat23, param3:Number, param4:Boolean) : void
      {
         var _loc5_:* = null as class_205;
         var _loc6_:* = null as class_205;
         var _loc7_:* = null as Body;
         var _loc8_:* = null as class_230;
         var _loc9_:* = null as class_230;
         var _loc10_:* = null as package_32.Shape;
         var _loc11_:* = null as ZNPNode_ZPP_Body;
         var _loc12_:* = null as ZPP_Body;
         var _loc13_:* = null as ZNPNode_ZPP_Compound;
         var _loc14_:* = null as ZPP_Compound;
         var _loc15_:* = null as ZPP_Compound;
         var _loc16_:* = null as class_251;
         var _loc17_:* = null as class_197;
         var _loc18_:* = null as class_228;
         var _loc19_:* = null as class_252;
         var _loc20_:int = 0;
         var _loc21_:* = null as ZNPNode_ZPP_Constraint;
         var _loc22_:* = null as ZPP_Constraint;
         if(outer.var_780)
         {
            if(outer.var_629)
            {
               if(outer.var_667)
               {
                  _loc6_ = param1.var_166.method_201(var_262,false,false,null,var_462);
                  var_462 = _loc6_;
                  _loc5_ = _loc6_;
                  while(_loc5_.zpp_inner.name_4.var_73 != null)
                  {
                     _loc7_ = _loc5_.shift();
                     if(_loc7_.var_323)
                     {
                        method_130(_loc7_.zpp_inner,param2,param3,param4);
                     }
                  }
               }
               else
               {
                  _loc9_ = param1.var_166.method_178(var_262,false,false,null,var_463);
                  var_463 = _loc9_;
                  _loc8_ = _loc9_;
                  while(_loc8_.zpp_inner.name_4.var_73 != null)
                  {
                     _loc10_ = _loc8_.shift();
                     if((_loc10_.zpp_inner.body != null?_loc10_.zpp_inner.body.outer:null).var_323)
                     {
                        method_154(_loc10_.zpp_inner,param2,param3,param4);
                     }
                  }
               }
            }
         }
         else if(outer.var_629)
         {
            if(var_190 == null)
            {
               var_190 = new class_308();
            }
            _loc11_ = param1.name_30.var_73;
            while(_loc11_ != null)
            {
               _loc12_ = _loc11_.var_74;
               if(_loc12_.outer.var_323)
               {
                  method_130(_loc12_,param2,param3,param4);
               }
               _loc11_ = _loc11_.next;
            }
            _loc13_ = param1.name_27.var_73;
            while(_loc13_ != null)
            {
               _loc14_ = _loc13_.var_74;
               var_190.add(_loc14_);
               _loc13_ = _loc13_.next;
            }
            while(var_190.var_73 != null)
            {
               _loc14_ = var_190.method_105();
               _loc11_ = _loc14_.name_30.var_73;
               while(_loc11_ != null)
               {
                  _loc12_ = _loc11_.var_74;
                  if(_loc12_.outer.var_323)
                  {
                     method_130(_loc12_,param2,param3,param4);
                  }
                  _loc11_ = _loc11_.next;
               }
               _loc13_ = _loc14_.name_27.var_73;
               while(_loc13_ != null)
               {
                  _loc15_ = _loc13_.var_74;
                  var_190.add(_loc15_);
                  _loc13_ = _loc13_.next;
               }
            }
         }
         if(outer.var_603 || outer.var_674 || outer.var_572)
         {
            _loc17_ = param1.outer;
            if(_loc17_.zpp_inner.var_174 == null)
            {
               _loc18_ = new class_228();
               _loc18_.space = _loc17_.zpp_inner;
               _loc17_.zpp_inner.var_174 = _loc18_;
            }
            _loc16_ = _loc17_.zpp_inner.var_174.iterator();
            while(true)
            {
               _loc16_.zpp_inner.zpp_inner.method_104();
               _loc20_ = _loc16_.zpp_inner.method_108();
               _loc16_.var_98 = true;
               if(_loc16_.var_90 < _loc20_)
               {
                  §§push(true);
               }
               else
               {
                  _loc16_.var_106 = class_251.var_72;
                  class_251.var_72 = _loc16_;
                  _loc16_.zpp_inner = null;
               }
               _loc16_.var_98 = false;
               _loc20_ = _loc16_.var_90;
               _loc16_.var_90 = _loc16_.var_90 + 1;
               _loc19_ = _loc16_.zpp_inner.at(_loc20_);
               draw_arbiter(_loc19_.zpp_inner,param2,param3,param4);
            }
         }
         else
         {
            if(outer.var_695)
            {
               if(var_190 == null)
               {
                  var_190 = new class_308();
               }
               _loc21_ = param1.name_19.var_73;
               while(_loc21_ != null)
               {
                  _loc22_ = _loc21_.var_74;
                  if(!!_loc22_.active && _loc22_.outer.var_323)
                  {
                     _loc22_.draw(outer);
                  }
                  _loc21_ = _loc21_.next;
               }
               _loc13_ = param1.name_27.var_73;
               while(_loc13_ != null)
               {
                  _loc14_ = _loc13_.var_74;
                  var_190.add(_loc14_);
                  _loc13_ = _loc13_.next;
               }
               while(var_190.var_73 != null)
               {
                  _loc14_ = var_190.method_105();
                  _loc21_ = _loc14_.name_19.var_73;
                  while(_loc21_ != null)
                  {
                     _loc22_ = _loc21_.var_74;
                     if(!!_loc22_.active && _loc22_.outer.var_323)
                     {
                        _loc22_.draw(outer);
                     }
                     _loc21_ = _loc21_.next;
                  }
                  _loc13_ = _loc14_.name_27.var_73;
                  while(_loc13_ != null)
                  {
                     _loc15_ = _loc13_.var_74;
                     var_190.add(_loc15_);
                     _loc13_ = _loc13_.next;
                  }
               }
            }
            return;
         }
      }
      
      public final function method_154(param1:ZPP_Shape, param2:ZPP_Mat23, param3:Number, param4:Boolean) : void
      {
         var _loc6_:* = 0;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:* = null as ZPP_Circle;
         var _loc17_:* = null as ZPP_Polygon;
         var _loc18_:* = null as ZPP_Vec2;
         var _loc19_:* = null as ZPP_Vec2;
         var _loc20_:* = null as ZPP_Vec2;
         var _loc21_:* = null as ZPP_Vec2;
         var _loc22_:* = null as ZPP_Vec2;
         var _loc23_:* = null as ZPP_Body;
         var _loc24_:* = NaN;
         var _loc25_:* = NaN;
         var _loc26_:* = NaN;
         var _loc27_:* = NaN;
         var _loc28_:* = null as ZPP_Polygon;
         var _loc29_:* = null as ZPP_Vec2;
         var _loc30_:* = null as ZPP_AABB;
         var _loc31_:Number = NaN;
         var _loc32_:Number = NaN;
         if(outer.colour == null)
         {
            _loc6_ = int(16777215 * Math.exp(-(int(param1.id % 500)) / 1500));
         }
         else
         {
            _loc6_ = int(outer.colour(param1.id));
         }
         _loc7_ = Number(((_loc6_ & 16711680) >> 16) * 0.7);
         _loc8_ = Number(((_loc6_ & 65280) >> 8) * 0.7);
         _loc9_ = Number((_loc6_ & 255) * 0.7);
         var _loc5_:* = -16777216 | int(_loc7_) << 16 | int(_loc8_) << 8 | int(_loc9_);
         var _loc10_:ZPP_Body = param1.body;
         if(_loc10_ != null)
         {
            if(outer.colour == null)
            {
               _loc11_ = 16777215 * Math.exp(-(int(_loc10_.id % 500)) / 1500);
            }
            else
            {
               _loc11_ = outer.colour(_loc10_.id);
            }
            _loc7_ = Number(((_loc11_ & 16711680) >> 16) * 0.7);
            _loc8_ = Number(((_loc11_ & 65280) >> 8) * 0.7);
            _loc9_ = Number((_loc11_ & 255) * 0.7);
            if(_loc10_.space != null && _loc10_.outer.zpp_inner.var_112.var_129)
            {
               _loc7_ = Number(Number(0.4 * _loc7_ + 0.6 * var_480));
               _loc8_ = Number(Number(0.4 * _loc8_ + 0.6 * var_505));
               _loc9_ = Number(Number(0.4 * _loc9_ + 0.6 * var_499));
            }
            _loc6_ = -16777216 | int(_loc7_) << 16 | int(_loc8_) << 8 | int(_loc9_);
            _loc11_ = _loc5_;
            _loc12_ = _loc6_;
            _loc7_ = 0.2;
            _loc13_ = Number((_loc11_ >> 16 & 255) * _loc7_ + (_loc12_ >> 16 & 255) * (1 - _loc7_));
            _loc14_ = Number((_loc11_ >> 8 & 255) * _loc7_ + (_loc12_ >> 8 & 255) * (1 - _loc7_));
            _loc15_ = Number((_loc11_ & 255) * _loc7_ + (_loc12_ & 255) * (1 - _loc7_));
            _loc5_ = -16777216 | _loc13_ << 16 | _loc14_ << 8 | _loc15_;
            graphics.lineStyle(outer_zn.thickness,_loc5_,1);
            if(param1.type == class_223.var_131)
            {
               _loc16_ = param1.var_102;
               if(_loc16_.var_139)
               {
                  if(_loc16_.body != null)
                  {
                     _loc16_.var_139 = false;
                     if(_loc16_.var_140)
                     {
                        _loc16_.var_140 = false;
                        if(_loc16_.type == class_223.var_155)
                        {
                           _loc17_ = _loc16_.name_6;
                           if(_loc17_.var_88.next.next == null)
                           {
                              _loc17_.var_82 = _loc17_.var_88.next.x;
                              _loc17_.var_81 = _loc17_.var_88.next.y;
                              null;
                           }
                           else if(_loc17_.var_88.next.next.next == null)
                           {
                              _loc17_.var_82 = _loc17_.var_88.next.x;
                              _loc17_.var_81 = _loc17_.var_88.next.y;
                              _loc7_ = 1;
                              _loc17_.var_82 = Number(_loc17_.var_82 + _loc17_.var_88.next.next.x * _loc7_);
                              _loc17_.var_81 = Number(_loc17_.var_81 + _loc17_.var_88.next.next.y * _loc7_);
                              _loc7_ = 0.5;
                              _loc17_.var_82 = _loc17_.var_82 * _loc7_;
                              _loc17_.var_81 = _loc17_.var_81 * _loc7_;
                           }
                           else
                           {
                              _loc17_.var_82 = 0;
                              _loc17_.var_81 = 0;
                              _loc7_ = 0;
                              _loc18_ = _loc17_.var_88.next;
                              _loc19_ = _loc18_;
                              _loc18_ = _loc18_.next;
                              _loc20_ = _loc18_;
                              _loc18_ = _loc18_.next;
                              while(_loc18_ != null)
                              {
                                 _loc21_ = _loc18_;
                                 _loc7_ = Number(Number(_loc7_ + _loc20_.x * (_loc21_.y - _loc19_.y)));
                                 _loc8_ = Number(_loc21_.y * _loc20_.x - _loc21_.x * _loc20_.y);
                                 _loc17_.var_82 = Number(_loc17_.var_82 + (_loc20_.x + _loc21_.x) * _loc8_);
                                 _loc17_.var_81 = Number(_loc17_.var_81 + (_loc20_.y + _loc21_.y) * _loc8_);
                                 _loc19_ = _loc20_;
                                 _loc20_ = _loc21_;
                                 _loc18_ = _loc18_.next;
                              }
                              _loc18_ = _loc17_.var_88.next;
                              _loc21_ = _loc18_;
                              _loc7_ = Number(Number(_loc7_ + _loc20_.x * (_loc21_.y - _loc19_.y)));
                              _loc8_ = Number(_loc21_.y * _loc20_.x - _loc21_.x * _loc20_.y);
                              _loc17_.var_82 = Number(_loc17_.var_82 + (_loc20_.x + _loc21_.x) * _loc8_);
                              _loc17_.var_81 = Number(_loc17_.var_81 + (_loc20_.y + _loc21_.y) * _loc8_);
                              _loc19_ = _loc20_;
                              _loc20_ = _loc21_;
                              _loc18_ = _loc18_.next;
                              _loc22_ = _loc18_;
                              _loc7_ = Number(Number(_loc7_ + _loc20_.x * (_loc22_.y - _loc19_.y)));
                              _loc8_ = Number(_loc22_.y * _loc20_.x - _loc22_.x * _loc20_.y);
                              _loc17_.var_82 = Number(_loc17_.var_82 + (_loc20_.x + _loc22_.x) * _loc8_);
                              _loc17_.var_81 = Number(_loc17_.var_81 + (_loc20_.y + _loc22_.y) * _loc8_);
                              _loc7_ = Number(1 / (3 * _loc7_));
                              _loc8_ = Number(_loc7_);
                              _loc17_.var_82 = _loc17_.var_82 * _loc8_;
                              _loc17_.var_81 = _loc17_.var_81 * _loc8_;
                           }
                        }
                        if(_loc16_.var_115 != null)
                        {
                           _loc16_.var_115.zpp_inner.x = _loc16_.var_82;
                           _loc16_.var_115.zpp_inner.y = _loc16_.var_81;
                        }
                     }
                     _loc23_ = _loc16_.body;
                     if(_loc23_.var_113)
                     {
                        _loc23_.var_113 = false;
                        _loc23_.var_84 = Number(Math.sin(_loc23_.var_93));
                        _loc23_.var_83 = Number(Math.cos(_loc23_.var_93));
                        null;
                     }
                     _loc16_.var_99 = Number(_loc16_.body.var_95 + (_loc16_.body.var_83 * _loc16_.var_82 - _loc16_.body.var_84 * _loc16_.var_81));
                     _loc16_.var_100 = Number(_loc16_.body.var_96 + (Number(_loc16_.var_82 * _loc16_.body.var_84 + _loc16_.var_81 * _loc16_.body.var_83)));
                  }
               }
               _loc7_ = Number(_loc16_.var_99);
               _loc8_ = Number(_loc16_.var_100);
               if(!param4)
               {
                  _loc9_ = Number(Number(Number(param2.a * _loc7_ + param2.b * _loc8_) + param2.tx));
                  _loc8_ = Number(Number(Number(param2.c * _loc7_ + param2.d * _loc8_) + param2.ty));
                  _loc7_ = Number(_loc9_);
               }
               graphics.drawCircle(_loc7_,_loc8_,_loc16_.radius * param3);
               if(outer.var_641)
               {
                  _loc9_ = Number(Number(_loc16_.var_99 + 0.3 * _loc16_.radius * _loc10_.var_83));
                  _loc24_ = Number(Number(_loc16_.var_100 + 0.3 * _loc16_.radius * _loc10_.var_84));
                  _loc25_ = Number(Number(_loc16_.var_99 + _loc16_.radius * _loc10_.var_83));
                  _loc26_ = Number(Number(_loc16_.var_100 + _loc16_.radius * _loc10_.var_84));
                  if(!param4)
                  {
                     _loc27_ = Number(Number(Number(param2.a * _loc9_ + param2.b * _loc24_) + param2.tx));
                     _loc24_ = Number(Number(Number(param2.c * _loc9_ + param2.d * _loc24_) + param2.ty));
                     _loc9_ = Number(_loc27_);
                  }
                  if(!param4)
                  {
                     _loc27_ = Number(Number(Number(param2.a * _loc25_ + param2.b * _loc26_) + param2.tx));
                     _loc26_ = Number(Number(Number(param2.c * _loc25_ + param2.d * _loc26_) + param2.ty));
                     _loc25_ = Number(_loc27_);
                  }
                  graphics.moveTo(_loc9_,_loc24_);
                  graphics.lineTo(_loc25_,_loc26_);
               }
            }
            else
            {
               _loc17_ = param1.name_6;
               if(_loc17_.var_153)
               {
                  if(_loc17_.body != null)
                  {
                     _loc17_.var_153 = false;
                     _loc17_.method_116();
                     _loc23_ = _loc17_.body;
                     if(_loc23_.var_113)
                     {
                        _loc23_.var_113 = false;
                        _loc23_.var_84 = Number(Math.sin(_loc23_.var_93));
                        _loc23_.var_83 = Number(Math.cos(_loc23_.var_93));
                        null;
                     }
                     _loc18_ = _loc17_.var_88.next;
                     _loc19_ = _loc17_.var_107.next;
                     while(_loc19_ != null)
                     {
                        _loc20_ = _loc19_;
                        _loc21_ = _loc18_;
                        _loc18_ = _loc18_.next;
                        _loc20_.x = Number(_loc17_.body.var_95 + (_loc17_.body.var_83 * _loc21_.x - _loc17_.body.var_84 * _loc21_.y));
                        _loc20_.y = Number(_loc17_.body.var_96 + (Number(_loc21_.x * _loc17_.body.var_84 + _loc21_.y * _loc17_.body.var_83)));
                        _loc19_ = _loc19_.next;
                     }
                  }
               }
               _loc18_ = _loc17_.var_107.next;
               _loc7_ = Number(_loc18_.x);
               _loc8_ = Number(_loc18_.y);
               if(!param4)
               {
                  _loc9_ = Number(Number(Number(param2.a * _loc7_ + param2.b * _loc8_) + param2.tx));
                  _loc8_ = Number(Number(Number(param2.c * _loc7_ + param2.d * _loc8_) + param2.ty));
                  _loc7_ = Number(_loc9_);
               }
               graphics.moveTo(_loc7_,_loc8_);
               _loc9_ = Number(_loc7_);
               _loc24_ = Number(_loc8_);
               _loc19_ = _loc17_.var_107.next.next;
               while(_loc19_ != null)
               {
                  _loc20_ = _loc19_;
                  _loc7_ = Number(_loc20_.x);
                  _loc8_ = Number(_loc20_.y);
                  if(!param4)
                  {
                     _loc25_ = Number(Number(Number(param2.a * _loc7_ + param2.b * _loc8_) + param2.tx));
                     _loc8_ = Number(Number(Number(param2.c * _loc7_ + param2.d * _loc8_) + param2.ty));
                     _loc7_ = Number(_loc25_);
                  }
                  graphics.lineTo(_loc7_,_loc8_);
                  _loc19_ = _loc19_.next;
               }
               graphics.lineTo(_loc9_,_loc24_);
               if(outer.var_641)
               {
                  if(_loc17_.var_139)
                  {
                     if(_loc17_.body != null)
                     {
                        _loc17_.var_139 = false;
                        if(_loc17_.var_140)
                        {
                           _loc17_.var_140 = false;
                           if(_loc17_.type == class_223.var_155)
                           {
                              _loc28_ = _loc17_.name_6;
                              if(_loc28_.var_88.next.next == null)
                              {
                                 _loc28_.var_82 = _loc28_.var_88.next.x;
                                 _loc28_.var_81 = _loc28_.var_88.next.y;
                                 null;
                              }
                              else if(_loc28_.var_88.next.next.next == null)
                              {
                                 _loc28_.var_82 = _loc28_.var_88.next.x;
                                 _loc28_.var_81 = _loc28_.var_88.next.y;
                                 _loc25_ = 1;
                                 _loc28_.var_82 = Number(_loc28_.var_82 + _loc28_.var_88.next.next.x * _loc25_);
                                 _loc28_.var_81 = Number(_loc28_.var_81 + _loc28_.var_88.next.next.y * _loc25_);
                                 _loc25_ = 0.5;
                                 _loc28_.var_82 = _loc28_.var_82 * _loc25_;
                                 _loc28_.var_81 = _loc28_.var_81 * _loc25_;
                              }
                              else
                              {
                                 _loc28_.var_82 = 0;
                                 _loc28_.var_81 = 0;
                                 _loc25_ = 0;
                                 _loc19_ = _loc28_.var_88.next;
                                 _loc20_ = _loc19_;
                                 _loc19_ = _loc19_.next;
                                 _loc21_ = _loc19_;
                                 _loc19_ = _loc19_.next;
                                 while(_loc19_ != null)
                                 {
                                    _loc22_ = _loc19_;
                                    _loc25_ = Number(Number(_loc25_ + _loc21_.x * (_loc22_.y - _loc20_.y)));
                                    _loc26_ = Number(_loc22_.y * _loc21_.x - _loc22_.x * _loc21_.y);
                                    _loc28_.var_82 = Number(_loc28_.var_82 + (_loc21_.x + _loc22_.x) * _loc26_);
                                    _loc28_.var_81 = Number(_loc28_.var_81 + (_loc21_.y + _loc22_.y) * _loc26_);
                                    _loc20_ = _loc21_;
                                    _loc21_ = _loc22_;
                                    _loc19_ = _loc19_.next;
                                 }
                                 _loc19_ = _loc28_.var_88.next;
                                 _loc22_ = _loc19_;
                                 _loc25_ = Number(Number(_loc25_ + _loc21_.x * (_loc22_.y - _loc20_.y)));
                                 _loc26_ = Number(_loc22_.y * _loc21_.x - _loc22_.x * _loc21_.y);
                                 _loc28_.var_82 = Number(_loc28_.var_82 + (_loc21_.x + _loc22_.x) * _loc26_);
                                 _loc28_.var_81 = Number(_loc28_.var_81 + (_loc21_.y + _loc22_.y) * _loc26_);
                                 _loc20_ = _loc21_;
                                 _loc21_ = _loc22_;
                                 _loc19_ = _loc19_.next;
                                 _loc29_ = _loc19_;
                                 _loc25_ = Number(Number(_loc25_ + _loc21_.x * (_loc29_.y - _loc20_.y)));
                                 _loc26_ = Number(_loc29_.y * _loc21_.x - _loc29_.x * _loc21_.y);
                                 _loc28_.var_82 = Number(_loc28_.var_82 + (_loc21_.x + _loc29_.x) * _loc26_);
                                 _loc28_.var_81 = Number(_loc28_.var_81 + (_loc21_.y + _loc29_.y) * _loc26_);
                                 _loc25_ = Number(1 / (3 * _loc25_));
                                 _loc26_ = Number(_loc25_);
                                 _loc28_.var_82 = _loc28_.var_82 * _loc26_;
                                 _loc28_.var_81 = _loc28_.var_81 * _loc26_;
                              }
                           }
                           if(_loc17_.var_115 != null)
                           {
                              _loc17_.var_115.zpp_inner.x = _loc17_.var_82;
                              _loc17_.var_115.zpp_inner.y = _loc17_.var_81;
                           }
                        }
                        _loc23_ = _loc17_.body;
                        if(_loc23_.var_113)
                        {
                           _loc23_.var_113 = false;
                           _loc23_.var_84 = Number(Math.sin(_loc23_.var_93));
                           _loc23_.var_83 = Number(Math.cos(_loc23_.var_93));
                           null;
                        }
                        _loc17_.var_99 = Number(_loc17_.body.var_95 + (_loc17_.body.var_83 * _loc17_.var_82 - _loc17_.body.var_84 * _loc17_.var_81));
                        _loc17_.var_100 = Number(_loc17_.body.var_96 + (Number(_loc17_.var_82 * _loc17_.body.var_84 + _loc17_.var_81 * _loc17_.body.var_83)));
                     }
                  }
                  if(param4)
                  {
                     _loc7_ = Number(_loc17_.var_99);
                     _loc8_ = Number(_loc17_.var_100);
                  }
                  else
                  {
                     _loc7_ = Number(Number(Number(param2.a * _loc17_.var_99 + param2.b * _loc17_.var_100) + param2.tx));
                     _loc8_ = Number(Number(Number(param2.c * _loc17_.var_99 + param2.d * _loc17_.var_100) + param2.ty));
                  }
                  graphics.moveTo(_loc7_,_loc8_);
                  graphics.lineTo(_loc9_,_loc24_);
               }
            }
            if(outer.var_752)
            {
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
                           _loc17_ = param1.name_6;
                           if(_loc17_.var_88.next.next == null)
                           {
                              _loc17_.var_82 = _loc17_.var_88.next.x;
                              _loc17_.var_81 = _loc17_.var_88.next.y;
                              null;
                           }
                           else if(_loc17_.var_88.next.next.next == null)
                           {
                              _loc17_.var_82 = _loc17_.var_88.next.x;
                              _loc17_.var_81 = _loc17_.var_88.next.y;
                              _loc7_ = 1;
                              _loc17_.var_82 = Number(_loc17_.var_82 + _loc17_.var_88.next.next.x * _loc7_);
                              _loc17_.var_81 = Number(_loc17_.var_81 + _loc17_.var_88.next.next.y * _loc7_);
                              _loc7_ = 0.5;
                              _loc17_.var_82 = _loc17_.var_82 * _loc7_;
                              _loc17_.var_81 = _loc17_.var_81 * _loc7_;
                           }
                           else
                           {
                              _loc17_.var_82 = 0;
                              _loc17_.var_81 = 0;
                              _loc7_ = 0;
                              _loc18_ = _loc17_.var_88.next;
                              _loc19_ = _loc18_;
                              _loc18_ = _loc18_.next;
                              _loc20_ = _loc18_;
                              _loc18_ = _loc18_.next;
                              while(_loc18_ != null)
                              {
                                 _loc21_ = _loc18_;
                                 _loc7_ = Number(Number(_loc7_ + _loc20_.x * (_loc21_.y - _loc19_.y)));
                                 _loc8_ = Number(_loc21_.y * _loc20_.x - _loc21_.x * _loc20_.y);
                                 _loc17_.var_82 = Number(_loc17_.var_82 + (_loc20_.x + _loc21_.x) * _loc8_);
                                 _loc17_.var_81 = Number(_loc17_.var_81 + (_loc20_.y + _loc21_.y) * _loc8_);
                                 _loc19_ = _loc20_;
                                 _loc20_ = _loc21_;
                                 _loc18_ = _loc18_.next;
                              }
                              _loc18_ = _loc17_.var_88.next;
                              _loc21_ = _loc18_;
                              _loc7_ = Number(Number(_loc7_ + _loc20_.x * (_loc21_.y - _loc19_.y)));
                              _loc8_ = Number(_loc21_.y * _loc20_.x - _loc21_.x * _loc20_.y);
                              _loc17_.var_82 = Number(_loc17_.var_82 + (_loc20_.x + _loc21_.x) * _loc8_);
                              _loc17_.var_81 = Number(_loc17_.var_81 + (_loc20_.y + _loc21_.y) * _loc8_);
                              _loc19_ = _loc20_;
                              _loc20_ = _loc21_;
                              _loc18_ = _loc18_.next;
                              _loc22_ = _loc18_;
                              _loc7_ = Number(Number(_loc7_ + _loc20_.x * (_loc22_.y - _loc19_.y)));
                              _loc8_ = Number(_loc22_.y * _loc20_.x - _loc22_.x * _loc20_.y);
                              _loc17_.var_82 = Number(_loc17_.var_82 + (_loc20_.x + _loc22_.x) * _loc8_);
                              _loc17_.var_81 = Number(_loc17_.var_81 + (_loc20_.y + _loc22_.y) * _loc8_);
                              _loc7_ = Number(1 / (3 * _loc7_));
                              _loc8_ = Number(_loc7_);
                              _loc17_.var_82 = _loc17_.var_82 * _loc8_;
                              _loc17_.var_81 = _loc17_.var_81 * _loc8_;
                           }
                        }
                        if(param1.var_115 != null)
                        {
                           param1.var_115.zpp_inner.x = param1.var_82;
                           param1.var_115.zpp_inner.y = param1.var_81;
                        }
                     }
                     _loc23_ = param1.body;
                     if(_loc23_.var_113)
                     {
                        _loc23_.var_113 = false;
                        _loc23_.var_84 = Number(Math.sin(_loc23_.var_93));
                        _loc23_.var_83 = Number(Math.cos(_loc23_.var_93));
                        null;
                     }
                     param1.var_99 = Number(param1.body.var_95 + (param1.body.var_83 * param1.var_82 - param1.body.var_84 * param1.var_81));
                     param1.var_100 = Number(param1.body.var_96 + (Number(param1.var_82 * param1.body.var_84 + param1.var_81 * param1.body.var_83)));
                  }
               }
               _loc11_ = _loc5_;
               _loc12_ = 16711680;
               _loc7_ = 0.8;
               _loc13_ = Number((_loc11_ >> 16 & 255) * _loc7_ + (_loc12_ >> 16 & 255) * (1 - _loc7_));
               _loc14_ = Number((_loc11_ >> 8 & 255) * _loc7_ + (_loc12_ >> 8 & 255) * (1 - _loc7_));
               _loc15_ = Number((_loc11_ & 255) * _loc7_ + (_loc12_ & 255) * (1 - _loc7_));
               graphics.lineStyle(outer_zn.thickness,-16777216 | _loc13_ << 16 | _loc14_ << 8 | _loc15_,1);
               _loc7_ = 0;
               _loc8_ = 0;
               if(param4)
               {
                  _loc7_ = Number(param1.var_99);
                  _loc8_ = Number(param1.var_100);
               }
               else
               {
                  _loc7_ = Number(Number(Number(param2.a * param1.var_99 + param2.b * param1.var_100) + param2.tx));
                  _loc8_ = Number(Number(Number(param2.c * param1.var_99 + param2.d * param1.var_100) + param2.ty));
               }
               graphics.drawCircle(_loc7_,_loc8_,1);
               if(param1.var_149)
               {
                  if(param1.body != null)
                  {
                     param1.var_149 = false;
                     if(param1.type == class_223.var_131)
                     {
                        _loc16_ = param1.var_102;
                        if(_loc16_.var_139)
                        {
                           if(_loc16_.body != null)
                           {
                              _loc16_.var_139 = false;
                              if(_loc16_.var_140)
                              {
                                 _loc16_.var_140 = false;
                                 if(_loc16_.type == class_223.var_155)
                                 {
                                    _loc17_ = _loc16_.name_6;
                                    if(_loc17_.var_88.next.next == null)
                                    {
                                       _loc17_.var_82 = _loc17_.var_88.next.x;
                                       _loc17_.var_81 = _loc17_.var_88.next.y;
                                       null;
                                    }
                                    else if(_loc17_.var_88.next.next.next == null)
                                    {
                                       _loc17_.var_82 = _loc17_.var_88.next.x;
                                       _loc17_.var_81 = _loc17_.var_88.next.y;
                                       _loc9_ = 1;
                                       _loc17_.var_82 = Number(_loc17_.var_82 + _loc17_.var_88.next.next.x * _loc9_);
                                       _loc17_.var_81 = Number(_loc17_.var_81 + _loc17_.var_88.next.next.y * _loc9_);
                                       _loc9_ = 0.5;
                                       _loc17_.var_82 = _loc17_.var_82 * _loc9_;
                                       _loc17_.var_81 = _loc17_.var_81 * _loc9_;
                                    }
                                    else
                                    {
                                       _loc17_.var_82 = 0;
                                       _loc17_.var_81 = 0;
                                       _loc9_ = 0;
                                       _loc18_ = _loc17_.var_88.next;
                                       _loc19_ = _loc18_;
                                       _loc18_ = _loc18_.next;
                                       _loc20_ = _loc18_;
                                       _loc18_ = _loc18_.next;
                                       while(_loc18_ != null)
                                       {
                                          _loc21_ = _loc18_;
                                          _loc9_ = Number(Number(_loc9_ + _loc20_.x * (_loc21_.y - _loc19_.y)));
                                          _loc24_ = Number(_loc21_.y * _loc20_.x - _loc21_.x * _loc20_.y);
                                          _loc17_.var_82 = Number(_loc17_.var_82 + (_loc20_.x + _loc21_.x) * _loc24_);
                                          _loc17_.var_81 = Number(_loc17_.var_81 + (_loc20_.y + _loc21_.y) * _loc24_);
                                          _loc19_ = _loc20_;
                                          _loc20_ = _loc21_;
                                          _loc18_ = _loc18_.next;
                                       }
                                       _loc18_ = _loc17_.var_88.next;
                                       _loc21_ = _loc18_;
                                       _loc9_ = Number(Number(_loc9_ + _loc20_.x * (_loc21_.y - _loc19_.y)));
                                       _loc24_ = Number(_loc21_.y * _loc20_.x - _loc21_.x * _loc20_.y);
                                       _loc17_.var_82 = Number(_loc17_.var_82 + (_loc20_.x + _loc21_.x) * _loc24_);
                                       _loc17_.var_81 = Number(_loc17_.var_81 + (_loc20_.y + _loc21_.y) * _loc24_);
                                       _loc19_ = _loc20_;
                                       _loc20_ = _loc21_;
                                       _loc18_ = _loc18_.next;
                                       _loc22_ = _loc18_;
                                       _loc9_ = Number(Number(_loc9_ + _loc20_.x * (_loc22_.y - _loc19_.y)));
                                       _loc24_ = Number(_loc22_.y * _loc20_.x - _loc22_.x * _loc20_.y);
                                       _loc17_.var_82 = Number(_loc17_.var_82 + (_loc20_.x + _loc22_.x) * _loc24_);
                                       _loc17_.var_81 = Number(_loc17_.var_81 + (_loc20_.y + _loc22_.y) * _loc24_);
                                       _loc9_ = Number(1 / (3 * _loc9_));
                                       _loc24_ = Number(_loc9_);
                                       _loc17_.var_82 = _loc17_.var_82 * _loc24_;
                                       _loc17_.var_81 = _loc17_.var_81 * _loc24_;
                                    }
                                 }
                                 if(_loc16_.var_115 != null)
                                 {
                                    _loc16_.var_115.zpp_inner.x = _loc16_.var_82;
                                    _loc16_.var_115.zpp_inner.y = _loc16_.var_81;
                                 }
                              }
                              _loc23_ = _loc16_.body;
                              if(_loc23_.var_113)
                              {
                                 _loc23_.var_113 = false;
                                 _loc23_.var_84 = Number(Math.sin(_loc23_.var_93));
                                 _loc23_.var_83 = Number(Math.cos(_loc23_.var_93));
                                 null;
                              }
                              _loc16_.var_99 = Number(_loc16_.body.var_95 + (_loc16_.body.var_83 * _loc16_.var_82 - _loc16_.body.var_84 * _loc16_.var_81));
                              _loc16_.var_100 = Number(_loc16_.body.var_96 + (Number(_loc16_.var_82 * _loc16_.body.var_84 + _loc16_.var_81 * _loc16_.body.var_83)));
                           }
                        }
                        _loc9_ = Number(_loc16_.radius);
                        _loc24_ = Number(_loc16_.radius);
                        _loc16_.name_3.var_77 = _loc16_.var_99 - _loc9_;
                        _loc16_.name_3.var_78 = _loc16_.var_100 - _loc24_;
                        _loc16_.name_3.var_79 = Number(_loc16_.var_99 + _loc9_);
                        _loc16_.name_3.var_80 = Number(_loc16_.var_100 + _loc24_);
                     }
                     else
                     {
                        _loc17_ = param1.name_6;
                        if(_loc17_.var_153)
                        {
                           if(_loc17_.body != null)
                           {
                              _loc17_.var_153 = false;
                              _loc17_.method_116();
                              _loc23_ = _loc17_.body;
                              if(_loc23_.var_113)
                              {
                                 _loc23_.var_113 = false;
                                 _loc23_.var_84 = Number(Math.sin(_loc23_.var_93));
                                 _loc23_.var_83 = Number(Math.cos(_loc23_.var_93));
                                 null;
                              }
                              _loc18_ = _loc17_.var_88.next;
                              _loc19_ = _loc17_.var_107.next;
                              while(_loc19_ != null)
                              {
                                 _loc20_ = _loc19_;
                                 _loc21_ = _loc18_;
                                 _loc18_ = _loc18_.next;
                                 _loc20_.x = Number(_loc17_.body.var_95 + (_loc17_.body.var_83 * _loc21_.x - _loc17_.body.var_84 * _loc21_.y));
                                 _loc20_.y = Number(_loc17_.body.var_96 + (Number(_loc21_.x * _loc17_.body.var_84 + _loc21_.y * _loc17_.body.var_83)));
                                 _loc19_ = _loc19_.next;
                              }
                           }
                        }
                        _loc18_ = _loc17_.var_107.next;
                        _loc17_.name_3.var_77 = _loc18_.x;
                        _loc17_.name_3.var_78 = _loc18_.y;
                        _loc17_.name_3.var_79 = _loc18_.x;
                        _loc17_.name_3.var_80 = _loc18_.y;
                        _loc19_ = _loc17_.var_107.next.next;
                        while(_loc19_ != null)
                        {
                           _loc20_ = _loc19_;
                           if(_loc20_.x < _loc17_.name_3.var_77)
                           {
                              _loc17_.name_3.var_77 = _loc20_.x;
                           }
                           if(_loc20_.x > _loc17_.name_3.var_79)
                           {
                              _loc17_.name_3.var_79 = _loc20_.x;
                           }
                           if(_loc20_.y < _loc17_.name_3.var_78)
                           {
                              _loc17_.name_3.var_78 = _loc20_.y;
                           }
                           if(_loc20_.y > _loc17_.name_3.var_80)
                           {
                              _loc17_.name_3.var_80 = _loc20_.y;
                           }
                           _loc19_ = _loc19_.next;
                        }
                     }
                  }
               }
               if(param4)
               {
                  _loc30_ = param1.name_3;
                  _loc30_ = param1.name_3;
                  graphics.drawRect(param1.name_3.var_77,param1.name_3.var_78,_loc30_.var_79 - _loc30_.var_77,_loc30_.var_80 - _loc30_.var_78);
               }
               else
               {
                  _loc9_ = 0;
                  _loc24_ = 0;
                  _loc9_ = Number(Number(Number(param2.a * param1.name_3.var_77 + param2.b * param1.name_3.var_78) + param2.tx));
                  _loc24_ = Number(Number(Number(param2.c * param1.name_3.var_77 + param2.d * param1.name_3.var_78) + param2.ty));
                  _loc30_ = param1.name_3;
                  _loc25_ = Number(_loc30_.var_79 - _loc30_.var_77);
                  _loc26_ = 0;
                  _loc27_ = Number(Number(param2.a * _loc25_ + param2.b * _loc26_));
                  _loc26_ = Number(Number(param2.c * _loc25_ + param2.d * _loc26_));
                  _loc25_ = Number(_loc27_);
                  _loc27_ = 0;
                  _loc30_ = param1.name_3;
                  _loc31_ = _loc30_.var_80 - _loc30_.var_78;
                  _loc32_ = Number(param2.a * _loc27_ + param2.b * _loc31_);
                  _loc31_ = Number(param2.c * _loc27_ + param2.d * _loc31_);
                  _loc27_ = Number(_loc32_);
                  graphics.moveTo(_loc9_,_loc24_);
                  graphics.lineTo(Number(_loc9_ + _loc25_),Number(_loc24_ + _loc26_));
                  graphics.lineTo(Number(Number(_loc9_ + _loc25_) + _loc27_),Number(Number(_loc24_ + _loc26_) + _loc31_));
                  graphics.lineTo(Number(_loc9_ + _loc27_),Number(_loc24_ + _loc31_));
                  graphics.lineTo(_loc9_,_loc24_);
               }
            }
         }
      }
      
      public final function method_224(param1:ZPP_Compound, param2:ZPP_Mat23, param3:Number, param4:Boolean) : void
      {
         var _loc6_:* = null as ZPP_Compound;
         var _loc8_:* = null as ZPP_Body;
         var _loc10_:* = null as ZPP_Constraint;
         var _loc5_:ZNPNode_ZPP_Compound = param1.name_27.var_73;
         while(_loc5_ != null)
         {
            _loc6_ = _loc5_.var_74;
            method_224(_loc6_,param2,param3,param4);
            _loc5_ = _loc5_.next;
         }
         var _loc7_:ZNPNode_ZPP_Body = param1.name_30.var_73;
         while(_loc7_ != null)
         {
            _loc8_ = _loc7_.var_74;
            if(_loc8_.outer.var_323)
            {
               method_130(_loc8_,param2,param3,param4);
            }
            _loc7_ = _loc7_.next;
         }
         var _loc9_:ZNPNode_ZPP_Constraint = param1.name_19.var_73;
         while(_loc9_ != null)
         {
            _loc10_ = _loc9_.var_74;
            if(!!_loc10_.active && _loc10_.outer.var_323)
            {
               _loc10_.draw(outer);
            }
            _loc9_ = _loc9_.next;
         }
      }
      
      public final function method_130(param1:ZPP_Body, param2:ZPP_Mat23, param3:Number, param4:Boolean) : void
      {
         var _loc5_:* = null as ZNPNode_ZPP_Shape;
         var _loc6_:* = null as ZPP_Shape;
         var _loc7_:* = 0;
         var _loc8_:int = 0;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:* = NaN;
         var _loc17_:* = null as ZPP_Circle;
         var _loc18_:* = null as ZPP_Polygon;
         var _loc19_:* = NaN;
         var _loc20_:* = null as ZPP_Vec2;
         var _loc21_:* = null as ZPP_Vec2;
         var _loc22_:* = null as ZPP_Vec2;
         var _loc23_:* = null as ZPP_Vec2;
         var _loc24_:* = NaN;
         var _loc25_:* = null as ZPP_Vec2;
         var _loc26_:* = null as ZPP_Body;
         var _loc27_:* = null as ZPP_AABB;
         var _loc28_:* = null as ZPP_AABB;
         var _loc29_:Number = NaN;
         var _loc30_:* = NaN;
         var _loc31_:* = NaN;
         var _loc32_:Number = NaN;
         var _loc33_:Number = NaN;
         _loc5_ = param1.shapes.var_73;
         while(_loc5_ != null)
         {
            _loc6_ = _loc5_.var_74;
            method_154(_loc6_,param2,param3,param4);
            _loc5_ = _loc5_.next;
         }
         if(outer.var_667)
         {
            if(outer.colour == null)
            {
               _loc8_ = 16777215 * Math.exp(-(int(param1.id % 500)) / 1500);
            }
            else
            {
               _loc8_ = outer.colour(param1.id);
            }
            _loc9_ = Number(((_loc8_ & 16711680) >> 16) * 0.7);
            _loc10_ = Number(((_loc8_ & 65280) >> 8) * 0.7);
            _loc11_ = Number((_loc8_ & 255) * 0.7);
            if(param1.space != null && param1.outer.zpp_inner.var_112.var_129)
            {
               _loc9_ = Number(Number(0.4 * _loc9_ + 0.6 * var_480));
               _loc10_ = Number(Number(0.4 * _loc10_ + 0.6 * var_505));
               _loc11_ = Number(Number(0.4 * _loc11_ + 0.6 * var_499));
            }
            _loc7_ = -16777216 | int(_loc9_) << 16 | int(_loc10_) << 8 | int(_loc11_);
            _loc8_ = _loc7_;
            _loc12_ = 16711680;
            _loc9_ = 0.8;
            _loc13_ = Number((_loc8_ >> 16 & 255) * _loc9_ + (_loc12_ >> 16 & 255) * (1 - _loc9_));
            _loc14_ = Number((_loc8_ >> 8 & 255) * _loc9_ + (_loc12_ >> 8 & 255) * (1 - _loc9_));
            _loc15_ = Number((_loc8_ & 255) * _loc9_ + (_loc12_ & 255) * (1 - _loc9_));
            graphics.lineStyle(outer_zn.thickness,-16777216 | _loc13_ << 16 | _loc14_ << 8 | _loc15_,1);
            _loc9_ = 0;
            _loc10_ = 0;
            _loc11_ = 0;
            _loc16_ = 0;
            if(param1.shapes.var_73 != null)
            {
               param1.method_263();
               if(param4)
               {
                  _loc9_ = Number(param1.var_99);
                  _loc10_ = Number(param1.var_100);
               }
               else
               {
                  _loc9_ = Number(Number(Number(param2.a * param1.var_99 + param2.b * param1.var_100) + param2.tx));
                  _loc10_ = Number(Number(Number(param2.c * param1.var_99 + param2.d * param1.var_100) + param2.ty));
               }
               graphics.drawCircle(_loc9_,_loc10_,1);
               if(param1.var_149)
               {
                  param1.var_149 = false;
                  param1.name_3.var_77 = 1.79e308;
                  param1.name_3.var_78 = 1.79e308;
                  param1.name_3.var_79 = -1.79e308;
                  param1.name_3.var_80 = -1.79e308;
                  _loc5_ = param1.shapes.var_73;
                  while(_loc5_ != null)
                  {
                     _loc6_ = _loc5_.var_74;
                     if(_loc6_.var_149)
                     {
                        if(_loc6_.body != null)
                        {
                           _loc6_.var_149 = false;
                           if(_loc6_.type == class_223.var_131)
                           {
                              _loc17_ = _loc6_.var_102;
                              if(_loc17_.var_139)
                              {
                                 if(_loc17_.body != null)
                                 {
                                    _loc17_.var_139 = false;
                                    if(_loc17_.var_140)
                                    {
                                       _loc17_.var_140 = false;
                                       if(_loc17_.type == class_223.var_155)
                                       {
                                          _loc18_ = _loc17_.name_6;
                                          if(_loc18_.var_88.next.next == null)
                                          {
                                             _loc18_.var_82 = _loc18_.var_88.next.x;
                                             _loc18_.var_81 = _loc18_.var_88.next.y;
                                             null;
                                          }
                                          else if(_loc18_.var_88.next.next.next == null)
                                          {
                                             _loc18_.var_82 = _loc18_.var_88.next.x;
                                             _loc18_.var_81 = _loc18_.var_88.next.y;
                                             _loc19_ = 1;
                                             _loc18_.var_82 = Number(_loc18_.var_82 + _loc18_.var_88.next.next.x * _loc19_);
                                             _loc18_.var_81 = Number(_loc18_.var_81 + _loc18_.var_88.next.next.y * _loc19_);
                                             _loc19_ = 0.5;
                                             _loc18_.var_82 = _loc18_.var_82 * _loc19_;
                                             _loc18_.var_81 = _loc18_.var_81 * _loc19_;
                                          }
                                          else
                                          {
                                             _loc18_.var_82 = 0;
                                             _loc18_.var_81 = 0;
                                             _loc19_ = 0;
                                             _loc20_ = _loc18_.var_88.next;
                                             _loc21_ = _loc20_;
                                             _loc20_ = _loc20_.next;
                                             _loc22_ = _loc20_;
                                             _loc20_ = _loc20_.next;
                                             while(_loc20_ != null)
                                             {
                                                _loc23_ = _loc20_;
                                                _loc19_ = Number(Number(_loc19_ + _loc22_.x * (_loc23_.y - _loc21_.y)));
                                                _loc24_ = Number(_loc23_.y * _loc22_.x - _loc23_.x * _loc22_.y);
                                                _loc18_.var_82 = Number(_loc18_.var_82 + (_loc22_.x + _loc23_.x) * _loc24_);
                                                _loc18_.var_81 = Number(_loc18_.var_81 + (_loc22_.y + _loc23_.y) * _loc24_);
                                                _loc21_ = _loc22_;
                                                _loc22_ = _loc23_;
                                                _loc20_ = _loc20_.next;
                                             }
                                             _loc20_ = _loc18_.var_88.next;
                                             _loc23_ = _loc20_;
                                             _loc19_ = Number(Number(_loc19_ + _loc22_.x * (_loc23_.y - _loc21_.y)));
                                             _loc24_ = Number(_loc23_.y * _loc22_.x - _loc23_.x * _loc22_.y);
                                             _loc18_.var_82 = Number(_loc18_.var_82 + (_loc22_.x + _loc23_.x) * _loc24_);
                                             _loc18_.var_81 = Number(_loc18_.var_81 + (_loc22_.y + _loc23_.y) * _loc24_);
                                             _loc21_ = _loc22_;
                                             _loc22_ = _loc23_;
                                             _loc20_ = _loc20_.next;
                                             _loc25_ = _loc20_;
                                             _loc19_ = Number(Number(_loc19_ + _loc22_.x * (_loc25_.y - _loc21_.y)));
                                             _loc24_ = Number(_loc25_.y * _loc22_.x - _loc25_.x * _loc22_.y);
                                             _loc18_.var_82 = Number(_loc18_.var_82 + (_loc22_.x + _loc25_.x) * _loc24_);
                                             _loc18_.var_81 = Number(_loc18_.var_81 + (_loc22_.y + _loc25_.y) * _loc24_);
                                             _loc19_ = Number(1 / (3 * _loc19_));
                                             _loc24_ = Number(_loc19_);
                                             _loc18_.var_82 = _loc18_.var_82 * _loc24_;
                                             _loc18_.var_81 = _loc18_.var_81 * _loc24_;
                                          }
                                       }
                                       if(_loc17_.var_115 != null)
                                       {
                                          _loc17_.var_115.zpp_inner.x = _loc17_.var_82;
                                          _loc17_.var_115.zpp_inner.y = _loc17_.var_81;
                                       }
                                    }
                                    _loc26_ = _loc17_.body;
                                    if(_loc26_.var_113)
                                    {
                                       _loc26_.var_113 = false;
                                       _loc26_.var_84 = Number(Math.sin(_loc26_.var_93));
                                       _loc26_.var_83 = Number(Math.cos(_loc26_.var_93));
                                       null;
                                    }
                                    _loc17_.var_99 = Number(_loc17_.body.var_95 + (_loc17_.body.var_83 * _loc17_.var_82 - _loc17_.body.var_84 * _loc17_.var_81));
                                    _loc17_.var_100 = Number(_loc17_.body.var_96 + (Number(_loc17_.var_82 * _loc17_.body.var_84 + _loc17_.var_81 * _loc17_.body.var_83)));
                                 }
                              }
                              _loc19_ = Number(_loc17_.radius);
                              _loc24_ = Number(_loc17_.radius);
                              _loc17_.name_3.var_77 = _loc17_.var_99 - _loc19_;
                              _loc17_.name_3.var_78 = _loc17_.var_100 - _loc24_;
                              _loc17_.name_3.var_79 = Number(_loc17_.var_99 + _loc19_);
                              _loc17_.name_3.var_80 = Number(_loc17_.var_100 + _loc24_);
                           }
                           else
                           {
                              _loc18_ = _loc6_.name_6;
                              if(_loc18_.var_153)
                              {
                                 if(_loc18_.body != null)
                                 {
                                    _loc18_.var_153 = false;
                                    _loc18_.method_116();
                                    _loc26_ = _loc18_.body;
                                    if(_loc26_.var_113)
                                    {
                                       _loc26_.var_113 = false;
                                       _loc26_.var_84 = Number(Math.sin(_loc26_.var_93));
                                       _loc26_.var_83 = Number(Math.cos(_loc26_.var_93));
                                       null;
                                    }
                                    _loc20_ = _loc18_.var_88.next;
                                    _loc21_ = _loc18_.var_107.next;
                                    while(_loc21_ != null)
                                    {
                                       _loc22_ = _loc21_;
                                       _loc23_ = _loc20_;
                                       _loc20_ = _loc20_.next;
                                       _loc22_.x = Number(_loc18_.body.var_95 + (_loc18_.body.var_83 * _loc23_.x - _loc18_.body.var_84 * _loc23_.y));
                                       _loc22_.y = Number(_loc18_.body.var_96 + (Number(_loc23_.x * _loc18_.body.var_84 + _loc23_.y * _loc18_.body.var_83)));
                                       _loc21_ = _loc21_.next;
                                    }
                                 }
                              }
                              _loc20_ = _loc18_.var_107.next;
                              _loc18_.name_3.var_77 = _loc20_.x;
                              _loc18_.name_3.var_78 = _loc20_.y;
                              _loc18_.name_3.var_79 = _loc20_.x;
                              _loc18_.name_3.var_80 = _loc20_.y;
                              _loc21_ = _loc18_.var_107.next.next;
                              while(_loc21_ != null)
                              {
                                 _loc22_ = _loc21_;
                                 if(_loc22_.x < _loc18_.name_3.var_77)
                                 {
                                    _loc18_.name_3.var_77 = _loc22_.x;
                                 }
                                 if(_loc22_.x > _loc18_.name_3.var_79)
                                 {
                                    _loc18_.name_3.var_79 = _loc22_.x;
                                 }
                                 if(_loc22_.y < _loc18_.name_3.var_78)
                                 {
                                    _loc18_.name_3.var_78 = _loc22_.y;
                                 }
                                 if(_loc22_.y > _loc18_.name_3.var_80)
                                 {
                                    _loc18_.name_3.var_80 = _loc22_.y;
                                 }
                                 _loc21_ = _loc21_.next;
                              }
                           }
                        }
                     }
                     _loc27_ = param1.name_3;
                     _loc28_ = _loc6_.name_3;
                     if(_loc28_.var_77 < _loc27_.var_77)
                     {
                        _loc27_.var_77 = _loc28_.var_77;
                     }
                     if(_loc28_.var_79 > _loc27_.var_79)
                     {
                        _loc27_.var_79 = _loc28_.var_79;
                     }
                     if(_loc28_.var_78 < _loc27_.var_78)
                     {
                        _loc27_.var_78 = _loc28_.var_78;
                     }
                     if(_loc28_.var_80 > _loc27_.var_80)
                     {
                        _loc27_.var_80 = _loc28_.var_80;
                     }
                     _loc5_ = _loc5_.next;
                  }
               }
               if(param4)
               {
                  _loc27_ = param1.name_3;
                  _loc27_ = param1.name_3;
                  graphics.drawRect(param1.name_3.var_77,param1.name_3.var_78,_loc27_.var_79 - _loc27_.var_77,_loc27_.var_80 - _loc27_.var_78);
               }
               else
               {
                  _loc19_ = 0;
                  _loc24_ = 0;
                  _loc19_ = Number(Number(Number(param2.a * param1.name_3.var_77 + param2.b * param1.name_3.var_78) + param2.tx));
                  _loc24_ = Number(Number(Number(param2.c * param1.name_3.var_77 + param2.d * param1.name_3.var_78) + param2.ty));
                  _loc27_ = param1.name_3;
                  _loc29_ = _loc27_.var_79 - _loc27_.var_77;
                  _loc30_ = 0;
                  _loc31_ = Number(Number(param2.a * _loc29_ + param2.b * _loc30_));
                  _loc30_ = Number(Number(param2.c * _loc29_ + param2.d * _loc30_));
                  _loc29_ = _loc31_;
                  _loc31_ = 0;
                  _loc27_ = param1.name_3;
                  _loc32_ = _loc27_.var_80 - _loc27_.var_78;
                  _loc33_ = Number(param2.a * _loc31_ + param2.b * _loc32_);
                  _loc32_ = Number(param2.c * _loc31_ + param2.d * _loc32_);
                  _loc31_ = Number(_loc33_);
                  graphics.moveTo(_loc19_,_loc24_);
                  graphics.lineTo(Number(_loc19_ + _loc29_),Number(_loc24_ + _loc30_));
                  graphics.lineTo(Number(Number(_loc19_ + _loc29_) + _loc31_),Number(Number(_loc24_ + _loc30_) + _loc32_));
                  graphics.lineTo(Number(_loc19_ + _loc31_),Number(_loc24_ + _loc32_));
                  graphics.lineTo(_loc19_,_loc24_);
               }
            }
            if(param4)
            {
               _loc11_ = Number(param1.var_306);
               _loc16_ = Number(param1.var_315);
            }
            else
            {
               _loc11_ = Number(Number(Number(param2.a * param1.var_306 + param2.b * param1.var_315) + param2.tx));
               _loc16_ = Number(Number(Number(param2.c * param1.var_306 + param2.d * param1.var_315) + param2.ty));
            }
            if(param4)
            {
               _loc9_ = Number(param1.var_95);
               _loc10_ = Number(param1.var_96);
            }
            else
            {
               _loc9_ = Number(Number(Number(param2.a * param1.var_95 + param2.b * param1.var_96) + param2.tx));
               _loc10_ = Number(Number(Number(param2.c * param1.var_95 + param2.d * param1.var_96) + param2.ty));
            }
            graphics.moveTo(_loc11_,_loc16_);
            graphics.lineTo(_loc9_,_loc10_);
            graphics.drawCircle(_loc9_,_loc10_,1);
         }
      }
      
      public final function draw_arbiter(param1:ZPP_Arbiter, param2:ZPP_Mat23, param3:Number, param4:Boolean) : void
      {
         var _loc7_:* = null as class_252;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:* = NaN;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:* = null as Vec2;
         var _loc15_:* = null as package_32.Shape;
         var _loc16_:* = NaN;
         var _loc17_:Boolean = false;
         var _loc18_:* = null as Vec2;
         var _loc19_:Boolean = false;
         var _loc20_:* = null as ZPP_Vec2;
         var _loc21_:* = null as FluidArbiter;
         var _loc22_:* = null as CollisionArbiter;
         var _loc23_:* = null as class_328;
         var _loc24_:* = null as ZPP_Contact;
         var _loc25_:* = null as ZPP_Contact;
         var _loc26_:* = null as class_329;
         var _loc27_:* = null as Vec2;
         var _loc28_:* = NaN;
         var _loc29_:* = NaN;
         var _loc30_:* = NaN;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         if(param1.outer.zpp_inner.type == ZPP_Arbiter.SENSOR)
         {
            if(outer.var_572)
            {
               _loc7_ = param1.outer;
               _loc8_ = 65280;
               _loc9_ = ~var_234;
               _loc10_ = 0.7;
               _loc11_ = Number((_loc8_ >> 16 & 255) * _loc10_ + (_loc9_ >> 16 & 255) * (1 - _loc10_));
               _loc12_ = Number((_loc8_ >> 8 & 255) * _loc10_ + (_loc9_ >> 8 & 255) * (1 - _loc10_));
               _loc13_ = Number((_loc8_ & 255) * _loc10_ + (_loc9_ & 255) * (1 - _loc10_));
               graphics.lineStyle(outer_zn.thickness,-16777216 | _loc11_ << 16 | _loc12_ << 8 | _loc13_,1);
               if(param4)
               {
                  if(_loc7_.zpp_inner.ws1.id > _loc7_.zpp_inner.ws2.id)
                  {
                     _loc15_ = _loc7_.zpp_inner.ws2.outer;
                  }
                  else
                  {
                     _loc15_ = _loc7_.zpp_inner.ws1.outer;
                  }
                  if(_loc15_.zpp_inner.var_116 == null)
                  {
                     _loc10_ = Number(_loc15_.zpp_inner.var_99);
                     _loc16_ = Number(_loc15_.zpp_inner.var_100);
                     _loc17_ = false;
                     if(class_219.poolVec2 == null)
                     {
                        _loc18_ = new Vec2();
                     }
                     else
                     {
                        _loc18_ = class_219.poolVec2;
                        class_219.poolVec2 = _loc18_.var_72;
                        _loc18_.var_72 = null;
                     }
                     if(_loc18_.zpp_inner == null)
                     {
                        _loc19_ = false;
                        if(ZPP_Vec2.var_72 == null)
                        {
                           _loc20_ = new ZPP_Vec2();
                        }
                        else
                        {
                           _loc20_ = ZPP_Vec2.var_72;
                           ZPP_Vec2.var_72 = _loc20_.next;
                           _loc20_.next = null;
                        }
                        _loc20_.name_5 = false;
                        _loc20_.var_109 = _loc19_;
                        _loc20_.x = _loc10_;
                        _loc20_.y = _loc16_;
                        _loc18_.zpp_inner = _loc20_;
                        _loc18_.zpp_inner.outer = _loc18_;
                     }
                     else
                     {
                        _loc20_ = _loc18_.zpp_inner;
                        §§push(false);
                        if(_loc20_._validate != null)
                        {
                           _loc20_._validate();
                        }
                        if(_loc18_.zpp_inner.x == _loc10_)
                        {
                           §§pop();
                           _loc20_ = _loc18_.zpp_inner;
                           if(_loc20_._validate != null)
                           {
                              _loc20_._validate();
                           }
                           §§push(_loc18_.zpp_inner.y == _loc16_);
                        }
                        if(!§§pop())
                        {
                           _loc18_.zpp_inner.x = _loc10_;
                           _loc18_.zpp_inner.y = _loc16_;
                           _loc20_ = _loc18_.zpp_inner;
                           if(_loc20_._invalidate != null)
                           {
                              _loc20_._invalidate(_loc20_);
                           }
                        }
                        _loc18_;
                     }
                     _loc18_.zpp_inner.name_5 = _loc17_;
                     _loc15_.zpp_inner.var_116 = _loc18_;
                     _loc15_.zpp_inner.var_116.zpp_inner.var_120 = true;
                     _loc15_.zpp_inner.var_116.zpp_inner.var_109 = true;
                     _loc15_.zpp_inner.var_116.zpp_inner._validate = _loc15_.zpp_inner.method_122;
                  }
                  _loc14_ = _loc15_.zpp_inner.var_116;
                  _loc20_ = _loc14_.zpp_inner;
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  _loc5_ = Number(_loc14_.zpp_inner.x);
                  if(_loc7_.zpp_inner.ws1.id > _loc7_.zpp_inner.ws2.id)
                  {
                     _loc15_ = _loc7_.zpp_inner.ws2.outer;
                  }
                  else
                  {
                     _loc15_ = _loc7_.zpp_inner.ws1.outer;
                  }
                  if(_loc15_.zpp_inner.var_116 == null)
                  {
                     _loc10_ = Number(_loc15_.zpp_inner.var_99);
                     _loc16_ = Number(_loc15_.zpp_inner.var_100);
                     _loc17_ = false;
                     if(class_219.poolVec2 == null)
                     {
                        _loc18_ = new Vec2();
                     }
                     else
                     {
                        _loc18_ = class_219.poolVec2;
                        class_219.poolVec2 = _loc18_.var_72;
                        _loc18_.var_72 = null;
                     }
                     if(_loc18_.zpp_inner == null)
                     {
                        _loc19_ = false;
                        if(ZPP_Vec2.var_72 == null)
                        {
                           _loc20_ = new ZPP_Vec2();
                        }
                        else
                        {
                           _loc20_ = ZPP_Vec2.var_72;
                           ZPP_Vec2.var_72 = _loc20_.next;
                           _loc20_.next = null;
                        }
                        _loc20_.name_5 = false;
                        _loc20_.var_109 = _loc19_;
                        _loc20_.x = _loc10_;
                        _loc20_.y = _loc16_;
                        _loc18_.zpp_inner = _loc20_;
                        _loc18_.zpp_inner.outer = _loc18_;
                     }
                     else
                     {
                        _loc20_ = _loc18_.zpp_inner;
                        §§push(false);
                        if(_loc20_._validate != null)
                        {
                           _loc20_._validate();
                        }
                        if(_loc18_.zpp_inner.x == _loc10_)
                        {
                           §§pop();
                           _loc20_ = _loc18_.zpp_inner;
                           if(_loc20_._validate != null)
                           {
                              _loc20_._validate();
                           }
                           §§push(_loc18_.zpp_inner.y == _loc16_);
                        }
                        if(!§§pop())
                        {
                           _loc18_.zpp_inner.x = _loc10_;
                           _loc18_.zpp_inner.y = _loc16_;
                           _loc20_ = _loc18_.zpp_inner;
                           if(_loc20_._invalidate != null)
                           {
                              _loc20_._invalidate(_loc20_);
                           }
                        }
                        _loc18_;
                     }
                     _loc18_.zpp_inner.name_5 = _loc17_;
                     _loc15_.zpp_inner.var_116 = _loc18_;
                     _loc15_.zpp_inner.var_116.zpp_inner.var_120 = true;
                     _loc15_.zpp_inner.var_116.zpp_inner.var_109 = true;
                     _loc15_.zpp_inner.var_116.zpp_inner._validate = _loc15_.zpp_inner.method_122;
                  }
                  _loc14_ = _loc15_.zpp_inner.var_116;
                  _loc20_ = _loc14_.zpp_inner;
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  _loc6_ = Number(_loc14_.zpp_inner.y);
               }
               else
               {
                  §§push(param2.a);
                  if(_loc7_.zpp_inner.ws1.id > _loc7_.zpp_inner.ws2.id)
                  {
                     _loc15_ = _loc7_.zpp_inner.ws2.outer;
                  }
                  else
                  {
                     _loc15_ = _loc7_.zpp_inner.ws1.outer;
                  }
                  if(_loc15_.zpp_inner.var_116 == null)
                  {
                     _loc10_ = Number(_loc15_.zpp_inner.var_99);
                     _loc16_ = Number(_loc15_.zpp_inner.var_100);
                     _loc17_ = false;
                     if(class_219.poolVec2 == null)
                     {
                        _loc18_ = new Vec2();
                     }
                     else
                     {
                        _loc18_ = class_219.poolVec2;
                        class_219.poolVec2 = _loc18_.var_72;
                        _loc18_.var_72 = null;
                     }
                     if(_loc18_.zpp_inner == null)
                     {
                        _loc19_ = false;
                        if(ZPP_Vec2.var_72 == null)
                        {
                           _loc20_ = new ZPP_Vec2();
                        }
                        else
                        {
                           _loc20_ = ZPP_Vec2.var_72;
                           ZPP_Vec2.var_72 = _loc20_.next;
                           _loc20_.next = null;
                        }
                        _loc20_.name_5 = false;
                        _loc20_.var_109 = _loc19_;
                        _loc20_.x = _loc10_;
                        _loc20_.y = _loc16_;
                        _loc18_.zpp_inner = _loc20_;
                        _loc18_.zpp_inner.outer = _loc18_;
                     }
                     else
                     {
                        _loc20_ = _loc18_.zpp_inner;
                        §§push(false);
                        if(_loc20_._validate != null)
                        {
                           _loc20_._validate();
                        }
                        if(_loc18_.zpp_inner.x == _loc10_)
                        {
                           §§pop();
                           _loc20_ = _loc18_.zpp_inner;
                           if(_loc20_._validate != null)
                           {
                              _loc20_._validate();
                           }
                           §§push(_loc18_.zpp_inner.y == _loc16_);
                        }
                        if(!§§pop())
                        {
                           _loc18_.zpp_inner.x = _loc10_;
                           _loc18_.zpp_inner.y = _loc16_;
                           _loc20_ = _loc18_.zpp_inner;
                           if(_loc20_._invalidate != null)
                           {
                              _loc20_._invalidate(_loc20_);
                           }
                        }
                        _loc18_;
                     }
                     _loc18_.zpp_inner.name_5 = _loc17_;
                     _loc15_.zpp_inner.var_116 = _loc18_;
                     _loc15_.zpp_inner.var_116.zpp_inner.var_120 = true;
                     _loc15_.zpp_inner.var_116.zpp_inner.var_109 = true;
                     _loc15_.zpp_inner.var_116.zpp_inner._validate = _loc15_.zpp_inner.method_122;
                  }
                  _loc14_ = _loc15_.zpp_inner.var_116;
                  _loc20_ = _loc14_.zpp_inner;
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  §§push(§§pop() * _loc14_.zpp_inner.x);
                  §§push(param2.b);
                  if(_loc7_.zpp_inner.ws1.id > _loc7_.zpp_inner.ws2.id)
                  {
                     _loc15_ = _loc7_.zpp_inner.ws2.outer;
                  }
                  else
                  {
                     _loc15_ = _loc7_.zpp_inner.ws1.outer;
                  }
                  if(_loc15_.zpp_inner.var_116 == null)
                  {
                     _loc10_ = Number(_loc15_.zpp_inner.var_99);
                     _loc16_ = Number(_loc15_.zpp_inner.var_100);
                     _loc17_ = false;
                     if(class_219.poolVec2 == null)
                     {
                        _loc18_ = new Vec2();
                     }
                     else
                     {
                        _loc18_ = class_219.poolVec2;
                        class_219.poolVec2 = _loc18_.var_72;
                        _loc18_.var_72 = null;
                     }
                     if(_loc18_.zpp_inner == null)
                     {
                        _loc19_ = false;
                        if(ZPP_Vec2.var_72 == null)
                        {
                           _loc20_ = new ZPP_Vec2();
                        }
                        else
                        {
                           _loc20_ = ZPP_Vec2.var_72;
                           ZPP_Vec2.var_72 = _loc20_.next;
                           _loc20_.next = null;
                        }
                        _loc20_.name_5 = false;
                        _loc20_.var_109 = _loc19_;
                        _loc20_.x = _loc10_;
                        _loc20_.y = _loc16_;
                        _loc18_.zpp_inner = _loc20_;
                        _loc18_.zpp_inner.outer = _loc18_;
                     }
                     else
                     {
                        _loc20_ = _loc18_.zpp_inner;
                        §§push(false);
                        if(_loc20_._validate != null)
                        {
                           _loc20_._validate();
                        }
                        if(_loc18_.zpp_inner.x == _loc10_)
                        {
                           §§pop();
                           _loc20_ = _loc18_.zpp_inner;
                           if(_loc20_._validate != null)
                           {
                              _loc20_._validate();
                           }
                           §§push(_loc18_.zpp_inner.y == _loc16_);
                        }
                        if(!§§pop())
                        {
                           _loc18_.zpp_inner.x = _loc10_;
                           _loc18_.zpp_inner.y = _loc16_;
                           _loc20_ = _loc18_.zpp_inner;
                           if(_loc20_._invalidate != null)
                           {
                              _loc20_._invalidate(_loc20_);
                           }
                        }
                        _loc18_;
                     }
                     _loc18_.zpp_inner.name_5 = _loc17_;
                     _loc15_.zpp_inner.var_116 = _loc18_;
                     _loc15_.zpp_inner.var_116.zpp_inner.var_120 = true;
                     _loc15_.zpp_inner.var_116.zpp_inner.var_109 = true;
                     _loc15_.zpp_inner.var_116.zpp_inner._validate = _loc15_.zpp_inner.method_122;
                  }
                  _loc14_ = _loc15_.zpp_inner.var_116;
                  _loc20_ = _loc14_.zpp_inner;
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  _loc5_ = Number(Number(Number(§§pop() + §§pop() * _loc14_.zpp_inner.y) + param2.tx));
                  §§push(param2.c);
                  if(_loc7_.zpp_inner.ws1.id > _loc7_.zpp_inner.ws2.id)
                  {
                     _loc15_ = _loc7_.zpp_inner.ws2.outer;
                  }
                  else
                  {
                     _loc15_ = _loc7_.zpp_inner.ws1.outer;
                  }
                  if(_loc15_.zpp_inner.var_116 == null)
                  {
                     _loc10_ = Number(_loc15_.zpp_inner.var_99);
                     _loc16_ = Number(_loc15_.zpp_inner.var_100);
                     _loc17_ = false;
                     if(class_219.poolVec2 == null)
                     {
                        _loc18_ = new Vec2();
                     }
                     else
                     {
                        _loc18_ = class_219.poolVec2;
                        class_219.poolVec2 = _loc18_.var_72;
                        _loc18_.var_72 = null;
                     }
                     if(_loc18_.zpp_inner == null)
                     {
                        _loc19_ = false;
                        if(ZPP_Vec2.var_72 == null)
                        {
                           _loc20_ = new ZPP_Vec2();
                        }
                        else
                        {
                           _loc20_ = ZPP_Vec2.var_72;
                           ZPP_Vec2.var_72 = _loc20_.next;
                           _loc20_.next = null;
                        }
                        _loc20_.name_5 = false;
                        _loc20_.var_109 = _loc19_;
                        _loc20_.x = _loc10_;
                        _loc20_.y = _loc16_;
                        _loc18_.zpp_inner = _loc20_;
                        _loc18_.zpp_inner.outer = _loc18_;
                     }
                     else
                     {
                        _loc20_ = _loc18_.zpp_inner;
                        §§push(false);
                        if(_loc20_._validate != null)
                        {
                           _loc20_._validate();
                        }
                        if(_loc18_.zpp_inner.x == _loc10_)
                        {
                           §§pop();
                           _loc20_ = _loc18_.zpp_inner;
                           if(_loc20_._validate != null)
                           {
                              _loc20_._validate();
                           }
                           §§push(_loc18_.zpp_inner.y == _loc16_);
                        }
                        if(!§§pop())
                        {
                           _loc18_.zpp_inner.x = _loc10_;
                           _loc18_.zpp_inner.y = _loc16_;
                           _loc20_ = _loc18_.zpp_inner;
                           if(_loc20_._invalidate != null)
                           {
                              _loc20_._invalidate(_loc20_);
                           }
                        }
                        _loc18_;
                     }
                     _loc18_.zpp_inner.name_5 = _loc17_;
                     _loc15_.zpp_inner.var_116 = _loc18_;
                     _loc15_.zpp_inner.var_116.zpp_inner.var_120 = true;
                     _loc15_.zpp_inner.var_116.zpp_inner.var_109 = true;
                     _loc15_.zpp_inner.var_116.zpp_inner._validate = _loc15_.zpp_inner.method_122;
                  }
                  _loc14_ = _loc15_.zpp_inner.var_116;
                  _loc20_ = _loc14_.zpp_inner;
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  §§push(§§pop() * _loc14_.zpp_inner.x);
                  §§push(param2.d);
                  if(_loc7_.zpp_inner.ws1.id > _loc7_.zpp_inner.ws2.id)
                  {
                     _loc15_ = _loc7_.zpp_inner.ws2.outer;
                  }
                  else
                  {
                     _loc15_ = _loc7_.zpp_inner.ws1.outer;
                  }
                  if(_loc15_.zpp_inner.var_116 == null)
                  {
                     _loc10_ = Number(_loc15_.zpp_inner.var_99);
                     _loc16_ = Number(_loc15_.zpp_inner.var_100);
                     _loc17_ = false;
                     if(class_219.poolVec2 == null)
                     {
                        _loc18_ = new Vec2();
                     }
                     else
                     {
                        _loc18_ = class_219.poolVec2;
                        class_219.poolVec2 = _loc18_.var_72;
                        _loc18_.var_72 = null;
                     }
                     if(_loc18_.zpp_inner == null)
                     {
                        _loc19_ = false;
                        if(ZPP_Vec2.var_72 == null)
                        {
                           _loc20_ = new ZPP_Vec2();
                        }
                        else
                        {
                           _loc20_ = ZPP_Vec2.var_72;
                           ZPP_Vec2.var_72 = _loc20_.next;
                           _loc20_.next = null;
                        }
                        _loc20_.name_5 = false;
                        _loc20_.var_109 = _loc19_;
                        _loc20_.x = _loc10_;
                        _loc20_.y = _loc16_;
                        _loc18_.zpp_inner = _loc20_;
                        _loc18_.zpp_inner.outer = _loc18_;
                     }
                     else
                     {
                        _loc20_ = _loc18_.zpp_inner;
                        §§push(false);
                        if(_loc20_._validate != null)
                        {
                           _loc20_._validate();
                        }
                        if(_loc18_.zpp_inner.x == _loc10_)
                        {
                           §§pop();
                           _loc20_ = _loc18_.zpp_inner;
                           if(_loc20_._validate != null)
                           {
                              _loc20_._validate();
                           }
                           §§push(_loc18_.zpp_inner.y == _loc16_);
                        }
                        if(!§§pop())
                        {
                           _loc18_.zpp_inner.x = _loc10_;
                           _loc18_.zpp_inner.y = _loc16_;
                           _loc20_ = _loc18_.zpp_inner;
                           if(_loc20_._invalidate != null)
                           {
                              _loc20_._invalidate(_loc20_);
                           }
                        }
                        _loc18_;
                     }
                     _loc18_.zpp_inner.name_5 = _loc17_;
                     _loc15_.zpp_inner.var_116 = _loc18_;
                     _loc15_.zpp_inner.var_116.zpp_inner.var_120 = true;
                     _loc15_.zpp_inner.var_116.zpp_inner.var_109 = true;
                     _loc15_.zpp_inner.var_116.zpp_inner._validate = _loc15_.zpp_inner.method_122;
                  }
                  _loc14_ = _loc15_.zpp_inner.var_116;
                  _loc20_ = _loc14_.zpp_inner;
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  _loc6_ = Number(Number(Number(§§pop() + §§pop() * _loc14_.zpp_inner.y) + param2.ty));
               }
               graphics.moveTo(_loc5_,_loc6_);
               if(param4)
               {
                  if(_loc7_.zpp_inner.ws1.id > _loc7_.zpp_inner.ws2.id)
                  {
                     _loc15_ = _loc7_.zpp_inner.ws1.outer;
                  }
                  else
                  {
                     _loc15_ = _loc7_.zpp_inner.ws2.outer;
                  }
                  if(_loc15_.zpp_inner.var_116 == null)
                  {
                     _loc10_ = Number(_loc15_.zpp_inner.var_99);
                     _loc16_ = Number(_loc15_.zpp_inner.var_100);
                     _loc17_ = false;
                     if(class_219.poolVec2 == null)
                     {
                        _loc18_ = new Vec2();
                     }
                     else
                     {
                        _loc18_ = class_219.poolVec2;
                        class_219.poolVec2 = _loc18_.var_72;
                        _loc18_.var_72 = null;
                     }
                     if(_loc18_.zpp_inner == null)
                     {
                        _loc19_ = false;
                        if(ZPP_Vec2.var_72 == null)
                        {
                           _loc20_ = new ZPP_Vec2();
                        }
                        else
                        {
                           _loc20_ = ZPP_Vec2.var_72;
                           ZPP_Vec2.var_72 = _loc20_.next;
                           _loc20_.next = null;
                        }
                        _loc20_.name_5 = false;
                        _loc20_.var_109 = _loc19_;
                        _loc20_.x = _loc10_;
                        _loc20_.y = _loc16_;
                        _loc18_.zpp_inner = _loc20_;
                        _loc18_.zpp_inner.outer = _loc18_;
                     }
                     else
                     {
                        _loc20_ = _loc18_.zpp_inner;
                        §§push(false);
                        if(_loc20_._validate != null)
                        {
                           _loc20_._validate();
                        }
                        if(_loc18_.zpp_inner.x == _loc10_)
                        {
                           §§pop();
                           _loc20_ = _loc18_.zpp_inner;
                           if(_loc20_._validate != null)
                           {
                              _loc20_._validate();
                           }
                           §§push(_loc18_.zpp_inner.y == _loc16_);
                        }
                        if(!§§pop())
                        {
                           _loc18_.zpp_inner.x = _loc10_;
                           _loc18_.zpp_inner.y = _loc16_;
                           _loc20_ = _loc18_.zpp_inner;
                           if(_loc20_._invalidate != null)
                           {
                              _loc20_._invalidate(_loc20_);
                           }
                        }
                        _loc18_;
                     }
                     _loc18_.zpp_inner.name_5 = _loc17_;
                     _loc15_.zpp_inner.var_116 = _loc18_;
                     _loc15_.zpp_inner.var_116.zpp_inner.var_120 = true;
                     _loc15_.zpp_inner.var_116.zpp_inner.var_109 = true;
                     _loc15_.zpp_inner.var_116.zpp_inner._validate = _loc15_.zpp_inner.method_122;
                  }
                  _loc14_ = _loc15_.zpp_inner.var_116;
                  _loc20_ = _loc14_.zpp_inner;
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  _loc5_ = Number(_loc14_.zpp_inner.x);
                  if(_loc7_.zpp_inner.ws1.id > _loc7_.zpp_inner.ws2.id)
                  {
                     _loc15_ = _loc7_.zpp_inner.ws1.outer;
                  }
                  else
                  {
                     _loc15_ = _loc7_.zpp_inner.ws2.outer;
                  }
                  if(_loc15_.zpp_inner.var_116 == null)
                  {
                     _loc10_ = Number(_loc15_.zpp_inner.var_99);
                     _loc16_ = Number(_loc15_.zpp_inner.var_100);
                     _loc17_ = false;
                     if(class_219.poolVec2 == null)
                     {
                        _loc18_ = new Vec2();
                     }
                     else
                     {
                        _loc18_ = class_219.poolVec2;
                        class_219.poolVec2 = _loc18_.var_72;
                        _loc18_.var_72 = null;
                     }
                     if(_loc18_.zpp_inner == null)
                     {
                        _loc19_ = false;
                        if(ZPP_Vec2.var_72 == null)
                        {
                           _loc20_ = new ZPP_Vec2();
                        }
                        else
                        {
                           _loc20_ = ZPP_Vec2.var_72;
                           ZPP_Vec2.var_72 = _loc20_.next;
                           _loc20_.next = null;
                        }
                        _loc20_.name_5 = false;
                        _loc20_.var_109 = _loc19_;
                        _loc20_.x = _loc10_;
                        _loc20_.y = _loc16_;
                        _loc18_.zpp_inner = _loc20_;
                        _loc18_.zpp_inner.outer = _loc18_;
                     }
                     else
                     {
                        _loc20_ = _loc18_.zpp_inner;
                        §§push(false);
                        if(_loc20_._validate != null)
                        {
                           _loc20_._validate();
                        }
                        if(_loc18_.zpp_inner.x == _loc10_)
                        {
                           §§pop();
                           _loc20_ = _loc18_.zpp_inner;
                           if(_loc20_._validate != null)
                           {
                              _loc20_._validate();
                           }
                           §§push(_loc18_.zpp_inner.y == _loc16_);
                        }
                        if(!§§pop())
                        {
                           _loc18_.zpp_inner.x = _loc10_;
                           _loc18_.zpp_inner.y = _loc16_;
                           _loc20_ = _loc18_.zpp_inner;
                           if(_loc20_._invalidate != null)
                           {
                              _loc20_._invalidate(_loc20_);
                           }
                        }
                        _loc18_;
                     }
                     _loc18_.zpp_inner.name_5 = _loc17_;
                     _loc15_.zpp_inner.var_116 = _loc18_;
                     _loc15_.zpp_inner.var_116.zpp_inner.var_120 = true;
                     _loc15_.zpp_inner.var_116.zpp_inner.var_109 = true;
                     _loc15_.zpp_inner.var_116.zpp_inner._validate = _loc15_.zpp_inner.method_122;
                  }
                  _loc14_ = _loc15_.zpp_inner.var_116;
                  _loc20_ = _loc14_.zpp_inner;
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  _loc6_ = Number(_loc14_.zpp_inner.y);
               }
               else
               {
                  §§push(param2.a);
                  if(_loc7_.zpp_inner.ws1.id > _loc7_.zpp_inner.ws2.id)
                  {
                     _loc15_ = _loc7_.zpp_inner.ws1.outer;
                  }
                  else
                  {
                     _loc15_ = _loc7_.zpp_inner.ws2.outer;
                  }
                  if(_loc15_.zpp_inner.var_116 == null)
                  {
                     _loc10_ = Number(_loc15_.zpp_inner.var_99);
                     _loc16_ = Number(_loc15_.zpp_inner.var_100);
                     _loc17_ = false;
                     if(class_219.poolVec2 == null)
                     {
                        _loc18_ = new Vec2();
                     }
                     else
                     {
                        _loc18_ = class_219.poolVec2;
                        class_219.poolVec2 = _loc18_.var_72;
                        _loc18_.var_72 = null;
                     }
                     if(_loc18_.zpp_inner == null)
                     {
                        _loc19_ = false;
                        if(ZPP_Vec2.var_72 == null)
                        {
                           _loc20_ = new ZPP_Vec2();
                        }
                        else
                        {
                           _loc20_ = ZPP_Vec2.var_72;
                           ZPP_Vec2.var_72 = _loc20_.next;
                           _loc20_.next = null;
                        }
                        _loc20_.name_5 = false;
                        _loc20_.var_109 = _loc19_;
                        _loc20_.x = _loc10_;
                        _loc20_.y = _loc16_;
                        _loc18_.zpp_inner = _loc20_;
                        _loc18_.zpp_inner.outer = _loc18_;
                     }
                     else
                     {
                        _loc20_ = _loc18_.zpp_inner;
                        §§push(false);
                        if(_loc20_._validate != null)
                        {
                           _loc20_._validate();
                        }
                        if(_loc18_.zpp_inner.x == _loc10_)
                        {
                           §§pop();
                           _loc20_ = _loc18_.zpp_inner;
                           if(_loc20_._validate != null)
                           {
                              _loc20_._validate();
                           }
                           §§push(_loc18_.zpp_inner.y == _loc16_);
                        }
                        if(!§§pop())
                        {
                           _loc18_.zpp_inner.x = _loc10_;
                           _loc18_.zpp_inner.y = _loc16_;
                           _loc20_ = _loc18_.zpp_inner;
                           if(_loc20_._invalidate != null)
                           {
                              _loc20_._invalidate(_loc20_);
                           }
                        }
                        _loc18_;
                     }
                     _loc18_.zpp_inner.name_5 = _loc17_;
                     _loc15_.zpp_inner.var_116 = _loc18_;
                     _loc15_.zpp_inner.var_116.zpp_inner.var_120 = true;
                     _loc15_.zpp_inner.var_116.zpp_inner.var_109 = true;
                     _loc15_.zpp_inner.var_116.zpp_inner._validate = _loc15_.zpp_inner.method_122;
                  }
                  _loc14_ = _loc15_.zpp_inner.var_116;
                  _loc20_ = _loc14_.zpp_inner;
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  §§push(§§pop() * _loc14_.zpp_inner.x);
                  §§push(param2.b);
                  if(_loc7_.zpp_inner.ws1.id > _loc7_.zpp_inner.ws2.id)
                  {
                     _loc15_ = _loc7_.zpp_inner.ws1.outer;
                  }
                  else
                  {
                     _loc15_ = _loc7_.zpp_inner.ws2.outer;
                  }
                  if(_loc15_.zpp_inner.var_116 == null)
                  {
                     _loc10_ = Number(_loc15_.zpp_inner.var_99);
                     _loc16_ = Number(_loc15_.zpp_inner.var_100);
                     _loc17_ = false;
                     if(class_219.poolVec2 == null)
                     {
                        _loc18_ = new Vec2();
                     }
                     else
                     {
                        _loc18_ = class_219.poolVec2;
                        class_219.poolVec2 = _loc18_.var_72;
                        _loc18_.var_72 = null;
                     }
                     if(_loc18_.zpp_inner == null)
                     {
                        _loc19_ = false;
                        if(ZPP_Vec2.var_72 == null)
                        {
                           _loc20_ = new ZPP_Vec2();
                        }
                        else
                        {
                           _loc20_ = ZPP_Vec2.var_72;
                           ZPP_Vec2.var_72 = _loc20_.next;
                           _loc20_.next = null;
                        }
                        _loc20_.name_5 = false;
                        _loc20_.var_109 = _loc19_;
                        _loc20_.x = _loc10_;
                        _loc20_.y = _loc16_;
                        _loc18_.zpp_inner = _loc20_;
                        _loc18_.zpp_inner.outer = _loc18_;
                     }
                     else
                     {
                        _loc20_ = _loc18_.zpp_inner;
                        §§push(false);
                        if(_loc20_._validate != null)
                        {
                           _loc20_._validate();
                        }
                        if(_loc18_.zpp_inner.x == _loc10_)
                        {
                           §§pop();
                           _loc20_ = _loc18_.zpp_inner;
                           if(_loc20_._validate != null)
                           {
                              _loc20_._validate();
                           }
                           §§push(_loc18_.zpp_inner.y == _loc16_);
                        }
                        if(!§§pop())
                        {
                           _loc18_.zpp_inner.x = _loc10_;
                           _loc18_.zpp_inner.y = _loc16_;
                           _loc20_ = _loc18_.zpp_inner;
                           if(_loc20_._invalidate != null)
                           {
                              _loc20_._invalidate(_loc20_);
                           }
                        }
                        _loc18_;
                     }
                     _loc18_.zpp_inner.name_5 = _loc17_;
                     _loc15_.zpp_inner.var_116 = _loc18_;
                     _loc15_.zpp_inner.var_116.zpp_inner.var_120 = true;
                     _loc15_.zpp_inner.var_116.zpp_inner.var_109 = true;
                     _loc15_.zpp_inner.var_116.zpp_inner._validate = _loc15_.zpp_inner.method_122;
                  }
                  _loc14_ = _loc15_.zpp_inner.var_116;
                  _loc20_ = _loc14_.zpp_inner;
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  _loc5_ = Number(Number(Number(§§pop() + §§pop() * _loc14_.zpp_inner.y) + param2.tx));
                  §§push(param2.c);
                  if(_loc7_.zpp_inner.ws1.id > _loc7_.zpp_inner.ws2.id)
                  {
                     _loc15_ = _loc7_.zpp_inner.ws1.outer;
                  }
                  else
                  {
                     _loc15_ = _loc7_.zpp_inner.ws2.outer;
                  }
                  if(_loc15_.zpp_inner.var_116 == null)
                  {
                     _loc10_ = Number(_loc15_.zpp_inner.var_99);
                     _loc16_ = Number(_loc15_.zpp_inner.var_100);
                     _loc17_ = false;
                     if(class_219.poolVec2 == null)
                     {
                        _loc18_ = new Vec2();
                     }
                     else
                     {
                        _loc18_ = class_219.poolVec2;
                        class_219.poolVec2 = _loc18_.var_72;
                        _loc18_.var_72 = null;
                     }
                     if(_loc18_.zpp_inner == null)
                     {
                        _loc19_ = false;
                        if(ZPP_Vec2.var_72 == null)
                        {
                           _loc20_ = new ZPP_Vec2();
                        }
                        else
                        {
                           _loc20_ = ZPP_Vec2.var_72;
                           ZPP_Vec2.var_72 = _loc20_.next;
                           _loc20_.next = null;
                        }
                        _loc20_.name_5 = false;
                        _loc20_.var_109 = _loc19_;
                        _loc20_.x = _loc10_;
                        _loc20_.y = _loc16_;
                        _loc18_.zpp_inner = _loc20_;
                        _loc18_.zpp_inner.outer = _loc18_;
                     }
                     else
                     {
                        _loc20_ = _loc18_.zpp_inner;
                        §§push(false);
                        if(_loc20_._validate != null)
                        {
                           _loc20_._validate();
                        }
                        if(_loc18_.zpp_inner.x == _loc10_)
                        {
                           §§pop();
                           _loc20_ = _loc18_.zpp_inner;
                           if(_loc20_._validate != null)
                           {
                              _loc20_._validate();
                           }
                           §§push(_loc18_.zpp_inner.y == _loc16_);
                        }
                        if(!§§pop())
                        {
                           _loc18_.zpp_inner.x = _loc10_;
                           _loc18_.zpp_inner.y = _loc16_;
                           _loc20_ = _loc18_.zpp_inner;
                           if(_loc20_._invalidate != null)
                           {
                              _loc20_._invalidate(_loc20_);
                           }
                        }
                        _loc18_;
                     }
                     _loc18_.zpp_inner.name_5 = _loc17_;
                     _loc15_.zpp_inner.var_116 = _loc18_;
                     _loc15_.zpp_inner.var_116.zpp_inner.var_120 = true;
                     _loc15_.zpp_inner.var_116.zpp_inner.var_109 = true;
                     _loc15_.zpp_inner.var_116.zpp_inner._validate = _loc15_.zpp_inner.method_122;
                  }
                  _loc14_ = _loc15_.zpp_inner.var_116;
                  _loc20_ = _loc14_.zpp_inner;
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  §§push(§§pop() * _loc14_.zpp_inner.x);
                  §§push(param2.d);
                  if(_loc7_.zpp_inner.ws1.id > _loc7_.zpp_inner.ws2.id)
                  {
                     _loc15_ = _loc7_.zpp_inner.ws1.outer;
                  }
                  else
                  {
                     _loc15_ = _loc7_.zpp_inner.ws2.outer;
                  }
                  if(_loc15_.zpp_inner.var_116 == null)
                  {
                     _loc10_ = Number(_loc15_.zpp_inner.var_99);
                     _loc16_ = Number(_loc15_.zpp_inner.var_100);
                     _loc17_ = false;
                     if(class_219.poolVec2 == null)
                     {
                        _loc18_ = new Vec2();
                     }
                     else
                     {
                        _loc18_ = class_219.poolVec2;
                        class_219.poolVec2 = _loc18_.var_72;
                        _loc18_.var_72 = null;
                     }
                     if(_loc18_.zpp_inner == null)
                     {
                        _loc19_ = false;
                        if(ZPP_Vec2.var_72 == null)
                        {
                           _loc20_ = new ZPP_Vec2();
                        }
                        else
                        {
                           _loc20_ = ZPP_Vec2.var_72;
                           ZPP_Vec2.var_72 = _loc20_.next;
                           _loc20_.next = null;
                        }
                        _loc20_.name_5 = false;
                        _loc20_.var_109 = _loc19_;
                        _loc20_.x = _loc10_;
                        _loc20_.y = _loc16_;
                        _loc18_.zpp_inner = _loc20_;
                        _loc18_.zpp_inner.outer = _loc18_;
                     }
                     else
                     {
                        _loc20_ = _loc18_.zpp_inner;
                        §§push(false);
                        if(_loc20_._validate != null)
                        {
                           _loc20_._validate();
                        }
                        if(_loc18_.zpp_inner.x == _loc10_)
                        {
                           §§pop();
                           _loc20_ = _loc18_.zpp_inner;
                           if(_loc20_._validate != null)
                           {
                              _loc20_._validate();
                           }
                           §§push(_loc18_.zpp_inner.y == _loc16_);
                        }
                        if(!§§pop())
                        {
                           _loc18_.zpp_inner.x = _loc10_;
                           _loc18_.zpp_inner.y = _loc16_;
                           _loc20_ = _loc18_.zpp_inner;
                           if(_loc20_._invalidate != null)
                           {
                              _loc20_._invalidate(_loc20_);
                           }
                        }
                        _loc18_;
                     }
                     _loc18_.zpp_inner.name_5 = _loc17_;
                     _loc15_.zpp_inner.var_116 = _loc18_;
                     _loc15_.zpp_inner.var_116.zpp_inner.var_120 = true;
                     _loc15_.zpp_inner.var_116.zpp_inner.var_109 = true;
                     _loc15_.zpp_inner.var_116.zpp_inner._validate = _loc15_.zpp_inner.method_122;
                  }
                  _loc14_ = _loc15_.zpp_inner.var_116;
                  _loc20_ = _loc14_.zpp_inner;
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  _loc6_ = Number(Number(Number(§§pop() + §§pop() * _loc14_.zpp_inner.y) + param2.ty));
               }
               graphics.lineTo(_loc5_,_loc6_);
            }
         }
         else if(param1.outer.zpp_inner.type == ZPP_Arbiter.FLUID)
         {
            if(outer.var_674)
            {
               _loc7_ = param1.outer;
               if(_loc7_.zpp_inner.type == ZPP_Arbiter.FLUID)
               {
                  _loc21_ = _loc7_.zpp_inner.var_161.outer_zn;
               }
               else
               {
                  _loc21_ = null;
               }
               _loc8_ = 255;
               _loc9_ = ~var_234;
               _loc10_ = 0.7;
               _loc11_ = Number((_loc8_ >> 16 & 255) * _loc10_ + (_loc9_ >> 16 & 255) * (1 - _loc10_));
               _loc12_ = Number((_loc8_ >> 8 & 255) * _loc10_ + (_loc9_ >> 8 & 255) * (1 - _loc10_));
               _loc13_ = Number((_loc8_ & 255) * _loc10_ + (_loc9_ & 255) * (1 - _loc10_));
               graphics.lineStyle(outer_zn.thickness,-16777216 | _loc11_ << 16 | _loc12_ << 8 | _loc13_,1);
               if(param4)
               {
                  if(_loc21_.zpp_inner.var_161.var_157 == null)
                  {
                     _loc21_.zpp_inner.var_161.method_123();
                  }
                  _loc14_ = _loc21_.zpp_inner.var_161.var_157;
                  _loc20_ = _loc14_.zpp_inner;
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  _loc5_ = Number(_loc14_.zpp_inner.x);
                  if(_loc21_.zpp_inner.var_161.var_157 == null)
                  {
                     _loc21_.zpp_inner.var_161.method_123();
                  }
                  _loc14_ = _loc21_.zpp_inner.var_161.var_157;
                  _loc20_ = _loc14_.zpp_inner;
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  _loc6_ = Number(_loc14_.zpp_inner.y);
               }
               else
               {
                  §§push(param2.a);
                  if(_loc21_.zpp_inner.var_161.var_157 == null)
                  {
                     _loc21_.zpp_inner.var_161.method_123();
                  }
                  _loc14_ = _loc21_.zpp_inner.var_161.var_157;
                  _loc20_ = _loc14_.zpp_inner;
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  §§push(§§pop() * _loc14_.zpp_inner.x);
                  §§push(param2.b);
                  if(_loc21_.zpp_inner.var_161.var_157 == null)
                  {
                     _loc21_.zpp_inner.var_161.method_123();
                  }
                  _loc14_ = _loc21_.zpp_inner.var_161.var_157;
                  _loc20_ = _loc14_.zpp_inner;
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  _loc5_ = Number(Number(Number(§§pop() + §§pop() * _loc14_.zpp_inner.y) + param2.tx));
                  §§push(param2.c);
                  if(_loc21_.zpp_inner.var_161.var_157 == null)
                  {
                     _loc21_.zpp_inner.var_161.method_123();
                  }
                  _loc14_ = _loc21_.zpp_inner.var_161.var_157;
                  _loc20_ = _loc14_.zpp_inner;
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  §§push(§§pop() * _loc14_.zpp_inner.x);
                  §§push(param2.d);
                  if(_loc21_.zpp_inner.var_161.var_157 == null)
                  {
                     _loc21_.zpp_inner.var_161.method_123();
                  }
                  _loc14_ = _loc21_.zpp_inner.var_161.var_157;
                  _loc20_ = _loc14_.zpp_inner;
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  _loc6_ = Number(Number(Number(§§pop() + §§pop() * _loc14_.zpp_inner.y) + param2.ty));
               }
               graphics.drawCircle(_loc5_,_loc6_,0.75);
            }
         }
         else if(outer.var_603)
         {
            _loc7_ = param1.outer;
            if(_loc7_.zpp_inner.type == ZPP_Arbiter.var_292)
            {
               _loc22_ = _loc7_.zpp_inner.var_128.outer_zn;
            }
            else
            {
               _loc22_ = null;
            }
            if(_loc22_.zpp_inner.var_128.var_226 == null)
            {
               _loc22_.zpp_inner.var_128.method_152();
            }
            _loc23_ = _loc22_.zpp_inner.var_128.var_226;
            _loc23_.zpp_inner.method_104();
            if(_loc23_.zpp_inner.var_86)
            {
               _loc23_.zpp_inner.var_86 = false;
               _loc23_.zpp_inner.var_89 = 0;
               _loc24_ = _loc23_.zpp_inner.name_4.next;
               while(_loc24_ != null)
               {
                  _loc25_ = _loc24_;
                  if(!!_loc25_.active && _loc25_.name_20.active)
                  {
                     _loc23_.zpp_inner.var_89 = _loc23_.zpp_inner.var_89 + 1;
                  }
                  _loc24_ = _loc24_.next;
               }
            }
            if(_loc23_.zpp_inner.var_89 != 0)
            {
               _loc10_ = 0;
               _loc16_ = 0;
               if(_loc22_.zpp_inner.var_128.var_226 == null)
               {
                  _loc22_.zpp_inner.var_128.method_152();
               }
               _loc23_ = _loc22_.zpp_inner.var_128.var_226;
               _loc23_.zpp_inner.method_104();
               if(_loc23_.zpp_inner.var_86)
               {
                  _loc23_.zpp_inner.var_86 = false;
                  _loc23_.zpp_inner.var_89 = 0;
                  _loc24_ = _loc23_.zpp_inner.name_4.next;
                  while(_loc24_ != null)
                  {
                     _loc25_ = _loc24_;
                     if(!!_loc25_.active && _loc25_.name_20.active)
                     {
                        _loc23_.zpp_inner.var_89 = _loc23_.zpp_inner.var_89 + 1;
                     }
                     _loc24_ = _loc24_.next;
                  }
               }
               if(_loc23_.zpp_inner.var_89 == 2)
               {
                  if(_loc22_.zpp_inner.var_128.var_226 == null)
                  {
                     _loc22_.zpp_inner.var_128.method_152();
                  }
                  _loc26_ = _loc22_.zpp_inner.var_128.var_226.at(0);
                  if(_loc26_.zpp_inner.var_157 == null)
                  {
                     _loc26_.zpp_inner.method_123();
                  }
                  _loc14_ = _loc26_.zpp_inner.var_157;
                  if(_loc22_.zpp_inner.var_128.var_226 == null)
                  {
                     _loc22_.zpp_inner.var_128.method_152();
                  }
                  _loc26_ = _loc22_.zpp_inner.var_128.var_226.at(1);
                  if(_loc26_.zpp_inner.var_157 == null)
                  {
                     _loc26_.zpp_inner.method_123();
                  }
                  _loc18_ = _loc26_.zpp_inner.var_157;
                  if(_loc22_.zpp_inner.var_128.var_231 == null)
                  {
                     _loc22_.zpp_inner.var_128.method_221();
                  }
                  _loc27_ = _loc22_.zpp_inner.var_128.var_231;
                  _loc28_ = 0.661437828;
                  _loc29_ = 0.75;
                  _loc20_ = _loc27_.zpp_inner;
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  _loc20_ = _loc14_.zpp_inner;
                  §§push(_loc27_.zpp_inner.y);
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  _loc20_ = _loc27_.zpp_inner;
                  §§push(§§pop() * _loc14_.zpp_inner.x);
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  _loc20_ = _loc14_.zpp_inner;
                  §§push(_loc27_.zpp_inner.x);
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  _loc20_ = _loc27_.zpp_inner;
                  §§push(§§pop() - §§pop() * _loc14_.zpp_inner.y);
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  _loc20_ = _loc18_.zpp_inner;
                  §§push(_loc27_.zpp_inner.y);
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  _loc20_ = _loc27_.zpp_inner;
                  §§push(§§pop() * _loc18_.zpp_inner.x);
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  _loc20_ = _loc18_.zpp_inner;
                  §§push(_loc27_.zpp_inner.x);
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  if(§§pop() < §§pop() - §§pop() * _loc18_.zpp_inner.y)
                  {
                     _loc28_ = Number(-_loc28_);
                     _loc29_ = Number(-_loc29_);
                  }
                  _loc8_ = 255;
                  _loc9_ = ~var_234;
                  _loc30_ = 0.7;
                  _loc11_ = Number((_loc8_ >> 16 & 255) * _loc30_ + (_loc9_ >> 16 & 255) * (1 - _loc30_));
                  _loc12_ = Number((_loc8_ >> 8 & 255) * _loc30_ + (_loc9_ >> 8 & 255) * (1 - _loc30_));
                  _loc13_ = Number((_loc8_ & 255) * _loc30_ + (_loc9_ & 255) * (1 - _loc30_));
                  graphics.lineStyle(outer_zn.thickness,-16777216 | _loc11_ << 16 | _loc12_ << 8 | _loc13_,1);
                  _loc20_ = _loc14_.zpp_inner;
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  _loc20_ = _loc27_.zpp_inner;
                  §§push(_loc14_.zpp_inner.x);
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  _loc20_ = _loc27_.zpp_inner;
                  §§push(Number(§§pop() + _loc27_.zpp_inner.x * _loc29_));
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  _loc5_ = Number(§§pop() - _loc27_.zpp_inner.y * _loc28_);
                  _loc20_ = _loc14_.zpp_inner;
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  _loc20_ = _loc27_.zpp_inner;
                  §§push(_loc14_.zpp_inner.y);
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  _loc20_ = _loc27_.zpp_inner;
                  §§push(Number(§§pop() + _loc27_.zpp_inner.y * _loc29_));
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  _loc6_ = Number(Number(§§pop() + _loc27_.zpp_inner.x * _loc28_));
                  if(!param4)
                  {
                     _loc30_ = Number(Number(Number(param2.a * _loc5_ + param2.b * _loc6_) + param2.tx));
                     _loc6_ = Number(Number(Number(param2.c * _loc5_ + param2.d * _loc6_) + param2.ty));
                     _loc5_ = Number(_loc30_);
                  }
                  graphics.moveTo(_loc5_,_loc6_);
                  _loc20_ = _loc18_.zpp_inner;
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  _loc20_ = _loc27_.zpp_inner;
                  §§push(_loc18_.zpp_inner.x);
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  _loc20_ = _loc27_.zpp_inner;
                  §§push(Number(§§pop() + _loc27_.zpp_inner.x * _loc29_));
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  _loc5_ = Number(Number(§§pop() + _loc27_.zpp_inner.y * _loc28_));
                  _loc20_ = _loc18_.zpp_inner;
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  _loc20_ = _loc27_.zpp_inner;
                  §§push(_loc18_.zpp_inner.y);
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  _loc20_ = _loc27_.zpp_inner;
                  §§push(Number(§§pop() + _loc27_.zpp_inner.y * _loc29_));
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  _loc6_ = Number(§§pop() - _loc27_.zpp_inner.x * _loc28_);
                  if(!param4)
                  {
                     _loc30_ = Number(Number(Number(param2.a * _loc5_ + param2.b * _loc6_) + param2.tx));
                     _loc6_ = Number(Number(Number(param2.c * _loc5_ + param2.d * _loc6_) + param2.ty));
                     _loc5_ = Number(_loc30_);
                  }
                  graphics.lineTo(_loc5_,_loc6_);
                  _loc8_ = 16711680;
                  _loc9_ = ~var_234;
                  _loc30_ = 0.7;
                  _loc11_ = Number((_loc8_ >> 16 & 255) * _loc30_ + (_loc9_ >> 16 & 255) * (1 - _loc30_));
                  _loc12_ = Number((_loc8_ >> 8 & 255) * _loc30_ + (_loc9_ >> 8 & 255) * (1 - _loc30_));
                  _loc13_ = Number((_loc8_ & 255) * _loc30_ + (_loc9_ & 255) * (1 - _loc30_));
                  graphics.lineStyle(outer_zn.thickness,-16777216 | _loc11_ << 16 | _loc12_ << 8 | _loc13_,1);
                  _loc20_ = _loc14_.zpp_inner;
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  _loc20_ = _loc27_.zpp_inner;
                  §§push(_loc14_.zpp_inner.x);
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  _loc20_ = _loc27_.zpp_inner;
                  §§push(§§pop() - _loc27_.zpp_inner.x * _loc29_);
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  _loc5_ = Number(§§pop() - _loc27_.zpp_inner.y * _loc28_);
                  _loc20_ = _loc14_.zpp_inner;
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  _loc20_ = _loc27_.zpp_inner;
                  §§push(_loc14_.zpp_inner.y);
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  _loc20_ = _loc27_.zpp_inner;
                  §§push(§§pop() - _loc27_.zpp_inner.y * _loc29_);
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  _loc6_ = Number(Number(§§pop() + _loc27_.zpp_inner.x * _loc28_));
                  if(!param4)
                  {
                     _loc30_ = Number(Number(Number(param2.a * _loc5_ + param2.b * _loc6_) + param2.tx));
                     _loc6_ = Number(Number(Number(param2.c * _loc5_ + param2.d * _loc6_) + param2.ty));
                     _loc5_ = Number(_loc30_);
                  }
                  graphics.moveTo(_loc5_,_loc6_);
                  _loc20_ = _loc18_.zpp_inner;
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  _loc20_ = _loc27_.zpp_inner;
                  §§push(_loc18_.zpp_inner.x);
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  _loc20_ = _loc27_.zpp_inner;
                  §§push(§§pop() - _loc27_.zpp_inner.x * _loc29_);
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  _loc5_ = Number(Number(§§pop() + _loc27_.zpp_inner.y * _loc28_));
                  _loc20_ = _loc18_.zpp_inner;
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  _loc20_ = _loc27_.zpp_inner;
                  §§push(_loc18_.zpp_inner.y);
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  _loc20_ = _loc27_.zpp_inner;
                  §§push(§§pop() - _loc27_.zpp_inner.y * _loc29_);
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  _loc6_ = Number(§§pop() - _loc27_.zpp_inner.x * _loc28_);
                  if(!param4)
                  {
                     _loc30_ = Number(Number(Number(param2.a * _loc5_ + param2.b * _loc6_) + param2.tx));
                     _loc6_ = Number(Number(Number(param2.c * _loc5_ + param2.d * _loc6_) + param2.ty));
                     _loc5_ = Number(_loc30_);
                  }
                  graphics.lineTo(_loc5_,_loc6_);
                  _loc20_ = _loc14_.zpp_inner;
                  §§push(0.5);
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  _loc20_ = _loc18_.zpp_inner;
                  §§push(_loc14_.zpp_inner.x);
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  _loc10_ = Number(§§pop() * (§§pop() + _loc18_.zpp_inner.x));
                  _loc20_ = _loc14_.zpp_inner;
                  §§push(0.5);
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  _loc20_ = _loc18_.zpp_inner;
                  §§push(_loc14_.zpp_inner.y);
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  _loc16_ = Number(§§pop() * (§§pop() + _loc18_.zpp_inner.y));
                  if(!param4)
                  {
                     _loc30_ = Number(Number(Number(param2.a * _loc10_ + param2.b * _loc16_) + param2.tx));
                     _loc16_ = Number(Number(Number(param2.c * _loc10_ + param2.d * _loc16_) + param2.ty));
                     _loc10_ = Number(_loc30_);
                  }
               }
               else
               {
                  if(_loc22_.zpp_inner.var_128.var_226 == null)
                  {
                     _loc22_.zpp_inner.var_128.method_152();
                  }
                  _loc26_ = _loc22_.zpp_inner.var_128.var_226.at(0);
                  if(_loc26_.zpp_inner.var_157 == null)
                  {
                     _loc26_.zpp_inner.method_123();
                  }
                  _loc14_ = _loc26_.zpp_inner.var_157;
                  _loc20_ = _loc14_.zpp_inner;
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  _loc10_ = Number(_loc14_.zpp_inner.x);
                  if(_loc22_.zpp_inner.var_128.var_226 == null)
                  {
                     _loc22_.zpp_inner.var_128.method_152();
                  }
                  _loc26_ = _loc22_.zpp_inner.var_128.var_226.at(0);
                  if(_loc26_.zpp_inner.var_157 == null)
                  {
                     _loc26_.zpp_inner.method_123();
                  }
                  _loc14_ = _loc26_.zpp_inner.var_157;
                  _loc20_ = _loc14_.zpp_inner;
                  if(_loc20_._validate != null)
                  {
                     _loc20_._validate();
                  }
                  _loc16_ = Number(_loc14_.zpp_inner.y);
                  if(!param4)
                  {
                     _loc28_ = Number(Number(Number(param2.a * _loc10_ + param2.b * _loc16_) + param2.tx));
                     _loc16_ = Number(Number(Number(param2.c * _loc10_ + param2.d * _loc16_) + param2.ty));
                     _loc10_ = Number(_loc28_);
                  }
                  _loc8_ = 16711935;
                  _loc9_ = ~var_234;
                  _loc28_ = 0.7;
                  _loc11_ = Number((_loc8_ >> 16 & 255) * _loc28_ + (_loc9_ >> 16 & 255) * (1 - _loc28_));
                  _loc12_ = Number((_loc8_ >> 8 & 255) * _loc28_ + (_loc9_ >> 8 & 255) * (1 - _loc28_));
                  _loc13_ = Number((_loc8_ & 255) * _loc28_ + (_loc9_ & 255) * (1 - _loc28_));
                  graphics.lineStyle(outer_zn.thickness,-16777216 | _loc11_ << 16 | _loc12_ << 8 | _loc13_,1);
                  graphics.drawCircle(_loc10_,_loc16_,1);
               }
               _loc8_ = ~var_234;
               _loc9_ = var_234;
               _loc28_ = 0.7;
               _loc11_ = Number((_loc8_ >> 16 & 255) * _loc28_ + (_loc9_ >> 16 & 255) * (1 - _loc28_));
               _loc12_ = Number((_loc8_ >> 8 & 255) * _loc28_ + (_loc9_ >> 8 & 255) * (1 - _loc28_));
               _loc13_ = Number((_loc8_ & 255) * _loc28_ + (_loc9_ & 255) * (1 - _loc28_));
               graphics.lineStyle(outer_zn.thickness,-16777216 | _loc11_ << 16 | _loc12_ << 8 | _loc13_,1);
               graphics.moveTo(_loc10_,_loc16_);
               if(_loc22_.zpp_inner.var_128.var_231 == null)
               {
                  _loc22_.zpp_inner.var_128.method_221();
               }
               _loc14_ = _loc22_.zpp_inner.var_128.var_231;
               _loc20_ = _loc14_.zpp_inner;
               if(_loc20_._validate != null)
               {
                  _loc20_._validate();
               }
               _loc5_ = Number(_loc14_.zpp_inner.x * 5);
               if(_loc22_.zpp_inner.var_128.var_231 == null)
               {
                  _loc22_.zpp_inner.var_128.method_221();
               }
               _loc14_ = _loc22_.zpp_inner.var_128.var_231;
               _loc20_ = _loc14_.zpp_inner;
               if(_loc20_._validate != null)
               {
                  _loc20_._validate();
               }
               _loc6_ = Number(_loc14_.zpp_inner.y * 5);
               if(!param4)
               {
                  _loc28_ = Number(Number(param2.a * _loc5_ + param2.b * _loc6_));
                  _loc6_ = Number(Number(param2.c * _loc5_ + param2.d * _loc6_));
                  _loc5_ = Number(_loc28_);
               }
               graphics.lineTo(Number(_loc10_ + _loc5_),Number(_loc16_ + _loc6_));
            }
         }
      }
   }
}
