package zpp_nape.util
{
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.si32;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.PixelSnapping;
   import flash.geom.Rectangle;
   import flash.system.ApplicationDomain;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
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
   import package_32.Shape;
   import package_32.class_230;
   import package_33.class_206;
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
   
   public final class class_276 extends class_272
   {
       
      
      public var var_765:Boolean;
      
      public var var_463:class_230;
      
      public var rect:Rectangle;
      
      public var var_133:int;
      
      public var var_132:int;
      
      public var outer_zn:class_206;
      
      public var var_984:Array;
      
      public var var_1051:Array;
      
      public var var_190:class_308;
      
      public var colour:int;
      
      public var var_277:ByteArray;
      
      public var var_462:class_205;
      
      public var var_827:Bitmap;
      
      public var var_435:BitmapData;
      
      public var var_353:ByteArray;
      
      public function class_276(param1:int, param2:int, param3:int, param4:Boolean)
      {
         var _loc5_:int = 0;
         var _loc6_:* = 0;
         var _loc7_:int = 0;
         var_462 = null;
         var_463 = null;
         var_190 = null;
         colour = 0;
         var_133 = 0;
         var_132 = 0;
         var_765 = false;
         var_353 = null;
         var_277 = null;
         var_435 = null;
         rect = null;
         var_827 = null;
         outer_zn = null;
         super(param1,param2);
         var_765 = param4;
         var_1051 = [];
         var_984 = [];
         var_277 = new ByteArray();
         var_277.length = param1 * param2 << 2;
         var_277.endian = Endian.LITTLE_ENDIAN;
         var_435 = new BitmapData(param1,param2,param4,!!param4?0:uint(param3));
         rect = var_435.rect;
         var_353 = new ByteArray();
         var_353.length = var_277.length;
         var_353.endian = Endian.LITTLE_ENDIAN;
         method_229(param3);
         if(param4)
         {
            ApplicationDomain.currentDomain.domainMemory = var_353;
            _loc5_ = 0;
            _loc6_ = var_277.length >> 3;
            while(_loc5_ < _loc6_)
            {
               _loc5_++;
               _loc7_ = _loc5_;
               sf64(0,_loc7_ << 3);
            }
            ApplicationDomain.currentDomain.domainMemory = var_277;
         }
         var_827 = new Bitmap(var_435,PixelSnapping.NEVER,false);
         var_575 = true;
         var_725 = this;
      }
      
      public static function method_802(param1:Number) : int
      {
         return int(Number(param1 + 0.5));
      }
      
      public final function method_229(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         method_338(param1);
         if(!var_765)
         {
            var_353.position = 0;
            ApplicationDomain.currentDomain.domainMemory = var_353;
            _loc2_ = 0;
            _loc3_ = var_277.length >> 2;
            while(_loc2_ < _loc3_)
            {
               _loc2_++;
               _loc4_ = _loc2_;
               si32(param1,_loc4_ << 2);
            }
            ApplicationDomain.currentDomain.domainMemory = var_277;
         }
      }
      
      public final function method_463() : void
      {
         ApplicationDomain.currentDomain.domainMemory = var_277;
      }
      
      public final function flush() : void
      {
         var_435.lock();
         var_277.position = 0;
         var_435.setPixels(rect,var_277);
         var_435.unlock();
      }
      
      public final function method_279(param1:ZPP_Space, param2:ZPP_Mat23, param3:Number, param4:Boolean) : void
      {
         var _loc5_:* = null as class_205;
         var _loc6_:* = null as class_205;
         var _loc7_:* = null as Body;
         var _loc8_:* = null as class_230;
         var _loc9_:* = null as class_230;
         var _loc10_:* = null as Shape;
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
            colour = _loc5_;
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
               var_132 = int(Number(_loc7_ + 0.5));
               var_133 = int(Number(_loc8_ + 0.5));
               method_149(var_132,var_133,int(Number(_loc16_.radius * param3 + 0.5)),colour);
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
                  var_132 = int(Number(_loc9_ + 0.5));
                  var_133 = int(Number(_loc24_ + 0.5));
                  _loc11_ = Number(_loc25_ + 0.5);
                  _loc12_ = Number(_loc26_ + 0.5);
                  method_110(var_132,var_133,_loc11_,_loc12_,colour);
                  var_132 = _loc11_;
                  var_133 = _loc12_;
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
               var_132 = int(Number(_loc7_ + 0.5));
               var_133 = int(Number(_loc8_ + 0.5));
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
                  _loc11_ = Number(_loc7_ + 0.5);
                  _loc12_ = Number(_loc8_ + 0.5);
                  method_110(var_132,var_133,_loc11_,_loc12_,colour);
                  var_132 = _loc11_;
                  var_133 = _loc12_;
                  _loc19_ = _loc19_.next;
               }
               _loc11_ = Number(_loc9_ + 0.5);
               _loc12_ = Number(_loc24_ + 0.5);
               method_110(var_132,var_133,_loc11_,_loc12_,colour);
               var_132 = _loc11_;
               var_133 = _loc12_;
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
                  var_132 = int(Number(_loc7_ + 0.5));
                  var_133 = int(Number(_loc8_ + 0.5));
                  _loc11_ = Number(_loc9_ + 0.5);
                  _loc12_ = Number(_loc24_ + 0.5);
                  method_110(var_132,var_133,_loc11_,_loc12_,colour);
                  var_132 = _loc11_;
                  var_133 = _loc12_;
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
               colour = -16777216 | _loc13_ << 16 | _loc14_ << 8 | _loc15_;
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
               var_132 = int(Number(_loc7_ + 0.5));
               var_133 = int(Number(_loc8_ + 0.5));
               method_149(var_132,var_133,1,colour);
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
                  method_275(param1.name_3,colour);
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
                  var_132 = int(Number(_loc9_ + 0.5));
                  var_133 = int(Number(_loc24_ + 0.5));
                  _loc11_ = Number(Number(_loc9_ + _loc25_) + 0.5);
                  _loc12_ = Number(Number(_loc24_ + _loc26_) + 0.5);
                  method_110(var_132,var_133,_loc11_,_loc12_,colour);
                  var_132 = _loc11_;
                  var_133 = _loc12_;
                  _loc11_ = Number(Number(Number(_loc9_ + _loc25_) + _loc27_) + 0.5);
                  _loc12_ = Number(Number(Number(_loc24_ + _loc26_) + _loc31_) + 0.5);
                  method_110(var_132,var_133,_loc11_,_loc12_,colour);
                  var_132 = _loc11_;
                  var_133 = _loc12_;
                  _loc11_ = Number(Number(_loc9_ + _loc27_) + 0.5);
                  _loc12_ = Number(Number(_loc24_ + _loc31_) + 0.5);
                  method_110(var_132,var_133,_loc11_,_loc12_,colour);
                  var_132 = _loc11_;
                  var_133 = _loc12_;
                  _loc11_ = Number(_loc9_ + 0.5);
                  _loc12_ = Number(_loc24_ + 0.5);
                  method_110(var_132,var_133,_loc11_,_loc12_,colour);
                  var_132 = _loc11_;
                  var_133 = _loc12_;
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
            colour = -16777216 | _loc13_ << 16 | _loc14_ << 8 | _loc15_;
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
               var_132 = int(Number(_loc9_ + 0.5));
               var_133 = int(Number(_loc10_ + 0.5));
               method_149(var_132,var_133,1,colour);
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
                  method_275(param1.name_3,colour);
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
                  var_132 = int(Number(_loc19_ + 0.5));
                  var_133 = int(Number(_loc24_ + 0.5));
                  _loc8_ = Number(Number(_loc19_ + _loc29_) + 0.5);
                  _loc12_ = Number(Number(_loc24_ + _loc30_) + 0.5);
                  method_110(var_132,var_133,_loc8_,_loc12_,colour);
                  var_132 = _loc8_;
                  var_133 = _loc12_;
                  _loc8_ = Number(Number(Number(_loc19_ + _loc29_) + _loc31_) + 0.5);
                  _loc12_ = Number(Number(Number(_loc24_ + _loc30_) + _loc32_) + 0.5);
                  method_110(var_132,var_133,_loc8_,_loc12_,colour);
                  var_132 = _loc8_;
                  var_133 = _loc12_;
                  _loc8_ = Number(Number(_loc19_ + _loc31_) + 0.5);
                  _loc12_ = Number(Number(_loc24_ + _loc32_) + 0.5);
                  method_110(var_132,var_133,_loc8_,_loc12_,colour);
                  var_132 = _loc8_;
                  var_133 = _loc12_;
                  _loc8_ = Number(_loc19_ + 0.5);
                  _loc12_ = Number(_loc24_ + 0.5);
                  method_110(var_132,var_133,_loc8_,_loc12_,colour);
                  var_132 = _loc8_;
                  var_133 = _loc12_;
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
            var_132 = int(Number(_loc11_ + 0.5));
            var_133 = int(Number(_loc16_ + 0.5));
            _loc8_ = Number(_loc9_ + 0.5);
            _loc12_ = Number(_loc10_ + 0.5);
            method_110(var_132,var_133,_loc8_,_loc12_,colour);
            var_132 = _loc8_;
            var_133 = _loc12_;
            var_132 = int(Number(_loc9_ + 0.5));
            var_133 = int(Number(_loc10_ + 0.5));
            method_149(var_132,var_133,1,colour);
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
         var _loc15_:* = null as Shape;
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
               colour = -16777216 | _loc11_ << 16 | _loc12_ << 8 | _loc13_;
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
               var_132 = int(Number(_loc5_ + 0.5));
               var_133 = int(Number(_loc6_ + 0.5));
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
               _loc8_ = Number(_loc5_ + 0.5);
               _loc9_ = Number(_loc6_ + 0.5);
               method_110(var_132,var_133,_loc8_,_loc9_,colour);
               var_132 = _loc8_;
               var_133 = _loc9_;
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
               colour = -16777216 | _loc11_ << 16 | _loc12_ << 8 | _loc13_;
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
               var_132 = int(Number(_loc5_ + 0.5));
               var_133 = int(Number(_loc6_ + 0.5));
               method_149(var_132,var_133,1,colour);
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
                  colour = -16777216 | _loc11_ << 16 | _loc12_ << 8 | _loc13_;
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
                  var_132 = int(Number(_loc5_ + 0.5));
                  var_133 = int(Number(_loc6_ + 0.5));
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
                  _loc8_ = Number(_loc5_ + 0.5);
                  _loc9_ = Number(_loc6_ + 0.5);
                  method_110(var_132,var_133,_loc8_,_loc9_,colour);
                  var_132 = _loc8_;
                  var_133 = _loc9_;
                  _loc8_ = 16711680;
                  _loc9_ = ~var_234;
                  _loc30_ = 0.7;
                  _loc11_ = Number((_loc8_ >> 16 & 255) * _loc30_ + (_loc9_ >> 16 & 255) * (1 - _loc30_));
                  _loc12_ = Number((_loc8_ >> 8 & 255) * _loc30_ + (_loc9_ >> 8 & 255) * (1 - _loc30_));
                  _loc13_ = Number((_loc8_ & 255) * _loc30_ + (_loc9_ & 255) * (1 - _loc30_));
                  colour = -16777216 | _loc11_ << 16 | _loc12_ << 8 | _loc13_;
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
                  var_132 = int(Number(_loc5_ + 0.5));
                  var_133 = int(Number(_loc6_ + 0.5));
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
                  _loc8_ = Number(_loc5_ + 0.5);
                  _loc9_ = Number(_loc6_ + 0.5);
                  method_110(var_132,var_133,_loc8_,_loc9_,colour);
                  var_132 = _loc8_;
                  var_133 = _loc9_;
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
                  colour = -16777216 | _loc11_ << 16 | _loc12_ << 8 | _loc13_;
                  var_132 = int(Number(_loc10_ + 0.5));
                  var_133 = int(Number(_loc16_ + 0.5));
                  method_149(var_132,var_133,1,colour);
               }
               _loc8_ = ~var_234;
               _loc9_ = var_234;
               _loc28_ = 0.7;
               _loc11_ = Number((_loc8_ >> 16 & 255) * _loc28_ + (_loc9_ >> 16 & 255) * (1 - _loc28_));
               _loc12_ = Number((_loc8_ >> 8 & 255) * _loc28_ + (_loc9_ >> 8 & 255) * (1 - _loc28_));
               _loc13_ = Number((_loc8_ & 255) * _loc28_ + (_loc9_ & 255) * (1 - _loc28_));
               colour = -16777216 | _loc11_ << 16 | _loc12_ << 8 | _loc13_;
               var_132 = int(Number(_loc10_ + 0.5));
               var_133 = int(Number(_loc16_ + 0.5));
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
               _loc8_ = Number(Number(_loc10_ + _loc5_) + 0.5);
               _loc9_ = Number(Number(_loc16_ + _loc6_) + 0.5);
               method_110(var_132,var_133,_loc8_,_loc9_,colour);
               var_132 = _loc8_;
               var_133 = _loc9_;
            }
         }
      }
      
      public final function clear() : void
      {
         var_277.position = 0;
         var_353.position = 0;
         var_277.writeBytes(var_353);
      }
      
      public final function method_656(param1:Vec2, param2:Vec2, param3:Vec2, param4:int) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:* = null as ZPP_Vec2;
         var _loc13_:* = null as Vec2;
         var _loc14_:* = null as ZPP_Vec2;
         var _loc15_:int = 0;
         var _loc16_:* = 0;
         var _loc17_:int = 0;
         var _loc18_:* = 0;
         var _loc19_:Number = NaN;
         var _loc20_:* = 0;
         var _loc21_:* = 0;
         var _loc22_:* = 0;
         var _loc23_:int = 0;
         var _loc24_:* = 0;
         var _loc25_:int = 0;
         if(!var_235)
         {
            param1 = var_125.outer.transform(param1);
            param2 = var_125.outer.transform(param2);
            param3 = var_125.outer.transform(param3);
         }
         _loc7_ = param1.zpp_inner;
         if(_loc7_._validate != null)
         {
            _loc7_._validate();
         }
         _loc6_ = param1.zpp_inner.x;
         var _loc5_:int = Number(_loc6_ + 0.5);
         _loc7_ = param1.zpp_inner;
         if(_loc7_._validate != null)
         {
            _loc7_._validate();
         }
         _loc6_ = param1.zpp_inner.y;
         var _loc8_:int = Number(_loc6_ + 0.5);
         _loc7_ = param2.zpp_inner;
         if(_loc7_._validate != null)
         {
            _loc7_._validate();
         }
         _loc6_ = param2.zpp_inner.x;
         var _loc9_:int = Number(_loc6_ + 0.5);
         _loc7_ = param2.zpp_inner;
         if(_loc7_._validate != null)
         {
            _loc7_._validate();
         }
         _loc6_ = param2.zpp_inner.y;
         var _loc10_:int = Number(_loc6_ + 0.5);
         _loc7_ = param3.zpp_inner;
         if(_loc7_._validate != null)
         {
            _loc7_._validate();
         }
         _loc6_ = param3.zpp_inner.x;
         var _loc11_:int = Number(_loc6_ + 0.5);
         _loc7_ = param3.zpp_inner;
         if(_loc7_._validate != null)
         {
            _loc7_._validate();
         }
         _loc6_ = param3.zpp_inner.y;
         var _loc12_:int = Number(_loc6_ + 0.5);
         if(!var_235)
         {
            _loc7_ = param1.zpp_inner;
            param1.zpp_inner.outer = null;
            param1.zpp_inner = null;
            _loc13_ = param1;
            _loc13_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc13_;
            _loc14_ = _loc7_;
            if(_loc14_.outer != null)
            {
               _loc14_.outer.zpp_inner = null;
               _loc14_.outer = null;
            }
            _loc14_.var_103 = null;
            _loc14_._validate = null;
            _loc14_._invalidate = null;
            _loc14_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc14_;
            _loc7_ = param2.zpp_inner;
            param2.zpp_inner.outer = null;
            param2.zpp_inner = null;
            _loc13_ = param2;
            _loc13_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc13_;
            _loc14_ = _loc7_;
            if(_loc14_.outer != null)
            {
               _loc14_.outer.zpp_inner = null;
               _loc14_.outer = null;
            }
            _loc14_.var_103 = null;
            _loc14_._validate = null;
            _loc14_._invalidate = null;
            _loc14_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc14_;
            _loc7_ = param3.zpp_inner;
            param3.zpp_inner.outer = null;
            param3.zpp_inner = null;
            _loc13_ = param3;
            _loc13_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc13_;
            _loc14_ = _loc7_;
            if(_loc14_.outer != null)
            {
               _loc14_.outer.zpp_inner = null;
               _loc14_.outer = null;
            }
            _loc14_.var_103 = null;
            _loc14_._validate = null;
            _loc14_._invalidate = null;
            _loc14_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc14_;
         }
         if(_loc10_ < _loc8_)
         {
            _loc15_ = _loc5_;
            _loc5_ = _loc9_;
            _loc9_ = _loc15_;
            _loc15_ = _loc8_;
            _loc8_ = _loc10_;
            _loc10_ = _loc15_;
         }
         if(_loc12_ < _loc8_)
         {
            _loc15_ = _loc5_;
            _loc16_ = int(_loc9_);
            _loc5_ = _loc11_;
            _loc9_ = _loc15_;
            _loc11_ = _loc16_;
            _loc17_ = _loc8_;
            _loc18_ = int(_loc10_);
            _loc8_ = _loc12_;
            _loc10_ = _loc17_;
            _loc12_ = _loc18_;
         }
         else if(_loc12_ < _loc10_)
         {
            _loc15_ = _loc9_;
            _loc9_ = _loc11_;
            _loc11_ = _loc15_;
            _loc15_ = _loc10_;
            _loc10_ = _loc12_;
            _loc12_ = _loc15_;
         }
         if(_loc8_ != _loc12_ && !(_loc5_ == _loc9_ && _loc9_ == _loc11_))
         {
            if((_loc5_ - _loc11_) * (_loc10_ - _loc12_) - (_loc8_ - _loc12_) * (_loc9_ - _loc11_) < 0)
            {
               _loc6_ = (_loc11_ - _loc5_) / (_loc12_ - _loc8_);
               if(_loc8_ != _loc10_)
               {
                  _loc19_ = (_loc9_ - _loc5_) / (_loc10_ - _loc8_);
                  _loc15_ = _loc8_;
                  _loc16_ = int(_loc10_);
                  if(_loc15_ < 0)
                  {
                     _loc15_ = 0;
                  }
                  if(_loc16_ >= height)
                  {
                     _loc16_ = height - 1;
                  }
                  _loc17_ = _loc15_;
                  while(_loc17_ < _loc16_)
                  {
                     _loc17_++;
                     _loc18_ = int(_loc17_);
                     _loc20_ = _loc18_ - _loc8_;
                     _loc21_ = int(Number(Number(_loc5_ + _loc20_ * _loc19_) + 0.5));
                     _loc22_ = int(Number(Number(_loc5_ + _loc20_ * _loc6_) + 0.5));
                     if(_loc21_ < 0)
                     {
                        _loc21_ = 0;
                     }
                     if(_loc22_ >= width)
                     {
                        _loc22_ = width - 1;
                     }
                     _loc23_ = _loc21_;
                     _loc24_ = _loc22_ + 1;
                     while(_loc23_ < _loc24_)
                     {
                        _loc23_++;
                        _loc25_ = _loc23_;
                        if(_loc25_ >= 0 && _loc25_ < width && _loc18_ >= 0 && _loc18_ < height)
                        {
                           si32(param4,_loc18_ * width + _loc25_ << 2);
                        }
                     }
                  }
               }
               if(_loc10_ != _loc12_)
               {
                  _loc19_ = (_loc11_ - _loc9_) / (_loc12_ - _loc10_);
                  _loc15_ = _loc10_;
                  _loc16_ = int(_loc12_);
                  if(_loc15_ < 0)
                  {
                     _loc15_ = 0;
                  }
                  if(_loc16_ >= height)
                  {
                     _loc16_ = height - 1;
                  }
                  _loc17_ = _loc15_;
                  _loc18_ = _loc16_ + 1;
                  while(_loc17_ < _loc18_)
                  {
                     _loc17_++;
                     _loc20_ = int(_loc17_);
                     _loc21_ = int(Number(Number(_loc9_ + (_loc20_ - _loc10_) * _loc19_) + 0.5));
                     _loc22_ = int(Number(Number(_loc5_ + (_loc20_ - _loc8_) * _loc6_) + 0.5));
                     if(_loc21_ < 0)
                     {
                        _loc21_ = 0;
                     }
                     if(_loc22_ >= width)
                     {
                        _loc22_ = width - 1;
                     }
                     _loc23_ = _loc21_;
                     _loc24_ = _loc22_ + 1;
                     while(_loc23_ < _loc24_)
                     {
                        _loc23_++;
                        _loc25_ = _loc23_;
                        if(_loc25_ >= 0 && _loc25_ < width && _loc20_ >= 0 && _loc20_ < height)
                        {
                           si32(param4,_loc20_ * width + _loc25_ << 2);
                        }
                     }
                  }
               }
            }
            else
            {
               _loc6_ = (_loc11_ - _loc5_) / (_loc12_ - _loc8_);
               if(_loc8_ != _loc10_)
               {
                  _loc19_ = (_loc9_ - _loc5_) / (_loc10_ - _loc8_);
                  _loc15_ = _loc8_;
                  _loc16_ = int(_loc10_);
                  if(_loc15_ < 0)
                  {
                     _loc15_ = 0;
                  }
                  if(_loc16_ >= height)
                  {
                     _loc16_ = height - 1;
                  }
                  _loc17_ = _loc15_;
                  while(_loc17_ < _loc16_)
                  {
                     _loc17_++;
                     _loc18_ = int(_loc17_);
                     _loc20_ = _loc18_ - _loc8_;
                     _loc21_ = int(Number(Number(_loc5_ + _loc20_ * _loc19_) + 0.5));
                     _loc22_ = int(Number(Number(_loc5_ + _loc20_ * _loc6_) + 0.5));
                     if(_loc22_ < 0)
                     {
                        _loc22_ = 0;
                     }
                     if(_loc21_ >= width)
                     {
                        _loc21_ = width - 1;
                     }
                     _loc23_ = _loc22_;
                     _loc24_ = _loc21_ + 1;
                     while(_loc23_ < _loc24_)
                     {
                        _loc23_++;
                        _loc25_ = _loc23_;
                        if(_loc25_ >= 0 && _loc25_ < width && _loc18_ >= 0 && _loc18_ < height)
                        {
                           si32(param4,_loc18_ * width + _loc25_ << 2);
                        }
                     }
                  }
               }
               if(_loc10_ != _loc12_)
               {
                  _loc19_ = (_loc11_ - _loc9_) / (_loc12_ - _loc10_);
                  _loc15_ = _loc10_;
                  _loc16_ = int(_loc12_);
                  if(_loc15_ < 0)
                  {
                     _loc15_ = 0;
                  }
                  if(_loc16_ >= height)
                  {
                     _loc16_ = height - 1;
                  }
                  _loc17_ = _loc15_;
                  _loc18_ = _loc16_ + 1;
                  while(_loc17_ < _loc18_)
                  {
                     _loc17_++;
                     _loc20_ = int(_loc17_);
                     _loc21_ = int(Number(Number(_loc9_ + (_loc20_ - _loc10_) * _loc19_) + 0.5));
                     _loc22_ = int(Number(Number(_loc5_ + (_loc20_ - _loc8_) * _loc6_) + 0.5));
                     if(_loc22_ < 0)
                     {
                        _loc22_ = 0;
                     }
                     if(_loc21_ >= width)
                     {
                        _loc21_ = width - 1;
                     }
                     _loc23_ = _loc22_;
                     _loc24_ = _loc21_ + 1;
                     while(_loc23_ < _loc24_)
                     {
                        _loc23_++;
                        _loc25_ = _loc23_;
                        if(_loc25_ >= 0 && _loc25_ < width && _loc20_ >= 0 && _loc20_ < height)
                        {
                           si32(param4,_loc20_ * width + _loc25_ << 2);
                        }
                     }
                  }
               }
            }
         }
      }
      
      public final function method_110(param1:int, param2:int, param3:int, param4:int, param5:int) : void
      {
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:int = 0;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         if(param1 < param3)
         {
            _loc6_ = param3 - param1;
            if(param2 < param4)
            {
               _loc7_ = param4 - param2;
               _loc8_ = width;
               _loc9_ = _loc6_ - _loc7_;
               _loc10_ = param2 * width + param1;
               while(true)
               {
                  if(param1 >= 0 && param1 < width && param2 >= 0 && param2 < height)
                  {
                     si32(param5,_loc10_ << 2);
                  }
                  if(param1 == param3 && param2 == param4)
                  {
                     break;
                  }
                  _loc11_ = _loc9_ << 1;
                  if(_loc11_ > -_loc7_)
                  {
                     _loc9_ = _loc9_ - _loc7_;
                     param1++;
                     _loc10_++;
                  }
                  if(_loc11_ < _loc6_)
                  {
                     _loc9_ = _loc9_ + _loc6_;
                     param2++;
                     _loc10_ = _loc10_ + _loc8_;
                  }
               }
            }
            else
            {
               _loc7_ = param2 - param4;
               _loc8_ = -width;
               _loc9_ = _loc6_ - _loc7_;
               _loc10_ = param2 * width + param1;
               while(true)
               {
                  if(param1 >= 0 && param1 < width && param2 >= 0 && param2 < height)
                  {
                     si32(param5,_loc10_ << 2);
                  }
                  if(param1 == param3 && param2 == param4)
                  {
                     break;
                  }
                  _loc11_ = _loc9_ << 1;
                  if(_loc11_ > -_loc7_)
                  {
                     _loc9_ = _loc9_ - _loc7_;
                     param1++;
                     _loc10_++;
                  }
                  if(_loc11_ < _loc6_)
                  {
                     _loc9_ = _loc9_ + _loc6_;
                     param2--;
                     _loc10_ = _loc10_ + _loc8_;
                  }
               }
            }
         }
         else
         {
            _loc6_ = param1 - param3;
            if(param2 < param4)
            {
               _loc7_ = param4 - param2;
               _loc8_ = width;
               _loc9_ = _loc6_ - _loc7_;
               _loc10_ = param2 * width + param1;
               while(true)
               {
                  if(param1 >= 0 && param1 < width && param2 >= 0 && param2 < height)
                  {
                     si32(param5,_loc10_ << 2);
                  }
                  if(param1 == param3 && param2 == param4)
                  {
                     break;
                  }
                  _loc11_ = _loc9_ << 1;
                  if(_loc11_ > -_loc7_)
                  {
                     _loc9_ = _loc9_ - _loc7_;
                     param1--;
                     _loc10_--;
                  }
                  if(_loc11_ < _loc6_)
                  {
                     _loc9_ = _loc9_ + _loc6_;
                     param2++;
                     _loc10_ = _loc10_ + _loc8_;
                  }
               }
            }
            else
            {
               _loc7_ = param2 - param4;
               _loc8_ = -width;
               _loc9_ = _loc6_ - _loc7_;
               _loc10_ = param2 * width + param1;
               while(true)
               {
                  if(param1 >= 0 && param1 < width && param2 >= 0 && param2 < height)
                  {
                     si32(param5,_loc10_ << 2);
                  }
                  if(param1 == param3 && param2 == param4)
                  {
                     break;
                  }
                  _loc11_ = _loc9_ << 1;
                  if(_loc11_ > -_loc7_)
                  {
                     _loc9_ = _loc9_ - _loc7_;
                     param1--;
                     _loc10_--;
                  }
                  if(_loc11_ < _loc6_)
                  {
                     _loc9_ = _loc9_ + _loc6_;
                     param2--;
                     _loc10_ = _loc10_ + _loc8_;
                  }
               }
            }
         }
      }
      
      public final function method_483(param1:int, param2:int, param3:int, param4:int) : void
      {
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:int = 0;
         var _loc11_:* = 0;
         if(param3 == 0)
         {
            if(param1 >= 0 && param1 < width && param2 >= 0 && param2 < height)
            {
               si32(param4,param2 * width + param1 << 2);
            }
         }
         else if(param3 == 1)
         {
            _loc5_ = param2 + 1;
            if(param1 >= 0 && param1 < width && _loc5_ >= 0 && _loc5_ < height)
            {
               si32(param4,_loc5_ * width + param1 << 2);
            }
            _loc5_ = param2 - 1;
            if(param1 >= 0 && param1 < width && _loc5_ >= 0 && _loc5_ < height)
            {
               si32(param4,_loc5_ * width + param1 << 2);
            }
            _loc5_ = param1 + 1;
            if(_loc5_ >= 0 && _loc5_ < width && param2 >= 0 && param2 < height)
            {
               si32(param4,param2 * width + _loc5_ << 2);
            }
            _loc5_ = param1 - 1;
            if(_loc5_ >= 0 && _loc5_ < width && param2 >= 0 && param2 < height)
            {
               si32(param4,param2 * width + _loc5_ << 2);
            }
            _loc5_ = param1 - 1;
            _loc6_ = param2 - 1;
            if(_loc5_ >= 0 && _loc5_ < width && _loc6_ >= 0 && _loc6_ < height)
            {
               si32(param4,_loc6_ * width + _loc5_ << 2);
            }
            _loc5_ = param1 - 1;
            _loc6_ = param2 + 1;
            if(_loc5_ >= 0 && _loc5_ < width && _loc6_ >= 0 && _loc6_ < height)
            {
               si32(param4,_loc6_ * width + _loc5_ << 2);
            }
            _loc5_ = param1 + 1;
            _loc6_ = param2 - 1;
            if(_loc5_ >= 0 && _loc5_ < width && _loc6_ >= 0 && _loc6_ < height)
            {
               si32(param4,_loc6_ * width + _loc5_ << 2);
            }
            _loc5_ = param1 + 1;
            _loc6_ = param2 + 1;
            if(_loc5_ >= 0 && _loc5_ < width && _loc6_ >= 0 && _loc6_ < height)
            {
               si32(param4,_loc6_ * width + _loc5_ << 2);
            }
         }
         else
         {
            _loc5_ = 0;
            _loc6_ = int(param3);
            _loc7_ = 3 - 2 * param3;
            while(_loc6_ >= _loc5_)
            {
               _loc8_ = param1 - _loc5_;
               _loc9_ = param1 + _loc5_ + 1;
               while(_loc8_ < _loc9_)
               {
                  _loc8_++;
                  _loc10_ = _loc8_;
                  _loc11_ = param2 - _loc6_;
                  if(_loc10_ >= 0 && _loc10_ < width && _loc11_ >= 0 && _loc11_ < height)
                  {
                     si32(param4,_loc11_ * width + _loc10_ << 2);
                  }
                  _loc11_ = param2 + _loc6_;
                  if(_loc10_ >= 0 && _loc10_ < width && _loc11_ >= 0 && _loc11_ < height)
                  {
                     si32(param4,_loc11_ * width + _loc10_ << 2);
                  }
               }
               _loc8_ = param1 - _loc6_;
               _loc9_ = param1 + _loc6_ + 1;
               while(_loc8_ < _loc9_)
               {
                  _loc8_++;
                  _loc10_ = _loc8_;
                  _loc11_ = param2 + _loc5_;
                  if(_loc10_ >= 0 && _loc10_ < width && _loc11_ >= 0 && _loc11_ < height)
                  {
                     si32(param4,_loc11_ * width + _loc10_ << 2);
                  }
                  _loc11_ = param2 - _loc5_;
                  if(_loc10_ >= 0 && _loc10_ < width && _loc11_ >= 0 && _loc11_ < height)
                  {
                     si32(param4,_loc11_ * width + _loc10_ << 2);
                  }
               }
               if(_loc7_ < 0)
               {
                  _loc5_++;
                  _loc7_ = _loc7_ + (6 + (_loc5_ << 2));
               }
               else
               {
                  _loc5_++;
                  _loc6_--;
                  _loc7_ = _loc7_ + (10 + (_loc5_ - _loc6_ << 2));
               }
            }
         }
      }
      
      public final function method_246(param1:Vec2, param2:Vec2, param3:Vec2, param4:int) : void
      {
         var _loc6_:* = null as ZPP_Vec2;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = null as Vec2;
         var _loc13_:Boolean = false;
         var _loc14_:* = null as Vec2;
         var _loc15_:Boolean = false;
         var _loc16_:* = null as Vec2;
         var _loc17_:* = null as Vec2;
         var _loc18_:* = null as ZPP_Vec2;
         _loc6_ = param1.zpp_inner;
         §§push(0.25);
         if(_loc6_._validate != null)
         {
            _loc6_._validate();
         }
         _loc6_ = param2.zpp_inner;
         §§push(param1.zpp_inner.x);
         §§push(2);
         if(_loc6_._validate != null)
         {
            _loc6_._validate();
         }
         _loc6_ = param3.zpp_inner;
         §§push(Number(§§pop() + §§pop() * param2.zpp_inner.x));
         if(_loc6_._validate != null)
         {
            _loc6_._validate();
         }
         var _loc5_:Number = §§pop() * (§§pop() + param3.zpp_inner.x);
         _loc6_ = param1.zpp_inner;
         §§push(0.25);
         if(_loc6_._validate != null)
         {
            _loc6_._validate();
         }
         _loc6_ = param2.zpp_inner;
         §§push(param1.zpp_inner.y);
         §§push(2);
         if(_loc6_._validate != null)
         {
            _loc6_._validate();
         }
         _loc6_ = param3.zpp_inner;
         §§push(Number(§§pop() + §§pop() * param2.zpp_inner.y));
         if(_loc6_._validate != null)
         {
            _loc6_._validate();
         }
         var _loc7_:Number = §§pop() * (§§pop() + param3.zpp_inner.y);
         _loc6_ = param1.zpp_inner;
         §§push(0.5);
         if(_loc6_._validate != null)
         {
            _loc6_._validate();
         }
         _loc6_ = param3.zpp_inner;
         §§push(param1.zpp_inner.x);
         if(_loc6_._validate != null)
         {
            _loc6_._validate();
         }
         var _loc8_:Number = §§pop() * (§§pop() + param3.zpp_inner.x);
         _loc6_ = param1.zpp_inner;
         §§push(0.5);
         if(_loc6_._validate != null)
         {
            _loc6_._validate();
         }
         _loc6_ = param3.zpp_inner;
         §§push(param1.zpp_inner.y);
         if(_loc6_._validate != null)
         {
            _loc6_._validate();
         }
         var _loc9_:Number = §§pop() * (§§pop() + param3.zpp_inner.y);
         _loc10_ = 0;
         _loc11_ = 0;
         _loc10_ = Number(_loc5_ - _loc8_);
         _loc11_ = Number(_loc7_ - _loc9_);
         if(Number(_loc10_ * _loc10_ + _loc11_ * _loc11_) < 0.3)
         {
            _loc6_ = param1.zpp_inner;
            §§push();
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc6_ = param1.zpp_inner;
            §§push(int(Number(param1.zpp_inner.x + 0.5)));
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc6_ = param3.zpp_inner;
            §§push(int(Number(param1.zpp_inner.y + 0.5)));
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc6_ = param3.zpp_inner;
            §§push(int(Number(param3.zpp_inner.x + 0.5)));
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            §§pop().method_110(§§pop(),§§pop(),§§pop(),int(Number(param3.zpp_inner.y + 0.5)),param4);
         }
         else
         {
            _loc6_ = param1.zpp_inner;
            §§push(0.5);
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc6_ = param2.zpp_inner;
            §§push(param1.zpp_inner.x);
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc10_ = Number(§§pop() * (§§pop() + param2.zpp_inner.x));
            _loc6_ = param1.zpp_inner;
            §§push(0.5);
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc6_ = param2.zpp_inner;
            §§push(param1.zpp_inner.y);
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc11_ = Number(§§pop() * (§§pop() + param2.zpp_inner.y));
            _loc13_ = false;
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
                  _loc6_ = new ZPP_Vec2();
               }
               else
               {
                  _loc6_ = ZPP_Vec2.var_72;
                  ZPP_Vec2.var_72 = _loc6_.next;
                  _loc6_.next = null;
               }
               _loc6_.name_5 = false;
               _loc6_.var_109 = _loc15_;
               _loc6_.x = _loc10_;
               _loc6_.y = _loc11_;
               _loc14_.zpp_inner = _loc6_;
               _loc14_.zpp_inner.outer = _loc14_;
            }
            else
            {
               _loc6_ = _loc14_.zpp_inner;
               §§push(false);
               if(_loc6_._validate != null)
               {
                  _loc6_._validate();
               }
               if(_loc14_.zpp_inner.x == _loc10_)
               {
                  §§pop();
                  _loc6_ = _loc14_.zpp_inner;
                  if(_loc6_._validate != null)
                  {
                     _loc6_._validate();
                  }
                  §§push(_loc14_.zpp_inner.y == _loc11_);
               }
               if(!§§pop())
               {
                  _loc14_.zpp_inner.x = _loc10_;
                  _loc14_.zpp_inner.y = _loc11_;
                  _loc6_ = _loc14_.zpp_inner;
                  if(_loc6_._invalidate != null)
                  {
                     _loc6_._invalidate(_loc6_);
                  }
               }
               _loc14_;
            }
            _loc14_.zpp_inner.name_5 = _loc13_;
            _loc12_ = _loc14_;
            _loc6_ = param3.zpp_inner;
            §§push(0.5);
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc6_ = param2.zpp_inner;
            §§push(param3.zpp_inner.x);
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc10_ = Number(§§pop() * (§§pop() + param2.zpp_inner.x));
            _loc6_ = param3.zpp_inner;
            §§push(0.5);
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc6_ = param2.zpp_inner;
            §§push(param3.zpp_inner.y);
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc11_ = Number(§§pop() * (§§pop() + param2.zpp_inner.y));
            _loc13_ = false;
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
               _loc15_ = false;
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
               _loc6_.var_109 = _loc15_;
               _loc6_.x = _loc10_;
               _loc6_.y = _loc11_;
               _loc16_.zpp_inner = _loc6_;
               _loc16_.zpp_inner.outer = _loc16_;
            }
            else
            {
               _loc6_ = _loc16_.zpp_inner;
               §§push(false);
               if(_loc6_._validate != null)
               {
                  _loc6_._validate();
               }
               if(_loc16_.zpp_inner.x == _loc10_)
               {
                  §§pop();
                  _loc6_ = _loc16_.zpp_inner;
                  if(_loc6_._validate != null)
                  {
                     _loc6_._validate();
                  }
                  §§push(_loc16_.zpp_inner.y == _loc11_);
               }
               if(!§§pop())
               {
                  _loc16_.zpp_inner.x = _loc10_;
                  _loc16_.zpp_inner.y = _loc11_;
                  _loc6_ = _loc16_.zpp_inner;
                  if(_loc6_._invalidate != null)
                  {
                     _loc6_._invalidate(_loc6_);
                  }
               }
               _loc16_;
            }
            _loc16_.zpp_inner.name_5 = _loc13_;
            _loc14_ = _loc16_;
            _loc6_ = _loc12_.zpp_inner;
            §§push(0.5);
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc6_ = _loc14_.zpp_inner;
            §§push(_loc12_.zpp_inner.x);
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc10_ = Number(§§pop() * (§§pop() + _loc14_.zpp_inner.x));
            _loc6_ = _loc12_.zpp_inner;
            §§push(0.5);
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc6_ = _loc14_.zpp_inner;
            §§push(_loc12_.zpp_inner.y);
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc11_ = Number(§§pop() * (§§pop() + _loc14_.zpp_inner.y));
            _loc13_ = false;
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
                  _loc6_ = new ZPP_Vec2();
               }
               else
               {
                  _loc6_ = ZPP_Vec2.var_72;
                  ZPP_Vec2.var_72 = _loc6_.next;
                  _loc6_.next = null;
               }
               _loc6_.name_5 = false;
               _loc6_.var_109 = _loc15_;
               _loc6_.x = _loc10_;
               _loc6_.y = _loc11_;
               _loc17_.zpp_inner = _loc6_;
               _loc17_.zpp_inner.outer = _loc17_;
            }
            else
            {
               _loc6_ = _loc17_.zpp_inner;
               §§push(false);
               if(_loc6_._validate != null)
               {
                  _loc6_._validate();
               }
               if(_loc17_.zpp_inner.x == _loc10_)
               {
                  §§pop();
                  _loc6_ = _loc17_.zpp_inner;
                  if(_loc6_._validate != null)
                  {
                     _loc6_._validate();
                  }
                  §§push(_loc17_.zpp_inner.y == _loc11_);
               }
               if(!§§pop())
               {
                  _loc17_.zpp_inner.x = _loc10_;
                  _loc17_.zpp_inner.y = _loc11_;
                  _loc6_ = _loc17_.zpp_inner;
                  if(_loc6_._invalidate != null)
                  {
                     _loc6_._invalidate(_loc6_);
                  }
               }
               _loc17_;
            }
            _loc17_.zpp_inner.name_5 = _loc13_;
            _loc16_ = _loc17_;
            method_246(param1,_loc12_,_loc16_,param4);
            _loc6_ = _loc12_.zpp_inner;
            _loc12_.zpp_inner.outer = null;
            _loc12_.zpp_inner = null;
            _loc17_ = _loc12_;
            _loc17_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc17_;
            _loc18_ = _loc6_;
            if(_loc18_.outer != null)
            {
               _loc18_.outer.zpp_inner = null;
               _loc18_.outer = null;
            }
            _loc18_.var_103 = null;
            _loc18_._validate = null;
            _loc18_._invalidate = null;
            _loc18_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc18_;
            method_246(param3,_loc14_,_loc16_,param4);
            _loc6_ = _loc14_.zpp_inner;
            _loc14_.zpp_inner.outer = null;
            _loc14_.zpp_inner = null;
            _loc17_ = _loc14_;
            _loc17_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc17_;
            _loc18_ = _loc6_;
            if(_loc18_.outer != null)
            {
               _loc18_.outer.zpp_inner = null;
               _loc18_.outer = null;
            }
            _loc18_.var_103 = null;
            _loc18_._validate = null;
            _loc18_._invalidate = null;
            _loc18_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc18_;
            _loc6_ = _loc16_.zpp_inner;
            _loc16_.zpp_inner.outer = null;
            _loc16_.zpp_inner = null;
            _loc17_ = _loc16_;
            _loc17_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc17_;
            _loc18_ = _loc6_;
            if(_loc18_.outer != null)
            {
               _loc18_.outer.zpp_inner = null;
               _loc18_.outer = null;
            }
            _loc18_.var_103 = null;
            _loc18_._validate = null;
            _loc18_._invalidate = null;
            _loc18_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc18_;
         }
      }
      
      public final function method_149(param1:int, param2:int, param3:int, param4:int) : void
      {
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         if(param3 == 0)
         {
            if(param1 >= 0 && param1 < width && param2 >= 0 && param2 < height)
            {
               si32(param4,param2 * width + param1 << 2);
            }
         }
         else if(param3 == 1)
         {
            _loc5_ = param2 + 1;
            if(param1 >= 0 && param1 < width && _loc5_ >= 0 && _loc5_ < height)
            {
               si32(param4,_loc5_ * width + param1 << 2);
            }
            _loc5_ = param2 - 1;
            if(param1 >= 0 && param1 < width && _loc5_ >= 0 && _loc5_ < height)
            {
               si32(param4,_loc5_ * width + param1 << 2);
            }
            _loc5_ = param1 + 1;
            if(_loc5_ >= 0 && _loc5_ < width && param2 >= 0 && param2 < height)
            {
               si32(param4,param2 * width + _loc5_ << 2);
            }
            _loc5_ = param1 - 1;
            if(_loc5_ >= 0 && _loc5_ < width && param2 >= 0 && param2 < height)
            {
               si32(param4,param2 * width + _loc5_ << 2);
            }
            _loc5_ = param1 - 1;
            _loc6_ = param2 - 1;
            if(_loc5_ >= 0 && _loc5_ < width && _loc6_ >= 0 && _loc6_ < height)
            {
               si32(param4,_loc6_ * width + _loc5_ << 2);
            }
            _loc5_ = param1 - 1;
            _loc6_ = param2 + 1;
            if(_loc5_ >= 0 && _loc5_ < width && _loc6_ >= 0 && _loc6_ < height)
            {
               si32(param4,_loc6_ * width + _loc5_ << 2);
            }
            _loc5_ = param1 + 1;
            _loc6_ = param2 - 1;
            if(_loc5_ >= 0 && _loc5_ < width && _loc6_ >= 0 && _loc6_ < height)
            {
               si32(param4,_loc6_ * width + _loc5_ << 2);
            }
            _loc5_ = param1 + 1;
            _loc6_ = param2 + 1;
            if(_loc5_ >= 0 && _loc5_ < width && _loc6_ >= 0 && _loc6_ < height)
            {
               si32(param4,_loc6_ * width + _loc5_ << 2);
            }
         }
         else
         {
            _loc5_ = 0;
            _loc6_ = int(param3);
            _loc7_ = 3 - 2 * param3;
            while(_loc6_ >= _loc5_)
            {
               _loc8_ = param1 + _loc5_;
               _loc9_ = param2 + _loc6_;
               if(_loc8_ >= 0 && _loc8_ < width && _loc9_ >= 0 && _loc9_ < height)
               {
                  si32(param4,_loc9_ * width + _loc8_ << 2);
               }
               _loc8_ = param1 + _loc5_;
               _loc9_ = param2 - _loc6_;
               if(_loc8_ >= 0 && _loc8_ < width && _loc9_ >= 0 && _loc9_ < height)
               {
                  si32(param4,_loc9_ * width + _loc8_ << 2);
               }
               _loc8_ = param1 - _loc5_;
               _loc9_ = param2 + _loc6_;
               if(_loc8_ >= 0 && _loc8_ < width && _loc9_ >= 0 && _loc9_ < height)
               {
                  si32(param4,_loc9_ * width + _loc8_ << 2);
               }
               _loc8_ = param1 - _loc5_;
               _loc9_ = param2 - _loc6_;
               if(_loc8_ >= 0 && _loc8_ < width && _loc9_ >= 0 && _loc9_ < height)
               {
                  si32(param4,_loc9_ * width + _loc8_ << 2);
               }
               _loc8_ = param1 + _loc6_;
               _loc9_ = param2 + _loc5_;
               if(_loc8_ >= 0 && _loc8_ < width && _loc9_ >= 0 && _loc9_ < height)
               {
                  si32(param4,_loc9_ * width + _loc8_ << 2);
               }
               _loc8_ = param1 + _loc6_;
               _loc9_ = param2 - _loc5_;
               if(_loc8_ >= 0 && _loc8_ < width && _loc9_ >= 0 && _loc9_ < height)
               {
                  si32(param4,_loc9_ * width + _loc8_ << 2);
               }
               _loc8_ = param1 - _loc6_;
               _loc9_ = param2 + _loc5_;
               if(_loc8_ >= 0 && _loc8_ < width && _loc9_ >= 0 && _loc9_ < height)
               {
                  si32(param4,_loc9_ * width + _loc8_ << 2);
               }
               _loc8_ = param1 - _loc6_;
               _loc9_ = param2 - _loc5_;
               if(_loc8_ >= 0 && _loc8_ < width && _loc9_ >= 0 && _loc9_ < height)
               {
                  si32(param4,_loc9_ * width + _loc8_ << 2);
               }
               if(_loc7_ < 0)
               {
                  _loc5_++;
                  _loc7_ = _loc7_ + (6 + (_loc5_ << 2));
               }
               else
               {
                  _loc5_++;
                  _loc6_--;
                  _loc7_ = _loc7_ + (10 + (_loc5_ - _loc6_ << 2));
               }
            }
         }
      }
      
      public final function method_790(param1:int, param2:int, param3:int, param4:int, param5:int) : void
      {
         param5 = param5 | -16777216;
         method_110(param1,param2,param1,param4,param5);
         method_110(param1,param4,param3,param4,param5);
         method_110(param3,param4,param3,param2,param5);
         method_110(param3,param2,param1,param2,param5);
      }
      
      public final function method_275(param1:ZPP_AABB, param2:int) : void
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         param2 = param2 | -16777216;
         var _loc3_:* = param1.var_77 > -1.79e308;
         var _loc4_:* = param1.var_79 < 1.79e308;
         var _loc5_:* = param1.var_78 > -1.79e308;
         var _loc6_:* = param1.var_80 < 1.79e308;
         if(_loc3_)
         {
            _loc7_ = Number(param1.var_77 + 0.5);
         }
         else
         {
            _loc7_ = 0;
         }
         if(_loc4_)
         {
            _loc8_ = Number(param1.var_79 + 0.5);
         }
         else
         {
            _loc8_ = width;
         }
         if(_loc5_)
         {
            _loc9_ = Number(param1.var_78 + 0.5);
         }
         else
         {
            _loc9_ = 0;
         }
         if(_loc6_)
         {
            _loc10_ = Number(param1.var_80 + 0.5);
         }
         else
         {
            _loc10_ = height;
         }
         if(_loc3_)
         {
            method_110(_loc7_,_loc9_,_loc7_,_loc10_,param2);
         }
         if(_loc4_)
         {
            method_110(_loc8_,_loc9_,_loc8_,_loc10_,param2);
         }
         if(_loc5_)
         {
            method_110(_loc7_,_loc9_,_loc8_,_loc9_,param2);
         }
         if(_loc6_)
         {
            method_110(_loc7_,_loc10_,_loc8_,_loc10_,param2);
         }
      }
   }
}
