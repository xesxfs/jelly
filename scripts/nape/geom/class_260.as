package nape.geom
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
   import package_35.class_238;
   import package_36.class_258;
   import zpp_nape.geom.ZPP_GeomPoly;
   import zpp_nape.geom.ZPP_GeomVert;
   import zpp_nape.geom.ZPP_PartitionedPoly;
   import zpp_nape.geom.ZPP_Vec2;
   import zpp_nape.geom.class_262;
   import zpp_nape.geom.class_319;
   import zpp_nape.geom.class_320;
   import zpp_nape.geom.class_322;
   import zpp_nape.geom.class_324;
   import zpp_nape.geom.class_325;
   import zpp_nape.geom.class_326;
   import zpp_nape.util.ZNPNode_ZPP_GeomVert;
   import zpp_nape.util.ZNPNode_ZPP_PartitionedPoly;
   import zpp_nape.util.ZNPNode_ZPP_Vec2;
   import zpp_nape.util.class_219;
   import zpp_nape.util.class_223;
   import zpp_nape.util.class_259;
   import zpp_nape.util.class_318;
   import zpp_nape.util.class_327;
   
   public final class class_260
   {
       
      
      public var var_72:class_260;
      
      public var zpp_inner:ZPP_GeomPoly;
      
      public function class_260(param1:* = undefined)
      {
         var _loc2_:* = null as Array;
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:* = null as Vec2;
         var _loc6_:* = null as ZPP_GeomVert;
         var _loc7_:Number = NaN;
         var _loc8_:* = null as ZPP_Vec2;
         var _loc9_:Number = NaN;
         var _loc10_:* = null as ZPP_GeomVert;
         var _loc11_:* = null as Vector.<Vec2>;
         var _loc12_:* = null as Vec2;
         var _loc13_:* = null as Vec2List;
         var _loc14_:* = null as Vec2Iterator;
         var _loc15_:* = null as class_260;
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = false;
         var _loc18_:* = null as ZPP_GeomVert;
         var _loc19_:* = null as ZPP_GeomVert;
         var _loc20_:* = null as ZPP_Vec2;
         var _loc21_:* = null as class_259;
         var _loc22_:* = null as ZNPNode_ZPP_Vec2;
         var _loc23_:* = null as ZNPNode_ZPP_Vec2;
         var _loc24_:* = null as ZPP_Vec2;
         zpp_inner = null;
         var_72 = null;
         zpp_inner = new ZPP_GeomPoly(this);
         if(param1 != null)
         {
            if(param1 is Array)
            {
               _loc2_ = param1;
               _loc3_ = 0;
               while(_loc3_ < int(_loc2_.length))
               {
                  _loc4_ = _loc2_[_loc3_];
                  _loc3_++;
                  _loc5_ = _loc4_;
                  _loc8_ = _loc5_.zpp_inner;
                  if(_loc8_._validate != null)
                  {
                     _loc8_._validate();
                  }
                  _loc7_ = _loc5_.zpp_inner.x;
                  _loc8_ = _loc5_.zpp_inner;
                  if(_loc8_._validate != null)
                  {
                     _loc8_._validate();
                  }
                  _loc9_ = _loc5_.zpp_inner.y;
                  if(ZPP_GeomVert.var_72 == null)
                  {
                     _loc10_ = new ZPP_GeomVert();
                  }
                  else
                  {
                     _loc10_ = ZPP_GeomVert.var_72;
                     ZPP_GeomVert.var_72 = _loc10_.next;
                     _loc10_.next = null;
                  }
                  _loc10_.var_154 = false;
                  _loc10_.x = _loc7_;
                  _loc10_.y = _loc9_;
                  _loc6_ = _loc10_;
                  if(zpp_inner.vertices == null)
                  {
                     _loc10_ = _loc6_;
                     _loc6_.next = _loc10_;
                     _loc10_ = _loc10_;
                     _loc6_.var_75 = _loc10_;
                     zpp_inner.vertices = _loc10_;
                  }
                  else
                  {
                     _loc6_.var_75 = zpp_inner.vertices;
                     _loc6_.next = zpp_inner.vertices.next;
                     zpp_inner.vertices.next.var_75 = _loc6_;
                     zpp_inner.vertices.next = _loc6_;
                  }
                  zpp_inner.vertices = _loc6_;
               }
            }
            else if(param1 is class_258.var_373)
            {
               _loc11_ = param1;
               _loc3_ = 0;
               while(_loc3_ < int(_loc11_.length))
               {
                  _loc5_ = _loc11_[_loc3_];
                  _loc3_++;
                  _loc12_ = _loc5_;
                  _loc8_ = _loc12_.zpp_inner;
                  if(_loc8_._validate != null)
                  {
                     _loc8_._validate();
                  }
                  _loc7_ = _loc12_.zpp_inner.x;
                  _loc8_ = _loc12_.zpp_inner;
                  if(_loc8_._validate != null)
                  {
                     _loc8_._validate();
                  }
                  _loc9_ = _loc12_.zpp_inner.y;
                  if(ZPP_GeomVert.var_72 == null)
                  {
                     _loc10_ = new ZPP_GeomVert();
                  }
                  else
                  {
                     _loc10_ = ZPP_GeomVert.var_72;
                     ZPP_GeomVert.var_72 = _loc10_.next;
                     _loc10_.next = null;
                  }
                  _loc10_.var_154 = false;
                  _loc10_.x = _loc7_;
                  _loc10_.y = _loc9_;
                  _loc6_ = _loc10_;
                  if(zpp_inner.vertices == null)
                  {
                     _loc10_ = _loc6_;
                     _loc6_.next = _loc10_;
                     _loc10_ = _loc10_;
                     _loc6_.var_75 = _loc10_;
                     zpp_inner.vertices = _loc10_;
                  }
                  else
                  {
                     _loc6_.var_75 = zpp_inner.vertices;
                     _loc6_.next = zpp_inner.vertices.next;
                     zpp_inner.vertices.next.var_75 = _loc6_;
                     zpp_inner.vertices.next = _loc6_;
                  }
                  zpp_inner.vertices = _loc6_;
               }
            }
            else if(param1 is Vec2List)
            {
               _loc13_ = param1;
               _loc14_ = _loc13_.iterator();
               _loc14_.zpp_inner.zpp_inner.method_104();
               _loc3_ = _loc14_.zpp_inner.method_108();
               _loc14_.var_98 = true;
               if(_loc14_.var_90 < _loc3_)
               {
                  §§push(true);
               }
               else
               {
                  _loc14_.var_106 = Vec2Iterator.var_72;
                  Vec2Iterator.var_72 = _loc14_;
                  _loc14_.zpp_inner = null;
                  §§push(false);
               }
            }
            else if(param1 is class_260)
            {
               _loc15_ = param1;
               _loc6_ = _loc15_.zpp_inner.vertices;
               if(_loc6_ != null)
               {
                  _loc10_ = _loc6_;
                  do
                  {
                     _loc7_ = _loc10_.x;
                     _loc9_ = _loc10_.y;
                     _loc16_ = false;
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
                        _loc17_ = false;
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
                        _loc8_.var_109 = _loc17_;
                        _loc8_.x = _loc7_;
                        _loc8_.y = _loc9_;
                        _loc12_.zpp_inner = _loc8_;
                        _loc12_.zpp_inner.outer = _loc12_;
                     }
                     else
                     {
                        _loc8_ = _loc12_.zpp_inner;
                        §§push(false);
                        if(_loc8_._validate != null)
                        {
                           _loc8_._validate();
                        }
                        if(_loc12_.zpp_inner.x == _loc7_)
                        {
                           §§pop();
                           _loc8_ = _loc12_.zpp_inner;
                           if(_loc8_._validate != null)
                           {
                              _loc8_._validate();
                           }
                           §§push(_loc12_.zpp_inner.y == _loc9_);
                        }
                        if(!§§pop())
                        {
                           _loc12_.zpp_inner.x = _loc7_;
                           _loc12_.zpp_inner.y = _loc9_;
                           _loc8_ = _loc12_.zpp_inner;
                           if(_loc8_._invalidate != null)
                           {
                              _loc8_._invalidate(_loc8_);
                           }
                        }
                        _loc12_;
                     }
                     _loc12_.zpp_inner.name_5 = _loc16_;
                     _loc5_ = _loc12_;
                     _loc10_ = _loc10_.next;
                     _loc8_ = _loc5_.zpp_inner;
                     if(_loc8_._validate != null)
                     {
                        _loc8_._validate();
                     }
                     _loc7_ = _loc5_.zpp_inner.x;
                     _loc8_ = _loc5_.zpp_inner;
                     if(_loc8_._validate != null)
                     {
                        _loc8_._validate();
                     }
                     _loc9_ = _loc5_.zpp_inner.y;
                     if(ZPP_GeomVert.var_72 == null)
                     {
                        _loc19_ = new ZPP_GeomVert();
                     }
                     else
                     {
                        _loc19_ = ZPP_GeomVert.var_72;
                        ZPP_GeomVert.var_72 = _loc19_.next;
                        _loc19_.next = null;
                     }
                     _loc19_.var_154 = false;
                     _loc19_.x = _loc7_;
                     _loc19_.y = _loc9_;
                     _loc18_ = _loc19_;
                     if(zpp_inner.vertices == null)
                     {
                        _loc19_ = _loc18_;
                        _loc18_.next = _loc19_;
                        _loc19_ = _loc19_;
                        _loc18_.var_75 = _loc19_;
                        zpp_inner.vertices = _loc19_;
                     }
                     else
                     {
                        _loc18_.var_75 = zpp_inner.vertices;
                        _loc18_.next = zpp_inner.vertices.next;
                        zpp_inner.vertices.next.var_75 = _loc18_;
                        zpp_inner.vertices.next = _loc18_;
                     }
                     zpp_inner.vertices = _loc18_;
                     _loc8_ = _loc5_.zpp_inner;
                     _loc5_.zpp_inner.outer = null;
                     _loc5_.zpp_inner = null;
                     _loc12_ = _loc5_;
                     _loc12_.var_72 = class_219.poolVec2;
                     class_219.poolVec2 = _loc12_;
                     _loc20_ = _loc8_;
                     if(_loc20_.outer != null)
                     {
                        _loc20_.outer.zpp_inner = null;
                        _loc20_.outer = null;
                     }
                     _loc20_.var_103 = null;
                     _loc20_._validate = null;
                     _loc20_._invalidate = null;
                     _loc20_.next = ZPP_Vec2.var_72;
                     ZPP_Vec2.var_72 = _loc20_;
                  }
                  while(_loc10_ != _loc6_);
                  
               }
            }
            skipForward(1);
            if(param1 is Array)
            {
               _loc2_ = param1;
               _loc3_ = 0;
               while(_loc3_ < int(_loc2_.length))
               {
                  _loc5_ = _loc2_[_loc3_];
                  if(_loc5_.zpp_inner.name_5)
                  {
                     _loc8_ = _loc5_.zpp_inner;
                     _loc5_.zpp_inner.outer = null;
                     _loc5_.zpp_inner = null;
                     _loc12_ = _loc5_;
                     _loc12_.var_72 = class_219.poolVec2;
                     class_219.poolVec2 = _loc12_;
                     _loc20_ = _loc8_;
                     if(_loc20_.outer != null)
                     {
                        _loc20_.outer.zpp_inner = null;
                        _loc20_.outer = null;
                     }
                     _loc20_.var_103 = null;
                     _loc20_._validate = null;
                     _loc20_._invalidate = null;
                     _loc20_.next = ZPP_Vec2.var_72;
                     ZPP_Vec2.var_72 = _loc20_;
                     §§push(true);
                  }
                  else
                  {
                     §§push(false);
                  }
                  _loc2_.splice(_loc3_,1);
               }
            }
            else if(param1 is class_258.var_373)
            {
               _loc11_ = param1;
               if(!_loc11_.fixed)
               {
                  _loc3_ = 0;
                  while(_loc3_ < int(_loc11_.length))
                  {
                     _loc5_ = _loc11_[_loc3_];
                     if(_loc5_.zpp_inner.name_5)
                     {
                        _loc8_ = _loc5_.zpp_inner;
                        _loc5_.zpp_inner.outer = null;
                        _loc5_.zpp_inner = null;
                        _loc12_ = _loc5_;
                        _loc12_.var_72 = class_219.poolVec2;
                        class_219.poolVec2 = _loc12_;
                        _loc20_ = _loc8_;
                        if(_loc20_.outer != null)
                        {
                           _loc20_.outer.zpp_inner = null;
                           _loc20_.outer = null;
                        }
                        _loc20_.var_103 = null;
                        _loc20_._validate = null;
                        _loc20_._invalidate = null;
                        _loc20_.next = ZPP_Vec2.var_72;
                        ZPP_Vec2.var_72 = _loc20_;
                        §§push(true);
                     }
                     else
                     {
                        §§push(false);
                     }
                     _loc11_.splice(_loc3_,1);
                  }
               }
            }
            else if(param1 is Vec2List)
            {
               _loc13_ = param1;
               if(_loc13_.zpp_inner._validate != null)
               {
                  _loc13_.zpp_inner._validate();
               }
               _loc21_ = _loc13_.zpp_inner.name_4;
               _loc22_ = null;
               _loc23_ = _loc21_.var_73;
               while(_loc23_ != null)
               {
                  _loc8_ = _loc23_.var_74;
                  if(_loc8_.outer.zpp_inner.name_5)
                  {
                     _loc23_ = _loc21_.erase(_loc22_);
                     if(_loc8_.outer.zpp_inner.name_5)
                     {
                        _loc5_ = _loc8_.outer;
                        _loc20_ = _loc5_.zpp_inner;
                        _loc5_.zpp_inner.outer = null;
                        _loc5_.zpp_inner = null;
                        _loc12_ = _loc5_;
                        _loc12_.var_72 = class_219.poolVec2;
                        class_219.poolVec2 = _loc12_;
                        _loc24_ = _loc20_;
                        if(_loc24_.outer != null)
                        {
                           _loc24_.outer.zpp_inner = null;
                           _loc24_.outer = null;
                        }
                        _loc24_.var_103 = null;
                        _loc24_._validate = null;
                        _loc24_._invalidate = null;
                        _loc24_.next = ZPP_Vec2.var_72;
                        ZPP_Vec2.var_72 = _loc24_;
                     }
                     else
                     {
                        false;
                     }
                  }
                  else
                  {
                     _loc22_ = _loc23_;
                     _loc23_ = _loc23_.next;
                  }
               }
            }
         }
      }
      
      public static function method_65(param1:* = undefined) : class_260
      {
         var _loc2_:* = null as class_260;
         var _loc3_:* = null as Array;
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc6_:* = null as Vec2;
         var _loc7_:* = null as ZPP_GeomVert;
         var _loc8_:Number = NaN;
         var _loc9_:* = null as ZPP_Vec2;
         var _loc10_:Number = NaN;
         var _loc11_:* = null as ZPP_GeomVert;
         var _loc12_:* = null as Vector.<Vec2>;
         var _loc13_:* = null as Vec2;
         var _loc14_:* = null as Vec2List;
         var _loc15_:* = null as Vec2Iterator;
         var _loc16_:* = null as class_260;
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = false;
         var _loc19_:* = null as ZPP_GeomVert;
         var _loc20_:* = null as ZPP_GeomVert;
         var _loc21_:* = null as ZPP_Vec2;
         var _loc22_:* = null as class_259;
         var _loc23_:* = null as ZNPNode_ZPP_Vec2;
         var _loc24_:* = null as ZNPNode_ZPP_Vec2;
         var _loc25_:* = null as ZPP_Vec2;
         if(class_219.var_550 == null)
         {
            _loc2_ = new class_260();
         }
         else
         {
            _loc2_ = class_219.var_550;
            class_219.var_550 = _loc2_.var_72;
            _loc2_.var_72 = null;
         }
         if(param1 != null)
         {
            if(param1 is Array)
            {
               _loc3_ = param1;
               _loc4_ = 0;
               while(_loc4_ < int(_loc3_.length))
               {
                  _loc5_ = _loc3_[_loc4_];
                  _loc4_++;
                  _loc6_ = _loc5_;
                  _loc9_ = _loc6_.zpp_inner;
                  if(_loc9_._validate != null)
                  {
                     _loc9_._validate();
                  }
                  _loc8_ = _loc6_.zpp_inner.x;
                  _loc9_ = _loc6_.zpp_inner;
                  if(_loc9_._validate != null)
                  {
                     _loc9_._validate();
                  }
                  _loc10_ = _loc6_.zpp_inner.y;
                  if(ZPP_GeomVert.var_72 == null)
                  {
                     _loc11_ = new ZPP_GeomVert();
                  }
                  else
                  {
                     _loc11_ = ZPP_GeomVert.var_72;
                     ZPP_GeomVert.var_72 = _loc11_.next;
                     _loc11_.next = null;
                  }
                  _loc11_.var_154 = false;
                  _loc11_.x = _loc8_;
                  _loc11_.y = _loc10_;
                  _loc7_ = _loc11_;
                  if(_loc2_.zpp_inner.vertices == null)
                  {
                     _loc11_ = _loc7_;
                     _loc7_.next = _loc11_;
                     _loc11_ = _loc11_;
                     _loc7_.var_75 = _loc11_;
                     _loc2_.zpp_inner.vertices = _loc11_;
                  }
                  else
                  {
                     _loc7_.var_75 = _loc2_.zpp_inner.vertices;
                     _loc7_.next = _loc2_.zpp_inner.vertices.next;
                     _loc2_.zpp_inner.vertices.next.var_75 = _loc7_;
                     _loc2_.zpp_inner.vertices.next = _loc7_;
                  }
                  _loc2_.zpp_inner.vertices = _loc7_;
               }
            }
            else if(param1 is class_258.var_373)
            {
               _loc12_ = param1;
               _loc4_ = 0;
               while(_loc4_ < int(_loc12_.length))
               {
                  _loc6_ = _loc12_[_loc4_];
                  _loc4_++;
                  _loc13_ = _loc6_;
                  _loc9_ = _loc13_.zpp_inner;
                  if(_loc9_._validate != null)
                  {
                     _loc9_._validate();
                  }
                  _loc8_ = _loc13_.zpp_inner.x;
                  _loc9_ = _loc13_.zpp_inner;
                  if(_loc9_._validate != null)
                  {
                     _loc9_._validate();
                  }
                  _loc10_ = _loc13_.zpp_inner.y;
                  if(ZPP_GeomVert.var_72 == null)
                  {
                     _loc11_ = new ZPP_GeomVert();
                  }
                  else
                  {
                     _loc11_ = ZPP_GeomVert.var_72;
                     ZPP_GeomVert.var_72 = _loc11_.next;
                     _loc11_.next = null;
                  }
                  _loc11_.var_154 = false;
                  _loc11_.x = _loc8_;
                  _loc11_.y = _loc10_;
                  _loc7_ = _loc11_;
                  if(_loc2_.zpp_inner.vertices == null)
                  {
                     _loc11_ = _loc7_;
                     _loc7_.next = _loc11_;
                     _loc11_ = _loc11_;
                     _loc7_.var_75 = _loc11_;
                     _loc2_.zpp_inner.vertices = _loc11_;
                  }
                  else
                  {
                     _loc7_.var_75 = _loc2_.zpp_inner.vertices;
                     _loc7_.next = _loc2_.zpp_inner.vertices.next;
                     _loc2_.zpp_inner.vertices.next.var_75 = _loc7_;
                     _loc2_.zpp_inner.vertices.next = _loc7_;
                  }
                  _loc2_.zpp_inner.vertices = _loc7_;
               }
            }
            else if(param1 is Vec2List)
            {
               _loc14_ = param1;
               _loc15_ = _loc14_.iterator();
               _loc15_.zpp_inner.zpp_inner.method_104();
               _loc4_ = _loc15_.zpp_inner.method_108();
               _loc15_.var_98 = true;
               if(_loc15_.var_90 < _loc4_)
               {
                  §§push(true);
               }
               else
               {
                  _loc15_.var_106 = Vec2Iterator.var_72;
                  Vec2Iterator.var_72 = _loc15_;
                  _loc15_.zpp_inner = null;
                  §§push(false);
               }
            }
            else if(param1 is class_260)
            {
               _loc16_ = param1;
               _loc7_ = _loc16_.zpp_inner.vertices;
               if(_loc7_ != null)
               {
                  _loc11_ = _loc7_;
                  do
                  {
                     _loc8_ = _loc11_.x;
                     _loc10_ = _loc11_.y;
                     _loc17_ = false;
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
                        _loc18_ = false;
                        if(ZPP_Vec2.var_72 == null)
                        {
                           _loc9_ = new ZPP_Vec2();
                        }
                        else
                        {
                           _loc9_ = ZPP_Vec2.var_72;
                           ZPP_Vec2.var_72 = _loc9_.next;
                           _loc9_.next = null;
                        }
                        _loc9_.name_5 = false;
                        _loc9_.var_109 = _loc18_;
                        _loc9_.x = _loc8_;
                        _loc9_.y = _loc10_;
                        _loc13_.zpp_inner = _loc9_;
                        _loc13_.zpp_inner.outer = _loc13_;
                     }
                     else
                     {
                        _loc9_ = _loc13_.zpp_inner;
                        §§push(false);
                        if(_loc9_._validate != null)
                        {
                           _loc9_._validate();
                        }
                        if(_loc13_.zpp_inner.x == _loc8_)
                        {
                           §§pop();
                           _loc9_ = _loc13_.zpp_inner;
                           if(_loc9_._validate != null)
                           {
                              _loc9_._validate();
                           }
                           §§push(_loc13_.zpp_inner.y == _loc10_);
                        }
                        if(!§§pop())
                        {
                           _loc13_.zpp_inner.x = _loc8_;
                           _loc13_.zpp_inner.y = _loc10_;
                           _loc9_ = _loc13_.zpp_inner;
                           if(_loc9_._invalidate != null)
                           {
                              _loc9_._invalidate(_loc9_);
                           }
                        }
                        _loc13_;
                     }
                     _loc13_.zpp_inner.name_5 = _loc17_;
                     _loc6_ = _loc13_;
                     _loc11_ = _loc11_.next;
                     _loc9_ = _loc6_.zpp_inner;
                     if(_loc9_._validate != null)
                     {
                        _loc9_._validate();
                     }
                     _loc8_ = _loc6_.zpp_inner.x;
                     _loc9_ = _loc6_.zpp_inner;
                     if(_loc9_._validate != null)
                     {
                        _loc9_._validate();
                     }
                     _loc10_ = _loc6_.zpp_inner.y;
                     if(ZPP_GeomVert.var_72 == null)
                     {
                        _loc20_ = new ZPP_GeomVert();
                     }
                     else
                     {
                        _loc20_ = ZPP_GeomVert.var_72;
                        ZPP_GeomVert.var_72 = _loc20_.next;
                        _loc20_.next = null;
                     }
                     _loc20_.var_154 = false;
                     _loc20_.x = _loc8_;
                     _loc20_.y = _loc10_;
                     _loc19_ = _loc20_;
                     if(_loc2_.zpp_inner.vertices == null)
                     {
                        _loc20_ = _loc19_;
                        _loc19_.next = _loc20_;
                        _loc20_ = _loc20_;
                        _loc19_.var_75 = _loc20_;
                        _loc2_.zpp_inner.vertices = _loc20_;
                     }
                     else
                     {
                        _loc19_.var_75 = _loc2_.zpp_inner.vertices;
                        _loc19_.next = _loc2_.zpp_inner.vertices.next;
                        _loc2_.zpp_inner.vertices.next.var_75 = _loc19_;
                        _loc2_.zpp_inner.vertices.next = _loc19_;
                     }
                     _loc2_.zpp_inner.vertices = _loc19_;
                     _loc9_ = _loc6_.zpp_inner;
                     _loc6_.zpp_inner.outer = null;
                     _loc6_.zpp_inner = null;
                     _loc13_ = _loc6_;
                     _loc13_.var_72 = class_219.poolVec2;
                     class_219.poolVec2 = _loc13_;
                     _loc21_ = _loc9_;
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
                  while(_loc11_ != _loc7_);
                  
               }
            }
            _loc2_.skipForward(1);
            if(param1 is Array)
            {
               _loc3_ = param1;
               _loc4_ = 0;
               while(_loc4_ < int(_loc3_.length))
               {
                  _loc6_ = _loc3_[_loc4_];
                  if(_loc6_.zpp_inner.name_5)
                  {
                     _loc9_ = _loc6_.zpp_inner;
                     _loc6_.zpp_inner.outer = null;
                     _loc6_.zpp_inner = null;
                     _loc13_ = _loc6_;
                     _loc13_.var_72 = class_219.poolVec2;
                     class_219.poolVec2 = _loc13_;
                     _loc21_ = _loc9_;
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
                  _loc3_.splice(_loc4_,1);
               }
            }
            else if(param1 is class_258.var_373)
            {
               _loc12_ = param1;
               if(!_loc12_.fixed)
               {
                  _loc4_ = 0;
                  while(_loc4_ < int(_loc12_.length))
                  {
                     _loc6_ = _loc12_[_loc4_];
                     if(_loc6_.zpp_inner.name_5)
                     {
                        _loc9_ = _loc6_.zpp_inner;
                        _loc6_.zpp_inner.outer = null;
                        _loc6_.zpp_inner = null;
                        _loc13_ = _loc6_;
                        _loc13_.var_72 = class_219.poolVec2;
                        class_219.poolVec2 = _loc13_;
                        _loc21_ = _loc9_;
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
                     _loc12_.splice(_loc4_,1);
                  }
               }
            }
            else if(param1 is Vec2List)
            {
               _loc14_ = param1;
               if(_loc14_.zpp_inner._validate != null)
               {
                  _loc14_.zpp_inner._validate();
               }
               _loc22_ = _loc14_.zpp_inner.name_4;
               _loc23_ = null;
               _loc24_ = _loc22_.var_73;
               while(_loc24_ != null)
               {
                  _loc9_ = _loc24_.var_74;
                  if(_loc9_.outer.zpp_inner.name_5)
                  {
                     _loc24_ = _loc22_.erase(_loc23_);
                     if(_loc9_.outer.zpp_inner.name_5)
                     {
                        _loc6_ = _loc9_.outer;
                        _loc21_ = _loc6_.zpp_inner;
                        _loc6_.zpp_inner.outer = null;
                        _loc6_.zpp_inner = null;
                        _loc13_ = _loc6_;
                        _loc13_.var_72 = class_219.poolVec2;
                        class_219.poolVec2 = _loc13_;
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
         }
         return _loc2_;
      }
      
      public final function winding() : class_295
      {
         var _loc1_:Number = NaN;
         var _loc2_:* = NaN;
         var _loc3_:* = null as ZPP_GeomVert;
         var _loc4_:* = null as ZPP_GeomVert;
         var _loc5_:* = null as ZPP_GeomVert;
         var _loc6_:* = null as ZPP_GeomVert;
         if(zpp_inner.vertices == null || zpp_inner.vertices.next == null || zpp_inner.vertices.var_75 == zpp_inner.vertices.next)
         {
            if(class_223.Winding_UNDEFINED == null)
            {
               class_223.var_87 = true;
               class_223.Winding_UNDEFINED = new class_295();
               class_223.var_87 = false;
            }
            return class_223.Winding_UNDEFINED;
         }
         _loc2_ = 0;
         _loc3_ = zpp_inner.vertices;
         _loc4_ = zpp_inner.vertices;
         if(_loc3_ != null)
         {
            _loc5_ = _loc3_;
            do
            {
               _loc6_ = _loc5_;
               _loc2_ = Number(Number(_loc2_ + _loc6_.x * (_loc6_.next.y - _loc6_.var_75.y)));
               _loc5_ = _loc5_.next;
            }
            while(_loc5_ != _loc4_);
            
         }
         _loc1_ = _loc2_ * 0.5;
         if(_loc1_ > 0)
         {
            if(class_223.var_405 == null)
            {
               class_223.var_87 = true;
               class_223.var_405 = new class_295();
               class_223.var_87 = false;
            }
            return class_223.var_405;
         }
         if(_loc1_ == 0)
         {
            if(class_223.Winding_UNDEFINED == null)
            {
               class_223.var_87 = true;
               class_223.Winding_UNDEFINED = new class_295();
               class_223.var_87 = false;
            }
            return class_223.Winding_UNDEFINED;
         }
         if(class_223.Winding_ANTICLOCKWISE == null)
         {
            class_223.var_87 = true;
            class_223.Winding_ANTICLOCKWISE = new class_295();
            class_223.var_87 = false;
         }
         return class_223.Winding_ANTICLOCKWISE;
      }
      
      public final function unshift(param1:Vec2) : class_260
      {
         var _loc4_:* = null as ZPP_Vec2;
         var _loc6_:* = null as ZPP_GeomVert;
         var _loc7_:* = null as Vec2;
         var _loc8_:* = null as ZPP_Vec2;
         _loc4_ = param1.zpp_inner;
         if(_loc4_._validate != null)
         {
            _loc4_._validate();
         }
         var _loc3_:Number = param1.zpp_inner.x;
         _loc4_ = param1.zpp_inner;
         if(_loc4_._validate != null)
         {
            _loc4_._validate();
         }
         var _loc5_:Number = param1.zpp_inner.y;
         if(ZPP_GeomVert.var_72 == null)
         {
            _loc6_ = new ZPP_GeomVert();
         }
         else
         {
            _loc6_ = ZPP_GeomVert.var_72;
            ZPP_GeomVert.var_72 = _loc6_.next;
            _loc6_.next = null;
         }
         _loc6_.var_154 = false;
         _loc6_.x = _loc3_;
         _loc6_.y = _loc5_;
         var _loc2_:ZPP_GeomVert = _loc6_;
         if(zpp_inner.vertices == null)
         {
            _loc6_ = _loc2_;
            _loc2_.next = _loc6_;
            _loc6_ = _loc6_;
            _loc2_.var_75 = _loc6_;
            zpp_inner.vertices = _loc6_;
         }
         else
         {
            _loc2_.next = zpp_inner.vertices;
            _loc2_.var_75 = zpp_inner.vertices.var_75;
            zpp_inner.vertices.var_75.next = _loc2_;
            zpp_inner.vertices.var_75 = _loc2_;
         }
         zpp_inner.vertices = _loc2_;
         if(param1.zpp_inner.name_5)
         {
            _loc4_ = param1.zpp_inner;
            param1.zpp_inner.outer = null;
            param1.zpp_inner = null;
            _loc7_ = param1;
            _loc7_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc7_;
            _loc8_ = _loc4_;
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
         return this;
      }
      
      public final function method_775(param1:Boolean = false, param2:class_321 = undefined) : class_321
      {
         var _loc5_:* = null as class_321;
         var _loc6_:* = null as ZPP_PartitionedPoly;
         var _loc7_:* = null as class_318;
         var _loc8_:* = null as ZPP_PartitionedPoly;
         var _loc9_:* = null as ZPP_GeomVert;
         var _loc10_:* = null as class_260;
         §§push(class_320);
         §§push(zpp_inner.vertices);
         if(class_320.var_511 == null)
         {
            class_320.var_511 = new ZPP_PartitionedPoly();
         }
         var _loc3_:ZPP_PartitionedPoly = §§pop().decompose(§§pop(),class_320.var_511);
         §§push(_loc3_);
         if(ZPP_PartitionedPoly.var_615 == null)
         {
            ZPP_PartitionedPoly.var_615 = new class_327();
         }
         var _loc4_:class_327 = §§pop().method_480(ZPP_PartitionedPoly.var_615);
         if(param2 == null)
         {
            _loc5_ = new class_321();
         }
         else
         {
            _loc5_ = param2;
         }
         while(_loc4_.var_73 != null)
         {
            _loc6_ = _loc4_.method_105();
            class_322.method_541(_loc6_);
            if(param1)
            {
               class_322.method_343(_loc6_);
            }
            §§push(_loc6_);
            if(ZPP_PartitionedPoly.var_423 == null)
            {
               ZPP_PartitionedPoly.var_423 = new class_318();
            }
            _loc7_ = §§pop().method_413(ZPP_PartitionedPoly.var_423);
            _loc8_ = _loc6_;
            _loc8_.next = ZPP_PartitionedPoly.var_72;
            ZPP_PartitionedPoly.var_72 = _loc8_;
            while(_loc7_.var_73 != null)
            {
               _loc9_ = _loc7_.method_105();
               _loc10_ = class_260.method_65();
               _loc10_.zpp_inner.vertices = _loc9_;
               if(_loc5_.zpp_inner.var_111)
               {
                  _loc5_.push(_loc10_);
               }
               else
               {
                  _loc5_.unshift(_loc10_);
               }
            }
         }
         return _loc5_;
      }
      
      public final function transform(param1:class_242) : class_260
      {
         var _loc4_:* = null as ZPP_GeomVert;
         var _loc5_:* = null as ZPP_GeomVert;
         var _loc6_:Number = NaN;
         var _loc2_:ZPP_GeomVert = zpp_inner.vertices;
         var _loc3_:ZPP_GeomVert = zpp_inner.vertices;
         if(_loc2_ != null)
         {
            _loc4_ = _loc2_;
            do
            {
               _loc5_ = _loc4_;
               _loc6_ = Number(Number(param1.zpp_inner.a * _loc5_.x + param1.zpp_inner.b * _loc5_.y) + param1.zpp_inner.tx);
               _loc5_.y = Number(Number(param1.zpp_inner.c * _loc5_.x + param1.zpp_inner.d * _loc5_.y) + param1.zpp_inner.ty);
               _loc5_.x = _loc6_;
               _loc4_ = _loc4_.next;
            }
            while(_loc4_ != _loc3_);
            
         }
         return this;
      }
      
      public final function top() : Vec2
      {
         var _loc4_:* = null as ZPP_GeomVert;
         var _loc5_:* = null as ZPP_GeomVert;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Boolean = false;
         var _loc9_:* = null as Vec2;
         var _loc10_:Boolean = false;
         var _loc11_:* = null as ZPP_Vec2;
         var _loc1_:ZPP_GeomVert = zpp_inner.vertices;
         var _loc2_:ZPP_GeomVert = zpp_inner.vertices.next;
         var _loc3_:ZPP_GeomVert = zpp_inner.vertices;
         if(_loc2_ != null)
         {
            _loc4_ = _loc2_;
            do
            {
               _loc5_ = _loc4_;
               if(_loc5_.y < _loc1_.y)
               {
                  _loc1_ = _loc5_;
               }
               _loc4_ = _loc4_.next;
            }
            while(_loc4_ != _loc3_);
            
         }
         if(_loc1_.var_127 == null)
         {
            _loc6_ = _loc1_.x;
            _loc7_ = _loc1_.y;
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
               _loc11_.x = _loc6_;
               _loc11_.y = _loc7_;
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
               if(_loc9_.zpp_inner.x == _loc6_)
               {
                  §§pop();
                  _loc11_ = _loc9_.zpp_inner;
                  if(_loc11_._validate != null)
                  {
                     _loc11_._validate();
                  }
                  §§push(_loc9_.zpp_inner.y == _loc7_);
               }
               if(!§§pop())
               {
                  _loc9_.zpp_inner.x = _loc6_;
                  _loc9_.zpp_inner.y = _loc7_;
                  _loc11_ = _loc9_.zpp_inner;
                  if(_loc11_._invalidate != null)
                  {
                     _loc11_._invalidate(_loc11_);
                  }
               }
               _loc9_;
            }
            _loc9_.zpp_inner.name_5 = _loc8_;
            _loc1_.var_127 = _loc9_;
            _loc1_.var_127.zpp_inner.var_120 = true;
            _loc1_.var_127.zpp_inner._invalidate = _loc1_.method_195;
            _loc1_.var_127.zpp_inner._validate = _loc1_.method_213;
         }
         return _loc1_.var_127;
      }
      
      public final function toString() : String
      {
         var _loc4_:* = null as ZPP_GeomVert;
         var _loc5_:* = null as ZPP_GeomVert;
         var _loc1_:String = class_2.method_14(-1820302832);
         var _loc2_:ZPP_GeomVert = zpp_inner.vertices;
         var _loc3_:ZPP_GeomVert = zpp_inner.vertices;
         if(_loc2_ != null)
         {
            _loc4_ = _loc2_;
            do
            {
               _loc5_ = _loc4_;
               if(_loc5_ != zpp_inner.vertices)
               {
                  _loc1_ = _loc1_ + ",";
               }
               _loc1_ = _loc1_ + ("{" + _loc5_.x + "," + _loc5_.y + "}");
               _loc4_ = _loc4_.next;
            }
            while(_loc4_ != _loc3_);
            
         }
         return _loc1_ + "]";
      }
      
      public final function skipForward(param1:int) : class_260
      {
         if(zpp_inner.vertices != null)
         {
            if(param1 > 0)
            {
               while(true)
               {
                  param1--;
                  if(param1 <= 0)
                  {
                     break;
                  }
                  zpp_inner.vertices = zpp_inner.vertices.next;
               }
            }
            else if(param1 < 0)
            {
               while(true)
               {
                  param1++;
                  if(param1 >= 0)
                  {
                     break;
                  }
                  zpp_inner.vertices = zpp_inner.vertices.var_75;
               }
            }
         }
         return this;
      }
      
      public final function method_786(param1:int) : class_260
      {
         return skipForward(-param1);
      }
      
      public final function size() : int
      {
         var _loc4_:* = null as ZPP_GeomVert;
         var _loc5_:* = null as ZPP_GeomVert;
         var _loc1_:int = 0;
         var _loc2_:ZPP_GeomVert = zpp_inner.vertices;
         var _loc3_:ZPP_GeomVert = zpp_inner.vertices;
         if(_loc2_ != null)
         {
            _loc4_ = _loc2_;
            do
            {
               _loc5_ = _loc4_;
               _loc1_++;
               _loc4_ = _loc4_.next;
            }
            while(_loc4_ != _loc3_);
            
         }
         return _loc1_;
      }
      
      public final function method_506(param1:Number) : class_260
      {
         var _loc2_:* = null as ZPP_GeomVert;
         var _loc3_:* = null as class_260;
         if(zpp_inner.vertices == null || zpp_inner.vertices.next == null || zpp_inner.vertices.var_75 == zpp_inner.vertices.next)
         {
            return copy();
         }
         _loc2_ = class_319.method_506(zpp_inner.vertices,param1);
         _loc3_ = class_260.method_65();
         _loc3_.zpp_inner.vertices = _loc2_;
         return _loc3_;
      }
      
      public final function method_813(param1:class_321 = undefined) : class_321
      {
         var _loc3_:* = null as class_321;
         var _loc4_:* = null as ZPP_GeomVert;
         var _loc5_:* = null as class_260;
         §§push(class_325);
         §§push(zpp_inner.vertices);
         if(ZPP_PartitionedPoly.var_423 == null)
         {
            ZPP_PartitionedPoly.var_423 = new class_318();
         }
         var _loc2_:class_318 = §§pop().decompose(§§pop(),ZPP_PartitionedPoly.var_423);
         if(param1 == null)
         {
            _loc3_ = new class_321();
         }
         else
         {
            _loc3_ = param1;
         }
         while(_loc2_.var_73 != null)
         {
            _loc4_ = _loc2_.method_105();
            _loc5_ = class_260.method_65();
            _loc5_.zpp_inner.vertices = _loc4_;
            if(_loc3_.zpp_inner.var_111)
            {
               _loc3_.push(_loc5_);
            }
            else
            {
               _loc3_.unshift(_loc5_);
            }
         }
         return _loc3_;
      }
      
      public final function shift() : class_260
      {
         var _loc2_:* = null as ZPP_GeomVert;
         var _loc3_:* = null as ZPP_GeomVert;
         var _loc4_:* = null as Vec2;
         var _loc5_:* = null as ZPP_Vec2;
         var _loc6_:* = null as Vec2;
         var _loc7_:* = null as ZPP_Vec2;
         var _loc1_:ZPP_GeomVert = zpp_inner.vertices;
         if(zpp_inner.vertices != null && zpp_inner.vertices.var_75 == zpp_inner.vertices)
         {
            _loc2_ = null;
            zpp_inner.vertices.var_75 = _loc2_;
            zpp_inner.vertices.next = _loc2_;
            _loc2_ = null;
            zpp_inner.vertices = _loc2_;
            zpp_inner.vertices = _loc2_;
         }
         else
         {
            _loc2_ = zpp_inner.vertices.next;
            zpp_inner.vertices.var_75.next = zpp_inner.vertices.next;
            zpp_inner.vertices.next.var_75 = zpp_inner.vertices.var_75;
            _loc3_ = null;
            zpp_inner.vertices.var_75 = _loc3_;
            zpp_inner.vertices.next = _loc3_;
            zpp_inner.vertices = null;
            zpp_inner.vertices = _loc2_;
         }
         _loc2_ = _loc1_;
         if(_loc2_.var_127 != null)
         {
            _loc2_.var_127.zpp_inner.var_120 = false;
            _loc4_ = _loc2_.var_127;
            _loc5_ = _loc4_.zpp_inner;
            _loc4_.zpp_inner.outer = null;
            _loc4_.zpp_inner = null;
            _loc6_ = _loc4_;
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
            _loc2_.var_127 = null;
         }
         _loc3_ = null;
         _loc2_.next = _loc3_;
         _loc2_.var_75 = _loc3_;
         _loc2_.next = ZPP_GeomVert.var_72;
         ZPP_GeomVert.var_72 = _loc2_;
         return this;
      }
      
      public final function right() : Vec2
      {
         var _loc4_:* = null as ZPP_GeomVert;
         var _loc5_:* = null as ZPP_GeomVert;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Boolean = false;
         var _loc9_:* = null as Vec2;
         var _loc10_:Boolean = false;
         var _loc11_:* = null as ZPP_Vec2;
         var _loc1_:ZPP_GeomVert = zpp_inner.vertices;
         var _loc2_:ZPP_GeomVert = zpp_inner.vertices.next;
         var _loc3_:ZPP_GeomVert = zpp_inner.vertices;
         if(_loc2_ != null)
         {
            _loc4_ = _loc2_;
            do
            {
               _loc5_ = _loc4_;
               if(_loc5_.x > _loc1_.x)
               {
                  _loc1_ = _loc5_;
               }
               _loc4_ = _loc4_.next;
            }
            while(_loc4_ != _loc3_);
            
         }
         if(_loc1_.var_127 == null)
         {
            _loc6_ = _loc1_.x;
            _loc7_ = _loc1_.y;
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
               _loc11_.x = _loc6_;
               _loc11_.y = _loc7_;
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
               if(_loc9_.zpp_inner.x == _loc6_)
               {
                  §§pop();
                  _loc11_ = _loc9_.zpp_inner;
                  if(_loc11_._validate != null)
                  {
                     _loc11_._validate();
                  }
                  §§push(_loc9_.zpp_inner.y == _loc7_);
               }
               if(!§§pop())
               {
                  _loc9_.zpp_inner.x = _loc6_;
                  _loc9_.zpp_inner.y = _loc7_;
                  _loc11_ = _loc9_.zpp_inner;
                  if(_loc11_._invalidate != null)
                  {
                     _loc11_._invalidate(_loc11_);
                  }
               }
               _loc9_;
            }
            _loc9_.zpp_inner.name_5 = _loc8_;
            _loc1_.var_127 = _loc9_;
            _loc1_.var_127.zpp_inner.var_120 = true;
            _loc1_.var_127.zpp_inner._invalidate = _loc1_.method_195;
            _loc1_.var_127.zpp_inner._validate = _loc1_.method_213;
         }
         return _loc1_.var_127;
      }
      
      public final function push(param1:Vec2) : class_260
      {
         var _loc4_:* = null as ZPP_Vec2;
         var _loc6_:* = null as ZPP_GeomVert;
         var _loc7_:* = null as Vec2;
         var _loc8_:* = null as ZPP_Vec2;
         _loc4_ = param1.zpp_inner;
         if(_loc4_._validate != null)
         {
            _loc4_._validate();
         }
         var _loc3_:Number = param1.zpp_inner.x;
         _loc4_ = param1.zpp_inner;
         if(_loc4_._validate != null)
         {
            _loc4_._validate();
         }
         var _loc5_:Number = param1.zpp_inner.y;
         if(ZPP_GeomVert.var_72 == null)
         {
            _loc6_ = new ZPP_GeomVert();
         }
         else
         {
            _loc6_ = ZPP_GeomVert.var_72;
            ZPP_GeomVert.var_72 = _loc6_.next;
            _loc6_.next = null;
         }
         _loc6_.var_154 = false;
         _loc6_.x = _loc3_;
         _loc6_.y = _loc5_;
         var _loc2_:ZPP_GeomVert = _loc6_;
         if(zpp_inner.vertices == null)
         {
            _loc6_ = _loc2_;
            _loc2_.next = _loc6_;
            _loc6_ = _loc6_;
            _loc2_.var_75 = _loc6_;
            zpp_inner.vertices = _loc6_;
         }
         else
         {
            _loc2_.var_75 = zpp_inner.vertices;
            _loc2_.next = zpp_inner.vertices.next;
            zpp_inner.vertices.next.var_75 = _loc2_;
            zpp_inner.vertices.next = _loc2_;
         }
         zpp_inner.vertices = _loc2_;
         if(param1.zpp_inner.name_5)
         {
            _loc4_ = param1.zpp_inner;
            param1.zpp_inner.outer = null;
            param1.zpp_inner = null;
            _loc7_ = param1;
            _loc7_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc7_;
            _loc8_ = _loc4_;
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
         return this;
      }
      
      public final function pop() : class_260
      {
         var _loc2_:* = null as ZPP_GeomVert;
         var _loc3_:* = null as ZPP_GeomVert;
         var _loc4_:* = null as Vec2;
         var _loc5_:* = null as ZPP_Vec2;
         var _loc6_:* = null as Vec2;
         var _loc7_:* = null as ZPP_Vec2;
         var _loc1_:ZPP_GeomVert = zpp_inner.vertices;
         if(zpp_inner.vertices != null && zpp_inner.vertices.var_75 == zpp_inner.vertices)
         {
            _loc2_ = null;
            zpp_inner.vertices.var_75 = _loc2_;
            zpp_inner.vertices.next = _loc2_;
            zpp_inner.vertices = null;
         }
         else
         {
            _loc2_ = zpp_inner.vertices.var_75;
            zpp_inner.vertices.var_75.next = zpp_inner.vertices.next;
            zpp_inner.vertices.next.var_75 = zpp_inner.vertices.var_75;
            _loc3_ = null;
            zpp_inner.vertices.var_75 = _loc3_;
            zpp_inner.vertices.next = _loc3_;
            zpp_inner.vertices = null;
            zpp_inner.vertices = _loc2_;
         }
         _loc2_ = _loc1_;
         if(_loc2_.var_127 != null)
         {
            _loc2_.var_127.zpp_inner.var_120 = false;
            _loc4_ = _loc2_.var_127;
            _loc5_ = _loc4_.zpp_inner;
            _loc4_.zpp_inner.outer = null;
            _loc4_.zpp_inner = null;
            _loc6_ = _loc4_;
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
            _loc2_.var_127 = null;
         }
         _loc3_ = null;
         _loc2_.next = _loc3_;
         _loc2_.var_75 = _loc3_;
         _loc2_.next = ZPP_GeomVert.var_72;
         ZPP_GeomVert.var_72 = _loc2_;
         return this;
      }
      
      public final function method_772(param1:class_321 = undefined) : class_321
      {
         var _loc4_:* = null as class_321;
         var _loc5_:* = null as ZPP_GeomVert;
         var _loc6_:* = null as class_260;
         §§push(class_320);
         §§push(zpp_inner.vertices);
         if(class_320.var_511 == null)
         {
            class_320.var_511 = new ZPP_PartitionedPoly();
         }
         var _loc2_:ZPP_PartitionedPoly = §§pop().decompose(§§pop(),class_320.var_511);
         §§push(_loc2_);
         if(ZPP_PartitionedPoly.var_423 == null)
         {
            ZPP_PartitionedPoly.var_423 = new class_318();
         }
         var _loc3_:class_318 = §§pop().method_413(ZPP_PartitionedPoly.var_423);
         if(param1 == null)
         {
            _loc4_ = new class_321();
         }
         else
         {
            _loc4_ = param1;
         }
         while(_loc3_.var_73 != null)
         {
            _loc5_ = _loc3_.method_105();
            _loc6_ = class_260.method_65();
            _loc6_.zpp_inner.vertices = _loc5_;
            if(_loc4_.zpp_inner.var_111)
            {
               _loc4_.push(_loc6_);
            }
            else
            {
               _loc4_.unshift(_loc6_);
            }
         }
         return _loc4_;
      }
      
      public final function left() : Vec2
      {
         var _loc4_:* = null as ZPP_GeomVert;
         var _loc5_:* = null as ZPP_GeomVert;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Boolean = false;
         var _loc9_:* = null as Vec2;
         var _loc10_:Boolean = false;
         var _loc11_:* = null as ZPP_Vec2;
         var _loc1_:ZPP_GeomVert = zpp_inner.vertices;
         var _loc2_:ZPP_GeomVert = zpp_inner.vertices.next;
         var _loc3_:ZPP_GeomVert = zpp_inner.vertices;
         if(_loc2_ != null)
         {
            _loc4_ = _loc2_;
            do
            {
               _loc5_ = _loc4_;
               if(_loc5_.x < _loc1_.x)
               {
                  _loc1_ = _loc5_;
               }
               _loc4_ = _loc4_.next;
            }
            while(_loc4_ != _loc3_);
            
         }
         if(_loc1_.var_127 == null)
         {
            _loc6_ = _loc1_.x;
            _loc7_ = _loc1_.y;
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
               _loc11_.x = _loc6_;
               _loc11_.y = _loc7_;
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
               if(_loc9_.zpp_inner.x == _loc6_)
               {
                  §§pop();
                  _loc11_ = _loc9_.zpp_inner;
                  if(_loc11_._validate != null)
                  {
                     _loc11_._validate();
                  }
                  §§push(_loc9_.zpp_inner.y == _loc7_);
               }
               if(!§§pop())
               {
                  _loc9_.zpp_inner.x = _loc6_;
                  _loc9_.zpp_inner.y = _loc7_;
                  _loc11_ = _loc9_.zpp_inner;
                  if(_loc11_._invalidate != null)
                  {
                     _loc11_._invalidate(_loc11_);
                  }
               }
               _loc9_;
            }
            _loc9_.zpp_inner.name_5 = _loc8_;
            _loc1_.var_127 = _loc9_;
            _loc1_.var_127.zpp_inner.var_120 = true;
            _loc1_.var_127.zpp_inner._invalidate = _loc1_.method_195;
            _loc1_.var_127.zpp_inner._validate = _loc1_.method_213;
         }
         return _loc1_.var_127;
      }
      
      public final function iterator() : class_323
      {
         return class_262.method_65(zpp_inner.vertices,true);
      }
      
      public final function isSimple() : Boolean
      {
         if(zpp_inner.vertices == null || zpp_inner.vertices.next == null || zpp_inner.vertices.var_75 == zpp_inner.vertices.next)
         {
            return true;
         }
         return Boolean(class_325.isSimple(zpp_inner.vertices));
      }
      
      public final function method_534() : Boolean
      {
         if(zpp_inner.vertices == null || zpp_inner.vertices.next == null || zpp_inner.vertices.var_75 == zpp_inner.vertices.next)
         {
            return true;
         }
         return Boolean(class_320.method_534(zpp_inner.vertices));
      }
      
      public final function method_878() : Boolean
      {
         if(zpp_inner.vertices == null || zpp_inner.vertices.next == null || zpp_inner.vertices.var_75 == zpp_inner.vertices.next)
         {
            return true;
         }
         return Number(area()) < class_238.name_8;
      }
      
      public final function method_809() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:* = null as ZPP_GeomVert;
         var _loc5_:* = null as ZPP_GeomVert;
         var _loc6_:* = null as ZPP_GeomVert;
         var _loc7_:* = null as ZPP_GeomVert;
         var _loc8_:* = null as ZPP_GeomVert;
         var _loc9_:* = null as ZPP_GeomVert;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         if(zpp_inner.vertices == null || zpp_inner.vertices.next == null || zpp_inner.vertices.var_75 == zpp_inner.vertices.next)
         {
            return true;
         }
         _loc1_ = false;
         _loc2_ = false;
         _loc3_ = true;
         _loc4_ = zpp_inner.vertices;
         _loc5_ = zpp_inner.vertices;
         if(_loc4_ != null)
         {
            _loc6_ = _loc4_;
            do
            {
               _loc7_ = _loc6_;
               _loc8_ = _loc7_.var_75;
               _loc9_ = _loc7_.next;
               _loc10_ = 0;
               _loc11_ = 0;
               _loc10_ = Number(_loc9_.x - _loc7_.x);
               _loc11_ = Number(_loc9_.y - _loc7_.y);
               _loc12_ = 0;
               _loc13_ = 0;
               _loc12_ = Number(_loc7_.x - _loc8_.x);
               _loc13_ = Number(_loc7_.y - _loc8_.y);
               _loc14_ = Number((_loc7_.y - _loc8_.y) * _loc10_ - _loc12_ * _loc11_);
               if(Number((_loc7_.y - _loc8_.y) * _loc10_ - _loc12_ * _loc11_) > 0)
               {
                  _loc2_ = true;
               }
               else if(_loc14_ < 0)
               {
                  _loc1_ = true;
               }
               if(!!_loc2_ && _loc1_)
               {
                  _loc3_ = false;
                  break;
               }
               _loc6_ = _loc6_.next;
            }
            while(_loc6_ != _loc5_);
            
         }
         return _loc3_;
      }
      
      public final function method_799() : Boolean
      {
         §§push(winding());
         if(class_223.var_405 == null)
         {
            class_223.var_87 = true;
            class_223.var_405 = new class_295();
            class_223.var_87 = false;
         }
         return §§pop() == class_223.var_405;
      }
      
      public final function method_830(param1:Number) : class_260
      {
         var _loc5_:* = null as ZPP_GeomVert;
         var _loc6_:* = null as ZPP_GeomVert;
         var _loc7_:* = null as ZPP_GeomVert;
         var _loc8_:* = null as ZPP_GeomVert;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         var _loc18_:* = NaN;
         var _loc19_:* = 0;
         var _loc20_:* = NaN;
         var _loc21_:* = NaN;
         var _loc22_:* = NaN;
         var _loc23_:* = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Boolean = false;
         var _loc26_:* = null as Vec2;
         var _loc27_:Boolean = false;
         var _loc28_:* = null as ZPP_Vec2;
         var _loc2_:class_260 = class_260.method_65();
         §§push(winding());
         if(class_223.var_405 == null)
         {
            class_223.var_87 = true;
            class_223.var_405 = new class_295();
            class_223.var_87 = false;
         }
         if(§§pop() == class_223.var_405)
         {
            param1 = -param1;
         }
         var _loc3_:ZPP_GeomVert = zpp_inner.vertices;
         var _loc4_:ZPP_GeomVert = zpp_inner.vertices;
         if(_loc3_ != null)
         {
            _loc5_ = _loc3_;
            do
            {
               _loc6_ = _loc5_;
               _loc7_ = _loc6_.var_75;
               _loc8_ = _loc6_.next;
               _loc9_ = 0;
               _loc10_ = 0;
               _loc11_ = 0;
               _loc12_ = 0;
               _loc9_ = Number(_loc6_.x - _loc7_.x);
               _loc10_ = Number(_loc6_.y - _loc7_.y);
               _loc11_ = Number(_loc8_.x - _loc6_.x);
               _loc12_ = Number(_loc8_.y - _loc6_.y);
               _loc13_ = 0;
               _loc14_ = 0;
               _loc15_ = 0;
               _loc16_ = 0;
               _loc13_ = Number(_loc9_);
               _loc14_ = Number(_loc10_);
               _loc17_ = Number(Number(_loc13_ * _loc13_ + _loc14_ * _loc14_));
               sf32(_loc17_,0);
               _loc19_ = 1597463007 - (li32(0) >> 1);
               si32(1597463007 - (li32(0) >> 1),0);
               _loc20_ = Number(lf32(0));
               _loc18_ = Number(lf32(0) * (1.5 - 0.5 * _loc17_ * _loc20_ * _loc20_));
               _loc20_ = Number(Number(lf32(0) * (1.5 - 0.5 * _loc17_ * _loc20_ * _loc20_)));
               _loc13_ = Number(_loc13_ * _loc20_);
               _loc14_ = Number(_loc14_ * _loc20_);
               _loc17_ = Number(_loc13_);
               _loc13_ = Number(-_loc14_);
               _loc14_ = Number(_loc17_);
               _loc17_ = Number(param1);
               _loc13_ = Number(_loc13_ * _loc17_);
               _loc14_ = Number(_loc14_ * _loc17_);
               _loc15_ = Number(_loc11_);
               _loc16_ = Number(_loc12_);
               _loc17_ = Number(Number(_loc15_ * _loc15_ + _loc16_ * _loc16_));
               sf32(_loc17_,0);
               _loc19_ = 1597463007 - (li32(0) >> 1);
               si32(1597463007 - (li32(0) >> 1),0);
               _loc20_ = Number(lf32(0));
               _loc18_ = Number(lf32(0) * (1.5 - 0.5 * _loc17_ * _loc20_ * _loc20_));
               _loc20_ = Number(Number(lf32(0) * (1.5 - 0.5 * _loc17_ * _loc20_ * _loc20_)));
               _loc15_ = Number(_loc15_ * _loc20_);
               _loc16_ = Number(_loc16_ * _loc20_);
               _loc17_ = Number(_loc15_);
               _loc15_ = Number(-_loc16_);
               _loc16_ = Number(_loc17_);
               _loc17_ = Number(param1);
               _loc15_ = Number(_loc15_ * _loc17_);
               _loc16_ = Number(_loc16_ * _loc17_);
               _loc17_ = 0;
               _loc18_ = 0;
               _loc17_ = Number(_loc15_ - _loc13_);
               _loc18_ = Number(_loc16_ - _loc14_);
               _loc20_ = Number(_loc12_ * _loc17_ - _loc11_ * _loc18_);
               if(Number(_loc12_ * _loc17_ - _loc11_ * _loc18_) == 0)
               {
                  _loc21_ = 0;
               }
               else
               {
                  _loc21_ = Number(_loc20_ / (_loc12_ * _loc9_ - _loc11_ * _loc10_));
               }
               _loc22_ = 0;
               _loc23_ = 0;
               _loc22_ = Number(Number(_loc6_.x + _loc13_));
               _loc23_ = Number(Number(_loc6_.y + _loc14_));
               _loc24_ = _loc21_;
               _loc22_ = Number(Number(_loc22_ + _loc9_ * _loc24_));
               _loc23_ = Number(Number(_loc23_ + _loc10_ * _loc24_));
               _loc25_ = false;
               §§push(_loc2_);
               if(class_219.poolVec2 == null)
               {
                  _loc26_ = new Vec2();
               }
               else
               {
                  _loc26_ = class_219.poolVec2;
                  class_219.poolVec2 = _loc26_.var_72;
                  _loc26_.var_72 = null;
               }
               if(_loc26_.zpp_inner == null)
               {
                  _loc27_ = false;
                  if(ZPP_Vec2.var_72 == null)
                  {
                     _loc28_ = new ZPP_Vec2();
                  }
                  else
                  {
                     _loc28_ = ZPP_Vec2.var_72;
                     ZPP_Vec2.var_72 = _loc28_.next;
                     _loc28_.next = null;
                  }
                  _loc28_.name_5 = false;
                  _loc28_.var_109 = _loc27_;
                  _loc28_.x = _loc22_;
                  _loc28_.y = _loc23_;
                  _loc26_.zpp_inner = _loc28_;
                  _loc26_.zpp_inner.outer = _loc26_;
               }
               else
               {
                  _loc28_ = _loc26_.zpp_inner;
                  §§push(false);
                  if(_loc28_._validate != null)
                  {
                     _loc28_._validate();
                  }
                  if(_loc26_.zpp_inner.x == _loc22_)
                  {
                     §§pop();
                     _loc28_ = _loc26_.zpp_inner;
                     if(_loc28_._validate != null)
                     {
                        _loc28_._validate();
                     }
                     §§push(_loc26_.zpp_inner.y == _loc23_);
                  }
                  if(!§§pop())
                  {
                     _loc26_.zpp_inner.x = _loc22_;
                     _loc26_.zpp_inner.y = _loc23_;
                     _loc28_ = _loc26_.zpp_inner;
                     if(_loc28_._invalidate != null)
                     {
                        _loc28_._invalidate(_loc28_);
                     }
                  }
                  _loc26_;
               }
               _loc26_.zpp_inner.name_5 = _loc25_;
               §§pop().push(_loc26_);
               _loc5_ = _loc5_.next;
            }
            while(_loc5_ != _loc4_);
            
         }
         return _loc2_.skipForward(1);
      }
      
      public final function method_757() : class_323
      {
         return class_262.method_65(zpp_inner.vertices,true);
      }
      
      public final function erase(param1:int) : class_260
      {
         var _loc2_:* = null as ZPP_GeomVert;
         var _loc3_:* = null as ZPP_GeomVert;
         var _loc4_:* = null as ZPP_GeomVert;
         var _loc5_:* = null as Vec2;
         var _loc6_:* = null as ZPP_Vec2;
         var _loc7_:* = null as Vec2;
         var _loc8_:* = null as ZPP_Vec2;
         while(param1 != 0 && zpp_inner.vertices != null)
         {
            _loc2_ = zpp_inner.vertices;
            if(param1 > 0)
            {
               if(zpp_inner.vertices != null && zpp_inner.vertices.var_75 == zpp_inner.vertices)
               {
                  _loc3_ = null;
                  zpp_inner.vertices.var_75 = _loc3_;
                  zpp_inner.vertices.next = _loc3_;
                  _loc3_ = null;
                  zpp_inner.vertices = _loc3_;
                  zpp_inner.vertices = _loc3_;
               }
               else
               {
                  _loc3_ = zpp_inner.vertices.next;
                  zpp_inner.vertices.var_75.next = zpp_inner.vertices.next;
                  zpp_inner.vertices.next.var_75 = zpp_inner.vertices.var_75;
                  _loc4_ = null;
                  zpp_inner.vertices.var_75 = _loc4_;
                  zpp_inner.vertices.next = _loc4_;
                  zpp_inner.vertices = null;
                  zpp_inner.vertices = _loc3_;
               }
               param1--;
            }
            else if(param1 < 0)
            {
               if(zpp_inner.vertices != null && zpp_inner.vertices.var_75 == zpp_inner.vertices)
               {
                  _loc3_ = null;
                  zpp_inner.vertices.var_75 = _loc3_;
                  zpp_inner.vertices.next = _loc3_;
                  zpp_inner.vertices = null;
               }
               else
               {
                  _loc3_ = zpp_inner.vertices.var_75;
                  zpp_inner.vertices.var_75.next = zpp_inner.vertices.next;
                  zpp_inner.vertices.next.var_75 = zpp_inner.vertices.var_75;
                  _loc4_ = null;
                  zpp_inner.vertices.var_75 = _loc4_;
                  zpp_inner.vertices.next = _loc4_;
                  zpp_inner.vertices = null;
                  zpp_inner.vertices = _loc3_;
               }
               param1++;
            }
            _loc3_ = _loc2_;
            if(_loc3_.var_127 != null)
            {
               _loc3_.var_127.zpp_inner.var_120 = false;
               _loc5_ = _loc3_.var_127;
               _loc6_ = _loc5_.zpp_inner;
               _loc5_.zpp_inner.outer = null;
               _loc5_.zpp_inner = null;
               _loc7_ = _loc5_;
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
               _loc3_.var_127 = null;
            }
            _loc4_ = null;
            _loc3_.next = _loc4_;
            _loc3_.var_75 = _loc4_;
            _loc3_.next = ZPP_GeomVert.var_72;
            ZPP_GeomVert.var_72 = _loc3_;
         }
         return this;
      }
      
      public final function empty() : Boolean
      {
         return zpp_inner.vertices == null;
      }
      
      public final function dispose() : void
      {
         clear();
         var _loc1_:class_260 = this;
         _loc1_.var_72 = class_219.var_550;
         class_219.var_550 = _loc1_;
      }
      
      public final function method_774(param1:Vec2, param2:Vec2, param3:Boolean = false, param4:Boolean = false, param5:class_321 = undefined) : class_321
      {
         var _loc7_:* = null as ZPP_Vec2;
         var _loc8_:* = null as Vec2;
         var _loc9_:* = null as ZPP_Vec2;
         var _loc6_:class_321 = class_324.run(zpp_inner.vertices,param1,param2,param3,param4,param5);
         if(param1.zpp_inner.name_5)
         {
            _loc7_ = param1.zpp_inner;
            param1.zpp_inner.outer = null;
            param1.zpp_inner = null;
            _loc8_ = param1;
            _loc8_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc8_;
            _loc9_ = _loc7_;
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
            _loc8_ = param2;
            _loc8_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc8_;
            _loc9_ = _loc7_;
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
         return _loc6_;
      }
      
      public final function current() : Vec2
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Boolean = false;
         var _loc5_:* = null as Vec2;
         var _loc6_:Boolean = false;
         var _loc7_:* = null as ZPP_Vec2;
         var _loc1_:ZPP_GeomVert = zpp_inner.vertices;
         if(_loc1_.var_127 == null)
         {
            _loc2_ = _loc1_.x;
            _loc3_ = _loc1_.y;
            _loc4_ = false;
            if(class_219.poolVec2 == null)
            {
               _loc5_ = new Vec2();
            }
            else
            {
               _loc5_ = class_219.poolVec2;
               class_219.poolVec2 = _loc5_.var_72;
               _loc5_.var_72 = null;
            }
            if(_loc5_.zpp_inner == null)
            {
               _loc6_ = false;
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
               _loc7_.var_109 = _loc6_;
               _loc7_.x = _loc2_;
               _loc7_.y = _loc3_;
               _loc5_.zpp_inner = _loc7_;
               _loc5_.zpp_inner.outer = _loc5_;
            }
            else
            {
               _loc7_ = _loc5_.zpp_inner;
               §§push(false);
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               if(_loc5_.zpp_inner.x == _loc2_)
               {
                  §§pop();
                  _loc7_ = _loc5_.zpp_inner;
                  if(_loc7_._validate != null)
                  {
                     _loc7_._validate();
                  }
                  §§push(_loc5_.zpp_inner.y == _loc3_);
               }
               if(!§§pop())
               {
                  _loc5_.zpp_inner.x = _loc2_;
                  _loc5_.zpp_inner.y = _loc3_;
                  _loc7_ = _loc5_.zpp_inner;
                  if(_loc7_._invalidate != null)
                  {
                     _loc7_._invalidate(_loc7_);
                  }
               }
               _loc5_;
            }
            _loc5_.zpp_inner.name_5 = _loc4_;
            _loc1_.var_127 = _loc5_;
            _loc1_.var_127.zpp_inner.var_120 = true;
            _loc1_.var_127.zpp_inner._invalidate = _loc1_.method_195;
            _loc1_.var_127.zpp_inner._validate = _loc1_.method_213;
         }
         return _loc1_.var_127;
      }
      
      public final function copy() : class_260
      {
         var _loc4_:* = null as ZPP_GeomVert;
         var _loc5_:* = null as ZPP_GeomVert;
         var _loc6_:* = null as ZPP_GeomVert;
         var _loc7_:* = null as ZPP_GeomVert;
         var _loc1_:class_260 = class_260.method_65();
         var _loc2_:ZPP_GeomVert = zpp_inner.vertices;
         var _loc3_:ZPP_GeomVert = zpp_inner.vertices;
         if(_loc2_ != null)
         {
            _loc4_ = _loc2_;
            do
            {
               _loc5_ = _loc4_;
               if(ZPP_GeomVert.var_72 == null)
               {
                  _loc7_ = new ZPP_GeomVert();
               }
               else
               {
                  _loc7_ = ZPP_GeomVert.var_72;
                  ZPP_GeomVert.var_72 = _loc7_.next;
                  _loc7_.next = null;
               }
               _loc7_.var_154 = false;
               _loc7_.x = _loc5_.x;
               _loc7_.y = _loc5_.y;
               _loc6_ = _loc7_;
               if(_loc1_.zpp_inner.vertices == null)
               {
                  _loc7_ = _loc6_;
                  _loc6_.next = _loc7_;
                  _loc7_ = _loc7_;
                  _loc6_.var_75 = _loc7_;
                  _loc1_.zpp_inner.vertices = _loc7_;
               }
               else
               {
                  _loc6_.var_75 = _loc1_.zpp_inner.vertices;
                  _loc6_.next = _loc1_.zpp_inner.vertices.next;
                  _loc1_.zpp_inner.vertices.next.var_75 = _loc6_;
                  _loc1_.zpp_inner.vertices.next = _loc6_;
               }
               _loc1_.zpp_inner.vertices = _loc6_;
               _loc4_ = _loc4_.next;
            }
            while(_loc4_ != _loc3_);
            
         }
         return _loc1_.skipForward(1);
      }
      
      public final function method_806(param1:Boolean = false, param2:class_321 = undefined) : class_321
      {
         var _loc5_:* = null as class_321;
         var _loc6_:* = null as ZPP_PartitionedPoly;
         var _loc7_:* = null as class_318;
         var _loc8_:* = null as ZPP_PartitionedPoly;
         var _loc9_:* = null as ZPP_GeomVert;
         var _loc10_:* = null as class_260;
         §§push(class_320);
         §§push(zpp_inner.vertices);
         if(class_320.var_511 == null)
         {
            class_320.var_511 = new ZPP_PartitionedPoly();
         }
         var _loc3_:ZPP_PartitionedPoly = §§pop().decompose(§§pop(),class_320.var_511);
         §§push(_loc3_);
         if(ZPP_PartitionedPoly.var_615 == null)
         {
            ZPP_PartitionedPoly.var_615 = new class_327();
         }
         var _loc4_:class_327 = §§pop().method_480(ZPP_PartitionedPoly.var_615);
         if(param2 == null)
         {
            _loc5_ = new class_321();
         }
         else
         {
            _loc5_ = param2;
         }
         while(_loc4_.var_73 != null)
         {
            _loc6_ = _loc4_.method_105();
            class_322.method_541(_loc6_);
            if(param1)
            {
               class_322.method_343(_loc6_);
            }
            class_326.method_343(_loc6_);
            §§push(_loc6_);
            if(ZPP_PartitionedPoly.var_423 == null)
            {
               ZPP_PartitionedPoly.var_423 = new class_318();
            }
            _loc7_ = §§pop().method_413(ZPP_PartitionedPoly.var_423);
            _loc8_ = _loc6_;
            _loc8_.next = ZPP_PartitionedPoly.var_72;
            ZPP_PartitionedPoly.var_72 = _loc8_;
            while(_loc7_.var_73 != null)
            {
               _loc9_ = _loc7_.method_105();
               _loc10_ = class_260.method_65();
               _loc10_.zpp_inner.vertices = _loc9_;
               if(_loc5_.zpp_inner.var_111)
               {
                  _loc5_.push(_loc10_);
               }
               else
               {
                  _loc5_.unshift(_loc10_);
               }
            }
         }
         return _loc5_;
      }
      
      public final function contains(param1:Vec2) : Boolean
      {
         var _loc4_:* = null as ZPP_Vec2;
         var _loc9_:* = null as ZPP_GeomVert;
         var _loc10_:* = null as ZPP_GeomVert;
         var _loc11_:* = null as ZPP_GeomVert;
         var _loc12_:* = null as Vec2;
         var _loc13_:* = null as ZPP_Vec2;
         _loc4_ = param1.zpp_inner;
         if(_loc4_._validate != null)
         {
            _loc4_._validate();
         }
         var _loc3_:Number = param1.zpp_inner.x;
         _loc4_ = param1.zpp_inner;
         if(_loc4_._validate != null)
         {
            _loc4_._validate();
         }
         var _loc5_:Number = param1.zpp_inner.y;
         var _loc6_:* = false;
         var _loc7_:ZPP_GeomVert = zpp_inner.vertices;
         var _loc8_:ZPP_GeomVert = zpp_inner.vertices;
         if(_loc7_ != null)
         {
            _loc9_ = _loc7_;
            do
            {
               _loc10_ = _loc9_;
               _loc11_ = _loc10_.var_75;
               if((_loc10_.y < _loc5_ && _loc11_.y >= _loc5_ || _loc11_.y < _loc5_ && _loc10_.y >= _loc5_) && (_loc10_.x <= _loc3_ || _loc11_.x <= _loc3_))
               {
                  if(Number(_loc10_.x + (_loc5_ - _loc10_.y) / (_loc11_.y - _loc10_.y) * (_loc11_.x - _loc10_.x)) < _loc3_)
                  {
                     _loc6_ = !_loc6_;
                  }
               }
               _loc9_ = _loc9_.next;
            }
            while(_loc9_ != _loc8_);
            
         }
         var _loc2_:Boolean = _loc6_;
         if(param1.zpp_inner.name_5)
         {
            _loc4_ = param1.zpp_inner;
            param1.zpp_inner.outer = null;
            param1.zpp_inner = null;
            _loc12_ = param1;
            _loc12_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc12_;
            _loc13_ = _loc4_;
            if(_loc13_.outer != null)
            {
               _loc13_.outer.zpp_inner = null;
               _loc13_.outer = null;
            }
            _loc13_.var_103 = null;
            _loc13_._validate = null;
            _loc13_._invalidate = null;
            _loc13_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc13_;
            true;
         }
         else
         {
            false;
         }
         return _loc2_;
      }
      
      public final function clear() : class_260
      {
         var _loc1_:* = null as ZPP_GeomVert;
         var _loc2_:* = null as ZPP_GeomVert;
         var _loc3_:* = null as ZPP_GeomVert;
         var _loc4_:* = null as Vec2;
         var _loc5_:* = null as ZPP_Vec2;
         var _loc6_:* = null as Vec2;
         var _loc7_:* = null as ZPP_Vec2;
         while(zpp_inner.vertices != null)
         {
            _loc1_ = zpp_inner.vertices;
            if(zpp_inner.vertices != null && zpp_inner.vertices.var_75 == zpp_inner.vertices)
            {
               _loc2_ = null;
               zpp_inner.vertices.var_75 = _loc2_;
               zpp_inner.vertices.next = _loc2_;
               _loc2_ = null;
               zpp_inner.vertices = _loc2_;
               zpp_inner.vertices = _loc2_;
            }
            else
            {
               _loc2_ = zpp_inner.vertices.next;
               zpp_inner.vertices.var_75.next = zpp_inner.vertices.next;
               zpp_inner.vertices.next.var_75 = zpp_inner.vertices.var_75;
               _loc3_ = null;
               zpp_inner.vertices.var_75 = _loc3_;
               zpp_inner.vertices.next = _loc3_;
               zpp_inner.vertices = null;
               zpp_inner.vertices = _loc2_;
            }
            _loc2_ = _loc1_;
            if(_loc2_.var_127 != null)
            {
               _loc2_.var_127.zpp_inner.var_120 = false;
               _loc4_ = _loc2_.var_127;
               _loc5_ = _loc4_.zpp_inner;
               _loc4_.zpp_inner.outer = null;
               _loc4_.zpp_inner = null;
               _loc6_ = _loc4_;
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
               _loc2_.var_127 = null;
            }
            _loc3_ = null;
            _loc2_.next = _loc3_;
            _loc2_.var_75 = _loc3_;
            _loc2_.next = ZPP_GeomVert.var_72;
            ZPP_GeomVert.var_72 = _loc2_;
         }
         return this;
      }
      
      public final function bounds() : class_237
      {
         var _loc7_:* = null as ZPP_GeomVert;
         var _loc8_:* = null as ZPP_GeomVert;
         var _loc1_:* = 1.0e100;
         var _loc2_:* = 1.0e100;
         var _loc3_:* = -1.0e100;
         var _loc4_:* = -1.0e100;
         var _loc5_:ZPP_GeomVert = zpp_inner.vertices;
         var _loc6_:ZPP_GeomVert = zpp_inner.vertices;
         if(_loc5_ != null)
         {
            _loc7_ = _loc5_;
            do
            {
               _loc8_ = _loc7_;
               if(_loc8_.x < _loc1_)
               {
                  _loc1_ = Number(_loc8_.x);
               }
               if(_loc8_.y < _loc2_)
               {
                  _loc2_ = Number(_loc8_.y);
               }
               if(_loc8_.x > _loc3_)
               {
                  _loc3_ = Number(_loc8_.x);
               }
               if(_loc8_.y > _loc4_)
               {
                  _loc4_ = Number(_loc8_.y);
               }
               _loc7_ = _loc7_.next;
            }
            while(_loc7_ != _loc6_);
            
         }
         return new class_237(_loc1_,_loc2_,_loc3_ - _loc1_,_loc4_ - _loc2_);
      }
      
      public final function bottom() : Vec2
      {
         var _loc4_:* = null as ZPP_GeomVert;
         var _loc5_:* = null as ZPP_GeomVert;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Boolean = false;
         var _loc9_:* = null as Vec2;
         var _loc10_:Boolean = false;
         var _loc11_:* = null as ZPP_Vec2;
         var _loc1_:ZPP_GeomVert = zpp_inner.vertices;
         var _loc2_:ZPP_GeomVert = zpp_inner.vertices.next;
         var _loc3_:ZPP_GeomVert = zpp_inner.vertices;
         if(_loc2_ != null)
         {
            _loc4_ = _loc2_;
            do
            {
               _loc5_ = _loc4_;
               if(_loc5_.y > _loc1_.y)
               {
                  _loc1_ = _loc5_;
               }
               _loc4_ = _loc4_.next;
            }
            while(_loc4_ != _loc3_);
            
         }
         if(_loc1_.var_127 == null)
         {
            _loc6_ = _loc1_.x;
            _loc7_ = _loc1_.y;
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
               _loc11_.x = _loc6_;
               _loc11_.y = _loc7_;
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
               if(_loc9_.zpp_inner.x == _loc6_)
               {
                  §§pop();
                  _loc11_ = _loc9_.zpp_inner;
                  if(_loc11_._validate != null)
                  {
                     _loc11_._validate();
                  }
                  §§push(_loc9_.zpp_inner.y == _loc7_);
               }
               if(!§§pop())
               {
                  _loc9_.zpp_inner.x = _loc6_;
                  _loc9_.zpp_inner.y = _loc7_;
                  _loc11_ = _loc9_.zpp_inner;
                  if(_loc11_._invalidate != null)
                  {
                     _loc11_._invalidate(_loc11_);
                  }
               }
               _loc9_;
            }
            _loc9_.zpp_inner.name_5 = _loc8_;
            _loc1_.var_127 = _loc9_;
            _loc1_.var_127.zpp_inner.var_120 = true;
            _loc1_.var_127.zpp_inner._invalidate = _loc1_.method_195;
            _loc1_.var_127.zpp_inner._validate = _loc1_.method_213;
         }
         return _loc1_.var_127;
      }
      
      public final function method_848() : class_323
      {
         return class_262.method_65(zpp_inner.vertices,false);
      }
      
      public final function area() : Number
      {
         var _loc1_:Number = NaN;
         var _loc2_:* = NaN;
         var _loc3_:* = null as ZPP_GeomVert;
         var _loc4_:* = null as ZPP_GeomVert;
         var _loc5_:* = null as ZPP_GeomVert;
         var _loc6_:* = null as ZPP_GeomVert;
         if(zpp_inner.vertices == null || zpp_inner.vertices.next == null || zpp_inner.vertices.var_75 == zpp_inner.vertices.next)
         {
            return 0;
         }
         _loc2_ = 0;
         _loc3_ = zpp_inner.vertices;
         _loc4_ = zpp_inner.vertices;
         if(_loc3_ != null)
         {
            _loc5_ = _loc3_;
            do
            {
               _loc6_ = _loc5_;
               _loc2_ = Number(Number(_loc2_ + _loc6_.x * (_loc6_.next.y - _loc6_.var_75.y)));
               _loc5_ = _loc5_.next;
            }
            while(_loc5_ != _loc4_);
            
         }
         _loc1_ = _loc2_ * 0.5;
         if(_loc1_ < 0)
         {
            return -_loc1_;
         }
         return _loc1_;
      }
   }
}
