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
   import zpp_nape.shape.ZPP_Circle;
   import zpp_nape.shape.ZPP_Polygon;
   import zpp_nape.shape.ZPP_Shape;
   import zpp_nape.util.ZNPNode_ZPP_AABBNode;
   import zpp_nape.util.ZNPNode_ZPP_AABBPair;
   import zpp_nape.util.class_223;
   import zpp_nape.util.class_312;
   import zpp_nape.util.class_337;
   
   public final class class_309 extends ZPP_Broadphase
   {
      
      public static var var_1147:Number = 3;
      
      public static var var_1178:Number = 2;
       
      
      public var treeStack2:class_337;
      
      public var var_108:class_337;
      
      public var var_202:ZPP_AABBNode;
      
      public var var_151:class_338;
      
      public var var_144:ZPP_AABBPair;
      
      public var var_186:class_337;
      
      public var var_227:ZPP_AABBNode;
      
      public var var_143:class_205;
      
      public var var_152:class_338;
      
      public function class_309(param1:ZPP_Space)
      {
         var_186 = null;
         var_143 = null;
         treeStack2 = null;
         var_108 = null;
         var_227 = null;
         var_202 = null;
         var_144 = null;
         var_152 = null;
         var_151 = null;
         space = param1;
         var_432 = false;
         var_551 = this;
         var_151 = new class_338();
         var_152 = new class_338();
      }
      
      public final function sync_broadphase() : void
      {
         var _loc1_:* = null as ZPP_AABBNode;
         var _loc2_:* = null as ZPP_Shape;
         var _loc3_:* = null as class_338;
         var _loc4_:* = null as ZPP_AABBNode;
         var _loc5_:* = null as ZPP_AABBNode;
         var _loc6_:* = null as ZPP_AABBNode;
         var _loc7_:* = null as ZPP_AABBNode;
         var _loc8_:* = null as ZPP_AABB;
         var _loc9_:* = null as Vec2;
         var _loc10_:* = null as ZPP_AABBNode;
         var _loc11_:* = null as ZPP_AABBNode;
         var _loc12_:* = 0;
         var _loc13_:* = null as ZPP_AABBNode;
         var _loc14_:* = null as ZPP_AABBNode;
         var _loc15_:* = null as ZPP_AABB;
         var _loc16_:* = null as ZPP_AABB;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         var _loc19_:* = null as ZPP_Circle;
         var _loc20_:* = null as ZPP_Polygon;
         var _loc21_:* = NaN;
         var _loc22_:* = null as ZPP_Vec2;
         var _loc23_:* = null as ZPP_Vec2;
         var _loc24_:* = null as ZPP_Vec2;
         var _loc25_:* = null as ZPP_Vec2;
         var _loc26_:Number = NaN;
         var _loc27_:* = null as ZPP_Vec2;
         var _loc28_:* = null as ZPP_Body;
         var _loc29_:* = false;
         var _loc30_:* = null as ZPP_AABB;
         var _loc31_:Number = NaN;
         var _loc32_:Number = NaN;
         var _loc33_:Number = NaN;
         var _loc34_:Number = NaN;
         var _loc35_:Number = NaN;
         var _loc36_:Number = NaN;
         var _loc37_:* = null as ZPP_AABB;
         space.name_58();
         if(var_202 != null)
         {
            if(var_227 == null)
            {
               _loc1_ = var_202;
               while(_loc1_ != null)
               {
                  _loc2_ = _loc1_.name_7;
                  if(!_loc1_.var_374)
                  {
                     if(_loc1_.var_451)
                     {
                        _loc3_ = var_152;
                     }
                     else
                     {
                        _loc3_ = var_151;
                     }
                     if(_loc1_ == _loc3_.root)
                     {
                        _loc3_.root = null;
                        null;
                     }
                     else
                     {
                        _loc4_ = _loc1_.parent;
                        _loc5_ = _loc4_.parent;
                        if(_loc4_.child1 == _loc1_)
                        {
                           _loc6_ = _loc4_.child2;
                        }
                        else
                        {
                           _loc6_ = _loc4_.child1;
                        }
                        if(_loc5_ != null)
                        {
                           if(_loc5_.child1 == _loc4_)
                           {
                              _loc5_.child1 = _loc6_;
                           }
                           else
                           {
                              _loc5_.child2 = _loc6_;
                           }
                           _loc6_.parent = _loc5_;
                           _loc7_ = _loc4_;
                           _loc7_.height = -1;
                           _loc8_ = _loc7_.name_3;
                           if(_loc8_.outer != null)
                           {
                              _loc8_.outer.zpp_inner = null;
                              _loc8_.outer = null;
                           }
                           _loc9_ = null;
                           _loc8_.var_239 = _loc9_;
                           _loc8_.var_238 = _loc9_;
                           _loc8_._invalidate = null;
                           _loc8_._validate = null;
                           _loc8_.next = ZPP_AABB.var_72;
                           ZPP_AABB.var_72 = _loc8_;
                           _loc10_ = null;
                           _loc7_.parent = _loc10_;
                           _loc10_ = _loc10_;
                           _loc7_.child2 = _loc10_;
                           _loc7_.child1 = _loc10_;
                           _loc7_.next = null;
                           _loc7_.var_275 = null;
                           _loc7_.var_294 = null;
                           _loc7_.next = ZPP_AABBNode.var_72;
                           ZPP_AABBNode.var_72 = _loc7_;
                           _loc7_ = _loc5_;
                           while(_loc7_ != null)
                           {
                              if(_loc7_.child1 == null || _loc7_.height < 2)
                              {
                                 _loc7_ = _loc7_;
                              }
                              else
                              {
                                 _loc10_ = _loc7_.child1;
                                 _loc11_ = _loc7_.child2;
                                 _loc12_ = _loc11_.height - _loc10_.height;
                                 if(_loc12_ > 1)
                                 {
                                    _loc13_ = _loc11_.child1;
                                    _loc14_ = _loc11_.child2;
                                    _loc11_.child1 = _loc7_;
                                    _loc11_.parent = _loc7_.parent;
                                    _loc7_.parent = _loc11_;
                                    if(_loc11_.parent != null)
                                    {
                                       if(_loc11_.parent.child1 == _loc7_)
                                       {
                                          _loc11_.parent.child1 = _loc11_;
                                       }
                                       else
                                       {
                                          _loc11_.parent.child2 = _loc11_;
                                       }
                                    }
                                    else
                                    {
                                       _loc3_.root = _loc11_;
                                    }
                                    if(_loc13_.height > _loc14_.height)
                                    {
                                       _loc11_.child2 = _loc13_;
                                       _loc7_.child2 = _loc14_;
                                       _loc14_.parent = _loc7_;
                                       _loc8_ = _loc7_.name_3;
                                       _loc15_ = _loc10_.name_3;
                                       _loc16_ = _loc14_.name_3;
                                       if(_loc15_.var_77 < _loc16_.var_77)
                                       {
                                          _loc8_.var_77 = _loc15_.var_77;
                                       }
                                       else
                                       {
                                          _loc8_.var_77 = _loc16_.var_77;
                                       }
                                       if(_loc15_.var_78 < _loc16_.var_78)
                                       {
                                          _loc8_.var_78 = _loc15_.var_78;
                                       }
                                       else
                                       {
                                          _loc8_.var_78 = _loc16_.var_78;
                                       }
                                       if(_loc15_.var_79 > _loc16_.var_79)
                                       {
                                          _loc8_.var_79 = _loc15_.var_79;
                                       }
                                       else
                                       {
                                          _loc8_.var_79 = _loc16_.var_79;
                                       }
                                       if(_loc15_.var_80 > _loc16_.var_80)
                                       {
                                          _loc8_.var_80 = _loc15_.var_80;
                                       }
                                       else
                                       {
                                          _loc8_.var_80 = _loc16_.var_80;
                                       }
                                       _loc8_ = _loc11_.name_3;
                                       _loc15_ = _loc7_.name_3;
                                       _loc16_ = _loc13_.name_3;
                                       if(_loc15_.var_77 < _loc16_.var_77)
                                       {
                                          _loc8_.var_77 = _loc15_.var_77;
                                       }
                                       else
                                       {
                                          _loc8_.var_77 = _loc16_.var_77;
                                       }
                                       if(_loc15_.var_78 < _loc16_.var_78)
                                       {
                                          _loc8_.var_78 = _loc15_.var_78;
                                       }
                                       else
                                       {
                                          _loc8_.var_78 = _loc16_.var_78;
                                       }
                                       if(_loc15_.var_79 > _loc16_.var_79)
                                       {
                                          _loc8_.var_79 = _loc15_.var_79;
                                       }
                                       else
                                       {
                                          _loc8_.var_79 = _loc16_.var_79;
                                       }
                                       if(_loc15_.var_80 > _loc16_.var_80)
                                       {
                                          _loc8_.var_80 = _loc15_.var_80;
                                       }
                                       else
                                       {
                                          _loc8_.var_80 = _loc16_.var_80;
                                       }
                                       _loc17_ = _loc10_.height;
                                       _loc18_ = _loc14_.height;
                                       _loc7_.height = 1 + (_loc17_ > _loc18_?_loc17_:_loc18_);
                                       _loc17_ = _loc7_.height;
                                       _loc18_ = _loc13_.height;
                                       _loc11_.height = 1 + (_loc17_ > _loc18_?_loc17_:_loc18_);
                                    }
                                    else
                                    {
                                       _loc11_.child2 = _loc14_;
                                       _loc7_.child2 = _loc13_;
                                       _loc13_.parent = _loc7_;
                                       _loc8_ = _loc7_.name_3;
                                       _loc15_ = _loc10_.name_3;
                                       _loc16_ = _loc13_.name_3;
                                       if(_loc15_.var_77 < _loc16_.var_77)
                                       {
                                          _loc8_.var_77 = _loc15_.var_77;
                                       }
                                       else
                                       {
                                          _loc8_.var_77 = _loc16_.var_77;
                                       }
                                       if(_loc15_.var_78 < _loc16_.var_78)
                                       {
                                          _loc8_.var_78 = _loc15_.var_78;
                                       }
                                       else
                                       {
                                          _loc8_.var_78 = _loc16_.var_78;
                                       }
                                       if(_loc15_.var_79 > _loc16_.var_79)
                                       {
                                          _loc8_.var_79 = _loc15_.var_79;
                                       }
                                       else
                                       {
                                          _loc8_.var_79 = _loc16_.var_79;
                                       }
                                       if(_loc15_.var_80 > _loc16_.var_80)
                                       {
                                          _loc8_.var_80 = _loc15_.var_80;
                                       }
                                       else
                                       {
                                          _loc8_.var_80 = _loc16_.var_80;
                                       }
                                       _loc8_ = _loc11_.name_3;
                                       _loc15_ = _loc7_.name_3;
                                       _loc16_ = _loc14_.name_3;
                                       if(_loc15_.var_77 < _loc16_.var_77)
                                       {
                                          _loc8_.var_77 = _loc15_.var_77;
                                       }
                                       else
                                       {
                                          _loc8_.var_77 = _loc16_.var_77;
                                       }
                                       if(_loc15_.var_78 < _loc16_.var_78)
                                       {
                                          _loc8_.var_78 = _loc15_.var_78;
                                       }
                                       else
                                       {
                                          _loc8_.var_78 = _loc16_.var_78;
                                       }
                                       if(_loc15_.var_79 > _loc16_.var_79)
                                       {
                                          _loc8_.var_79 = _loc15_.var_79;
                                       }
                                       else
                                       {
                                          _loc8_.var_79 = _loc16_.var_79;
                                       }
                                       if(_loc15_.var_80 > _loc16_.var_80)
                                       {
                                          _loc8_.var_80 = _loc15_.var_80;
                                       }
                                       else
                                       {
                                          _loc8_.var_80 = _loc16_.var_80;
                                       }
                                       _loc17_ = _loc10_.height;
                                       _loc18_ = _loc13_.height;
                                       _loc7_.height = 1 + (_loc17_ > _loc18_?_loc17_:_loc18_);
                                       _loc17_ = _loc7_.height;
                                       _loc18_ = _loc14_.height;
                                       _loc11_.height = 1 + (_loc17_ > _loc18_?_loc17_:_loc18_);
                                    }
                                    _loc7_ = _loc11_;
                                 }
                                 else if(_loc12_ < -1)
                                 {
                                    _loc13_ = _loc10_.child1;
                                    _loc14_ = _loc10_.child2;
                                    _loc10_.child1 = _loc7_;
                                    _loc10_.parent = _loc7_.parent;
                                    _loc7_.parent = _loc10_;
                                    if(_loc10_.parent != null)
                                    {
                                       if(_loc10_.parent.child1 == _loc7_)
                                       {
                                          _loc10_.parent.child1 = _loc10_;
                                       }
                                       else
                                       {
                                          _loc10_.parent.child2 = _loc10_;
                                       }
                                    }
                                    else
                                    {
                                       _loc3_.root = _loc10_;
                                    }
                                    if(_loc13_.height > _loc14_.height)
                                    {
                                       _loc10_.child2 = _loc13_;
                                       _loc7_.child1 = _loc14_;
                                       _loc14_.parent = _loc7_;
                                       _loc8_ = _loc7_.name_3;
                                       _loc15_ = _loc11_.name_3;
                                       _loc16_ = _loc14_.name_3;
                                       if(_loc15_.var_77 < _loc16_.var_77)
                                       {
                                          _loc8_.var_77 = _loc15_.var_77;
                                       }
                                       else
                                       {
                                          _loc8_.var_77 = _loc16_.var_77;
                                       }
                                       if(_loc15_.var_78 < _loc16_.var_78)
                                       {
                                          _loc8_.var_78 = _loc15_.var_78;
                                       }
                                       else
                                       {
                                          _loc8_.var_78 = _loc16_.var_78;
                                       }
                                       if(_loc15_.var_79 > _loc16_.var_79)
                                       {
                                          _loc8_.var_79 = _loc15_.var_79;
                                       }
                                       else
                                       {
                                          _loc8_.var_79 = _loc16_.var_79;
                                       }
                                       if(_loc15_.var_80 > _loc16_.var_80)
                                       {
                                          _loc8_.var_80 = _loc15_.var_80;
                                       }
                                       else
                                       {
                                          _loc8_.var_80 = _loc16_.var_80;
                                       }
                                       _loc8_ = _loc10_.name_3;
                                       _loc15_ = _loc7_.name_3;
                                       _loc16_ = _loc13_.name_3;
                                       if(_loc15_.var_77 < _loc16_.var_77)
                                       {
                                          _loc8_.var_77 = _loc15_.var_77;
                                       }
                                       else
                                       {
                                          _loc8_.var_77 = _loc16_.var_77;
                                       }
                                       if(_loc15_.var_78 < _loc16_.var_78)
                                       {
                                          _loc8_.var_78 = _loc15_.var_78;
                                       }
                                       else
                                       {
                                          _loc8_.var_78 = _loc16_.var_78;
                                       }
                                       if(_loc15_.var_79 > _loc16_.var_79)
                                       {
                                          _loc8_.var_79 = _loc15_.var_79;
                                       }
                                       else
                                       {
                                          _loc8_.var_79 = _loc16_.var_79;
                                       }
                                       if(_loc15_.var_80 > _loc16_.var_80)
                                       {
                                          _loc8_.var_80 = _loc15_.var_80;
                                       }
                                       else
                                       {
                                          _loc8_.var_80 = _loc16_.var_80;
                                       }
                                       _loc17_ = _loc11_.height;
                                       _loc18_ = _loc14_.height;
                                       _loc7_.height = 1 + (_loc17_ > _loc18_?_loc17_:_loc18_);
                                       _loc17_ = _loc7_.height;
                                       _loc18_ = _loc13_.height;
                                       _loc10_.height = 1 + (_loc17_ > _loc18_?_loc17_:_loc18_);
                                    }
                                    else
                                    {
                                       _loc10_.child2 = _loc14_;
                                       _loc7_.child1 = _loc13_;
                                       _loc13_.parent = _loc7_;
                                       _loc8_ = _loc7_.name_3;
                                       _loc15_ = _loc11_.name_3;
                                       _loc16_ = _loc13_.name_3;
                                       if(_loc15_.var_77 < _loc16_.var_77)
                                       {
                                          _loc8_.var_77 = _loc15_.var_77;
                                       }
                                       else
                                       {
                                          _loc8_.var_77 = _loc16_.var_77;
                                       }
                                       if(_loc15_.var_78 < _loc16_.var_78)
                                       {
                                          _loc8_.var_78 = _loc15_.var_78;
                                       }
                                       else
                                       {
                                          _loc8_.var_78 = _loc16_.var_78;
                                       }
                                       if(_loc15_.var_79 > _loc16_.var_79)
                                       {
                                          _loc8_.var_79 = _loc15_.var_79;
                                       }
                                       else
                                       {
                                          _loc8_.var_79 = _loc16_.var_79;
                                       }
                                       if(_loc15_.var_80 > _loc16_.var_80)
                                       {
                                          _loc8_.var_80 = _loc15_.var_80;
                                       }
                                       else
                                       {
                                          _loc8_.var_80 = _loc16_.var_80;
                                       }
                                       _loc8_ = _loc10_.name_3;
                                       _loc15_ = _loc7_.name_3;
                                       _loc16_ = _loc14_.name_3;
                                       if(_loc15_.var_77 < _loc16_.var_77)
                                       {
                                          _loc8_.var_77 = _loc15_.var_77;
                                       }
                                       else
                                       {
                                          _loc8_.var_77 = _loc16_.var_77;
                                       }
                                       if(_loc15_.var_78 < _loc16_.var_78)
                                       {
                                          _loc8_.var_78 = _loc15_.var_78;
                                       }
                                       else
                                       {
                                          _loc8_.var_78 = _loc16_.var_78;
                                       }
                                       if(_loc15_.var_79 > _loc16_.var_79)
                                       {
                                          _loc8_.var_79 = _loc15_.var_79;
                                       }
                                       else
                                       {
                                          _loc8_.var_79 = _loc16_.var_79;
                                       }
                                       if(_loc15_.var_80 > _loc16_.var_80)
                                       {
                                          _loc8_.var_80 = _loc15_.var_80;
                                       }
                                       else
                                       {
                                          _loc8_.var_80 = _loc16_.var_80;
                                       }
                                       _loc17_ = _loc11_.height;
                                       _loc18_ = _loc13_.height;
                                       _loc7_.height = 1 + (_loc17_ > _loc18_?_loc17_:_loc18_);
                                       _loc17_ = _loc7_.height;
                                       _loc18_ = _loc14_.height;
                                       _loc10_.height = 1 + (_loc17_ > _loc18_?_loc17_:_loc18_);
                                    }
                                    _loc7_ = _loc10_;
                                 }
                                 else
                                 {
                                    _loc7_ = _loc7_;
                                 }
                              }
                              _loc10_ = _loc7_.child1;
                              _loc11_ = _loc7_.child2;
                              _loc8_ = _loc7_.name_3;
                              _loc15_ = _loc10_.name_3;
                              _loc16_ = _loc11_.name_3;
                              if(_loc15_.var_77 < _loc16_.var_77)
                              {
                                 _loc8_.var_77 = _loc15_.var_77;
                              }
                              else
                              {
                                 _loc8_.var_77 = _loc16_.var_77;
                              }
                              if(_loc15_.var_78 < _loc16_.var_78)
                              {
                                 _loc8_.var_78 = _loc15_.var_78;
                              }
                              else
                              {
                                 _loc8_.var_78 = _loc16_.var_78;
                              }
                              if(_loc15_.var_79 > _loc16_.var_79)
                              {
                                 _loc8_.var_79 = _loc15_.var_79;
                              }
                              else
                              {
                                 _loc8_.var_79 = _loc16_.var_79;
                              }
                              if(_loc15_.var_80 > _loc16_.var_80)
                              {
                                 _loc8_.var_80 = _loc15_.var_80;
                              }
                              else
                              {
                                 _loc8_.var_80 = _loc16_.var_80;
                              }
                              _loc12_ = int(_loc10_.height);
                              _loc17_ = _loc11_.height;
                              _loc7_.height = 1 + (_loc12_ > _loc17_?_loc12_:_loc17_);
                              _loc7_ = _loc7_.parent;
                           }
                        }
                        else
                        {
                           _loc3_.root = _loc6_;
                           _loc6_.parent = null;
                           _loc7_ = _loc4_;
                           _loc7_.height = -1;
                           _loc8_ = _loc7_.name_3;
                           if(_loc8_.outer != null)
                           {
                              _loc8_.outer.zpp_inner = null;
                              _loc8_.outer = null;
                           }
                           _loc9_ = null;
                           _loc8_.var_239 = _loc9_;
                           _loc8_.var_238 = _loc9_;
                           _loc8_._invalidate = null;
                           _loc8_._validate = null;
                           _loc8_.next = ZPP_AABB.var_72;
                           ZPP_AABB.var_72 = _loc8_;
                           _loc10_ = null;
                           _loc7_.parent = _loc10_;
                           _loc10_ = _loc10_;
                           _loc7_.child2 = _loc10_;
                           _loc7_.child1 = _loc10_;
                           _loc7_.next = null;
                           _loc7_.var_275 = null;
                           _loc7_.var_294 = null;
                           _loc7_.next = ZPP_AABBNode.var_72;
                           ZPP_AABBNode.var_72 = _loc7_;
                        }
                     }
                  }
                  else
                  {
                     _loc1_.var_374 = false;
                  }
                  _loc8_ = _loc1_.name_3;
                  if(!space.var_371)
                  {
                     if(_loc2_.var_149)
                     {
                        if(_loc2_.body != null)
                        {
                           _loc2_.var_149 = false;
                           if(_loc2_.type == class_223.var_131)
                           {
                              _loc19_ = _loc2_.var_102;
                              if(_loc19_.var_139)
                              {
                                 if(_loc19_.body != null)
                                 {
                                    _loc19_.var_139 = false;
                                    if(_loc19_.var_140)
                                    {
                                       _loc19_.var_140 = false;
                                       if(_loc19_.type == class_223.var_155)
                                       {
                                          _loc20_ = _loc19_.name_6;
                                          if(_loc20_.var_88.next.next == null)
                                          {
                                             _loc20_.var_82 = _loc20_.var_88.next.x;
                                             _loc20_.var_81 = _loc20_.var_88.next.y;
                                             null;
                                          }
                                          else if(_loc20_.var_88.next.next.next == null)
                                          {
                                             _loc20_.var_82 = _loc20_.var_88.next.x;
                                             _loc20_.var_81 = _loc20_.var_88.next.y;
                                             _loc21_ = 1;
                                             _loc20_.var_82 = Number(_loc20_.var_82 + _loc20_.var_88.next.next.x * _loc21_);
                                             _loc20_.var_81 = Number(_loc20_.var_81 + _loc20_.var_88.next.next.y * _loc21_);
                                             _loc21_ = 0.5;
                                             _loc20_.var_82 = _loc20_.var_82 * _loc21_;
                                             _loc20_.var_81 = _loc20_.var_81 * _loc21_;
                                          }
                                          else
                                          {
                                             _loc20_.var_82 = 0;
                                             _loc20_.var_81 = 0;
                                             _loc21_ = 0;
                                             _loc22_ = _loc20_.var_88.next;
                                             _loc23_ = _loc22_;
                                             _loc22_ = _loc22_.next;
                                             _loc24_ = _loc22_;
                                             _loc22_ = _loc22_.next;
                                             while(_loc22_ != null)
                                             {
                                                _loc25_ = _loc22_;
                                                _loc21_ = Number(Number(_loc21_ + _loc24_.x * (_loc25_.y - _loc23_.y)));
                                                _loc26_ = _loc25_.y * _loc24_.x - _loc25_.x * _loc24_.y;
                                                _loc20_.var_82 = Number(_loc20_.var_82 + (_loc24_.x + _loc25_.x) * _loc26_);
                                                _loc20_.var_81 = Number(_loc20_.var_81 + (_loc24_.y + _loc25_.y) * _loc26_);
                                                _loc23_ = _loc24_;
                                                _loc24_ = _loc25_;
                                                _loc22_ = _loc22_.next;
                                             }
                                             _loc22_ = _loc20_.var_88.next;
                                             _loc25_ = _loc22_;
                                             _loc21_ = Number(Number(_loc21_ + _loc24_.x * (_loc25_.y - _loc23_.y)));
                                             _loc26_ = _loc25_.y * _loc24_.x - _loc25_.x * _loc24_.y;
                                             _loc20_.var_82 = Number(_loc20_.var_82 + (_loc24_.x + _loc25_.x) * _loc26_);
                                             _loc20_.var_81 = Number(_loc20_.var_81 + (_loc24_.y + _loc25_.y) * _loc26_);
                                             _loc23_ = _loc24_;
                                             _loc24_ = _loc25_;
                                             _loc22_ = _loc22_.next;
                                             _loc27_ = _loc22_;
                                             _loc21_ = Number(Number(_loc21_ + _loc24_.x * (_loc27_.y - _loc23_.y)));
                                             _loc26_ = _loc27_.y * _loc24_.x - _loc27_.x * _loc24_.y;
                                             _loc20_.var_82 = Number(_loc20_.var_82 + (_loc24_.x + _loc27_.x) * _loc26_);
                                             _loc20_.var_81 = Number(_loc20_.var_81 + (_loc24_.y + _loc27_.y) * _loc26_);
                                             _loc21_ = Number(1 / (3 * _loc21_));
                                             _loc26_ = _loc21_;
                                             _loc20_.var_82 = _loc20_.var_82 * _loc26_;
                                             _loc20_.var_81 = _loc20_.var_81 * _loc26_;
                                          }
                                       }
                                       if(_loc19_.var_115 != null)
                                       {
                                          _loc19_.var_115.zpp_inner.x = _loc19_.var_82;
                                          _loc19_.var_115.zpp_inner.y = _loc19_.var_81;
                                       }
                                    }
                                    _loc28_ = _loc19_.body;
                                    if(_loc28_.var_113)
                                    {
                                       _loc28_.var_113 = false;
                                       _loc28_.var_84 = Number(Math.sin(_loc28_.var_93));
                                       _loc28_.var_83 = Number(Math.cos(_loc28_.var_93));
                                       null;
                                    }
                                    _loc19_.var_99 = Number(_loc19_.body.var_95 + (_loc19_.body.var_83 * _loc19_.var_82 - _loc19_.body.var_84 * _loc19_.var_81));
                                    _loc19_.var_100 = Number(_loc19_.body.var_96 + (Number(_loc19_.var_82 * _loc19_.body.var_84 + _loc19_.var_81 * _loc19_.body.var_83)));
                                 }
                              }
                              _loc21_ = Number(_loc19_.radius);
                              _loc26_ = _loc19_.radius;
                              _loc19_.name_3.var_77 = _loc19_.var_99 - _loc21_;
                              _loc19_.name_3.var_78 = _loc19_.var_100 - _loc26_;
                              _loc19_.name_3.var_79 = Number(_loc19_.var_99 + _loc21_);
                              _loc19_.name_3.var_80 = Number(_loc19_.var_100 + _loc26_);
                           }
                           else
                           {
                              _loc20_ = _loc2_.name_6;
                              if(_loc20_.var_153)
                              {
                                 if(_loc20_.body != null)
                                 {
                                    _loc20_.var_153 = false;
                                    _loc20_.method_116();
                                    _loc28_ = _loc20_.body;
                                    if(_loc28_.var_113)
                                    {
                                       _loc28_.var_113 = false;
                                       _loc28_.var_84 = Number(Math.sin(_loc28_.var_93));
                                       _loc28_.var_83 = Number(Math.cos(_loc28_.var_93));
                                       null;
                                    }
                                    _loc22_ = _loc20_.var_88.next;
                                    _loc23_ = _loc20_.var_107.next;
                                    while(_loc23_ != null)
                                    {
                                       _loc24_ = _loc23_;
                                       _loc25_ = _loc22_;
                                       _loc22_ = _loc22_.next;
                                       _loc24_.x = Number(_loc20_.body.var_95 + (_loc20_.body.var_83 * _loc25_.x - _loc20_.body.var_84 * _loc25_.y));
                                       _loc24_.y = Number(_loc20_.body.var_96 + (Number(_loc25_.x * _loc20_.body.var_84 + _loc25_.y * _loc20_.body.var_83)));
                                       _loc23_ = _loc23_.next;
                                    }
                                 }
                              }
                              _loc22_ = _loc20_.var_107.next;
                              _loc20_.name_3.var_77 = _loc22_.x;
                              _loc20_.name_3.var_78 = _loc22_.y;
                              _loc20_.name_3.var_79 = _loc22_.x;
                              _loc20_.name_3.var_80 = _loc22_.y;
                              _loc23_ = _loc20_.var_107.next.next;
                              while(_loc23_ != null)
                              {
                                 _loc24_ = _loc23_;
                                 if(_loc24_.x < _loc20_.name_3.var_77)
                                 {
                                    _loc20_.name_3.var_77 = _loc24_.x;
                                 }
                                 if(_loc24_.x > _loc20_.name_3.var_79)
                                 {
                                    _loc20_.name_3.var_79 = _loc24_.x;
                                 }
                                 if(_loc24_.y < _loc20_.name_3.var_78)
                                 {
                                    _loc20_.name_3.var_78 = _loc24_.y;
                                 }
                                 if(_loc24_.y > _loc20_.name_3.var_80)
                                 {
                                    _loc20_.name_3.var_80 = _loc24_.y;
                                 }
                                 _loc23_ = _loc23_.next;
                              }
                           }
                        }
                     }
                  }
                  _loc15_ = _loc2_.name_3;
                  _loc8_.var_77 = _loc15_.var_77 - 3;
                  _loc8_.var_78 = _loc15_.var_78 - 3;
                  _loc8_.var_79 = Number(_loc15_.var_79 + 3);
                  _loc8_.var_80 = Number(_loc15_.var_80 + 3);
                  if(_loc2_.body.type == class_223.var_240)
                  {
                     _loc29_ = false;
                     _loc1_.var_451 = _loc29_;
                     §§push(_loc29_);
                  }
                  else
                  {
                     _loc29_ = !_loc2_.body.var_112.var_129;
                     _loc1_.var_451 = _loc29_;
                     §§push(_loc29_);
                  }
                  if(§§pop())
                  {
                     _loc3_ = var_152;
                  }
                  else
                  {
                     _loc3_ = var_151;
                  }
                  if(_loc3_.root == null)
                  {
                     _loc3_.root = _loc1_;
                     _loc3_.root.parent = null;
                  }
                  else
                  {
                     _loc15_ = _loc1_.name_3;
                     _loc4_ = _loc3_.root;
                     while(_loc4_.child1 != null)
                     {
                        _loc5_ = _loc4_.child1;
                        _loc6_ = _loc4_.child2;
                        _loc16_ = _loc4_.name_3;
                        _loc21_ = Number((_loc16_.var_79 - _loc16_.var_77 + (_loc16_.var_80 - _loc16_.var_78)) * 2);
                        _loc16_ = class_338.var_250;
                        _loc30_ = _loc4_.name_3;
                        if(_loc30_.var_77 < _loc15_.var_77)
                        {
                           _loc16_.var_77 = _loc30_.var_77;
                        }
                        else
                        {
                           _loc16_.var_77 = _loc15_.var_77;
                        }
                        if(_loc30_.var_78 < _loc15_.var_78)
                        {
                           _loc16_.var_78 = _loc30_.var_78;
                        }
                        else
                        {
                           _loc16_.var_78 = _loc15_.var_78;
                        }
                        if(_loc30_.var_79 > _loc15_.var_79)
                        {
                           _loc16_.var_79 = _loc30_.var_79;
                        }
                        else
                        {
                           _loc16_.var_79 = _loc15_.var_79;
                        }
                        if(_loc30_.var_80 > _loc15_.var_80)
                        {
                           _loc16_.var_80 = _loc30_.var_80;
                        }
                        else
                        {
                           _loc16_.var_80 = _loc15_.var_80;
                        }
                        _loc16_ = class_338.var_250;
                        _loc26_ = (_loc16_.var_79 - _loc16_.var_77 + (_loc16_.var_80 - _loc16_.var_78)) * 2;
                        _loc31_ = 2 * _loc26_;
                        _loc32_ = 2 * (_loc26_ - _loc21_);
                        _loc16_ = class_338.var_250;
                        _loc30_ = _loc5_.name_3;
                        if(_loc15_.var_77 < _loc30_.var_77)
                        {
                           _loc16_.var_77 = _loc15_.var_77;
                        }
                        else
                        {
                           _loc16_.var_77 = _loc30_.var_77;
                        }
                        if(_loc15_.var_78 < _loc30_.var_78)
                        {
                           _loc16_.var_78 = _loc15_.var_78;
                        }
                        else
                        {
                           _loc16_.var_78 = _loc30_.var_78;
                        }
                        if(_loc15_.var_79 > _loc30_.var_79)
                        {
                           _loc16_.var_79 = _loc15_.var_79;
                        }
                        else
                        {
                           _loc16_.var_79 = _loc30_.var_79;
                        }
                        if(_loc15_.var_80 > _loc30_.var_80)
                        {
                           _loc16_.var_80 = _loc15_.var_80;
                        }
                        else
                        {
                           _loc16_.var_80 = _loc30_.var_80;
                        }
                        if(_loc5_.child1 == null)
                        {
                           _loc16_ = class_338.var_250;
                           _loc33_ = Number((_loc16_.var_79 - _loc16_.var_77 + (_loc16_.var_80 - _loc16_.var_78)) * 2 + _loc32_);
                        }
                        else
                        {
                           _loc16_ = _loc5_.name_3;
                           _loc34_ = (_loc16_.var_79 - _loc16_.var_77 + (_loc16_.var_80 - _loc16_.var_78)) * 2;
                           _loc16_ = class_338.var_250;
                           _loc35_ = (_loc16_.var_79 - _loc16_.var_77 + (_loc16_.var_80 - _loc16_.var_78)) * 2;
                           _loc33_ = Number(_loc35_ - _loc34_ + _loc32_);
                        }
                        _loc16_ = class_338.var_250;
                        _loc30_ = _loc6_.name_3;
                        if(_loc15_.var_77 < _loc30_.var_77)
                        {
                           _loc16_.var_77 = _loc15_.var_77;
                        }
                        else
                        {
                           _loc16_.var_77 = _loc30_.var_77;
                        }
                        if(_loc15_.var_78 < _loc30_.var_78)
                        {
                           _loc16_.var_78 = _loc15_.var_78;
                        }
                        else
                        {
                           _loc16_.var_78 = _loc30_.var_78;
                        }
                        if(_loc15_.var_79 > _loc30_.var_79)
                        {
                           _loc16_.var_79 = _loc15_.var_79;
                        }
                        else
                        {
                           _loc16_.var_79 = _loc30_.var_79;
                        }
                        if(_loc15_.var_80 > _loc30_.var_80)
                        {
                           _loc16_.var_80 = _loc15_.var_80;
                        }
                        else
                        {
                           _loc16_.var_80 = _loc30_.var_80;
                        }
                        if(_loc6_.child1 == null)
                        {
                           _loc16_ = class_338.var_250;
                           _loc34_ = Number((_loc16_.var_79 - _loc16_.var_77 + (_loc16_.var_80 - _loc16_.var_78)) * 2 + _loc32_);
                        }
                        else
                        {
                           _loc16_ = _loc6_.name_3;
                           _loc35_ = (_loc16_.var_79 - _loc16_.var_77 + (_loc16_.var_80 - _loc16_.var_78)) * 2;
                           _loc16_ = class_338.var_250;
                           _loc36_ = (_loc16_.var_79 - _loc16_.var_77 + (_loc16_.var_80 - _loc16_.var_78)) * 2;
                           _loc34_ = Number(_loc36_ - _loc35_ + _loc32_);
                        }
                        if(_loc31_ < _loc33_ && _loc31_ < _loc34_)
                        {
                           break;
                        }
                        if(_loc33_ < _loc34_)
                        {
                           _loc4_ = _loc5_;
                        }
                        else
                        {
                           _loc4_ = _loc6_;
                        }
                     }
                     _loc5_ = _loc4_;
                     _loc6_ = _loc5_.parent;
                     if(ZPP_AABBNode.var_72 == null)
                     {
                        _loc7_ = new ZPP_AABBNode();
                     }
                     else
                     {
                        _loc7_ = ZPP_AABBNode.var_72;
                        ZPP_AABBNode.var_72 = _loc7_.next;
                        _loc7_.next = null;
                     }
                     if(ZPP_AABB.var_72 == null)
                     {
                        _loc7_.name_3 = new ZPP_AABB();
                     }
                     else
                     {
                        _loc7_.name_3 = ZPP_AABB.var_72;
                        ZPP_AABB.var_72 = _loc7_.name_3.next;
                        _loc7_.name_3.next = null;
                     }
                     null;
                     _loc7_.var_407 = false;
                     _loc7_.var_426 = false;
                     _loc7_.var_374 = false;
                     _loc7_.parent = _loc6_;
                     _loc16_ = _loc7_.name_3;
                     _loc30_ = _loc5_.name_3;
                     if(_loc15_.var_77 < _loc30_.var_77)
                     {
                        _loc16_.var_77 = _loc15_.var_77;
                     }
                     else
                     {
                        _loc16_.var_77 = _loc30_.var_77;
                     }
                     if(_loc15_.var_78 < _loc30_.var_78)
                     {
                        _loc16_.var_78 = _loc15_.var_78;
                     }
                     else
                     {
                        _loc16_.var_78 = _loc30_.var_78;
                     }
                     if(_loc15_.var_79 > _loc30_.var_79)
                     {
                        _loc16_.var_79 = _loc15_.var_79;
                     }
                     else
                     {
                        _loc16_.var_79 = _loc30_.var_79;
                     }
                     if(_loc15_.var_80 > _loc30_.var_80)
                     {
                        _loc16_.var_80 = _loc15_.var_80;
                     }
                     else
                     {
                        _loc16_.var_80 = _loc30_.var_80;
                     }
                     _loc7_.height = _loc5_.height + 1;
                     if(_loc6_ != null)
                     {
                        if(_loc6_.child1 == _loc5_)
                        {
                           _loc6_.child1 = _loc7_;
                        }
                        else
                        {
                           _loc6_.child2 = _loc7_;
                        }
                        _loc7_.child1 = _loc5_;
                        _loc7_.child2 = _loc1_;
                        _loc5_.parent = _loc7_;
                        _loc1_.parent = _loc7_;
                     }
                     else
                     {
                        _loc7_.child1 = _loc5_;
                        _loc7_.child2 = _loc1_;
                        _loc5_.parent = _loc7_;
                        _loc1_.parent = _loc7_;
                        _loc3_.root = _loc7_;
                     }
                     _loc4_ = _loc1_.parent;
                     while(_loc4_ != null)
                     {
                        if(_loc4_.child1 == null || _loc4_.height < 2)
                        {
                           _loc4_ = _loc4_;
                        }
                        else
                        {
                           _loc10_ = _loc4_.child1;
                           _loc11_ = _loc4_.child2;
                           _loc12_ = _loc11_.height - _loc10_.height;
                           if(_loc12_ > 1)
                           {
                              _loc13_ = _loc11_.child1;
                              _loc14_ = _loc11_.child2;
                              _loc11_.child1 = _loc4_;
                              _loc11_.parent = _loc4_.parent;
                              _loc4_.parent = _loc11_;
                              if(_loc11_.parent != null)
                              {
                                 if(_loc11_.parent.child1 == _loc4_)
                                 {
                                    _loc11_.parent.child1 = _loc11_;
                                 }
                                 else
                                 {
                                    _loc11_.parent.child2 = _loc11_;
                                 }
                              }
                              else
                              {
                                 _loc3_.root = _loc11_;
                              }
                              if(_loc13_.height > _loc14_.height)
                              {
                                 _loc11_.child2 = _loc13_;
                                 _loc4_.child2 = _loc14_;
                                 _loc14_.parent = _loc4_;
                                 _loc16_ = _loc4_.name_3;
                                 _loc30_ = _loc10_.name_3;
                                 _loc37_ = _loc14_.name_3;
                                 if(_loc30_.var_77 < _loc37_.var_77)
                                 {
                                    _loc16_.var_77 = _loc30_.var_77;
                                 }
                                 else
                                 {
                                    _loc16_.var_77 = _loc37_.var_77;
                                 }
                                 if(_loc30_.var_78 < _loc37_.var_78)
                                 {
                                    _loc16_.var_78 = _loc30_.var_78;
                                 }
                                 else
                                 {
                                    _loc16_.var_78 = _loc37_.var_78;
                                 }
                                 if(_loc30_.var_79 > _loc37_.var_79)
                                 {
                                    _loc16_.var_79 = _loc30_.var_79;
                                 }
                                 else
                                 {
                                    _loc16_.var_79 = _loc37_.var_79;
                                 }
                                 if(_loc30_.var_80 > _loc37_.var_80)
                                 {
                                    _loc16_.var_80 = _loc30_.var_80;
                                 }
                                 else
                                 {
                                    _loc16_.var_80 = _loc37_.var_80;
                                 }
                                 _loc16_ = _loc11_.name_3;
                                 _loc30_ = _loc4_.name_3;
                                 _loc37_ = _loc13_.name_3;
                                 if(_loc30_.var_77 < _loc37_.var_77)
                                 {
                                    _loc16_.var_77 = _loc30_.var_77;
                                 }
                                 else
                                 {
                                    _loc16_.var_77 = _loc37_.var_77;
                                 }
                                 if(_loc30_.var_78 < _loc37_.var_78)
                                 {
                                    _loc16_.var_78 = _loc30_.var_78;
                                 }
                                 else
                                 {
                                    _loc16_.var_78 = _loc37_.var_78;
                                 }
                                 if(_loc30_.var_79 > _loc37_.var_79)
                                 {
                                    _loc16_.var_79 = _loc30_.var_79;
                                 }
                                 else
                                 {
                                    _loc16_.var_79 = _loc37_.var_79;
                                 }
                                 if(_loc30_.var_80 > _loc37_.var_80)
                                 {
                                    _loc16_.var_80 = _loc30_.var_80;
                                 }
                                 else
                                 {
                                    _loc16_.var_80 = _loc37_.var_80;
                                 }
                                 _loc17_ = _loc10_.height;
                                 _loc18_ = _loc14_.height;
                                 _loc4_.height = 1 + (_loc17_ > _loc18_?_loc17_:_loc18_);
                                 _loc17_ = _loc4_.height;
                                 _loc18_ = _loc13_.height;
                                 _loc11_.height = 1 + (_loc17_ > _loc18_?_loc17_:_loc18_);
                              }
                              else
                              {
                                 _loc11_.child2 = _loc14_;
                                 _loc4_.child2 = _loc13_;
                                 _loc13_.parent = _loc4_;
                                 _loc16_ = _loc4_.name_3;
                                 _loc30_ = _loc10_.name_3;
                                 _loc37_ = _loc13_.name_3;
                                 if(_loc30_.var_77 < _loc37_.var_77)
                                 {
                                    _loc16_.var_77 = _loc30_.var_77;
                                 }
                                 else
                                 {
                                    _loc16_.var_77 = _loc37_.var_77;
                                 }
                                 if(_loc30_.var_78 < _loc37_.var_78)
                                 {
                                    _loc16_.var_78 = _loc30_.var_78;
                                 }
                                 else
                                 {
                                    _loc16_.var_78 = _loc37_.var_78;
                                 }
                                 if(_loc30_.var_79 > _loc37_.var_79)
                                 {
                                    _loc16_.var_79 = _loc30_.var_79;
                                 }
                                 else
                                 {
                                    _loc16_.var_79 = _loc37_.var_79;
                                 }
                                 if(_loc30_.var_80 > _loc37_.var_80)
                                 {
                                    _loc16_.var_80 = _loc30_.var_80;
                                 }
                                 else
                                 {
                                    _loc16_.var_80 = _loc37_.var_80;
                                 }
                                 _loc16_ = _loc11_.name_3;
                                 _loc30_ = _loc4_.name_3;
                                 _loc37_ = _loc14_.name_3;
                                 if(_loc30_.var_77 < _loc37_.var_77)
                                 {
                                    _loc16_.var_77 = _loc30_.var_77;
                                 }
                                 else
                                 {
                                    _loc16_.var_77 = _loc37_.var_77;
                                 }
                                 if(_loc30_.var_78 < _loc37_.var_78)
                                 {
                                    _loc16_.var_78 = _loc30_.var_78;
                                 }
                                 else
                                 {
                                    _loc16_.var_78 = _loc37_.var_78;
                                 }
                                 if(_loc30_.var_79 > _loc37_.var_79)
                                 {
                                    _loc16_.var_79 = _loc30_.var_79;
                                 }
                                 else
                                 {
                                    _loc16_.var_79 = _loc37_.var_79;
                                 }
                                 if(_loc30_.var_80 > _loc37_.var_80)
                                 {
                                    _loc16_.var_80 = _loc30_.var_80;
                                 }
                                 else
                                 {
                                    _loc16_.var_80 = _loc37_.var_80;
                                 }
                                 _loc17_ = _loc10_.height;
                                 _loc18_ = _loc13_.height;
                                 _loc4_.height = 1 + (_loc17_ > _loc18_?_loc17_:_loc18_);
                                 _loc17_ = _loc4_.height;
                                 _loc18_ = _loc14_.height;
                                 _loc11_.height = 1 + (_loc17_ > _loc18_?_loc17_:_loc18_);
                              }
                              _loc4_ = _loc11_;
                           }
                           else if(_loc12_ < -1)
                           {
                              _loc13_ = _loc10_.child1;
                              _loc14_ = _loc10_.child2;
                              _loc10_.child1 = _loc4_;
                              _loc10_.parent = _loc4_.parent;
                              _loc4_.parent = _loc10_;
                              if(_loc10_.parent != null)
                              {
                                 if(_loc10_.parent.child1 == _loc4_)
                                 {
                                    _loc10_.parent.child1 = _loc10_;
                                 }
                                 else
                                 {
                                    _loc10_.parent.child2 = _loc10_;
                                 }
                              }
                              else
                              {
                                 _loc3_.root = _loc10_;
                              }
                              if(_loc13_.height > _loc14_.height)
                              {
                                 _loc10_.child2 = _loc13_;
                                 _loc4_.child1 = _loc14_;
                                 _loc14_.parent = _loc4_;
                                 _loc16_ = _loc4_.name_3;
                                 _loc30_ = _loc11_.name_3;
                                 _loc37_ = _loc14_.name_3;
                                 if(_loc30_.var_77 < _loc37_.var_77)
                                 {
                                    _loc16_.var_77 = _loc30_.var_77;
                                 }
                                 else
                                 {
                                    _loc16_.var_77 = _loc37_.var_77;
                                 }
                                 if(_loc30_.var_78 < _loc37_.var_78)
                                 {
                                    _loc16_.var_78 = _loc30_.var_78;
                                 }
                                 else
                                 {
                                    _loc16_.var_78 = _loc37_.var_78;
                                 }
                                 if(_loc30_.var_79 > _loc37_.var_79)
                                 {
                                    _loc16_.var_79 = _loc30_.var_79;
                                 }
                                 else
                                 {
                                    _loc16_.var_79 = _loc37_.var_79;
                                 }
                                 if(_loc30_.var_80 > _loc37_.var_80)
                                 {
                                    _loc16_.var_80 = _loc30_.var_80;
                                 }
                                 else
                                 {
                                    _loc16_.var_80 = _loc37_.var_80;
                                 }
                                 _loc16_ = _loc10_.name_3;
                                 _loc30_ = _loc4_.name_3;
                                 _loc37_ = _loc13_.name_3;
                                 if(_loc30_.var_77 < _loc37_.var_77)
                                 {
                                    _loc16_.var_77 = _loc30_.var_77;
                                 }
                                 else
                                 {
                                    _loc16_.var_77 = _loc37_.var_77;
                                 }
                                 if(_loc30_.var_78 < _loc37_.var_78)
                                 {
                                    _loc16_.var_78 = _loc30_.var_78;
                                 }
                                 else
                                 {
                                    _loc16_.var_78 = _loc37_.var_78;
                                 }
                                 if(_loc30_.var_79 > _loc37_.var_79)
                                 {
                                    _loc16_.var_79 = _loc30_.var_79;
                                 }
                                 else
                                 {
                                    _loc16_.var_79 = _loc37_.var_79;
                                 }
                                 if(_loc30_.var_80 > _loc37_.var_80)
                                 {
                                    _loc16_.var_80 = _loc30_.var_80;
                                 }
                                 else
                                 {
                                    _loc16_.var_80 = _loc37_.var_80;
                                 }
                                 _loc17_ = _loc11_.height;
                                 _loc18_ = _loc14_.height;
                                 _loc4_.height = 1 + (_loc17_ > _loc18_?_loc17_:_loc18_);
                                 _loc17_ = _loc4_.height;
                                 _loc18_ = _loc13_.height;
                                 _loc10_.height = 1 + (_loc17_ > _loc18_?_loc17_:_loc18_);
                              }
                              else
                              {
                                 _loc10_.child2 = _loc14_;
                                 _loc4_.child1 = _loc13_;
                                 _loc13_.parent = _loc4_;
                                 _loc16_ = _loc4_.name_3;
                                 _loc30_ = _loc11_.name_3;
                                 _loc37_ = _loc13_.name_3;
                                 if(_loc30_.var_77 < _loc37_.var_77)
                                 {
                                    _loc16_.var_77 = _loc30_.var_77;
                                 }
                                 else
                                 {
                                    _loc16_.var_77 = _loc37_.var_77;
                                 }
                                 if(_loc30_.var_78 < _loc37_.var_78)
                                 {
                                    _loc16_.var_78 = _loc30_.var_78;
                                 }
                                 else
                                 {
                                    _loc16_.var_78 = _loc37_.var_78;
                                 }
                                 if(_loc30_.var_79 > _loc37_.var_79)
                                 {
                                    _loc16_.var_79 = _loc30_.var_79;
                                 }
                                 else
                                 {
                                    _loc16_.var_79 = _loc37_.var_79;
                                 }
                                 if(_loc30_.var_80 > _loc37_.var_80)
                                 {
                                    _loc16_.var_80 = _loc30_.var_80;
                                 }
                                 else
                                 {
                                    _loc16_.var_80 = _loc37_.var_80;
                                 }
                                 _loc16_ = _loc10_.name_3;
                                 _loc30_ = _loc4_.name_3;
                                 _loc37_ = _loc14_.name_3;
                                 if(_loc30_.var_77 < _loc37_.var_77)
                                 {
                                    _loc16_.var_77 = _loc30_.var_77;
                                 }
                                 else
                                 {
                                    _loc16_.var_77 = _loc37_.var_77;
                                 }
                                 if(_loc30_.var_78 < _loc37_.var_78)
                                 {
                                    _loc16_.var_78 = _loc30_.var_78;
                                 }
                                 else
                                 {
                                    _loc16_.var_78 = _loc37_.var_78;
                                 }
                                 if(_loc30_.var_79 > _loc37_.var_79)
                                 {
                                    _loc16_.var_79 = _loc30_.var_79;
                                 }
                                 else
                                 {
                                    _loc16_.var_79 = _loc37_.var_79;
                                 }
                                 if(_loc30_.var_80 > _loc37_.var_80)
                                 {
                                    _loc16_.var_80 = _loc30_.var_80;
                                 }
                                 else
                                 {
                                    _loc16_.var_80 = _loc37_.var_80;
                                 }
                                 _loc17_ = _loc11_.height;
                                 _loc18_ = _loc13_.height;
                                 _loc4_.height = 1 + (_loc17_ > _loc18_?_loc17_:_loc18_);
                                 _loc17_ = _loc4_.height;
                                 _loc18_ = _loc14_.height;
                                 _loc10_.height = 1 + (_loc17_ > _loc18_?_loc17_:_loc18_);
                              }
                              _loc4_ = _loc10_;
                           }
                           else
                           {
                              _loc4_ = _loc4_;
                           }
                        }
                        _loc10_ = _loc4_.child1;
                        _loc11_ = _loc4_.child2;
                        _loc12_ = int(_loc10_.height);
                        _loc17_ = _loc11_.height;
                        _loc4_.height = 1 + (_loc12_ > _loc17_?_loc12_:_loc17_);
                        _loc16_ = _loc4_.name_3;
                        _loc30_ = _loc10_.name_3;
                        _loc37_ = _loc11_.name_3;
                        if(_loc30_.var_77 < _loc37_.var_77)
                        {
                           _loc16_.var_77 = _loc30_.var_77;
                        }
                        else
                        {
                           _loc16_.var_77 = _loc37_.var_77;
                        }
                        if(_loc30_.var_78 < _loc37_.var_78)
                        {
                           _loc16_.var_78 = _loc30_.var_78;
                        }
                        else
                        {
                           _loc16_.var_78 = _loc37_.var_78;
                        }
                        if(_loc30_.var_79 > _loc37_.var_79)
                        {
                           _loc16_.var_79 = _loc30_.var_79;
                        }
                        else
                        {
                           _loc16_.var_79 = _loc37_.var_79;
                        }
                        if(_loc30_.var_80 > _loc37_.var_80)
                        {
                           _loc16_.var_80 = _loc30_.var_80;
                        }
                        else
                        {
                           _loc16_.var_80 = _loc37_.var_80;
                        }
                        _loc4_ = _loc4_.parent;
                     }
                  }
                  _loc1_.var_426 = false;
                  _loc1_.var_407 = true;
                  _loc1_.var_294 = _loc1_.var_275;
                  _loc1_.var_275 = null;
                  _loc1_ = _loc1_.var_294;
               }
               _loc4_ = var_202;
               var_202 = var_227;
               var_227 = _loc4_;
            }
            else
            {
               while(var_202 != null)
               {
                  _loc4_ = var_202;
                  var_202 = _loc4_.var_275;
                  _loc4_.var_275 = null;
                  _loc1_ = _loc4_;
                  _loc2_ = _loc1_.name_7;
                  if(!_loc1_.var_374)
                  {
                     if(_loc1_.var_451)
                     {
                        _loc3_ = var_152;
                     }
                     else
                     {
                        _loc3_ = var_151;
                     }
                     if(_loc1_ == _loc3_.root)
                     {
                        _loc3_.root = null;
                        null;
                     }
                     else
                     {
                        _loc4_ = _loc1_.parent;
                        _loc5_ = _loc4_.parent;
                        if(_loc4_.child1 == _loc1_)
                        {
                           _loc6_ = _loc4_.child2;
                        }
                        else
                        {
                           _loc6_ = _loc4_.child1;
                        }
                        if(_loc5_ != null)
                        {
                           if(_loc5_.child1 == _loc4_)
                           {
                              _loc5_.child1 = _loc6_;
                           }
                           else
                           {
                              _loc5_.child2 = _loc6_;
                           }
                           _loc6_.parent = _loc5_;
                           _loc7_ = _loc4_;
                           _loc7_.height = -1;
                           _loc8_ = _loc7_.name_3;
                           if(_loc8_.outer != null)
                           {
                              _loc8_.outer.zpp_inner = null;
                              _loc8_.outer = null;
                           }
                           _loc9_ = null;
                           _loc8_.var_239 = _loc9_;
                           _loc8_.var_238 = _loc9_;
                           _loc8_._invalidate = null;
                           _loc8_._validate = null;
                           _loc8_.next = ZPP_AABB.var_72;
                           ZPP_AABB.var_72 = _loc8_;
                           _loc10_ = null;
                           _loc7_.parent = _loc10_;
                           _loc10_ = _loc10_;
                           _loc7_.child2 = _loc10_;
                           _loc7_.child1 = _loc10_;
                           _loc7_.next = null;
                           _loc7_.var_275 = null;
                           _loc7_.var_294 = null;
                           _loc7_.next = ZPP_AABBNode.var_72;
                           ZPP_AABBNode.var_72 = _loc7_;
                           _loc7_ = _loc5_;
                           while(_loc7_ != null)
                           {
                              if(_loc7_.child1 == null || _loc7_.height < 2)
                              {
                                 _loc7_ = _loc7_;
                              }
                              else
                              {
                                 _loc10_ = _loc7_.child1;
                                 _loc11_ = _loc7_.child2;
                                 _loc12_ = _loc11_.height - _loc10_.height;
                                 if(_loc12_ > 1)
                                 {
                                    _loc13_ = _loc11_.child1;
                                    _loc14_ = _loc11_.child2;
                                    _loc11_.child1 = _loc7_;
                                    _loc11_.parent = _loc7_.parent;
                                    _loc7_.parent = _loc11_;
                                    if(_loc11_.parent != null)
                                    {
                                       if(_loc11_.parent.child1 == _loc7_)
                                       {
                                          _loc11_.parent.child1 = _loc11_;
                                       }
                                       else
                                       {
                                          _loc11_.parent.child2 = _loc11_;
                                       }
                                    }
                                    else
                                    {
                                       _loc3_.root = _loc11_;
                                    }
                                    if(_loc13_.height > _loc14_.height)
                                    {
                                       _loc11_.child2 = _loc13_;
                                       _loc7_.child2 = _loc14_;
                                       _loc14_.parent = _loc7_;
                                       _loc8_ = _loc7_.name_3;
                                       _loc15_ = _loc10_.name_3;
                                       _loc16_ = _loc14_.name_3;
                                       if(_loc15_.var_77 < _loc16_.var_77)
                                       {
                                          _loc8_.var_77 = _loc15_.var_77;
                                       }
                                       else
                                       {
                                          _loc8_.var_77 = _loc16_.var_77;
                                       }
                                       if(_loc15_.var_78 < _loc16_.var_78)
                                       {
                                          _loc8_.var_78 = _loc15_.var_78;
                                       }
                                       else
                                       {
                                          _loc8_.var_78 = _loc16_.var_78;
                                       }
                                       if(_loc15_.var_79 > _loc16_.var_79)
                                       {
                                          _loc8_.var_79 = _loc15_.var_79;
                                       }
                                       else
                                       {
                                          _loc8_.var_79 = _loc16_.var_79;
                                       }
                                       if(_loc15_.var_80 > _loc16_.var_80)
                                       {
                                          _loc8_.var_80 = _loc15_.var_80;
                                       }
                                       else
                                       {
                                          _loc8_.var_80 = _loc16_.var_80;
                                       }
                                       _loc8_ = _loc11_.name_3;
                                       _loc15_ = _loc7_.name_3;
                                       _loc16_ = _loc13_.name_3;
                                       if(_loc15_.var_77 < _loc16_.var_77)
                                       {
                                          _loc8_.var_77 = _loc15_.var_77;
                                       }
                                       else
                                       {
                                          _loc8_.var_77 = _loc16_.var_77;
                                       }
                                       if(_loc15_.var_78 < _loc16_.var_78)
                                       {
                                          _loc8_.var_78 = _loc15_.var_78;
                                       }
                                       else
                                       {
                                          _loc8_.var_78 = _loc16_.var_78;
                                       }
                                       if(_loc15_.var_79 > _loc16_.var_79)
                                       {
                                          _loc8_.var_79 = _loc15_.var_79;
                                       }
                                       else
                                       {
                                          _loc8_.var_79 = _loc16_.var_79;
                                       }
                                       if(_loc15_.var_80 > _loc16_.var_80)
                                       {
                                          _loc8_.var_80 = _loc15_.var_80;
                                       }
                                       else
                                       {
                                          _loc8_.var_80 = _loc16_.var_80;
                                       }
                                       _loc17_ = _loc10_.height;
                                       _loc18_ = _loc14_.height;
                                       _loc7_.height = 1 + (_loc17_ > _loc18_?_loc17_:_loc18_);
                                       _loc17_ = _loc7_.height;
                                       _loc18_ = _loc13_.height;
                                       _loc11_.height = 1 + (_loc17_ > _loc18_?_loc17_:_loc18_);
                                    }
                                    else
                                    {
                                       _loc11_.child2 = _loc14_;
                                       _loc7_.child2 = _loc13_;
                                       _loc13_.parent = _loc7_;
                                       _loc8_ = _loc7_.name_3;
                                       _loc15_ = _loc10_.name_3;
                                       _loc16_ = _loc13_.name_3;
                                       if(_loc15_.var_77 < _loc16_.var_77)
                                       {
                                          _loc8_.var_77 = _loc15_.var_77;
                                       }
                                       else
                                       {
                                          _loc8_.var_77 = _loc16_.var_77;
                                       }
                                       if(_loc15_.var_78 < _loc16_.var_78)
                                       {
                                          _loc8_.var_78 = _loc15_.var_78;
                                       }
                                       else
                                       {
                                          _loc8_.var_78 = _loc16_.var_78;
                                       }
                                       if(_loc15_.var_79 > _loc16_.var_79)
                                       {
                                          _loc8_.var_79 = _loc15_.var_79;
                                       }
                                       else
                                       {
                                          _loc8_.var_79 = _loc16_.var_79;
                                       }
                                       if(_loc15_.var_80 > _loc16_.var_80)
                                       {
                                          _loc8_.var_80 = _loc15_.var_80;
                                       }
                                       else
                                       {
                                          _loc8_.var_80 = _loc16_.var_80;
                                       }
                                       _loc8_ = _loc11_.name_3;
                                       _loc15_ = _loc7_.name_3;
                                       _loc16_ = _loc14_.name_3;
                                       if(_loc15_.var_77 < _loc16_.var_77)
                                       {
                                          _loc8_.var_77 = _loc15_.var_77;
                                       }
                                       else
                                       {
                                          _loc8_.var_77 = _loc16_.var_77;
                                       }
                                       if(_loc15_.var_78 < _loc16_.var_78)
                                       {
                                          _loc8_.var_78 = _loc15_.var_78;
                                       }
                                       else
                                       {
                                          _loc8_.var_78 = _loc16_.var_78;
                                       }
                                       if(_loc15_.var_79 > _loc16_.var_79)
                                       {
                                          _loc8_.var_79 = _loc15_.var_79;
                                       }
                                       else
                                       {
                                          _loc8_.var_79 = _loc16_.var_79;
                                       }
                                       if(_loc15_.var_80 > _loc16_.var_80)
                                       {
                                          _loc8_.var_80 = _loc15_.var_80;
                                       }
                                       else
                                       {
                                          _loc8_.var_80 = _loc16_.var_80;
                                       }
                                       _loc17_ = _loc10_.height;
                                       _loc18_ = _loc13_.height;
                                       _loc7_.height = 1 + (_loc17_ > _loc18_?_loc17_:_loc18_);
                                       _loc17_ = _loc7_.height;
                                       _loc18_ = _loc14_.height;
                                       _loc11_.height = 1 + (_loc17_ > _loc18_?_loc17_:_loc18_);
                                    }
                                    _loc7_ = _loc11_;
                                 }
                                 else if(_loc12_ < -1)
                                 {
                                    _loc13_ = _loc10_.child1;
                                    _loc14_ = _loc10_.child2;
                                    _loc10_.child1 = _loc7_;
                                    _loc10_.parent = _loc7_.parent;
                                    _loc7_.parent = _loc10_;
                                    if(_loc10_.parent != null)
                                    {
                                       if(_loc10_.parent.child1 == _loc7_)
                                       {
                                          _loc10_.parent.child1 = _loc10_;
                                       }
                                       else
                                       {
                                          _loc10_.parent.child2 = _loc10_;
                                       }
                                    }
                                    else
                                    {
                                       _loc3_.root = _loc10_;
                                    }
                                    if(_loc13_.height > _loc14_.height)
                                    {
                                       _loc10_.child2 = _loc13_;
                                       _loc7_.child1 = _loc14_;
                                       _loc14_.parent = _loc7_;
                                       _loc8_ = _loc7_.name_3;
                                       _loc15_ = _loc11_.name_3;
                                       _loc16_ = _loc14_.name_3;
                                       if(_loc15_.var_77 < _loc16_.var_77)
                                       {
                                          _loc8_.var_77 = _loc15_.var_77;
                                       }
                                       else
                                       {
                                          _loc8_.var_77 = _loc16_.var_77;
                                       }
                                       if(_loc15_.var_78 < _loc16_.var_78)
                                       {
                                          _loc8_.var_78 = _loc15_.var_78;
                                       }
                                       else
                                       {
                                          _loc8_.var_78 = _loc16_.var_78;
                                       }
                                       if(_loc15_.var_79 > _loc16_.var_79)
                                       {
                                          _loc8_.var_79 = _loc15_.var_79;
                                       }
                                       else
                                       {
                                          _loc8_.var_79 = _loc16_.var_79;
                                       }
                                       if(_loc15_.var_80 > _loc16_.var_80)
                                       {
                                          _loc8_.var_80 = _loc15_.var_80;
                                       }
                                       else
                                       {
                                          _loc8_.var_80 = _loc16_.var_80;
                                       }
                                       _loc8_ = _loc10_.name_3;
                                       _loc15_ = _loc7_.name_3;
                                       _loc16_ = _loc13_.name_3;
                                       if(_loc15_.var_77 < _loc16_.var_77)
                                       {
                                          _loc8_.var_77 = _loc15_.var_77;
                                       }
                                       else
                                       {
                                          _loc8_.var_77 = _loc16_.var_77;
                                       }
                                       if(_loc15_.var_78 < _loc16_.var_78)
                                       {
                                          _loc8_.var_78 = _loc15_.var_78;
                                       }
                                       else
                                       {
                                          _loc8_.var_78 = _loc16_.var_78;
                                       }
                                       if(_loc15_.var_79 > _loc16_.var_79)
                                       {
                                          _loc8_.var_79 = _loc15_.var_79;
                                       }
                                       else
                                       {
                                          _loc8_.var_79 = _loc16_.var_79;
                                       }
                                       if(_loc15_.var_80 > _loc16_.var_80)
                                       {
                                          _loc8_.var_80 = _loc15_.var_80;
                                       }
                                       else
                                       {
                                          _loc8_.var_80 = _loc16_.var_80;
                                       }
                                       _loc17_ = _loc11_.height;
                                       _loc18_ = _loc14_.height;
                                       _loc7_.height = 1 + (_loc17_ > _loc18_?_loc17_:_loc18_);
                                       _loc17_ = _loc7_.height;
                                       _loc18_ = _loc13_.height;
                                       _loc10_.height = 1 + (_loc17_ > _loc18_?_loc17_:_loc18_);
                                    }
                                    else
                                    {
                                       _loc10_.child2 = _loc14_;
                                       _loc7_.child1 = _loc13_;
                                       _loc13_.parent = _loc7_;
                                       _loc8_ = _loc7_.name_3;
                                       _loc15_ = _loc11_.name_3;
                                       _loc16_ = _loc13_.name_3;
                                       if(_loc15_.var_77 < _loc16_.var_77)
                                       {
                                          _loc8_.var_77 = _loc15_.var_77;
                                       }
                                       else
                                       {
                                          _loc8_.var_77 = _loc16_.var_77;
                                       }
                                       if(_loc15_.var_78 < _loc16_.var_78)
                                       {
                                          _loc8_.var_78 = _loc15_.var_78;
                                       }
                                       else
                                       {
                                          _loc8_.var_78 = _loc16_.var_78;
                                       }
                                       if(_loc15_.var_79 > _loc16_.var_79)
                                       {
                                          _loc8_.var_79 = _loc15_.var_79;
                                       }
                                       else
                                       {
                                          _loc8_.var_79 = _loc16_.var_79;
                                       }
                                       if(_loc15_.var_80 > _loc16_.var_80)
                                       {
                                          _loc8_.var_80 = _loc15_.var_80;
                                       }
                                       else
                                       {
                                          _loc8_.var_80 = _loc16_.var_80;
                                       }
                                       _loc8_ = _loc10_.name_3;
                                       _loc15_ = _loc7_.name_3;
                                       _loc16_ = _loc14_.name_3;
                                       if(_loc15_.var_77 < _loc16_.var_77)
                                       {
                                          _loc8_.var_77 = _loc15_.var_77;
                                       }
                                       else
                                       {
                                          _loc8_.var_77 = _loc16_.var_77;
                                       }
                                       if(_loc15_.var_78 < _loc16_.var_78)
                                       {
                                          _loc8_.var_78 = _loc15_.var_78;
                                       }
                                       else
                                       {
                                          _loc8_.var_78 = _loc16_.var_78;
                                       }
                                       if(_loc15_.var_79 > _loc16_.var_79)
                                       {
                                          _loc8_.var_79 = _loc15_.var_79;
                                       }
                                       else
                                       {
                                          _loc8_.var_79 = _loc16_.var_79;
                                       }
                                       if(_loc15_.var_80 > _loc16_.var_80)
                                       {
                                          _loc8_.var_80 = _loc15_.var_80;
                                       }
                                       else
                                       {
                                          _loc8_.var_80 = _loc16_.var_80;
                                       }
                                       _loc17_ = _loc11_.height;
                                       _loc18_ = _loc13_.height;
                                       _loc7_.height = 1 + (_loc17_ > _loc18_?_loc17_:_loc18_);
                                       _loc17_ = _loc7_.height;
                                       _loc18_ = _loc14_.height;
                                       _loc10_.height = 1 + (_loc17_ > _loc18_?_loc17_:_loc18_);
                                    }
                                    _loc7_ = _loc10_;
                                 }
                                 else
                                 {
                                    _loc7_ = _loc7_;
                                 }
                              }
                              _loc10_ = _loc7_.child1;
                              _loc11_ = _loc7_.child2;
                              _loc8_ = _loc7_.name_3;
                              _loc15_ = _loc10_.name_3;
                              _loc16_ = _loc11_.name_3;
                              if(_loc15_.var_77 < _loc16_.var_77)
                              {
                                 _loc8_.var_77 = _loc15_.var_77;
                              }
                              else
                              {
                                 _loc8_.var_77 = _loc16_.var_77;
                              }
                              if(_loc15_.var_78 < _loc16_.var_78)
                              {
                                 _loc8_.var_78 = _loc15_.var_78;
                              }
                              else
                              {
                                 _loc8_.var_78 = _loc16_.var_78;
                              }
                              if(_loc15_.var_79 > _loc16_.var_79)
                              {
                                 _loc8_.var_79 = _loc15_.var_79;
                              }
                              else
                              {
                                 _loc8_.var_79 = _loc16_.var_79;
                              }
                              if(_loc15_.var_80 > _loc16_.var_80)
                              {
                                 _loc8_.var_80 = _loc15_.var_80;
                              }
                              else
                              {
                                 _loc8_.var_80 = _loc16_.var_80;
                              }
                              _loc12_ = int(_loc10_.height);
                              _loc17_ = _loc11_.height;
                              _loc7_.height = 1 + (_loc12_ > _loc17_?_loc12_:_loc17_);
                              _loc7_ = _loc7_.parent;
                           }
                        }
                        else
                        {
                           _loc3_.root = _loc6_;
                           _loc6_.parent = null;
                           _loc7_ = _loc4_;
                           _loc7_.height = -1;
                           _loc8_ = _loc7_.name_3;
                           if(_loc8_.outer != null)
                           {
                              _loc8_.outer.zpp_inner = null;
                              _loc8_.outer = null;
                           }
                           _loc9_ = null;
                           _loc8_.var_239 = _loc9_;
                           _loc8_.var_238 = _loc9_;
                           _loc8_._invalidate = null;
                           _loc8_._validate = null;
                           _loc8_.next = ZPP_AABB.var_72;
                           ZPP_AABB.var_72 = _loc8_;
                           _loc10_ = null;
                           _loc7_.parent = _loc10_;
                           _loc10_ = _loc10_;
                           _loc7_.child2 = _loc10_;
                           _loc7_.child1 = _loc10_;
                           _loc7_.next = null;
                           _loc7_.var_275 = null;
                           _loc7_.var_294 = null;
                           _loc7_.next = ZPP_AABBNode.var_72;
                           ZPP_AABBNode.var_72 = _loc7_;
                        }
                     }
                  }
                  else
                  {
                     _loc1_.var_374 = false;
                  }
                  _loc8_ = _loc1_.name_3;
                  if(!space.var_371)
                  {
                     if(_loc2_.var_149)
                     {
                        if(_loc2_.body != null)
                        {
                           _loc2_.var_149 = false;
                           if(_loc2_.type == class_223.var_131)
                           {
                              _loc19_ = _loc2_.var_102;
                              if(_loc19_.var_139)
                              {
                                 if(_loc19_.body != null)
                                 {
                                    _loc19_.var_139 = false;
                                    if(_loc19_.var_140)
                                    {
                                       _loc19_.var_140 = false;
                                       if(_loc19_.type == class_223.var_155)
                                       {
                                          _loc20_ = _loc19_.name_6;
                                          if(_loc20_.var_88.next.next == null)
                                          {
                                             _loc20_.var_82 = _loc20_.var_88.next.x;
                                             _loc20_.var_81 = _loc20_.var_88.next.y;
                                             null;
                                          }
                                          else if(_loc20_.var_88.next.next.next == null)
                                          {
                                             _loc20_.var_82 = _loc20_.var_88.next.x;
                                             _loc20_.var_81 = _loc20_.var_88.next.y;
                                             _loc21_ = 1;
                                             _loc20_.var_82 = Number(_loc20_.var_82 + _loc20_.var_88.next.next.x * _loc21_);
                                             _loc20_.var_81 = Number(_loc20_.var_81 + _loc20_.var_88.next.next.y * _loc21_);
                                             _loc21_ = 0.5;
                                             _loc20_.var_82 = _loc20_.var_82 * _loc21_;
                                             _loc20_.var_81 = _loc20_.var_81 * _loc21_;
                                          }
                                          else
                                          {
                                             _loc20_.var_82 = 0;
                                             _loc20_.var_81 = 0;
                                             _loc21_ = 0;
                                             _loc22_ = _loc20_.var_88.next;
                                             _loc23_ = _loc22_;
                                             _loc22_ = _loc22_.next;
                                             _loc24_ = _loc22_;
                                             _loc22_ = _loc22_.next;
                                             while(_loc22_ != null)
                                             {
                                                _loc25_ = _loc22_;
                                                _loc21_ = Number(Number(_loc21_ + _loc24_.x * (_loc25_.y - _loc23_.y)));
                                                _loc26_ = _loc25_.y * _loc24_.x - _loc25_.x * _loc24_.y;
                                                _loc20_.var_82 = Number(_loc20_.var_82 + (_loc24_.x + _loc25_.x) * _loc26_);
                                                _loc20_.var_81 = Number(_loc20_.var_81 + (_loc24_.y + _loc25_.y) * _loc26_);
                                                _loc23_ = _loc24_;
                                                _loc24_ = _loc25_;
                                                _loc22_ = _loc22_.next;
                                             }
                                             _loc22_ = _loc20_.var_88.next;
                                             _loc25_ = _loc22_;
                                             _loc21_ = Number(Number(_loc21_ + _loc24_.x * (_loc25_.y - _loc23_.y)));
                                             _loc26_ = _loc25_.y * _loc24_.x - _loc25_.x * _loc24_.y;
                                             _loc20_.var_82 = Number(_loc20_.var_82 + (_loc24_.x + _loc25_.x) * _loc26_);
                                             _loc20_.var_81 = Number(_loc20_.var_81 + (_loc24_.y + _loc25_.y) * _loc26_);
                                             _loc23_ = _loc24_;
                                             _loc24_ = _loc25_;
                                             _loc22_ = _loc22_.next;
                                             _loc27_ = _loc22_;
                                             _loc21_ = Number(Number(_loc21_ + _loc24_.x * (_loc27_.y - _loc23_.y)));
                                             _loc26_ = _loc27_.y * _loc24_.x - _loc27_.x * _loc24_.y;
                                             _loc20_.var_82 = Number(_loc20_.var_82 + (_loc24_.x + _loc27_.x) * _loc26_);
                                             _loc20_.var_81 = Number(_loc20_.var_81 + (_loc24_.y + _loc27_.y) * _loc26_);
                                             _loc21_ = Number(1 / (3 * _loc21_));
                                             _loc26_ = _loc21_;
                                             _loc20_.var_82 = _loc20_.var_82 * _loc26_;
                                             _loc20_.var_81 = _loc20_.var_81 * _loc26_;
                                          }
                                       }
                                       if(_loc19_.var_115 != null)
                                       {
                                          _loc19_.var_115.zpp_inner.x = _loc19_.var_82;
                                          _loc19_.var_115.zpp_inner.y = _loc19_.var_81;
                                       }
                                    }
                                    _loc28_ = _loc19_.body;
                                    if(_loc28_.var_113)
                                    {
                                       _loc28_.var_113 = false;
                                       _loc28_.var_84 = Number(Math.sin(_loc28_.var_93));
                                       _loc28_.var_83 = Number(Math.cos(_loc28_.var_93));
                                       null;
                                    }
                                    _loc19_.var_99 = Number(_loc19_.body.var_95 + (_loc19_.body.var_83 * _loc19_.var_82 - _loc19_.body.var_84 * _loc19_.var_81));
                                    _loc19_.var_100 = Number(_loc19_.body.var_96 + (Number(_loc19_.var_82 * _loc19_.body.var_84 + _loc19_.var_81 * _loc19_.body.var_83)));
                                 }
                              }
                              _loc21_ = Number(_loc19_.radius);
                              _loc26_ = _loc19_.radius;
                              _loc19_.name_3.var_77 = _loc19_.var_99 - _loc21_;
                              _loc19_.name_3.var_78 = _loc19_.var_100 - _loc26_;
                              _loc19_.name_3.var_79 = Number(_loc19_.var_99 + _loc21_);
                              _loc19_.name_3.var_80 = Number(_loc19_.var_100 + _loc26_);
                           }
                           else
                           {
                              _loc20_ = _loc2_.name_6;
                              if(_loc20_.var_153)
                              {
                                 if(_loc20_.body != null)
                                 {
                                    _loc20_.var_153 = false;
                                    _loc20_.method_116();
                                    _loc28_ = _loc20_.body;
                                    if(_loc28_.var_113)
                                    {
                                       _loc28_.var_113 = false;
                                       _loc28_.var_84 = Number(Math.sin(_loc28_.var_93));
                                       _loc28_.var_83 = Number(Math.cos(_loc28_.var_93));
                                       null;
                                    }
                                    _loc22_ = _loc20_.var_88.next;
                                    _loc23_ = _loc20_.var_107.next;
                                    while(_loc23_ != null)
                                    {
                                       _loc24_ = _loc23_;
                                       _loc25_ = _loc22_;
                                       _loc22_ = _loc22_.next;
                                       _loc24_.x = Number(_loc20_.body.var_95 + (_loc20_.body.var_83 * _loc25_.x - _loc20_.body.var_84 * _loc25_.y));
                                       _loc24_.y = Number(_loc20_.body.var_96 + (Number(_loc25_.x * _loc20_.body.var_84 + _loc25_.y * _loc20_.body.var_83)));
                                       _loc23_ = _loc23_.next;
                                    }
                                 }
                              }
                              _loc22_ = _loc20_.var_107.next;
                              _loc20_.name_3.var_77 = _loc22_.x;
                              _loc20_.name_3.var_78 = _loc22_.y;
                              _loc20_.name_3.var_79 = _loc22_.x;
                              _loc20_.name_3.var_80 = _loc22_.y;
                              _loc23_ = _loc20_.var_107.next.next;
                              while(_loc23_ != null)
                              {
                                 _loc24_ = _loc23_;
                                 if(_loc24_.x < _loc20_.name_3.var_77)
                                 {
                                    _loc20_.name_3.var_77 = _loc24_.x;
                                 }
                                 if(_loc24_.x > _loc20_.name_3.var_79)
                                 {
                                    _loc20_.name_3.var_79 = _loc24_.x;
                                 }
                                 if(_loc24_.y < _loc20_.name_3.var_78)
                                 {
                                    _loc20_.name_3.var_78 = _loc24_.y;
                                 }
                                 if(_loc24_.y > _loc20_.name_3.var_80)
                                 {
                                    _loc20_.name_3.var_80 = _loc24_.y;
                                 }
                                 _loc23_ = _loc23_.next;
                              }
                           }
                        }
                     }
                  }
                  _loc15_ = _loc2_.name_3;
                  _loc8_.var_77 = _loc15_.var_77 - 3;
                  _loc8_.var_78 = _loc15_.var_78 - 3;
                  _loc8_.var_79 = Number(_loc15_.var_79 + 3);
                  _loc8_.var_80 = Number(_loc15_.var_80 + 3);
                  if(_loc2_.body.type == class_223.var_240)
                  {
                     _loc29_ = false;
                     _loc1_.var_451 = _loc29_;
                     §§push(_loc29_);
                  }
                  else
                  {
                     _loc29_ = !_loc2_.body.var_112.var_129;
                     _loc1_.var_451 = _loc29_;
                     §§push(_loc29_);
                  }
                  if(§§pop())
                  {
                     _loc3_ = var_152;
                  }
                  else
                  {
                     _loc3_ = var_151;
                  }
                  if(_loc3_.root == null)
                  {
                     _loc3_.root = _loc1_;
                     _loc3_.root.parent = null;
                  }
                  else
                  {
                     _loc15_ = _loc1_.name_3;
                     _loc4_ = _loc3_.root;
                     while(_loc4_.child1 != null)
                     {
                        _loc5_ = _loc4_.child1;
                        _loc6_ = _loc4_.child2;
                        _loc16_ = _loc4_.name_3;
                        _loc21_ = Number((_loc16_.var_79 - _loc16_.var_77 + (_loc16_.var_80 - _loc16_.var_78)) * 2);
                        _loc16_ = class_338.var_250;
                        _loc30_ = _loc4_.name_3;
                        if(_loc30_.var_77 < _loc15_.var_77)
                        {
                           _loc16_.var_77 = _loc30_.var_77;
                        }
                        else
                        {
                           _loc16_.var_77 = _loc15_.var_77;
                        }
                        if(_loc30_.var_78 < _loc15_.var_78)
                        {
                           _loc16_.var_78 = _loc30_.var_78;
                        }
                        else
                        {
                           _loc16_.var_78 = _loc15_.var_78;
                        }
                        if(_loc30_.var_79 > _loc15_.var_79)
                        {
                           _loc16_.var_79 = _loc30_.var_79;
                        }
                        else
                        {
                           _loc16_.var_79 = _loc15_.var_79;
                        }
                        if(_loc30_.var_80 > _loc15_.var_80)
                        {
                           _loc16_.var_80 = _loc30_.var_80;
                        }
                        else
                        {
                           _loc16_.var_80 = _loc15_.var_80;
                        }
                        _loc16_ = class_338.var_250;
                        _loc26_ = (_loc16_.var_79 - _loc16_.var_77 + (_loc16_.var_80 - _loc16_.var_78)) * 2;
                        _loc31_ = 2 * _loc26_;
                        _loc32_ = 2 * (_loc26_ - _loc21_);
                        _loc16_ = class_338.var_250;
                        _loc30_ = _loc5_.name_3;
                        if(_loc15_.var_77 < _loc30_.var_77)
                        {
                           _loc16_.var_77 = _loc15_.var_77;
                        }
                        else
                        {
                           _loc16_.var_77 = _loc30_.var_77;
                        }
                        if(_loc15_.var_78 < _loc30_.var_78)
                        {
                           _loc16_.var_78 = _loc15_.var_78;
                        }
                        else
                        {
                           _loc16_.var_78 = _loc30_.var_78;
                        }
                        if(_loc15_.var_79 > _loc30_.var_79)
                        {
                           _loc16_.var_79 = _loc15_.var_79;
                        }
                        else
                        {
                           _loc16_.var_79 = _loc30_.var_79;
                        }
                        if(_loc15_.var_80 > _loc30_.var_80)
                        {
                           _loc16_.var_80 = _loc15_.var_80;
                        }
                        else
                        {
                           _loc16_.var_80 = _loc30_.var_80;
                        }
                        if(_loc5_.child1 == null)
                        {
                           _loc16_ = class_338.var_250;
                           _loc33_ = Number((_loc16_.var_79 - _loc16_.var_77 + (_loc16_.var_80 - _loc16_.var_78)) * 2 + _loc32_);
                        }
                        else
                        {
                           _loc16_ = _loc5_.name_3;
                           _loc34_ = (_loc16_.var_79 - _loc16_.var_77 + (_loc16_.var_80 - _loc16_.var_78)) * 2;
                           _loc16_ = class_338.var_250;
                           _loc35_ = (_loc16_.var_79 - _loc16_.var_77 + (_loc16_.var_80 - _loc16_.var_78)) * 2;
                           _loc33_ = Number(_loc35_ - _loc34_ + _loc32_);
                        }
                        _loc16_ = class_338.var_250;
                        _loc30_ = _loc6_.name_3;
                        if(_loc15_.var_77 < _loc30_.var_77)
                        {
                           _loc16_.var_77 = _loc15_.var_77;
                        }
                        else
                        {
                           _loc16_.var_77 = _loc30_.var_77;
                        }
                        if(_loc15_.var_78 < _loc30_.var_78)
                        {
                           _loc16_.var_78 = _loc15_.var_78;
                        }
                        else
                        {
                           _loc16_.var_78 = _loc30_.var_78;
                        }
                        if(_loc15_.var_79 > _loc30_.var_79)
                        {
                           _loc16_.var_79 = _loc15_.var_79;
                        }
                        else
                        {
                           _loc16_.var_79 = _loc30_.var_79;
                        }
                        if(_loc15_.var_80 > _loc30_.var_80)
                        {
                           _loc16_.var_80 = _loc15_.var_80;
                        }
                        else
                        {
                           _loc16_.var_80 = _loc30_.var_80;
                        }
                        if(_loc6_.child1 == null)
                        {
                           _loc16_ = class_338.var_250;
                           _loc34_ = Number((_loc16_.var_79 - _loc16_.var_77 + (_loc16_.var_80 - _loc16_.var_78)) * 2 + _loc32_);
                        }
                        else
                        {
                           _loc16_ = _loc6_.name_3;
                           _loc35_ = (_loc16_.var_79 - _loc16_.var_77 + (_loc16_.var_80 - _loc16_.var_78)) * 2;
                           _loc16_ = class_338.var_250;
                           _loc36_ = (_loc16_.var_79 - _loc16_.var_77 + (_loc16_.var_80 - _loc16_.var_78)) * 2;
                           _loc34_ = Number(_loc36_ - _loc35_ + _loc32_);
                        }
                        if(_loc31_ < _loc33_ && _loc31_ < _loc34_)
                        {
                           break;
                        }
                        if(_loc33_ < _loc34_)
                        {
                           _loc4_ = _loc5_;
                        }
                        else
                        {
                           _loc4_ = _loc6_;
                        }
                     }
                     _loc5_ = _loc4_;
                     _loc6_ = _loc5_.parent;
                     if(ZPP_AABBNode.var_72 == null)
                     {
                        _loc7_ = new ZPP_AABBNode();
                     }
                     else
                     {
                        _loc7_ = ZPP_AABBNode.var_72;
                        ZPP_AABBNode.var_72 = _loc7_.next;
                        _loc7_.next = null;
                     }
                     if(ZPP_AABB.var_72 == null)
                     {
                        _loc7_.name_3 = new ZPP_AABB();
                     }
                     else
                     {
                        _loc7_.name_3 = ZPP_AABB.var_72;
                        ZPP_AABB.var_72 = _loc7_.name_3.next;
                        _loc7_.name_3.next = null;
                     }
                     null;
                     _loc7_.var_407 = false;
                     _loc7_.var_426 = false;
                     _loc7_.var_374 = false;
                     _loc7_.parent = _loc6_;
                     _loc16_ = _loc7_.name_3;
                     _loc30_ = _loc5_.name_3;
                     if(_loc15_.var_77 < _loc30_.var_77)
                     {
                        _loc16_.var_77 = _loc15_.var_77;
                     }
                     else
                     {
                        _loc16_.var_77 = _loc30_.var_77;
                     }
                     if(_loc15_.var_78 < _loc30_.var_78)
                     {
                        _loc16_.var_78 = _loc15_.var_78;
                     }
                     else
                     {
                        _loc16_.var_78 = _loc30_.var_78;
                     }
                     if(_loc15_.var_79 > _loc30_.var_79)
                     {
                        _loc16_.var_79 = _loc15_.var_79;
                     }
                     else
                     {
                        _loc16_.var_79 = _loc30_.var_79;
                     }
                     if(_loc15_.var_80 > _loc30_.var_80)
                     {
                        _loc16_.var_80 = _loc15_.var_80;
                     }
                     else
                     {
                        _loc16_.var_80 = _loc30_.var_80;
                     }
                     _loc7_.height = _loc5_.height + 1;
                     if(_loc6_ != null)
                     {
                        if(_loc6_.child1 == _loc5_)
                        {
                           _loc6_.child1 = _loc7_;
                        }
                        else
                        {
                           _loc6_.child2 = _loc7_;
                        }
                        _loc7_.child1 = _loc5_;
                        _loc7_.child2 = _loc1_;
                        _loc5_.parent = _loc7_;
                        _loc1_.parent = _loc7_;
                     }
                     else
                     {
                        _loc7_.child1 = _loc5_;
                        _loc7_.child2 = _loc1_;
                        _loc5_.parent = _loc7_;
                        _loc1_.parent = _loc7_;
                        _loc3_.root = _loc7_;
                     }
                     _loc4_ = _loc1_.parent;
                     while(_loc4_ != null)
                     {
                        if(_loc4_.child1 == null || _loc4_.height < 2)
                        {
                           _loc4_ = _loc4_;
                        }
                        else
                        {
                           _loc10_ = _loc4_.child1;
                           _loc11_ = _loc4_.child2;
                           _loc12_ = _loc11_.height - _loc10_.height;
                           if(_loc12_ > 1)
                           {
                              _loc13_ = _loc11_.child1;
                              _loc14_ = _loc11_.child2;
                              _loc11_.child1 = _loc4_;
                              _loc11_.parent = _loc4_.parent;
                              _loc4_.parent = _loc11_;
                              if(_loc11_.parent != null)
                              {
                                 if(_loc11_.parent.child1 == _loc4_)
                                 {
                                    _loc11_.parent.child1 = _loc11_;
                                 }
                                 else
                                 {
                                    _loc11_.parent.child2 = _loc11_;
                                 }
                              }
                              else
                              {
                                 _loc3_.root = _loc11_;
                              }
                              if(_loc13_.height > _loc14_.height)
                              {
                                 _loc11_.child2 = _loc13_;
                                 _loc4_.child2 = _loc14_;
                                 _loc14_.parent = _loc4_;
                                 _loc16_ = _loc4_.name_3;
                                 _loc30_ = _loc10_.name_3;
                                 _loc37_ = _loc14_.name_3;
                                 if(_loc30_.var_77 < _loc37_.var_77)
                                 {
                                    _loc16_.var_77 = _loc30_.var_77;
                                 }
                                 else
                                 {
                                    _loc16_.var_77 = _loc37_.var_77;
                                 }
                                 if(_loc30_.var_78 < _loc37_.var_78)
                                 {
                                    _loc16_.var_78 = _loc30_.var_78;
                                 }
                                 else
                                 {
                                    _loc16_.var_78 = _loc37_.var_78;
                                 }
                                 if(_loc30_.var_79 > _loc37_.var_79)
                                 {
                                    _loc16_.var_79 = _loc30_.var_79;
                                 }
                                 else
                                 {
                                    _loc16_.var_79 = _loc37_.var_79;
                                 }
                                 if(_loc30_.var_80 > _loc37_.var_80)
                                 {
                                    _loc16_.var_80 = _loc30_.var_80;
                                 }
                                 else
                                 {
                                    _loc16_.var_80 = _loc37_.var_80;
                                 }
                                 _loc16_ = _loc11_.name_3;
                                 _loc30_ = _loc4_.name_3;
                                 _loc37_ = _loc13_.name_3;
                                 if(_loc30_.var_77 < _loc37_.var_77)
                                 {
                                    _loc16_.var_77 = _loc30_.var_77;
                                 }
                                 else
                                 {
                                    _loc16_.var_77 = _loc37_.var_77;
                                 }
                                 if(_loc30_.var_78 < _loc37_.var_78)
                                 {
                                    _loc16_.var_78 = _loc30_.var_78;
                                 }
                                 else
                                 {
                                    _loc16_.var_78 = _loc37_.var_78;
                                 }
                                 if(_loc30_.var_79 > _loc37_.var_79)
                                 {
                                    _loc16_.var_79 = _loc30_.var_79;
                                 }
                                 else
                                 {
                                    _loc16_.var_79 = _loc37_.var_79;
                                 }
                                 if(_loc30_.var_80 > _loc37_.var_80)
                                 {
                                    _loc16_.var_80 = _loc30_.var_80;
                                 }
                                 else
                                 {
                                    _loc16_.var_80 = _loc37_.var_80;
                                 }
                                 _loc17_ = _loc10_.height;
                                 _loc18_ = _loc14_.height;
                                 _loc4_.height = 1 + (_loc17_ > _loc18_?_loc17_:_loc18_);
                                 _loc17_ = _loc4_.height;
                                 _loc18_ = _loc13_.height;
                                 _loc11_.height = 1 + (_loc17_ > _loc18_?_loc17_:_loc18_);
                              }
                              else
                              {
                                 _loc11_.child2 = _loc14_;
                                 _loc4_.child2 = _loc13_;
                                 _loc13_.parent = _loc4_;
                                 _loc16_ = _loc4_.name_3;
                                 _loc30_ = _loc10_.name_3;
                                 _loc37_ = _loc13_.name_3;
                                 if(_loc30_.var_77 < _loc37_.var_77)
                                 {
                                    _loc16_.var_77 = _loc30_.var_77;
                                 }
                                 else
                                 {
                                    _loc16_.var_77 = _loc37_.var_77;
                                 }
                                 if(_loc30_.var_78 < _loc37_.var_78)
                                 {
                                    _loc16_.var_78 = _loc30_.var_78;
                                 }
                                 else
                                 {
                                    _loc16_.var_78 = _loc37_.var_78;
                                 }
                                 if(_loc30_.var_79 > _loc37_.var_79)
                                 {
                                    _loc16_.var_79 = _loc30_.var_79;
                                 }
                                 else
                                 {
                                    _loc16_.var_79 = _loc37_.var_79;
                                 }
                                 if(_loc30_.var_80 > _loc37_.var_80)
                                 {
                                    _loc16_.var_80 = _loc30_.var_80;
                                 }
                                 else
                                 {
                                    _loc16_.var_80 = _loc37_.var_80;
                                 }
                                 _loc16_ = _loc11_.name_3;
                                 _loc30_ = _loc4_.name_3;
                                 _loc37_ = _loc14_.name_3;
                                 if(_loc30_.var_77 < _loc37_.var_77)
                                 {
                                    _loc16_.var_77 = _loc30_.var_77;
                                 }
                                 else
                                 {
                                    _loc16_.var_77 = _loc37_.var_77;
                                 }
                                 if(_loc30_.var_78 < _loc37_.var_78)
                                 {
                                    _loc16_.var_78 = _loc30_.var_78;
                                 }
                                 else
                                 {
                                    _loc16_.var_78 = _loc37_.var_78;
                                 }
                                 if(_loc30_.var_79 > _loc37_.var_79)
                                 {
                                    _loc16_.var_79 = _loc30_.var_79;
                                 }
                                 else
                                 {
                                    _loc16_.var_79 = _loc37_.var_79;
                                 }
                                 if(_loc30_.var_80 > _loc37_.var_80)
                                 {
                                    _loc16_.var_80 = _loc30_.var_80;
                                 }
                                 else
                                 {
                                    _loc16_.var_80 = _loc37_.var_80;
                                 }
                                 _loc17_ = _loc10_.height;
                                 _loc18_ = _loc13_.height;
                                 _loc4_.height = 1 + (_loc17_ > _loc18_?_loc17_:_loc18_);
                                 _loc17_ = _loc4_.height;
                                 _loc18_ = _loc14_.height;
                                 _loc11_.height = 1 + (_loc17_ > _loc18_?_loc17_:_loc18_);
                              }
                              _loc4_ = _loc11_;
                           }
                           else if(_loc12_ < -1)
                           {
                              _loc13_ = _loc10_.child1;
                              _loc14_ = _loc10_.child2;
                              _loc10_.child1 = _loc4_;
                              _loc10_.parent = _loc4_.parent;
                              _loc4_.parent = _loc10_;
                              if(_loc10_.parent != null)
                              {
                                 if(_loc10_.parent.child1 == _loc4_)
                                 {
                                    _loc10_.parent.child1 = _loc10_;
                                 }
                                 else
                                 {
                                    _loc10_.parent.child2 = _loc10_;
                                 }
                              }
                              else
                              {
                                 _loc3_.root = _loc10_;
                              }
                              if(_loc13_.height > _loc14_.height)
                              {
                                 _loc10_.child2 = _loc13_;
                                 _loc4_.child1 = _loc14_;
                                 _loc14_.parent = _loc4_;
                                 _loc16_ = _loc4_.name_3;
                                 _loc30_ = _loc11_.name_3;
                                 _loc37_ = _loc14_.name_3;
                                 if(_loc30_.var_77 < _loc37_.var_77)
                                 {
                                    _loc16_.var_77 = _loc30_.var_77;
                                 }
                                 else
                                 {
                                    _loc16_.var_77 = _loc37_.var_77;
                                 }
                                 if(_loc30_.var_78 < _loc37_.var_78)
                                 {
                                    _loc16_.var_78 = _loc30_.var_78;
                                 }
                                 else
                                 {
                                    _loc16_.var_78 = _loc37_.var_78;
                                 }
                                 if(_loc30_.var_79 > _loc37_.var_79)
                                 {
                                    _loc16_.var_79 = _loc30_.var_79;
                                 }
                                 else
                                 {
                                    _loc16_.var_79 = _loc37_.var_79;
                                 }
                                 if(_loc30_.var_80 > _loc37_.var_80)
                                 {
                                    _loc16_.var_80 = _loc30_.var_80;
                                 }
                                 else
                                 {
                                    _loc16_.var_80 = _loc37_.var_80;
                                 }
                                 _loc16_ = _loc10_.name_3;
                                 _loc30_ = _loc4_.name_3;
                                 _loc37_ = _loc13_.name_3;
                                 if(_loc30_.var_77 < _loc37_.var_77)
                                 {
                                    _loc16_.var_77 = _loc30_.var_77;
                                 }
                                 else
                                 {
                                    _loc16_.var_77 = _loc37_.var_77;
                                 }
                                 if(_loc30_.var_78 < _loc37_.var_78)
                                 {
                                    _loc16_.var_78 = _loc30_.var_78;
                                 }
                                 else
                                 {
                                    _loc16_.var_78 = _loc37_.var_78;
                                 }
                                 if(_loc30_.var_79 > _loc37_.var_79)
                                 {
                                    _loc16_.var_79 = _loc30_.var_79;
                                 }
                                 else
                                 {
                                    _loc16_.var_79 = _loc37_.var_79;
                                 }
                                 if(_loc30_.var_80 > _loc37_.var_80)
                                 {
                                    _loc16_.var_80 = _loc30_.var_80;
                                 }
                                 else
                                 {
                                    _loc16_.var_80 = _loc37_.var_80;
                                 }
                                 _loc17_ = _loc11_.height;
                                 _loc18_ = _loc14_.height;
                                 _loc4_.height = 1 + (_loc17_ > _loc18_?_loc17_:_loc18_);
                                 _loc17_ = _loc4_.height;
                                 _loc18_ = _loc13_.height;
                                 _loc10_.height = 1 + (_loc17_ > _loc18_?_loc17_:_loc18_);
                              }
                              else
                              {
                                 _loc10_.child2 = _loc14_;
                                 _loc4_.child1 = _loc13_;
                                 _loc13_.parent = _loc4_;
                                 _loc16_ = _loc4_.name_3;
                                 _loc30_ = _loc11_.name_3;
                                 _loc37_ = _loc13_.name_3;
                                 if(_loc30_.var_77 < _loc37_.var_77)
                                 {
                                    _loc16_.var_77 = _loc30_.var_77;
                                 }
                                 else
                                 {
                                    _loc16_.var_77 = _loc37_.var_77;
                                 }
                                 if(_loc30_.var_78 < _loc37_.var_78)
                                 {
                                    _loc16_.var_78 = _loc30_.var_78;
                                 }
                                 else
                                 {
                                    _loc16_.var_78 = _loc37_.var_78;
                                 }
                                 if(_loc30_.var_79 > _loc37_.var_79)
                                 {
                                    _loc16_.var_79 = _loc30_.var_79;
                                 }
                                 else
                                 {
                                    _loc16_.var_79 = _loc37_.var_79;
                                 }
                                 if(_loc30_.var_80 > _loc37_.var_80)
                                 {
                                    _loc16_.var_80 = _loc30_.var_80;
                                 }
                                 else
                                 {
                                    _loc16_.var_80 = _loc37_.var_80;
                                 }
                                 _loc16_ = _loc10_.name_3;
                                 _loc30_ = _loc4_.name_3;
                                 _loc37_ = _loc14_.name_3;
                                 if(_loc30_.var_77 < _loc37_.var_77)
                                 {
                                    _loc16_.var_77 = _loc30_.var_77;
                                 }
                                 else
                                 {
                                    _loc16_.var_77 = _loc37_.var_77;
                                 }
                                 if(_loc30_.var_78 < _loc37_.var_78)
                                 {
                                    _loc16_.var_78 = _loc30_.var_78;
                                 }
                                 else
                                 {
                                    _loc16_.var_78 = _loc37_.var_78;
                                 }
                                 if(_loc30_.var_79 > _loc37_.var_79)
                                 {
                                    _loc16_.var_79 = _loc30_.var_79;
                                 }
                                 else
                                 {
                                    _loc16_.var_79 = _loc37_.var_79;
                                 }
                                 if(_loc30_.var_80 > _loc37_.var_80)
                                 {
                                    _loc16_.var_80 = _loc30_.var_80;
                                 }
                                 else
                                 {
                                    _loc16_.var_80 = _loc37_.var_80;
                                 }
                                 _loc17_ = _loc11_.height;
                                 _loc18_ = _loc13_.height;
                                 _loc4_.height = 1 + (_loc17_ > _loc18_?_loc17_:_loc18_);
                                 _loc17_ = _loc4_.height;
                                 _loc18_ = _loc14_.height;
                                 _loc10_.height = 1 + (_loc17_ > _loc18_?_loc17_:_loc18_);
                              }
                              _loc4_ = _loc10_;
                           }
                           else
                           {
                              _loc4_ = _loc4_;
                           }
                        }
                        _loc10_ = _loc4_.child1;
                        _loc11_ = _loc4_.child2;
                        _loc12_ = int(_loc10_.height);
                        _loc17_ = _loc11_.height;
                        _loc4_.height = 1 + (_loc12_ > _loc17_?_loc12_:_loc17_);
                        _loc16_ = _loc4_.name_3;
                        _loc30_ = _loc10_.name_3;
                        _loc37_ = _loc11_.name_3;
                        if(_loc30_.var_77 < _loc37_.var_77)
                        {
                           _loc16_.var_77 = _loc30_.var_77;
                        }
                        else
                        {
                           _loc16_.var_77 = _loc37_.var_77;
                        }
                        if(_loc30_.var_78 < _loc37_.var_78)
                        {
                           _loc16_.var_78 = _loc30_.var_78;
                        }
                        else
                        {
                           _loc16_.var_78 = _loc37_.var_78;
                        }
                        if(_loc30_.var_79 > _loc37_.var_79)
                        {
                           _loc16_.var_79 = _loc30_.var_79;
                        }
                        else
                        {
                           _loc16_.var_79 = _loc37_.var_79;
                        }
                        if(_loc30_.var_80 > _loc37_.var_80)
                        {
                           _loc16_.var_80 = _loc30_.var_80;
                        }
                        else
                        {
                           _loc16_.var_80 = _loc37_.var_80;
                        }
                        _loc4_ = _loc4_.parent;
                     }
                  }
                  _loc1_.var_426 = false;
                  if(!_loc1_.var_407)
                  {
                     _loc1_.var_407 = true;
                     _loc1_.var_294 = var_227;
                     var_227 = _loc1_;
                  }
               }
            }
         }
      }
      
      override public function method_267(param1:Number, param2:Number, param3:ZPP_InteractionFilter, param4:class_230) : class_230
      {
         var _loc7_:* = null as ZPP_Vec2;
         var _loc8_:* = null as class_230;
         var _loc9_:* = null as ZPP_AABBNode;
         var _loc10_:* = null as ZPP_AABB;
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
         if(var_151.root != null)
         {
            if(var_108 == null)
            {
               var_108 = new class_337();
            }
            var_108.add(var_151.root);
            while(var_108.var_73 != null)
            {
               _loc9_ = var_108.method_105();
               _loc10_ = _loc9_.name_3;
               if(_loc5_.x >= _loc10_.var_77 && _loc5_.x <= _loc10_.var_79 && _loc5_.y >= _loc10_.var_78 && _loc5_.y <= _loc10_.var_80)
               {
                  if(_loc9_.child1 == null)
                  {
                     if(param3 == null || (_loc11_.name_14 & param3.name_13) != 0 && (param3.name_14 & _loc11_.name_13) != 0)
                     {
                        if(_loc9_.name_7.type == class_223.var_131)
                        {
                           if(class_239.method_223(_loc9_.name_7.var_102,_loc5_))
                           {
                              _loc8_.push(_loc9_.name_7.outer);
                           }
                        }
                        else if(class_239.method_231(_loc9_.name_7.name_6,_loc5_))
                        {
                           _loc8_.push(_loc9_.name_7.outer);
                        }
                     }
                  }
                  else
                  {
                     if(_loc9_.child1 != null)
                     {
                        var_108.add(_loc9_.child1);
                     }
                     if(_loc9_.child2 != null)
                     {
                        var_108.add(_loc9_.child2);
                     }
                  }
               }
            }
         }
         if(var_152.root != null)
         {
            if(var_108 == null)
            {
               var_108 = new class_337();
            }
            var_108.add(var_152.root);
            while(var_108.var_73 != null)
            {
               _loc9_ = var_108.method_105();
               _loc10_ = _loc9_.name_3;
               if(_loc5_.x >= _loc10_.var_77 && _loc5_.x <= _loc10_.var_79 && _loc5_.y >= _loc10_.var_78 && _loc5_.y <= _loc10_.var_80)
               {
                  if(_loc9_.child1 == null)
                  {
                     if(param3 == null || (_loc11_.name_14 & param3.name_13) != 0 && (param3.name_14 & _loc11_.name_13) != 0)
                     {
                        if(_loc9_.name_7.type == class_223.var_131)
                        {
                           if(class_239.method_223(_loc9_.name_7.var_102,_loc5_))
                           {
                              _loc8_.push(_loc9_.name_7.outer);
                           }
                        }
                        else if(class_239.method_231(_loc9_.name_7.name_6,_loc5_))
                        {
                           _loc8_.push(_loc9_.name_7.outer);
                        }
                     }
                  }
                  else
                  {
                     if(_loc9_.child1 != null)
                     {
                        var_108.add(_loc9_.child1);
                     }
                     if(_loc9_.child2 != null)
                     {
                        var_108.add(_loc9_.child2);
                     }
                  }
               }
            }
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
         var _loc7_:* = null as ZPP_AABBNode;
         var _loc8_:* = null as ZPP_AABB;
         var _loc9_:* = null as ZPP_InteractionFilter;
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
         if(var_151.root != null)
         {
            if(var_108 == null)
            {
               var_108 = new class_337();
            }
            var_108.add(var_151.root);
            while(var_108.var_73 != null)
            {
               _loc7_ = var_108.method_105();
               _loc8_ = _loc7_.name_3;
               if(_loc5_.var_78 <= _loc8_.var_80 && _loc8_.var_78 <= _loc5_.var_80 && _loc5_.var_77 <= _loc8_.var_79 && _loc8_.var_77 <= _loc5_.var_79)
               {
                  if(_loc7_.child1 == null)
                  {
                     if(param3 == null || (_loc9_.name_14 & param3.name_13) != 0 && (param3.name_14 & _loc9_.name_13) != 0)
                     {
                        if(param2)
                        {
                           if(class_239.method_135(param1,_loc7_.name_7))
                           {
                              _loc6_.push(_loc7_.name_7.outer);
                           }
                        }
                        else if(class_239.method_133(_loc7_.name_7,param1))
                        {
                           _loc6_.push(_loc7_.name_7.outer);
                        }
                     }
                  }
                  else
                  {
                     if(_loc7_.child1 != null)
                     {
                        var_108.add(_loc7_.child1);
                     }
                     if(_loc7_.child2 != null)
                     {
                        var_108.add(_loc7_.child2);
                     }
                  }
               }
            }
         }
         if(var_152.root != null)
         {
            if(var_108 == null)
            {
               var_108 = new class_337();
            }
            var_108.add(var_152.root);
            while(var_108.var_73 != null)
            {
               _loc7_ = var_108.method_105();
               _loc8_ = _loc7_.name_3;
               if(_loc5_.var_78 <= _loc8_.var_80 && _loc8_.var_78 <= _loc5_.var_80 && _loc5_.var_77 <= _loc8_.var_79 && _loc8_.var_77 <= _loc5_.var_79)
               {
                  if(_loc7_.child1 == null)
                  {
                     if(param3 == null || (_loc9_.name_14 & param3.name_13) != 0 && (param3.name_14 & _loc9_.name_13) != 0)
                     {
                        if(param2)
                        {
                           if(class_239.method_135(param1,_loc7_.name_7))
                           {
                              _loc6_.push(_loc7_.name_7.outer);
                           }
                        }
                        else if(class_239.method_133(_loc7_.name_7,param1))
                        {
                           _loc6_.push(_loc7_.name_7.outer);
                        }
                     }
                  }
                  else
                  {
                     if(_loc7_.child1 != null)
                     {
                        var_108.add(_loc7_.child1);
                     }
                     if(_loc7_.child2 != null)
                     {
                        var_108.add(_loc7_.child2);
                     }
                  }
               }
            }
         }
         return _loc6_;
      }
      
      override public function method_256(param1:Number, param2:Number, param3:Number, param4:Boolean, param5:ZPP_InteractionFilter, param6:class_230) : class_230
      {
         var _loc8_:* = null as class_230;
         var _loc9_:* = null as ZPP_AABBNode;
         var _loc10_:* = null as ZPP_AABB;
         var _loc11_:* = null as ZPP_InteractionFilter;
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
         if(var_151.root != null)
         {
            if(var_108 == null)
            {
               var_108 = new class_337();
            }
            var_108.add(var_151.root);
            while(var_108.var_73 != null)
            {
               _loc9_ = var_108.method_105();
               _loc10_ = _loc9_.name_3;
               if(_loc7_.var_78 <= _loc10_.var_80 && _loc10_.var_78 <= _loc7_.var_80 && _loc7_.var_77 <= _loc10_.var_79 && _loc10_.var_77 <= _loc7_.var_79)
               {
                  if(_loc9_.child1 == null)
                  {
                     if(param5 == null || (_loc11_.name_14 & param5.name_13) != 0 && (param5.name_14 & _loc11_.name_13) != 0)
                     {
                        if(param4)
                        {
                           if(class_239.method_135(var_214.zpp_inner,_loc9_.name_7))
                           {
                              _loc8_.push(_loc9_.name_7.outer);
                           }
                        }
                        else if(class_239.method_133(_loc9_.name_7,var_214.zpp_inner))
                        {
                           _loc8_.push(_loc9_.name_7.outer);
                        }
                     }
                  }
                  else
                  {
                     if(_loc9_.child1 != null)
                     {
                        var_108.add(_loc9_.child1);
                     }
                     if(_loc9_.child2 != null)
                     {
                        var_108.add(_loc9_.child2);
                     }
                  }
               }
            }
         }
         if(var_152.root != null)
         {
            if(var_108 == null)
            {
               var_108 = new class_337();
            }
            var_108.add(var_152.root);
            while(var_108.var_73 != null)
            {
               _loc9_ = var_108.method_105();
               _loc10_ = _loc9_.name_3;
               if(_loc7_.var_78 <= _loc10_.var_80 && _loc10_.var_78 <= _loc7_.var_80 && _loc7_.var_77 <= _loc10_.var_79 && _loc10_.var_77 <= _loc7_.var_79)
               {
                  if(_loc9_.child1 == null)
                  {
                     if(param5 == null || (_loc11_.name_14 & param5.name_13) != 0 && (param5.name_14 & _loc11_.name_13) != 0)
                     {
                        if(param4)
                        {
                           if(class_239.method_135(var_214.zpp_inner,_loc9_.name_7))
                           {
                              _loc8_.push(_loc9_.name_7.outer);
                           }
                        }
                        else if(class_239.method_133(_loc9_.name_7,var_214.zpp_inner))
                        {
                           _loc8_.push(_loc9_.name_7.outer);
                        }
                     }
                  }
                  else
                  {
                     if(_loc9_.child1 != null)
                     {
                        var_108.add(_loc9_.child1);
                     }
                     if(_loc9_.child2 != null)
                     {
                        var_108.add(_loc9_.child2);
                     }
                  }
               }
            }
         }
         return _loc8_;
      }
      
      override public function method_178(param1:ZPP_AABB, param2:Boolean, param3:Boolean, param4:ZPP_InteractionFilter, param5:class_230) : class_230
      {
         var _loc7_:* = null as class_230;
         var _loc8_:* = null as ZPP_AABBNode;
         var _loc9_:* = null as ZPP_AABB;
         var _loc10_:* = null as ZPP_InteractionFilter;
         var _loc11_:* = null as ZPP_AABBNode;
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
         if(var_151.root != null)
         {
            if(var_108 == null)
            {
               var_108 = new class_337();
            }
            var_108.add(var_151.root);
            while(var_108.var_73 != null)
            {
               _loc8_ = var_108.method_105();
               _loc9_ = _loc8_.name_3;
               if(_loc9_.var_77 >= _loc6_.var_77 && _loc9_.var_78 >= _loc6_.var_78 && _loc9_.var_79 <= _loc6_.var_79 && _loc9_.var_80 <= _loc6_.var_80)
               {
                  if(_loc8_.child1 == null)
                  {
                     if(param4 == null || (_loc10_.name_14 & param4.name_13) != 0 && (param4.name_14 & _loc10_.name_13) != 0)
                     {
                        _loc7_.push(_loc8_.name_7.outer);
                     }
                  }
                  else
                  {
                     if(treeStack2 == null)
                     {
                        treeStack2 = new class_337();
                     }
                     treeStack2.add(_loc8_);
                     while(treeStack2.var_73 != null)
                     {
                        _loc11_ = treeStack2.method_105();
                        if(_loc11_.child1 == null)
                        {
                           if(param4 == null || (_loc10_.name_14 & param4.name_13) != 0 && (param4.name_14 & _loc10_.name_13) != 0)
                           {
                              _loc7_.push(_loc11_.name_7.outer);
                           }
                        }
                        else
                        {
                           if(_loc11_.child1 != null)
                           {
                              treeStack2.add(_loc11_.child1);
                           }
                           if(_loc11_.child2 != null)
                           {
                              treeStack2.add(_loc11_.child2);
                           }
                        }
                     }
                  }
               }
               else
               {
                  _loc9_ = _loc8_.name_3;
                  if(_loc6_.var_78 <= _loc9_.var_80 && _loc9_.var_78 <= _loc6_.var_80 && _loc6_.var_77 <= _loc9_.var_79 && _loc9_.var_77 <= _loc6_.var_79)
                  {
                     if(_loc8_.child1 == null)
                     {
                        if(param4 == null || (_loc10_.name_14 & param4.name_13) != 0 && (param4.name_14 & _loc10_.name_13) != 0)
                        {
                           if(param2)
                           {
                              if(param3)
                              {
                                 if(class_239.method_135(var_210.zpp_inner,_loc8_.name_7))
                                 {
                                    _loc7_.push(_loc8_.name_7.outer);
                                 }
                              }
                              else
                              {
                                 _loc9_ = _loc8_.name_7.name_3;
                                 if(_loc9_.var_77 >= _loc6_.var_77 && _loc9_.var_78 >= _loc6_.var_78 && _loc9_.var_79 <= _loc6_.var_79 && _loc9_.var_80 <= _loc6_.var_80)
                                 {
                                    _loc7_.push(_loc8_.name_7.outer);
                                 }
                                 else if(class_239.method_133(_loc8_.name_7,var_210.zpp_inner))
                                 {
                                    _loc7_.push(_loc8_.name_7.outer);
                                 }
                              }
                           }
                           else if(!param3 || _loc9_.var_77 >= _loc6_.var_77 && _loc9_.var_78 >= _loc6_.var_78 && _loc9_.var_79 <= _loc6_.var_79 && _loc9_.var_80 <= _loc6_.var_80)
                           {
                              _loc7_.push(_loc8_.name_7.outer);
                           }
                        }
                     }
                     else
                     {
                        if(_loc8_.child1 != null)
                        {
                           var_108.add(_loc8_.child1);
                        }
                        if(_loc8_.child2 != null)
                        {
                           var_108.add(_loc8_.child2);
                        }
                     }
                  }
               }
            }
         }
         if(var_152.root != null)
         {
            if(var_108 == null)
            {
               var_108 = new class_337();
            }
            var_108.add(var_152.root);
            while(var_108.var_73 != null)
            {
               _loc8_ = var_108.method_105();
               _loc9_ = _loc8_.name_3;
               if(_loc9_.var_77 >= _loc6_.var_77 && _loc9_.var_78 >= _loc6_.var_78 && _loc9_.var_79 <= _loc6_.var_79 && _loc9_.var_80 <= _loc6_.var_80)
               {
                  if(_loc8_.child1 == null)
                  {
                     if(param4 == null || (_loc10_.name_14 & param4.name_13) != 0 && (param4.name_14 & _loc10_.name_13) != 0)
                     {
                        _loc7_.push(_loc8_.name_7.outer);
                     }
                  }
                  else
                  {
                     if(treeStack2 == null)
                     {
                        treeStack2 = new class_337();
                     }
                     treeStack2.add(_loc8_);
                     while(treeStack2.var_73 != null)
                     {
                        _loc11_ = treeStack2.method_105();
                        if(_loc11_.child1 == null)
                        {
                           if(param4 == null || (_loc10_.name_14 & param4.name_13) != 0 && (param4.name_14 & _loc10_.name_13) != 0)
                           {
                              _loc7_.push(_loc11_.name_7.outer);
                           }
                        }
                        else
                        {
                           if(_loc11_.child1 != null)
                           {
                              treeStack2.add(_loc11_.child1);
                           }
                           if(_loc11_.child2 != null)
                           {
                              treeStack2.add(_loc11_.child2);
                           }
                        }
                     }
                  }
               }
               else
               {
                  _loc9_ = _loc8_.name_3;
                  if(_loc6_.var_78 <= _loc9_.var_80 && _loc9_.var_78 <= _loc6_.var_80 && _loc6_.var_77 <= _loc9_.var_79 && _loc9_.var_77 <= _loc6_.var_79)
                  {
                     if(_loc8_.child1 == null)
                     {
                        if(param4 == null || (_loc10_.name_14 & param4.name_13) != 0 && (param4.name_14 & _loc10_.name_13) != 0)
                        {
                           if(param2)
                           {
                              if(param3)
                              {
                                 if(class_239.method_135(var_210.zpp_inner,_loc8_.name_7))
                                 {
                                    _loc7_.push(_loc8_.name_7.outer);
                                 }
                              }
                              else
                              {
                                 _loc9_ = _loc8_.name_7.name_3;
                                 if(_loc9_.var_77 >= _loc6_.var_77 && _loc9_.var_78 >= _loc6_.var_78 && _loc9_.var_79 <= _loc6_.var_79 && _loc9_.var_80 <= _loc6_.var_80)
                                 {
                                    _loc7_.push(_loc8_.name_7.outer);
                                 }
                                 else if(class_239.method_133(_loc8_.name_7,var_210.zpp_inner))
                                 {
                                    _loc7_.push(_loc8_.name_7.outer);
                                 }
                              }
                           }
                           else if(!param3 || _loc9_.var_77 >= _loc6_.var_77 && _loc9_.var_78 >= _loc6_.var_78 && _loc9_.var_79 <= _loc6_.var_79 && _loc9_.var_80 <= _loc6_.var_80)
                           {
                              _loc7_.push(_loc8_.name_7.outer);
                           }
                        }
                     }
                     else
                     {
                        if(_loc8_.child1 != null)
                        {
                           var_108.add(_loc8_.child1);
                        }
                        if(_loc8_.child2 != null)
                        {
                           var_108.add(_loc8_.child2);
                        }
                     }
                  }
               }
            }
         }
         return _loc7_;
      }
      
      override public function method_222(param1:class_311, param2:Boolean, param3:ZPP_InteractionFilter, param4:class_233) : class_233
      {
         var _loc6_:* = null as class_233;
         var _loc7_:Number = NaN;
         var _loc8_:* = null as ZPP_AABBNode;
         var _loc9_:* = null as ZPP_Shape;
         var _loc10_:* = null as ZPP_InteractionFilter;
         if(var_186 == null)
         {
            var_186 = new class_337();
         }
         sync_broadphase();
         param1.method_292();
         var _loc5_:* = param1.maxdist >= 1.79e308;
         if(param4 == null)
         {
            _loc6_ = new class_233();
         }
         else
         {
            _loc6_ = param4;
         }
         if(var_152.root != null)
         {
            if(param1.method_170(var_152.root.name_3))
            {
               if(_loc5_)
               {
                  var_186.add(var_152.root);
               }
               else
               {
                  _loc7_ = Number(param1.method_144(var_152.root.name_3));
                  if(_loc7_ >= 0 && _loc7_ < param1.maxdist)
                  {
                     var_186.add(var_152.root);
                  }
               }
            }
         }
         if(var_151.root != null)
         {
            if(param1.method_170(var_151.root.name_3))
            {
               if(_loc5_)
               {
                  var_186.add(var_151.root);
               }
               else
               {
                  _loc7_ = Number(param1.method_144(var_151.root.name_3));
                  if(_loc7_ >= 0 && _loc7_ < param1.maxdist)
                  {
                     var_186.add(var_151.root);
                  }
               }
            }
         }
         while(var_186.var_73 != null)
         {
            _loc8_ = var_186.method_105();
            if(_loc8_.child1 == null)
            {
               _loc9_ = _loc8_.name_7;
               if(param3 == null || (_loc10_.name_14 & param3.name_13) != 0 && (param3.name_14 & _loc10_.name_13) != 0)
               {
                  if(_loc9_.type == class_223.var_131)
                  {
                     param1.circlesect2(_loc9_.var_102,param2,_loc6_);
                  }
                  else if(param1.method_170(_loc9_.name_3))
                  {
                     param1.polysect2(_loc9_.name_6,param2,_loc6_);
                  }
               }
            }
            else
            {
               if(_loc8_.child1 != null)
               {
                  if(param1.method_170(_loc8_.child1.name_3))
                  {
                     if(_loc5_)
                     {
                        var_186.add(_loc8_.child1);
                     }
                     else
                     {
                        _loc7_ = Number(param1.method_144(_loc8_.child1.name_3));
                        if(_loc7_ >= 0 && _loc7_ < param1.maxdist)
                        {
                           var_186.add(_loc8_.child1);
                        }
                     }
                  }
               }
               if(_loc8_.child2 != null)
               {
                  if(param1.method_170(_loc8_.child2.name_3))
                  {
                     if(_loc5_)
                     {
                        var_186.add(_loc8_.child2);
                     }
                     else
                     {
                        _loc7_ = Number(param1.method_144(_loc8_.child2.name_3));
                        if(_loc7_ >= 0 && _loc7_ < param1.maxdist)
                        {
                           var_186.add(_loc8_.child2);
                        }
                     }
                  }
               }
            }
         }
         var_186.clear();
         return _loc6_;
      }
      
      override public function method_176(param1:class_311, param2:Boolean, param3:ZPP_InteractionFilter) : RayResult
      {
         var _loc5_:Number = NaN;
         var _loc6_:* = null as ZNPNode_ZPP_AABBNode;
         var _loc7_:* = null as ZNPNode_ZPP_AABBNode;
         var _loc8_:* = null as ZPP_AABBNode;
         var _loc9_:* = null as class_337;
         var _loc10_:* = null as ZNPNode_ZPP_AABBNode;
         var _loc11_:Boolean = false;
         var _loc13_:* = null as ZPP_Shape;
         var _loc14_:* = null as ZPP_InteractionFilter;
         var _loc15_:* = null as RayResult;
         var _loc16_:* = null as ZPP_AABBNode;
         if(var_186 == null)
         {
            var_186 = new class_337();
         }
         sync_broadphase();
         param1.method_292();
         var _loc4_:Number = param1.maxdist;
         if(var_152.root != null)
         {
            if(param1.method_170(var_152.root.name_3))
            {
               _loc5_ = Number(param1.method_144(var_152.root.name_3));
               if(_loc5_ >= 0 && _loc5_ < _loc4_)
               {
                  var_152.root.var_418 = _loc5_;
                  _loc6_ = null;
                  _loc7_ = var_186.var_73;
                  while(_loc7_ != null)
                  {
                     _loc8_ = _loc7_.var_74;
                     if(var_152.root.var_418 < _loc8_.var_418)
                     {
                        break;
                     }
                     _loc6_ = _loc7_;
                     _loc7_ = _loc7_.next;
                  }
                  _loc9_ = var_186;
                  if(ZNPNode_ZPP_AABBNode.var_72 == null)
                  {
                     _loc10_ = new ZNPNode_ZPP_AABBNode();
                  }
                  else
                  {
                     _loc10_ = ZNPNode_ZPP_AABBNode.var_72;
                     ZNPNode_ZPP_AABBNode.var_72 = _loc10_.next;
                     _loc10_.next = null;
                  }
                  null;
                  _loc10_.var_74 = var_152.root;
                  _loc7_ = _loc10_;
                  if(_loc6_ == null)
                  {
                     _loc7_.next = _loc9_.var_73;
                     _loc9_.var_73 = _loc7_;
                  }
                  else
                  {
                     _loc7_.next = _loc6_.next;
                     _loc6_.next = _loc7_;
                  }
                  _loc11_ = true;
                  _loc9_.name_2 = _loc11_;
                  _loc9_.var_76 = _loc11_;
                  _loc9_.length = _loc9_.length + 1;
                  _loc7_;
               }
            }
         }
         if(var_151.root != null)
         {
            if(param1.method_170(var_151.root.name_3))
            {
               _loc5_ = Number(param1.method_144(var_151.root.name_3));
               if(_loc5_ >= 0 && _loc5_ < _loc4_)
               {
                  var_151.root.var_418 = _loc5_;
                  _loc6_ = null;
                  _loc7_ = var_186.var_73;
                  while(_loc7_ != null)
                  {
                     _loc8_ = _loc7_.var_74;
                     if(var_151.root.var_418 < _loc8_.var_418)
                     {
                        break;
                     }
                     _loc6_ = _loc7_;
                     _loc7_ = _loc7_.next;
                  }
                  _loc9_ = var_186;
                  if(ZNPNode_ZPP_AABBNode.var_72 == null)
                  {
                     _loc10_ = new ZNPNode_ZPP_AABBNode();
                  }
                  else
                  {
                     _loc10_ = ZNPNode_ZPP_AABBNode.var_72;
                     ZNPNode_ZPP_AABBNode.var_72 = _loc10_.next;
                     _loc10_.next = null;
                  }
                  null;
                  _loc10_.var_74 = var_151.root;
                  _loc7_ = _loc10_;
                  if(_loc6_ == null)
                  {
                     _loc7_.next = _loc9_.var_73;
                     _loc9_.var_73 = _loc7_;
                  }
                  else
                  {
                     _loc7_.next = _loc6_.next;
                     _loc6_.next = _loc7_;
                  }
                  _loc11_ = true;
                  _loc9_.name_2 = _loc11_;
                  _loc9_.var_76 = _loc11_;
                  _loc9_.length = _loc9_.length + 1;
                  _loc7_;
               }
            }
         }
         var _loc12_:* = null;
         while(var_186.var_73 != null)
         {
            _loc8_ = var_186.method_105();
            if(_loc8_.var_418 >= _loc4_)
            {
               break;
            }
            if(_loc8_.child1 == null)
            {
               _loc13_ = _loc8_.name_7;
               if(param3 == null || (_loc14_.name_14 & param3.name_13) != 0 && (param3.name_14 & _loc14_.name_13) != 0)
               {
                  if(_loc13_.type == class_223.var_131)
                  {
                     _loc15_ = param1.method_355(_loc13_.var_102,param2,_loc4_);
                  }
                  else if(param1.method_170(_loc13_.name_3))
                  {
                     _loc15_ = param1.method_346(_loc13_.name_6,param2,_loc4_);
                  }
                  else
                  {
                     _loc15_ = null;
                  }
                  if(_loc15_ != null)
                  {
                     _loc4_ = _loc15_.zpp_inner.var_285;
                     if(_loc12_ != null)
                     {
                        _loc12_.zpp_inner.method_129();
                     }
                     _loc12_ = _loc15_;
                  }
               }
            }
            else
            {
               if(_loc8_.child1 != null)
               {
                  if(param1.method_170(_loc8_.child1.name_3))
                  {
                     _loc5_ = Number(param1.method_144(_loc8_.child1.name_3));
                     if(_loc5_ >= 0 && _loc5_ < _loc4_)
                     {
                        _loc8_.child1.var_418 = _loc5_;
                        _loc6_ = null;
                        _loc7_ = var_186.var_73;
                        while(_loc7_ != null)
                        {
                           _loc16_ = _loc7_.var_74;
                           if(_loc8_.child1.var_418 < _loc16_.var_418)
                           {
                              break;
                           }
                           _loc6_ = _loc7_;
                           _loc7_ = _loc7_.next;
                        }
                        _loc9_ = var_186;
                        if(ZNPNode_ZPP_AABBNode.var_72 == null)
                        {
                           _loc10_ = new ZNPNode_ZPP_AABBNode();
                        }
                        else
                        {
                           _loc10_ = ZNPNode_ZPP_AABBNode.var_72;
                           ZNPNode_ZPP_AABBNode.var_72 = _loc10_.next;
                           _loc10_.next = null;
                        }
                        null;
                        _loc10_.var_74 = _loc8_.child1;
                        _loc7_ = _loc10_;
                        if(_loc6_ == null)
                        {
                           _loc7_.next = _loc9_.var_73;
                           _loc9_.var_73 = _loc7_;
                        }
                        else
                        {
                           _loc7_.next = _loc6_.next;
                           _loc6_.next = _loc7_;
                        }
                        _loc11_ = true;
                        _loc9_.name_2 = _loc11_;
                        _loc9_.var_76 = _loc11_;
                        _loc9_.length = _loc9_.length + 1;
                        _loc7_;
                     }
                  }
               }
               if(_loc8_.child2 != null)
               {
                  if(param1.method_170(_loc8_.child2.name_3))
                  {
                     _loc5_ = Number(param1.method_144(_loc8_.child2.name_3));
                     if(_loc5_ >= 0 && _loc5_ < _loc4_)
                     {
                        _loc8_.child2.var_418 = _loc5_;
                        _loc6_ = null;
                        _loc7_ = var_186.var_73;
                        while(_loc7_ != null)
                        {
                           _loc16_ = _loc7_.var_74;
                           if(_loc8_.child2.var_418 < _loc16_.var_418)
                           {
                              break;
                           }
                           _loc6_ = _loc7_;
                           _loc7_ = _loc7_.next;
                        }
                        _loc9_ = var_186;
                        if(ZNPNode_ZPP_AABBNode.var_72 == null)
                        {
                           _loc10_ = new ZNPNode_ZPP_AABBNode();
                        }
                        else
                        {
                           _loc10_ = ZNPNode_ZPP_AABBNode.var_72;
                           ZNPNode_ZPP_AABBNode.var_72 = _loc10_.next;
                           _loc10_.next = null;
                        }
                        null;
                        _loc10_.var_74 = _loc8_.child2;
                        _loc7_ = _loc10_;
                        if(_loc6_ == null)
                        {
                           _loc7_.next = _loc9_.var_73;
                           _loc9_.var_73 = _loc7_;
                        }
                        else
                        {
                           _loc7_.next = _loc6_.next;
                           _loc6_.next = _loc7_;
                        }
                        _loc11_ = true;
                        _loc9_.name_2 = _loc11_;
                        _loc9_.var_76 = _loc11_;
                        _loc9_.length = _loc9_.length + 1;
                        _loc7_;
                     }
                  }
               }
            }
         }
         var_186.clear();
         return _loc12_;
      }
      
      override public function clear() : void
      {
         var _loc1_:* = null as ZPP_AABBNode;
         var _loc2_:* = null as ZPP_AABBPair;
         var _loc3_:* = null as class_312;
         var _loc4_:* = null as ZPP_AABBPair;
         var _loc5_:* = null as ZNPNode_ZPP_AABBPair;
         var _loc6_:* = null as ZNPNode_ZPP_AABBPair;
         var _loc7_:Boolean = false;
         var _loc8_:* = null as ZNPNode_ZPP_AABBPair;
         var _loc9_:* = null as ZNPNode_ZPP_AABBPair;
         var _loc10_:* = null as ZNPNode_ZPP_AABBPair;
         while(var_202 != null)
         {
            _loc1_ = var_202.var_275;
            var_202.var_275 = null;
            if(var_202.var_374)
            {
               var_202.name_7.var_138 = null;
               var_202.name_7.method_120();
               var_202.name_7 = null;
            }
            var_202 = _loc1_;
         }
         while(var_227 != null)
         {
            _loc1_ = var_227.var_294;
            var_227.var_294 = null;
            if(var_227.var_374)
            {
               var_227.name_7.var_138 = null;
               var_227.name_7.method_120();
               var_227.name_7 = null;
            }
            var_227 = _loc1_;
         }
         while(var_144 != null)
         {
            _loc2_ = var_144.next;
            if(var_144.var_246 != null)
            {
               var_144.var_246.var_209 = null;
            }
            var_144.var_246 = null;
            _loc3_ = var_144.n1.name_7.var_144;
            _loc4_ = var_144;
            _loc5_ = null;
            _loc6_ = _loc3_.var_73;
            _loc7_ = false;
            while(_loc6_ != null)
            {
               if(_loc6_.var_74 == _loc4_)
               {
                  if(_loc5_ == null)
                  {
                     _loc8_ = _loc3_.var_73;
                     _loc9_ = _loc8_.next;
                     _loc3_.var_73 = _loc9_;
                     if(_loc3_.var_73 == null)
                     {
                        _loc3_.var_76 = true;
                     }
                  }
                  else
                  {
                     _loc8_ = _loc5_.next;
                     _loc9_ = _loc8_.next;
                     _loc5_.next = _loc9_;
                     if(_loc9_ == null)
                     {
                        _loc3_.var_76 = true;
                     }
                  }
                  _loc10_ = _loc8_;
                  _loc10_.var_74 = null;
                  _loc10_.next = ZNPNode_ZPP_AABBPair.var_72;
                  ZNPNode_ZPP_AABBPair.var_72 = _loc10_;
                  _loc3_.name_2 = true;
                  _loc3_.length = _loc3_.length - 1;
                  _loc3_.var_76 = true;
                  _loc9_;
                  _loc7_ = true;
                  break;
               }
               _loc5_ = _loc6_;
               _loc6_ = _loc6_.next;
            }
            _loc7_;
            _loc3_ = var_144.n2.name_7.var_144;
            _loc4_ = var_144;
            _loc5_ = null;
            _loc6_ = _loc3_.var_73;
            _loc7_ = false;
            while(_loc6_ != null)
            {
               if(_loc6_.var_74 == _loc4_)
               {
                  if(_loc5_ == null)
                  {
                     _loc8_ = _loc3_.var_73;
                     _loc9_ = _loc8_.next;
                     _loc3_.var_73 = _loc9_;
                     if(_loc3_.var_73 == null)
                     {
                        _loc3_.var_76 = true;
                     }
                  }
                  else
                  {
                     _loc8_ = _loc5_.next;
                     _loc9_ = _loc8_.next;
                     _loc5_.next = _loc9_;
                     if(_loc9_ == null)
                     {
                        _loc3_.var_76 = true;
                     }
                  }
                  _loc10_ = _loc8_;
                  _loc10_.var_74 = null;
                  _loc10_.next = ZNPNode_ZPP_AABBPair.var_72;
                  ZNPNode_ZPP_AABBPair.var_72 = _loc10_;
                  _loc3_.name_2 = true;
                  _loc3_.length = _loc3_.length - 1;
                  _loc3_.var_76 = true;
                  _loc9_;
                  _loc7_ = true;
                  break;
               }
               _loc5_ = _loc6_;
               _loc6_ = _loc6_.next;
            }
            _loc7_;
            _loc4_ = var_144;
            _loc1_ = null;
            _loc4_.n2 = _loc1_;
            _loc4_.n1 = _loc1_;
            _loc4_.var_129 = false;
            _loc4_.next = ZPP_AABBPair.var_72;
            ZPP_AABBPair.var_72 = _loc4_;
            var_144 = _loc2_;
         }
         var_152.clear();
         var_151.clear();
      }
      
      override public function method_298(param1:ZPP_Space, param2:Boolean) : void
      {
         var _loc4_:* = null as ZPP_Shape;
         var _loc5_:* = null as class_338;
         var _loc6_:* = null as ZPP_AABBNode;
         var _loc7_:* = null as ZPP_AABBNode;
         var _loc8_:* = null as ZPP_AABBNode;
         var _loc9_:* = null as ZPP_AABBNode;
         var _loc10_:* = null as ZPP_AABB;
         var _loc11_:* = null as Vec2;
         var _loc12_:* = null as ZPP_AABBNode;
         var _loc13_:* = null as ZPP_AABBNode;
         var _loc14_:* = 0;
         var _loc15_:* = null as ZPP_AABBNode;
         var _loc16_:* = null as ZPP_AABBNode;
         var _loc17_:* = null as ZPP_AABB;
         var _loc18_:* = null as ZPP_AABB;
         var _loc19_:int = 0;
         var _loc20_:int = 0;
         var _loc21_:* = null as ZPP_Circle;
         var _loc22_:* = null as ZPP_Polygon;
         var _loc23_:* = NaN;
         var _loc24_:* = null as ZPP_Vec2;
         var _loc25_:* = null as ZPP_Vec2;
         var _loc26_:* = null as ZPP_Vec2;
         var _loc27_:* = null as ZPP_Vec2;
         var _loc28_:Number = NaN;
         var _loc29_:* = null as ZPP_Vec2;
         var _loc30_:* = null as ZPP_Body;
         var _loc31_:* = false;
         var _loc32_:* = null as ZPP_AABB;
         var _loc33_:Number = NaN;
         var _loc34_:Number = NaN;
         var _loc35_:Number = NaN;
         var _loc36_:Number = NaN;
         var _loc37_:Number = NaN;
         var _loc38_:Number = NaN;
         var _loc39_:* = null as ZPP_AABB;
         var _loc40_:* = null as ZPP_Shape;
         var _loc41_:* = null as ZPP_Shape;
         var _loc42_:* = null as ZPP_AABBPair;
         var _loc43_:* = null as ZNPNode_ZPP_AABBPair;
         var _loc44_:* = null as ZPP_AABBPair;
         var _loc45_:* = null as class_312;
         var _loc46_:* = null as ZNPNode_ZPP_AABBPair;
         var _loc47_:* = null as ZNPNode_ZPP_AABBPair;
         var _loc48_:* = null as ZNPNode_ZPP_AABBPair;
         var _loc49_:* = null as ZNPNode_ZPP_AABBPair;
         var _loc50_:* = null as ZPP_AABBPair;
         var _loc51_:* = null as ZPP_AABBPair;
         var _loc52_:* = null as ZPP_Body;
         var _loc53_:* = null as ZPP_Arbiter;
         var _loc3_:ZPP_AABBNode = var_202;
         while(_loc3_ != null)
         {
            _loc4_ = _loc3_.name_7;
            if(!_loc3_.var_374)
            {
               if(_loc3_.var_451)
               {
                  _loc5_ = var_152;
               }
               else
               {
                  _loc5_ = var_151;
               }
               if(_loc3_ == _loc5_.root)
               {
                  _loc5_.root = null;
                  null;
               }
               else
               {
                  _loc6_ = _loc3_.parent;
                  _loc7_ = _loc6_.parent;
                  if(_loc6_.child1 == _loc3_)
                  {
                     _loc8_ = _loc6_.child2;
                  }
                  else
                  {
                     _loc8_ = _loc6_.child1;
                  }
                  if(_loc7_ != null)
                  {
                     if(_loc7_.child1 == _loc6_)
                     {
                        _loc7_.child1 = _loc8_;
                     }
                     else
                     {
                        _loc7_.child2 = _loc8_;
                     }
                     _loc8_.parent = _loc7_;
                     _loc9_ = _loc6_;
                     _loc9_.height = -1;
                     _loc10_ = _loc9_.name_3;
                     if(_loc10_.outer != null)
                     {
                        _loc10_.outer.zpp_inner = null;
                        _loc10_.outer = null;
                     }
                     _loc11_ = null;
                     _loc10_.var_239 = _loc11_;
                     _loc10_.var_238 = _loc11_;
                     _loc10_._invalidate = null;
                     _loc10_._validate = null;
                     _loc10_.next = ZPP_AABB.var_72;
                     ZPP_AABB.var_72 = _loc10_;
                     _loc12_ = null;
                     _loc9_.parent = _loc12_;
                     _loc12_ = _loc12_;
                     _loc9_.child2 = _loc12_;
                     _loc9_.child1 = _loc12_;
                     _loc9_.next = null;
                     _loc9_.var_275 = null;
                     _loc9_.var_294 = null;
                     _loc9_.next = ZPP_AABBNode.var_72;
                     ZPP_AABBNode.var_72 = _loc9_;
                     _loc9_ = _loc7_;
                     while(_loc9_ != null)
                     {
                        if(_loc9_.child1 == null || _loc9_.height < 2)
                        {
                           _loc9_ = _loc9_;
                        }
                        else
                        {
                           _loc12_ = _loc9_.child1;
                           _loc13_ = _loc9_.child2;
                           _loc14_ = _loc13_.height - _loc12_.height;
                           if(_loc14_ > 1)
                           {
                              _loc15_ = _loc13_.child1;
                              _loc16_ = _loc13_.child2;
                              _loc13_.child1 = _loc9_;
                              _loc13_.parent = _loc9_.parent;
                              _loc9_.parent = _loc13_;
                              if(_loc13_.parent != null)
                              {
                                 if(_loc13_.parent.child1 == _loc9_)
                                 {
                                    _loc13_.parent.child1 = _loc13_;
                                 }
                                 else
                                 {
                                    _loc13_.parent.child2 = _loc13_;
                                 }
                              }
                              else
                              {
                                 _loc5_.root = _loc13_;
                              }
                              if(_loc15_.height > _loc16_.height)
                              {
                                 _loc13_.child2 = _loc15_;
                                 _loc9_.child2 = _loc16_;
                                 _loc16_.parent = _loc9_;
                                 _loc10_ = _loc9_.name_3;
                                 _loc17_ = _loc12_.name_3;
                                 _loc18_ = _loc16_.name_3;
                                 if(_loc17_.var_77 < _loc18_.var_77)
                                 {
                                    _loc10_.var_77 = _loc17_.var_77;
                                 }
                                 else
                                 {
                                    _loc10_.var_77 = _loc18_.var_77;
                                 }
                                 if(_loc17_.var_78 < _loc18_.var_78)
                                 {
                                    _loc10_.var_78 = _loc17_.var_78;
                                 }
                                 else
                                 {
                                    _loc10_.var_78 = _loc18_.var_78;
                                 }
                                 if(_loc17_.var_79 > _loc18_.var_79)
                                 {
                                    _loc10_.var_79 = _loc17_.var_79;
                                 }
                                 else
                                 {
                                    _loc10_.var_79 = _loc18_.var_79;
                                 }
                                 if(_loc17_.var_80 > _loc18_.var_80)
                                 {
                                    _loc10_.var_80 = _loc17_.var_80;
                                 }
                                 else
                                 {
                                    _loc10_.var_80 = _loc18_.var_80;
                                 }
                                 _loc10_ = _loc13_.name_3;
                                 _loc17_ = _loc9_.name_3;
                                 _loc18_ = _loc15_.name_3;
                                 if(_loc17_.var_77 < _loc18_.var_77)
                                 {
                                    _loc10_.var_77 = _loc17_.var_77;
                                 }
                                 else
                                 {
                                    _loc10_.var_77 = _loc18_.var_77;
                                 }
                                 if(_loc17_.var_78 < _loc18_.var_78)
                                 {
                                    _loc10_.var_78 = _loc17_.var_78;
                                 }
                                 else
                                 {
                                    _loc10_.var_78 = _loc18_.var_78;
                                 }
                                 if(_loc17_.var_79 > _loc18_.var_79)
                                 {
                                    _loc10_.var_79 = _loc17_.var_79;
                                 }
                                 else
                                 {
                                    _loc10_.var_79 = _loc18_.var_79;
                                 }
                                 if(_loc17_.var_80 > _loc18_.var_80)
                                 {
                                    _loc10_.var_80 = _loc17_.var_80;
                                 }
                                 else
                                 {
                                    _loc10_.var_80 = _loc18_.var_80;
                                 }
                                 _loc19_ = _loc12_.height;
                                 _loc20_ = _loc16_.height;
                                 _loc9_.height = 1 + (_loc19_ > _loc20_?_loc19_:_loc20_);
                                 _loc19_ = _loc9_.height;
                                 _loc20_ = _loc15_.height;
                                 _loc13_.height = 1 + (_loc19_ > _loc20_?_loc19_:_loc20_);
                              }
                              else
                              {
                                 _loc13_.child2 = _loc16_;
                                 _loc9_.child2 = _loc15_;
                                 _loc15_.parent = _loc9_;
                                 _loc10_ = _loc9_.name_3;
                                 _loc17_ = _loc12_.name_3;
                                 _loc18_ = _loc15_.name_3;
                                 if(_loc17_.var_77 < _loc18_.var_77)
                                 {
                                    _loc10_.var_77 = _loc17_.var_77;
                                 }
                                 else
                                 {
                                    _loc10_.var_77 = _loc18_.var_77;
                                 }
                                 if(_loc17_.var_78 < _loc18_.var_78)
                                 {
                                    _loc10_.var_78 = _loc17_.var_78;
                                 }
                                 else
                                 {
                                    _loc10_.var_78 = _loc18_.var_78;
                                 }
                                 if(_loc17_.var_79 > _loc18_.var_79)
                                 {
                                    _loc10_.var_79 = _loc17_.var_79;
                                 }
                                 else
                                 {
                                    _loc10_.var_79 = _loc18_.var_79;
                                 }
                                 if(_loc17_.var_80 > _loc18_.var_80)
                                 {
                                    _loc10_.var_80 = _loc17_.var_80;
                                 }
                                 else
                                 {
                                    _loc10_.var_80 = _loc18_.var_80;
                                 }
                                 _loc10_ = _loc13_.name_3;
                                 _loc17_ = _loc9_.name_3;
                                 _loc18_ = _loc16_.name_3;
                                 if(_loc17_.var_77 < _loc18_.var_77)
                                 {
                                    _loc10_.var_77 = _loc17_.var_77;
                                 }
                                 else
                                 {
                                    _loc10_.var_77 = _loc18_.var_77;
                                 }
                                 if(_loc17_.var_78 < _loc18_.var_78)
                                 {
                                    _loc10_.var_78 = _loc17_.var_78;
                                 }
                                 else
                                 {
                                    _loc10_.var_78 = _loc18_.var_78;
                                 }
                                 if(_loc17_.var_79 > _loc18_.var_79)
                                 {
                                    _loc10_.var_79 = _loc17_.var_79;
                                 }
                                 else
                                 {
                                    _loc10_.var_79 = _loc18_.var_79;
                                 }
                                 if(_loc17_.var_80 > _loc18_.var_80)
                                 {
                                    _loc10_.var_80 = _loc17_.var_80;
                                 }
                                 else
                                 {
                                    _loc10_.var_80 = _loc18_.var_80;
                                 }
                                 _loc19_ = _loc12_.height;
                                 _loc20_ = _loc15_.height;
                                 _loc9_.height = 1 + (_loc19_ > _loc20_?_loc19_:_loc20_);
                                 _loc19_ = _loc9_.height;
                                 _loc20_ = _loc16_.height;
                                 _loc13_.height = 1 + (_loc19_ > _loc20_?_loc19_:_loc20_);
                              }
                              _loc9_ = _loc13_;
                           }
                           else if(_loc14_ < -1)
                           {
                              _loc15_ = _loc12_.child1;
                              _loc16_ = _loc12_.child2;
                              _loc12_.child1 = _loc9_;
                              _loc12_.parent = _loc9_.parent;
                              _loc9_.parent = _loc12_;
                              if(_loc12_.parent != null)
                              {
                                 if(_loc12_.parent.child1 == _loc9_)
                                 {
                                    _loc12_.parent.child1 = _loc12_;
                                 }
                                 else
                                 {
                                    _loc12_.parent.child2 = _loc12_;
                                 }
                              }
                              else
                              {
                                 _loc5_.root = _loc12_;
                              }
                              if(_loc15_.height > _loc16_.height)
                              {
                                 _loc12_.child2 = _loc15_;
                                 _loc9_.child1 = _loc16_;
                                 _loc16_.parent = _loc9_;
                                 _loc10_ = _loc9_.name_3;
                                 _loc17_ = _loc13_.name_3;
                                 _loc18_ = _loc16_.name_3;
                                 if(_loc17_.var_77 < _loc18_.var_77)
                                 {
                                    _loc10_.var_77 = _loc17_.var_77;
                                 }
                                 else
                                 {
                                    _loc10_.var_77 = _loc18_.var_77;
                                 }
                                 if(_loc17_.var_78 < _loc18_.var_78)
                                 {
                                    _loc10_.var_78 = _loc17_.var_78;
                                 }
                                 else
                                 {
                                    _loc10_.var_78 = _loc18_.var_78;
                                 }
                                 if(_loc17_.var_79 > _loc18_.var_79)
                                 {
                                    _loc10_.var_79 = _loc17_.var_79;
                                 }
                                 else
                                 {
                                    _loc10_.var_79 = _loc18_.var_79;
                                 }
                                 if(_loc17_.var_80 > _loc18_.var_80)
                                 {
                                    _loc10_.var_80 = _loc17_.var_80;
                                 }
                                 else
                                 {
                                    _loc10_.var_80 = _loc18_.var_80;
                                 }
                                 _loc10_ = _loc12_.name_3;
                                 _loc17_ = _loc9_.name_3;
                                 _loc18_ = _loc15_.name_3;
                                 if(_loc17_.var_77 < _loc18_.var_77)
                                 {
                                    _loc10_.var_77 = _loc17_.var_77;
                                 }
                                 else
                                 {
                                    _loc10_.var_77 = _loc18_.var_77;
                                 }
                                 if(_loc17_.var_78 < _loc18_.var_78)
                                 {
                                    _loc10_.var_78 = _loc17_.var_78;
                                 }
                                 else
                                 {
                                    _loc10_.var_78 = _loc18_.var_78;
                                 }
                                 if(_loc17_.var_79 > _loc18_.var_79)
                                 {
                                    _loc10_.var_79 = _loc17_.var_79;
                                 }
                                 else
                                 {
                                    _loc10_.var_79 = _loc18_.var_79;
                                 }
                                 if(_loc17_.var_80 > _loc18_.var_80)
                                 {
                                    _loc10_.var_80 = _loc17_.var_80;
                                 }
                                 else
                                 {
                                    _loc10_.var_80 = _loc18_.var_80;
                                 }
                                 _loc19_ = _loc13_.height;
                                 _loc20_ = _loc16_.height;
                                 _loc9_.height = 1 + (_loc19_ > _loc20_?_loc19_:_loc20_);
                                 _loc19_ = _loc9_.height;
                                 _loc20_ = _loc15_.height;
                                 _loc12_.height = 1 + (_loc19_ > _loc20_?_loc19_:_loc20_);
                              }
                              else
                              {
                                 _loc12_.child2 = _loc16_;
                                 _loc9_.child1 = _loc15_;
                                 _loc15_.parent = _loc9_;
                                 _loc10_ = _loc9_.name_3;
                                 _loc17_ = _loc13_.name_3;
                                 _loc18_ = _loc15_.name_3;
                                 if(_loc17_.var_77 < _loc18_.var_77)
                                 {
                                    _loc10_.var_77 = _loc17_.var_77;
                                 }
                                 else
                                 {
                                    _loc10_.var_77 = _loc18_.var_77;
                                 }
                                 if(_loc17_.var_78 < _loc18_.var_78)
                                 {
                                    _loc10_.var_78 = _loc17_.var_78;
                                 }
                                 else
                                 {
                                    _loc10_.var_78 = _loc18_.var_78;
                                 }
                                 if(_loc17_.var_79 > _loc18_.var_79)
                                 {
                                    _loc10_.var_79 = _loc17_.var_79;
                                 }
                                 else
                                 {
                                    _loc10_.var_79 = _loc18_.var_79;
                                 }
                                 if(_loc17_.var_80 > _loc18_.var_80)
                                 {
                                    _loc10_.var_80 = _loc17_.var_80;
                                 }
                                 else
                                 {
                                    _loc10_.var_80 = _loc18_.var_80;
                                 }
                                 _loc10_ = _loc12_.name_3;
                                 _loc17_ = _loc9_.name_3;
                                 _loc18_ = _loc16_.name_3;
                                 if(_loc17_.var_77 < _loc18_.var_77)
                                 {
                                    _loc10_.var_77 = _loc17_.var_77;
                                 }
                                 else
                                 {
                                    _loc10_.var_77 = _loc18_.var_77;
                                 }
                                 if(_loc17_.var_78 < _loc18_.var_78)
                                 {
                                    _loc10_.var_78 = _loc17_.var_78;
                                 }
                                 else
                                 {
                                    _loc10_.var_78 = _loc18_.var_78;
                                 }
                                 if(_loc17_.var_79 > _loc18_.var_79)
                                 {
                                    _loc10_.var_79 = _loc17_.var_79;
                                 }
                                 else
                                 {
                                    _loc10_.var_79 = _loc18_.var_79;
                                 }
                                 if(_loc17_.var_80 > _loc18_.var_80)
                                 {
                                    _loc10_.var_80 = _loc17_.var_80;
                                 }
                                 else
                                 {
                                    _loc10_.var_80 = _loc18_.var_80;
                                 }
                                 _loc19_ = _loc13_.height;
                                 _loc20_ = _loc15_.height;
                                 _loc9_.height = 1 + (_loc19_ > _loc20_?_loc19_:_loc20_);
                                 _loc19_ = _loc9_.height;
                                 _loc20_ = _loc16_.height;
                                 _loc12_.height = 1 + (_loc19_ > _loc20_?_loc19_:_loc20_);
                              }
                              _loc9_ = _loc12_;
                           }
                           else
                           {
                              _loc9_ = _loc9_;
                           }
                        }
                        _loc12_ = _loc9_.child1;
                        _loc13_ = _loc9_.child2;
                        _loc10_ = _loc9_.name_3;
                        _loc17_ = _loc12_.name_3;
                        _loc18_ = _loc13_.name_3;
                        if(_loc17_.var_77 < _loc18_.var_77)
                        {
                           _loc10_.var_77 = _loc17_.var_77;
                        }
                        else
                        {
                           _loc10_.var_77 = _loc18_.var_77;
                        }
                        if(_loc17_.var_78 < _loc18_.var_78)
                        {
                           _loc10_.var_78 = _loc17_.var_78;
                        }
                        else
                        {
                           _loc10_.var_78 = _loc18_.var_78;
                        }
                        if(_loc17_.var_79 > _loc18_.var_79)
                        {
                           _loc10_.var_79 = _loc17_.var_79;
                        }
                        else
                        {
                           _loc10_.var_79 = _loc18_.var_79;
                        }
                        if(_loc17_.var_80 > _loc18_.var_80)
                        {
                           _loc10_.var_80 = _loc17_.var_80;
                        }
                        else
                        {
                           _loc10_.var_80 = _loc18_.var_80;
                        }
                        _loc14_ = int(_loc12_.height);
                        _loc19_ = _loc13_.height;
                        _loc9_.height = 1 + (_loc14_ > _loc19_?_loc14_:_loc19_);
                        _loc9_ = _loc9_.parent;
                     }
                  }
                  else
                  {
                     _loc5_.root = _loc8_;
                     _loc8_.parent = null;
                     _loc9_ = _loc6_;
                     _loc9_.height = -1;
                     _loc10_ = _loc9_.name_3;
                     if(_loc10_.outer != null)
                     {
                        _loc10_.outer.zpp_inner = null;
                        _loc10_.outer = null;
                     }
                     _loc11_ = null;
                     _loc10_.var_239 = _loc11_;
                     _loc10_.var_238 = _loc11_;
                     _loc10_._invalidate = null;
                     _loc10_._validate = null;
                     _loc10_.next = ZPP_AABB.var_72;
                     ZPP_AABB.var_72 = _loc10_;
                     _loc12_ = null;
                     _loc9_.parent = _loc12_;
                     _loc12_ = _loc12_;
                     _loc9_.child2 = _loc12_;
                     _loc9_.child1 = _loc12_;
                     _loc9_.next = null;
                     _loc9_.var_275 = null;
                     _loc9_.var_294 = null;
                     _loc9_.next = ZPP_AABBNode.var_72;
                     ZPP_AABBNode.var_72 = _loc9_;
                  }
               }
            }
            else
            {
               _loc3_.var_374 = false;
            }
            _loc10_ = _loc3_.name_3;
            if(!param1.var_371)
            {
               if(_loc4_.var_149)
               {
                  if(_loc4_.body != null)
                  {
                     _loc4_.var_149 = false;
                     if(_loc4_.type == class_223.var_131)
                     {
                        _loc21_ = _loc4_.var_102;
                        if(_loc21_.var_139)
                        {
                           if(_loc21_.body != null)
                           {
                              _loc21_.var_139 = false;
                              if(_loc21_.var_140)
                              {
                                 _loc21_.var_140 = false;
                                 if(_loc21_.type == class_223.var_155)
                                 {
                                    _loc22_ = _loc21_.name_6;
                                    if(_loc22_.var_88.next.next == null)
                                    {
                                       _loc22_.var_82 = _loc22_.var_88.next.x;
                                       _loc22_.var_81 = _loc22_.var_88.next.y;
                                       null;
                                    }
                                    else if(_loc22_.var_88.next.next.next == null)
                                    {
                                       _loc22_.var_82 = _loc22_.var_88.next.x;
                                       _loc22_.var_81 = _loc22_.var_88.next.y;
                                       _loc23_ = 1;
                                       _loc22_.var_82 = Number(_loc22_.var_82 + _loc22_.var_88.next.next.x * _loc23_);
                                       _loc22_.var_81 = Number(_loc22_.var_81 + _loc22_.var_88.next.next.y * _loc23_);
                                       _loc23_ = 0.5;
                                       _loc22_.var_82 = _loc22_.var_82 * _loc23_;
                                       _loc22_.var_81 = _loc22_.var_81 * _loc23_;
                                    }
                                    else
                                    {
                                       _loc22_.var_82 = 0;
                                       _loc22_.var_81 = 0;
                                       _loc23_ = 0;
                                       _loc24_ = _loc22_.var_88.next;
                                       _loc25_ = _loc24_;
                                       _loc24_ = _loc24_.next;
                                       _loc26_ = _loc24_;
                                       _loc24_ = _loc24_.next;
                                       while(_loc24_ != null)
                                       {
                                          _loc27_ = _loc24_;
                                          _loc23_ = Number(Number(_loc23_ + _loc26_.x * (_loc27_.y - _loc25_.y)));
                                          _loc28_ = _loc27_.y * _loc26_.x - _loc27_.x * _loc26_.y;
                                          _loc22_.var_82 = Number(_loc22_.var_82 + (_loc26_.x + _loc27_.x) * _loc28_);
                                          _loc22_.var_81 = Number(_loc22_.var_81 + (_loc26_.y + _loc27_.y) * _loc28_);
                                          _loc25_ = _loc26_;
                                          _loc26_ = _loc27_;
                                          _loc24_ = _loc24_.next;
                                       }
                                       _loc24_ = _loc22_.var_88.next;
                                       _loc27_ = _loc24_;
                                       _loc23_ = Number(Number(_loc23_ + _loc26_.x * (_loc27_.y - _loc25_.y)));
                                       _loc28_ = _loc27_.y * _loc26_.x - _loc27_.x * _loc26_.y;
                                       _loc22_.var_82 = Number(_loc22_.var_82 + (_loc26_.x + _loc27_.x) * _loc28_);
                                       _loc22_.var_81 = Number(_loc22_.var_81 + (_loc26_.y + _loc27_.y) * _loc28_);
                                       _loc25_ = _loc26_;
                                       _loc26_ = _loc27_;
                                       _loc24_ = _loc24_.next;
                                       _loc29_ = _loc24_;
                                       _loc23_ = Number(Number(_loc23_ + _loc26_.x * (_loc29_.y - _loc25_.y)));
                                       _loc28_ = _loc29_.y * _loc26_.x - _loc29_.x * _loc26_.y;
                                       _loc22_.var_82 = Number(_loc22_.var_82 + (_loc26_.x + _loc29_.x) * _loc28_);
                                       _loc22_.var_81 = Number(_loc22_.var_81 + (_loc26_.y + _loc29_.y) * _loc28_);
                                       _loc23_ = Number(1 / (3 * _loc23_));
                                       _loc28_ = _loc23_;
                                       _loc22_.var_82 = _loc22_.var_82 * _loc28_;
                                       _loc22_.var_81 = _loc22_.var_81 * _loc28_;
                                    }
                                 }
                                 if(_loc21_.var_115 != null)
                                 {
                                    _loc21_.var_115.zpp_inner.x = _loc21_.var_82;
                                    _loc21_.var_115.zpp_inner.y = _loc21_.var_81;
                                 }
                              }
                              _loc30_ = _loc21_.body;
                              if(_loc30_.var_113)
                              {
                                 _loc30_.var_113 = false;
                                 _loc30_.var_84 = Number(Math.sin(_loc30_.var_93));
                                 _loc30_.var_83 = Number(Math.cos(_loc30_.var_93));
                                 null;
                              }
                              _loc21_.var_99 = Number(_loc21_.body.var_95 + (_loc21_.body.var_83 * _loc21_.var_82 - _loc21_.body.var_84 * _loc21_.var_81));
                              _loc21_.var_100 = Number(_loc21_.body.var_96 + (Number(_loc21_.var_82 * _loc21_.body.var_84 + _loc21_.var_81 * _loc21_.body.var_83)));
                           }
                        }
                        _loc23_ = Number(_loc21_.radius);
                        _loc28_ = _loc21_.radius;
                        _loc21_.name_3.var_77 = _loc21_.var_99 - _loc23_;
                        _loc21_.name_3.var_78 = _loc21_.var_100 - _loc28_;
                        _loc21_.name_3.var_79 = Number(_loc21_.var_99 + _loc23_);
                        _loc21_.name_3.var_80 = Number(_loc21_.var_100 + _loc28_);
                     }
                     else
                     {
                        _loc22_ = _loc4_.name_6;
                        if(_loc22_.var_153)
                        {
                           if(_loc22_.body != null)
                           {
                              _loc22_.var_153 = false;
                              _loc22_.method_116();
                              _loc30_ = _loc22_.body;
                              if(_loc30_.var_113)
                              {
                                 _loc30_.var_113 = false;
                                 _loc30_.var_84 = Number(Math.sin(_loc30_.var_93));
                                 _loc30_.var_83 = Number(Math.cos(_loc30_.var_93));
                                 null;
                              }
                              _loc24_ = _loc22_.var_88.next;
                              _loc25_ = _loc22_.var_107.next;
                              while(_loc25_ != null)
                              {
                                 _loc26_ = _loc25_;
                                 _loc27_ = _loc24_;
                                 _loc24_ = _loc24_.next;
                                 _loc26_.x = Number(_loc22_.body.var_95 + (_loc22_.body.var_83 * _loc27_.x - _loc22_.body.var_84 * _loc27_.y));
                                 _loc26_.y = Number(_loc22_.body.var_96 + (Number(_loc27_.x * _loc22_.body.var_84 + _loc27_.y * _loc22_.body.var_83)));
                                 _loc25_ = _loc25_.next;
                              }
                           }
                        }
                        _loc24_ = _loc22_.var_107.next;
                        _loc22_.name_3.var_77 = _loc24_.x;
                        _loc22_.name_3.var_78 = _loc24_.y;
                        _loc22_.name_3.var_79 = _loc24_.x;
                        _loc22_.name_3.var_80 = _loc24_.y;
                        _loc25_ = _loc22_.var_107.next.next;
                        while(_loc25_ != null)
                        {
                           _loc26_ = _loc25_;
                           if(_loc26_.x < _loc22_.name_3.var_77)
                           {
                              _loc22_.name_3.var_77 = _loc26_.x;
                           }
                           if(_loc26_.x > _loc22_.name_3.var_79)
                           {
                              _loc22_.name_3.var_79 = _loc26_.x;
                           }
                           if(_loc26_.y < _loc22_.name_3.var_78)
                           {
                              _loc22_.name_3.var_78 = _loc26_.y;
                           }
                           if(_loc26_.y > _loc22_.name_3.var_80)
                           {
                              _loc22_.name_3.var_80 = _loc26_.y;
                           }
                           _loc25_ = _loc25_.next;
                        }
                     }
                  }
               }
            }
            _loc17_ = _loc4_.name_3;
            _loc10_.var_77 = _loc17_.var_77 - 3;
            _loc10_.var_78 = _loc17_.var_78 - 3;
            _loc10_.var_79 = Number(_loc17_.var_79 + 3);
            _loc10_.var_80 = Number(_loc17_.var_80 + 3);
            if(_loc4_.body.type == class_223.var_240)
            {
               _loc31_ = false;
               _loc3_.var_451 = _loc31_;
               §§push(_loc31_);
            }
            else
            {
               _loc31_ = !_loc4_.body.var_112.var_129;
               _loc3_.var_451 = _loc31_;
               §§push(_loc31_);
            }
            if(§§pop())
            {
               _loc5_ = var_152;
            }
            else
            {
               _loc5_ = var_151;
            }
            if(_loc5_.root == null)
            {
               _loc5_.root = _loc3_;
               _loc5_.root.parent = null;
            }
            else
            {
               _loc17_ = _loc3_.name_3;
               _loc6_ = _loc5_.root;
               while(_loc6_.child1 != null)
               {
                  _loc7_ = _loc6_.child1;
                  _loc8_ = _loc6_.child2;
                  _loc18_ = _loc6_.name_3;
                  _loc23_ = Number((_loc18_.var_79 - _loc18_.var_77 + (_loc18_.var_80 - _loc18_.var_78)) * 2);
                  _loc18_ = class_338.var_250;
                  _loc32_ = _loc6_.name_3;
                  if(_loc32_.var_77 < _loc17_.var_77)
                  {
                     _loc18_.var_77 = _loc32_.var_77;
                  }
                  else
                  {
                     _loc18_.var_77 = _loc17_.var_77;
                  }
                  if(_loc32_.var_78 < _loc17_.var_78)
                  {
                     _loc18_.var_78 = _loc32_.var_78;
                  }
                  else
                  {
                     _loc18_.var_78 = _loc17_.var_78;
                  }
                  if(_loc32_.var_79 > _loc17_.var_79)
                  {
                     _loc18_.var_79 = _loc32_.var_79;
                  }
                  else
                  {
                     _loc18_.var_79 = _loc17_.var_79;
                  }
                  if(_loc32_.var_80 > _loc17_.var_80)
                  {
                     _loc18_.var_80 = _loc32_.var_80;
                  }
                  else
                  {
                     _loc18_.var_80 = _loc17_.var_80;
                  }
                  _loc18_ = class_338.var_250;
                  _loc28_ = (_loc18_.var_79 - _loc18_.var_77 + (_loc18_.var_80 - _loc18_.var_78)) * 2;
                  _loc33_ = 2 * _loc28_;
                  _loc34_ = 2 * (_loc28_ - _loc23_);
                  _loc18_ = class_338.var_250;
                  _loc32_ = _loc7_.name_3;
                  if(_loc17_.var_77 < _loc32_.var_77)
                  {
                     _loc18_.var_77 = _loc17_.var_77;
                  }
                  else
                  {
                     _loc18_.var_77 = _loc32_.var_77;
                  }
                  if(_loc17_.var_78 < _loc32_.var_78)
                  {
                     _loc18_.var_78 = _loc17_.var_78;
                  }
                  else
                  {
                     _loc18_.var_78 = _loc32_.var_78;
                  }
                  if(_loc17_.var_79 > _loc32_.var_79)
                  {
                     _loc18_.var_79 = _loc17_.var_79;
                  }
                  else
                  {
                     _loc18_.var_79 = _loc32_.var_79;
                  }
                  if(_loc17_.var_80 > _loc32_.var_80)
                  {
                     _loc18_.var_80 = _loc17_.var_80;
                  }
                  else
                  {
                     _loc18_.var_80 = _loc32_.var_80;
                  }
                  if(_loc7_.child1 == null)
                  {
                     _loc18_ = class_338.var_250;
                     _loc35_ = Number((_loc18_.var_79 - _loc18_.var_77 + (_loc18_.var_80 - _loc18_.var_78)) * 2 + _loc34_);
                  }
                  else
                  {
                     _loc18_ = _loc7_.name_3;
                     _loc36_ = (_loc18_.var_79 - _loc18_.var_77 + (_loc18_.var_80 - _loc18_.var_78)) * 2;
                     _loc18_ = class_338.var_250;
                     _loc37_ = (_loc18_.var_79 - _loc18_.var_77 + (_loc18_.var_80 - _loc18_.var_78)) * 2;
                     _loc35_ = Number(_loc37_ - _loc36_ + _loc34_);
                  }
                  _loc18_ = class_338.var_250;
                  _loc32_ = _loc8_.name_3;
                  if(_loc17_.var_77 < _loc32_.var_77)
                  {
                     _loc18_.var_77 = _loc17_.var_77;
                  }
                  else
                  {
                     _loc18_.var_77 = _loc32_.var_77;
                  }
                  if(_loc17_.var_78 < _loc32_.var_78)
                  {
                     _loc18_.var_78 = _loc17_.var_78;
                  }
                  else
                  {
                     _loc18_.var_78 = _loc32_.var_78;
                  }
                  if(_loc17_.var_79 > _loc32_.var_79)
                  {
                     _loc18_.var_79 = _loc17_.var_79;
                  }
                  else
                  {
                     _loc18_.var_79 = _loc32_.var_79;
                  }
                  if(_loc17_.var_80 > _loc32_.var_80)
                  {
                     _loc18_.var_80 = _loc17_.var_80;
                  }
                  else
                  {
                     _loc18_.var_80 = _loc32_.var_80;
                  }
                  if(_loc8_.child1 == null)
                  {
                     _loc18_ = class_338.var_250;
                     _loc36_ = Number((_loc18_.var_79 - _loc18_.var_77 + (_loc18_.var_80 - _loc18_.var_78)) * 2 + _loc34_);
                  }
                  else
                  {
                     _loc18_ = _loc8_.name_3;
                     _loc37_ = (_loc18_.var_79 - _loc18_.var_77 + (_loc18_.var_80 - _loc18_.var_78)) * 2;
                     _loc18_ = class_338.var_250;
                     _loc38_ = (_loc18_.var_79 - _loc18_.var_77 + (_loc18_.var_80 - _loc18_.var_78)) * 2;
                     _loc36_ = Number(_loc38_ - _loc37_ + _loc34_);
                  }
                  if(_loc33_ < _loc35_ && _loc33_ < _loc36_)
                  {
                     break;
                  }
                  if(_loc35_ < _loc36_)
                  {
                     _loc6_ = _loc7_;
                  }
                  else
                  {
                     _loc6_ = _loc8_;
                  }
               }
               _loc7_ = _loc6_;
               _loc8_ = _loc7_.parent;
               if(ZPP_AABBNode.var_72 == null)
               {
                  _loc9_ = new ZPP_AABBNode();
               }
               else
               {
                  _loc9_ = ZPP_AABBNode.var_72;
                  ZPP_AABBNode.var_72 = _loc9_.next;
                  _loc9_.next = null;
               }
               if(ZPP_AABB.var_72 == null)
               {
                  _loc9_.name_3 = new ZPP_AABB();
               }
               else
               {
                  _loc9_.name_3 = ZPP_AABB.var_72;
                  ZPP_AABB.var_72 = _loc9_.name_3.next;
                  _loc9_.name_3.next = null;
               }
               null;
               _loc9_.var_407 = false;
               _loc9_.var_426 = false;
               _loc9_.var_374 = false;
               _loc9_.parent = _loc8_;
               _loc18_ = _loc9_.name_3;
               _loc32_ = _loc7_.name_3;
               if(_loc17_.var_77 < _loc32_.var_77)
               {
                  _loc18_.var_77 = _loc17_.var_77;
               }
               else
               {
                  _loc18_.var_77 = _loc32_.var_77;
               }
               if(_loc17_.var_78 < _loc32_.var_78)
               {
                  _loc18_.var_78 = _loc17_.var_78;
               }
               else
               {
                  _loc18_.var_78 = _loc32_.var_78;
               }
               if(_loc17_.var_79 > _loc32_.var_79)
               {
                  _loc18_.var_79 = _loc17_.var_79;
               }
               else
               {
                  _loc18_.var_79 = _loc32_.var_79;
               }
               if(_loc17_.var_80 > _loc32_.var_80)
               {
                  _loc18_.var_80 = _loc17_.var_80;
               }
               else
               {
                  _loc18_.var_80 = _loc32_.var_80;
               }
               _loc9_.height = _loc7_.height + 1;
               if(_loc8_ != null)
               {
                  if(_loc8_.child1 == _loc7_)
                  {
                     _loc8_.child1 = _loc9_;
                  }
                  else
                  {
                     _loc8_.child2 = _loc9_;
                  }
                  _loc9_.child1 = _loc7_;
                  _loc9_.child2 = _loc3_;
                  _loc7_.parent = _loc9_;
                  _loc3_.parent = _loc9_;
               }
               else
               {
                  _loc9_.child1 = _loc7_;
                  _loc9_.child2 = _loc3_;
                  _loc7_.parent = _loc9_;
                  _loc3_.parent = _loc9_;
                  _loc5_.root = _loc9_;
               }
               _loc6_ = _loc3_.parent;
               while(_loc6_ != null)
               {
                  if(_loc6_.child1 == null || _loc6_.height < 2)
                  {
                     _loc6_ = _loc6_;
                  }
                  else
                  {
                     _loc12_ = _loc6_.child1;
                     _loc13_ = _loc6_.child2;
                     _loc14_ = _loc13_.height - _loc12_.height;
                     if(_loc14_ > 1)
                     {
                        _loc15_ = _loc13_.child1;
                        _loc16_ = _loc13_.child2;
                        _loc13_.child1 = _loc6_;
                        _loc13_.parent = _loc6_.parent;
                        _loc6_.parent = _loc13_;
                        if(_loc13_.parent != null)
                        {
                           if(_loc13_.parent.child1 == _loc6_)
                           {
                              _loc13_.parent.child1 = _loc13_;
                           }
                           else
                           {
                              _loc13_.parent.child2 = _loc13_;
                           }
                        }
                        else
                        {
                           _loc5_.root = _loc13_;
                        }
                        if(_loc15_.height > _loc16_.height)
                        {
                           _loc13_.child2 = _loc15_;
                           _loc6_.child2 = _loc16_;
                           _loc16_.parent = _loc6_;
                           _loc18_ = _loc6_.name_3;
                           _loc32_ = _loc12_.name_3;
                           _loc39_ = _loc16_.name_3;
                           if(_loc32_.var_77 < _loc39_.var_77)
                           {
                              _loc18_.var_77 = _loc32_.var_77;
                           }
                           else
                           {
                              _loc18_.var_77 = _loc39_.var_77;
                           }
                           if(_loc32_.var_78 < _loc39_.var_78)
                           {
                              _loc18_.var_78 = _loc32_.var_78;
                           }
                           else
                           {
                              _loc18_.var_78 = _loc39_.var_78;
                           }
                           if(_loc32_.var_79 > _loc39_.var_79)
                           {
                              _loc18_.var_79 = _loc32_.var_79;
                           }
                           else
                           {
                              _loc18_.var_79 = _loc39_.var_79;
                           }
                           if(_loc32_.var_80 > _loc39_.var_80)
                           {
                              _loc18_.var_80 = _loc32_.var_80;
                           }
                           else
                           {
                              _loc18_.var_80 = _loc39_.var_80;
                           }
                           _loc18_ = _loc13_.name_3;
                           _loc32_ = _loc6_.name_3;
                           _loc39_ = _loc15_.name_3;
                           if(_loc32_.var_77 < _loc39_.var_77)
                           {
                              _loc18_.var_77 = _loc32_.var_77;
                           }
                           else
                           {
                              _loc18_.var_77 = _loc39_.var_77;
                           }
                           if(_loc32_.var_78 < _loc39_.var_78)
                           {
                              _loc18_.var_78 = _loc32_.var_78;
                           }
                           else
                           {
                              _loc18_.var_78 = _loc39_.var_78;
                           }
                           if(_loc32_.var_79 > _loc39_.var_79)
                           {
                              _loc18_.var_79 = _loc32_.var_79;
                           }
                           else
                           {
                              _loc18_.var_79 = _loc39_.var_79;
                           }
                           if(_loc32_.var_80 > _loc39_.var_80)
                           {
                              _loc18_.var_80 = _loc32_.var_80;
                           }
                           else
                           {
                              _loc18_.var_80 = _loc39_.var_80;
                           }
                           _loc19_ = _loc12_.height;
                           _loc20_ = _loc16_.height;
                           _loc6_.height = 1 + (_loc19_ > _loc20_?_loc19_:_loc20_);
                           _loc19_ = _loc6_.height;
                           _loc20_ = _loc15_.height;
                           _loc13_.height = 1 + (_loc19_ > _loc20_?_loc19_:_loc20_);
                        }
                        else
                        {
                           _loc13_.child2 = _loc16_;
                           _loc6_.child2 = _loc15_;
                           _loc15_.parent = _loc6_;
                           _loc18_ = _loc6_.name_3;
                           _loc32_ = _loc12_.name_3;
                           _loc39_ = _loc15_.name_3;
                           if(_loc32_.var_77 < _loc39_.var_77)
                           {
                              _loc18_.var_77 = _loc32_.var_77;
                           }
                           else
                           {
                              _loc18_.var_77 = _loc39_.var_77;
                           }
                           if(_loc32_.var_78 < _loc39_.var_78)
                           {
                              _loc18_.var_78 = _loc32_.var_78;
                           }
                           else
                           {
                              _loc18_.var_78 = _loc39_.var_78;
                           }
                           if(_loc32_.var_79 > _loc39_.var_79)
                           {
                              _loc18_.var_79 = _loc32_.var_79;
                           }
                           else
                           {
                              _loc18_.var_79 = _loc39_.var_79;
                           }
                           if(_loc32_.var_80 > _loc39_.var_80)
                           {
                              _loc18_.var_80 = _loc32_.var_80;
                           }
                           else
                           {
                              _loc18_.var_80 = _loc39_.var_80;
                           }
                           _loc18_ = _loc13_.name_3;
                           _loc32_ = _loc6_.name_3;
                           _loc39_ = _loc16_.name_3;
                           if(_loc32_.var_77 < _loc39_.var_77)
                           {
                              _loc18_.var_77 = _loc32_.var_77;
                           }
                           else
                           {
                              _loc18_.var_77 = _loc39_.var_77;
                           }
                           if(_loc32_.var_78 < _loc39_.var_78)
                           {
                              _loc18_.var_78 = _loc32_.var_78;
                           }
                           else
                           {
                              _loc18_.var_78 = _loc39_.var_78;
                           }
                           if(_loc32_.var_79 > _loc39_.var_79)
                           {
                              _loc18_.var_79 = _loc32_.var_79;
                           }
                           else
                           {
                              _loc18_.var_79 = _loc39_.var_79;
                           }
                           if(_loc32_.var_80 > _loc39_.var_80)
                           {
                              _loc18_.var_80 = _loc32_.var_80;
                           }
                           else
                           {
                              _loc18_.var_80 = _loc39_.var_80;
                           }
                           _loc19_ = _loc12_.height;
                           _loc20_ = _loc15_.height;
                           _loc6_.height = 1 + (_loc19_ > _loc20_?_loc19_:_loc20_);
                           _loc19_ = _loc6_.height;
                           _loc20_ = _loc16_.height;
                           _loc13_.height = 1 + (_loc19_ > _loc20_?_loc19_:_loc20_);
                        }
                        _loc6_ = _loc13_;
                     }
                     else if(_loc14_ < -1)
                     {
                        _loc15_ = _loc12_.child1;
                        _loc16_ = _loc12_.child2;
                        _loc12_.child1 = _loc6_;
                        _loc12_.parent = _loc6_.parent;
                        _loc6_.parent = _loc12_;
                        if(_loc12_.parent != null)
                        {
                           if(_loc12_.parent.child1 == _loc6_)
                           {
                              _loc12_.parent.child1 = _loc12_;
                           }
                           else
                           {
                              _loc12_.parent.child2 = _loc12_;
                           }
                        }
                        else
                        {
                           _loc5_.root = _loc12_;
                        }
                        if(_loc15_.height > _loc16_.height)
                        {
                           _loc12_.child2 = _loc15_;
                           _loc6_.child1 = _loc16_;
                           _loc16_.parent = _loc6_;
                           _loc18_ = _loc6_.name_3;
                           _loc32_ = _loc13_.name_3;
                           _loc39_ = _loc16_.name_3;
                           if(_loc32_.var_77 < _loc39_.var_77)
                           {
                              _loc18_.var_77 = _loc32_.var_77;
                           }
                           else
                           {
                              _loc18_.var_77 = _loc39_.var_77;
                           }
                           if(_loc32_.var_78 < _loc39_.var_78)
                           {
                              _loc18_.var_78 = _loc32_.var_78;
                           }
                           else
                           {
                              _loc18_.var_78 = _loc39_.var_78;
                           }
                           if(_loc32_.var_79 > _loc39_.var_79)
                           {
                              _loc18_.var_79 = _loc32_.var_79;
                           }
                           else
                           {
                              _loc18_.var_79 = _loc39_.var_79;
                           }
                           if(_loc32_.var_80 > _loc39_.var_80)
                           {
                              _loc18_.var_80 = _loc32_.var_80;
                           }
                           else
                           {
                              _loc18_.var_80 = _loc39_.var_80;
                           }
                           _loc18_ = _loc12_.name_3;
                           _loc32_ = _loc6_.name_3;
                           _loc39_ = _loc15_.name_3;
                           if(_loc32_.var_77 < _loc39_.var_77)
                           {
                              _loc18_.var_77 = _loc32_.var_77;
                           }
                           else
                           {
                              _loc18_.var_77 = _loc39_.var_77;
                           }
                           if(_loc32_.var_78 < _loc39_.var_78)
                           {
                              _loc18_.var_78 = _loc32_.var_78;
                           }
                           else
                           {
                              _loc18_.var_78 = _loc39_.var_78;
                           }
                           if(_loc32_.var_79 > _loc39_.var_79)
                           {
                              _loc18_.var_79 = _loc32_.var_79;
                           }
                           else
                           {
                              _loc18_.var_79 = _loc39_.var_79;
                           }
                           if(_loc32_.var_80 > _loc39_.var_80)
                           {
                              _loc18_.var_80 = _loc32_.var_80;
                           }
                           else
                           {
                              _loc18_.var_80 = _loc39_.var_80;
                           }
                           _loc19_ = _loc13_.height;
                           _loc20_ = _loc16_.height;
                           _loc6_.height = 1 + (_loc19_ > _loc20_?_loc19_:_loc20_);
                           _loc19_ = _loc6_.height;
                           _loc20_ = _loc15_.height;
                           _loc12_.height = 1 + (_loc19_ > _loc20_?_loc19_:_loc20_);
                        }
                        else
                        {
                           _loc12_.child2 = _loc16_;
                           _loc6_.child1 = _loc15_;
                           _loc15_.parent = _loc6_;
                           _loc18_ = _loc6_.name_3;
                           _loc32_ = _loc13_.name_3;
                           _loc39_ = _loc15_.name_3;
                           if(_loc32_.var_77 < _loc39_.var_77)
                           {
                              _loc18_.var_77 = _loc32_.var_77;
                           }
                           else
                           {
                              _loc18_.var_77 = _loc39_.var_77;
                           }
                           if(_loc32_.var_78 < _loc39_.var_78)
                           {
                              _loc18_.var_78 = _loc32_.var_78;
                           }
                           else
                           {
                              _loc18_.var_78 = _loc39_.var_78;
                           }
                           if(_loc32_.var_79 > _loc39_.var_79)
                           {
                              _loc18_.var_79 = _loc32_.var_79;
                           }
                           else
                           {
                              _loc18_.var_79 = _loc39_.var_79;
                           }
                           if(_loc32_.var_80 > _loc39_.var_80)
                           {
                              _loc18_.var_80 = _loc32_.var_80;
                           }
                           else
                           {
                              _loc18_.var_80 = _loc39_.var_80;
                           }
                           _loc18_ = _loc12_.name_3;
                           _loc32_ = _loc6_.name_3;
                           _loc39_ = _loc16_.name_3;
                           if(_loc32_.var_77 < _loc39_.var_77)
                           {
                              _loc18_.var_77 = _loc32_.var_77;
                           }
                           else
                           {
                              _loc18_.var_77 = _loc39_.var_77;
                           }
                           if(_loc32_.var_78 < _loc39_.var_78)
                           {
                              _loc18_.var_78 = _loc32_.var_78;
                           }
                           else
                           {
                              _loc18_.var_78 = _loc39_.var_78;
                           }
                           if(_loc32_.var_79 > _loc39_.var_79)
                           {
                              _loc18_.var_79 = _loc32_.var_79;
                           }
                           else
                           {
                              _loc18_.var_79 = _loc39_.var_79;
                           }
                           if(_loc32_.var_80 > _loc39_.var_80)
                           {
                              _loc18_.var_80 = _loc32_.var_80;
                           }
                           else
                           {
                              _loc18_.var_80 = _loc39_.var_80;
                           }
                           _loc19_ = _loc13_.height;
                           _loc20_ = _loc15_.height;
                           _loc6_.height = 1 + (_loc19_ > _loc20_?_loc19_:_loc20_);
                           _loc19_ = _loc6_.height;
                           _loc20_ = _loc16_.height;
                           _loc12_.height = 1 + (_loc19_ > _loc20_?_loc19_:_loc20_);
                        }
                        _loc6_ = _loc12_;
                     }
                     else
                     {
                        _loc6_ = _loc6_;
                     }
                  }
                  _loc12_ = _loc6_.child1;
                  _loc13_ = _loc6_.child2;
                  _loc14_ = int(_loc12_.height);
                  _loc19_ = _loc13_.height;
                  _loc6_.height = 1 + (_loc14_ > _loc19_?_loc14_:_loc19_);
                  _loc18_ = _loc6_.name_3;
                  _loc32_ = _loc12_.name_3;
                  _loc39_ = _loc13_.name_3;
                  if(_loc32_.var_77 < _loc39_.var_77)
                  {
                     _loc18_.var_77 = _loc32_.var_77;
                  }
                  else
                  {
                     _loc18_.var_77 = _loc39_.var_77;
                  }
                  if(_loc32_.var_78 < _loc39_.var_78)
                  {
                     _loc18_.var_78 = _loc32_.var_78;
                  }
                  else
                  {
                     _loc18_.var_78 = _loc39_.var_78;
                  }
                  if(_loc32_.var_79 > _loc39_.var_79)
                  {
                     _loc18_.var_79 = _loc32_.var_79;
                  }
                  else
                  {
                     _loc18_.var_79 = _loc39_.var_79;
                  }
                  if(_loc32_.var_80 > _loc39_.var_80)
                  {
                     _loc18_.var_80 = _loc32_.var_80;
                  }
                  else
                  {
                     _loc18_.var_80 = _loc39_.var_80;
                  }
                  _loc6_ = _loc6_.parent;
               }
            }
            _loc3_.var_426 = false;
            _loc3_ = _loc3_.var_275;
         }
         while(var_202 != null)
         {
            _loc7_ = var_202;
            var_202 = _loc7_.var_275;
            _loc7_.var_275 = null;
            _loc6_ = _loc7_;
            if(!_loc6_.var_407)
            {
               _loc6_.var_407 = false;
               _loc4_ = _loc6_.name_7;
               _loc30_ = _loc4_.body;
               if(!_loc30_.var_112.var_129)
               {
                  _loc10_ = _loc6_.name_3;
                  _loc7_ = null;
                  if(var_152.root != null)
                  {
                     var_152.root.next = _loc7_;
                     _loc7_ = var_152.root;
                  }
                  while(_loc7_ != null)
                  {
                     _loc9_ = _loc7_;
                     _loc7_ = _loc9_.next;
                     _loc9_.next = null;
                     _loc8_ = _loc9_;
                     if(_loc8_ != _loc6_)
                     {
                        if(_loc8_.child1 == null)
                        {
                           _loc40_ = _loc8_.name_7;
                           if(_loc40_.body != _loc4_.body && !(_loc40_.body.type == class_223.var_240 && _loc4_.body.type == class_223.var_240))
                           {
                              _loc17_ = _loc8_.name_3;
                              if(_loc17_.var_78 <= _loc10_.var_80 && _loc10_.var_78 <= _loc17_.var_80 && _loc17_.var_77 <= _loc10_.var_79 && _loc10_.var_77 <= _loc17_.var_79)
                              {
                                 if(_loc4_.id < _loc40_.id)
                                 {
                                    _loc14_ = int(_loc4_.id);
                                    _loc19_ = _loc40_.id;
                                 }
                                 else
                                 {
                                    _loc14_ = int(_loc40_.id);
                                    _loc19_ = _loc4_.id;
                                 }
                                 if(_loc4_.var_144.length < _loc40_.var_144.length)
                                 {
                                    _loc41_ = _loc4_;
                                 }
                                 else
                                 {
                                    _loc41_ = _loc40_;
                                 }
                                 _loc42_ = null;
                                 _loc43_ = _loc41_.var_144.var_73;
                                 while(_loc43_ != null)
                                 {
                                    _loc44_ = _loc43_.var_74;
                                    if(_loc44_.id == _loc14_ && _loc44_.var_179 == _loc19_)
                                    {
                                       _loc42_ = _loc44_;
                                       break;
                                    }
                                    _loc43_ = _loc43_.next;
                                 }
                                 if(_loc42_ != null)
                                 {
                                    if(_loc42_.var_129)
                                    {
                                       _loc42_.var_129 = false;
                                       _loc42_.next = var_144;
                                       var_144 = _loc42_;
                                       _loc42_.name_41 = true;
                                    }
                                 }
                                 else
                                 {
                                    if(ZPP_AABBPair.var_72 == null)
                                    {
                                       _loc42_ = new ZPP_AABBPair();
                                    }
                                    else
                                    {
                                       _loc42_ = ZPP_AABBPair.var_72;
                                       ZPP_AABBPair.var_72 = _loc42_.next;
                                       _loc42_.next = null;
                                    }
                                    null;
                                    _loc42_.n1 = _loc6_;
                                    _loc42_.n2 = _loc8_;
                                    _loc42_.id = _loc14_;
                                    _loc42_.var_179 = _loc19_;
                                    _loc42_.next = var_144;
                                    var_144 = _loc42_;
                                    _loc42_.name_41 = true;
                                    _loc45_ = _loc4_.var_144;
                                    if(ZNPNode_ZPP_AABBPair.var_72 == null)
                                    {
                                       _loc46_ = new ZNPNode_ZPP_AABBPair();
                                    }
                                    else
                                    {
                                       _loc46_ = ZNPNode_ZPP_AABBPair.var_72;
                                       ZNPNode_ZPP_AABBPair.var_72 = _loc46_.next;
                                       _loc46_.next = null;
                                    }
                                    null;
                                    _loc46_.var_74 = _loc42_;
                                    _loc43_ = _loc46_;
                                    _loc43_.next = _loc45_.var_73;
                                    _loc45_.var_73 = _loc43_;
                                    _loc45_.name_2 = true;
                                    _loc45_.length = _loc45_.length + 1;
                                    _loc42_;
                                    _loc45_ = _loc40_.var_144;
                                    if(ZNPNode_ZPP_AABBPair.var_72 == null)
                                    {
                                       _loc46_ = new ZNPNode_ZPP_AABBPair();
                                    }
                                    else
                                    {
                                       _loc46_ = ZNPNode_ZPP_AABBPair.var_72;
                                       ZNPNode_ZPP_AABBPair.var_72 = _loc46_.next;
                                       _loc46_.next = null;
                                    }
                                    null;
                                    _loc46_.var_74 = _loc42_;
                                    _loc43_ = _loc46_;
                                    _loc43_.next = _loc45_.var_73;
                                    _loc45_.var_73 = _loc43_;
                                    _loc45_.name_2 = true;
                                    _loc45_.length = _loc45_.length + 1;
                                    _loc42_;
                                 }
                              }
                           }
                        }
                        else
                        {
                           _loc17_ = _loc8_.name_3;
                           if(_loc17_.var_78 <= _loc10_.var_80 && _loc10_.var_78 <= _loc17_.var_80 && _loc17_.var_77 <= _loc10_.var_79 && _loc10_.var_77 <= _loc17_.var_79)
                           {
                              if(_loc8_.child1 != null)
                              {
                                 _loc8_.child1.next = _loc7_;
                                 _loc7_ = _loc8_.child1;
                              }
                              if(_loc8_.child2 != null)
                              {
                                 _loc8_.child2.next = _loc7_;
                                 _loc7_ = _loc8_.child2;
                              }
                           }
                        }
                     }
                  }
                  if(var_151.root != null)
                  {
                     var_151.root.next = _loc7_;
                     _loc7_ = var_151.root;
                  }
                  while(_loc7_ != null)
                  {
                     _loc9_ = _loc7_;
                     _loc7_ = _loc9_.next;
                     _loc9_.next = null;
                     _loc8_ = _loc9_;
                     if(_loc8_ != _loc6_)
                     {
                        if(_loc8_.child1 == null)
                        {
                           _loc40_ = _loc8_.name_7;
                           if(_loc40_.body != _loc4_.body && !(_loc40_.body.type == class_223.var_240 && _loc4_.body.type == class_223.var_240))
                           {
                              _loc17_ = _loc8_.name_3;
                              if(_loc17_.var_78 <= _loc10_.var_80 && _loc10_.var_78 <= _loc17_.var_80 && _loc17_.var_77 <= _loc10_.var_79 && _loc10_.var_77 <= _loc17_.var_79)
                              {
                                 if(_loc4_.id < _loc40_.id)
                                 {
                                    _loc14_ = int(_loc4_.id);
                                    _loc19_ = _loc40_.id;
                                 }
                                 else
                                 {
                                    _loc14_ = int(_loc40_.id);
                                    _loc19_ = _loc4_.id;
                                 }
                                 if(_loc4_.var_144.length < _loc40_.var_144.length)
                                 {
                                    _loc41_ = _loc4_;
                                 }
                                 else
                                 {
                                    _loc41_ = _loc40_;
                                 }
                                 _loc42_ = null;
                                 _loc43_ = _loc41_.var_144.var_73;
                                 while(_loc43_ != null)
                                 {
                                    _loc44_ = _loc43_.var_74;
                                    if(_loc44_.id == _loc14_ && _loc44_.var_179 == _loc19_)
                                    {
                                       _loc42_ = _loc44_;
                                       break;
                                    }
                                    _loc43_ = _loc43_.next;
                                 }
                                 if(_loc42_ != null)
                                 {
                                    if(_loc42_.var_129)
                                    {
                                       _loc42_.var_129 = false;
                                       _loc42_.next = var_144;
                                       var_144 = _loc42_;
                                       _loc42_.name_41 = true;
                                    }
                                 }
                                 else
                                 {
                                    if(ZPP_AABBPair.var_72 == null)
                                    {
                                       _loc42_ = new ZPP_AABBPair();
                                    }
                                    else
                                    {
                                       _loc42_ = ZPP_AABBPair.var_72;
                                       ZPP_AABBPair.var_72 = _loc42_.next;
                                       _loc42_.next = null;
                                    }
                                    null;
                                    _loc42_.n1 = _loc6_;
                                    _loc42_.n2 = _loc8_;
                                    _loc42_.id = _loc14_;
                                    _loc42_.var_179 = _loc19_;
                                    _loc42_.next = var_144;
                                    var_144 = _loc42_;
                                    _loc42_.name_41 = true;
                                    _loc45_ = _loc4_.var_144;
                                    if(ZNPNode_ZPP_AABBPair.var_72 == null)
                                    {
                                       _loc46_ = new ZNPNode_ZPP_AABBPair();
                                    }
                                    else
                                    {
                                       _loc46_ = ZNPNode_ZPP_AABBPair.var_72;
                                       ZNPNode_ZPP_AABBPair.var_72 = _loc46_.next;
                                       _loc46_.next = null;
                                    }
                                    null;
                                    _loc46_.var_74 = _loc42_;
                                    _loc43_ = _loc46_;
                                    _loc43_.next = _loc45_.var_73;
                                    _loc45_.var_73 = _loc43_;
                                    _loc45_.name_2 = true;
                                    _loc45_.length = _loc45_.length + 1;
                                    _loc42_;
                                    _loc45_ = _loc40_.var_144;
                                    if(ZNPNode_ZPP_AABBPair.var_72 == null)
                                    {
                                       _loc46_ = new ZNPNode_ZPP_AABBPair();
                                    }
                                    else
                                    {
                                       _loc46_ = ZNPNode_ZPP_AABBPair.var_72;
                                       ZNPNode_ZPP_AABBPair.var_72 = _loc46_.next;
                                       _loc46_.next = null;
                                    }
                                    null;
                                    _loc46_.var_74 = _loc42_;
                                    _loc43_ = _loc46_;
                                    _loc43_.next = _loc45_.var_73;
                                    _loc45_.var_73 = _loc43_;
                                    _loc45_.name_2 = true;
                                    _loc45_.length = _loc45_.length + 1;
                                    _loc42_;
                                 }
                              }
                           }
                        }
                        else
                        {
                           _loc17_ = _loc8_.name_3;
                           if(_loc17_.var_78 <= _loc10_.var_80 && _loc10_.var_78 <= _loc17_.var_80 && _loc17_.var_77 <= _loc10_.var_79 && _loc10_.var_77 <= _loc17_.var_79)
                           {
                              if(_loc8_.child1 != null)
                              {
                                 _loc8_.child1.next = _loc7_;
                                 _loc7_ = _loc8_.child1;
                              }
                              if(_loc8_.child2 != null)
                              {
                                 _loc8_.child2.next = _loc7_;
                                 _loc7_ = _loc8_.child2;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         while(var_227 != null)
         {
            _loc7_ = var_227;
            var_227 = _loc7_.var_294;
            _loc7_.var_294 = null;
            _loc6_ = _loc7_;
            _loc6_.var_407 = false;
            _loc4_ = _loc6_.name_7;
            _loc30_ = _loc4_.body;
            if(!_loc30_.var_112.var_129)
            {
               _loc10_ = _loc6_.name_3;
               _loc7_ = null;
               if(var_152.root != null)
               {
                  var_152.root.next = _loc7_;
                  _loc7_ = var_152.root;
               }
               while(_loc7_ != null)
               {
                  _loc9_ = _loc7_;
                  _loc7_ = _loc9_.next;
                  _loc9_.next = null;
                  _loc8_ = _loc9_;
                  if(_loc8_ != _loc6_)
                  {
                     if(_loc8_.child1 == null)
                     {
                        _loc40_ = _loc8_.name_7;
                        if(_loc40_.body != _loc4_.body && !(_loc40_.body.type == class_223.var_240 && _loc4_.body.type == class_223.var_240))
                        {
                           _loc17_ = _loc8_.name_3;
                           if(_loc17_.var_78 <= _loc10_.var_80 && _loc10_.var_78 <= _loc17_.var_80 && _loc17_.var_77 <= _loc10_.var_79 && _loc10_.var_77 <= _loc17_.var_79)
                           {
                              if(_loc4_.id < _loc40_.id)
                              {
                                 _loc14_ = int(_loc4_.id);
                                 _loc19_ = _loc40_.id;
                              }
                              else
                              {
                                 _loc14_ = int(_loc40_.id);
                                 _loc19_ = _loc4_.id;
                              }
                              if(_loc4_.var_144.length < _loc40_.var_144.length)
                              {
                                 _loc41_ = _loc4_;
                              }
                              else
                              {
                                 _loc41_ = _loc40_;
                              }
                              _loc42_ = null;
                              _loc43_ = _loc41_.var_144.var_73;
                              while(_loc43_ != null)
                              {
                                 _loc44_ = _loc43_.var_74;
                                 if(_loc44_.id == _loc14_ && _loc44_.var_179 == _loc19_)
                                 {
                                    _loc42_ = _loc44_;
                                    break;
                                 }
                                 _loc43_ = _loc43_.next;
                              }
                              if(_loc42_ != null)
                              {
                                 if(_loc42_.var_129)
                                 {
                                    _loc42_.var_129 = false;
                                    _loc42_.next = var_144;
                                    var_144 = _loc42_;
                                    _loc42_.name_41 = true;
                                 }
                              }
                              else
                              {
                                 if(ZPP_AABBPair.var_72 == null)
                                 {
                                    _loc42_ = new ZPP_AABBPair();
                                 }
                                 else
                                 {
                                    _loc42_ = ZPP_AABBPair.var_72;
                                    ZPP_AABBPair.var_72 = _loc42_.next;
                                    _loc42_.next = null;
                                 }
                                 null;
                                 _loc42_.n1 = _loc6_;
                                 _loc42_.n2 = _loc8_;
                                 _loc42_.id = _loc14_;
                                 _loc42_.var_179 = _loc19_;
                                 _loc42_.next = var_144;
                                 var_144 = _loc42_;
                                 _loc42_.name_41 = true;
                                 _loc45_ = _loc4_.var_144;
                                 if(ZNPNode_ZPP_AABBPair.var_72 == null)
                                 {
                                    _loc46_ = new ZNPNode_ZPP_AABBPair();
                                 }
                                 else
                                 {
                                    _loc46_ = ZNPNode_ZPP_AABBPair.var_72;
                                    ZNPNode_ZPP_AABBPair.var_72 = _loc46_.next;
                                    _loc46_.next = null;
                                 }
                                 null;
                                 _loc46_.var_74 = _loc42_;
                                 _loc43_ = _loc46_;
                                 _loc43_.next = _loc45_.var_73;
                                 _loc45_.var_73 = _loc43_;
                                 _loc45_.name_2 = true;
                                 _loc45_.length = _loc45_.length + 1;
                                 _loc42_;
                                 _loc45_ = _loc40_.var_144;
                                 if(ZNPNode_ZPP_AABBPair.var_72 == null)
                                 {
                                    _loc46_ = new ZNPNode_ZPP_AABBPair();
                                 }
                                 else
                                 {
                                    _loc46_ = ZNPNode_ZPP_AABBPair.var_72;
                                    ZNPNode_ZPP_AABBPair.var_72 = _loc46_.next;
                                    _loc46_.next = null;
                                 }
                                 null;
                                 _loc46_.var_74 = _loc42_;
                                 _loc43_ = _loc46_;
                                 _loc43_.next = _loc45_.var_73;
                                 _loc45_.var_73 = _loc43_;
                                 _loc45_.name_2 = true;
                                 _loc45_.length = _loc45_.length + 1;
                                 _loc42_;
                              }
                           }
                        }
                     }
                     else
                     {
                        _loc17_ = _loc8_.name_3;
                        if(_loc17_.var_78 <= _loc10_.var_80 && _loc10_.var_78 <= _loc17_.var_80 && _loc17_.var_77 <= _loc10_.var_79 && _loc10_.var_77 <= _loc17_.var_79)
                        {
                           if(_loc8_.child1 != null)
                           {
                              _loc8_.child1.next = _loc7_;
                              _loc7_ = _loc8_.child1;
                           }
                           if(_loc8_.child2 != null)
                           {
                              _loc8_.child2.next = _loc7_;
                              _loc7_ = _loc8_.child2;
                           }
                        }
                     }
                  }
               }
               if(var_151.root != null)
               {
                  var_151.root.next = _loc7_;
                  _loc7_ = var_151.root;
               }
               while(_loc7_ != null)
               {
                  _loc9_ = _loc7_;
                  _loc7_ = _loc9_.next;
                  _loc9_.next = null;
                  _loc8_ = _loc9_;
                  if(_loc8_ != _loc6_)
                  {
                     if(_loc8_.child1 == null)
                     {
                        _loc40_ = _loc8_.name_7;
                        if(_loc40_.body != _loc4_.body && !(_loc40_.body.type == class_223.var_240 && _loc4_.body.type == class_223.var_240))
                        {
                           _loc17_ = _loc8_.name_3;
                           if(_loc17_.var_78 <= _loc10_.var_80 && _loc10_.var_78 <= _loc17_.var_80 && _loc17_.var_77 <= _loc10_.var_79 && _loc10_.var_77 <= _loc17_.var_79)
                           {
                              if(_loc4_.id < _loc40_.id)
                              {
                                 _loc14_ = int(_loc4_.id);
                                 _loc19_ = _loc40_.id;
                              }
                              else
                              {
                                 _loc14_ = int(_loc40_.id);
                                 _loc19_ = _loc4_.id;
                              }
                              if(_loc4_.var_144.length < _loc40_.var_144.length)
                              {
                                 _loc41_ = _loc4_;
                              }
                              else
                              {
                                 _loc41_ = _loc40_;
                              }
                              _loc42_ = null;
                              _loc43_ = _loc41_.var_144.var_73;
                              while(_loc43_ != null)
                              {
                                 _loc44_ = _loc43_.var_74;
                                 if(_loc44_.id == _loc14_ && _loc44_.var_179 == _loc19_)
                                 {
                                    _loc42_ = _loc44_;
                                    break;
                                 }
                                 _loc43_ = _loc43_.next;
                              }
                              if(_loc42_ != null)
                              {
                                 if(_loc42_.var_129)
                                 {
                                    _loc42_.var_129 = false;
                                    _loc42_.next = var_144;
                                    var_144 = _loc42_;
                                    _loc42_.name_41 = true;
                                 }
                              }
                              else
                              {
                                 if(ZPP_AABBPair.var_72 == null)
                                 {
                                    _loc42_ = new ZPP_AABBPair();
                                 }
                                 else
                                 {
                                    _loc42_ = ZPP_AABBPair.var_72;
                                    ZPP_AABBPair.var_72 = _loc42_.next;
                                    _loc42_.next = null;
                                 }
                                 null;
                                 _loc42_.n1 = _loc6_;
                                 _loc42_.n2 = _loc8_;
                                 _loc42_.id = _loc14_;
                                 _loc42_.var_179 = _loc19_;
                                 _loc42_.next = var_144;
                                 var_144 = _loc42_;
                                 _loc42_.name_41 = true;
                                 _loc45_ = _loc4_.var_144;
                                 if(ZNPNode_ZPP_AABBPair.var_72 == null)
                                 {
                                    _loc46_ = new ZNPNode_ZPP_AABBPair();
                                 }
                                 else
                                 {
                                    _loc46_ = ZNPNode_ZPP_AABBPair.var_72;
                                    ZNPNode_ZPP_AABBPair.var_72 = _loc46_.next;
                                    _loc46_.next = null;
                                 }
                                 null;
                                 _loc46_.var_74 = _loc42_;
                                 _loc43_ = _loc46_;
                                 _loc43_.next = _loc45_.var_73;
                                 _loc45_.var_73 = _loc43_;
                                 _loc45_.name_2 = true;
                                 _loc45_.length = _loc45_.length + 1;
                                 _loc42_;
                                 _loc45_ = _loc40_.var_144;
                                 if(ZNPNode_ZPP_AABBPair.var_72 == null)
                                 {
                                    _loc46_ = new ZNPNode_ZPP_AABBPair();
                                 }
                                 else
                                 {
                                    _loc46_ = ZNPNode_ZPP_AABBPair.var_72;
                                    ZNPNode_ZPP_AABBPair.var_72 = _loc46_.next;
                                    _loc46_.next = null;
                                 }
                                 null;
                                 _loc46_.var_74 = _loc42_;
                                 _loc43_ = _loc46_;
                                 _loc43_.next = _loc45_.var_73;
                                 _loc45_.var_73 = _loc43_;
                                 _loc45_.name_2 = true;
                                 _loc45_.length = _loc45_.length + 1;
                                 _loc42_;
                              }
                           }
                        }
                     }
                     else
                     {
                        _loc17_ = _loc8_.name_3;
                        if(_loc17_.var_78 <= _loc10_.var_80 && _loc10_.var_78 <= _loc17_.var_80 && _loc17_.var_77 <= _loc10_.var_79 && _loc10_.var_77 <= _loc17_.var_79)
                        {
                           if(_loc8_.child1 != null)
                           {
                              _loc8_.child1.next = _loc7_;
                              _loc7_ = _loc8_.child1;
                           }
                           if(_loc8_.child2 != null)
                           {
                              _loc8_.child2.next = _loc7_;
                              _loc7_ = _loc8_.child2;
                           }
                        }
                     }
                  }
               }
            }
         }
         _loc42_ = null;
         _loc44_ = var_144;
         while(_loc44_ != null)
         {
            if(!_loc44_.name_41 && !(_loc17_.var_78 <= _loc10_.var_80 && _loc10_.var_78 <= _loc17_.var_80 && _loc17_.var_77 <= _loc10_.var_79 && _loc10_.var_77 <= _loc17_.var_79))
            {
               if(_loc42_ == null)
               {
                  var_144 = _loc44_.next;
               }
               else
               {
                  _loc42_.next = _loc44_.next;
               }
               _loc45_ = _loc44_.n1.name_7.var_144;
               _loc43_ = null;
               _loc46_ = _loc45_.var_73;
               _loc31_ = false;
               while(_loc46_ != null)
               {
                  if(_loc46_.var_74 == _loc44_)
                  {
                     if(_loc43_ == null)
                     {
                        _loc47_ = _loc45_.var_73;
                        _loc48_ = _loc47_.next;
                        _loc45_.var_73 = _loc48_;
                        if(_loc45_.var_73 == null)
                        {
                           _loc45_.var_76 = true;
                        }
                     }
                     else
                     {
                        _loc47_ = _loc43_.next;
                        _loc48_ = _loc47_.next;
                        _loc43_.next = _loc48_;
                        if(_loc48_ == null)
                        {
                           _loc45_.var_76 = true;
                        }
                     }
                     _loc49_ = _loc47_;
                     _loc49_.var_74 = null;
                     _loc49_.next = ZNPNode_ZPP_AABBPair.var_72;
                     ZNPNode_ZPP_AABBPair.var_72 = _loc49_;
                     _loc45_.name_2 = true;
                     _loc45_.length = _loc45_.length - 1;
                     _loc45_.var_76 = true;
                     _loc48_;
                     _loc31_ = true;
                     break;
                  }
                  _loc43_ = _loc46_;
                  _loc46_ = _loc46_.next;
               }
               _loc31_;
               _loc45_ = _loc44_.n2.name_7.var_144;
               _loc43_ = null;
               _loc46_ = _loc45_.var_73;
               _loc31_ = false;
               while(_loc46_ != null)
               {
                  if(_loc46_.var_74 == _loc44_)
                  {
                     if(_loc43_ == null)
                     {
                        _loc47_ = _loc45_.var_73;
                        _loc48_ = _loc47_.next;
                        _loc45_.var_73 = _loc48_;
                        if(_loc45_.var_73 == null)
                        {
                           _loc45_.var_76 = true;
                        }
                     }
                     else
                     {
                        _loc47_ = _loc43_.next;
                        _loc48_ = _loc47_.next;
                        _loc43_.next = _loc48_;
                        if(_loc48_ == null)
                        {
                           _loc45_.var_76 = true;
                        }
                     }
                     _loc49_ = _loc47_;
                     _loc49_.var_74 = null;
                     _loc49_.next = ZNPNode_ZPP_AABBPair.var_72;
                     ZNPNode_ZPP_AABBPair.var_72 = _loc49_;
                     _loc45_.name_2 = true;
                     _loc45_.length = _loc45_.length - 1;
                     _loc45_.var_76 = true;
                     _loc48_;
                     _loc31_ = true;
                     break;
                  }
                  _loc43_ = _loc46_;
                  _loc46_ = _loc46_.next;
               }
               _loc31_;
               _loc50_ = _loc44_.next;
               if(_loc44_.var_246 != null)
               {
                  _loc44_.var_246.var_209 = null;
               }
               _loc44_.var_246 = null;
               _loc51_ = _loc44_;
               _loc6_ = null;
               _loc51_.n2 = _loc6_;
               _loc51_.n1 = _loc6_;
               _loc51_.var_129 = false;
               _loc51_.next = ZPP_AABBPair.var_72;
               ZPP_AABBPair.var_72 = _loc51_;
               _loc44_ = _loc50_;
            }
            else
            {
               _loc4_ = _loc44_.n1.name_7;
               _loc30_ = _loc4_.body;
               _loc40_ = _loc44_.n2.name_7;
               _loc52_ = _loc40_.body;
               if(!_loc44_.name_41)
               {
                  if((_loc30_.var_112.var_129 || _loc30_.type == class_223.var_240) && (_loc52_.var_112.var_129 || _loc52_.type == class_223.var_240))
                  {
                     _loc44_.var_129 = true;
                     if(_loc42_ == null)
                     {
                        var_144 = _loc44_.next;
                     }
                     else
                     {
                        _loc42_.next = _loc44_.next;
                     }
                     _loc44_ = _loc44_.next;
                     continue;
                  }
               }
               _loc44_.name_41 = false;
               _loc10_ = _loc4_.name_3;
               _loc17_ = _loc40_.name_3;
               if(_loc17_.var_78 <= _loc10_.var_80 && _loc10_.var_78 <= _loc17_.var_80 && _loc17_.var_77 <= _loc10_.var_79 && _loc10_.var_77 <= _loc17_.var_79)
               {
                  _loc53_ = _loc44_.var_246;
                  if(param2)
                  {
                     _loc44_.var_246 = param1.method_357(_loc4_,_loc40_,_loc30_.type != class_223.var_188 || _loc52_.type != class_223.var_188,_loc44_.var_246,false);
                  }
                  else
                  {
                     _loc44_.var_246 = param1.method_495(_loc4_,_loc40_,_loc30_.type != class_223.var_188 || _loc52_.type != class_223.var_188,_loc44_.var_246,false);
                  }
                  if(_loc44_.var_246 == null)
                  {
                     if(_loc53_ != null)
                     {
                        _loc53_.var_209 = null;
                     }
                  }
                  else
                  {
                     _loc44_.var_246.var_209 = _loc44_;
                  }
               }
               _loc42_ = _loc44_;
               _loc44_ = _loc44_.next;
            }
         }
      }
      
      override public function method_187(param1:Number, param2:Number, param3:ZPP_InteractionFilter, param4:class_205) : class_205
      {
         var _loc7_:* = null as ZPP_Vec2;
         var _loc8_:* = null as class_205;
         var _loc9_:* = null as ZPP_AABBNode;
         var _loc10_:* = null as ZPP_AABB;
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
         if(var_151.root != null)
         {
            if(var_108 == null)
            {
               var_108 = new class_337();
            }
            var_108.add(var_151.root);
            while(var_108.var_73 != null)
            {
               _loc9_ = var_108.method_105();
               _loc10_ = _loc9_.name_3;
               if(_loc5_.x >= _loc10_.var_77 && _loc5_.x <= _loc10_.var_79 && _loc5_.y >= _loc10_.var_78 && _loc5_.y <= _loc10_.var_80)
               {
                  if(_loc9_.child1 == null)
                  {
                     _loc11_ = _loc9_.name_7.body.outer;
                     if(!_loc8_.has(_loc11_))
                     {
                        if(param3 == null || (_loc12_.name_14 & param3.name_13) != 0 && (param3.name_14 & _loc12_.name_13) != 0)
                        {
                           if(_loc9_.name_7.type == class_223.var_131)
                           {
                              if(class_239.method_223(_loc9_.name_7.var_102,_loc5_))
                              {
                                 _loc8_.push(_loc11_);
                              }
                           }
                           else if(class_239.method_231(_loc9_.name_7.name_6,_loc5_))
                           {
                              _loc8_.push(_loc11_);
                           }
                        }
                     }
                  }
                  else
                  {
                     if(_loc9_.child1 != null)
                     {
                        var_108.add(_loc9_.child1);
                     }
                     if(_loc9_.child2 != null)
                     {
                        var_108.add(_loc9_.child2);
                     }
                  }
               }
            }
         }
         if(var_152.root != null)
         {
            if(var_108 == null)
            {
               var_108 = new class_337();
            }
            var_108.add(var_152.root);
            while(var_108.var_73 != null)
            {
               _loc9_ = var_108.method_105();
               _loc10_ = _loc9_.name_3;
               if(_loc5_.x >= _loc10_.var_77 && _loc5_.x <= _loc10_.var_79 && _loc5_.y >= _loc10_.var_78 && _loc5_.y <= _loc10_.var_80)
               {
                  if(_loc9_.child1 == null)
                  {
                     _loc11_ = _loc9_.name_7.body.outer;
                     if(!_loc8_.has(_loc11_))
                     {
                        if(param3 == null || (_loc12_.name_14 & param3.name_13) != 0 && (param3.name_14 & _loc12_.name_13) != 0)
                        {
                           if(_loc9_.name_7.type == class_223.var_131)
                           {
                              if(class_239.method_223(_loc9_.name_7.var_102,_loc5_))
                              {
                                 _loc8_.push(_loc11_);
                              }
                           }
                           else if(class_239.method_231(_loc9_.name_7.name_6,_loc5_))
                           {
                              _loc8_.push(_loc11_);
                           }
                        }
                     }
                  }
                  else
                  {
                     if(_loc9_.child1 != null)
                     {
                        var_108.add(_loc9_.child1);
                     }
                     if(_loc9_.child2 != null)
                     {
                        var_108.add(_loc9_.child2);
                     }
                  }
               }
            }
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
         var _loc7_:* = null as ZPP_AABBNode;
         var _loc8_:* = null as ZPP_AABB;
         var _loc9_:* = null as Body;
         var _loc10_:* = null as ZPP_InteractionFilter;
         var _loc11_:Boolean = false;
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
         if(var_151.root != null)
         {
            if(var_108 == null)
            {
               var_108 = new class_337();
            }
            var_108.add(var_151.root);
            while(var_108.var_73 != null)
            {
               _loc7_ = var_108.method_105();
               _loc8_ = _loc7_.name_3;
               if(_loc5_.var_78 <= _loc8_.var_80 && _loc8_.var_78 <= _loc5_.var_80 && _loc5_.var_77 <= _loc8_.var_79 && _loc8_.var_77 <= _loc5_.var_79)
               {
                  if(_loc7_.child1 == null)
                  {
                     _loc9_ = _loc7_.name_7.body.outer;
                     if(param3 == null || (_loc10_.name_14 & param3.name_13) != 0 && (param3.name_14 & _loc10_.name_13) != 0)
                     {
                        if(param2)
                        {
                           if(!var_143.has(_loc9_))
                           {
                              _loc11_ = class_239.method_135(param1,_loc7_.name_7);
                              if(!_loc6_.has(_loc9_) && _loc11_)
                              {
                                 _loc6_.push(_loc9_);
                              }
                              else if(!_loc11_)
                              {
                                 _loc6_.remove(_loc9_);
                                 var_143.push(_loc9_);
                              }
                           }
                        }
                        else if(!_loc6_.has(_loc9_) && class_239.method_133(_loc7_.name_7,param1))
                        {
                           _loc6_.push(_loc9_);
                        }
                     }
                  }
                  else
                  {
                     if(_loc7_.child1 != null)
                     {
                        var_108.add(_loc7_.child1);
                     }
                     if(_loc7_.child2 != null)
                     {
                        var_108.add(_loc7_.child2);
                     }
                  }
               }
            }
         }
         if(var_152.root != null)
         {
            if(var_108 == null)
            {
               var_108 = new class_337();
            }
            var_108.add(var_152.root);
            while(var_108.var_73 != null)
            {
               _loc7_ = var_108.method_105();
               _loc8_ = _loc7_.name_3;
               if(_loc5_.var_78 <= _loc8_.var_80 && _loc8_.var_78 <= _loc5_.var_80 && _loc5_.var_77 <= _loc8_.var_79 && _loc8_.var_77 <= _loc5_.var_79)
               {
                  if(_loc7_.child1 == null)
                  {
                     _loc9_ = _loc7_.name_7.body.outer;
                     if(param3 == null || (_loc10_.name_14 & param3.name_13) != 0 && (param3.name_14 & _loc10_.name_13) != 0)
                     {
                        if(param2)
                        {
                           if(!var_143.has(_loc9_))
                           {
                              _loc11_ = class_239.method_135(param1,_loc7_.name_7);
                              if(!_loc6_.has(_loc9_) && _loc11_)
                              {
                                 _loc6_.push(_loc9_);
                              }
                              else if(!_loc11_)
                              {
                                 _loc6_.remove(_loc9_);
                                 var_143.push(_loc9_);
                              }
                           }
                        }
                        else if(!_loc6_.has(_loc9_) && class_239.method_133(_loc7_.name_7,param1))
                        {
                           _loc6_.push(_loc9_);
                        }
                     }
                  }
                  else
                  {
                     if(_loc7_.child1 != null)
                     {
                        var_108.add(_loc7_.child1);
                     }
                     if(_loc7_.child2 != null)
                     {
                        var_108.add(_loc7_.child2);
                     }
                  }
               }
            }
         }
         var_143.clear();
         return _loc6_;
      }
      
      override public function method_261(param1:Number, param2:Number, param3:Number, param4:Boolean, param5:ZPP_InteractionFilter, param6:class_205) : class_205
      {
         var _loc8_:* = null as class_205;
         var _loc9_:* = null as ZPP_AABBNode;
         var _loc10_:* = null as ZPP_AABB;
         var _loc11_:* = null as Body;
         var _loc12_:* = null as ZPP_InteractionFilter;
         var _loc13_:Boolean = false;
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
         if(var_151.root != null)
         {
            if(var_108 == null)
            {
               var_108 = new class_337();
            }
            var_108.add(var_151.root);
            while(var_108.var_73 != null)
            {
               _loc9_ = var_108.method_105();
               _loc10_ = _loc9_.name_3;
               if(_loc7_.var_78 <= _loc10_.var_80 && _loc10_.var_78 <= _loc7_.var_80 && _loc7_.var_77 <= _loc10_.var_79 && _loc10_.var_77 <= _loc7_.var_79)
               {
                  if(_loc9_.child1 == null)
                  {
                     _loc11_ = _loc9_.name_7.body.outer;
                     if(param5 == null || (_loc12_.name_14 & param5.name_13) != 0 && (param5.name_14 & _loc12_.name_13) != 0)
                     {
                        if(param4)
                        {
                           if(!var_143.has(_loc11_))
                           {
                              _loc13_ = class_239.method_135(var_214.zpp_inner,_loc9_.name_7);
                              if(!_loc8_.has(_loc11_) && _loc13_)
                              {
                                 _loc8_.push(_loc11_);
                              }
                              else if(!_loc13_)
                              {
                                 _loc8_.remove(_loc11_);
                                 var_143.push(_loc11_);
                              }
                           }
                        }
                        else if(!_loc8_.has(_loc11_) && class_239.method_133(_loc9_.name_7,var_214.zpp_inner))
                        {
                           _loc8_.push(_loc11_);
                        }
                     }
                  }
                  else
                  {
                     if(_loc9_.child1 != null)
                     {
                        var_108.add(_loc9_.child1);
                     }
                     if(_loc9_.child2 != null)
                     {
                        var_108.add(_loc9_.child2);
                     }
                  }
               }
            }
         }
         if(var_152.root != null)
         {
            if(var_108 == null)
            {
               var_108 = new class_337();
            }
            var_108.add(var_152.root);
            while(var_108.var_73 != null)
            {
               _loc9_ = var_108.method_105();
               _loc10_ = _loc9_.name_3;
               if(_loc7_.var_78 <= _loc10_.var_80 && _loc10_.var_78 <= _loc7_.var_80 && _loc7_.var_77 <= _loc10_.var_79 && _loc10_.var_77 <= _loc7_.var_79)
               {
                  if(_loc9_.child1 == null)
                  {
                     _loc11_ = _loc9_.name_7.body.outer;
                     if(param5 == null || (_loc12_.name_14 & param5.name_13) != 0 && (param5.name_14 & _loc12_.name_13) != 0)
                     {
                        if(param4)
                        {
                           if(!var_143.has(_loc11_))
                           {
                              _loc13_ = class_239.method_135(var_214.zpp_inner,_loc9_.name_7);
                              if(!_loc8_.has(_loc11_) && _loc13_)
                              {
                                 _loc8_.push(_loc11_);
                              }
                              else if(!_loc13_)
                              {
                                 _loc8_.remove(_loc11_);
                                 var_143.push(_loc11_);
                              }
                           }
                        }
                        else if(!_loc8_.has(_loc11_) && class_239.method_133(_loc9_.name_7,var_214.zpp_inner))
                        {
                           _loc8_.push(_loc11_);
                        }
                     }
                  }
                  else
                  {
                     if(_loc9_.child1 != null)
                     {
                        var_108.add(_loc9_.child1);
                     }
                     if(_loc9_.child2 != null)
                     {
                        var_108.add(_loc9_.child2);
                     }
                  }
               }
            }
         }
         var_143.clear();
         return _loc8_;
      }
      
      override public function method_201(param1:ZPP_AABB, param2:Boolean, param3:Boolean, param4:ZPP_InteractionFilter, param5:class_205) : class_205
      {
         var _loc7_:* = null as class_205;
         var _loc8_:* = null as ZPP_AABBNode;
         var _loc9_:* = null as ZPP_AABB;
         var _loc10_:* = null as ZPP_InteractionFilter;
         var _loc11_:* = null as Body;
         var _loc12_:* = null as ZPP_AABBNode;
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
         if(var_151.root != null)
         {
            if(var_108 == null)
            {
               var_108 = new class_337();
            }
            var_108.add(var_151.root);
            while(var_108.var_73 != null)
            {
               _loc8_ = var_108.method_105();
               _loc9_ = _loc8_.name_3;
               if(_loc9_.var_77 >= _loc6_.var_77 && _loc9_.var_78 >= _loc6_.var_78 && _loc9_.var_79 <= _loc6_.var_79 && _loc9_.var_80 <= _loc6_.var_80)
               {
                  if(_loc8_.child1 == null)
                  {
                     if(param4 == null || (_loc10_.name_14 & param4.name_13) != 0 && (param4.name_14 & _loc10_.name_13) != 0)
                     {
                        _loc11_ = _loc8_.name_7.body.outer;
                        if(!_loc7_.has(_loc11_))
                        {
                           _loc7_.push(_loc11_);
                        }
                     }
                  }
                  else
                  {
                     if(treeStack2 == null)
                     {
                        treeStack2 = new class_337();
                     }
                     treeStack2.add(_loc8_);
                     while(treeStack2.var_73 != null)
                     {
                        _loc12_ = treeStack2.method_105();
                        if(_loc12_.child1 == null)
                        {
                           if(param4 == null || (_loc10_.name_14 & param4.name_13) != 0 && (param4.name_14 & _loc10_.name_13) != 0)
                           {
                              _loc11_ = _loc12_.name_7.body.outer;
                              if(!_loc7_.has(_loc11_))
                              {
                                 _loc7_.push(_loc11_);
                              }
                           }
                        }
                        else
                        {
                           if(_loc12_.child1 != null)
                           {
                              treeStack2.add(_loc12_.child1);
                           }
                           if(_loc12_.child2 != null)
                           {
                              treeStack2.add(_loc12_.child2);
                           }
                        }
                     }
                  }
               }
               else
               {
                  _loc9_ = _loc8_.name_3;
                  if(_loc6_.var_78 <= _loc9_.var_80 && _loc9_.var_78 <= _loc6_.var_80 && _loc6_.var_77 <= _loc9_.var_79 && _loc9_.var_77 <= _loc6_.var_79)
                  {
                     if(_loc8_.child1 == null)
                     {
                        _loc11_ = _loc8_.name_7.body.outer;
                        if(param4 == null || (_loc10_.name_14 & param4.name_13) != 0 && (param4.name_14 & _loc10_.name_13) != 0)
                        {
                           if(param2)
                           {
                              if(param3)
                              {
                                 if(!var_143.has(_loc11_))
                                 {
                                    _loc13_ = class_239.method_135(var_210.zpp_inner,_loc8_.name_7);
                                    if(!_loc7_.has(_loc11_) && _loc13_)
                                    {
                                       _loc7_.push(_loc11_);
                                    }
                                    else if(!_loc13_)
                                    {
                                       _loc7_.remove(_loc11_);
                                       var_143.push(_loc11_);
                                    }
                                 }
                              }
                              else if(!_loc7_.has(_loc11_) && class_239.method_133(_loc8_.name_7,var_210.zpp_inner))
                              {
                                 _loc7_.push(_loc11_);
                              }
                           }
                           else if(param3)
                           {
                              if(!var_143.has(_loc11_))
                              {
                                 _loc9_ = _loc8_.name_7.name_3;
                                 _loc13_ = _loc9_.var_77 >= _loc6_.var_77 && _loc9_.var_78 >= _loc6_.var_78 && _loc9_.var_79 <= _loc6_.var_79 && _loc9_.var_80 <= _loc6_.var_80;
                                 if(!_loc7_.has(_loc11_) && _loc13_)
                                 {
                                    _loc7_.push(_loc11_);
                                 }
                                 else if(!_loc13_)
                                 {
                                    _loc7_.remove(_loc11_);
                                    var_143.push(_loc11_);
                                 }
                              }
                           }
                           else if(!_loc7_.has(_loc11_) && (_loc9_.var_77 >= _loc6_.var_77 && _loc9_.var_78 >= _loc6_.var_78 && _loc9_.var_79 <= _loc6_.var_79 && _loc9_.var_80 <= _loc6_.var_80))
                           {
                              _loc7_.push(_loc11_);
                           }
                        }
                     }
                     else
                     {
                        if(_loc8_.child1 != null)
                        {
                           var_108.add(_loc8_.child1);
                        }
                        if(_loc8_.child2 != null)
                        {
                           var_108.add(_loc8_.child2);
                        }
                     }
                  }
               }
            }
         }
         if(var_152.root != null)
         {
            if(var_108 == null)
            {
               var_108 = new class_337();
            }
            var_108.add(var_152.root);
            while(var_108.var_73 != null)
            {
               _loc8_ = var_108.method_105();
               _loc9_ = _loc8_.name_3;
               if(_loc9_.var_77 >= _loc6_.var_77 && _loc9_.var_78 >= _loc6_.var_78 && _loc9_.var_79 <= _loc6_.var_79 && _loc9_.var_80 <= _loc6_.var_80)
               {
                  if(_loc8_.child1 == null)
                  {
                     if(param4 == null || (_loc10_.name_14 & param4.name_13) != 0 && (param4.name_14 & _loc10_.name_13) != 0)
                     {
                        _loc11_ = _loc8_.name_7.body.outer;
                        if(!_loc7_.has(_loc11_))
                        {
                           _loc7_.push(_loc11_);
                        }
                     }
                  }
                  else
                  {
                     if(treeStack2 == null)
                     {
                        treeStack2 = new class_337();
                     }
                     treeStack2.add(_loc8_);
                     while(treeStack2.var_73 != null)
                     {
                        _loc12_ = treeStack2.method_105();
                        if(_loc12_.child1 == null)
                        {
                           if(param4 == null || (_loc10_.name_14 & param4.name_13) != 0 && (param4.name_14 & _loc10_.name_13) != 0)
                           {
                              _loc11_ = _loc12_.name_7.body.outer;
                              if(!_loc7_.has(_loc11_))
                              {
                                 _loc7_.push(_loc11_);
                              }
                           }
                        }
                        else
                        {
                           if(_loc12_.child1 != null)
                           {
                              treeStack2.add(_loc12_.child1);
                           }
                           if(_loc12_.child2 != null)
                           {
                              treeStack2.add(_loc12_.child2);
                           }
                        }
                     }
                  }
               }
               else
               {
                  _loc9_ = _loc8_.name_3;
                  if(_loc6_.var_78 <= _loc9_.var_80 && _loc9_.var_78 <= _loc6_.var_80 && _loc6_.var_77 <= _loc9_.var_79 && _loc9_.var_77 <= _loc6_.var_79)
                  {
                     if(_loc8_.child1 == null)
                     {
                        _loc11_ = _loc8_.name_7.body.outer;
                        if(param4 == null || (_loc10_.name_14 & param4.name_13) != 0 && (param4.name_14 & _loc10_.name_13) != 0)
                        {
                           if(param2)
                           {
                              if(param3)
                              {
                                 if(!var_143.has(_loc11_))
                                 {
                                    _loc13_ = class_239.method_135(var_210.zpp_inner,_loc8_.name_7);
                                    if(!_loc7_.has(_loc11_) && _loc13_)
                                    {
                                       _loc7_.push(_loc11_);
                                    }
                                    else if(!_loc13_)
                                    {
                                       _loc7_.remove(_loc11_);
                                       var_143.push(_loc11_);
                                    }
                                 }
                              }
                              else if(!_loc7_.has(_loc11_) && class_239.method_133(_loc8_.name_7,var_210.zpp_inner))
                              {
                                 _loc7_.push(_loc11_);
                              }
                           }
                           else if(param3)
                           {
                              if(!var_143.has(_loc11_))
                              {
                                 _loc9_ = _loc8_.name_7.name_3;
                                 _loc13_ = _loc9_.var_77 >= _loc6_.var_77 && _loc9_.var_78 >= _loc6_.var_78 && _loc9_.var_79 <= _loc6_.var_79 && _loc9_.var_80 <= _loc6_.var_80;
                                 if(!_loc7_.has(_loc11_) && _loc13_)
                                 {
                                    _loc7_.push(_loc11_);
                                 }
                                 else if(!_loc13_)
                                 {
                                    _loc7_.remove(_loc11_);
                                    var_143.push(_loc11_);
                                 }
                              }
                           }
                           else if(!_loc7_.has(_loc11_) && (_loc9_.var_77 >= _loc6_.var_77 && _loc9_.var_78 >= _loc6_.var_78 && _loc9_.var_79 <= _loc6_.var_79 && _loc9_.var_80 <= _loc6_.var_80))
                           {
                              _loc7_.push(_loc11_);
                           }
                        }
                     }
                     else
                     {
                        if(_loc8_.child1 != null)
                        {
                           var_108.add(_loc8_.child1);
                        }
                        if(_loc8_.child2 != null)
                        {
                           var_108.add(_loc8_.child2);
                        }
                     }
                  }
               }
            }
         }
         var_143.clear();
         return _loc7_;
      }
      
      public final function method_296(param1:ZPP_Shape) : void
      {
         var _loc3_:* = null as ZPP_AABBNode;
         var _loc4_:* = null as ZPP_AABBNode;
         var _loc7_:* = null as ZPP_AABBPair;
         var _loc8_:* = null as ZPP_AABBPair;
         var _loc2_:ZPP_AABBNode = param1.var_138;
         if(!_loc2_.var_374)
         {
            if(_loc2_.var_451)
            {
               var_152.method_513(_loc2_);
            }
            else
            {
               var_151.method_513(_loc2_);
            }
         }
         param1.var_138 = null;
         if(_loc2_.var_426)
         {
            _loc3_ = null;
            _loc4_ = var_202;
            while(_loc4_ != null)
            {
               if(_loc4_ == _loc2_)
               {
                  break;
               }
               _loc3_ = _loc4_;
               _loc4_ = _loc4_.var_275;
            }
            if(_loc3_ == null)
            {
               var_202 = _loc4_.var_275;
            }
            else
            {
               _loc3_.var_275 = _loc4_.var_275;
            }
            _loc4_.var_275 = null;
            _loc2_.var_426 = false;
         }
         if(_loc2_.var_407)
         {
            _loc3_ = null;
            _loc4_ = var_227;
            while(_loc4_ != null)
            {
               if(_loc4_ == _loc2_)
               {
                  break;
               }
               _loc3_ = _loc4_;
               _loc4_ = _loc4_.var_294;
            }
            if(_loc3_ == null)
            {
               var_227 = _loc4_.var_294;
            }
            else
            {
               _loc3_.var_294 = _loc4_.var_294;
            }
            _loc4_.var_294 = null;
            _loc2_.var_407 = false;
         }
         var _loc5_:* = null;
         var _loc6_:ZPP_AABBPair = var_144;
         while(_loc6_ != null)
         {
            _loc7_ = _loc6_.next;
            if(_loc6_.n1 == _loc2_ || _loc6_.n2 == _loc2_)
            {
               if(_loc5_ == null)
               {
                  var_144 = _loc7_;
               }
               else
               {
                  _loc5_.next = _loc7_;
               }
               if(_loc6_.var_246 != null)
               {
                  _loc6_.var_246.var_209 = null;
               }
               _loc6_.var_246 = null;
               _loc6_.n1.name_7.var_144.remove(_loc6_);
               _loc6_.n2.name_7.var_144.remove(_loc6_);
               _loc8_ = _loc6_;
               _loc3_ = null;
               _loc8_.n2 = _loc3_;
               _loc8_.n1 = _loc3_;
               _loc8_.var_129 = false;
               _loc8_.next = ZPP_AABBPair.var_72;
               ZPP_AABBPair.var_72 = _loc8_;
               _loc6_ = _loc7_;
            }
            else
            {
               _loc5_ = _loc6_;
               _loc6_ = _loc7_;
            }
         }
         while(param1.var_144.var_73 != null)
         {
            _loc7_ = param1.var_144.method_105();
            if(_loc7_.n1 == _loc2_)
            {
               _loc7_.n2.name_7.var_144.remove(_loc7_);
            }
            else
            {
               _loc7_.n1.name_7.var_144.remove(_loc7_);
            }
            if(_loc7_.var_246 != null)
            {
               _loc7_.var_246.var_209 = null;
            }
            _loc7_.var_246 = null;
            _loc8_ = _loc7_;
            _loc3_ = null;
            _loc8_.n2 = _loc3_;
            _loc8_.n1 = _loc3_;
            _loc8_.var_129 = false;
            _loc8_.next = ZPP_AABBPair.var_72;
            ZPP_AABBPair.var_72 = _loc8_;
         }
         _loc3_ = _loc2_;
         _loc3_.height = -1;
         var _loc9_:ZPP_AABB = _loc3_.name_3;
         if(_loc9_.outer != null)
         {
            _loc9_.outer.zpp_inner = null;
            _loc9_.outer = null;
         }
         _loc9_.var_239 = null;
         _loc9_.var_238 = null;
         _loc9_._invalidate = null;
         _loc9_._validate = null;
         _loc9_.next = ZPP_AABB.var_72;
         ZPP_AABB.var_72 = _loc9_;
         _loc4_ = null;
         _loc3_.parent = _loc4_;
         _loc4_ = _loc4_;
         _loc3_.child2 = _loc4_;
         _loc3_.child1 = _loc4_;
         _loc3_.next = null;
         _loc3_.var_275 = null;
         _loc3_.var_294 = null;
         _loc3_.next = ZPP_AABBNode.var_72;
         ZPP_AABBNode.var_72 = _loc3_;
      }
      
      public final function method_393(param1:ZPP_Shape) : void
      {
         var _loc2_:* = null as ZPP_AABBNode;
         if(ZPP_AABBNode.var_72 == null)
         {
            _loc2_ = new ZPP_AABBNode();
         }
         else
         {
            _loc2_ = ZPP_AABBNode.var_72;
            ZPP_AABBNode.var_72 = _loc2_.next;
            _loc2_.next = null;
         }
         if(ZPP_AABB.var_72 == null)
         {
            _loc2_.name_3 = new ZPP_AABB();
         }
         else
         {
            _loc2_.name_3 = ZPP_AABB.var_72;
            ZPP_AABB.var_72 = _loc2_.name_3.next;
            _loc2_.name_3.next = null;
         }
         null;
         _loc2_.var_407 = false;
         _loc2_.var_426 = false;
         _loc2_.var_374 = false;
         _loc2_.name_7 = param1;
         param1.var_138 = _loc2_;
         _loc2_.var_426 = true;
         _loc2_.var_374 = true;
         _loc2_.var_275 = var_202;
         var_202 = _loc2_;
      }
   }
}
