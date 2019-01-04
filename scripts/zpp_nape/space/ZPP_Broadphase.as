package zpp_nape.space
{
   import nape.geom.RayResult;
   import nape.geom.Vec2;
   import nape.geom.class_233;
   import nape.geom.class_242;
   import package_29.Body;
   import package_29.class_198;
   import package_29.class_205;
   import package_32.Circle;
   import package_32.Polygon;
   import package_32.Shape;
   import package_32.class_230;
   import zpp_nape.dynamics.ZPP_InteractionFilter;
   import zpp_nape.geom.ZPP_AABB;
   import zpp_nape.geom.ZPP_Mat23;
   import zpp_nape.geom.ZPP_Vec2;
   import zpp_nape.geom.class_311;
   import zpp_nape.phys.ZPP_Body;
   import zpp_nape.shape.ZPP_Circle;
   import zpp_nape.shape.ZPP_Edge;
   import zpp_nape.shape.ZPP_Polygon;
   import zpp_nape.shape.ZPP_Shape;
   import zpp_nape.util.ZNPNode_ZPP_Edge;
   import zpp_nape.util.class_219;
   import zpp_nape.util.class_223;
   
   public class ZPP_Broadphase
   {
       
      
      public var var_219:class_301;
      
      public var space:ZPP_Space;
      
      public var matrix:class_242;
      
      public var var_432:Boolean;
      
      public var var_551:class_309;
      
      public var var_214:Shape;
      
      public var var_210:Shape;
      
      public function ZPP_Broadphase()
      {
         var_214 = null;
         matrix = null;
         var_210 = null;
         var_551 = null;
         var_219 = null;
         var_432 = false;
         space = null;
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
      
      public final function method_202(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:* = null as Body;
         var _loc5_:* = null as class_230;
         var _loc6_:* = null as Shape;
         var _loc7_:Boolean = false;
         var _loc8_:* = null as Vec2;
         var _loc9_:Boolean = false;
         var _loc10_:* = null as ZPP_Vec2;
         var _loc11_:* = null as Shape;
         var _loc12_:* = null as ZPP_Circle;
         var _loc13_:* = NaN;
         var _loc14_:* = null as class_242;
         var _loc15_:Number = NaN;
         var _loc16_:* = null as class_242;
         var _loc17_:* = null as ZPP_Mat23;
         var _loc19_:* = null as ZPP_Polygon;
         var _loc20_:* = null as ZPP_Vec2;
         var _loc21_:* = null as ZPP_Vec2;
         var _loc22_:* = null as ZPP_Vec2;
         var _loc23_:* = null as ZPP_Vec2;
         var _loc24_:* = null as ZPP_Body;
         if(var_214 == null)
         {
            §§push();
            if(class_223.var_352 == null)
            {
               class_223.var_87 = true;
               class_223.var_352 = new class_198();
               class_223.var_87 = false;
            }
            _loc4_ = new §§pop().Body(class_223.var_352);
            _loc5_ = _loc4_.zpp_inner.var_222;
            _loc7_ = false;
            §§push();
            §§push();
            §§push(param3);
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
               _loc10_.x = param1;
               _loc10_.y = param2;
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
               if(_loc8_.zpp_inner.x == param1)
               {
                  §§pop();
                  _loc10_ = _loc8_.zpp_inner;
                  if(_loc10_._validate != null)
                  {
                     _loc10_._validate();
                  }
                  §§push(_loc8_.zpp_inner.y == param2);
               }
               if(!§§pop())
               {
                  _loc8_.zpp_inner.x = param1;
                  _loc8_.zpp_inner.y = param2;
                  _loc10_ = _loc8_.zpp_inner;
                  if(_loc10_._invalidate != null)
                  {
                     _loc10_._invalidate(_loc10_);
                  }
               }
               _loc8_;
            }
            _loc8_.zpp_inner.name_5 = _loc7_;
            _loc11_ = new §§pop().Circle(§§pop(),_loc8_);
            §§pop().var_214 = _loc11_;
            _loc6_ = _loc11_;
            if(_loc5_.zpp_inner.var_111)
            {
               _loc5_.push(_loc6_);
            }
            else
            {
               _loc5_.unshift(_loc6_);
            }
         }
         else
         {
            _loc12_ = var_214.zpp_inner.var_102;
            _loc13_ = Number(param3 / _loc12_.radius);
            if(matrix == null)
            {
               matrix = new class_242();
            }
            _loc14_ = matrix;
            _loc16_ = matrix;
            _loc16_.zpp_inner.d = _loc13_;
            _loc17_ = _loc16_.zpp_inner;
            if(_loc17_._invalidate != null)
            {
               _loc17_._invalidate();
            }
            _loc15_ = _loc16_.zpp_inner.d;
            _loc14_.zpp_inner.a = _loc15_;
            _loc17_ = _loc14_.zpp_inner;
            if(_loc17_._invalidate != null)
            {
               _loc17_._invalidate();
            }
            _loc14_.zpp_inner.a;
            _loc14_ = matrix;
            _loc16_ = matrix;
            _loc16_.zpp_inner.c = 0;
            _loc17_ = _loc16_.zpp_inner;
            if(_loc17_._invalidate != null)
            {
               _loc17_._invalidate();
            }
            _loc15_ = _loc16_.zpp_inner.c;
            _loc14_.zpp_inner.b = _loc15_;
            _loc17_ = _loc14_.zpp_inner;
            if(_loc17_._invalidate != null)
            {
               _loc17_._invalidate();
            }
            _loc14_.zpp_inner.b;
            _loc14_ = matrix;
            _loc14_.zpp_inner.tx = param1 - _loc13_ * _loc12_.var_82;
            _loc17_ = _loc14_.zpp_inner;
            if(_loc17_._invalidate != null)
            {
               _loc17_._invalidate();
            }
            _loc14_.zpp_inner.tx;
            _loc14_ = matrix;
            _loc14_.zpp_inner.ty = param2 - _loc13_ * _loc12_.var_81;
            _loc17_ = _loc14_.zpp_inner;
            if(_loc17_._invalidate != null)
            {
               _loc17_._invalidate();
            }
            _loc14_.zpp_inner.ty;
            var_214.transform(matrix);
         }
         var _loc18_:ZPP_Shape = var_214.zpp_inner;
         if(_loc18_.var_149)
         {
            if(_loc18_.body != null)
            {
               _loc18_.var_149 = false;
               if(_loc18_.type == class_223.var_131)
               {
                  _loc12_ = _loc18_.var_102;
                  if(_loc12_.var_139)
                  {
                     if(_loc12_.body != null)
                     {
                        _loc12_.var_139 = false;
                        if(_loc12_.var_140)
                        {
                           _loc12_.var_140 = false;
                           if(_loc12_.type == class_223.var_155)
                           {
                              _loc19_ = _loc12_.name_6;
                              if(_loc19_.var_88.next.next == null)
                              {
                                 _loc19_.var_82 = _loc19_.var_88.next.x;
                                 _loc19_.var_81 = _loc19_.var_88.next.y;
                                 null;
                              }
                              else if(_loc19_.var_88.next.next.next == null)
                              {
                                 _loc19_.var_82 = _loc19_.var_88.next.x;
                                 _loc19_.var_81 = _loc19_.var_88.next.y;
                                 _loc13_ = 1;
                                 _loc19_.var_82 = Number(_loc19_.var_82 + _loc19_.var_88.next.next.x * _loc13_);
                                 _loc19_.var_81 = Number(_loc19_.var_81 + _loc19_.var_88.next.next.y * _loc13_);
                                 _loc13_ = 0.5;
                                 _loc19_.var_82 = _loc19_.var_82 * _loc13_;
                                 _loc19_.var_81 = _loc19_.var_81 * _loc13_;
                              }
                              else
                              {
                                 _loc19_.var_82 = 0;
                                 _loc19_.var_81 = 0;
                                 _loc13_ = 0;
                                 _loc10_ = _loc19_.var_88.next;
                                 _loc20_ = _loc10_;
                                 _loc10_ = _loc10_.next;
                                 _loc21_ = _loc10_;
                                 _loc10_ = _loc10_.next;
                                 while(_loc10_ != null)
                                 {
                                    _loc22_ = _loc10_;
                                    _loc13_ = Number(Number(_loc13_ + _loc21_.x * (_loc22_.y - _loc20_.y)));
                                    _loc15_ = _loc22_.y * _loc21_.x - _loc22_.x * _loc21_.y;
                                    _loc19_.var_82 = Number(_loc19_.var_82 + (_loc21_.x + _loc22_.x) * _loc15_);
                                    _loc19_.var_81 = Number(_loc19_.var_81 + (_loc21_.y + _loc22_.y) * _loc15_);
                                    _loc20_ = _loc21_;
                                    _loc21_ = _loc22_;
                                    _loc10_ = _loc10_.next;
                                 }
                                 _loc10_ = _loc19_.var_88.next;
                                 _loc22_ = _loc10_;
                                 _loc13_ = Number(Number(_loc13_ + _loc21_.x * (_loc22_.y - _loc20_.y)));
                                 _loc15_ = _loc22_.y * _loc21_.x - _loc22_.x * _loc21_.y;
                                 _loc19_.var_82 = Number(_loc19_.var_82 + (_loc21_.x + _loc22_.x) * _loc15_);
                                 _loc19_.var_81 = Number(_loc19_.var_81 + (_loc21_.y + _loc22_.y) * _loc15_);
                                 _loc20_ = _loc21_;
                                 _loc21_ = _loc22_;
                                 _loc10_ = _loc10_.next;
                                 _loc23_ = _loc10_;
                                 _loc13_ = Number(Number(_loc13_ + _loc21_.x * (_loc23_.y - _loc20_.y)));
                                 _loc15_ = _loc23_.y * _loc21_.x - _loc23_.x * _loc21_.y;
                                 _loc19_.var_82 = Number(_loc19_.var_82 + (_loc21_.x + _loc23_.x) * _loc15_);
                                 _loc19_.var_81 = Number(_loc19_.var_81 + (_loc21_.y + _loc23_.y) * _loc15_);
                                 _loc13_ = Number(1 / (3 * _loc13_));
                                 _loc15_ = _loc13_;
                                 _loc19_.var_82 = _loc19_.var_82 * _loc15_;
                                 _loc19_.var_81 = _loc19_.var_81 * _loc15_;
                              }
                           }
                           if(_loc12_.var_115 != null)
                           {
                              _loc12_.var_115.zpp_inner.x = _loc12_.var_82;
                              _loc12_.var_115.zpp_inner.y = _loc12_.var_81;
                           }
                        }
                        _loc24_ = _loc12_.body;
                        if(_loc24_.var_113)
                        {
                           _loc24_.var_113 = false;
                           _loc24_.var_84 = Number(Math.sin(_loc24_.var_93));
                           _loc24_.var_83 = Number(Math.cos(_loc24_.var_93));
                           null;
                        }
                        _loc12_.var_99 = Number(_loc12_.body.var_95 + (_loc12_.body.var_83 * _loc12_.var_82 - _loc12_.body.var_84 * _loc12_.var_81));
                        _loc12_.var_100 = Number(_loc12_.body.var_96 + (Number(_loc12_.var_82 * _loc12_.body.var_84 + _loc12_.var_81 * _loc12_.body.var_83)));
                     }
                  }
                  _loc13_ = Number(_loc12_.radius);
                  _loc15_ = _loc12_.radius;
                  _loc12_.name_3.var_77 = _loc12_.var_99 - _loc13_;
                  _loc12_.name_3.var_78 = _loc12_.var_100 - _loc15_;
                  _loc12_.name_3.var_79 = Number(_loc12_.var_99 + _loc13_);
                  _loc12_.name_3.var_80 = Number(_loc12_.var_100 + _loc15_);
               }
               else
               {
                  _loc19_ = _loc18_.name_6;
                  if(_loc19_.var_153)
                  {
                     if(_loc19_.body != null)
                     {
                        _loc19_.var_153 = false;
                        _loc19_.method_116();
                        _loc24_ = _loc19_.body;
                        if(_loc24_.var_113)
                        {
                           _loc24_.var_113 = false;
                           _loc24_.var_84 = Number(Math.sin(_loc24_.var_93));
                           _loc24_.var_83 = Number(Math.cos(_loc24_.var_93));
                           null;
                        }
                        _loc10_ = _loc19_.var_88.next;
                        _loc20_ = _loc19_.var_107.next;
                        while(_loc20_ != null)
                        {
                           _loc21_ = _loc20_;
                           _loc22_ = _loc10_;
                           _loc10_ = _loc10_.next;
                           _loc21_.x = Number(_loc19_.body.var_95 + (_loc19_.body.var_83 * _loc22_.x - _loc19_.body.var_84 * _loc22_.y));
                           _loc21_.y = Number(_loc19_.body.var_96 + (Number(_loc22_.x * _loc19_.body.var_84 + _loc22_.y * _loc19_.body.var_83)));
                           _loc20_ = _loc20_.next;
                        }
                     }
                  }
                  _loc10_ = _loc19_.var_107.next;
                  _loc19_.name_3.var_77 = _loc10_.x;
                  _loc19_.name_3.var_78 = _loc10_.y;
                  _loc19_.name_3.var_79 = _loc10_.x;
                  _loc19_.name_3.var_80 = _loc10_.y;
                  _loc20_ = _loc19_.var_107.next.next;
                  while(_loc20_ != null)
                  {
                     _loc21_ = _loc20_;
                     if(_loc21_.x < _loc19_.name_3.var_77)
                     {
                        _loc19_.name_3.var_77 = _loc21_.x;
                     }
                     if(_loc21_.x > _loc19_.name_3.var_79)
                     {
                        _loc19_.name_3.var_79 = _loc21_.x;
                     }
                     if(_loc21_.y < _loc19_.name_3.var_78)
                     {
                        _loc19_.name_3.var_78 = _loc21_.y;
                     }
                     if(_loc21_.y > _loc19_.name_3.var_80)
                     {
                        _loc19_.name_3.var_80 = _loc21_.y;
                     }
                     _loc20_ = _loc20_.next;
                  }
               }
            }
         }
      }
      
      public final function method_210(param1:ZPP_AABB) : void
      {
         var _loc2_:* = null as Body;
         var _loc3_:* = null as class_230;
         var _loc4_:* = null as Shape;
         var _loc5_:* = null as Shape;
         var _loc6_:* = null as ZPP_AABB;
         var _loc7_:* = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:* = null as class_242;
         var _loc10_:* = null as ZPP_Mat23;
         var _loc11_:Number = NaN;
         var _loc12_:* = null as class_242;
         var _loc14_:* = null as ZPP_Circle;
         var _loc15_:* = null as ZPP_Polygon;
         var _loc16_:* = null as ZPP_Vec2;
         var _loc17_:* = null as ZPP_Vec2;
         var _loc18_:* = null as ZPP_Vec2;
         var _loc19_:* = null as ZPP_Vec2;
         var _loc20_:* = null as ZPP_Vec2;
         var _loc21_:* = null as ZPP_Body;
         var _loc22_:* = null as ZNPNode_ZPP_Edge;
         var _loc23_:* = null as ZPP_Edge;
         if(var_210 == null)
         {
            §§push();
            if(class_223.var_352 == null)
            {
               class_223.var_87 = true;
               class_223.var_352 = new class_198();
               class_223.var_87 = false;
            }
            _loc2_ = new §§pop().Body(class_223.var_352);
            _loc3_ = _loc2_.zpp_inner.var_222;
            _loc5_ = new Polygon(Polygon.rect(param1.var_77,param1.var_78,param1.var_79 - param1.var_77,param1.var_80 - param1.var_78));
            var_210 = _loc5_;
            _loc4_ = _loc5_;
            if(_loc3_.zpp_inner.var_111)
            {
               _loc3_.push(_loc4_);
            }
            else
            {
               _loc3_.unshift(_loc4_);
            }
         }
         else
         {
            _loc6_ = var_210.zpp_inner.name_3;
            _loc7_ = Number((param1.var_79 - param1.var_77) / (_loc6_.var_79 - _loc6_.var_77));
            _loc8_ = (param1.var_80 - param1.var_78) / (_loc6_.var_80 - _loc6_.var_78);
            if(matrix == null)
            {
               matrix = new class_242();
            }
            _loc9_ = matrix;
            _loc9_.zpp_inner.a = _loc7_;
            _loc10_ = _loc9_.zpp_inner;
            if(_loc10_._invalidate != null)
            {
               _loc10_._invalidate();
            }
            _loc9_.zpp_inner.a;
            _loc9_ = matrix;
            _loc12_ = matrix;
            _loc12_.zpp_inner.c = 0;
            _loc10_ = _loc12_.zpp_inner;
            if(_loc10_._invalidate != null)
            {
               _loc10_._invalidate();
            }
            _loc11_ = _loc12_.zpp_inner.c;
            _loc9_.zpp_inner.b = _loc11_;
            _loc10_ = _loc9_.zpp_inner;
            if(_loc10_._invalidate != null)
            {
               _loc10_._invalidate();
            }
            _loc9_.zpp_inner.b;
            _loc9_ = matrix;
            _loc9_.zpp_inner.d = _loc8_;
            _loc10_ = _loc9_.zpp_inner;
            if(_loc10_._invalidate != null)
            {
               _loc10_._invalidate();
            }
            _loc9_.zpp_inner.d;
            _loc9_ = matrix;
            _loc9_.zpp_inner.tx = param1.var_77 - _loc7_ * _loc6_.var_77;
            _loc10_ = _loc9_.zpp_inner;
            if(_loc10_._invalidate != null)
            {
               _loc10_._invalidate();
            }
            _loc9_.zpp_inner.tx;
            _loc9_ = matrix;
            _loc9_.zpp_inner.ty = param1.var_78 - _loc8_ * _loc6_.var_78;
            _loc10_ = _loc9_.zpp_inner;
            if(_loc10_._invalidate != null)
            {
               _loc10_._invalidate();
            }
            _loc9_.zpp_inner.ty;
            var_210.transform(matrix);
         }
         var _loc13_:ZPP_Shape = var_210.zpp_inner;
         if(_loc13_.var_149)
         {
            if(_loc13_.body != null)
            {
               _loc13_.var_149 = false;
               if(_loc13_.type == class_223.var_131)
               {
                  _loc14_ = _loc13_.var_102;
                  if(_loc14_.var_139)
                  {
                     if(_loc14_.body != null)
                     {
                        _loc14_.var_139 = false;
                        if(_loc14_.var_140)
                        {
                           _loc14_.var_140 = false;
                           if(_loc14_.type == class_223.var_155)
                           {
                              _loc15_ = _loc14_.name_6;
                              if(_loc15_.var_88.next.next == null)
                              {
                                 _loc15_.var_82 = _loc15_.var_88.next.x;
                                 _loc15_.var_81 = _loc15_.var_88.next.y;
                                 null;
                              }
                              else if(_loc15_.var_88.next.next.next == null)
                              {
                                 _loc15_.var_82 = _loc15_.var_88.next.x;
                                 _loc15_.var_81 = _loc15_.var_88.next.y;
                                 _loc7_ = 1;
                                 _loc15_.var_82 = Number(_loc15_.var_82 + _loc15_.var_88.next.next.x * _loc7_);
                                 _loc15_.var_81 = Number(_loc15_.var_81 + _loc15_.var_88.next.next.y * _loc7_);
                                 _loc7_ = 0.5;
                                 _loc15_.var_82 = _loc15_.var_82 * _loc7_;
                                 _loc15_.var_81 = _loc15_.var_81 * _loc7_;
                              }
                              else
                              {
                                 _loc15_.var_82 = 0;
                                 _loc15_.var_81 = 0;
                                 _loc7_ = 0;
                                 _loc16_ = _loc15_.var_88.next;
                                 _loc17_ = _loc16_;
                                 _loc16_ = _loc16_.next;
                                 _loc18_ = _loc16_;
                                 _loc16_ = _loc16_.next;
                                 while(_loc16_ != null)
                                 {
                                    _loc19_ = _loc16_;
                                    _loc7_ = Number(Number(_loc7_ + _loc18_.x * (_loc19_.y - _loc17_.y)));
                                    _loc8_ = _loc19_.y * _loc18_.x - _loc19_.x * _loc18_.y;
                                    _loc15_.var_82 = Number(_loc15_.var_82 + (_loc18_.x + _loc19_.x) * _loc8_);
                                    _loc15_.var_81 = Number(_loc15_.var_81 + (_loc18_.y + _loc19_.y) * _loc8_);
                                    _loc17_ = _loc18_;
                                    _loc18_ = _loc19_;
                                    _loc16_ = _loc16_.next;
                                 }
                                 _loc16_ = _loc15_.var_88.next;
                                 _loc19_ = _loc16_;
                                 _loc7_ = Number(Number(_loc7_ + _loc18_.x * (_loc19_.y - _loc17_.y)));
                                 _loc8_ = _loc19_.y * _loc18_.x - _loc19_.x * _loc18_.y;
                                 _loc15_.var_82 = Number(_loc15_.var_82 + (_loc18_.x + _loc19_.x) * _loc8_);
                                 _loc15_.var_81 = Number(_loc15_.var_81 + (_loc18_.y + _loc19_.y) * _loc8_);
                                 _loc17_ = _loc18_;
                                 _loc18_ = _loc19_;
                                 _loc16_ = _loc16_.next;
                                 _loc20_ = _loc16_;
                                 _loc7_ = Number(Number(_loc7_ + _loc18_.x * (_loc20_.y - _loc17_.y)));
                                 _loc8_ = _loc20_.y * _loc18_.x - _loc20_.x * _loc18_.y;
                                 _loc15_.var_82 = Number(_loc15_.var_82 + (_loc18_.x + _loc20_.x) * _loc8_);
                                 _loc15_.var_81 = Number(_loc15_.var_81 + (_loc18_.y + _loc20_.y) * _loc8_);
                                 _loc7_ = Number(1 / (3 * _loc7_));
                                 _loc8_ = _loc7_;
                                 _loc15_.var_82 = _loc15_.var_82 * _loc8_;
                                 _loc15_.var_81 = _loc15_.var_81 * _loc8_;
                              }
                           }
                           if(_loc14_.var_115 != null)
                           {
                              _loc14_.var_115.zpp_inner.x = _loc14_.var_82;
                              _loc14_.var_115.zpp_inner.y = _loc14_.var_81;
                           }
                        }
                        _loc21_ = _loc14_.body;
                        if(_loc21_.var_113)
                        {
                           _loc21_.var_113 = false;
                           _loc21_.var_84 = Number(Math.sin(_loc21_.var_93));
                           _loc21_.var_83 = Number(Math.cos(_loc21_.var_93));
                           null;
                        }
                        _loc14_.var_99 = Number(_loc14_.body.var_95 + (_loc14_.body.var_83 * _loc14_.var_82 - _loc14_.body.var_84 * _loc14_.var_81));
                        _loc14_.var_100 = Number(_loc14_.body.var_96 + (Number(_loc14_.var_82 * _loc14_.body.var_84 + _loc14_.var_81 * _loc14_.body.var_83)));
                     }
                  }
                  _loc7_ = Number(_loc14_.radius);
                  _loc8_ = _loc14_.radius;
                  _loc14_.name_3.var_77 = _loc14_.var_99 - _loc7_;
                  _loc14_.name_3.var_78 = _loc14_.var_100 - _loc8_;
                  _loc14_.name_3.var_79 = Number(_loc14_.var_99 + _loc7_);
                  _loc14_.name_3.var_80 = Number(_loc14_.var_100 + _loc8_);
               }
               else
               {
                  _loc15_ = _loc13_.name_6;
                  if(_loc15_.var_153)
                  {
                     if(_loc15_.body != null)
                     {
                        _loc15_.var_153 = false;
                        _loc15_.method_116();
                        _loc21_ = _loc15_.body;
                        if(_loc21_.var_113)
                        {
                           _loc21_.var_113 = false;
                           _loc21_.var_84 = Number(Math.sin(_loc21_.var_93));
                           _loc21_.var_83 = Number(Math.cos(_loc21_.var_93));
                           null;
                        }
                        _loc16_ = _loc15_.var_88.next;
                        _loc17_ = _loc15_.var_107.next;
                        while(_loc17_ != null)
                        {
                           _loc18_ = _loc17_;
                           _loc19_ = _loc16_;
                           _loc16_ = _loc16_.next;
                           _loc18_.x = Number(_loc15_.body.var_95 + (_loc15_.body.var_83 * _loc19_.x - _loc15_.body.var_84 * _loc19_.y));
                           _loc18_.y = Number(_loc15_.body.var_96 + (Number(_loc19_.x * _loc15_.body.var_84 + _loc19_.y * _loc15_.body.var_83)));
                           _loc17_ = _loc17_.next;
                        }
                     }
                  }
                  _loc16_ = _loc15_.var_107.next;
                  _loc15_.name_3.var_77 = _loc16_.x;
                  _loc15_.name_3.var_78 = _loc16_.y;
                  _loc15_.name_3.var_79 = _loc16_.x;
                  _loc15_.name_3.var_80 = _loc16_.y;
                  _loc17_ = _loc15_.var_107.next.next;
                  while(_loc17_ != null)
                  {
                     _loc18_ = _loc17_;
                     if(_loc18_.x < _loc15_.name_3.var_77)
                     {
                        _loc15_.name_3.var_77 = _loc18_.x;
                     }
                     if(_loc18_.x > _loc15_.name_3.var_79)
                     {
                        _loc15_.name_3.var_79 = _loc18_.x;
                     }
                     if(_loc18_.y < _loc15_.name_3.var_78)
                     {
                        _loc15_.name_3.var_78 = _loc18_.y;
                     }
                     if(_loc18_.y > _loc15_.name_3.var_80)
                     {
                        _loc15_.name_3.var_80 = _loc18_.y;
                     }
                     _loc17_ = _loc17_.next;
                  }
               }
            }
         }
         _loc15_ = var_210.zpp_inner.name_6;
         if(_loc15_.var_247)
         {
            if(_loc15_.body != null)
            {
               _loc15_.var_247 = false;
               _loc15_.method_124();
               _loc21_ = _loc15_.body;
               if(_loc21_.var_113)
               {
                  _loc21_.var_113 = false;
                  _loc21_.var_84 = Number(Math.sin(_loc21_.var_93));
                  _loc21_.var_83 = Number(Math.cos(_loc21_.var_93));
                  null;
               }
               if(_loc15_.var_153)
               {
                  if(_loc15_.body != null)
                  {
                     _loc15_.var_153 = false;
                     _loc15_.method_116();
                     _loc21_ = _loc15_.body;
                     if(_loc21_.var_113)
                     {
                        _loc21_.var_113 = false;
                        _loc21_.var_84 = Number(Math.sin(_loc21_.var_93));
                        _loc21_.var_83 = Number(Math.cos(_loc21_.var_93));
                        null;
                     }
                     _loc16_ = _loc15_.var_88.next;
                     _loc17_ = _loc15_.var_107.next;
                     while(_loc17_ != null)
                     {
                        _loc18_ = _loc17_;
                        _loc19_ = _loc16_;
                        _loc16_ = _loc16_.next;
                        _loc18_.x = Number(_loc15_.body.var_95 + (_loc15_.body.var_83 * _loc19_.x - _loc15_.body.var_84 * _loc19_.y));
                        _loc18_.y = Number(_loc15_.body.var_96 + (Number(_loc19_.x * _loc15_.body.var_84 + _loc19_.y * _loc15_.body.var_83)));
                        _loc17_ = _loc17_.next;
                     }
                  }
               }
               _loc22_ = _loc15_.name_11.var_73;
               _loc16_ = _loc15_.var_107.next;
               _loc17_ = _loc16_;
               _loc16_ = _loc16_.next;
               while(_loc16_ != null)
               {
                  _loc18_ = _loc16_;
                  _loc23_ = _loc22_.var_74;
                  _loc22_ = _loc22_.next;
                  _loc23_.gp0 = _loc17_;
                  _loc23_.gp1 = _loc18_;
                  _loc23_.var_92 = _loc15_.body.var_83 * _loc23_.var_122 - _loc15_.body.var_84 * _loc23_.var_121;
                  _loc23_.var_91 = Number(_loc23_.var_122 * _loc15_.body.var_84 + _loc23_.var_121 * _loc15_.body.var_83);
                  _loc23_.gprojection = Number(Number(_loc15_.body.var_95 * _loc23_.var_92 + _loc15_.body.var_96 * _loc23_.var_91) + _loc23_.var_165);
                  if(_loc23_.wrap_gnorm != null)
                  {
                     _loc23_.wrap_gnorm.zpp_inner.x = _loc23_.var_92;
                     _loc23_.wrap_gnorm.zpp_inner.y = _loc23_.var_91;
                  }
                  _loc23_.tp0 = _loc23_.gp0.y * _loc23_.var_92 - _loc23_.gp0.x * _loc23_.var_91;
                  _loc23_.tp1 = _loc23_.gp1.y * _loc23_.var_92 - _loc23_.gp1.x * _loc23_.var_91;
                  _loc17_ = _loc18_;
                  _loc16_ = _loc16_.next;
               }
               _loc18_ = _loc15_.var_107.next;
               _loc23_ = _loc22_.var_74;
               _loc22_ = _loc22_.next;
               _loc23_.gp0 = _loc17_;
               _loc23_.gp1 = _loc18_;
               _loc23_.var_92 = _loc15_.body.var_83 * _loc23_.var_122 - _loc15_.body.var_84 * _loc23_.var_121;
               _loc23_.var_91 = Number(_loc23_.var_122 * _loc15_.body.var_84 + _loc23_.var_121 * _loc15_.body.var_83);
               _loc23_.gprojection = Number(Number(_loc15_.body.var_95 * _loc23_.var_92 + _loc15_.body.var_96 * _loc23_.var_91) + _loc23_.var_165);
               if(_loc23_.wrap_gnorm != null)
               {
                  _loc23_.wrap_gnorm.zpp_inner.x = _loc23_.var_92;
                  _loc23_.wrap_gnorm.zpp_inner.y = _loc23_.var_91;
               }
               _loc23_.tp0 = _loc23_.gp0.y * _loc23_.var_92 - _loc23_.gp0.x * _loc23_.var_91;
               _loc23_.tp1 = _loc23_.gp1.y * _loc23_.var_92 - _loc23_.gp1.x * _loc23_.var_91;
            }
         }
      }
      
      public final function method_226(param1:ZPP_Shape) : void
      {
         var _loc2_:* = null as ZPP_Circle;
         var _loc3_:* = null as ZPP_Polygon;
         var _loc4_:* = NaN;
         var _loc5_:* = null as ZPP_Vec2;
         var _loc6_:* = null as ZPP_Vec2;
         var _loc7_:* = null as ZPP_Vec2;
         var _loc8_:* = null as ZPP_Vec2;
         var _loc9_:Number = NaN;
         var _loc10_:* = null as ZPP_Vec2;
         var _loc11_:* = null as ZPP_Body;
         var _loc12_:* = null as class_309;
         var _loc13_:* = null as ZPP_AABBNode;
         var _loc14_:Boolean = false;
         var _loc15_:* = null as ZPP_AABB;
         var _loc16_:* = null as ZPP_AABB;
         if(var_432)
         {
            if(!var_219.space.var_371)
            {
               if(param1.var_149)
               {
                  if(param1.body != null)
                  {
                     param1.var_149 = false;
                     if(param1.type == class_223.var_131)
                     {
                        _loc2_ = param1.var_102;
                        if(_loc2_.var_139)
                        {
                           if(_loc2_.body != null)
                           {
                              _loc2_.var_139 = false;
                              if(_loc2_.var_140)
                              {
                                 _loc2_.var_140 = false;
                                 if(_loc2_.type == class_223.var_155)
                                 {
                                    _loc3_ = _loc2_.name_6;
                                    if(_loc3_.var_88.next.next == null)
                                    {
                                       _loc3_.var_82 = _loc3_.var_88.next.x;
                                       _loc3_.var_81 = _loc3_.var_88.next.y;
                                       null;
                                    }
                                    else if(_loc3_.var_88.next.next.next == null)
                                    {
                                       _loc3_.var_82 = _loc3_.var_88.next.x;
                                       _loc3_.var_81 = _loc3_.var_88.next.y;
                                       _loc4_ = 1;
                                       _loc3_.var_82 = Number(_loc3_.var_82 + _loc3_.var_88.next.next.x * _loc4_);
                                       _loc3_.var_81 = Number(_loc3_.var_81 + _loc3_.var_88.next.next.y * _loc4_);
                                       _loc4_ = 0.5;
                                       _loc3_.var_82 = _loc3_.var_82 * _loc4_;
                                       _loc3_.var_81 = _loc3_.var_81 * _loc4_;
                                    }
                                    else
                                    {
                                       _loc3_.var_82 = 0;
                                       _loc3_.var_81 = 0;
                                       _loc4_ = 0;
                                       _loc5_ = _loc3_.var_88.next;
                                       _loc6_ = _loc5_;
                                       _loc5_ = _loc5_.next;
                                       _loc7_ = _loc5_;
                                       _loc5_ = _loc5_.next;
                                       while(_loc5_ != null)
                                       {
                                          _loc8_ = _loc5_;
                                          _loc4_ = Number(Number(_loc4_ + _loc7_.x * (_loc8_.y - _loc6_.y)));
                                          _loc9_ = _loc8_.y * _loc7_.x - _loc8_.x * _loc7_.y;
                                          _loc3_.var_82 = Number(_loc3_.var_82 + (_loc7_.x + _loc8_.x) * _loc9_);
                                          _loc3_.var_81 = Number(_loc3_.var_81 + (_loc7_.y + _loc8_.y) * _loc9_);
                                          _loc6_ = _loc7_;
                                          _loc7_ = _loc8_;
                                          _loc5_ = _loc5_.next;
                                       }
                                       _loc5_ = _loc3_.var_88.next;
                                       _loc8_ = _loc5_;
                                       _loc4_ = Number(Number(_loc4_ + _loc7_.x * (_loc8_.y - _loc6_.y)));
                                       _loc9_ = _loc8_.y * _loc7_.x - _loc8_.x * _loc7_.y;
                                       _loc3_.var_82 = Number(_loc3_.var_82 + (_loc7_.x + _loc8_.x) * _loc9_);
                                       _loc3_.var_81 = Number(_loc3_.var_81 + (_loc7_.y + _loc8_.y) * _loc9_);
                                       _loc6_ = _loc7_;
                                       _loc7_ = _loc8_;
                                       _loc5_ = _loc5_.next;
                                       _loc10_ = _loc5_;
                                       _loc4_ = Number(Number(_loc4_ + _loc7_.x * (_loc10_.y - _loc6_.y)));
                                       _loc9_ = _loc10_.y * _loc7_.x - _loc10_.x * _loc7_.y;
                                       _loc3_.var_82 = Number(_loc3_.var_82 + (_loc7_.x + _loc10_.x) * _loc9_);
                                       _loc3_.var_81 = Number(_loc3_.var_81 + (_loc7_.y + _loc10_.y) * _loc9_);
                                       _loc4_ = Number(1 / (3 * _loc4_));
                                       _loc9_ = _loc4_;
                                       _loc3_.var_82 = _loc3_.var_82 * _loc9_;
                                       _loc3_.var_81 = _loc3_.var_81 * _loc9_;
                                    }
                                 }
                                 if(_loc2_.var_115 != null)
                                 {
                                    _loc2_.var_115.zpp_inner.x = _loc2_.var_82;
                                    _loc2_.var_115.zpp_inner.y = _loc2_.var_81;
                                 }
                              }
                              _loc11_ = _loc2_.body;
                              if(_loc11_.var_113)
                              {
                                 _loc11_.var_113 = false;
                                 _loc11_.var_84 = Number(Math.sin(_loc11_.var_93));
                                 _loc11_.var_83 = Number(Math.cos(_loc11_.var_93));
                                 null;
                              }
                              _loc2_.var_99 = Number(_loc2_.body.var_95 + (_loc2_.body.var_83 * _loc2_.var_82 - _loc2_.body.var_84 * _loc2_.var_81));
                              _loc2_.var_100 = Number(_loc2_.body.var_96 + (Number(_loc2_.var_82 * _loc2_.body.var_84 + _loc2_.var_81 * _loc2_.body.var_83)));
                           }
                        }
                        _loc4_ = Number(_loc2_.radius);
                        _loc9_ = _loc2_.radius;
                        _loc2_.name_3.var_77 = _loc2_.var_99 - _loc4_;
                        _loc2_.name_3.var_78 = _loc2_.var_100 - _loc9_;
                        _loc2_.name_3.var_79 = Number(_loc2_.var_99 + _loc4_);
                        _loc2_.name_3.var_80 = Number(_loc2_.var_100 + _loc9_);
                     }
                     else
                     {
                        _loc3_ = param1.name_6;
                        if(_loc3_.var_153)
                        {
                           if(_loc3_.body != null)
                           {
                              _loc3_.var_153 = false;
                              _loc3_.method_116();
                              _loc11_ = _loc3_.body;
                              if(_loc11_.var_113)
                              {
                                 _loc11_.var_113 = false;
                                 _loc11_.var_84 = Number(Math.sin(_loc11_.var_93));
                                 _loc11_.var_83 = Number(Math.cos(_loc11_.var_93));
                                 null;
                              }
                              _loc5_ = _loc3_.var_88.next;
                              _loc6_ = _loc3_.var_107.next;
                              while(_loc6_ != null)
                              {
                                 _loc7_ = _loc6_;
                                 _loc8_ = _loc5_;
                                 _loc5_ = _loc5_.next;
                                 _loc7_.x = Number(_loc3_.body.var_95 + (_loc3_.body.var_83 * _loc8_.x - _loc3_.body.var_84 * _loc8_.y));
                                 _loc7_.y = Number(_loc3_.body.var_96 + (Number(_loc8_.x * _loc3_.body.var_84 + _loc8_.y * _loc3_.body.var_83)));
                                 _loc6_ = _loc6_.next;
                              }
                           }
                        }
                        _loc5_ = _loc3_.var_107.next;
                        _loc3_.name_3.var_77 = _loc5_.x;
                        _loc3_.name_3.var_78 = _loc5_.y;
                        _loc3_.name_3.var_79 = _loc5_.x;
                        _loc3_.name_3.var_80 = _loc5_.y;
                        _loc6_ = _loc3_.var_107.next.next;
                        while(_loc6_ != null)
                        {
                           _loc7_ = _loc6_;
                           if(_loc7_.x < _loc3_.name_3.var_77)
                           {
                              _loc3_.name_3.var_77 = _loc7_.x;
                           }
                           if(_loc7_.x > _loc3_.name_3.var_79)
                           {
                              _loc3_.name_3.var_79 = _loc7_.x;
                           }
                           if(_loc7_.y < _loc3_.name_3.var_78)
                           {
                              _loc3_.name_3.var_78 = _loc7_.y;
                           }
                           if(_loc7_.y > _loc3_.name_3.var_80)
                           {
                              _loc3_.name_3.var_80 = _loc7_.y;
                           }
                           _loc6_ = _loc6_.next;
                        }
                     }
                  }
               }
            }
         }
         else
         {
            _loc12_ = var_551;
            _loc13_ = param1.var_138;
            if(!_loc13_.var_426)
            {
               if(!_loc12_.space.var_371)
               {
                  if(param1.var_149)
                  {
                     if(param1.body != null)
                     {
                        param1.var_149 = false;
                        if(param1.type == class_223.var_131)
                        {
                           _loc2_ = param1.var_102;
                           if(_loc2_.var_139)
                           {
                              if(_loc2_.body != null)
                              {
                                 _loc2_.var_139 = false;
                                 if(_loc2_.var_140)
                                 {
                                    _loc2_.var_140 = false;
                                    if(_loc2_.type == class_223.var_155)
                                    {
                                       _loc3_ = _loc2_.name_6;
                                       if(_loc3_.var_88.next.next == null)
                                       {
                                          _loc3_.var_82 = _loc3_.var_88.next.x;
                                          _loc3_.var_81 = _loc3_.var_88.next.y;
                                          null;
                                       }
                                       else if(_loc3_.var_88.next.next.next == null)
                                       {
                                          _loc3_.var_82 = _loc3_.var_88.next.x;
                                          _loc3_.var_81 = _loc3_.var_88.next.y;
                                          _loc4_ = 1;
                                          _loc3_.var_82 = Number(_loc3_.var_82 + _loc3_.var_88.next.next.x * _loc4_);
                                          _loc3_.var_81 = Number(_loc3_.var_81 + _loc3_.var_88.next.next.y * _loc4_);
                                          _loc4_ = 0.5;
                                          _loc3_.var_82 = _loc3_.var_82 * _loc4_;
                                          _loc3_.var_81 = _loc3_.var_81 * _loc4_;
                                       }
                                       else
                                       {
                                          _loc3_.var_82 = 0;
                                          _loc3_.var_81 = 0;
                                          _loc4_ = 0;
                                          _loc5_ = _loc3_.var_88.next;
                                          _loc6_ = _loc5_;
                                          _loc5_ = _loc5_.next;
                                          _loc7_ = _loc5_;
                                          _loc5_ = _loc5_.next;
                                          while(_loc5_ != null)
                                          {
                                             _loc8_ = _loc5_;
                                             _loc4_ = Number(Number(_loc4_ + _loc7_.x * (_loc8_.y - _loc6_.y)));
                                             _loc9_ = _loc8_.y * _loc7_.x - _loc8_.x * _loc7_.y;
                                             _loc3_.var_82 = Number(_loc3_.var_82 + (_loc7_.x + _loc8_.x) * _loc9_);
                                             _loc3_.var_81 = Number(_loc3_.var_81 + (_loc7_.y + _loc8_.y) * _loc9_);
                                             _loc6_ = _loc7_;
                                             _loc7_ = _loc8_;
                                             _loc5_ = _loc5_.next;
                                          }
                                          _loc5_ = _loc3_.var_88.next;
                                          _loc8_ = _loc5_;
                                          _loc4_ = Number(Number(_loc4_ + _loc7_.x * (_loc8_.y - _loc6_.y)));
                                          _loc9_ = _loc8_.y * _loc7_.x - _loc8_.x * _loc7_.y;
                                          _loc3_.var_82 = Number(_loc3_.var_82 + (_loc7_.x + _loc8_.x) * _loc9_);
                                          _loc3_.var_81 = Number(_loc3_.var_81 + (_loc7_.y + _loc8_.y) * _loc9_);
                                          _loc6_ = _loc7_;
                                          _loc7_ = _loc8_;
                                          _loc5_ = _loc5_.next;
                                          _loc10_ = _loc5_;
                                          _loc4_ = Number(Number(_loc4_ + _loc7_.x * (_loc10_.y - _loc6_.y)));
                                          _loc9_ = _loc10_.y * _loc7_.x - _loc10_.x * _loc7_.y;
                                          _loc3_.var_82 = Number(_loc3_.var_82 + (_loc7_.x + _loc10_.x) * _loc9_);
                                          _loc3_.var_81 = Number(_loc3_.var_81 + (_loc7_.y + _loc10_.y) * _loc9_);
                                          _loc4_ = Number(1 / (3 * _loc4_));
                                          _loc9_ = _loc4_;
                                          _loc3_.var_82 = _loc3_.var_82 * _loc9_;
                                          _loc3_.var_81 = _loc3_.var_81 * _loc9_;
                                       }
                                    }
                                    if(_loc2_.var_115 != null)
                                    {
                                       _loc2_.var_115.zpp_inner.x = _loc2_.var_82;
                                       _loc2_.var_115.zpp_inner.y = _loc2_.var_81;
                                    }
                                 }
                                 _loc11_ = _loc2_.body;
                                 if(_loc11_.var_113)
                                 {
                                    _loc11_.var_113 = false;
                                    _loc11_.var_84 = Number(Math.sin(_loc11_.var_93));
                                    _loc11_.var_83 = Number(Math.cos(_loc11_.var_93));
                                    null;
                                 }
                                 _loc2_.var_99 = Number(_loc2_.body.var_95 + (_loc2_.body.var_83 * _loc2_.var_82 - _loc2_.body.var_84 * _loc2_.var_81));
                                 _loc2_.var_100 = Number(_loc2_.body.var_96 + (Number(_loc2_.var_82 * _loc2_.body.var_84 + _loc2_.var_81 * _loc2_.body.var_83)));
                              }
                           }
                           _loc4_ = Number(_loc2_.radius);
                           _loc9_ = _loc2_.radius;
                           _loc2_.name_3.var_77 = _loc2_.var_99 - _loc4_;
                           _loc2_.name_3.var_78 = _loc2_.var_100 - _loc9_;
                           _loc2_.name_3.var_79 = Number(_loc2_.var_99 + _loc4_);
                           _loc2_.name_3.var_80 = Number(_loc2_.var_100 + _loc9_);
                        }
                        else
                        {
                           _loc3_ = param1.name_6;
                           if(_loc3_.var_153)
                           {
                              if(_loc3_.body != null)
                              {
                                 _loc3_.var_153 = false;
                                 _loc3_.method_116();
                                 _loc11_ = _loc3_.body;
                                 if(_loc11_.var_113)
                                 {
                                    _loc11_.var_113 = false;
                                    _loc11_.var_84 = Number(Math.sin(_loc11_.var_93));
                                    _loc11_.var_83 = Number(Math.cos(_loc11_.var_93));
                                    null;
                                 }
                                 _loc5_ = _loc3_.var_88.next;
                                 _loc6_ = _loc3_.var_107.next;
                                 while(_loc6_ != null)
                                 {
                                    _loc7_ = _loc6_;
                                    _loc8_ = _loc5_;
                                    _loc5_ = _loc5_.next;
                                    _loc7_.x = Number(_loc3_.body.var_95 + (_loc3_.body.var_83 * _loc8_.x - _loc3_.body.var_84 * _loc8_.y));
                                    _loc7_.y = Number(_loc3_.body.var_96 + (Number(_loc8_.x * _loc3_.body.var_84 + _loc8_.y * _loc3_.body.var_83)));
                                    _loc6_ = _loc6_.next;
                                 }
                              }
                           }
                           _loc5_ = _loc3_.var_107.next;
                           _loc3_.name_3.var_77 = _loc5_.x;
                           _loc3_.name_3.var_78 = _loc5_.y;
                           _loc3_.name_3.var_79 = _loc5_.x;
                           _loc3_.name_3.var_80 = _loc5_.y;
                           _loc6_ = _loc3_.var_107.next.next;
                           while(_loc6_ != null)
                           {
                              _loc7_ = _loc6_;
                              if(_loc7_.x < _loc3_.name_3.var_77)
                              {
                                 _loc3_.name_3.var_77 = _loc7_.x;
                              }
                              if(_loc7_.x > _loc3_.name_3.var_79)
                              {
                                 _loc3_.name_3.var_79 = _loc7_.x;
                              }
                              if(_loc7_.y < _loc3_.name_3.var_78)
                              {
                                 _loc3_.name_3.var_78 = _loc7_.y;
                              }
                              if(_loc7_.y > _loc3_.name_3.var_80)
                              {
                                 _loc3_.name_3.var_80 = _loc7_.y;
                              }
                              _loc6_ = _loc6_.next;
                           }
                        }
                     }
                  }
               }
               _loc14_ = _loc13_.var_451 != (param1.body.type == class_223.var_240?false:!param1.body.var_112.var_129) || !(_loc16_.var_77 >= _loc15_.var_77 && _loc16_.var_78 >= _loc15_.var_78 && _loc16_.var_79 <= _loc15_.var_79 && _loc16_.var_80 <= _loc15_.var_80);
               if(_loc14_)
               {
                  _loc13_.var_426 = true;
                  _loc13_.var_275 = _loc12_.var_202;
                  _loc12_.var_202 = _loc13_;
               }
            }
         }
      }
      
      public function method_267(param1:Number, param2:Number, param3:ZPP_InteractionFilter, param4:class_230) : class_230
      {
         return null;
      }
      
      public function shapesInShape(param1:ZPP_Shape, param2:Boolean, param3:ZPP_InteractionFilter, param4:class_230) : class_230
      {
         return null;
      }
      
      public function method_256(param1:Number, param2:Number, param3:Number, param4:Boolean, param5:ZPP_InteractionFilter, param6:class_230) : class_230
      {
         return null;
      }
      
      public function method_178(param1:ZPP_AABB, param2:Boolean, param3:Boolean, param4:ZPP_InteractionFilter, param5:class_230) : class_230
      {
         return null;
      }
      
      public final function remove(param1:ZPP_Shape) : void
      {
         if(var_432)
         {
            var_219.method_296(param1);
         }
         else
         {
            var_551.method_296(param1);
         }
      }
      
      public function method_222(param1:class_311, param2:Boolean, param3:ZPP_InteractionFilter, param4:class_233) : class_233
      {
         return null;
      }
      
      public function method_176(param1:class_311, param2:Boolean, param3:ZPP_InteractionFilter) : RayResult
      {
         return null;
      }
      
      public final function insert(param1:ZPP_Shape) : void
      {
         if(var_432)
         {
            var_219.method_393(param1);
         }
         else
         {
            var_551.method_393(param1);
         }
      }
      
      public function clear() : void
      {
      }
      
      public function method_298(param1:ZPP_Space, param2:Boolean) : void
      {
      }
      
      public function method_187(param1:Number, param2:Number, param3:ZPP_InteractionFilter, param4:class_205) : class_205
      {
         return null;
      }
      
      public function bodiesInShape(param1:ZPP_Shape, param2:Boolean, param3:ZPP_InteractionFilter, param4:class_205) : class_205
      {
         return null;
      }
      
      public function method_261(param1:Number, param2:Number, param3:Number, param4:Boolean, param5:ZPP_InteractionFilter, param6:class_205) : class_205
      {
         return null;
      }
      
      public function method_201(param1:ZPP_AABB, param2:Boolean, param3:Boolean, param4:ZPP_InteractionFilter, param5:class_205) : class_205
      {
         return null;
      }
   }
}
