package zpp_nape.geom
{
   import nape.geom.Vec2;
   import zpp_nape.phys.ZPP_Body;
   import zpp_nape.shape.ZPP_Circle;
   import zpp_nape.shape.ZPP_Edge;
   import zpp_nape.shape.ZPP_Polygon;
   import zpp_nape.shape.ZPP_Shape;
   import zpp_nape.util.ZNPNode_ZPP_Edge;
   import zpp_nape.util.class_223;
   
   public final class class_241
   {
       
      
      public function class_241()
      {
      }
      
      public static function method_180(param1:ZPP_Shape) : void
      {
         var _loc2_:* = null as ZPP_Polygon;
         var _loc3_:* = null as ZPP_Body;
         var _loc4_:* = null as ZPP_Vec2;
         var _loc5_:* = null as ZPP_Vec2;
         var _loc6_:* = null as ZPP_Vec2;
         var _loc7_:* = null as ZPP_Vec2;
         var _loc8_:* = null as ZNPNode_ZPP_Edge;
         var _loc9_:* = null as ZPP_Edge;
         var _loc10_:* = null as ZPP_Circle;
         var _loc11_:* = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:* = null as ZPP_Vec2;
         if(param1.type == class_223.var_155)
         {
            _loc2_ = param1.name_6;
            if(_loc2_.var_247)
            {
               if(_loc2_.body != null)
               {
                  _loc2_.var_247 = false;
                  _loc2_.method_124();
                  _loc3_ = _loc2_.body;
                  if(_loc3_.var_113)
                  {
                     _loc3_.var_113 = false;
                     _loc3_.var_84 = Number(Math.sin(_loc3_.var_93));
                     _loc3_.var_83 = Number(Math.cos(_loc3_.var_93));
                     null;
                  }
                  if(_loc2_.var_153)
                  {
                     if(_loc2_.body != null)
                     {
                        _loc2_.var_153 = false;
                        _loc2_.method_116();
                        _loc3_ = _loc2_.body;
                        if(_loc3_.var_113)
                        {
                           _loc3_.var_113 = false;
                           _loc3_.var_84 = Number(Math.sin(_loc3_.var_93));
                           _loc3_.var_83 = Number(Math.cos(_loc3_.var_93));
                           null;
                        }
                        _loc4_ = _loc2_.var_88.next;
                        _loc5_ = _loc2_.var_107.next;
                        while(_loc5_ != null)
                        {
                           _loc6_ = _loc5_;
                           _loc7_ = _loc4_;
                           _loc4_ = _loc4_.next;
                           _loc6_.x = Number(_loc2_.body.var_95 + (_loc2_.body.var_83 * _loc7_.x - _loc2_.body.var_84 * _loc7_.y));
                           _loc6_.y = Number(_loc2_.body.var_96 + (Number(_loc7_.x * _loc2_.body.var_84 + _loc7_.y * _loc2_.body.var_83)));
                           _loc5_ = _loc5_.next;
                        }
                     }
                  }
                  _loc8_ = _loc2_.name_11.var_73;
                  _loc4_ = _loc2_.var_107.next;
                  _loc5_ = _loc4_;
                  _loc4_ = _loc4_.next;
                  while(_loc4_ != null)
                  {
                     _loc6_ = _loc4_;
                     _loc9_ = _loc8_.var_74;
                     _loc8_ = _loc8_.next;
                     _loc9_.gp0 = _loc5_;
                     _loc9_.gp1 = _loc6_;
                     _loc9_.var_92 = _loc2_.body.var_83 * _loc9_.var_122 - _loc2_.body.var_84 * _loc9_.var_121;
                     _loc9_.var_91 = Number(_loc9_.var_122 * _loc2_.body.var_84 + _loc9_.var_121 * _loc2_.body.var_83);
                     _loc9_.gprojection = Number(Number(_loc2_.body.var_95 * _loc9_.var_92 + _loc2_.body.var_96 * _loc9_.var_91) + _loc9_.var_165);
                     if(_loc9_.wrap_gnorm != null)
                     {
                        _loc9_.wrap_gnorm.zpp_inner.x = _loc9_.var_92;
                        _loc9_.wrap_gnorm.zpp_inner.y = _loc9_.var_91;
                     }
                     _loc9_.tp0 = _loc9_.gp0.y * _loc9_.var_92 - _loc9_.gp0.x * _loc9_.var_91;
                     _loc9_.tp1 = _loc9_.gp1.y * _loc9_.var_92 - _loc9_.gp1.x * _loc9_.var_91;
                     _loc5_ = _loc6_;
                     _loc4_ = _loc4_.next;
                  }
                  _loc6_ = _loc2_.var_107.next;
                  _loc9_ = _loc8_.var_74;
                  _loc8_ = _loc8_.next;
                  _loc9_.gp0 = _loc5_;
                  _loc9_.gp1 = _loc6_;
                  _loc9_.var_92 = _loc2_.body.var_83 * _loc9_.var_122 - _loc2_.body.var_84 * _loc9_.var_121;
                  _loc9_.var_91 = Number(_loc9_.var_122 * _loc2_.body.var_84 + _loc9_.var_121 * _loc2_.body.var_83);
                  _loc9_.gprojection = Number(Number(_loc2_.body.var_95 * _loc9_.var_92 + _loc2_.body.var_96 * _loc9_.var_91) + _loc9_.var_165);
                  if(_loc9_.wrap_gnorm != null)
                  {
                     _loc9_.wrap_gnorm.zpp_inner.x = _loc9_.var_92;
                     _loc9_.wrap_gnorm.zpp_inner.y = _loc9_.var_91;
                  }
                  _loc9_.tp0 = _loc9_.gp0.y * _loc9_.var_92 - _loc9_.gp0.x * _loc9_.var_91;
                  _loc9_.tp1 = _loc9_.gp1.y * _loc9_.var_92 - _loc9_.gp1.x * _loc9_.var_91;
               }
            }
         }
         if(param1.var_149)
         {
            if(param1.body != null)
            {
               param1.var_149 = false;
               if(param1.type == class_223.var_131)
               {
                  _loc10_ = param1.var_102;
                  if(_loc10_.var_139)
                  {
                     if(_loc10_.body != null)
                     {
                        _loc10_.var_139 = false;
                        if(_loc10_.var_140)
                        {
                           _loc10_.var_140 = false;
                           if(_loc10_.type == class_223.var_155)
                           {
                              _loc2_ = _loc10_.name_6;
                              if(_loc2_.var_88.next.next == null)
                              {
                                 _loc2_.var_82 = _loc2_.var_88.next.x;
                                 _loc2_.var_81 = _loc2_.var_88.next.y;
                                 null;
                              }
                              else if(_loc2_.var_88.next.next.next == null)
                              {
                                 _loc2_.var_82 = _loc2_.var_88.next.x;
                                 _loc2_.var_81 = _loc2_.var_88.next.y;
                                 _loc11_ = 1;
                                 _loc2_.var_82 = Number(_loc2_.var_82 + _loc2_.var_88.next.next.x * _loc11_);
                                 _loc2_.var_81 = Number(_loc2_.var_81 + _loc2_.var_88.next.next.y * _loc11_);
                                 _loc11_ = 0.5;
                                 _loc2_.var_82 = _loc2_.var_82 * _loc11_;
                                 _loc2_.var_81 = _loc2_.var_81 * _loc11_;
                              }
                              else
                              {
                                 _loc2_.var_82 = 0;
                                 _loc2_.var_81 = 0;
                                 _loc11_ = 0;
                                 _loc4_ = _loc2_.var_88.next;
                                 _loc5_ = _loc4_;
                                 _loc4_ = _loc4_.next;
                                 _loc6_ = _loc4_;
                                 _loc4_ = _loc4_.next;
                                 while(_loc4_ != null)
                                 {
                                    _loc7_ = _loc4_;
                                    _loc11_ = Number(Number(_loc11_ + _loc6_.x * (_loc7_.y - _loc5_.y)));
                                    _loc12_ = _loc7_.y * _loc6_.x - _loc7_.x * _loc6_.y;
                                    _loc2_.var_82 = Number(_loc2_.var_82 + (_loc6_.x + _loc7_.x) * _loc12_);
                                    _loc2_.var_81 = Number(_loc2_.var_81 + (_loc6_.y + _loc7_.y) * _loc12_);
                                    _loc5_ = _loc6_;
                                    _loc6_ = _loc7_;
                                    _loc4_ = _loc4_.next;
                                 }
                                 _loc4_ = _loc2_.var_88.next;
                                 _loc7_ = _loc4_;
                                 _loc11_ = Number(Number(_loc11_ + _loc6_.x * (_loc7_.y - _loc5_.y)));
                                 _loc12_ = _loc7_.y * _loc6_.x - _loc7_.x * _loc6_.y;
                                 _loc2_.var_82 = Number(_loc2_.var_82 + (_loc6_.x + _loc7_.x) * _loc12_);
                                 _loc2_.var_81 = Number(_loc2_.var_81 + (_loc6_.y + _loc7_.y) * _loc12_);
                                 _loc5_ = _loc6_;
                                 _loc6_ = _loc7_;
                                 _loc4_ = _loc4_.next;
                                 _loc13_ = _loc4_;
                                 _loc11_ = Number(Number(_loc11_ + _loc6_.x * (_loc13_.y - _loc5_.y)));
                                 _loc12_ = _loc13_.y * _loc6_.x - _loc13_.x * _loc6_.y;
                                 _loc2_.var_82 = Number(_loc2_.var_82 + (_loc6_.x + _loc13_.x) * _loc12_);
                                 _loc2_.var_81 = Number(_loc2_.var_81 + (_loc6_.y + _loc13_.y) * _loc12_);
                                 _loc11_ = Number(1 / (3 * _loc11_));
                                 _loc12_ = _loc11_;
                                 _loc2_.var_82 = _loc2_.var_82 * _loc12_;
                                 _loc2_.var_81 = _loc2_.var_81 * _loc12_;
                              }
                           }
                           if(_loc10_.var_115 != null)
                           {
                              _loc10_.var_115.zpp_inner.x = _loc10_.var_82;
                              _loc10_.var_115.zpp_inner.y = _loc10_.var_81;
                           }
                        }
                        _loc3_ = _loc10_.body;
                        if(_loc3_.var_113)
                        {
                           _loc3_.var_113 = false;
                           _loc3_.var_84 = Number(Math.sin(_loc3_.var_93));
                           _loc3_.var_83 = Number(Math.cos(_loc3_.var_93));
                           null;
                        }
                        _loc10_.var_99 = Number(_loc10_.body.var_95 + (_loc10_.body.var_83 * _loc10_.var_82 - _loc10_.body.var_84 * _loc10_.var_81));
                        _loc10_.var_100 = Number(_loc10_.body.var_96 + (Number(_loc10_.var_82 * _loc10_.body.var_84 + _loc10_.var_81 * _loc10_.body.var_83)));
                     }
                  }
                  _loc11_ = Number(_loc10_.radius);
                  _loc12_ = _loc10_.radius;
                  _loc10_.name_3.var_77 = _loc10_.var_99 - _loc11_;
                  _loc10_.name_3.var_78 = _loc10_.var_100 - _loc12_;
                  _loc10_.name_3.var_79 = Number(_loc10_.var_99 + _loc11_);
                  _loc10_.name_3.var_80 = Number(_loc10_.var_100 + _loc12_);
               }
               else
               {
                  _loc2_ = param1.name_6;
                  if(_loc2_.var_153)
                  {
                     if(_loc2_.body != null)
                     {
                        _loc2_.var_153 = false;
                        _loc2_.method_116();
                        _loc3_ = _loc2_.body;
                        if(_loc3_.var_113)
                        {
                           _loc3_.var_113 = false;
                           _loc3_.var_84 = Number(Math.sin(_loc3_.var_93));
                           _loc3_.var_83 = Number(Math.cos(_loc3_.var_93));
                           null;
                        }
                        _loc4_ = _loc2_.var_88.next;
                        _loc5_ = _loc2_.var_107.next;
                        while(_loc5_ != null)
                        {
                           _loc6_ = _loc5_;
                           _loc7_ = _loc4_;
                           _loc4_ = _loc4_.next;
                           _loc6_.x = Number(_loc2_.body.var_95 + (_loc2_.body.var_83 * _loc7_.x - _loc2_.body.var_84 * _loc7_.y));
                           _loc6_.y = Number(_loc2_.body.var_96 + (Number(_loc7_.x * _loc2_.body.var_84 + _loc7_.y * _loc2_.body.var_83)));
                           _loc5_ = _loc5_.next;
                        }
                     }
                  }
                  _loc4_ = _loc2_.var_107.next;
                  _loc2_.name_3.var_77 = _loc4_.x;
                  _loc2_.name_3.var_78 = _loc4_.y;
                  _loc2_.name_3.var_79 = _loc4_.x;
                  _loc2_.name_3.var_80 = _loc4_.y;
                  _loc5_ = _loc2_.var_107.next.next;
                  while(_loc5_ != null)
                  {
                     _loc6_ = _loc5_;
                     if(_loc6_.x < _loc2_.name_3.var_77)
                     {
                        _loc2_.name_3.var_77 = _loc6_.x;
                     }
                     if(_loc6_.x > _loc2_.name_3.var_79)
                     {
                        _loc2_.name_3.var_79 = _loc6_.x;
                     }
                     if(_loc6_.y < _loc2_.name_3.var_78)
                     {
                        _loc2_.name_3.var_78 = _loc6_.y;
                     }
                     if(_loc6_.y > _loc2_.name_3.var_80)
                     {
                        _loc2_.name_3.var_80 = _loc6_.y;
                     }
                     _loc5_ = _loc5_.next;
                  }
               }
            }
         }
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
                     _loc2_ = param1.name_6;
                     if(_loc2_.var_88.next.next == null)
                     {
                        _loc2_.var_82 = _loc2_.var_88.next.x;
                        _loc2_.var_81 = _loc2_.var_88.next.y;
                        null;
                     }
                     else if(_loc2_.var_88.next.next.next == null)
                     {
                        _loc2_.var_82 = _loc2_.var_88.next.x;
                        _loc2_.var_81 = _loc2_.var_88.next.y;
                        _loc11_ = 1;
                        _loc2_.var_82 = Number(_loc2_.var_82 + _loc2_.var_88.next.next.x * _loc11_);
                        _loc2_.var_81 = Number(_loc2_.var_81 + _loc2_.var_88.next.next.y * _loc11_);
                        _loc11_ = 0.5;
                        _loc2_.var_82 = _loc2_.var_82 * _loc11_;
                        _loc2_.var_81 = _loc2_.var_81 * _loc11_;
                     }
                     else
                     {
                        _loc2_.var_82 = 0;
                        _loc2_.var_81 = 0;
                        _loc11_ = 0;
                        _loc4_ = _loc2_.var_88.next;
                        _loc5_ = _loc4_;
                        _loc4_ = _loc4_.next;
                        _loc6_ = _loc4_;
                        _loc4_ = _loc4_.next;
                        while(_loc4_ != null)
                        {
                           _loc7_ = _loc4_;
                           _loc11_ = Number(Number(_loc11_ + _loc6_.x * (_loc7_.y - _loc5_.y)));
                           _loc12_ = _loc7_.y * _loc6_.x - _loc7_.x * _loc6_.y;
                           _loc2_.var_82 = Number(_loc2_.var_82 + (_loc6_.x + _loc7_.x) * _loc12_);
                           _loc2_.var_81 = Number(_loc2_.var_81 + (_loc6_.y + _loc7_.y) * _loc12_);
                           _loc5_ = _loc6_;
                           _loc6_ = _loc7_;
                           _loc4_ = _loc4_.next;
                        }
                        _loc4_ = _loc2_.var_88.next;
                        _loc7_ = _loc4_;
                        _loc11_ = Number(Number(_loc11_ + _loc6_.x * (_loc7_.y - _loc5_.y)));
                        _loc12_ = _loc7_.y * _loc6_.x - _loc7_.x * _loc6_.y;
                        _loc2_.var_82 = Number(_loc2_.var_82 + (_loc6_.x + _loc7_.x) * _loc12_);
                        _loc2_.var_81 = Number(_loc2_.var_81 + (_loc6_.y + _loc7_.y) * _loc12_);
                        _loc5_ = _loc6_;
                        _loc6_ = _loc7_;
                        _loc4_ = _loc4_.next;
                        _loc13_ = _loc4_;
                        _loc11_ = Number(Number(_loc11_ + _loc6_.x * (_loc13_.y - _loc5_.y)));
                        _loc12_ = _loc13_.y * _loc6_.x - _loc13_.x * _loc6_.y;
                        _loc2_.var_82 = Number(_loc2_.var_82 + (_loc6_.x + _loc13_.x) * _loc12_);
                        _loc2_.var_81 = Number(_loc2_.var_81 + (_loc6_.y + _loc13_.y) * _loc12_);
                        _loc11_ = Number(1 / (3 * _loc11_));
                        _loc12_ = _loc11_;
                        _loc2_.var_82 = _loc2_.var_82 * _loc12_;
                        _loc2_.var_81 = _loc2_.var_81 * _loc12_;
                     }
                  }
                  if(param1.var_115 != null)
                  {
                     param1.var_115.zpp_inner.x = param1.var_82;
                     param1.var_115.zpp_inner.y = param1.var_81;
                  }
               }
               _loc3_ = param1.body;
               if(_loc3_.var_113)
               {
                  _loc3_.var_113 = false;
                  _loc3_.var_84 = Number(Math.sin(_loc3_.var_93));
                  _loc3_.var_83 = Number(Math.cos(_loc3_.var_93));
                  null;
               }
               param1.var_99 = Number(param1.body.var_95 + (param1.body.var_83 * param1.var_82 - param1.body.var_84 * param1.var_81));
               param1.var_100 = Number(param1.body.var_96 + (Number(param1.var_82 * param1.body.var_84 + param1.var_81 * param1.body.var_83)));
            }
         }
      }
   }
}
