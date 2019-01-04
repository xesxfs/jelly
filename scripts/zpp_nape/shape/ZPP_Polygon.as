package zpp_nape.shape
{
   import nape.geom.Vec2;
   import nape.geom.Vec2List;
   import nape.geom.class_242;
   import package_32.Polygon;
   import package_32.ValidationResult;
   import package_32.class_257;
   import package_35.class_238;
   import zpp_nape.geom.ZPP_Vec2;
   import zpp_nape.phys.ZPP_Body;
   import zpp_nape.util.ZNPNode_ZPP_Edge;
   import zpp_nape.util.ZPP_EdgeList;
   import zpp_nape.util.ZPP_Vec2List;
   import zpp_nape.util.class_219;
   import zpp_nape.util.class_223;
   import zpp_nape.util.class_315;
   import zpp_nape.util.class_316;
   
   public final class ZPP_Polygon extends ZPP_Shape
   {
       
      
      public var var_679:Boolean;
      
      public var var_445:Boolean;
      
      public var var_634:Boolean;
      
      public var var_676:Boolean;
      
      public var var_153:Boolean;
      
      public var var_247:Boolean;
      
      public var var_244:Vec2List;
      
      public var var_403:Vec2List;
      
      public var var_434:class_257;
      
      public var name_58:ValidationResult;
      
      public var var_111:Boolean;
      
      public var outer_zn:Polygon;
      
      public var var_88:ZPP_Vec2;
      
      public var var_107:ZPP_Vec2;
      
      public var name_11:class_316;
      
      public var var_255:int;
      
      public function ZPP_Polygon()
      {
         var_445 = false;
         var_679 = false;
         var_247 = false;
         var_153 = false;
         var_676 = false;
         var_634 = false;
         var_111 = false;
         var_255 = 0;
         var_434 = null;
         name_11 = null;
         var_403 = null;
         var_107 = null;
         var_244 = null;
         var_88 = null;
         outer_zn = null;
         super(class_223.var_155);
         name_6 = this;
         var_88 = new ZPP_Vec2();
         var_107 = new ZPP_Vec2();
         name_11 = new class_316();
         var_255 = 0;
      }
      
      public static function method_417() : void
      {
      }
      
      public final function method_116() : void
      {
         if(var_634)
         {
            var_634 = false;
            if(var_88.length > 2)
            {
               method_164();
               if(area < 0)
               {
                  reverse_vertices();
                  area = -area;
               }
            }
         }
      }
      
      public final function method_124() : void
      {
         var _loc1_:* = null as ZNPNode_ZPP_Edge;
         var _loc2_:* = null as ZPP_Vec2;
         var _loc3_:* = null as ZPP_Vec2;
         var _loc4_:* = null as ZPP_Vec2;
         var _loc5_:* = null as ZPP_Edge;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         if(var_676)
         {
            var_676 = false;
            method_116();
            _loc1_ = name_11.var_73;
            _loc2_ = var_88.next;
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.next;
            while(_loc2_ != null)
            {
               _loc4_ = _loc2_;
               _loc5_ = _loc1_.var_74;
               _loc1_ = _loc1_.next;
               _loc5_.lp0 = _loc3_;
               _loc5_.lp1 = _loc4_;
               _loc6_ = 0;
               _loc7_ = 0;
               _loc6_ = Number(_loc3_.x - _loc4_.x);
               _loc7_ = Number(_loc3_.y - _loc4_.y);
               _loc8_ = Number(Math.sqrt(Number(_loc6_ * _loc6_ + _loc7_ * _loc7_)));
               _loc5_.length = _loc8_;
               _loc9_ = 1 / _loc8_;
               _loc6_ = Number(_loc6_ * _loc9_);
               _loc7_ = Number(_loc7_ * _loc9_);
               _loc9_ = _loc6_;
               _loc6_ = Number(-_loc7_);
               _loc7_ = Number(_loc9_);
               _loc5_.var_165 = Number(_loc6_ * _loc3_.x + _loc7_ * _loc3_.y);
               _loc5_.var_122 = _loc6_;
               _loc5_.var_121 = _loc7_;
               if(_loc5_.var_335 != null)
               {
                  _loc5_.var_335.zpp_inner.x = _loc6_;
                  _loc5_.var_335.zpp_inner.y = _loc7_;
               }
               _loc3_ = _loc4_;
               _loc2_ = _loc2_.next;
            }
            _loc4_ = var_88.next;
            _loc5_ = _loc1_.var_74;
            _loc1_ = _loc1_.next;
            _loc5_.lp0 = _loc3_;
            _loc5_.lp1 = _loc4_;
            _loc6_ = 0;
            _loc7_ = 0;
            _loc6_ = Number(_loc3_.x - _loc4_.x);
            _loc7_ = Number(_loc3_.y - _loc4_.y);
            _loc8_ = Number(Math.sqrt(Number(_loc6_ * _loc6_ + _loc7_ * _loc7_)));
            _loc5_.length = _loc8_;
            _loc9_ = 1 / _loc8_;
            _loc6_ = Number(_loc6_ * _loc9_);
            _loc7_ = Number(_loc7_ * _loc9_);
            _loc9_ = _loc6_;
            _loc6_ = Number(-_loc7_);
            _loc7_ = Number(_loc9_);
            _loc5_.var_165 = Number(_loc6_ * _loc3_.x + _loc7_ * _loc3_.y);
            _loc5_.var_122 = _loc6_;
            _loc5_.var_121 = _loc7_;
            if(_loc5_.var_335 != null)
            {
               _loc5_.var_335.zpp_inner.x = _loc6_;
               _loc5_.var_335.zpp_inner.y = _loc7_;
            }
         }
      }
      
      public final function method_925() : void
      {
         var _loc1_:* = null as ZPP_Body;
         var _loc2_:* = null as ZPP_Vec2;
         var _loc3_:* = null as ZPP_Vec2;
         var _loc4_:* = null as ZPP_Vec2;
         var _loc5_:* = null as ZPP_Vec2;
         var _loc6_:* = null as ZNPNode_ZPP_Edge;
         var _loc7_:* = null as ZPP_Edge;
         if(var_247)
         {
            if(body != null)
            {
               var_247 = false;
               method_124();
               _loc1_ = body;
               if(_loc1_.var_113)
               {
                  _loc1_.var_113 = false;
                  _loc1_.var_84 = Number(Math.sin(_loc1_.var_93));
                  _loc1_.var_83 = Number(Math.cos(_loc1_.var_93));
                  null;
               }
               if(var_153)
               {
                  if(body != null)
                  {
                     var_153 = false;
                     method_116();
                     _loc1_ = body;
                     if(_loc1_.var_113)
                     {
                        _loc1_.var_113 = false;
                        _loc1_.var_84 = Number(Math.sin(_loc1_.var_93));
                        _loc1_.var_83 = Number(Math.cos(_loc1_.var_93));
                        null;
                     }
                     _loc2_ = var_88.next;
                     _loc3_ = var_107.next;
                     while(_loc3_ != null)
                     {
                        _loc4_ = _loc3_;
                        _loc5_ = _loc2_;
                        _loc2_ = _loc2_.next;
                        _loc4_.x = Number(body.var_95 + (body.var_83 * _loc5_.x - body.var_84 * _loc5_.y));
                        _loc4_.y = Number(body.var_96 + (Number(_loc5_.x * body.var_84 + _loc5_.y * body.var_83)));
                        _loc3_ = _loc3_.next;
                     }
                  }
               }
               _loc6_ = name_11.var_73;
               _loc2_ = var_107.next;
               _loc3_ = _loc2_;
               _loc2_ = _loc2_.next;
               while(_loc2_ != null)
               {
                  _loc4_ = _loc2_;
                  _loc7_ = _loc6_.var_74;
                  _loc6_ = _loc6_.next;
                  _loc7_.gp0 = _loc3_;
                  _loc7_.gp1 = _loc4_;
                  _loc7_.var_92 = body.var_83 * _loc7_.var_122 - body.var_84 * _loc7_.var_121;
                  _loc7_.var_91 = Number(_loc7_.var_122 * body.var_84 + _loc7_.var_121 * body.var_83);
                  _loc7_.gprojection = Number(Number(body.var_95 * _loc7_.var_92 + body.var_96 * _loc7_.var_91) + _loc7_.var_165);
                  if(_loc7_.wrap_gnorm != null)
                  {
                     _loc7_.wrap_gnorm.zpp_inner.x = _loc7_.var_92;
                     _loc7_.wrap_gnorm.zpp_inner.y = _loc7_.var_91;
                  }
                  _loc7_.tp0 = _loc7_.gp0.y * _loc7_.var_92 - _loc7_.gp0.x * _loc7_.var_91;
                  _loc7_.tp1 = _loc7_.gp1.y * _loc7_.var_92 - _loc7_.gp1.x * _loc7_.var_91;
                  _loc3_ = _loc4_;
                  _loc2_ = _loc2_.next;
               }
               _loc4_ = var_107.next;
               _loc7_ = _loc6_.var_74;
               _loc6_ = _loc6_.next;
               _loc7_.gp0 = _loc3_;
               _loc7_.gp1 = _loc4_;
               _loc7_.var_92 = body.var_83 * _loc7_.var_122 - body.var_84 * _loc7_.var_121;
               _loc7_.var_91 = Number(_loc7_.var_122 * body.var_84 + _loc7_.var_121 * body.var_83);
               _loc7_.gprojection = Number(Number(body.var_95 * _loc7_.var_92 + body.var_96 * _loc7_.var_91) + _loc7_.var_165);
               if(_loc7_.wrap_gnorm != null)
               {
                  _loc7_.wrap_gnorm.zpp_inner.x = _loc7_.var_92;
                  _loc7_.wrap_gnorm.zpp_inner.y = _loc7_.var_91;
               }
               _loc7_.tp0 = _loc7_.gp0.y * _loc7_.var_92 - _loc7_.gp0.x * _loc7_.var_91;
               _loc7_.tp1 = _loc7_.gp1.y * _loc7_.var_92 - _loc7_.gp1.x * _loc7_.var_91;
            }
         }
      }
      
      public final function valid() : ValidationResult
      {
         var _loc1_:* = null as ValidationResult;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = false;
         var _loc5_:* = null as ZPP_Vec2;
         var _loc6_:* = null as ZPP_Vec2;
         var _loc7_:* = null as ZPP_Vec2;
         var _loc8_:* = null as ZPP_Vec2;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = null as ZPP_Vec2;
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = false;
         var _loc17_:* = null as ZPP_Vec2;
         var _loc18_:* = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         if(var_679)
         {
            var_679 = false;
            if(var_445)
            {
               var_445 = false;
               method_277();
            }
            if(var_88.length < 3)
            {
               if(class_223.var_501 == null)
               {
                  class_223.var_87 = true;
                  class_223.var_501 = new ValidationResult();
                  class_223.var_87 = false;
               }
               _loc1_ = class_223.var_501;
               name_58 = _loc1_;
               return _loc1_;
            }
            method_116();
            method_164();
            if(area < class_238.name_8)
            {
               if(class_223.var_501 == null)
               {
                  class_223.var_87 = true;
                  class_223.var_501 = new ValidationResult();
                  class_223.var_87 = false;
               }
               _loc1_ = class_223.var_501;
               name_58 = _loc1_;
               return _loc1_;
            }
            _loc2_ = false;
            _loc3_ = false;
            _loc4_ = true;
            _loc5_ = var_88.next;
            _loc6_ = _loc5_;
            _loc5_ = _loc5_.next;
            _loc7_ = _loc5_;
            _loc5_ = _loc5_.next;
            while(_loc5_ != null)
            {
               _loc8_ = _loc5_;
               _loc9_ = 0;
               _loc10_ = 0;
               _loc9_ = Number(_loc8_.x - _loc7_.x);
               _loc10_ = Number(_loc8_.y - _loc7_.y);
               _loc11_ = 0;
               _loc12_ = 0;
               _loc11_ = Number(_loc7_.x - _loc6_.x);
               _loc12_ = Number(_loc7_.y - _loc6_.y);
               _loc13_ = Number(_loc12_ * _loc9_ - _loc11_ * _loc10_);
               if(_loc13_ > class_238.name_8)
               {
                  _loc3_ = true;
               }
               else if(_loc13_ < -class_238.name_8)
               {
                  _loc2_ = true;
               }
               if(!!_loc3_ && _loc2_)
               {
                  _loc4_ = false;
                  break;
               }
               _loc6_ = _loc7_;
               _loc7_ = _loc8_;
               _loc5_ = _loc5_.next;
            }
            if(_loc4_)
            {
               _loc5_ = var_88.next;
               _loc8_ = _loc5_;
               _loc9_ = 0;
               _loc10_ = 0;
               _loc9_ = Number(_loc8_.x - _loc7_.x);
               _loc10_ = Number(_loc8_.y - _loc7_.y);
               _loc11_ = 0;
               _loc12_ = 0;
               _loc11_ = Number(_loc7_.x - _loc6_.x);
               _loc12_ = Number(_loc7_.y - _loc6_.y);
               _loc13_ = Number(_loc12_ * _loc9_ - _loc11_ * _loc10_);
               if(_loc13_ > class_238.name_8)
               {
                  _loc3_ = true;
               }
               else if(_loc13_ < -class_238.name_8)
               {
                  _loc2_ = true;
               }
               if(!!_loc3_ && _loc2_)
               {
                  _loc4_ = false;
               }
               if(_loc4_)
               {
                  _loc6_ = _loc7_;
                  _loc7_ = _loc8_;
                  _loc5_ = _loc5_.next;
                  _loc14_ = _loc5_;
                  _loc9_ = 0;
                  _loc10_ = 0;
                  _loc9_ = Number(_loc14_.x - _loc7_.x);
                  _loc10_ = Number(_loc14_.y - _loc7_.y);
                  _loc11_ = 0;
                  _loc12_ = 0;
                  _loc11_ = Number(_loc7_.x - _loc6_.x);
                  _loc12_ = Number(_loc7_.y - _loc6_.y);
                  _loc13_ = Number(_loc12_ * _loc9_ - _loc11_ * _loc10_);
                  if(_loc13_ > class_238.name_8)
                  {
                     _loc3_ = true;
                  }
                  else if(_loc13_ < -class_238.name_8)
                  {
                     _loc2_ = true;
                  }
                  if(!!_loc3_ && _loc2_)
                  {
                  }
               }
            }
            if(!!_loc3_ && _loc2_)
            {
               if(class_223.var_623 == null)
               {
                  class_223.var_87 = true;
                  class_223.var_623 = new ValidationResult();
                  class_223.var_87 = false;
               }
               _loc1_ = class_223.var_623;
               name_58 = _loc1_;
               return _loc1_;
            }
            _loc4_ = true;
            _loc15_ = true;
            _loc5_ = var_88.next;
            _loc6_ = _loc5_;
            _loc5_ = _loc5_.next;
            while(_loc5_ != null)
            {
               _loc7_ = _loc5_;
               if(!_loc4_)
               {
                  _loc15_ = false;
                  break;
               }
               _loc16_ = true;
               _loc8_ = var_88.next;
               _loc14_ = _loc8_;
               _loc8_ = _loc8_.next;
               while(_loc8_ != null)
               {
                  _loc17_ = _loc8_;
                  if(_loc6_ == _loc14_ || _loc6_ == _loc17_ || _loc7_ == _loc14_ || _loc7_ == _loc17_)
                  {
                     _loc14_ = _loc17_;
                     _loc8_ = _loc8_.next;
                  }
                  else
                  {
                     _loc9_ = 0;
                     _loc10_ = 0;
                     _loc9_ = Number(_loc6_.x - _loc14_.x);
                     _loc10_ = Number(_loc6_.y - _loc14_.y);
                     _loc11_ = 0;
                     _loc12_ = 0;
                     _loc11_ = Number(_loc7_.x - _loc6_.x);
                     _loc12_ = Number(_loc7_.y - _loc6_.y);
                     _loc13_ = 0;
                     _loc18_ = 0;
                     _loc13_ = Number(_loc17_.x - _loc14_.x);
                     _loc18_ = Number(_loc17_.y - _loc14_.y);
                     _loc19_ = _loc12_ * _loc13_ - _loc11_ * _loc18_;
                     if(_loc19_ * _loc19_ > class_238.name_8)
                     {
                        _loc19_ = 1 / _loc19_;
                        _loc20_ = (_loc18_ * _loc9_ - _loc13_ * _loc10_) * _loc19_;
                        if(_loc20_ > class_238.name_8 && _loc20_ < 1 - class_238.name_8)
                        {
                           _loc21_ = (_loc12_ * _loc9_ - _loc11_ * _loc10_) * _loc19_;
                           if(_loc21_ > class_238.name_8 && _loc21_ < 1 - class_238.name_8)
                           {
                              _loc4_ = false;
                              _loc16_ = false;
                              break;
                           }
                        }
                     }
                     _loc14_ = _loc17_;
                     _loc8_ = _loc8_.next;
                  }
               }
               if(_loc16_)
               {
                  _loc17_ = var_88.next;
                  if(!(_loc6_ == _loc14_ || _loc6_ == _loc17_ || _loc7_ == _loc14_ || _loc7_ == _loc17_))
                  {
                     _loc9_ = 0;
                     _loc10_ = 0;
                     _loc9_ = Number(_loc6_.x - _loc14_.x);
                     _loc10_ = Number(_loc6_.y - _loc14_.y);
                     _loc11_ = 0;
                     _loc12_ = 0;
                     _loc11_ = Number(_loc7_.x - _loc6_.x);
                     _loc12_ = Number(_loc7_.y - _loc6_.y);
                     _loc13_ = 0;
                     _loc18_ = 0;
                     _loc13_ = Number(_loc17_.x - _loc14_.x);
                     _loc18_ = Number(_loc17_.y - _loc14_.y);
                     _loc19_ = _loc12_ * _loc13_ - _loc11_ * _loc18_;
                     if(_loc19_ * _loc19_ > class_238.name_8)
                     {
                        _loc19_ = 1 / _loc19_;
                        _loc20_ = (_loc18_ * _loc9_ - _loc13_ * _loc10_) * _loc19_;
                        if(_loc20_ > class_238.name_8 && _loc20_ < 1 - class_238.name_8)
                        {
                           _loc21_ = (_loc12_ * _loc9_ - _loc11_ * _loc10_) * _loc19_;
                           if(_loc21_ > class_238.name_8 && _loc21_ < 1 - class_238.name_8)
                           {
                              _loc4_ = false;
                           }
                        }
                     }
                  }
               }
               _loc6_ = _loc7_;
               _loc5_ = _loc5_.next;
            }
            if(_loc15_)
            {
               _loc7_ = var_88.next;
               if(_loc4_)
               {
                  _loc16_ = true;
                  _loc8_ = var_88.next;
                  _loc14_ = _loc8_;
                  _loc8_ = _loc8_.next;
                  while(_loc8_ != null)
                  {
                     _loc17_ = _loc8_;
                     if(_loc6_ == _loc14_ || _loc6_ == _loc17_ || _loc7_ == _loc14_ || _loc7_ == _loc17_)
                     {
                        _loc14_ = _loc17_;
                        _loc8_ = _loc8_.next;
                     }
                     else
                     {
                        _loc9_ = 0;
                        _loc10_ = 0;
                        _loc9_ = Number(_loc6_.x - _loc14_.x);
                        _loc10_ = Number(_loc6_.y - _loc14_.y);
                        _loc11_ = 0;
                        _loc12_ = 0;
                        _loc11_ = Number(_loc7_.x - _loc6_.x);
                        _loc12_ = Number(_loc7_.y - _loc6_.y);
                        _loc13_ = 0;
                        _loc18_ = 0;
                        _loc13_ = Number(_loc17_.x - _loc14_.x);
                        _loc18_ = Number(_loc17_.y - _loc14_.y);
                        _loc19_ = _loc12_ * _loc13_ - _loc11_ * _loc18_;
                        if(_loc19_ * _loc19_ > class_238.name_8)
                        {
                           _loc19_ = 1 / _loc19_;
                           _loc20_ = (_loc18_ * _loc9_ - _loc13_ * _loc10_) * _loc19_;
                           if(_loc20_ > class_238.name_8 && _loc20_ < 1 - class_238.name_8)
                           {
                              _loc21_ = (_loc12_ * _loc9_ - _loc11_ * _loc10_) * _loc19_;
                              if(_loc21_ > class_238.name_8 && _loc21_ < 1 - class_238.name_8)
                              {
                                 _loc4_ = false;
                                 _loc16_ = false;
                                 break;
                              }
                           }
                        }
                        _loc14_ = _loc17_;
                        _loc8_ = _loc8_.next;
                     }
                  }
                  if(_loc16_)
                  {
                     _loc17_ = var_88.next;
                     if(!(_loc6_ == _loc14_ || _loc6_ == _loc17_ || _loc7_ == _loc14_ || _loc7_ == _loc17_))
                     {
                        _loc9_ = 0;
                        _loc10_ = 0;
                        _loc9_ = Number(_loc6_.x - _loc14_.x);
                        _loc10_ = Number(_loc6_.y - _loc14_.y);
                        _loc11_ = 0;
                        _loc12_ = 0;
                        _loc11_ = Number(_loc7_.x - _loc6_.x);
                        _loc12_ = Number(_loc7_.y - _loc6_.y);
                        _loc13_ = 0;
                        _loc18_ = 0;
                        _loc13_ = Number(_loc17_.x - _loc14_.x);
                        _loc18_ = Number(_loc17_.y - _loc14_.y);
                        _loc19_ = _loc12_ * _loc13_ - _loc11_ * _loc18_;
                        if(_loc19_ * _loc19_ > class_238.name_8)
                        {
                           _loc19_ = 1 / _loc19_;
                           _loc20_ = (_loc18_ * _loc9_ - _loc13_ * _loc10_) * _loc19_;
                           if(_loc20_ > class_238.name_8 && _loc20_ < 1 - class_238.name_8)
                           {
                              _loc21_ = (_loc12_ * _loc9_ - _loc11_ * _loc10_) * _loc19_;
                              if(_loc21_ > class_238.name_8 && _loc21_ < 1 - class_238.name_8)
                              {
                                 _loc4_ = false;
                              }
                           }
                        }
                     }
                  }
               }
            }
            if(!_loc4_)
            {
               if(class_223.var_590 == null)
               {
                  class_223.var_87 = true;
                  class_223.var_590 = new ValidationResult();
                  class_223.var_87 = false;
               }
               _loc1_ = class_223.var_590;
               name_58 = _loc1_;
               return _loc1_;
            }
            if(class_223.var_597 == null)
            {
               class_223.var_87 = true;
               class_223.var_597 = new ValidationResult();
               class_223.var_87 = false;
            }
            _loc1_ = class_223.var_597;
            name_58 = _loc1_;
            return _loc1_;
         }
         return name_58;
      }
      
      public final function method_277() : void
      {
         var _loc3_:* = null as ZPP_Vec2;
         var _loc4_:* = null as ZPP_Vec2;
         var _loc5_:* = null as ZPP_Vec2;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:Boolean = false;
         var _loc9_:* = null as ZPP_Vec2;
         var _loc10_:* = null as ZPP_Vec2;
         var _loc11_:* = null as ZPP_Vec2;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:Number = NaN;
         if(var_88.next == null)
         {
            return;
         }
         if(var_88.next.next == null)
         {
            return;
         }
         if(var_88.next.next.next == null)
         {
            return;
         }
         var _loc1_:* = null;
         var _loc2_:ZPP_Vec2 = var_88.next;
         while(_loc2_ != null)
         {
            if(_loc2_.next == null)
            {
               _loc3_ = var_88.next;
            }
            else
            {
               _loc3_ = _loc2_.next;
            }
            _loc4_ = _loc2_;
            _loc5_ = _loc3_;
            _loc6_ = 0;
            _loc7_ = 0;
            _loc6_ = Number(_loc4_.x - _loc5_.x);
            _loc7_ = Number(_loc4_.y - _loc5_.y);
            if(Number(_loc6_ * _loc6_ + _loc7_ * _loc7_) < class_238.name_8 * class_238.name_8)
            {
               cleanup_lvert(_loc2_);
               _loc2_ = var_88.erase(_loc1_);
            }
            else
            {
               _loc1_ = _loc2_;
               _loc2_ = _loc2_.next;
            }
         }
         if(var_88.next == null)
         {
            return;
         }
         do
         {
            _loc8_ = false;
            _loc3_ = var_88.next;
            while(_loc3_ != null)
            {
               if(_loc3_.next == null)
               {
                  _loc4_ = var_88.next;
               }
               else
               {
                  _loc4_ = _loc3_.next;
               }
               if(_loc4_.next == null)
               {
                  _loc5_ = var_88.next;
               }
               else
               {
                  _loc5_ = _loc4_.next;
               }
               _loc9_ = _loc3_;
               _loc10_ = _loc4_;
               _loc11_ = _loc5_;
               _loc6_ = 0;
               _loc7_ = 0;
               _loc6_ = Number(_loc10_.x - _loc9_.x);
               _loc7_ = Number(_loc10_.y - _loc9_.y);
               _loc12_ = 0;
               _loc13_ = 0;
               _loc12_ = Number(_loc11_.x - _loc10_.x);
               _loc13_ = Number(_loc11_.y - _loc10_.y);
               _loc14_ = _loc13_ * _loc6_ - _loc12_ * _loc7_;
               if(_loc14_ * _loc14_ >= class_238.name_8 * class_238.name_8)
               {
                  _loc3_ = _loc3_.next;
               }
               else
               {
                  cleanup_lvert(_loc4_);
                  var_88.erase(_loc3_.next == null?null:_loc3_);
                  _loc8_ = true;
                  _loc3_ = _loc3_.next;
               }
            }
         }
         while(_loc8_);
         
      }
      
      public final function method_128() : void
      {
         var _loc4_:* = null as Vec2;
         var _loc5_:Boolean = false;
         var _loc6_:* = null as ZPP_Vec2;
         var _loc1_:Number = var_82;
         var _loc2_:Number = var_81;
         if(class_219.poolVec2 == null)
         {
            _loc4_ = new Vec2();
         }
         else
         {
            _loc4_ = class_219.poolVec2;
            class_219.poolVec2 = _loc4_.var_72;
            _loc4_.var_72 = null;
         }
         if(_loc4_.zpp_inner == null)
         {
            _loc5_ = false;
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
            _loc6_.var_109 = _loc5_;
            _loc6_.x = _loc1_;
            _loc6_.y = _loc2_;
            _loc4_.zpp_inner = _loc6_;
            _loc4_.zpp_inner.outer = _loc4_;
         }
         else
         {
            _loc6_ = _loc4_.zpp_inner;
            §§push(false);
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            if(_loc4_.zpp_inner.x == _loc1_)
            {
               §§pop();
               _loc6_ = _loc4_.zpp_inner;
               if(_loc6_._validate != null)
               {
                  _loc6_._validate();
               }
               §§push(_loc4_.zpp_inner.y == _loc2_);
            }
            if(!§§pop())
            {
               _loc4_.zpp_inner.x = _loc1_;
               _loc4_.zpp_inner.y = _loc2_;
               _loc6_ = _loc4_.zpp_inner;
               if(_loc6_._invalidate != null)
               {
                  _loc6_._invalidate(_loc6_);
               }
            }
            _loc4_;
         }
         _loc4_.zpp_inner.name_5 = false;
         var_115 = _loc4_;
         var_115.zpp_inner.var_120 = true;
         var_115.zpp_inner._validate = localCOM_validate;
         var_115.zpp_inner._invalidate = localCOM_invalidate;
      }
      
      public final function reverse_vertices() : void
      {
         var_88.reverse();
         var_107.reverse();
         name_11.reverse();
         var _loc1_:ZNPNode_ZPP_Edge = name_11.iterator_at(var_255 - 1);
         var _loc2_:ZPP_Edge = name_11.method_105();
         name_11.insert(_loc1_,_loc2_);
         var_111 = !var_111;
         if(var_244 != null)
         {
            var_244.zpp_inner.var_111 = var_111;
         }
         if(var_403 != null)
         {
            var_403.zpp_inner.var_111 = var_111;
         }
         if(var_434 != null)
         {
            var_434.zpp_inner.var_111 = var_111;
         }
      }
      
      public final function lverts_validate() : void
      {
         method_116();
      }
      
      public final function lverts_subber(param1:Vec2) : void
      {
         cleanup_lvert(param1.zpp_inner);
      }
      
      public final function lverts_post_adder(param1:Vec2) : void
      {
         var _loc5_:* = null as ZPP_Vec2;
         var _loc6_:* = null as ZPP_Edge;
         var _loc7_:* = null as ZPP_Edge;
         param1.zpp_inner._invalidate = lverts_pa_invalidate;
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:ZPP_Vec2 = var_88.next;
         while(_loc4_ != null)
         {
            _loc5_ = _loc4_;
            if(_loc5_ == param1.zpp_inner)
            {
               break;
            }
            if(_loc2_ == null)
            {
               _loc2_ = var_107.next;
            }
            else
            {
               _loc2_ = _loc2_.next;
            }
            if(_loc3_ == null)
            {
               _loc3_ = name_11.var_73;
            }
            else
            {
               _loc3_ = _loc3_.next;
            }
            _loc4_ = _loc4_.next;
         }
         if(ZPP_Vec2.var_72 == null)
         {
            _loc5_ = new ZPP_Vec2();
         }
         else
         {
            _loc5_ = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc5_.next;
            _loc5_.next = null;
         }
         _loc5_.name_5 = false;
         _loc5_.var_109 = true;
         _loc5_.x = 0;
         _loc5_.y = 0;
         _loc4_ = _loc5_;
         var_107.insert(_loc2_,_loc4_);
         if(var_88.next.next != null)
         {
            if(var_88.next.next.next == null)
            {
               if(ZPP_Edge.var_72 == null)
               {
                  _loc6_ = new ZPP_Edge();
               }
               else
               {
                  _loc6_ = ZPP_Edge.var_72;
                  ZPP_Edge.var_72 = _loc6_.next;
                  _loc6_.next = null;
               }
               null;
               _loc6_.name_6 = this;
               name_11.add(_loc6_);
               if(ZPP_Edge.var_72 == null)
               {
                  _loc7_ = new ZPP_Edge();
               }
               else
               {
                  _loc7_ = ZPP_Edge.var_72;
                  ZPP_Edge.var_72 = _loc7_.next;
                  _loc7_.next = null;
               }
               null;
               _loc7_.name_6 = this;
               name_11.add(_loc7_);
               var_255 = var_255 + 2;
            }
            else
            {
               if(ZPP_Edge.var_72 == null)
               {
                  _loc6_ = new ZPP_Edge();
               }
               else
               {
                  _loc6_ = ZPP_Edge.var_72;
                  ZPP_Edge.var_72 = _loc6_.next;
                  _loc6_.next = null;
               }
               null;
               _loc6_.name_6 = this;
               name_11.insert(_loc3_,_loc6_);
               var_255 = var_255 + 1;
            }
         }
         _loc4_._validate = gverts_pa_validate;
      }
      
      public final function lverts_pa_invalidate(param1:ZPP_Vec2) : void
      {
         invalidate_lverts();
      }
      
      public final function lverts_invalidate(param1:ZPP_Vec2List) : void
      {
         invalidate_lverts();
      }
      
      public final function localCOM_validate() : void
      {
         var _loc1_:* = null as ZPP_Polygon;
         var _loc2_:* = NaN;
         var _loc3_:* = null as ZPP_Vec2;
         var _loc4_:* = null as ZPP_Vec2;
         var _loc5_:* = null as ZPP_Vec2;
         var _loc6_:* = null as ZPP_Vec2;
         var _loc7_:Number = NaN;
         var _loc8_:* = null as ZPP_Vec2;
         if(var_140)
         {
            var_140 = false;
            if(type == class_223.var_155)
            {
               _loc1_ = name_6;
               if(_loc1_.var_88.next.next == null)
               {
                  _loc1_.var_82 = _loc1_.var_88.next.x;
                  _loc1_.var_81 = _loc1_.var_88.next.y;
                  null;
               }
               else if(_loc1_.var_88.next.next.next == null)
               {
                  _loc1_.var_82 = _loc1_.var_88.next.x;
                  _loc1_.var_81 = _loc1_.var_88.next.y;
                  _loc2_ = 1;
                  _loc1_.var_82 = Number(_loc1_.var_82 + _loc1_.var_88.next.next.x * _loc2_);
                  _loc1_.var_81 = Number(_loc1_.var_81 + _loc1_.var_88.next.next.y * _loc2_);
                  _loc2_ = 0.5;
                  _loc1_.var_82 = _loc1_.var_82 * _loc2_;
                  _loc1_.var_81 = _loc1_.var_81 * _loc2_;
               }
               else
               {
                  _loc1_.var_82 = 0;
                  _loc1_.var_81 = 0;
                  _loc2_ = 0;
                  _loc3_ = _loc1_.var_88.next;
                  _loc4_ = _loc3_;
                  _loc3_ = _loc3_.next;
                  _loc5_ = _loc3_;
                  _loc3_ = _loc3_.next;
                  while(_loc3_ != null)
                  {
                     _loc6_ = _loc3_;
                     _loc2_ = Number(Number(_loc2_ + _loc5_.x * (_loc6_.y - _loc4_.y)));
                     _loc7_ = _loc6_.y * _loc5_.x - _loc6_.x * _loc5_.y;
                     _loc1_.var_82 = Number(_loc1_.var_82 + (_loc5_.x + _loc6_.x) * _loc7_);
                     _loc1_.var_81 = Number(_loc1_.var_81 + (_loc5_.y + _loc6_.y) * _loc7_);
                     _loc4_ = _loc5_;
                     _loc5_ = _loc6_;
                     _loc3_ = _loc3_.next;
                  }
                  _loc3_ = _loc1_.var_88.next;
                  _loc6_ = _loc3_;
                  _loc2_ = Number(Number(_loc2_ + _loc5_.x * (_loc6_.y - _loc4_.y)));
                  _loc7_ = _loc6_.y * _loc5_.x - _loc6_.x * _loc5_.y;
                  _loc1_.var_82 = Number(_loc1_.var_82 + (_loc5_.x + _loc6_.x) * _loc7_);
                  _loc1_.var_81 = Number(_loc1_.var_81 + (_loc5_.y + _loc6_.y) * _loc7_);
                  _loc4_ = _loc5_;
                  _loc5_ = _loc6_;
                  _loc3_ = _loc3_.next;
                  _loc8_ = _loc3_;
                  _loc2_ = Number(Number(_loc2_ + _loc5_.x * (_loc8_.y - _loc4_.y)));
                  _loc7_ = _loc8_.y * _loc5_.x - _loc8_.x * _loc5_.y;
                  _loc1_.var_82 = Number(_loc1_.var_82 + (_loc5_.x + _loc8_.x) * _loc7_);
                  _loc1_.var_81 = Number(_loc1_.var_81 + (_loc5_.y + _loc8_.y) * _loc7_);
                  _loc2_ = Number(1 / (3 * _loc2_));
                  _loc7_ = _loc2_;
                  _loc1_.var_82 = _loc1_.var_82 * _loc7_;
                  _loc1_.var_81 = _loc1_.var_81 * _loc7_;
               }
            }
            if(var_115 != null)
            {
               var_115.zpp_inner.x = var_82;
               var_115.zpp_inner.y = var_81;
            }
         }
      }
      
      public final function localCOM_invalidate(param1:ZPP_Vec2) : void
      {
         var _loc2_:* = null as ZPP_Polygon;
         var _loc3_:* = NaN;
         var _loc4_:* = null as ZPP_Vec2;
         var _loc5_:* = null as ZPP_Vec2;
         var _loc6_:* = null as ZPP_Vec2;
         var _loc7_:* = null as ZPP_Vec2;
         var _loc8_:* = NaN;
         var _loc9_:* = null as ZPP_Vec2;
         var _loc10_:* = NaN;
         if(var_140)
         {
            var_140 = false;
            if(type == class_223.var_155)
            {
               _loc2_ = name_6;
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
                  _loc3_ = 1;
                  _loc2_.var_82 = Number(_loc2_.var_82 + _loc2_.var_88.next.next.x * _loc3_);
                  _loc2_.var_81 = Number(_loc2_.var_81 + _loc2_.var_88.next.next.y * _loc3_);
                  _loc3_ = 0.5;
                  _loc2_.var_82 = _loc2_.var_82 * _loc3_;
                  _loc2_.var_81 = _loc2_.var_81 * _loc3_;
               }
               else
               {
                  _loc2_.var_82 = 0;
                  _loc2_.var_81 = 0;
                  _loc3_ = 0;
                  _loc4_ = _loc2_.var_88.next;
                  _loc5_ = _loc4_;
                  _loc4_ = _loc4_.next;
                  _loc6_ = _loc4_;
                  _loc4_ = _loc4_.next;
                  while(_loc4_ != null)
                  {
                     _loc7_ = _loc4_;
                     _loc3_ = Number(Number(_loc3_ + _loc6_.x * (_loc7_.y - _loc5_.y)));
                     _loc8_ = Number(_loc7_.y * _loc6_.x - _loc7_.x * _loc6_.y);
                     _loc2_.var_82 = Number(_loc2_.var_82 + (_loc6_.x + _loc7_.x) * _loc8_);
                     _loc2_.var_81 = Number(_loc2_.var_81 + (_loc6_.y + _loc7_.y) * _loc8_);
                     _loc5_ = _loc6_;
                     _loc6_ = _loc7_;
                     _loc4_ = _loc4_.next;
                  }
                  _loc4_ = _loc2_.var_88.next;
                  _loc7_ = _loc4_;
                  _loc3_ = Number(Number(_loc3_ + _loc6_.x * (_loc7_.y - _loc5_.y)));
                  _loc8_ = Number(_loc7_.y * _loc6_.x - _loc7_.x * _loc6_.y);
                  _loc2_.var_82 = Number(_loc2_.var_82 + (_loc6_.x + _loc7_.x) * _loc8_);
                  _loc2_.var_81 = Number(_loc2_.var_81 + (_loc6_.y + _loc7_.y) * _loc8_);
                  _loc5_ = _loc6_;
                  _loc6_ = _loc7_;
                  _loc4_ = _loc4_.next;
                  _loc9_ = _loc4_;
                  _loc3_ = Number(Number(_loc3_ + _loc6_.x * (_loc9_.y - _loc5_.y)));
                  _loc8_ = Number(_loc9_.y * _loc6_.x - _loc9_.x * _loc6_.y);
                  _loc2_.var_82 = Number(_loc2_.var_82 + (_loc6_.x + _loc9_.x) * _loc8_);
                  _loc2_.var_81 = Number(_loc2_.var_81 + (_loc6_.y + _loc9_.y) * _loc8_);
                  _loc3_ = Number(1 / (3 * _loc3_));
                  _loc8_ = Number(_loc3_);
                  _loc2_.var_82 = _loc2_.var_82 * _loc8_;
                  _loc2_.var_81 = _loc2_.var_81 * _loc8_;
               }
            }
            if(var_115 != null)
            {
               var_115.zpp_inner.x = var_82;
               var_115.zpp_inner.y = var_81;
            }
         }
         _loc3_ = 0;
         _loc8_ = 0;
         _loc3_ = Number(param1.x - var_82);
         _loc8_ = Number(param1.y - var_81);
         _loc4_ = var_88.next;
         while(_loc4_ != null)
         {
            _loc5_ = _loc4_;
            _loc10_ = 1;
            _loc5_.x = Number(_loc5_.x + _loc3_ * _loc10_);
            _loc5_.y = Number(_loc5_.y + _loc8_ * _loc10_);
            _loc4_ = _loc4_.next;
         }
         invalidate_lverts();
      }
      
      public final function invalidate_lverts() : void
      {
         invalidate_laxi();
         method_238();
         method_183();
         method_159();
         method_142();
         var_634 = true;
         var_679 = true;
         var_445 = true;
         if(body != null)
         {
            body.method_106();
         }
      }
      
      public final function invalidate_laxi() : void
      {
         method_141();
         var_420 = true;
         var_676 = true;
      }
      
      public final function method_142() : void
      {
         var_149 = true;
         if(body != null)
         {
            body.var_149 = true;
         }
         var_153 = true;
      }
      
      public final function method_141() : void
      {
         var_247 = true;
      }
      
      public final function gverts_validate() : void
      {
         var _loc1_:* = null as ZPP_Body;
         var _loc2_:* = null as ZPP_Vec2;
         var _loc3_:* = null as ZPP_Vec2;
         var _loc4_:* = null as ZPP_Vec2;
         var _loc5_:* = null as ZPP_Vec2;
         if(var_153)
         {
            if(body != null)
            {
               var_153 = false;
               method_116();
               _loc1_ = body;
               if(_loc1_.var_113)
               {
                  _loc1_.var_113 = false;
                  _loc1_.var_84 = Number(Math.sin(_loc1_.var_93));
                  _loc1_.var_83 = Number(Math.cos(_loc1_.var_93));
                  null;
               }
               _loc2_ = var_88.next;
               _loc3_ = var_107.next;
               while(_loc3_ != null)
               {
                  _loc4_ = _loc3_;
                  _loc5_ = _loc2_;
                  _loc2_ = _loc2_.next;
                  _loc4_.x = Number(body.var_95 + (body.var_83 * _loc5_.x - body.var_84 * _loc5_.y));
                  _loc4_.y = Number(body.var_96 + (Number(_loc5_.x * body.var_84 + _loc5_.y * body.var_83)));
                  _loc3_ = _loc3_.next;
               }
            }
         }
      }
      
      public final function gverts_pa_validate() : void
      {
         var _loc1_:* = null as ZPP_Body;
         var _loc2_:* = null as ZPP_Vec2;
         var _loc3_:* = null as ZPP_Vec2;
         var _loc4_:* = null as ZPP_Vec2;
         var _loc5_:* = null as ZPP_Vec2;
         if(var_153)
         {
            if(body != null)
            {
               var_153 = false;
               method_116();
               _loc1_ = body;
               if(_loc1_.var_113)
               {
                  _loc1_.var_113 = false;
                  _loc1_.var_84 = Number(Math.sin(_loc1_.var_93));
                  _loc1_.var_83 = Number(Math.cos(_loc1_.var_93));
                  null;
               }
               _loc2_ = var_88.next;
               _loc3_ = var_107.next;
               while(_loc3_ != null)
               {
                  _loc4_ = _loc3_;
                  _loc5_ = _loc2_;
                  _loc2_ = _loc2_.next;
                  _loc4_.x = Number(body.var_95 + (body.var_83 * _loc5_.x - body.var_84 * _loc5_.y));
                  _loc4_.y = Number(body.var_96 + (Number(_loc5_.x * body.var_84 + _loc5_.y * body.var_83)));
                  _loc3_ = _loc3_.next;
               }
            }
         }
      }
      
      public final function method_205() : void
      {
         var_244 = class_315.method_65(var_88);
         var_244.zpp_inner.var_137 = lverts_post_adder;
         var_244.zpp_inner.var_110 = lverts_subber;
         var_244.zpp_inner._invalidate = lverts_invalidate;
         var_244.zpp_inner._validate = lverts_validate;
         var_244.zpp_inner.var_111 = var_111;
      }
      
      public final function method_485() : void
      {
         var_403 = class_315.method_65(var_107,true);
         var_403.zpp_inner.var_111 = var_111;
         var_403.zpp_inner._validate = gverts_validate;
      }
      
      public final function method_620() : void
      {
         var_434 = ZPP_EdgeList.method_65(name_11,true);
         var_434.zpp_inner.var_111 = var_111;
         var_434.zpp_inner._validate = edges_validate;
      }
      
      public final function edges_validate() : void
      {
         method_116();
      }
      
      public final function cleanup_lvert(param1:ZPP_Vec2) : void
      {
         var _loc4_:* = null as ZPP_Vec2;
         var _loc5_:* = null as ZPP_Vec2;
         var _loc6_:* = null as ZPP_Edge;
         var _loc7_:* = null as ZPP_Edge;
         var _loc2_:* = null;
         var _loc3_:* = null;
         _loc4_ = var_88.next;
         while(_loc4_ != null)
         {
            _loc5_ = _loc4_;
            if(_loc5_ == param1)
            {
               break;
            }
            if(_loc2_ == null)
            {
               _loc2_ = var_107.next;
            }
            else
            {
               _loc2_ = _loc2_.next;
            }
            if(_loc3_ == null)
            {
               _loc3_ = name_11.var_73;
            }
            else
            {
               _loc3_ = _loc3_.next;
            }
            _loc4_ = _loc4_.next;
         }
         if(_loc2_ == null)
         {
            _loc4_ = var_107.next;
         }
         else
         {
            _loc4_ = _loc2_.next;
         }
         var_107.erase(_loc2_);
         _loc5_ = _loc4_;
         if(_loc5_.outer != null)
         {
            _loc5_.outer.zpp_inner = null;
            _loc5_.outer = null;
         }
         _loc5_.var_103 = null;
         _loc5_._validate = null;
         _loc5_._invalidate = null;
         _loc5_.next = ZPP_Vec2.var_72;
         ZPP_Vec2.var_72 = _loc5_;
         if(var_255 == 2)
         {
            _loc6_ = name_11.method_105();
            _loc7_ = _loc6_;
            _loc7_.name_6 = null;
            _loc7_.next = ZPP_Edge.var_72;
            ZPP_Edge.var_72 = _loc7_;
            _loc6_ = name_11.method_105();
            _loc7_ = _loc6_;
            _loc7_.name_6 = null;
            _loc7_.next = ZPP_Edge.var_72;
            ZPP_Edge.var_72 = _loc7_;
            var_255 = 0;
         }
         else if(var_255 != 0)
         {
            if(_loc3_ == null)
            {
               _loc6_ = name_11.var_73.var_74;
            }
            else
            {
               _loc6_ = _loc3_.next.var_74;
            }
            name_11.erase(_loc3_);
            _loc7_ = _loc6_;
            _loc7_.name_6 = null;
            _loc7_.next = ZPP_Edge.var_72;
            ZPP_Edge.var_72 = _loc7_;
            var_255 = var_255 - 1;
         }
      }
      
      public final function method_425() : void
      {
         var _loc4_:* = null as ZPP_Vec2;
         var _loc5_:Number = NaN;
         var _loc7_:* = null as ZPP_Edge;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         method_124();
         var _loc3_:ZPP_Vec2 = var_88.next;
         while(_loc3_ != null)
         {
            _loc4_ = _loc3_;
            _loc5_ = Number(_loc4_.x * _loc4_.x + _loc4_.y * _loc4_.y);
            if(_loc5_ > _loc1_)
            {
               _loc1_ = Number(_loc5_);
            }
            _loc3_ = _loc3_.next;
         }
         var _loc6_:ZNPNode_ZPP_Edge = name_11.var_73;
         while(_loc6_ != null)
         {
            _loc7_ = _loc6_.var_74;
            if(_loc7_.var_165 < _loc2_)
            {
               _loc2_ = Number(_loc7_.var_165);
               if(_loc2_ < 0)
               {
                  break;
               }
            }
            _loc6_ = _loc6_.next;
         }
         if(_loc2_ < 0)
         {
            _loc2_ = 0;
         }
         var_258 = Number(Math.sqrt(_loc1_));
         var_366 = var_258 - _loc2_;
      }
      
      public final function method_422() : void
      {
         var _loc1_:* = NaN;
         var _loc2_:* = NaN;
         var _loc3_:* = null as ZPP_Vec2;
         var _loc4_:* = null as ZPP_Vec2;
         var _loc5_:* = null as ZPP_Vec2;
         var _loc6_:* = null as ZPP_Vec2;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:* = null as ZPP_Vec2;
         if(var_88.next == null || var_88.next.next == null || var_88.next.next.next == null)
         {
            area = 0;
            inertia = 0;
         }
         else
         {
            area = 0;
            _loc1_ = 0;
            _loc2_ = 0;
            _loc3_ = var_88.next;
            _loc4_ = _loc3_;
            _loc3_ = _loc3_.next;
            _loc5_ = _loc3_;
            _loc3_ = _loc3_.next;
            while(_loc3_ != null)
            {
               _loc6_ = _loc3_;
               _loc7_ = _loc5_.y * _loc4_.x - _loc5_.x * _loc4_.y;
               _loc8_ = Number(Number(Number(_loc5_.x * _loc5_.x + _loc5_.y * _loc5_.y) + (Number(_loc5_.x * _loc4_.x + _loc5_.y * _loc4_.y))) + (Number(_loc4_.x * _loc4_.x + _loc4_.y * _loc4_.y)));
               _loc1_ = Number(Number(_loc1_ + _loc7_ * _loc8_));
               _loc2_ = Number(Number(_loc2_ + _loc7_));
               area = Number(area + _loc5_.x * (_loc6_.y - _loc4_.y));
               _loc4_ = _loc5_;
               _loc5_ = _loc6_;
               _loc3_ = _loc3_.next;
            }
            _loc3_ = var_88.next;
            _loc6_ = _loc3_;
            _loc7_ = _loc5_.y * _loc4_.x - _loc5_.x * _loc4_.y;
            _loc8_ = Number(Number(Number(_loc5_.x * _loc5_.x + _loc5_.y * _loc5_.y) + (Number(_loc5_.x * _loc4_.x + _loc5_.y * _loc4_.y))) + (Number(_loc4_.x * _loc4_.x + _loc4_.y * _loc4_.y)));
            _loc1_ = Number(Number(_loc1_ + _loc7_ * _loc8_));
            _loc2_ = Number(Number(_loc2_ + _loc7_));
            area = Number(area + _loc5_.x * (_loc6_.y - _loc4_.y));
            _loc4_ = _loc5_;
            _loc5_ = _loc6_;
            _loc3_ = _loc3_.next;
            _loc9_ = _loc3_;
            _loc7_ = _loc5_.y * _loc4_.x - _loc5_.x * _loc4_.y;
            _loc8_ = Number(Number(Number(_loc5_.x * _loc5_.x + _loc5_.y * _loc5_.y) + (Number(_loc5_.x * _loc4_.x + _loc5_.y * _loc4_.y))) + (Number(_loc4_.x * _loc4_.x + _loc4_.y * _loc4_.y)));
            _loc1_ = Number(Number(_loc1_ + _loc7_ * _loc8_));
            _loc2_ = Number(Number(_loc2_ + _loc7_));
            area = Number(area + _loc5_.x * (_loc9_.y - _loc4_.y));
            inertia = _loc1_ / (6 * _loc2_);
            area = area * 0.5;
            if(area < 0)
            {
               area = -area;
               reverse_vertices();
            }
         }
      }
      
      public final function method_369() : void
      {
         var _loc8_:* = null as ZPP_Vec2;
         var _loc9_:* = null as ZPP_Edge;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         method_164();
         method_124();
         var _loc1_:* = 0;
         var _loc2_:ZNPNode_ZPP_Edge = name_11.var_73;
         var _loc3_:* = 0;
         var _loc5_:ZPP_Vec2 = var_88.next;
         var _loc6_:ZPP_Vec2 = _loc5_;
         var _loc7_:ZPP_Vec2 = _loc5_.next;
         while(_loc7_ != null)
         {
            _loc8_ = _loc7_;
            _loc9_ = _loc2_.var_74;
            _loc2_ = _loc2_.next;
            _loc3_ = Number(Number(_loc3_ + _loc9_.length));
            _loc10_ = 0;
            _loc11_ = 0;
            _loc10_ = Number(_loc8_.x - _loc6_.x);
            _loc11_ = Number(_loc8_.y - _loc6_.y);
            _loc1_ = Number(Number(_loc1_ + _loc9_.length * class_238.var_956 * material.name_28 * _loc9_.var_165 * _loc9_.var_165));
            _loc12_ = -(_loc6_.y * _loc9_.var_122 - _loc6_.x * _loc9_.var_121) / (_loc11_ * _loc9_.var_122 - _loc10_ * _loc9_.var_121);
            if(_loc12_ > 0)
            {
               if(_loc12_ > 1)
               {
                  _loc13_ = 1;
               }
               else
               {
                  _loc13_ = Number(_loc12_);
               }
               _loc14_ = 0;
               _loc15_ = 0;
               _loc14_ = Number(_loc6_.x);
               _loc15_ = Number(_loc6_.y);
               _loc16_ = _loc13_;
               _loc14_ = Number(Number(_loc14_ + _loc10_ * _loc16_));
               _loc15_ = Number(Number(_loc15_ + _loc11_ * _loc16_));
               _loc16_ = _loc9_.var_121 * _loc6_.x - _loc9_.var_122 * _loc6_.y;
               _loc17_ = _loc9_.var_121 * _loc14_ - _loc9_.var_122 * _loc15_;
               _loc18_ = (_loc17_ * _loc17_ * _loc17_ - _loc16_ * _loc16_ * _loc16_) / (3 * (_loc17_ - _loc16_));
               _loc1_ = Number(Number(_loc1_ + _loc18_ * _loc13_ * _loc9_.length * class_238.var_755));
            }
            if(_loc12_ < 1)
            {
               if(_loc12_ < 0)
               {
                  _loc13_ = 0;
               }
               else
               {
                  _loc13_ = Number(_loc12_);
               }
               _loc14_ = 0;
               _loc15_ = 0;
               _loc14_ = Number(_loc6_.x);
               _loc15_ = Number(_loc6_.y);
               _loc16_ = _loc13_;
               _loc14_ = Number(Number(_loc14_ + _loc10_ * _loc16_));
               _loc15_ = Number(Number(_loc15_ + _loc11_ * _loc16_));
               _loc16_ = _loc9_.var_121 * _loc14_ - _loc9_.var_122 * _loc15_;
               _loc17_ = _loc9_.var_121 * _loc8_.x - _loc9_.var_122 * _loc8_.y;
               _loc18_ = (_loc17_ * _loc17_ * _loc17_ - _loc16_ * _loc16_ * _loc16_) / (3 * (_loc17_ - _loc16_));
               _loc1_ = Number(Number(_loc1_ + _loc18_ * class_238.var_766 * (1 - _loc13_) * _loc9_.length * class_238.var_755));
            }
            _loc5_ = _loc7_;
            _loc6_ = _loc8_;
            _loc7_ = _loc7_.next;
         }
         _loc7_ = var_88.next;
         _loc8_ = _loc7_;
         _loc9_ = _loc2_.var_74;
         _loc2_ = _loc2_.next;
         _loc3_ = Number(Number(_loc3_ + _loc9_.length));
         _loc10_ = 0;
         _loc11_ = 0;
         _loc10_ = Number(_loc8_.x - _loc6_.x);
         _loc11_ = Number(_loc8_.y - _loc6_.y);
         _loc1_ = Number(Number(_loc1_ + _loc9_.length * class_238.var_956 * material.name_28 * _loc9_.var_165 * _loc9_.var_165));
         _loc12_ = -(_loc6_.y * _loc9_.var_122 - _loc6_.x * _loc9_.var_121) / (_loc11_ * _loc9_.var_122 - _loc10_ * _loc9_.var_121);
         if(_loc12_ > 0)
         {
            if(_loc12_ > 1)
            {
               _loc13_ = 1;
            }
            else
            {
               _loc13_ = Number(_loc12_);
            }
            _loc14_ = 0;
            _loc15_ = 0;
            _loc14_ = Number(_loc6_.x);
            _loc15_ = Number(_loc6_.y);
            _loc16_ = _loc13_;
            _loc14_ = Number(Number(_loc14_ + _loc10_ * _loc16_));
            _loc15_ = Number(Number(_loc15_ + _loc11_ * _loc16_));
            _loc16_ = _loc9_.var_121 * _loc6_.x - _loc9_.var_122 * _loc6_.y;
            _loc17_ = _loc9_.var_121 * _loc14_ - _loc9_.var_122 * _loc15_;
            _loc18_ = (_loc17_ * _loc17_ * _loc17_ - _loc16_ * _loc16_ * _loc16_) / (3 * (_loc17_ - _loc16_));
            _loc1_ = Number(Number(_loc1_ + _loc18_ * _loc13_ * _loc9_.length * class_238.var_755));
         }
         if(_loc12_ < 1)
         {
            if(_loc12_ < 0)
            {
               _loc13_ = 0;
            }
            else
            {
               _loc13_ = Number(_loc12_);
            }
            _loc14_ = 0;
            _loc15_ = 0;
            _loc14_ = Number(_loc6_.x);
            _loc15_ = Number(_loc6_.y);
            _loc16_ = _loc13_;
            _loc14_ = Number(Number(_loc14_ + _loc10_ * _loc16_));
            _loc15_ = Number(Number(_loc15_ + _loc11_ * _loc16_));
            _loc16_ = _loc9_.var_121 * _loc14_ - _loc9_.var_122 * _loc15_;
            _loc17_ = _loc9_.var_121 * _loc8_.x - _loc9_.var_122 * _loc8_.y;
            _loc18_ = (_loc17_ * _loc17_ * _loc17_ - _loc16_ * _loc16_ * _loc16_) / (3 * (_loc17_ - _loc16_));
            _loc1_ = Number(Number(_loc1_ + _loc18_ * class_238.var_766 * (1 - _loc13_) * _loc9_.length * class_238.var_755));
         }
         name_59 = _loc1_ / (inertia * _loc3_);
      }
      
      public final function method_429(param1:Number, param2:Number) : void
      {
         var _loc4_:* = null as ZPP_Vec2;
         var _loc5_:* = NaN;
         var _loc3_:ZPP_Vec2 = var_88.next;
         while(_loc3_ != null)
         {
            _loc4_ = _loc3_;
            _loc5_ = 1;
            _loc4_.x = Number(_loc4_.x + param1 * _loc5_);
            _loc4_.y = Number(_loc4_.y + param2 * _loc5_);
            _loc3_ = _loc3_.next;
         }
         invalidate_lverts();
      }
      
      public final function method_388(param1:class_242) : void
      {
         var _loc3_:* = null as ZPP_Vec2;
         var _loc4_:Number = NaN;
         var _loc2_:ZPP_Vec2 = var_88.next;
         while(_loc2_ != null)
         {
            _loc3_ = _loc2_;
            _loc4_ = Number(Number(param1.zpp_inner.a * _loc3_.x + param1.zpp_inner.b * _loc3_.y) + param1.zpp_inner.tx);
            _loc3_.y = Number(Number(param1.zpp_inner.c * _loc3_.x + param1.zpp_inner.d * _loc3_.y) + param1.zpp_inner.ty);
            _loc3_.x = _loc4_;
            _loc2_ = _loc2_.next;
         }
         invalidate_lverts();
      }
      
      public final function method_421(param1:Number, param2:Number) : void
      {
         var _loc4_:* = null as ZPP_Vec2;
         var _loc3_:ZPP_Vec2 = var_88.next;
         while(_loc3_ != null)
         {
            _loc4_ = _loc3_;
            _loc4_.x = _loc4_.x * param1;
            _loc4_.y = _loc4_.y * param2;
            _loc3_ = _loc3_.next;
         }
         invalidate_lverts();
      }
      
      public final function method_410(param1:Number, param2:Number) : void
      {
         var _loc4_:* = null as ZPP_Vec2;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc3_:ZPP_Vec2 = var_88.next;
         while(_loc3_ != null)
         {
            _loc4_ = _loc3_;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc5_ = Number(param2 * _loc4_.x - param1 * _loc4_.y);
            _loc6_ = Number(Number(_loc4_.x * param1 + _loc4_.y * param2));
            _loc4_.x = _loc5_;
            _loc4_.y = _loc6_;
            _loc3_ = _loc3_.next;
         }
         invalidate_lverts();
      }
      
      public final function method_398() : ZPP_Polygon
      {
         var _loc2_:Polygon = outer_zn;
         §§push();
         if(_loc2_.var_85.var_244 == null)
         {
            _loc2_.var_85.method_205();
         }
         var _loc1_:ZPP_Polygon = new §§pop().Polygon(_loc2_.var_85.var_244).var_85;
         return _loc1_;
      }
   }
}
