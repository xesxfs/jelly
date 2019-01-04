package zpp_nape.space
{
   import nape.geom.Vec2;
   import nape.geom.class_237;
   import zpp_nape.geom.ZPP_AABB;
   import zpp_nape.shape.ZPP_Shape;
   
   public final class class_338
   {
      
      public static var var_250:ZPP_AABB = new ZPP_AABB();
       
      
      public var root:ZPP_AABBNode;
      
      public function class_338()
      {
         root = null;
      }
      
      public final function method_513(param1:ZPP_AABBNode) : void
      {
         var _loc2_:* = null as ZPP_AABBNode;
         var _loc3_:* = null as ZPP_AABBNode;
         var _loc4_:* = null as ZPP_AABBNode;
         var _loc5_:* = null as ZPP_AABBNode;
         var _loc6_:* = null as ZPP_AABB;
         var _loc7_:* = null as Vec2;
         var _loc8_:* = null as ZPP_AABBNode;
         var _loc9_:* = null as ZPP_AABBNode;
         var _loc10_:* = 0;
         var _loc11_:* = null as ZPP_AABBNode;
         var _loc12_:* = null as ZPP_AABBNode;
         var _loc13_:* = null as ZPP_AABB;
         var _loc14_:* = null as ZPP_AABB;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         if(param1 == root)
         {
            root = null;
            null;
         }
         else
         {
            _loc2_ = param1.parent;
            _loc3_ = _loc2_.parent;
            if(_loc2_.child1 == param1)
            {
               _loc4_ = _loc2_.child2;
            }
            else
            {
               _loc4_ = _loc2_.child1;
            }
            if(_loc3_ != null)
            {
               if(_loc3_.child1 == _loc2_)
               {
                  _loc3_.child1 = _loc4_;
               }
               else
               {
                  _loc3_.child2 = _loc4_;
               }
               _loc4_.parent = _loc3_;
               _loc5_ = _loc2_;
               _loc5_.height = -1;
               _loc6_ = _loc5_.name_3;
               if(_loc6_.outer != null)
               {
                  _loc6_.outer.zpp_inner = null;
                  _loc6_.outer = null;
               }
               _loc7_ = null;
               _loc6_.var_239 = _loc7_;
               _loc6_.var_238 = _loc7_;
               _loc6_._invalidate = null;
               _loc6_._validate = null;
               _loc6_.next = ZPP_AABB.var_72;
               ZPP_AABB.var_72 = _loc6_;
               _loc8_ = null;
               _loc5_.parent = _loc8_;
               _loc8_ = _loc8_;
               _loc5_.child2 = _loc8_;
               _loc5_.child1 = _loc8_;
               _loc5_.next = null;
               _loc5_.var_275 = null;
               _loc5_.var_294 = null;
               _loc5_.next = ZPP_AABBNode.var_72;
               ZPP_AABBNode.var_72 = _loc5_;
               _loc5_ = _loc3_;
               while(_loc5_ != null)
               {
                  if(_loc5_.child1 == null || _loc5_.height < 2)
                  {
                     _loc5_ = _loc5_;
                  }
                  else
                  {
                     _loc8_ = _loc5_.child1;
                     _loc9_ = _loc5_.child2;
                     _loc10_ = _loc9_.height - _loc8_.height;
                     if(_loc10_ > 1)
                     {
                        _loc11_ = _loc9_.child1;
                        _loc12_ = _loc9_.child2;
                        _loc9_.child1 = _loc5_;
                        _loc9_.parent = _loc5_.parent;
                        _loc5_.parent = _loc9_;
                        if(_loc9_.parent != null)
                        {
                           if(_loc9_.parent.child1 == _loc5_)
                           {
                              _loc9_.parent.child1 = _loc9_;
                           }
                           else
                           {
                              _loc9_.parent.child2 = _loc9_;
                           }
                        }
                        else
                        {
                           root = _loc9_;
                        }
                        if(_loc11_.height > _loc12_.height)
                        {
                           _loc9_.child2 = _loc11_;
                           _loc5_.child2 = _loc12_;
                           _loc12_.parent = _loc5_;
                           _loc6_ = _loc5_.name_3;
                           _loc13_ = _loc8_.name_3;
                           _loc14_ = _loc12_.name_3;
                           if(_loc13_.var_77 < _loc14_.var_77)
                           {
                              _loc6_.var_77 = _loc13_.var_77;
                           }
                           else
                           {
                              _loc6_.var_77 = _loc14_.var_77;
                           }
                           if(_loc13_.var_78 < _loc14_.var_78)
                           {
                              _loc6_.var_78 = _loc13_.var_78;
                           }
                           else
                           {
                              _loc6_.var_78 = _loc14_.var_78;
                           }
                           if(_loc13_.var_79 > _loc14_.var_79)
                           {
                              _loc6_.var_79 = _loc13_.var_79;
                           }
                           else
                           {
                              _loc6_.var_79 = _loc14_.var_79;
                           }
                           if(_loc13_.var_80 > _loc14_.var_80)
                           {
                              _loc6_.var_80 = _loc13_.var_80;
                           }
                           else
                           {
                              _loc6_.var_80 = _loc14_.var_80;
                           }
                           _loc6_ = _loc9_.name_3;
                           _loc13_ = _loc5_.name_3;
                           _loc14_ = _loc11_.name_3;
                           if(_loc13_.var_77 < _loc14_.var_77)
                           {
                              _loc6_.var_77 = _loc13_.var_77;
                           }
                           else
                           {
                              _loc6_.var_77 = _loc14_.var_77;
                           }
                           if(_loc13_.var_78 < _loc14_.var_78)
                           {
                              _loc6_.var_78 = _loc13_.var_78;
                           }
                           else
                           {
                              _loc6_.var_78 = _loc14_.var_78;
                           }
                           if(_loc13_.var_79 > _loc14_.var_79)
                           {
                              _loc6_.var_79 = _loc13_.var_79;
                           }
                           else
                           {
                              _loc6_.var_79 = _loc14_.var_79;
                           }
                           if(_loc13_.var_80 > _loc14_.var_80)
                           {
                              _loc6_.var_80 = _loc13_.var_80;
                           }
                           else
                           {
                              _loc6_.var_80 = _loc14_.var_80;
                           }
                           _loc15_ = _loc8_.height;
                           _loc16_ = _loc12_.height;
                           _loc5_.height = 1 + (_loc15_ > _loc16_?_loc15_:_loc16_);
                           _loc15_ = _loc5_.height;
                           _loc16_ = _loc11_.height;
                           _loc9_.height = 1 + (_loc15_ > _loc16_?_loc15_:_loc16_);
                        }
                        else
                        {
                           _loc9_.child2 = _loc12_;
                           _loc5_.child2 = _loc11_;
                           _loc11_.parent = _loc5_;
                           _loc6_ = _loc5_.name_3;
                           _loc13_ = _loc8_.name_3;
                           _loc14_ = _loc11_.name_3;
                           if(_loc13_.var_77 < _loc14_.var_77)
                           {
                              _loc6_.var_77 = _loc13_.var_77;
                           }
                           else
                           {
                              _loc6_.var_77 = _loc14_.var_77;
                           }
                           if(_loc13_.var_78 < _loc14_.var_78)
                           {
                              _loc6_.var_78 = _loc13_.var_78;
                           }
                           else
                           {
                              _loc6_.var_78 = _loc14_.var_78;
                           }
                           if(_loc13_.var_79 > _loc14_.var_79)
                           {
                              _loc6_.var_79 = _loc13_.var_79;
                           }
                           else
                           {
                              _loc6_.var_79 = _loc14_.var_79;
                           }
                           if(_loc13_.var_80 > _loc14_.var_80)
                           {
                              _loc6_.var_80 = _loc13_.var_80;
                           }
                           else
                           {
                              _loc6_.var_80 = _loc14_.var_80;
                           }
                           _loc6_ = _loc9_.name_3;
                           _loc13_ = _loc5_.name_3;
                           _loc14_ = _loc12_.name_3;
                           if(_loc13_.var_77 < _loc14_.var_77)
                           {
                              _loc6_.var_77 = _loc13_.var_77;
                           }
                           else
                           {
                              _loc6_.var_77 = _loc14_.var_77;
                           }
                           if(_loc13_.var_78 < _loc14_.var_78)
                           {
                              _loc6_.var_78 = _loc13_.var_78;
                           }
                           else
                           {
                              _loc6_.var_78 = _loc14_.var_78;
                           }
                           if(_loc13_.var_79 > _loc14_.var_79)
                           {
                              _loc6_.var_79 = _loc13_.var_79;
                           }
                           else
                           {
                              _loc6_.var_79 = _loc14_.var_79;
                           }
                           if(_loc13_.var_80 > _loc14_.var_80)
                           {
                              _loc6_.var_80 = _loc13_.var_80;
                           }
                           else
                           {
                              _loc6_.var_80 = _loc14_.var_80;
                           }
                           _loc15_ = _loc8_.height;
                           _loc16_ = _loc11_.height;
                           _loc5_.height = 1 + (_loc15_ > _loc16_?_loc15_:_loc16_);
                           _loc15_ = _loc5_.height;
                           _loc16_ = _loc12_.height;
                           _loc9_.height = 1 + (_loc15_ > _loc16_?_loc15_:_loc16_);
                        }
                        _loc5_ = _loc9_;
                     }
                     else if(_loc10_ < -1)
                     {
                        _loc11_ = _loc8_.child1;
                        _loc12_ = _loc8_.child2;
                        _loc8_.child1 = _loc5_;
                        _loc8_.parent = _loc5_.parent;
                        _loc5_.parent = _loc8_;
                        if(_loc8_.parent != null)
                        {
                           if(_loc8_.parent.child1 == _loc5_)
                           {
                              _loc8_.parent.child1 = _loc8_;
                           }
                           else
                           {
                              _loc8_.parent.child2 = _loc8_;
                           }
                        }
                        else
                        {
                           root = _loc8_;
                        }
                        if(_loc11_.height > _loc12_.height)
                        {
                           _loc8_.child2 = _loc11_;
                           _loc5_.child1 = _loc12_;
                           _loc12_.parent = _loc5_;
                           _loc6_ = _loc5_.name_3;
                           _loc13_ = _loc9_.name_3;
                           _loc14_ = _loc12_.name_3;
                           if(_loc13_.var_77 < _loc14_.var_77)
                           {
                              _loc6_.var_77 = _loc13_.var_77;
                           }
                           else
                           {
                              _loc6_.var_77 = _loc14_.var_77;
                           }
                           if(_loc13_.var_78 < _loc14_.var_78)
                           {
                              _loc6_.var_78 = _loc13_.var_78;
                           }
                           else
                           {
                              _loc6_.var_78 = _loc14_.var_78;
                           }
                           if(_loc13_.var_79 > _loc14_.var_79)
                           {
                              _loc6_.var_79 = _loc13_.var_79;
                           }
                           else
                           {
                              _loc6_.var_79 = _loc14_.var_79;
                           }
                           if(_loc13_.var_80 > _loc14_.var_80)
                           {
                              _loc6_.var_80 = _loc13_.var_80;
                           }
                           else
                           {
                              _loc6_.var_80 = _loc14_.var_80;
                           }
                           _loc6_ = _loc8_.name_3;
                           _loc13_ = _loc5_.name_3;
                           _loc14_ = _loc11_.name_3;
                           if(_loc13_.var_77 < _loc14_.var_77)
                           {
                              _loc6_.var_77 = _loc13_.var_77;
                           }
                           else
                           {
                              _loc6_.var_77 = _loc14_.var_77;
                           }
                           if(_loc13_.var_78 < _loc14_.var_78)
                           {
                              _loc6_.var_78 = _loc13_.var_78;
                           }
                           else
                           {
                              _loc6_.var_78 = _loc14_.var_78;
                           }
                           if(_loc13_.var_79 > _loc14_.var_79)
                           {
                              _loc6_.var_79 = _loc13_.var_79;
                           }
                           else
                           {
                              _loc6_.var_79 = _loc14_.var_79;
                           }
                           if(_loc13_.var_80 > _loc14_.var_80)
                           {
                              _loc6_.var_80 = _loc13_.var_80;
                           }
                           else
                           {
                              _loc6_.var_80 = _loc14_.var_80;
                           }
                           _loc15_ = _loc9_.height;
                           _loc16_ = _loc12_.height;
                           _loc5_.height = 1 + (_loc15_ > _loc16_?_loc15_:_loc16_);
                           _loc15_ = _loc5_.height;
                           _loc16_ = _loc11_.height;
                           _loc8_.height = 1 + (_loc15_ > _loc16_?_loc15_:_loc16_);
                        }
                        else
                        {
                           _loc8_.child2 = _loc12_;
                           _loc5_.child1 = _loc11_;
                           _loc11_.parent = _loc5_;
                           _loc6_ = _loc5_.name_3;
                           _loc13_ = _loc9_.name_3;
                           _loc14_ = _loc11_.name_3;
                           if(_loc13_.var_77 < _loc14_.var_77)
                           {
                              _loc6_.var_77 = _loc13_.var_77;
                           }
                           else
                           {
                              _loc6_.var_77 = _loc14_.var_77;
                           }
                           if(_loc13_.var_78 < _loc14_.var_78)
                           {
                              _loc6_.var_78 = _loc13_.var_78;
                           }
                           else
                           {
                              _loc6_.var_78 = _loc14_.var_78;
                           }
                           if(_loc13_.var_79 > _loc14_.var_79)
                           {
                              _loc6_.var_79 = _loc13_.var_79;
                           }
                           else
                           {
                              _loc6_.var_79 = _loc14_.var_79;
                           }
                           if(_loc13_.var_80 > _loc14_.var_80)
                           {
                              _loc6_.var_80 = _loc13_.var_80;
                           }
                           else
                           {
                              _loc6_.var_80 = _loc14_.var_80;
                           }
                           _loc6_ = _loc8_.name_3;
                           _loc13_ = _loc5_.name_3;
                           _loc14_ = _loc12_.name_3;
                           if(_loc13_.var_77 < _loc14_.var_77)
                           {
                              _loc6_.var_77 = _loc13_.var_77;
                           }
                           else
                           {
                              _loc6_.var_77 = _loc14_.var_77;
                           }
                           if(_loc13_.var_78 < _loc14_.var_78)
                           {
                              _loc6_.var_78 = _loc13_.var_78;
                           }
                           else
                           {
                              _loc6_.var_78 = _loc14_.var_78;
                           }
                           if(_loc13_.var_79 > _loc14_.var_79)
                           {
                              _loc6_.var_79 = _loc13_.var_79;
                           }
                           else
                           {
                              _loc6_.var_79 = _loc14_.var_79;
                           }
                           if(_loc13_.var_80 > _loc14_.var_80)
                           {
                              _loc6_.var_80 = _loc13_.var_80;
                           }
                           else
                           {
                              _loc6_.var_80 = _loc14_.var_80;
                           }
                           _loc15_ = _loc9_.height;
                           _loc16_ = _loc11_.height;
                           _loc5_.height = 1 + (_loc15_ > _loc16_?_loc15_:_loc16_);
                           _loc15_ = _loc5_.height;
                           _loc16_ = _loc12_.height;
                           _loc8_.height = 1 + (_loc15_ > _loc16_?_loc15_:_loc16_);
                        }
                        _loc5_ = _loc8_;
                     }
                     else
                     {
                        _loc5_ = _loc5_;
                     }
                  }
                  _loc8_ = _loc5_.child1;
                  _loc9_ = _loc5_.child2;
                  _loc6_ = _loc5_.name_3;
                  _loc13_ = _loc8_.name_3;
                  _loc14_ = _loc9_.name_3;
                  if(_loc13_.var_77 < _loc14_.var_77)
                  {
                     _loc6_.var_77 = _loc13_.var_77;
                  }
                  else
                  {
                     _loc6_.var_77 = _loc14_.var_77;
                  }
                  if(_loc13_.var_78 < _loc14_.var_78)
                  {
                     _loc6_.var_78 = _loc13_.var_78;
                  }
                  else
                  {
                     _loc6_.var_78 = _loc14_.var_78;
                  }
                  if(_loc13_.var_79 > _loc14_.var_79)
                  {
                     _loc6_.var_79 = _loc13_.var_79;
                  }
                  else
                  {
                     _loc6_.var_79 = _loc14_.var_79;
                  }
                  if(_loc13_.var_80 > _loc14_.var_80)
                  {
                     _loc6_.var_80 = _loc13_.var_80;
                  }
                  else
                  {
                     _loc6_.var_80 = _loc14_.var_80;
                  }
                  _loc10_ = int(_loc8_.height);
                  _loc15_ = _loc9_.height;
                  _loc5_.height = 1 + (_loc10_ > _loc15_?_loc10_:_loc15_);
                  _loc5_ = _loc5_.parent;
               }
            }
            else
            {
               root = _loc4_;
               _loc4_.parent = null;
               _loc5_ = _loc2_;
               _loc5_.height = -1;
               _loc6_ = _loc5_.name_3;
               if(_loc6_.outer != null)
               {
                  _loc6_.outer.zpp_inner = null;
                  _loc6_.outer = null;
               }
               _loc7_ = null;
               _loc6_.var_239 = _loc7_;
               _loc6_.var_238 = _loc7_;
               _loc6_._invalidate = null;
               _loc6_._validate = null;
               _loc6_.next = ZPP_AABB.var_72;
               ZPP_AABB.var_72 = _loc6_;
               _loc8_ = null;
               _loc5_.parent = _loc8_;
               _loc8_ = _loc8_;
               _loc5_.child2 = _loc8_;
               _loc5_.child1 = _loc8_;
               _loc5_.next = null;
               _loc5_.var_275 = null;
               _loc5_.var_294 = null;
               _loc5_.next = ZPP_AABBNode.var_72;
               ZPP_AABBNode.var_72 = _loc5_;
            }
         }
      }
      
      public final function method_850(param1:ZPP_AABBNode) : void
      {
         var _loc2_:* = null as ZPP_AABB;
         var _loc3_:* = null as ZPP_AABBNode;
         var _loc4_:* = null as ZPP_AABBNode;
         var _loc5_:* = null as ZPP_AABBNode;
         var _loc6_:Number = NaN;
         var _loc7_:* = null as ZPP_AABB;
         var _loc8_:* = null as ZPP_AABB;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:* = null as ZPP_AABBNode;
         var _loc17_:* = null as ZPP_AABBNode;
         var _loc18_:* = null as ZPP_AABBNode;
         var _loc19_:* = 0;
         var _loc20_:* = null as ZPP_AABBNode;
         var _loc21_:* = null as ZPP_AABBNode;
         var _loc22_:* = null as ZPP_AABB;
         var _loc23_:int = 0;
         var _loc24_:int = 0;
         if(root == null)
         {
            root = param1;
            root.parent = null;
         }
         else
         {
            _loc2_ = param1.name_3;
            _loc3_ = root;
            while(_loc3_.child1 != null)
            {
               _loc4_ = _loc3_.child1;
               _loc5_ = _loc3_.child2;
               _loc7_ = _loc3_.name_3;
               _loc6_ = (_loc7_.var_79 - _loc7_.var_77 + (_loc7_.var_80 - _loc7_.var_78)) * 2;
               _loc7_ = class_338.var_250;
               _loc8_ = _loc3_.name_3;
               if(_loc8_.var_77 < _loc2_.var_77)
               {
                  _loc7_.var_77 = _loc8_.var_77;
               }
               else
               {
                  _loc7_.var_77 = _loc2_.var_77;
               }
               if(_loc8_.var_78 < _loc2_.var_78)
               {
                  _loc7_.var_78 = _loc8_.var_78;
               }
               else
               {
                  _loc7_.var_78 = _loc2_.var_78;
               }
               if(_loc8_.var_79 > _loc2_.var_79)
               {
                  _loc7_.var_79 = _loc8_.var_79;
               }
               else
               {
                  _loc7_.var_79 = _loc2_.var_79;
               }
               if(_loc8_.var_80 > _loc2_.var_80)
               {
                  _loc7_.var_80 = _loc8_.var_80;
               }
               else
               {
                  _loc7_.var_80 = _loc2_.var_80;
               }
               _loc7_ = class_338.var_250;
               _loc9_ = (_loc7_.var_79 - _loc7_.var_77 + (_loc7_.var_80 - _loc7_.var_78)) * 2;
               _loc10_ = 2 * _loc9_;
               _loc11_ = 2 * (_loc9_ - _loc6_);
               _loc7_ = class_338.var_250;
               _loc8_ = _loc4_.name_3;
               if(_loc2_.var_77 < _loc8_.var_77)
               {
                  _loc7_.var_77 = _loc2_.var_77;
               }
               else
               {
                  _loc7_.var_77 = _loc8_.var_77;
               }
               if(_loc2_.var_78 < _loc8_.var_78)
               {
                  _loc7_.var_78 = _loc2_.var_78;
               }
               else
               {
                  _loc7_.var_78 = _loc8_.var_78;
               }
               if(_loc2_.var_79 > _loc8_.var_79)
               {
                  _loc7_.var_79 = _loc2_.var_79;
               }
               else
               {
                  _loc7_.var_79 = _loc8_.var_79;
               }
               if(_loc2_.var_80 > _loc8_.var_80)
               {
                  _loc7_.var_80 = _loc2_.var_80;
               }
               else
               {
                  _loc7_.var_80 = _loc8_.var_80;
               }
               if(_loc4_.child1 == null)
               {
                  _loc7_ = class_338.var_250;
                  _loc12_ = Number((_loc7_.var_79 - _loc7_.var_77 + (_loc7_.var_80 - _loc7_.var_78)) * 2 + _loc11_);
               }
               else
               {
                  _loc7_ = _loc4_.name_3;
                  _loc13_ = (_loc7_.var_79 - _loc7_.var_77 + (_loc7_.var_80 - _loc7_.var_78)) * 2;
                  _loc7_ = class_338.var_250;
                  _loc14_ = (_loc7_.var_79 - _loc7_.var_77 + (_loc7_.var_80 - _loc7_.var_78)) * 2;
                  _loc12_ = Number(_loc14_ - _loc13_ + _loc11_);
               }
               _loc7_ = class_338.var_250;
               _loc8_ = _loc5_.name_3;
               if(_loc2_.var_77 < _loc8_.var_77)
               {
                  _loc7_.var_77 = _loc2_.var_77;
               }
               else
               {
                  _loc7_.var_77 = _loc8_.var_77;
               }
               if(_loc2_.var_78 < _loc8_.var_78)
               {
                  _loc7_.var_78 = _loc2_.var_78;
               }
               else
               {
                  _loc7_.var_78 = _loc8_.var_78;
               }
               if(_loc2_.var_79 > _loc8_.var_79)
               {
                  _loc7_.var_79 = _loc2_.var_79;
               }
               else
               {
                  _loc7_.var_79 = _loc8_.var_79;
               }
               if(_loc2_.var_80 > _loc8_.var_80)
               {
                  _loc7_.var_80 = _loc2_.var_80;
               }
               else
               {
                  _loc7_.var_80 = _loc8_.var_80;
               }
               if(_loc5_.child1 == null)
               {
                  _loc7_ = class_338.var_250;
                  _loc13_ = Number((_loc7_.var_79 - _loc7_.var_77 + (_loc7_.var_80 - _loc7_.var_78)) * 2 + _loc11_);
               }
               else
               {
                  _loc7_ = _loc5_.name_3;
                  _loc14_ = (_loc7_.var_79 - _loc7_.var_77 + (_loc7_.var_80 - _loc7_.var_78)) * 2;
                  _loc7_ = class_338.var_250;
                  _loc15_ = (_loc7_.var_79 - _loc7_.var_77 + (_loc7_.var_80 - _loc7_.var_78)) * 2;
                  _loc13_ = Number(_loc15_ - _loc14_ + _loc11_);
               }
               if(_loc10_ < _loc12_ && _loc10_ < _loc13_)
               {
                  break;
               }
               if(_loc12_ < _loc13_)
               {
                  _loc3_ = _loc4_;
               }
               else
               {
                  _loc3_ = _loc5_;
               }
            }
            _loc4_ = _loc3_;
            _loc5_ = _loc4_.parent;
            if(ZPP_AABBNode.var_72 == null)
            {
               _loc16_ = new ZPP_AABBNode();
            }
            else
            {
               _loc16_ = ZPP_AABBNode.var_72;
               ZPP_AABBNode.var_72 = _loc16_.next;
               _loc16_.next = null;
            }
            if(ZPP_AABB.var_72 == null)
            {
               _loc16_.name_3 = new ZPP_AABB();
            }
            else
            {
               _loc16_.name_3 = ZPP_AABB.var_72;
               ZPP_AABB.var_72 = _loc16_.name_3.next;
               _loc16_.name_3.next = null;
            }
            null;
            _loc16_.var_407 = false;
            _loc16_.var_426 = false;
            _loc16_.var_374 = false;
            _loc16_.parent = _loc5_;
            _loc7_ = _loc16_.name_3;
            _loc8_ = _loc4_.name_3;
            if(_loc2_.var_77 < _loc8_.var_77)
            {
               _loc7_.var_77 = _loc2_.var_77;
            }
            else
            {
               _loc7_.var_77 = _loc8_.var_77;
            }
            if(_loc2_.var_78 < _loc8_.var_78)
            {
               _loc7_.var_78 = _loc2_.var_78;
            }
            else
            {
               _loc7_.var_78 = _loc8_.var_78;
            }
            if(_loc2_.var_79 > _loc8_.var_79)
            {
               _loc7_.var_79 = _loc2_.var_79;
            }
            else
            {
               _loc7_.var_79 = _loc8_.var_79;
            }
            if(_loc2_.var_80 > _loc8_.var_80)
            {
               _loc7_.var_80 = _loc2_.var_80;
            }
            else
            {
               _loc7_.var_80 = _loc8_.var_80;
            }
            _loc16_.height = _loc4_.height + 1;
            if(_loc5_ != null)
            {
               if(_loc5_.child1 == _loc4_)
               {
                  _loc5_.child1 = _loc16_;
               }
               else
               {
                  _loc5_.child2 = _loc16_;
               }
               _loc16_.child1 = _loc4_;
               _loc16_.child2 = param1;
               _loc4_.parent = _loc16_;
               param1.parent = _loc16_;
            }
            else
            {
               _loc16_.child1 = _loc4_;
               _loc16_.child2 = param1;
               _loc4_.parent = _loc16_;
               param1.parent = _loc16_;
               root = _loc16_;
            }
            _loc3_ = param1.parent;
            while(_loc3_ != null)
            {
               if(_loc3_.child1 == null || _loc3_.height < 2)
               {
                  _loc3_ = _loc3_;
               }
               else
               {
                  _loc17_ = _loc3_.child1;
                  _loc18_ = _loc3_.child2;
                  _loc19_ = _loc18_.height - _loc17_.height;
                  if(_loc19_ > 1)
                  {
                     _loc20_ = _loc18_.child1;
                     _loc21_ = _loc18_.child2;
                     _loc18_.child1 = _loc3_;
                     _loc18_.parent = _loc3_.parent;
                     _loc3_.parent = _loc18_;
                     if(_loc18_.parent != null)
                     {
                        if(_loc18_.parent.child1 == _loc3_)
                        {
                           _loc18_.parent.child1 = _loc18_;
                        }
                        else
                        {
                           _loc18_.parent.child2 = _loc18_;
                        }
                     }
                     else
                     {
                        root = _loc18_;
                     }
                     if(_loc20_.height > _loc21_.height)
                     {
                        _loc18_.child2 = _loc20_;
                        _loc3_.child2 = _loc21_;
                        _loc21_.parent = _loc3_;
                        _loc7_ = _loc3_.name_3;
                        _loc8_ = _loc17_.name_3;
                        _loc22_ = _loc21_.name_3;
                        if(_loc8_.var_77 < _loc22_.var_77)
                        {
                           _loc7_.var_77 = _loc8_.var_77;
                        }
                        else
                        {
                           _loc7_.var_77 = _loc22_.var_77;
                        }
                        if(_loc8_.var_78 < _loc22_.var_78)
                        {
                           _loc7_.var_78 = _loc8_.var_78;
                        }
                        else
                        {
                           _loc7_.var_78 = _loc22_.var_78;
                        }
                        if(_loc8_.var_79 > _loc22_.var_79)
                        {
                           _loc7_.var_79 = _loc8_.var_79;
                        }
                        else
                        {
                           _loc7_.var_79 = _loc22_.var_79;
                        }
                        if(_loc8_.var_80 > _loc22_.var_80)
                        {
                           _loc7_.var_80 = _loc8_.var_80;
                        }
                        else
                        {
                           _loc7_.var_80 = _loc22_.var_80;
                        }
                        _loc7_ = _loc18_.name_3;
                        _loc8_ = _loc3_.name_3;
                        _loc22_ = _loc20_.name_3;
                        if(_loc8_.var_77 < _loc22_.var_77)
                        {
                           _loc7_.var_77 = _loc8_.var_77;
                        }
                        else
                        {
                           _loc7_.var_77 = _loc22_.var_77;
                        }
                        if(_loc8_.var_78 < _loc22_.var_78)
                        {
                           _loc7_.var_78 = _loc8_.var_78;
                        }
                        else
                        {
                           _loc7_.var_78 = _loc22_.var_78;
                        }
                        if(_loc8_.var_79 > _loc22_.var_79)
                        {
                           _loc7_.var_79 = _loc8_.var_79;
                        }
                        else
                        {
                           _loc7_.var_79 = _loc22_.var_79;
                        }
                        if(_loc8_.var_80 > _loc22_.var_80)
                        {
                           _loc7_.var_80 = _loc8_.var_80;
                        }
                        else
                        {
                           _loc7_.var_80 = _loc22_.var_80;
                        }
                        _loc23_ = _loc17_.height;
                        _loc24_ = _loc21_.height;
                        _loc3_.height = 1 + (_loc23_ > _loc24_?_loc23_:_loc24_);
                        _loc23_ = _loc3_.height;
                        _loc24_ = _loc20_.height;
                        _loc18_.height = 1 + (_loc23_ > _loc24_?_loc23_:_loc24_);
                     }
                     else
                     {
                        _loc18_.child2 = _loc21_;
                        _loc3_.child2 = _loc20_;
                        _loc20_.parent = _loc3_;
                        _loc7_ = _loc3_.name_3;
                        _loc8_ = _loc17_.name_3;
                        _loc22_ = _loc20_.name_3;
                        if(_loc8_.var_77 < _loc22_.var_77)
                        {
                           _loc7_.var_77 = _loc8_.var_77;
                        }
                        else
                        {
                           _loc7_.var_77 = _loc22_.var_77;
                        }
                        if(_loc8_.var_78 < _loc22_.var_78)
                        {
                           _loc7_.var_78 = _loc8_.var_78;
                        }
                        else
                        {
                           _loc7_.var_78 = _loc22_.var_78;
                        }
                        if(_loc8_.var_79 > _loc22_.var_79)
                        {
                           _loc7_.var_79 = _loc8_.var_79;
                        }
                        else
                        {
                           _loc7_.var_79 = _loc22_.var_79;
                        }
                        if(_loc8_.var_80 > _loc22_.var_80)
                        {
                           _loc7_.var_80 = _loc8_.var_80;
                        }
                        else
                        {
                           _loc7_.var_80 = _loc22_.var_80;
                        }
                        _loc7_ = _loc18_.name_3;
                        _loc8_ = _loc3_.name_3;
                        _loc22_ = _loc21_.name_3;
                        if(_loc8_.var_77 < _loc22_.var_77)
                        {
                           _loc7_.var_77 = _loc8_.var_77;
                        }
                        else
                        {
                           _loc7_.var_77 = _loc22_.var_77;
                        }
                        if(_loc8_.var_78 < _loc22_.var_78)
                        {
                           _loc7_.var_78 = _loc8_.var_78;
                        }
                        else
                        {
                           _loc7_.var_78 = _loc22_.var_78;
                        }
                        if(_loc8_.var_79 > _loc22_.var_79)
                        {
                           _loc7_.var_79 = _loc8_.var_79;
                        }
                        else
                        {
                           _loc7_.var_79 = _loc22_.var_79;
                        }
                        if(_loc8_.var_80 > _loc22_.var_80)
                        {
                           _loc7_.var_80 = _loc8_.var_80;
                        }
                        else
                        {
                           _loc7_.var_80 = _loc22_.var_80;
                        }
                        _loc23_ = _loc17_.height;
                        _loc24_ = _loc20_.height;
                        _loc3_.height = 1 + (_loc23_ > _loc24_?_loc23_:_loc24_);
                        _loc23_ = _loc3_.height;
                        _loc24_ = _loc21_.height;
                        _loc18_.height = 1 + (_loc23_ > _loc24_?_loc23_:_loc24_);
                     }
                     _loc3_ = _loc18_;
                  }
                  else if(_loc19_ < -1)
                  {
                     _loc20_ = _loc17_.child1;
                     _loc21_ = _loc17_.child2;
                     _loc17_.child1 = _loc3_;
                     _loc17_.parent = _loc3_.parent;
                     _loc3_.parent = _loc17_;
                     if(_loc17_.parent != null)
                     {
                        if(_loc17_.parent.child1 == _loc3_)
                        {
                           _loc17_.parent.child1 = _loc17_;
                        }
                        else
                        {
                           _loc17_.parent.child2 = _loc17_;
                        }
                     }
                     else
                     {
                        root = _loc17_;
                     }
                     if(_loc20_.height > _loc21_.height)
                     {
                        _loc17_.child2 = _loc20_;
                        _loc3_.child1 = _loc21_;
                        _loc21_.parent = _loc3_;
                        _loc7_ = _loc3_.name_3;
                        _loc8_ = _loc18_.name_3;
                        _loc22_ = _loc21_.name_3;
                        if(_loc8_.var_77 < _loc22_.var_77)
                        {
                           _loc7_.var_77 = _loc8_.var_77;
                        }
                        else
                        {
                           _loc7_.var_77 = _loc22_.var_77;
                        }
                        if(_loc8_.var_78 < _loc22_.var_78)
                        {
                           _loc7_.var_78 = _loc8_.var_78;
                        }
                        else
                        {
                           _loc7_.var_78 = _loc22_.var_78;
                        }
                        if(_loc8_.var_79 > _loc22_.var_79)
                        {
                           _loc7_.var_79 = _loc8_.var_79;
                        }
                        else
                        {
                           _loc7_.var_79 = _loc22_.var_79;
                        }
                        if(_loc8_.var_80 > _loc22_.var_80)
                        {
                           _loc7_.var_80 = _loc8_.var_80;
                        }
                        else
                        {
                           _loc7_.var_80 = _loc22_.var_80;
                        }
                        _loc7_ = _loc17_.name_3;
                        _loc8_ = _loc3_.name_3;
                        _loc22_ = _loc20_.name_3;
                        if(_loc8_.var_77 < _loc22_.var_77)
                        {
                           _loc7_.var_77 = _loc8_.var_77;
                        }
                        else
                        {
                           _loc7_.var_77 = _loc22_.var_77;
                        }
                        if(_loc8_.var_78 < _loc22_.var_78)
                        {
                           _loc7_.var_78 = _loc8_.var_78;
                        }
                        else
                        {
                           _loc7_.var_78 = _loc22_.var_78;
                        }
                        if(_loc8_.var_79 > _loc22_.var_79)
                        {
                           _loc7_.var_79 = _loc8_.var_79;
                        }
                        else
                        {
                           _loc7_.var_79 = _loc22_.var_79;
                        }
                        if(_loc8_.var_80 > _loc22_.var_80)
                        {
                           _loc7_.var_80 = _loc8_.var_80;
                        }
                        else
                        {
                           _loc7_.var_80 = _loc22_.var_80;
                        }
                        _loc23_ = _loc18_.height;
                        _loc24_ = _loc21_.height;
                        _loc3_.height = 1 + (_loc23_ > _loc24_?_loc23_:_loc24_);
                        _loc23_ = _loc3_.height;
                        _loc24_ = _loc20_.height;
                        _loc17_.height = 1 + (_loc23_ > _loc24_?_loc23_:_loc24_);
                     }
                     else
                     {
                        _loc17_.child2 = _loc21_;
                        _loc3_.child1 = _loc20_;
                        _loc20_.parent = _loc3_;
                        _loc7_ = _loc3_.name_3;
                        _loc8_ = _loc18_.name_3;
                        _loc22_ = _loc20_.name_3;
                        if(_loc8_.var_77 < _loc22_.var_77)
                        {
                           _loc7_.var_77 = _loc8_.var_77;
                        }
                        else
                        {
                           _loc7_.var_77 = _loc22_.var_77;
                        }
                        if(_loc8_.var_78 < _loc22_.var_78)
                        {
                           _loc7_.var_78 = _loc8_.var_78;
                        }
                        else
                        {
                           _loc7_.var_78 = _loc22_.var_78;
                        }
                        if(_loc8_.var_79 > _loc22_.var_79)
                        {
                           _loc7_.var_79 = _loc8_.var_79;
                        }
                        else
                        {
                           _loc7_.var_79 = _loc22_.var_79;
                        }
                        if(_loc8_.var_80 > _loc22_.var_80)
                        {
                           _loc7_.var_80 = _loc8_.var_80;
                        }
                        else
                        {
                           _loc7_.var_80 = _loc22_.var_80;
                        }
                        _loc7_ = _loc17_.name_3;
                        _loc8_ = _loc3_.name_3;
                        _loc22_ = _loc21_.name_3;
                        if(_loc8_.var_77 < _loc22_.var_77)
                        {
                           _loc7_.var_77 = _loc8_.var_77;
                        }
                        else
                        {
                           _loc7_.var_77 = _loc22_.var_77;
                        }
                        if(_loc8_.var_78 < _loc22_.var_78)
                        {
                           _loc7_.var_78 = _loc8_.var_78;
                        }
                        else
                        {
                           _loc7_.var_78 = _loc22_.var_78;
                        }
                        if(_loc8_.var_79 > _loc22_.var_79)
                        {
                           _loc7_.var_79 = _loc8_.var_79;
                        }
                        else
                        {
                           _loc7_.var_79 = _loc22_.var_79;
                        }
                        if(_loc8_.var_80 > _loc22_.var_80)
                        {
                           _loc7_.var_80 = _loc8_.var_80;
                        }
                        else
                        {
                           _loc7_.var_80 = _loc22_.var_80;
                        }
                        _loc23_ = _loc18_.height;
                        _loc24_ = _loc20_.height;
                        _loc3_.height = 1 + (_loc23_ > _loc24_?_loc23_:_loc24_);
                        _loc23_ = _loc3_.height;
                        _loc24_ = _loc21_.height;
                        _loc17_.height = 1 + (_loc23_ > _loc24_?_loc23_:_loc24_);
                     }
                     _loc3_ = _loc17_;
                  }
                  else
                  {
                     _loc3_ = _loc3_;
                  }
               }
               _loc17_ = _loc3_.child1;
               _loc18_ = _loc3_.child2;
               _loc19_ = int(_loc17_.height);
               _loc23_ = _loc18_.height;
               _loc3_.height = 1 + (_loc19_ > _loc23_?_loc19_:_loc23_);
               _loc7_ = _loc3_.name_3;
               _loc8_ = _loc17_.name_3;
               _loc22_ = _loc18_.name_3;
               if(_loc8_.var_77 < _loc22_.var_77)
               {
                  _loc7_.var_77 = _loc8_.var_77;
               }
               else
               {
                  _loc7_.var_77 = _loc22_.var_77;
               }
               if(_loc8_.var_78 < _loc22_.var_78)
               {
                  _loc7_.var_78 = _loc8_.var_78;
               }
               else
               {
                  _loc7_.var_78 = _loc22_.var_78;
               }
               if(_loc8_.var_79 > _loc22_.var_79)
               {
                  _loc7_.var_79 = _loc8_.var_79;
               }
               else
               {
                  _loc7_.var_79 = _loc22_.var_79;
               }
               if(_loc8_.var_80 > _loc22_.var_80)
               {
                  _loc7_.var_80 = _loc8_.var_80;
               }
               else
               {
                  _loc7_.var_80 = _loc22_.var_80;
               }
               _loc3_ = _loc3_.parent;
            }
         }
      }
      
      public final function clear() : void
      {
         var _loc2_:* = null as ZPP_AABBNode;
         var _loc3_:* = null as ZPP_AABBNode;
         var _loc4_:* = null as ZPP_AABB;
         var _loc5_:* = null as Vec2;
         var _loc6_:* = null as ZPP_AABBNode;
         if(root == null)
         {
            return;
         }
         var _loc1_:* = null;
         root.next = _loc1_;
         _loc1_ = root;
         while(_loc1_ != null)
         {
            _loc3_ = _loc1_;
            _loc1_ = _loc3_.next;
            _loc3_.next = null;
            _loc2_ = _loc3_;
            if(_loc2_.child1 == null)
            {
               _loc2_.name_7.var_138 = null;
               _loc2_.name_7.method_120();
               _loc2_.name_7 = null;
            }
            else
            {
               if(_loc2_.child1 != null)
               {
                  _loc2_.child1.next = _loc1_;
                  _loc1_ = _loc2_.child1;
               }
               if(_loc2_.child2 != null)
               {
                  _loc2_.child2.next = _loc1_;
                  _loc1_ = _loc2_.child2;
               }
            }
            _loc3_ = _loc2_;
            _loc3_.height = -1;
            _loc4_ = _loc3_.name_3;
            if(_loc4_.outer != null)
            {
               _loc4_.outer.zpp_inner = null;
               _loc4_.outer = null;
            }
            _loc5_ = null;
            _loc4_.var_239 = _loc5_;
            _loc4_.var_238 = _loc5_;
            _loc4_._invalidate = null;
            _loc4_._validate = null;
            _loc4_.next = ZPP_AABB.var_72;
            ZPP_AABB.var_72 = _loc4_;
            _loc6_ = null;
            _loc3_.parent = _loc6_;
            _loc6_ = _loc6_;
            _loc3_.child2 = _loc6_;
            _loc3_.child1 = _loc6_;
            _loc3_.next = null;
            _loc3_.var_275 = null;
            _loc3_.var_294 = null;
            _loc3_.next = ZPP_AABBNode.var_72;
            ZPP_AABBNode.var_72 = _loc3_;
         }
         root = null;
      }
   }
}
