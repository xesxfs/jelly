package package_32
{
   import nape.geom.Vec2;
   import nape.geom.Vec2Iterator;
   import nape.geom.Vec2List;
   import nape.geom.class_260;
   import package_26.class_222;
   import package_29.class_199;
   import package_36.class_258;
   import zpp_nape.callbacks.ZPP_CbType;
   import zpp_nape.dynamics.ZPP_InteractionFilter;
   import zpp_nape.geom.ZPP_GeomVert;
   import zpp_nape.geom.ZPP_Vec2;
   import zpp_nape.phys.class_244;
   import zpp_nape.shape.ZPP_Polygon;
   import zpp_nape.util.ZNPNode_ZPP_Vec2;
   import zpp_nape.util.class_219;
   import zpp_nape.util.class_259;
   
   public final class Polygon extends Shape
   {
       
      
      public var var_85:ZPP_Polygon;
      
      public function Polygon(param1:*, param2:class_199 = undefined, param3:class_222 = undefined)
      {
         var _loc4_:* = null as Array;
         var _loc5_:int = 0;
         var _loc6_:* = null;
         var _loc7_:* = null as Vec2;
         var _loc8_:Boolean = false;
         var _loc9_:Number = NaN;
         var _loc10_:* = null as ZPP_Vec2;
         var _loc11_:Number = NaN;
         var _loc12_:* = null as Vec2;
         var _loc13_:Boolean = false;
         var _loc14_:* = null as Vector.<Vec2>;
         var _loc15_:* = null as Vec2;
         var _loc16_:* = null as Vec2List;
         var _loc17_:* = null as Vec2Iterator;
         var _loc18_:* = null as class_260;
         var _loc19_:* = null as ZPP_GeomVert;
         var _loc20_:* = null as ZPP_GeomVert;
         var _loc21_:* = null as ZPP_Vec2;
         var _loc22_:* = null as class_259;
         var _loc23_:* = null as ZNPNode_ZPP_Vec2;
         var _loc24_:* = null as ZNPNode_ZPP_Vec2;
         var _loc25_:* = null as ZPP_Vec2;
         var_85 = null;
         super();
         var_85 = new ZPP_Polygon();
         var_85.outer = this;
         var_85.outer_zn = this;
         zpp_inner = var_85;
         var_150 = zpp_inner;
         var_150.var_307 = this;
         if(param1 is Array)
         {
            _loc4_ = param1;
            _loc5_ = 0;
            while(_loc5_ < int(_loc4_.length))
            {
               _loc6_ = _loc4_[_loc5_];
               _loc5_++;
               _loc7_ = _loc6_;
               if(var_85.var_244 == null)
               {
                  var_85.method_205();
               }
               _loc8_ = false;
               _loc10_ = _loc7_.zpp_inner;
               §§push(var_85.var_244);
               if(_loc10_._validate != null)
               {
                  _loc10_._validate();
               }
               _loc9_ = _loc7_.zpp_inner.x;
               _loc10_ = _loc7_.zpp_inner;
               if(_loc10_._validate != null)
               {
                  _loc10_._validate();
               }
               _loc11_ = _loc7_.zpp_inner.y;
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
                  _loc13_ = false;
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
                  _loc10_.var_109 = _loc13_;
                  _loc10_.x = _loc9_;
                  _loc10_.y = _loc11_;
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
                  if(_loc12_.zpp_inner.x == _loc9_)
                  {
                     §§pop();
                     _loc10_ = _loc12_.zpp_inner;
                     if(_loc10_._validate != null)
                     {
                        _loc10_._validate();
                     }
                     §§push(_loc12_.zpp_inner.y == _loc11_);
                  }
                  if(!§§pop())
                  {
                     _loc12_.zpp_inner.x = _loc9_;
                     _loc12_.zpp_inner.y = _loc11_;
                     _loc10_ = _loc12_.zpp_inner;
                     if(_loc10_._invalidate != null)
                     {
                        _loc10_._invalidate(_loc10_);
                     }
                  }
                  _loc12_;
               }
               _loc12_.zpp_inner.name_5 = _loc8_;
               §§pop().push(_loc12_);
            }
         }
         else if(param1 is class_258.var_373)
         {
            _loc14_ = param1;
            _loc5_ = 0;
            while(_loc5_ < int(_loc14_.length))
            {
               _loc7_ = _loc14_[_loc5_];
               _loc5_++;
               _loc12_ = _loc7_;
               if(var_85.var_244 == null)
               {
                  var_85.method_205();
               }
               _loc8_ = false;
               _loc10_ = _loc12_.zpp_inner;
               §§push(var_85.var_244);
               if(_loc10_._validate != null)
               {
                  _loc10_._validate();
               }
               _loc9_ = _loc12_.zpp_inner.x;
               _loc10_ = _loc12_.zpp_inner;
               if(_loc10_._validate != null)
               {
                  _loc10_._validate();
               }
               _loc11_ = _loc12_.zpp_inner.y;
               if(class_219.poolVec2 == null)
               {
                  _loc15_ = new Vec2();
               }
               else
               {
                  _loc15_ = class_219.poolVec2;
                  class_219.poolVec2 = _loc15_.var_72;
                  _loc15_.var_72 = null;
               }
               if(_loc15_.zpp_inner == null)
               {
                  _loc13_ = false;
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
                  _loc10_.var_109 = _loc13_;
                  _loc10_.x = _loc9_;
                  _loc10_.y = _loc11_;
                  _loc15_.zpp_inner = _loc10_;
                  _loc15_.zpp_inner.outer = _loc15_;
               }
               else
               {
                  _loc10_ = _loc15_.zpp_inner;
                  §§push(false);
                  if(_loc10_._validate != null)
                  {
                     _loc10_._validate();
                  }
                  if(_loc15_.zpp_inner.x == _loc9_)
                  {
                     §§pop();
                     _loc10_ = _loc15_.zpp_inner;
                     if(_loc10_._validate != null)
                     {
                        _loc10_._validate();
                     }
                     §§push(_loc15_.zpp_inner.y == _loc11_);
                  }
                  if(!§§pop())
                  {
                     _loc15_.zpp_inner.x = _loc9_;
                     _loc15_.zpp_inner.y = _loc11_;
                     _loc10_ = _loc15_.zpp_inner;
                     if(_loc10_._invalidate != null)
                     {
                        _loc10_._invalidate(_loc10_);
                     }
                  }
                  _loc15_;
               }
               _loc15_.zpp_inner.name_5 = _loc8_;
               §§pop().push(_loc15_);
            }
         }
         else if(param1 is Vec2List)
         {
            _loc16_ = param1;
            _loc17_ = _loc16_.iterator();
            _loc17_.zpp_inner.zpp_inner.method_104();
            _loc5_ = _loc17_.zpp_inner.method_108();
            _loc17_.var_98 = true;
            if(_loc17_.var_90 < _loc5_)
            {
               §§push(true);
            }
            else
            {
               _loc17_.var_106 = Vec2Iterator.var_72;
               Vec2Iterator.var_72 = _loc17_;
               _loc17_.zpp_inner = null;
               §§push(false);
            }
         }
         else if(param1 is class_260)
         {
            _loc18_ = param1;
            _loc19_ = _loc18_.zpp_inner.vertices;
            if(_loc19_ != null)
            {
               _loc20_ = _loc19_;
               do
               {
                  _loc9_ = _loc20_.x;
                  _loc11_ = _loc20_.y;
                  _loc8_ = false;
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
                     _loc13_ = false;
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
                     _loc10_.var_109 = _loc13_;
                     _loc10_.x = _loc9_;
                     _loc10_.y = _loc11_;
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
                     if(_loc12_.zpp_inner.x == _loc9_)
                     {
                        §§pop();
                        _loc10_ = _loc12_.zpp_inner;
                        if(_loc10_._validate != null)
                        {
                           _loc10_._validate();
                        }
                        §§push(_loc12_.zpp_inner.y == _loc11_);
                     }
                     if(!§§pop())
                     {
                        _loc12_.zpp_inner.x = _loc9_;
                        _loc12_.zpp_inner.y = _loc11_;
                        _loc10_ = _loc12_.zpp_inner;
                        if(_loc10_._invalidate != null)
                        {
                           _loc10_._invalidate(_loc10_);
                        }
                     }
                     _loc12_;
                  }
                  _loc12_.zpp_inner.name_5 = _loc8_;
                  _loc7_ = _loc12_;
                  _loc20_ = _loc20_.next;
                  if(var_85.var_244 == null)
                  {
                     var_85.method_205();
                  }
                  _loc8_ = false;
                  _loc10_ = _loc7_.zpp_inner;
                  §§push(var_85.var_244);
                  if(_loc10_._validate != null)
                  {
                     _loc10_._validate();
                  }
                  _loc9_ = _loc7_.zpp_inner.x;
                  _loc10_ = _loc7_.zpp_inner;
                  if(_loc10_._validate != null)
                  {
                     _loc10_._validate();
                  }
                  _loc11_ = _loc7_.zpp_inner.y;
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
                     _loc13_ = false;
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
                     _loc10_.var_109 = _loc13_;
                     _loc10_.x = _loc9_;
                     _loc10_.y = _loc11_;
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
                     if(_loc12_.zpp_inner.x == _loc9_)
                     {
                        §§pop();
                        _loc10_ = _loc12_.zpp_inner;
                        if(_loc10_._validate != null)
                        {
                           _loc10_._validate();
                        }
                        §§push(_loc12_.zpp_inner.y == _loc11_);
                     }
                     if(!§§pop())
                     {
                        _loc12_.zpp_inner.x = _loc9_;
                        _loc12_.zpp_inner.y = _loc11_;
                        _loc10_ = _loc12_.zpp_inner;
                        if(_loc10_._invalidate != null)
                        {
                           _loc10_._invalidate(_loc10_);
                        }
                     }
                     _loc12_;
                  }
                  _loc12_.zpp_inner.name_5 = _loc8_;
                  §§pop().push(_loc12_);
                  _loc10_ = _loc7_.zpp_inner;
                  _loc7_.zpp_inner.outer = null;
                  _loc7_.zpp_inner = null;
                  _loc12_ = _loc7_;
                  _loc12_.var_72 = class_219.poolVec2;
                  class_219.poolVec2 = _loc12_;
                  _loc21_ = _loc10_;
                  if(_loc21_.outer != null)
                  {
                     _loc21_.outer.zpp_inner = null;
                     _loc21_.outer = null;
                  }
                  _loc21_.var_103 = null;
                  _loc21_._validate = null;
                  _loc21_._invalidate = null;
                  _loc21_.next = ZPP_Vec2.var_72;
                  ZPP_Vec2.var_72 = _loc21_;
               }
               while(_loc20_ != _loc19_);
               
            }
         }
         if(param1 is Array)
         {
            _loc4_ = param1;
            _loc5_ = 0;
            while(_loc5_ < int(_loc4_.length))
            {
               _loc7_ = _loc4_[_loc5_];
               if(_loc7_.zpp_inner.name_5)
               {
                  _loc10_ = _loc7_.zpp_inner;
                  _loc7_.zpp_inner.outer = null;
                  _loc7_.zpp_inner = null;
                  _loc12_ = _loc7_;
                  _loc12_.var_72 = class_219.poolVec2;
                  class_219.poolVec2 = _loc12_;
                  _loc21_ = _loc10_;
                  if(_loc21_.outer != null)
                  {
                     _loc21_.outer.zpp_inner = null;
                     _loc21_.outer = null;
                  }
                  _loc21_.var_103 = null;
                  _loc21_._validate = null;
                  _loc21_._invalidate = null;
                  _loc21_.next = ZPP_Vec2.var_72;
                  ZPP_Vec2.var_72 = _loc21_;
                  §§push(true);
               }
               else
               {
                  §§push(false);
               }
               _loc4_.splice(_loc5_,1);
            }
         }
         else if(param1 is class_258.var_373)
         {
            _loc14_ = param1;
            if(!_loc14_.fixed)
            {
               _loc5_ = 0;
               while(_loc5_ < int(_loc14_.length))
               {
                  _loc7_ = _loc14_[_loc5_];
                  if(_loc7_.zpp_inner.name_5)
                  {
                     _loc10_ = _loc7_.zpp_inner;
                     _loc7_.zpp_inner.outer = null;
                     _loc7_.zpp_inner = null;
                     _loc12_ = _loc7_;
                     _loc12_.var_72 = class_219.poolVec2;
                     class_219.poolVec2 = _loc12_;
                     _loc21_ = _loc10_;
                     if(_loc21_.outer != null)
                     {
                        _loc21_.outer.zpp_inner = null;
                        _loc21_.outer = null;
                     }
                     _loc21_.var_103 = null;
                     _loc21_._validate = null;
                     _loc21_._invalidate = null;
                     _loc21_.next = ZPP_Vec2.var_72;
                     ZPP_Vec2.var_72 = _loc21_;
                     §§push(true);
                  }
                  else
                  {
                     §§push(false);
                  }
                  _loc14_.splice(_loc5_,1);
               }
            }
         }
         else if(param1 is Vec2List)
         {
            _loc16_ = param1;
            if(_loc16_.zpp_inner._validate != null)
            {
               _loc16_.zpp_inner._validate();
            }
            _loc22_ = _loc16_.zpp_inner.name_4;
            _loc23_ = null;
            _loc24_ = _loc22_.var_73;
            while(_loc24_ != null)
            {
               _loc10_ = _loc24_.var_74;
               if(_loc10_.outer.zpp_inner.name_5)
               {
                  _loc24_ = _loc22_.erase(_loc23_);
                  if(_loc10_.outer.zpp_inner.name_5)
                  {
                     _loc7_ = _loc10_.outer;
                     _loc21_ = _loc7_.zpp_inner;
                     _loc7_.zpp_inner.outer = null;
                     _loc7_.zpp_inner = null;
                     _loc12_ = _loc7_;
                     _loc12_.var_72 = class_219.poolVec2;
                     class_219.poolVec2 = _loc12_;
                     _loc25_ = _loc21_;
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
                  else
                  {
                     false;
                  }
               }
               else
               {
                  _loc23_ = _loc24_;
                  _loc24_ = _loc24_.next;
               }
            }
         }
         if(param2 == null)
         {
            if(class_244.var_72 == null)
            {
               zpp_inner.material = new class_244();
            }
            else
            {
               zpp_inner.material = class_244.var_72;
               class_244.var_72 = zpp_inner.material.next;
               zpp_inner.material.next = null;
            }
            null;
         }
         else
         {
            zpp_inner.method_112(class_2.method_14(-1820302416));
            zpp_inner.method_323(param2.zpp_inner);
            zpp_inner.material.method_109();
         }
         if(param3 == null)
         {
            if(ZPP_InteractionFilter.var_72 == null)
            {
               zpp_inner.filter = new ZPP_InteractionFilter();
            }
            else
            {
               zpp_inner.filter = ZPP_InteractionFilter.var_72;
               ZPP_InteractionFilter.var_72 = zpp_inner.filter.next;
               zpp_inner.filter.next = null;
            }
            null;
         }
         else
         {
            zpp_inner.method_112(class_2.method_14(-1820302682));
            zpp_inner.method_330(param3.zpp_inner);
            zpp_inner.filter.method_109();
         }
         var_150.method_175(ZPP_CbType.ANY_SHAPE.zpp_inner);
      }
      
      public static function rect(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean = false) : Array
      {
         var _loc6_:* = null as Vec2;
         var _loc7_:Boolean = false;
         var _loc8_:* = null as ZPP_Vec2;
         if(class_219.poolVec2 == null)
         {
            _loc6_ = new Vec2();
         }
         else
         {
            _loc6_ = class_219.poolVec2;
            class_219.poolVec2 = _loc6_.var_72;
            _loc6_.var_72 = null;
         }
         if(_loc6_.zpp_inner == null)
         {
            _loc7_ = false;
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
            _loc8_.var_109 = _loc7_;
            _loc8_.x = param1;
            _loc8_.y = param2;
            _loc6_.zpp_inner = _loc8_;
            _loc6_.zpp_inner.outer = _loc6_;
         }
         else
         {
            _loc8_ = _loc6_.zpp_inner;
            §§push(false);
            if(_loc8_._validate != null)
            {
               _loc8_._validate();
            }
            if(_loc6_.zpp_inner.x == param1)
            {
               §§pop();
               _loc8_ = _loc6_.zpp_inner;
               if(_loc8_._validate != null)
               {
                  _loc8_._validate();
               }
               §§push(_loc6_.zpp_inner.y == param2);
            }
            if(!§§pop())
            {
               _loc6_.zpp_inner.x = param1;
               _loc6_.zpp_inner.y = param2;
               _loc8_ = _loc6_.zpp_inner;
               if(_loc8_._invalidate != null)
               {
                  _loc8_._invalidate(_loc8_);
               }
            }
            _loc6_;
         }
         _loc6_.zpp_inner.name_5 = param5;
         var _loc9_:Number = Number(param1 + param3);
         §§push(_loc6_);
         if(class_219.poolVec2 == null)
         {
            _loc6_ = new Vec2();
         }
         else
         {
            _loc6_ = class_219.poolVec2;
            class_219.poolVec2 = _loc6_.var_72;
            _loc6_.var_72 = null;
         }
         if(_loc6_.zpp_inner == null)
         {
            _loc7_ = false;
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
            _loc8_.var_109 = _loc7_;
            _loc8_.x = _loc9_;
            _loc8_.y = param2;
            _loc6_.zpp_inner = _loc8_;
            _loc6_.zpp_inner.outer = _loc6_;
         }
         else
         {
            _loc8_ = _loc6_.zpp_inner;
            §§push(false);
            if(_loc8_._validate != null)
            {
               _loc8_._validate();
            }
            if(_loc6_.zpp_inner.x == _loc9_)
            {
               §§pop();
               _loc8_ = _loc6_.zpp_inner;
               if(_loc8_._validate != null)
               {
                  _loc8_._validate();
               }
               §§push(_loc6_.zpp_inner.y == param2);
            }
            if(!§§pop())
            {
               _loc6_.zpp_inner.x = _loc9_;
               _loc6_.zpp_inner.y = param2;
               _loc8_ = _loc6_.zpp_inner;
               if(_loc8_._invalidate != null)
               {
                  _loc8_._invalidate(_loc8_);
               }
            }
            _loc6_;
         }
         _loc6_.zpp_inner.name_5 = param5;
         _loc9_ = Number(param1 + param3);
         var _loc10_:Number = Number(param2 + param4);
         §§push(_loc6_);
         if(class_219.poolVec2 == null)
         {
            _loc6_ = new Vec2();
         }
         else
         {
            _loc6_ = class_219.poolVec2;
            class_219.poolVec2 = _loc6_.var_72;
            _loc6_.var_72 = null;
         }
         if(_loc6_.zpp_inner == null)
         {
            _loc7_ = false;
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
            _loc8_.var_109 = _loc7_;
            _loc8_.x = _loc9_;
            _loc8_.y = _loc10_;
            _loc6_.zpp_inner = _loc8_;
            _loc6_.zpp_inner.outer = _loc6_;
         }
         else
         {
            _loc8_ = _loc6_.zpp_inner;
            §§push(false);
            if(_loc8_._validate != null)
            {
               _loc8_._validate();
            }
            if(_loc6_.zpp_inner.x == _loc9_)
            {
               §§pop();
               _loc8_ = _loc6_.zpp_inner;
               if(_loc8_._validate != null)
               {
                  _loc8_._validate();
               }
               §§push(_loc6_.zpp_inner.y == _loc10_);
            }
            if(!§§pop())
            {
               _loc6_.zpp_inner.x = _loc9_;
               _loc6_.zpp_inner.y = _loc10_;
               _loc8_ = _loc6_.zpp_inner;
               if(_loc8_._invalidate != null)
               {
                  _loc8_._invalidate(_loc8_);
               }
            }
            _loc6_;
         }
         _loc6_.zpp_inner.name_5 = param5;
         _loc9_ = Number(param2 + param4);
         §§push(_loc6_);
         if(class_219.poolVec2 == null)
         {
            _loc6_ = new Vec2();
         }
         else
         {
            _loc6_ = class_219.poolVec2;
            class_219.poolVec2 = _loc6_.var_72;
            _loc6_.var_72 = null;
         }
         if(_loc6_.zpp_inner == null)
         {
            _loc7_ = false;
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
            _loc8_.var_109 = _loc7_;
            _loc8_.x = param1;
            _loc8_.y = _loc9_;
            _loc6_.zpp_inner = _loc8_;
            _loc6_.zpp_inner.outer = _loc6_;
         }
         else
         {
            _loc8_ = _loc6_.zpp_inner;
            §§push(false);
            if(_loc8_._validate != null)
            {
               _loc8_._validate();
            }
            if(_loc6_.zpp_inner.x == param1)
            {
               §§pop();
               _loc8_ = _loc6_.zpp_inner;
               if(_loc8_._validate != null)
               {
                  _loc8_._validate();
               }
               §§push(_loc6_.zpp_inner.y == _loc9_);
            }
            if(!§§pop())
            {
               _loc6_.zpp_inner.x = param1;
               _loc6_.zpp_inner.y = _loc9_;
               _loc8_ = _loc6_.zpp_inner;
               if(_loc8_._invalidate != null)
               {
                  _loc8_._invalidate(_loc8_);
               }
            }
            _loc6_;
         }
         _loc6_.zpp_inner.name_5 = param5;
         return null;
      }
      
      public static function box(param1:Number, param2:Number, param3:Boolean = false) : Array
      {
         return Polygon.rect(-param1 / 2,-param2 / 2,param1,param2,param3);
      }
      
      public static function regular(param1:Number, param2:Number, param3:int, param4:Number = 0.0, param5:Boolean = false) : Array
      {
         var _loc9_:int = 0;
         var _loc10_:Number = NaN;
         var _loc11_:* = null as Vec2;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:* = null as Vec2;
         var _loc15_:Boolean = false;
         var _loc16_:* = null as ZPP_Vec2;
         var _loc6_:* = [];
         var _loc7_:Number = Math.PI * 2 / param3;
         var _loc8_:int = 0;
         while(_loc8_ < param3)
         {
            _loc8_++;
            _loc9_ = _loc8_;
            _loc10_ = Number(_loc9_ * _loc7_ + param4);
            _loc12_ = Math.cos(_loc10_) * param1;
            _loc13_ = Math.sin(_loc10_) * param2;
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
                  _loc16_ = new ZPP_Vec2();
               }
               else
               {
                  _loc16_ = ZPP_Vec2.var_72;
                  ZPP_Vec2.var_72 = _loc16_.next;
                  _loc16_.next = null;
               }
               _loc16_.name_5 = false;
               _loc16_.var_109 = _loc15_;
               _loc16_.x = _loc12_;
               _loc16_.y = _loc13_;
               _loc14_.zpp_inner = _loc16_;
               _loc14_.zpp_inner.outer = _loc14_;
            }
            else
            {
               _loc16_ = _loc14_.zpp_inner;
               §§push(false);
               if(_loc16_._validate != null)
               {
                  _loc16_._validate();
               }
               if(_loc14_.zpp_inner.x == _loc12_)
               {
                  §§pop();
                  _loc16_ = _loc14_.zpp_inner;
                  if(_loc16_._validate != null)
                  {
                     _loc16_._validate();
                  }
                  §§push(_loc14_.zpp_inner.y == _loc13_);
               }
               if(!§§pop())
               {
                  _loc14_.zpp_inner.x = _loc12_;
                  _loc14_.zpp_inner.y = _loc13_;
                  _loc16_ = _loc14_.zpp_inner;
                  if(_loc16_._invalidate != null)
                  {
                     _loc16_._invalidate(_loc16_);
                  }
               }
               _loc14_;
            }
            _loc14_.zpp_inner.name_5 = param5;
            _loc11_ = _loc14_;
            _loc6_.push(_loc11_);
         }
         return _loc6_;
      }
      
      public final function method_872() : ValidationResult
      {
         return var_85.valid();
      }
      
      public function get method_643() : Vec2List
      {
         if(var_85.var_403 == null)
         {
            var_85.method_485();
         }
         return var_85.var_403;
      }
      
      public function get method_839() : Vec2List
      {
         if(var_85.var_244 == null)
         {
            var_85.method_205();
         }
         return var_85.var_244;
      }
      
      public function get name_11() : class_257
      {
         if(var_85.var_434 == null)
         {
            var_85.method_620();
         }
         return var_85.var_434;
      }
   }
}
