package zpp_nape.geom
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
   import nape.geom.Vec2;
   import package_35.class_238;
   import zpp_nape.dynamics.ZPP_ColArbiter;
   import zpp_nape.dynamics.ZPP_Contact;
   import zpp_nape.dynamics.ZPP_FluidArbiter;
   import zpp_nape.dynamics.ZPP_IContact;
   import zpp_nape.phys.ZPP_Body;
   import zpp_nape.shape.ZPP_Circle;
   import zpp_nape.shape.ZPP_Edge;
   import zpp_nape.shape.ZPP_Polygon;
   import zpp_nape.shape.ZPP_Shape;
   import zpp_nape.util.ZNPNode_ZPP_Edge;
   import zpp_nape.util.ZNPNode_ZPP_Shape;
   import zpp_nape.util.ZNPNode_ZPP_Vec2;
   import zpp_nape.util.class_223;
   import zpp_nape.util.class_259;
   
   public final class class_239
   {
      
      public static var var_192:class_259 = new class_259();
      
      public static var var_428:class_259 = new class_259();
       
      
      public function class_239()
      {
      }
      
      public static function method_223(param1:ZPP_Circle, param2:ZPP_Vec2) : Boolean
      {
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         _loc3_ = Number(param2.x - param1.var_99);
         _loc4_ = Number(param2.y - param1.var_100);
         return Number(_loc3_ * _loc3_ + _loc4_ * _loc4_) < param1.radius * param1.radius;
      }
      
      public static function method_231(param1:ZPP_Polygon, param2:ZPP_Vec2) : Boolean
      {
         var _loc5_:* = null as ZPP_Edge;
         var _loc3_:Boolean = true;
         var _loc4_:ZNPNode_ZPP_Edge = param1.name_11.var_73;
         while(_loc4_ != null)
         {
            _loc5_ = _loc4_.var_74;
            if(Number(_loc5_.var_92 * param2.x + _loc5_.var_91 * param2.y) <= _loc5_.gprojection)
            {
               _loc4_ = _loc4_.next;
               continue;
            }
            _loc3_ = false;
            break;
         }
         return _loc3_;
      }
      
      public static function method_440(param1:ZPP_Shape, param2:ZPP_Vec2) : Boolean
      {
         if(param1.type == class_223.var_131)
         {
            return Boolean(class_239.method_223(param1.var_102,param2));
         }
         return Boolean(class_239.method_231(param1.name_6,param2));
      }
      
      public static function method_889(param1:ZPP_Body, param2:ZPP_Vec2) : Boolean
      {
         var _loc5_:* = null as ZPP_Shape;
         var _loc3_:Boolean = false;
         var _loc4_:ZNPNode_ZPP_Shape = param1.shapes.var_73;
         while(_loc4_ != null)
         {
            _loc5_ = _loc4_.var_74;
            if(class_239.method_440(_loc5_,param2))
            {
               _loc3_ = true;
               break;
            }
            _loc4_ = _loc4_.next;
         }
         return _loc3_;
      }
      
      public static function method_135(param1:ZPP_Shape, param2:ZPP_Shape) : Boolean
      {
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Boolean = false;
         var _loc10_:* = null as ZPP_Vec2;
         var _loc11_:* = null as ZPP_Vec2;
         var _loc12_:* = null as ZNPNode_ZPP_Edge;
         var _loc13_:* = null as ZPP_Edge;
         var _loc3_:ZPP_AABB = param1.name_3;
         var _loc4_:ZPP_AABB = param2.name_3;
         if(_loc4_.var_77 >= _loc3_.var_77 && _loc4_.var_78 >= _loc3_.var_78 && _loc4_.var_79 <= _loc3_.var_79 && _loc4_.var_80 <= _loc3_.var_80)
         {
            if(param1.type == class_223.var_131)
            {
               if(param2.type == class_223.var_131)
               {
                  _loc5_ = Number(Number(param1.var_102.radius + -param2.var_102.radius));
                  _loc6_ = 0;
                  _loc7_ = 0;
                  _loc6_ = Number(param2.var_102.var_99 - param1.var_102.var_99);
                  _loc7_ = Number(param2.var_102.var_100 - param1.var_102.var_100);
                  _loc8_ = Number(_loc6_ * _loc6_ + _loc7_ * _loc7_);
                  return _loc8_ <= _loc5_ * _loc5_;
               }
               _loc9_ = true;
               _loc10_ = param2.name_6.var_107.next;
               while(_loc10_ != null)
               {
                  _loc11_ = _loc10_;
                  _loc5_ = Number(param1.var_102.radius);
                  _loc6_ = 0;
                  _loc7_ = 0;
                  _loc6_ = Number(_loc11_.x - param1.var_102.var_99);
                  _loc7_ = Number(_loc11_.y - param1.var_102.var_100);
                  _loc8_ = Number(_loc6_ * _loc6_ + _loc7_ * _loc7_);
                  if(_loc8_ <= _loc5_ * _loc5_)
                  {
                     _loc10_ = _loc10_.next;
                     continue;
                  }
                  _loc9_ = false;
                  break;
               }
               return _loc9_;
            }
            if(param2.type == class_223.var_131)
            {
               _loc9_ = true;
               _loc12_ = param1.name_6.name_11.var_73;
               while(_loc12_ != null)
               {
                  _loc13_ = _loc12_.var_74;
                  if(Number(Number(_loc13_.var_92 * param2.var_102.var_99 + _loc13_.var_91 * param2.var_102.var_100) + param2.var_102.radius) <= _loc13_.gprojection)
                  {
                     _loc12_ = _loc12_.next;
                     continue;
                  }
                  _loc9_ = false;
                  break;
               }
               return _loc9_;
            }
            _loc9_ = true;
            _loc12_ = param1.name_6.name_11.var_73;
            while(_loc12_ != null)
            {
               _loc13_ = _loc12_.var_74;
               _loc5_ = -1.0e100;
               _loc10_ = param2.name_6.var_107.next;
               while(_loc10_ != null)
               {
                  _loc11_ = _loc10_;
                  _loc6_ = Number(Number(_loc13_.var_92 * _loc11_.x + _loc13_.var_91 * _loc11_.y));
                  if(_loc6_ > _loc5_)
                  {
                     _loc5_ = Number(_loc6_);
                  }
                  _loc10_ = _loc10_.next;
               }
               if(_loc5_ <= _loc13_.gprojection)
               {
                  _loc12_ = _loc12_.next;
                  continue;
               }
               _loc9_ = false;
               break;
            }
            return _loc9_;
         }
         return false;
      }
      
      public static function method_589(param1:ZPP_Shape, param2:ZPP_Shape, param3:ZPP_ColArbiter, param4:Boolean) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = 0;
         var _loc9_:* = null as ZPP_Edge;
         var _loc10_:* = null as ZPP_Edge;
         var _loc11_:* = null as ZNPNode_ZPP_Edge;
         var _loc12_:* = null as ZPP_Edge;
         var _loc13_:* = NaN;
         var _loc14_:* = null as ZPP_Vec2;
         var _loc15_:* = null as ZPP_Vec2;
         var _loc16_:* = NaN;
         var _loc17_:* = null as ZPP_Polygon;
         var _loc18_:* = null as ZPP_Polygon;
         var _loc19_:* = null as ZPP_Edge;
         var _loc20_:* = null as ZPP_Edge;
         var _loc21_:* = NaN;
         var _loc22_:* = NaN;
         var _loc23_:* = NaN;
         var _loc24_:* = NaN;
         var _loc25_:* = NaN;
         var _loc26_:* = NaN;
         var _loc27_:* = NaN;
         var _loc28_:Number = NaN;
         var _loc29_:Number = NaN;
         var _loc30_:Number = NaN;
         var _loc31_:Number = NaN;
         var _loc32_:* = NaN;
         var _loc33_:* = NaN;
         var _loc34_:Number = NaN;
         var _loc35_:Number = NaN;
         var _loc36_:* = null as ZPP_Contact;
         var _loc37_:int = 0;
         var _loc38_:* = null as ZPP_Contact;
         var _loc39_:* = null as ZPP_Contact;
         var _loc40_:* = null as ZPP_Contact;
         var _loc41_:* = null as ZPP_IContact;
         var _loc42_:* = NaN;
         var _loc43_:* = null as ZPP_Vec2;
         var _loc44_:* = null as ZPP_Vec2;
         var _loc45_:Boolean = false;
         if(param2.type == class_223.var_155)
         {
            if(param1.type == class_223.var_155)
            {
               _loc5_ = true;
               _loc6_ = -1.0e100;
               _loc7_ = -1.0e100;
               _loc8_ = -1;
               _loc9_ = null;
               _loc10_ = null;
               _loc11_ = param1.name_6.name_11.var_73;
               while(_loc11_ != null)
               {
                  _loc12_ = _loc11_.var_74;
                  _loc13_ = 1.0e100;
                  _loc14_ = param2.name_6.var_107.next;
                  while(_loc14_ != null)
                  {
                     _loc15_ = _loc14_;
                     _loc16_ = Number(Number(_loc12_.var_92 * _loc15_.x + _loc12_.var_91 * _loc15_.y));
                     if(_loc16_ < _loc13_)
                     {
                        _loc13_ = Number(_loc16_);
                     }
                     if(_loc13_ - _loc12_.gprojection <= _loc6_)
                     {
                        break;
                     }
                     _loc14_ = _loc14_.next;
                  }
                  _loc13_ = Number(_loc13_ - _loc12_.gprojection);
                  if(_loc13_ >= 0)
                  {
                     _loc5_ = false;
                     break;
                  }
                  if(_loc13_ > _loc6_)
                  {
                     _loc6_ = Number(_loc13_);
                     _loc9_ = _loc12_;
                     _loc8_ = 1;
                  }
                  _loc11_ = _loc11_.next;
               }
               if(_loc5_)
               {
                  _loc11_ = param2.name_6.name_11.var_73;
                  while(_loc11_ != null)
                  {
                     _loc12_ = _loc11_.var_74;
                     _loc13_ = 1.0e100;
                     _loc14_ = param1.name_6.var_107.next;
                     while(_loc14_ != null)
                     {
                        _loc15_ = _loc14_;
                        _loc16_ = Number(Number(_loc12_.var_92 * _loc15_.x + _loc12_.var_91 * _loc15_.y));
                        if(_loc16_ < _loc13_)
                        {
                           _loc13_ = Number(_loc16_);
                        }
                        if(_loc13_ - _loc12_.gprojection <= _loc6_)
                        {
                           break;
                        }
                        _loc14_ = _loc14_.next;
                     }
                     _loc13_ = Number(_loc13_ - _loc12_.gprojection);
                     if(_loc13_ >= 0)
                     {
                        _loc5_ = false;
                        break;
                     }
                     if(_loc13_ > _loc6_)
                     {
                        _loc6_ = Number(_loc13_);
                        _loc10_ = _loc12_;
                        _loc8_ = 2;
                     }
                     _loc11_ = _loc11_.next;
                  }
                  if(!_loc5_)
                  {
                     return false;
                  }
                  if(_loc8_ == 1)
                  {
                     _loc17_ = param1.name_6;
                     _loc18_ = param2.name_6;
                     _loc12_ = _loc9_;
                     _loc13_ = 1;
                  }
                  else
                  {
                     _loc17_ = param2.name_6;
                     _loc18_ = param1.name_6;
                     _loc12_ = _loc10_;
                     _loc13_ = -1;
                  }
                  _loc19_ = null;
                  _loc16_ = 1.0e100;
                  _loc11_ = _loc18_.name_11.var_73;
                  while(_loc11_ != null)
                  {
                     _loc20_ = _loc11_.var_74;
                     _loc21_ = Number(Number(_loc12_.var_92 * _loc20_.var_92 + _loc12_.var_91 * _loc20_.var_91));
                     if(_loc21_ < _loc16_)
                     {
                        _loc16_ = Number(_loc21_);
                        _loc19_ = _loc20_;
                     }
                     _loc11_ = _loc11_.next;
                  }
                  _loc21_ = 0;
                  _loc22_ = 0;
                  _loc21_ = Number(_loc19_.gp0.x);
                  _loc22_ = Number(_loc19_.gp0.y);
                  _loc23_ = 0;
                  _loc24_ = 0;
                  _loc23_ = Number(_loc19_.gp1.x);
                  _loc24_ = Number(_loc19_.gp1.y);
                  _loc25_ = 0;
                  _loc26_ = 0;
                  _loc25_ = Number(_loc23_ - _loc21_);
                  _loc26_ = Number(_loc24_ - _loc22_);
                  _loc27_ = Number(_loc12_.var_91 * _loc21_ - _loc12_.var_92 * _loc22_);
                  _loc28_ = _loc12_.var_91 * _loc23_ - _loc12_.var_92 * _loc24_;
                  _loc29_ = 1 / (_loc28_ - _loc27_);
                  _loc30_ = (-_loc12_.tp1 - _loc27_) * _loc29_;
                  if(_loc30_ > class_238.name_8)
                  {
                     _loc31_ = _loc30_;
                     _loc21_ = Number(Number(_loc21_ + _loc25_ * _loc31_));
                     _loc22_ = Number(Number(_loc22_ + _loc26_ * _loc31_));
                  }
                  _loc31_ = (-_loc12_.tp0 - _loc28_) * _loc29_;
                  if(_loc31_ < -class_238.name_8)
                  {
                     _loc32_ = Number(_loc31_);
                     _loc23_ = Number(Number(_loc23_ + _loc25_ * _loc32_));
                     _loc24_ = Number(Number(_loc24_ + _loc26_ * _loc32_));
                  }
                  _loc32_ = 0;
                  _loc33_ = 0;
                  _loc34_ = _loc13_;
                  _loc32_ = Number(_loc12_.var_92 * _loc34_);
                  _loc33_ = Number(_loc12_.var_91 * _loc34_);
                  param3.var_122 = _loc12_.var_122;
                  param3.var_121 = _loc12_.var_121;
                  param3.var_786 = _loc12_.var_165;
                  param3.radius = 0;
                  param3.var_642 = param4 != (_loc13_ == -1);
                  if(param3.var_642)
                  {
                     param3.var_605 = 1;
                  }
                  else
                  {
                     param3.var_605 = 0;
                  }
                  _loc34_ = _loc21_ * _loc12_.var_92 + _loc22_ * _loc12_.var_91 - _loc12_.gprojection;
                  _loc35_ = _loc23_ * _loc12_.var_92 + _loc24_ * _loc12_.var_91 - _loc12_.gprojection;
                  if(_loc34_ > 0 && _loc35_ > 0)
                  {
                     return false;
                  }
                  if(param4)
                  {
                     _loc32_ = Number(-_loc32_);
                     _loc33_ = Number(-_loc33_);
                  }
                  if(param3.var_642)
                  {
                     _loc37_ = 1;
                  }
                  else
                  {
                     _loc37_ = 0;
                  }
                  _loc38_ = null;
                  _loc39_ = param3.name_24.next;
                  while(_loc39_ != null)
                  {
                     _loc40_ = _loc39_;
                     if(_loc37_ == _loc40_.hash)
                     {
                        _loc38_ = _loc40_;
                        break;
                     }
                     _loc39_ = _loc39_.next;
                  }
                  if(_loc38_ == null)
                  {
                     if(ZPP_Contact.var_72 == null)
                     {
                        _loc38_ = new ZPP_Contact();
                     }
                     else
                     {
                        _loc38_ = ZPP_Contact.var_72;
                        ZPP_Contact.var_72 = _loc38_.next;
                        _loc38_.next = null;
                     }
                     null;
                     _loc41_ = _loc38_.name_4;
                     _loc42_ = 0;
                     _loc41_.var_208 = _loc42_;
                     _loc41_.var_142 = _loc42_;
                     _loc38_.hash = _loc37_;
                     _loc38_.name_23 = true;
                     _loc38_.name_20 = param3;
                     param3.var_170 = 0;
                     _loc39_ = param3.name_24;
                     _loc38_.var_120 = true;
                     _loc40_ = _loc38_;
                     _loc40_.next = _loc39_.next;
                     _loc39_.next = _loc40_;
                     _loc39_.name_2 = true;
                     _loc39_.length = _loc39_.length + 1;
                     _loc38_;
                     param3.var_268.add(_loc41_);
                  }
                  else
                  {
                     _loc38_.name_23 = false;
                  }
                  _loc38_.var_344 = _loc21_ - _loc12_.var_92 * _loc34_ * 0.5;
                  _loc38_.var_348 = _loc22_ - _loc12_.var_91 * _loc34_ * 0.5;
                  param3.nx = _loc32_;
                  param3.ny = _loc33_;
                  _loc38_.var_334 = _loc34_;
                  _loc38_.var_114 = param3.var_114;
                  _loc38_.var_300 = _loc34_ > 0;
                  _loc36_ = _loc38_;
                  _loc42_ = 1;
                  _loc21_ = Number(_loc21_ - _loc18_.body.var_95 * _loc42_);
                  _loc22_ = Number(_loc22_ - _loc18_.body.var_96 * _loc42_);
                  _loc36_.name_4.lr1x = Number(_loc21_ * _loc18_.body.var_83 + _loc22_ * _loc18_.body.var_84);
                  _loc36_.name_4.lr1y = _loc22_ * _loc18_.body.var_83 - _loc21_ * _loc18_.body.var_84;
                  if(param3.var_642)
                  {
                     _loc37_ = 0;
                  }
                  else
                  {
                     _loc37_ = 1;
                  }
                  _loc38_ = null;
                  _loc39_ = param3.name_24.next;
                  while(_loc39_ != null)
                  {
                     _loc40_ = _loc39_;
                     if(_loc37_ == _loc40_.hash)
                     {
                        _loc38_ = _loc40_;
                        break;
                     }
                     _loc39_ = _loc39_.next;
                  }
                  if(_loc38_ == null)
                  {
                     if(ZPP_Contact.var_72 == null)
                     {
                        _loc38_ = new ZPP_Contact();
                     }
                     else
                     {
                        _loc38_ = ZPP_Contact.var_72;
                        ZPP_Contact.var_72 = _loc38_.next;
                        _loc38_.next = null;
                     }
                     null;
                     _loc41_ = _loc38_.name_4;
                     _loc42_ = 0;
                     _loc41_.var_208 = _loc42_;
                     _loc41_.var_142 = _loc42_;
                     _loc38_.hash = _loc37_;
                     _loc38_.name_23 = true;
                     _loc38_.name_20 = param3;
                     param3.var_170 = 0;
                     _loc39_ = param3.name_24;
                     _loc38_.var_120 = true;
                     _loc40_ = _loc38_;
                     _loc40_.next = _loc39_.next;
                     _loc39_.next = _loc40_;
                     _loc39_.name_2 = true;
                     _loc39_.length = _loc39_.length + 1;
                     _loc38_;
                     param3.var_268.add(_loc41_);
                  }
                  else
                  {
                     _loc38_.name_23 = false;
                  }
                  _loc38_.var_344 = _loc23_ - _loc12_.var_92 * _loc35_ * 0.5;
                  _loc38_.var_348 = _loc24_ - _loc12_.var_91 * _loc35_ * 0.5;
                  param3.nx = _loc32_;
                  param3.ny = _loc33_;
                  _loc38_.var_334 = _loc35_;
                  _loc38_.var_114 = param3.var_114;
                  _loc38_.var_300 = _loc35_ > 0;
                  _loc36_ = _loc38_;
                  _loc42_ = 1;
                  _loc23_ = Number(_loc23_ - _loc18_.body.var_95 * _loc42_);
                  _loc24_ = Number(_loc24_ - _loc18_.body.var_96 * _loc42_);
                  _loc36_.name_4.lr1x = Number(_loc23_ * _loc18_.body.var_83 + _loc24_ * _loc18_.body.var_84);
                  _loc36_.name_4.lr1y = _loc24_ * _loc18_.body.var_83 - _loc23_ * _loc18_.body.var_84;
                  if(_loc8_ == 1)
                  {
                     param3.__ref_edge1 = _loc12_;
                     param3.__ref_edge2 = _loc19_;
                  }
                  else
                  {
                     param3.__ref_edge2 = _loc12_;
                     param3.__ref_edge1 = _loc19_;
                  }
                  return true;
               }
               return false;
            }
            _loc6_ = -1.0e100;
            _loc7_ = -1.0e100;
            _loc5_ = true;
            _loc9_ = null;
            _loc14_ = null;
            _loc15_ = param2.name_6.var_107.next;
            _loc11_ = param2.name_6.name_11.var_73;
            while(_loc11_ != null)
            {
               _loc10_ = _loc11_.var_74;
               _loc13_ = Number(_loc10_.var_92 * param1.var_102.var_99 + _loc10_.var_91 * param1.var_102.var_100 - _loc10_.gprojection - param1.var_102.radius);
               if(_loc13_ > 0)
               {
                  _loc5_ = false;
                  break;
               }
               if(_loc13_ > _loc6_)
               {
                  _loc6_ = Number(_loc13_);
                  _loc9_ = _loc10_;
                  _loc14_ = _loc15_;
               }
               _loc15_ = _loc15_.next;
               _loc11_ = _loc11_.next;
            }
            if(_loc5_)
            {
               _loc43_ = _loc14_;
               if(_loc14_.next == null)
               {
                  _loc44_ = param2.name_6.var_107.next;
               }
               else
               {
                  _loc44_ = _loc14_.next;
               }
               _loc13_ = Number(param1.var_102.var_100 * _loc9_.var_92 - param1.var_102.var_99 * _loc9_.var_91);
               if(_loc13_ <= _loc43_.y * _loc9_.var_92 - _loc43_.x * _loc9_.var_91)
               {
                  _loc16_ = Number(param1.var_102.radius);
                  _loc21_ = 0;
                  _loc22_ = 0;
                  _loc21_ = Number(_loc43_.x - param1.var_102.var_99);
                  _loc22_ = Number(_loc43_.y - param1.var_102.var_100);
                  _loc23_ = Number(Number(_loc21_ * _loc21_ + _loc22_ * _loc22_));
                  if(_loc23_ > _loc16_ * _loc16_)
                  {
                     _loc36_ = null;
                  }
                  else if(_loc23_ < class_238.name_8 * class_238.name_8)
                  {
                     _loc45_ = false;
                     _loc38_ = null;
                     _loc39_ = param3.name_24.next;
                     while(_loc39_ != null)
                     {
                        _loc40_ = _loc39_;
                        if(0 == _loc40_.hash)
                        {
                           _loc38_ = _loc40_;
                           break;
                        }
                        _loc39_ = _loc39_.next;
                     }
                     if(_loc38_ == null)
                     {
                        if(ZPP_Contact.var_72 == null)
                        {
                           _loc38_ = new ZPP_Contact();
                        }
                        else
                        {
                           _loc38_ = ZPP_Contact.var_72;
                           ZPP_Contact.var_72 = _loc38_.next;
                           _loc38_.next = null;
                        }
                        null;
                        _loc41_ = _loc38_.name_4;
                        _loc24_ = 0;
                        _loc41_.var_208 = _loc24_;
                        _loc41_.var_142 = _loc24_;
                        _loc38_.hash = 0;
                        _loc38_.name_23 = true;
                        _loc38_.name_20 = param3;
                        param3.var_170 = 0;
                        _loc39_ = param3.name_24;
                        _loc38_.var_120 = true;
                        _loc40_ = _loc38_;
                        _loc40_.next = _loc39_.next;
                        _loc39_.next = _loc40_;
                        _loc39_.name_2 = true;
                        _loc39_.length = _loc39_.length + 1;
                        _loc38_;
                        param3.var_268.add(_loc41_);
                     }
                     else
                     {
                        _loc38_.name_23 = false;
                     }
                     _loc38_.var_344 = param1.var_102.var_99;
                     _loc38_.var_348 = param1.var_102.var_100;
                     param3.nx = 1;
                     param3.ny = 0;
                     _loc38_.var_334 = -_loc16_;
                     _loc38_.var_114 = param3.var_114;
                     _loc38_.var_300 = _loc45_;
                     _loc36_ = _loc38_;
                  }
                  else
                  {
                     sf32(_loc23_,0);
                     _loc8_ = 1597463007 - (li32(0) >> 1);
                     si32(_loc8_,0);
                     _loc25_ = Number(lf32(0));
                     _loc24_ = Number(_loc25_ * (1.5 - 0.5 * _loc23_ * _loc25_ * _loc25_));
                     if(_loc24_ < class_238.name_8)
                     {
                        _loc25_ = 1.0e100;
                     }
                     else
                     {
                        _loc25_ = Number(1 / _loc24_);
                     }
                     _loc26_ = Number(Number(0.5 + (param1.var_102.radius - 0.5 * _loc16_) * _loc24_));
                     if(param4)
                     {
                        _loc45_ = false;
                        _loc38_ = null;
                        _loc39_ = param3.name_24.next;
                        while(_loc39_ != null)
                        {
                           _loc40_ = _loc39_;
                           if(0 == _loc40_.hash)
                           {
                              _loc38_ = _loc40_;
                              break;
                           }
                           _loc39_ = _loc39_.next;
                        }
                        if(_loc38_ == null)
                        {
                           if(ZPP_Contact.var_72 == null)
                           {
                              _loc38_ = new ZPP_Contact();
                           }
                           else
                           {
                              _loc38_ = ZPP_Contact.var_72;
                              ZPP_Contact.var_72 = _loc38_.next;
                              _loc38_.next = null;
                           }
                           null;
                           _loc41_ = _loc38_.name_4;
                           _loc27_ = 0;
                           _loc41_.var_208 = _loc27_;
                           _loc41_.var_142 = _loc27_;
                           _loc38_.hash = 0;
                           _loc38_.name_23 = true;
                           _loc38_.name_20 = param3;
                           param3.var_170 = 0;
                           _loc39_ = param3.name_24;
                           _loc38_.var_120 = true;
                           _loc40_ = _loc38_;
                           _loc40_.next = _loc39_.next;
                           _loc39_.next = _loc40_;
                           _loc39_.name_2 = true;
                           _loc39_.length = _loc39_.length + 1;
                           _loc38_;
                           param3.var_268.add(_loc41_);
                        }
                        else
                        {
                           _loc38_.name_23 = false;
                        }
                        _loc38_.var_344 = Number(param1.var_102.var_99 + _loc21_ * _loc26_);
                        _loc38_.var_348 = Number(param1.var_102.var_100 + _loc22_ * _loc26_);
                        param3.nx = -_loc21_ * _loc24_;
                        param3.ny = -_loc22_ * _loc24_;
                        _loc38_.var_334 = _loc25_ - _loc16_;
                        _loc38_.var_114 = param3.var_114;
                        _loc38_.var_300 = _loc45_;
                        _loc36_ = _loc38_;
                     }
                     else
                     {
                        _loc45_ = false;
                        _loc38_ = null;
                        _loc39_ = param3.name_24.next;
                        while(_loc39_ != null)
                        {
                           _loc40_ = _loc39_;
                           if(0 == _loc40_.hash)
                           {
                              _loc38_ = _loc40_;
                              break;
                           }
                           _loc39_ = _loc39_.next;
                        }
                        if(_loc38_ == null)
                        {
                           if(ZPP_Contact.var_72 == null)
                           {
                              _loc38_ = new ZPP_Contact();
                           }
                           else
                           {
                              _loc38_ = ZPP_Contact.var_72;
                              ZPP_Contact.var_72 = _loc38_.next;
                              _loc38_.next = null;
                           }
                           null;
                           _loc41_ = _loc38_.name_4;
                           _loc27_ = 0;
                           _loc41_.var_208 = _loc27_;
                           _loc41_.var_142 = _loc27_;
                           _loc38_.hash = 0;
                           _loc38_.name_23 = true;
                           _loc38_.name_20 = param3;
                           param3.var_170 = 0;
                           _loc39_ = param3.name_24;
                           _loc38_.var_120 = true;
                           _loc40_ = _loc38_;
                           _loc40_.next = _loc39_.next;
                           _loc39_.next = _loc40_;
                           _loc39_.name_2 = true;
                           _loc39_.length = _loc39_.length + 1;
                           _loc38_;
                           param3.var_268.add(_loc41_);
                        }
                        else
                        {
                           _loc38_.name_23 = false;
                        }
                        _loc38_.var_344 = Number(param1.var_102.var_99 + _loc21_ * _loc26_);
                        _loc38_.var_348 = Number(param1.var_102.var_100 + _loc22_ * _loc26_);
                        param3.nx = _loc21_ * _loc24_;
                        param3.ny = _loc22_ * _loc24_;
                        _loc38_.var_334 = _loc25_ - _loc16_;
                        _loc38_.var_114 = param3.var_114;
                        _loc38_.var_300 = _loc45_;
                        _loc36_ = _loc38_;
                     }
                  }
                  if(_loc36_ != null)
                  {
                     _loc41_ = _loc36_.name_4;
                     param3.var_605 = 2;
                     _loc16_ = 0;
                     _loc21_ = 0;
                     _loc16_ = Number(_loc43_.x - param2.name_6.body.var_95);
                     _loc21_ = Number(_loc43_.y - param2.name_6.body.var_96);
                     param3.__ref_edge1 = _loc9_;
                     param3.var_746 = -1;
                     if(param4)
                     {
                        _loc41_.lr1x = Number(_loc16_ * param2.name_6.body.var_83 + _loc21_ * param2.name_6.body.var_84);
                        _loc41_.lr1y = _loc21_ * param2.name_6.body.var_83 - _loc16_ * param2.name_6.body.var_84;
                        _loc41_.lr2x = param1.var_102.var_82;
                        _loc41_.lr2y = param1.var_102.var_81;
                     }
                     else
                     {
                        _loc41_.lr2x = Number(_loc16_ * param2.name_6.body.var_83 + _loc21_ * param2.name_6.body.var_84);
                        _loc41_.lr2y = _loc21_ * param2.name_6.body.var_83 - _loc16_ * param2.name_6.body.var_84;
                        _loc41_.lr1x = param1.var_102.var_82;
                        _loc41_.lr1y = param1.var_102.var_81;
                     }
                     param3.radius = param1.var_102.radius;
                  }
                  return _loc36_ != null;
               }
               if(_loc13_ >= _loc44_.y * _loc9_.var_92 - _loc44_.x * _loc9_.var_91)
               {
                  _loc16_ = Number(param1.var_102.radius);
                  _loc21_ = 0;
                  _loc22_ = 0;
                  _loc21_ = Number(_loc44_.x - param1.var_102.var_99);
                  _loc22_ = Number(_loc44_.y - param1.var_102.var_100);
                  _loc23_ = Number(Number(_loc21_ * _loc21_ + _loc22_ * _loc22_));
                  if(_loc23_ > _loc16_ * _loc16_)
                  {
                     _loc36_ = null;
                  }
                  else if(_loc23_ < class_238.name_8 * class_238.name_8)
                  {
                     _loc45_ = false;
                     _loc38_ = null;
                     _loc39_ = param3.name_24.next;
                     while(_loc39_ != null)
                     {
                        _loc40_ = _loc39_;
                        if(0 == _loc40_.hash)
                        {
                           _loc38_ = _loc40_;
                           break;
                        }
                        _loc39_ = _loc39_.next;
                     }
                     if(_loc38_ == null)
                     {
                        if(ZPP_Contact.var_72 == null)
                        {
                           _loc38_ = new ZPP_Contact();
                        }
                        else
                        {
                           _loc38_ = ZPP_Contact.var_72;
                           ZPP_Contact.var_72 = _loc38_.next;
                           _loc38_.next = null;
                        }
                        null;
                        _loc41_ = _loc38_.name_4;
                        _loc24_ = 0;
                        _loc41_.var_208 = _loc24_;
                        _loc41_.var_142 = _loc24_;
                        _loc38_.hash = 0;
                        _loc38_.name_23 = true;
                        _loc38_.name_20 = param3;
                        param3.var_170 = 0;
                        _loc39_ = param3.name_24;
                        _loc38_.var_120 = true;
                        _loc40_ = _loc38_;
                        _loc40_.next = _loc39_.next;
                        _loc39_.next = _loc40_;
                        _loc39_.name_2 = true;
                        _loc39_.length = _loc39_.length + 1;
                        _loc38_;
                        param3.var_268.add(_loc41_);
                     }
                     else
                     {
                        _loc38_.name_23 = false;
                     }
                     _loc38_.var_344 = param1.var_102.var_99;
                     _loc38_.var_348 = param1.var_102.var_100;
                     param3.nx = 1;
                     param3.ny = 0;
                     _loc38_.var_334 = -_loc16_;
                     _loc38_.var_114 = param3.var_114;
                     _loc38_.var_300 = _loc45_;
                     _loc36_ = _loc38_;
                  }
                  else
                  {
                     sf32(_loc23_,0);
                     _loc8_ = 1597463007 - (li32(0) >> 1);
                     si32(_loc8_,0);
                     _loc25_ = Number(lf32(0));
                     _loc24_ = Number(_loc25_ * (1.5 - 0.5 * _loc23_ * _loc25_ * _loc25_));
                     if(_loc24_ < class_238.name_8)
                     {
                        _loc25_ = 1.0e100;
                     }
                     else
                     {
                        _loc25_ = Number(1 / _loc24_);
                     }
                     _loc26_ = Number(Number(0.5 + (param1.var_102.radius - 0.5 * _loc16_) * _loc24_));
                     if(param4)
                     {
                        _loc45_ = false;
                        _loc38_ = null;
                        _loc39_ = param3.name_24.next;
                        while(_loc39_ != null)
                        {
                           _loc40_ = _loc39_;
                           if(0 == _loc40_.hash)
                           {
                              _loc38_ = _loc40_;
                              break;
                           }
                           _loc39_ = _loc39_.next;
                        }
                        if(_loc38_ == null)
                        {
                           if(ZPP_Contact.var_72 == null)
                           {
                              _loc38_ = new ZPP_Contact();
                           }
                           else
                           {
                              _loc38_ = ZPP_Contact.var_72;
                              ZPP_Contact.var_72 = _loc38_.next;
                              _loc38_.next = null;
                           }
                           null;
                           _loc41_ = _loc38_.name_4;
                           _loc27_ = 0;
                           _loc41_.var_208 = _loc27_;
                           _loc41_.var_142 = _loc27_;
                           _loc38_.hash = 0;
                           _loc38_.name_23 = true;
                           _loc38_.name_20 = param3;
                           param3.var_170 = 0;
                           _loc39_ = param3.name_24;
                           _loc38_.var_120 = true;
                           _loc40_ = _loc38_;
                           _loc40_.next = _loc39_.next;
                           _loc39_.next = _loc40_;
                           _loc39_.name_2 = true;
                           _loc39_.length = _loc39_.length + 1;
                           _loc38_;
                           param3.var_268.add(_loc41_);
                        }
                        else
                        {
                           _loc38_.name_23 = false;
                        }
                        _loc38_.var_344 = Number(param1.var_102.var_99 + _loc21_ * _loc26_);
                        _loc38_.var_348 = Number(param1.var_102.var_100 + _loc22_ * _loc26_);
                        param3.nx = -_loc21_ * _loc24_;
                        param3.ny = -_loc22_ * _loc24_;
                        _loc38_.var_334 = _loc25_ - _loc16_;
                        _loc38_.var_114 = param3.var_114;
                        _loc38_.var_300 = _loc45_;
                        _loc36_ = _loc38_;
                     }
                     else
                     {
                        _loc45_ = false;
                        _loc38_ = null;
                        _loc39_ = param3.name_24.next;
                        while(_loc39_ != null)
                        {
                           _loc40_ = _loc39_;
                           if(0 == _loc40_.hash)
                           {
                              _loc38_ = _loc40_;
                              break;
                           }
                           _loc39_ = _loc39_.next;
                        }
                        if(_loc38_ == null)
                        {
                           if(ZPP_Contact.var_72 == null)
                           {
                              _loc38_ = new ZPP_Contact();
                           }
                           else
                           {
                              _loc38_ = ZPP_Contact.var_72;
                              ZPP_Contact.var_72 = _loc38_.next;
                              _loc38_.next = null;
                           }
                           null;
                           _loc41_ = _loc38_.name_4;
                           _loc27_ = 0;
                           _loc41_.var_208 = _loc27_;
                           _loc41_.var_142 = _loc27_;
                           _loc38_.hash = 0;
                           _loc38_.name_23 = true;
                           _loc38_.name_20 = param3;
                           param3.var_170 = 0;
                           _loc39_ = param3.name_24;
                           _loc38_.var_120 = true;
                           _loc40_ = _loc38_;
                           _loc40_.next = _loc39_.next;
                           _loc39_.next = _loc40_;
                           _loc39_.name_2 = true;
                           _loc39_.length = _loc39_.length + 1;
                           _loc38_;
                           param3.var_268.add(_loc41_);
                        }
                        else
                        {
                           _loc38_.name_23 = false;
                        }
                        _loc38_.var_344 = Number(param1.var_102.var_99 + _loc21_ * _loc26_);
                        _loc38_.var_348 = Number(param1.var_102.var_100 + _loc22_ * _loc26_);
                        param3.nx = _loc21_ * _loc24_;
                        param3.ny = _loc22_ * _loc24_;
                        _loc38_.var_334 = _loc25_ - _loc16_;
                        _loc38_.var_114 = param3.var_114;
                        _loc38_.var_300 = _loc45_;
                        _loc36_ = _loc38_;
                     }
                  }
                  if(_loc36_ != null)
                  {
                     _loc41_ = _loc36_.name_4;
                     param3.var_605 = 2;
                     _loc16_ = 0;
                     _loc21_ = 0;
                     _loc16_ = Number(_loc44_.x - param2.name_6.body.var_95);
                     _loc21_ = Number(_loc44_.y - param2.name_6.body.var_96);
                     param3.__ref_edge1 = _loc9_;
                     param3.var_746 = 1;
                     if(param4)
                     {
                        _loc41_.lr1x = Number(_loc16_ * param2.name_6.body.var_83 + _loc21_ * param2.name_6.body.var_84);
                        _loc41_.lr1y = _loc21_ * param2.name_6.body.var_83 - _loc16_ * param2.name_6.body.var_84;
                        _loc41_.lr2x = param1.var_102.var_82;
                        _loc41_.lr2y = param1.var_102.var_81;
                     }
                     else
                     {
                        _loc41_.lr2x = Number(_loc16_ * param2.name_6.body.var_83 + _loc21_ * param2.name_6.body.var_84);
                        _loc41_.lr2y = _loc21_ * param2.name_6.body.var_83 - _loc16_ * param2.name_6.body.var_84;
                        _loc41_.lr1x = param1.var_102.var_82;
                        _loc41_.lr1y = param1.var_102.var_81;
                     }
                     param3.radius = param1.var_102.radius;
                  }
                  return _loc36_ != null;
               }
               _loc16_ = 0;
               _loc21_ = 0;
               _loc22_ = Number(Number(param1.var_102.radius + _loc6_ * 0.5));
               _loc16_ = Number(_loc9_.var_92 * _loc22_);
               _loc21_ = Number(_loc9_.var_91 * _loc22_);
               _loc22_ = 0;
               _loc23_ = 0;
               _loc22_ = Number(param1.var_102.var_99 - _loc16_);
               _loc23_ = Number(param1.var_102.var_100 - _loc21_);
               if(param4)
               {
                  _loc45_ = false;
                  _loc38_ = null;
                  _loc39_ = param3.name_24.next;
                  while(_loc39_ != null)
                  {
                     _loc40_ = _loc39_;
                     if(0 == _loc40_.hash)
                     {
                        _loc38_ = _loc40_;
                        break;
                     }
                     _loc39_ = _loc39_.next;
                  }
                  if(_loc38_ == null)
                  {
                     if(ZPP_Contact.var_72 == null)
                     {
                        _loc38_ = new ZPP_Contact();
                     }
                     else
                     {
                        _loc38_ = ZPP_Contact.var_72;
                        ZPP_Contact.var_72 = _loc38_.next;
                        _loc38_.next = null;
                     }
                     null;
                     _loc41_ = _loc38_.name_4;
                     _loc24_ = 0;
                     _loc41_.var_208 = _loc24_;
                     _loc41_.var_142 = _loc24_;
                     _loc38_.hash = 0;
                     _loc38_.name_23 = true;
                     _loc38_.name_20 = param3;
                     param3.var_170 = 0;
                     _loc39_ = param3.name_24;
                     _loc38_.var_120 = true;
                     _loc40_ = _loc38_;
                     _loc40_.next = _loc39_.next;
                     _loc39_.next = _loc40_;
                     _loc39_.name_2 = true;
                     _loc39_.length = _loc39_.length + 1;
                     _loc38_;
                     param3.var_268.add(_loc41_);
                  }
                  else
                  {
                     _loc38_.name_23 = false;
                  }
                  _loc38_.var_344 = _loc22_;
                  _loc38_.var_348 = _loc23_;
                  param3.nx = _loc9_.var_92;
                  param3.ny = _loc9_.var_91;
                  _loc38_.var_334 = _loc6_;
                  _loc38_.var_114 = param3.var_114;
                  _loc38_.var_300 = _loc45_;
                  _loc36_ = _loc38_;
               }
               else
               {
                  _loc45_ = false;
                  _loc38_ = null;
                  _loc39_ = param3.name_24.next;
                  while(_loc39_ != null)
                  {
                     _loc40_ = _loc39_;
                     if(0 == _loc40_.hash)
                     {
                        _loc38_ = _loc40_;
                        break;
                     }
                     _loc39_ = _loc39_.next;
                  }
                  if(_loc38_ == null)
                  {
                     if(ZPP_Contact.var_72 == null)
                     {
                        _loc38_ = new ZPP_Contact();
                     }
                     else
                     {
                        _loc38_ = ZPP_Contact.var_72;
                        ZPP_Contact.var_72 = _loc38_.next;
                        _loc38_.next = null;
                     }
                     null;
                     _loc41_ = _loc38_.name_4;
                     _loc24_ = 0;
                     _loc41_.var_208 = _loc24_;
                     _loc41_.var_142 = _loc24_;
                     _loc38_.hash = 0;
                     _loc38_.name_23 = true;
                     _loc38_.name_20 = param3;
                     param3.var_170 = 0;
                     _loc39_ = param3.name_24;
                     _loc38_.var_120 = true;
                     _loc40_ = _loc38_;
                     _loc40_.next = _loc39_.next;
                     _loc39_.next = _loc40_;
                     _loc39_.name_2 = true;
                     _loc39_.length = _loc39_.length + 1;
                     _loc38_;
                     param3.var_268.add(_loc41_);
                  }
                  else
                  {
                     _loc38_.name_23 = false;
                  }
                  _loc38_.var_344 = _loc22_;
                  _loc38_.var_348 = _loc23_;
                  param3.nx = -_loc9_.var_92;
                  param3.ny = -_loc9_.var_91;
                  _loc38_.var_334 = _loc6_;
                  _loc38_.var_114 = param3.var_114;
                  _loc38_.var_300 = _loc45_;
                  _loc36_ = _loc38_;
               }
               if(param4)
               {
                  param3.var_605 = 0;
               }
               else
               {
                  param3.var_605 = 1;
               }
               param3.var_122 = _loc9_.var_122;
               param3.var_121 = _loc9_.var_121;
               param3.var_642 = !param4;
               param3.var_786 = _loc9_.var_165;
               param3.radius = param1.var_102.radius;
               _loc36_.name_4.lr1x = param1.var_102.var_82;
               _loc36_.name_4.lr1y = param1.var_102.var_81;
               param3.__ref_edge1 = _loc9_;
               param3.var_746 = 0;
               return true;
            }
            return false;
         }
         _loc6_ = Number(Number(param1.var_102.radius + param2.var_102.radius));
         _loc7_ = 0;
         _loc13_ = 0;
         _loc7_ = Number(param2.var_102.var_99 - param1.var_102.var_99);
         _loc13_ = Number(param2.var_102.var_100 - param1.var_102.var_100);
         _loc16_ = Number(Number(_loc7_ * _loc7_ + _loc13_ * _loc13_));
         if(_loc16_ > _loc6_ * _loc6_)
         {
            _loc36_ = null;
         }
         else if(_loc16_ < class_238.name_8 * class_238.name_8)
         {
            _loc5_ = false;
            _loc38_ = null;
            _loc39_ = param3.name_24.next;
            while(_loc39_ != null)
            {
               _loc40_ = _loc39_;
               if(0 == _loc40_.hash)
               {
                  _loc38_ = _loc40_;
                  break;
               }
               _loc39_ = _loc39_.next;
            }
            if(_loc38_ == null)
            {
               if(ZPP_Contact.var_72 == null)
               {
                  _loc38_ = new ZPP_Contact();
               }
               else
               {
                  _loc38_ = ZPP_Contact.var_72;
                  ZPP_Contact.var_72 = _loc38_.next;
                  _loc38_.next = null;
               }
               null;
               _loc41_ = _loc38_.name_4;
               _loc21_ = 0;
               _loc41_.var_208 = _loc21_;
               _loc41_.var_142 = _loc21_;
               _loc38_.hash = 0;
               _loc38_.name_23 = true;
               _loc38_.name_20 = param3;
               param3.var_170 = 0;
               _loc39_ = param3.name_24;
               _loc38_.var_120 = true;
               _loc40_ = _loc38_;
               _loc40_.next = _loc39_.next;
               _loc39_.next = _loc40_;
               _loc39_.name_2 = true;
               _loc39_.length = _loc39_.length + 1;
               _loc38_;
               param3.var_268.add(_loc41_);
            }
            else
            {
               _loc38_.name_23 = false;
            }
            _loc38_.var_344 = param1.var_102.var_99;
            _loc38_.var_348 = param1.var_102.var_100;
            param3.nx = 1;
            param3.ny = 0;
            _loc38_.var_334 = -_loc6_;
            _loc38_.var_114 = param3.var_114;
            _loc38_.var_300 = _loc5_;
            _loc36_ = _loc38_;
         }
         else
         {
            sf32(_loc16_,0);
            _loc8_ = 1597463007 - (li32(0) >> 1);
            si32(_loc8_,0);
            _loc22_ = Number(lf32(0));
            _loc21_ = Number(_loc22_ * (1.5 - 0.5 * _loc16_ * _loc22_ * _loc22_));
            if(_loc21_ < class_238.name_8)
            {
               _loc22_ = 1.0e100;
            }
            else
            {
               _loc22_ = Number(1 / _loc21_);
            }
            _loc23_ = Number(Number(0.5 + (param1.var_102.radius - 0.5 * _loc6_) * _loc21_));
            if(param4)
            {
               _loc5_ = false;
               _loc38_ = null;
               _loc39_ = param3.name_24.next;
               while(_loc39_ != null)
               {
                  _loc40_ = _loc39_;
                  if(0 == _loc40_.hash)
                  {
                     _loc38_ = _loc40_;
                     break;
                  }
                  _loc39_ = _loc39_.next;
               }
               if(_loc38_ == null)
               {
                  if(ZPP_Contact.var_72 == null)
                  {
                     _loc38_ = new ZPP_Contact();
                  }
                  else
                  {
                     _loc38_ = ZPP_Contact.var_72;
                     ZPP_Contact.var_72 = _loc38_.next;
                     _loc38_.next = null;
                  }
                  null;
                  _loc41_ = _loc38_.name_4;
                  _loc24_ = 0;
                  _loc41_.var_208 = _loc24_;
                  _loc41_.var_142 = _loc24_;
                  _loc38_.hash = 0;
                  _loc38_.name_23 = true;
                  _loc38_.name_20 = param3;
                  param3.var_170 = 0;
                  _loc39_ = param3.name_24;
                  _loc38_.var_120 = true;
                  _loc40_ = _loc38_;
                  _loc40_.next = _loc39_.next;
                  _loc39_.next = _loc40_;
                  _loc39_.name_2 = true;
                  _loc39_.length = _loc39_.length + 1;
                  _loc38_;
                  param3.var_268.add(_loc41_);
               }
               else
               {
                  _loc38_.name_23 = false;
               }
               _loc38_.var_344 = Number(param1.var_102.var_99 + _loc7_ * _loc23_);
               _loc38_.var_348 = Number(param1.var_102.var_100 + _loc13_ * _loc23_);
               param3.nx = -_loc7_ * _loc21_;
               param3.ny = -_loc13_ * _loc21_;
               _loc38_.var_334 = _loc22_ - _loc6_;
               _loc38_.var_114 = param3.var_114;
               _loc38_.var_300 = _loc5_;
               _loc36_ = _loc38_;
            }
            else
            {
               _loc5_ = false;
               _loc38_ = null;
               _loc39_ = param3.name_24.next;
               while(_loc39_ != null)
               {
                  _loc40_ = _loc39_;
                  if(0 == _loc40_.hash)
                  {
                     _loc38_ = _loc40_;
                     break;
                  }
                  _loc39_ = _loc39_.next;
               }
               if(_loc38_ == null)
               {
                  if(ZPP_Contact.var_72 == null)
                  {
                     _loc38_ = new ZPP_Contact();
                  }
                  else
                  {
                     _loc38_ = ZPP_Contact.var_72;
                     ZPP_Contact.var_72 = _loc38_.next;
                     _loc38_.next = null;
                  }
                  null;
                  _loc41_ = _loc38_.name_4;
                  _loc24_ = 0;
                  _loc41_.var_208 = _loc24_;
                  _loc41_.var_142 = _loc24_;
                  _loc38_.hash = 0;
                  _loc38_.name_23 = true;
                  _loc38_.name_20 = param3;
                  param3.var_170 = 0;
                  _loc39_ = param3.name_24;
                  _loc38_.var_120 = true;
                  _loc40_ = _loc38_;
                  _loc40_.next = _loc39_.next;
                  _loc39_.next = _loc40_;
                  _loc39_.name_2 = true;
                  _loc39_.length = _loc39_.length + 1;
                  _loc38_;
                  param3.var_268.add(_loc41_);
               }
               else
               {
                  _loc38_.name_23 = false;
               }
               _loc38_.var_344 = Number(param1.var_102.var_99 + _loc7_ * _loc23_);
               _loc38_.var_348 = Number(param1.var_102.var_100 + _loc13_ * _loc23_);
               param3.nx = _loc7_ * _loc21_;
               param3.ny = _loc13_ * _loc21_;
               _loc38_.var_334 = _loc22_ - _loc6_;
               _loc38_.var_114 = param3.var_114;
               _loc38_.var_300 = _loc5_;
               _loc36_ = _loc38_;
            }
         }
         if(_loc36_ != null)
         {
            _loc41_ = _loc36_.name_4;
            if(param4)
            {
               _loc41_.lr1x = param2.var_102.var_82;
               _loc41_.lr1y = param2.var_102.var_81;
               _loc41_.lr2x = param1.var_102.var_82;
               _loc41_.lr2y = param1.var_102.var_81;
            }
            else
            {
               _loc41_.lr1x = param1.var_102.var_82;
               _loc41_.lr1y = param1.var_102.var_81;
               _loc41_.lr2x = param2.var_102.var_82;
               _loc41_.lr2y = param2.var_102.var_81;
            }
            param3.radius = Number(param1.var_102.radius + param2.var_102.radius);
            param3.var_605 = 2;
            return true;
         }
         return false;
      }
      
      public static function method_133(param1:ZPP_Shape, param2:ZPP_Shape) : Boolean
      {
         var _loc3_:* = null as ZPP_Shape;
         if(param2.type == class_223.var_131)
         {
            _loc3_ = param1;
            param1 = param2;
            param2 = _loc3_;
         }
         return Boolean(class_239.method_530(param1,param2));
      }
      
      public static function method_530(param1:ZPP_Shape, param2:ZPP_Shape) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:* = null as ZNPNode_ZPP_Edge;
         var _loc5_:* = null as ZPP_Edge;
         var _loc6_:* = NaN;
         var _loc7_:* = null as ZPP_Vec2;
         var _loc8_:* = null as ZPP_Vec2;
         var _loc9_:* = NaN;
         var _loc10_:* = null as ZPP_Edge;
         var _loc11_:* = null as ZPP_Vec2;
         var _loc12_:* = null as ZPP_Vec2;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:Number = NaN;
         if(param2.type == class_223.var_155)
         {
            if(param1.type == class_223.var_155)
            {
               _loc3_ = true;
               _loc4_ = param1.name_6.name_11.var_73;
               while(_loc4_ != null)
               {
                  _loc5_ = _loc4_.var_74;
                  _loc6_ = 1.0e100;
                  _loc7_ = param2.name_6.var_107.next;
                  while(_loc7_ != null)
                  {
                     _loc8_ = _loc7_;
                     _loc9_ = Number(Number(_loc5_.var_92 * _loc8_.x + _loc5_.var_91 * _loc8_.y));
                     if(_loc9_ < _loc6_)
                     {
                        _loc6_ = Number(_loc9_);
                     }
                     _loc7_ = _loc7_.next;
                  }
                  _loc6_ = Number(_loc6_ - _loc5_.gprojection);
                  if(_loc6_ > 0)
                  {
                     _loc3_ = false;
                     break;
                  }
                  _loc4_ = _loc4_.next;
               }
               if(_loc3_)
               {
                  _loc4_ = param2.name_6.name_11.var_73;
                  while(_loc4_ != null)
                  {
                     _loc5_ = _loc4_.var_74;
                     _loc6_ = 1.0e100;
                     _loc7_ = param1.name_6.var_107.next;
                     while(_loc7_ != null)
                     {
                        _loc8_ = _loc7_;
                        _loc9_ = Number(Number(_loc5_.var_92 * _loc8_.x + _loc5_.var_91 * _loc8_.y));
                        if(_loc9_ < _loc6_)
                        {
                           _loc6_ = Number(_loc9_);
                        }
                        _loc7_ = _loc7_.next;
                     }
                     _loc6_ = Number(_loc6_ - _loc5_.gprojection);
                     if(_loc6_ > 0)
                     {
                        _loc3_ = false;
                        break;
                     }
                     _loc4_ = _loc4_.next;
                  }
                  return _loc3_;
               }
               return false;
            }
            _loc5_ = null;
            _loc7_ = null;
            _loc3_ = true;
            _loc6_ = -1.0e100;
            _loc8_ = param2.name_6.var_107.next;
            _loc4_ = param2.name_6.name_11.var_73;
            while(_loc4_ != null)
            {
               _loc10_ = _loc4_.var_74;
               _loc9_ = Number(_loc10_.var_92 * param1.var_102.var_99 + _loc10_.var_91 * param1.var_102.var_100 - _loc10_.gprojection - param1.var_102.radius);
               if(_loc9_ > 0)
               {
                  _loc3_ = false;
                  break;
               }
               if(_loc9_ > _loc6_)
               {
                  _loc6_ = Number(_loc9_);
                  _loc5_ = _loc10_;
                  _loc7_ = _loc8_;
               }
               _loc8_ = _loc8_.next;
               _loc4_ = _loc4_.next;
            }
            if(_loc3_)
            {
               _loc11_ = _loc7_;
               if(_loc7_.next == null)
               {
                  _loc12_ = param2.name_6.var_107.next;
               }
               else
               {
                  _loc12_ = _loc7_.next;
               }
               _loc9_ = Number(param1.var_102.var_100 * _loc5_.var_92 - param1.var_102.var_99 * _loc5_.var_91);
               if(_loc9_ <= _loc11_.y * _loc5_.var_92 - _loc11_.x * _loc5_.var_91)
               {
                  _loc13_ = Number(param1.var_102.radius);
                  _loc14_ = 0;
                  _loc15_ = 0;
                  _loc14_ = Number(_loc11_.x - param1.var_102.var_99);
                  _loc15_ = Number(_loc11_.y - param1.var_102.var_100);
                  _loc16_ = Number(_loc14_ * _loc14_ + _loc15_ * _loc15_);
                  return _loc16_ <= _loc13_ * _loc13_;
               }
               if(_loc9_ >= _loc12_.y * _loc5_.var_92 - _loc12_.x * _loc5_.var_91)
               {
                  _loc13_ = Number(param1.var_102.radius);
                  _loc14_ = 0;
                  _loc15_ = 0;
                  _loc14_ = Number(_loc12_.x - param1.var_102.var_99);
                  _loc15_ = Number(_loc12_.y - param1.var_102.var_100);
                  _loc16_ = Number(_loc14_ * _loc14_ + _loc15_ * _loc15_);
                  return _loc16_ <= _loc13_ * _loc13_;
               }
               return true;
            }
            return false;
         }
         _loc6_ = Number(Number(param1.var_102.radius + param2.var_102.radius));
         _loc9_ = 0;
         _loc13_ = 0;
         _loc9_ = Number(param2.var_102.var_99 - param1.var_102.var_99);
         _loc13_ = Number(param2.var_102.var_100 - param1.var_102.var_100);
         _loc14_ = Number(Number(_loc9_ * _loc9_ + _loc13_ * _loc13_));
         return _loc14_ <= _loc6_ * _loc6_;
      }
      
      public static function method_696(param1:ZPP_Shape, param2:ZPP_Shape, param3:ZPP_FluidArbiter) : Boolean
      {
         var _loc4_:* = null as Array;
         var _loc5_:* = null as Array;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = false;
         var _loc8_:* = null as ZNPNode_ZPP_Edge;
         var _loc9_:* = null as ZPP_Edge;
         var _loc10_:* = NaN;
         var _loc11_:int = 0;
         var _loc12_:* = null as ZPP_Vec2;
         var _loc13_:* = null as ZPP_Vec2;
         var _loc14_:* = NaN;
         var _loc15_:* = null as ZPP_Polygon;
         var _loc16_:* = null as ZPP_Polygon;
         var _loc17_:* = null as ZPP_Vec2;
         var _loc18_:* = null as ZPP_Vec2;
         var _loc19_:* = null as ZPP_Vec2;
         var _loc20_:* = null as ZPP_Body;
         var _loc21_:* = false;
         var _loc22_:int = 0;
         var _loc23_:int = 0;
         var _loc24_:int = 0;
         var _loc25_:* = 0;
         var _loc26_:* = false;
         var _loc27_:* = null as ZPP_Vec2;
         var _loc28_:* = null as ZPP_Vec2;
         var _loc29_:Boolean = false;
         var _loc30_:* = null as ZPP_Vec2;
         var _loc31_:* = null as ZPP_Vec2;
         var _loc32_:* = null as ZPP_Vec2;
         var _loc33_:* = null as ZPP_Vec2;
         var _loc34_:* = NaN;
         var _loc35_:* = NaN;
         var _loc36_:* = NaN;
         var _loc37_:* = NaN;
         var _loc38_:* = NaN;
         var _loc39_:* = NaN;
         var _loc40_:* = NaN;
         var _loc41_:* = NaN;
         var _loc42_:* = NaN;
         var _loc43_:* = null as ZPP_Vec2;
         var _loc44_:* = null as ZNPNode_ZPP_Vec2;
         var _loc45_:* = null as ZPP_Edge;
         var _loc46_:* = NaN;
         var _loc47_:* = null as ZPP_Vec2;
         var _loc48_:* = NaN;
         var _loc49_:* = NaN;
         var _loc50_:Number = NaN;
         var _loc51_:Number = NaN;
         var _loc52_:Number = NaN;
         var _loc53_:Number = NaN;
         var _loc54_:* = null as ZPP_Circle;
         var _loc55_:* = null as ZPP_Circle;
         if(param2.type == class_223.var_155)
         {
            if(param1.type == class_223.var_155)
            {
               _loc4_ = [];
               _loc5_ = [];
               _loc6_ = true;
               _loc7_ = true;
               _loc8_ = param1.name_6.name_11.var_73;
               while(_loc8_ != null)
               {
                  _loc9_ = _loc8_.var_74;
                  _loc10_ = 1.0e100;
                  _loc11_ = 0;
                  _loc12_ = param2.name_6.var_107.next;
                  while(_loc12_ != null)
                  {
                     _loc13_ = _loc12_;
                     _loc14_ = Number(Number(_loc9_.var_92 * _loc13_.x + _loc9_.var_91 * _loc13_.y));
                     if(_loc14_ < _loc10_)
                     {
                        _loc10_ = Number(_loc14_);
                     }
                     if(_loc14_ >= Number(_loc9_.gprojection + class_238.name_8))
                     {
                        _loc5_[_loc11_] = true;
                        _loc7_ = false;
                     }
                     _loc11_++;
                     _loc12_ = _loc12_.next;
                  }
                  _loc10_ = Number(_loc10_ - _loc9_.gprojection);
                  if(_loc10_ > 0)
                  {
                     _loc6_ = false;
                     break;
                  }
                  _loc8_ = _loc8_.next;
               }
               if(_loc7_)
               {
                  _loc15_ = param2.name_6;
                  if(_loc15_.var_139)
                  {
                     if(_loc15_.body != null)
                     {
                        _loc15_.var_139 = false;
                        if(_loc15_.var_140)
                        {
                           _loc15_.var_140 = false;
                           if(_loc15_.type == class_223.var_155)
                           {
                              _loc16_ = _loc15_.name_6;
                              if(_loc16_.var_88.next.next == null)
                              {
                                 _loc16_.var_82 = _loc16_.var_88.next.x;
                                 _loc16_.var_81 = _loc16_.var_88.next.y;
                                 null;
                              }
                              else if(_loc16_.var_88.next.next.next == null)
                              {
                                 _loc16_.var_82 = _loc16_.var_88.next.x;
                                 _loc16_.var_81 = _loc16_.var_88.next.y;
                                 _loc10_ = 1;
                                 _loc16_.var_82 = Number(_loc16_.var_82 + _loc16_.var_88.next.next.x * _loc10_);
                                 _loc16_.var_81 = Number(_loc16_.var_81 + _loc16_.var_88.next.next.y * _loc10_);
                                 _loc10_ = 0.5;
                                 _loc16_.var_82 = _loc16_.var_82 * _loc10_;
                                 _loc16_.var_81 = _loc16_.var_81 * _loc10_;
                              }
                              else
                              {
                                 _loc16_.var_82 = 0;
                                 _loc16_.var_81 = 0;
                                 _loc10_ = 0;
                                 _loc12_ = _loc16_.var_88.next;
                                 _loc13_ = _loc12_;
                                 _loc12_ = _loc12_.next;
                                 _loc17_ = _loc12_;
                                 _loc12_ = _loc12_.next;
                                 while(_loc12_ != null)
                                 {
                                    _loc18_ = _loc12_;
                                    _loc10_ = Number(Number(_loc10_ + _loc17_.x * (_loc18_.y - _loc13_.y)));
                                    _loc14_ = Number(_loc18_.y * _loc17_.x - _loc18_.x * _loc17_.y);
                                    _loc16_.var_82 = Number(_loc16_.var_82 + (_loc17_.x + _loc18_.x) * _loc14_);
                                    _loc16_.var_81 = Number(_loc16_.var_81 + (_loc17_.y + _loc18_.y) * _loc14_);
                                    _loc13_ = _loc17_;
                                    _loc17_ = _loc18_;
                                    _loc12_ = _loc12_.next;
                                 }
                                 _loc12_ = _loc16_.var_88.next;
                                 _loc18_ = _loc12_;
                                 _loc10_ = Number(Number(_loc10_ + _loc17_.x * (_loc18_.y - _loc13_.y)));
                                 _loc14_ = Number(_loc18_.y * _loc17_.x - _loc18_.x * _loc17_.y);
                                 _loc16_.var_82 = Number(_loc16_.var_82 + (_loc17_.x + _loc18_.x) * _loc14_);
                                 _loc16_.var_81 = Number(_loc16_.var_81 + (_loc17_.y + _loc18_.y) * _loc14_);
                                 _loc13_ = _loc17_;
                                 _loc17_ = _loc18_;
                                 _loc12_ = _loc12_.next;
                                 _loc19_ = _loc12_;
                                 _loc10_ = Number(Number(_loc10_ + _loc17_.x * (_loc19_.y - _loc13_.y)));
                                 _loc14_ = Number(_loc19_.y * _loc17_.x - _loc19_.x * _loc17_.y);
                                 _loc16_.var_82 = Number(_loc16_.var_82 + (_loc17_.x + _loc19_.x) * _loc14_);
                                 _loc16_.var_81 = Number(_loc16_.var_81 + (_loc17_.y + _loc19_.y) * _loc14_);
                                 _loc10_ = Number(1 / (3 * _loc10_));
                                 _loc14_ = Number(_loc10_);
                                 _loc16_.var_82 = _loc16_.var_82 * _loc14_;
                                 _loc16_.var_81 = _loc16_.var_81 * _loc14_;
                              }
                           }
                           if(_loc15_.var_115 != null)
                           {
                              _loc15_.var_115.zpp_inner.x = _loc15_.var_82;
                              _loc15_.var_115.zpp_inner.y = _loc15_.var_81;
                           }
                        }
                        _loc20_ = _loc15_.body;
                        if(_loc20_.var_113)
                        {
                           _loc20_.var_113 = false;
                           _loc20_.var_84 = Number(Math.sin(_loc20_.var_93));
                           _loc20_.var_83 = Number(Math.cos(_loc20_.var_93));
                           null;
                        }
                        _loc15_.var_99 = Number(_loc15_.body.var_95 + (_loc15_.body.var_83 * _loc15_.var_82 - _loc15_.body.var_84 * _loc15_.var_81));
                        _loc15_.var_100 = Number(_loc15_.body.var_96 + (Number(_loc15_.var_82 * _loc15_.body.var_84 + _loc15_.var_81 * _loc15_.body.var_83)));
                     }
                  }
                  param3.name_42 = param2.name_6.area;
                  param3.var_331 = param2.name_6.var_99;
                  param3.var_336 = param2.name_6.var_100;
                  null;
                  return true;
               }
               if(_loc6_)
               {
                  _loc7_ = true;
                  _loc8_ = param2.name_6.name_11.var_73;
                  while(_loc8_ != null)
                  {
                     _loc9_ = _loc8_.var_74;
                     _loc10_ = 1.0e100;
                     _loc11_ = 0;
                     _loc12_ = param1.name_6.var_107.next;
                     while(_loc12_ != null)
                     {
                        _loc13_ = _loc12_;
                        _loc14_ = Number(Number(_loc9_.var_92 * _loc13_.x + _loc9_.var_91 * _loc13_.y));
                        if(_loc14_ < _loc10_)
                        {
                           _loc10_ = Number(_loc14_);
                        }
                        if(_loc14_ >= Number(_loc9_.gprojection + class_238.name_8))
                        {
                           _loc4_[_loc11_] = true;
                           _loc7_ = false;
                        }
                        _loc11_++;
                        _loc12_ = _loc12_.next;
                     }
                     _loc10_ = Number(_loc10_ - _loc9_.gprojection);
                     if(_loc10_ > 0)
                     {
                        _loc6_ = false;
                        break;
                     }
                     _loc8_ = _loc8_.next;
                  }
                  if(_loc7_)
                  {
                     _loc15_ = param1.name_6;
                     if(_loc15_.var_139)
                     {
                        if(_loc15_.body != null)
                        {
                           _loc15_.var_139 = false;
                           if(_loc15_.var_140)
                           {
                              _loc15_.var_140 = false;
                              if(_loc15_.type == class_223.var_155)
                              {
                                 _loc16_ = _loc15_.name_6;
                                 if(_loc16_.var_88.next.next == null)
                                 {
                                    _loc16_.var_82 = _loc16_.var_88.next.x;
                                    _loc16_.var_81 = _loc16_.var_88.next.y;
                                    null;
                                 }
                                 else if(_loc16_.var_88.next.next.next == null)
                                 {
                                    _loc16_.var_82 = _loc16_.var_88.next.x;
                                    _loc16_.var_81 = _loc16_.var_88.next.y;
                                    _loc10_ = 1;
                                    _loc16_.var_82 = Number(_loc16_.var_82 + _loc16_.var_88.next.next.x * _loc10_);
                                    _loc16_.var_81 = Number(_loc16_.var_81 + _loc16_.var_88.next.next.y * _loc10_);
                                    _loc10_ = 0.5;
                                    _loc16_.var_82 = _loc16_.var_82 * _loc10_;
                                    _loc16_.var_81 = _loc16_.var_81 * _loc10_;
                                 }
                                 else
                                 {
                                    _loc16_.var_82 = 0;
                                    _loc16_.var_81 = 0;
                                    _loc10_ = 0;
                                    _loc12_ = _loc16_.var_88.next;
                                    _loc13_ = _loc12_;
                                    _loc12_ = _loc12_.next;
                                    _loc17_ = _loc12_;
                                    _loc12_ = _loc12_.next;
                                    while(_loc12_ != null)
                                    {
                                       _loc18_ = _loc12_;
                                       _loc10_ = Number(Number(_loc10_ + _loc17_.x * (_loc18_.y - _loc13_.y)));
                                       _loc14_ = Number(_loc18_.y * _loc17_.x - _loc18_.x * _loc17_.y);
                                       _loc16_.var_82 = Number(_loc16_.var_82 + (_loc17_.x + _loc18_.x) * _loc14_);
                                       _loc16_.var_81 = Number(_loc16_.var_81 + (_loc17_.y + _loc18_.y) * _loc14_);
                                       _loc13_ = _loc17_;
                                       _loc17_ = _loc18_;
                                       _loc12_ = _loc12_.next;
                                    }
                                    _loc12_ = _loc16_.var_88.next;
                                    _loc18_ = _loc12_;
                                    _loc10_ = Number(Number(_loc10_ + _loc17_.x * (_loc18_.y - _loc13_.y)));
                                    _loc14_ = Number(_loc18_.y * _loc17_.x - _loc18_.x * _loc17_.y);
                                    _loc16_.var_82 = Number(_loc16_.var_82 + (_loc17_.x + _loc18_.x) * _loc14_);
                                    _loc16_.var_81 = Number(_loc16_.var_81 + (_loc17_.y + _loc18_.y) * _loc14_);
                                    _loc13_ = _loc17_;
                                    _loc17_ = _loc18_;
                                    _loc12_ = _loc12_.next;
                                    _loc19_ = _loc12_;
                                    _loc10_ = Number(Number(_loc10_ + _loc17_.x * (_loc19_.y - _loc13_.y)));
                                    _loc14_ = Number(_loc19_.y * _loc17_.x - _loc19_.x * _loc17_.y);
                                    _loc16_.var_82 = Number(_loc16_.var_82 + (_loc17_.x + _loc19_.x) * _loc14_);
                                    _loc16_.var_81 = Number(_loc16_.var_81 + (_loc17_.y + _loc19_.y) * _loc14_);
                                    _loc10_ = Number(1 / (3 * _loc10_));
                                    _loc14_ = Number(_loc10_);
                                    _loc16_.var_82 = _loc16_.var_82 * _loc14_;
                                    _loc16_.var_81 = _loc16_.var_81 * _loc14_;
                                 }
                              }
                              if(_loc15_.var_115 != null)
                              {
                                 _loc15_.var_115.zpp_inner.x = _loc15_.var_82;
                                 _loc15_.var_115.zpp_inner.y = _loc15_.var_81;
                              }
                           }
                           _loc20_ = _loc15_.body;
                           if(_loc20_.var_113)
                           {
                              _loc20_.var_113 = false;
                              _loc20_.var_84 = Number(Math.sin(_loc20_.var_93));
                              _loc20_.var_83 = Number(Math.cos(_loc20_.var_93));
                              null;
                           }
                           _loc15_.var_99 = Number(_loc15_.body.var_95 + (_loc15_.body.var_83 * _loc15_.var_82 - _loc15_.body.var_84 * _loc15_.var_81));
                           _loc15_.var_100 = Number(_loc15_.body.var_96 + (Number(_loc15_.var_82 * _loc15_.body.var_84 + _loc15_.var_81 * _loc15_.body.var_83)));
                        }
                     }
                     param3.name_42 = param1.name_6.area;
                     param3.var_331 = param1.name_6.var_99;
                     param3.var_336 = param1.name_6.var_100;
                     null;
                     return true;
                  }
                  if(_loc6_)
                  {
                     while(class_239.var_192.var_73 != null)
                     {
                        _loc12_ = class_239.var_192.method_105();
                        if(!_loc12_.var_120)
                        {
                           _loc13_ = _loc12_;
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
                        }
                     }
                     _loc12_ = null;
                     _loc21_ = false;
                     _loc13_ = param1.name_6.var_107.next;
                     _loc11_ = 0;
                     _loc17_ = param2.name_6.var_107.next;
                     _loc22_ = 0;
                     _loc23_ = 0;
                     _loc24_ = param2.name_6.var_255;
                     while(_loc23_ < _loc24_)
                     {
                        _loc23_++;
                        _loc25_ = int(_loc23_);
                        if(!_loc5_[_loc25_])
                        {
                           _loc22_ = _loc25_;
                           break;
                        }
                        _loc17_ = _loc17_.next;
                     }
                     if(_loc17_ == null)
                     {
                        _loc17_ = param2.name_6.var_107.next;
                        _loc21_ = true;
                        _loc23_ = 0;
                        _loc24_ = param1.name_6.var_255;
                        while(_loc23_ < _loc24_)
                        {
                           _loc23_++;
                           _loc25_ = int(_loc23_);
                           if(!_loc4_[_loc25_])
                           {
                              _loc11_ = _loc25_;
                              break;
                           }
                           _loc13_ = _loc13_.next;
                        }
                        if(_loc13_ == null)
                        {
                           _loc13_ = param1.name_6.var_107.next;
                        }
                        else
                        {
                           class_239.var_192.add(_loc13_);
                           _loc12_ = class_239.var_192.var_73.var_74;
                        }
                     }
                     else
                     {
                        class_239.var_192.add(_loc17_);
                        _loc12_ = class_239.var_192.var_73.var_74;
                     }
                     _loc23_ = 1;
                     if(class_239.var_192.var_73 == null)
                     {
                        _loc26_ = true;
                        _loc18_ = param1.name_6.var_107.next;
                        _loc19_ = _loc18_;
                        _loc27_ = _loc18_.next;
                        while(_loc27_ != null)
                        {
                           _loc28_ = _loc27_;
                           _loc10_ = 2;
                           _loc29_ = true;
                           _loc30_ = param2.name_6.var_107.next;
                           _loc31_ = _loc30_;
                           _loc32_ = _loc30_.next;
                           while(_loc32_ != null)
                           {
                              _loc33_ = _loc32_;
                              _loc14_ = 0;
                              _loc34_ = 0;
                              _loc35_ = 0;
                              _loc34_ = Number(_loc19_.x - _loc31_.x);
                              _loc35_ = Number(_loc19_.y - _loc31_.y);
                              _loc36_ = 0;
                              _loc37_ = 0;
                              _loc36_ = Number(_loc28_.x - _loc19_.x);
                              _loc37_ = Number(_loc28_.y - _loc19_.y);
                              _loc38_ = 0;
                              _loc39_ = 0;
                              _loc38_ = Number(_loc33_.x - _loc31_.x);
                              _loc39_ = Number(_loc33_.y - _loc31_.y);
                              _loc40_ = Number(_loc37_ * _loc38_ - _loc36_ * _loc39_);
                              if(_loc40_ * _loc40_ > class_238.name_8 * class_238.name_8)
                              {
                                 _loc40_ = Number(1 / _loc40_);
                                 _loc41_ = Number((_loc39_ * _loc34_ - _loc38_ * _loc35_) * _loc40_);
                                 if(_loc41_ > class_238.name_8 && _loc41_ < 1 - class_238.name_8)
                                 {
                                    _loc42_ = Number((_loc37_ * _loc34_ - _loc36_ * _loc35_) * _loc40_);
                                    if(_loc42_ > class_238.name_8 && _loc42_ < 1 - class_238.name_8)
                                    {
                                       _loc14_ = Number(_loc41_);
                                       §§push(true);
                                    }
                                    else
                                    {
                                       §§push(false);
                                    }
                                 }
                                 else
                                 {
                                    §§push(false);
                                 }
                              }
                              else
                              {
                                 §§push(false);
                              }
                              if(_loc14_ < _loc10_)
                              {
                                 _loc10_ = Number(_loc14_);
                                 _loc17_ = _loc30_;
                              }
                              _loc30_ = _loc32_;
                              _loc31_ = _loc33_;
                              _loc32_ = _loc32_.next;
                           }
                           if(_loc29_)
                           {
                              _loc32_ = param2.name_6.var_107.next;
                              _loc33_ = _loc32_;
                              _loc14_ = 0;
                              _loc34_ = 0;
                              _loc35_ = 0;
                              _loc34_ = Number(_loc19_.x - _loc31_.x);
                              _loc35_ = Number(_loc19_.y - _loc31_.y);
                              _loc36_ = 0;
                              _loc37_ = 0;
                              _loc36_ = Number(_loc28_.x - _loc19_.x);
                              _loc37_ = Number(_loc28_.y - _loc19_.y);
                              _loc38_ = 0;
                              _loc39_ = 0;
                              _loc38_ = Number(_loc33_.x - _loc31_.x);
                              _loc39_ = Number(_loc33_.y - _loc31_.y);
                              _loc40_ = Number(_loc37_ * _loc38_ - _loc36_ * _loc39_);
                              if(_loc40_ * _loc40_ > class_238.name_8 * class_238.name_8)
                              {
                                 _loc40_ = Number(1 / _loc40_);
                                 _loc41_ = Number((_loc39_ * _loc34_ - _loc38_ * _loc35_) * _loc40_);
                                 if(_loc41_ > class_238.name_8 && _loc41_ < 1 - class_238.name_8)
                                 {
                                    _loc42_ = Number((_loc37_ * _loc34_ - _loc36_ * _loc35_) * _loc40_);
                                    if(_loc42_ > class_238.name_8 && _loc42_ < 1 - class_238.name_8)
                                    {
                                       _loc14_ = Number(_loc41_);
                                       §§push(true);
                                    }
                                    else
                                    {
                                       §§push(false);
                                    }
                                 }
                                 else
                                 {
                                    §§push(false);
                                 }
                              }
                              else
                              {
                                 §§push(false);
                              }
                              if(_loc14_ < _loc10_)
                              {
                                 _loc10_ = Number(_loc14_);
                                 _loc17_ = _loc30_;
                              }
                           }
                           if(_loc10_ != 2)
                           {
                              _loc14_ = 0;
                              _loc34_ = 0;
                              _loc35_ = Number(_loc10_);
                              _loc14_ = Number(Number(_loc19_.x + (_loc28_.x - _loc19_.x) * _loc35_));
                              _loc34_ = Number(Number(_loc19_.y + (_loc28_.y - _loc19_.y) * _loc35_));
                              _loc29_ = false;
                              if(ZPP_Vec2.var_72 == null)
                              {
                                 _loc30_ = new ZPP_Vec2();
                              }
                              else
                              {
                                 _loc30_ = ZPP_Vec2.var_72;
                                 ZPP_Vec2.var_72 = _loc30_.next;
                                 _loc30_.next = null;
                              }
                              _loc30_.name_5 = false;
                              _loc30_.var_109 = _loc29_;
                              _loc30_.x = _loc14_;
                              _loc30_.y = _loc34_;
                              _loc12_ = _loc30_;
                              class_239.var_192.add(_loc12_);
                              _loc21_ = true;
                              _loc13_ = _loc18_;
                              _loc26_ = false;
                              break;
                           }
                           _loc18_ = _loc27_;
                           _loc19_ = _loc28_;
                           _loc27_ = _loc27_.next;
                        }
                        if(_loc26_)
                        {
                           _loc27_ = param1.name_6.var_107.next;
                           _loc28_ = _loc27_;
                           _loc10_ = 2;
                           _loc29_ = true;
                           _loc30_ = param2.name_6.var_107.next;
                           _loc31_ = _loc30_;
                           _loc32_ = _loc30_.next;
                           while(_loc32_ != null)
                           {
                              _loc33_ = _loc32_;
                              _loc14_ = 0;
                              _loc34_ = 0;
                              _loc35_ = 0;
                              _loc34_ = Number(_loc19_.x - _loc31_.x);
                              _loc35_ = Number(_loc19_.y - _loc31_.y);
                              _loc36_ = 0;
                              _loc37_ = 0;
                              _loc36_ = Number(_loc28_.x - _loc19_.x);
                              _loc37_ = Number(_loc28_.y - _loc19_.y);
                              _loc38_ = 0;
                              _loc39_ = 0;
                              _loc38_ = Number(_loc33_.x - _loc31_.x);
                              _loc39_ = Number(_loc33_.y - _loc31_.y);
                              _loc40_ = Number(_loc37_ * _loc38_ - _loc36_ * _loc39_);
                              if(_loc40_ * _loc40_ > class_238.name_8 * class_238.name_8)
                              {
                                 _loc40_ = Number(1 / _loc40_);
                                 _loc41_ = Number((_loc39_ * _loc34_ - _loc38_ * _loc35_) * _loc40_);
                                 if(_loc41_ > class_238.name_8 && _loc41_ < 1 - class_238.name_8)
                                 {
                                    _loc42_ = Number((_loc37_ * _loc34_ - _loc36_ * _loc35_) * _loc40_);
                                    if(_loc42_ > class_238.name_8 && _loc42_ < 1 - class_238.name_8)
                                    {
                                       _loc14_ = Number(_loc41_);
                                       §§push(true);
                                    }
                                    else
                                    {
                                       §§push(false);
                                    }
                                 }
                                 else
                                 {
                                    §§push(false);
                                 }
                              }
                              else
                              {
                                 §§push(false);
                              }
                              if(_loc14_ < _loc10_)
                              {
                                 _loc10_ = Number(_loc14_);
                                 _loc17_ = _loc30_;
                              }
                              _loc30_ = _loc32_;
                              _loc31_ = _loc33_;
                              _loc32_ = _loc32_.next;
                           }
                           if(_loc29_)
                           {
                              _loc32_ = param2.name_6.var_107.next;
                              _loc33_ = _loc32_;
                              _loc14_ = 0;
                              _loc34_ = 0;
                              _loc35_ = 0;
                              _loc34_ = Number(_loc19_.x - _loc31_.x);
                              _loc35_ = Number(_loc19_.y - _loc31_.y);
                              _loc36_ = 0;
                              _loc37_ = 0;
                              _loc36_ = Number(_loc28_.x - _loc19_.x);
                              _loc37_ = Number(_loc28_.y - _loc19_.y);
                              _loc38_ = 0;
                              _loc39_ = 0;
                              _loc38_ = Number(_loc33_.x - _loc31_.x);
                              _loc39_ = Number(_loc33_.y - _loc31_.y);
                              _loc40_ = Number(_loc37_ * _loc38_ - _loc36_ * _loc39_);
                              if(_loc40_ * _loc40_ > class_238.name_8 * class_238.name_8)
                              {
                                 _loc40_ = Number(1 / _loc40_);
                                 _loc41_ = Number((_loc39_ * _loc34_ - _loc38_ * _loc35_) * _loc40_);
                                 if(_loc41_ > class_238.name_8 && _loc41_ < 1 - class_238.name_8)
                                 {
                                    _loc42_ = Number((_loc37_ * _loc34_ - _loc36_ * _loc35_) * _loc40_);
                                    if(_loc42_ > class_238.name_8 && _loc42_ < 1 - class_238.name_8)
                                    {
                                       _loc14_ = Number(_loc41_);
                                       §§push(true);
                                    }
                                    else
                                    {
                                       §§push(false);
                                    }
                                 }
                                 else
                                 {
                                    §§push(false);
                                 }
                              }
                              else
                              {
                                 §§push(false);
                              }
                              if(_loc14_ < _loc10_)
                              {
                                 _loc10_ = Number(_loc14_);
                                 _loc17_ = _loc30_;
                              }
                           }
                           if(_loc10_ != 2)
                           {
                              _loc14_ = 0;
                              _loc34_ = 0;
                              _loc35_ = Number(_loc10_);
                              _loc14_ = Number(Number(_loc19_.x + (_loc28_.x - _loc19_.x) * _loc35_));
                              _loc34_ = Number(Number(_loc19_.y + (_loc28_.y - _loc19_.y) * _loc35_));
                              _loc29_ = false;
                              if(ZPP_Vec2.var_72 == null)
                              {
                                 _loc30_ = new ZPP_Vec2();
                              }
                              else
                              {
                                 _loc30_ = ZPP_Vec2.var_72;
                                 ZPP_Vec2.var_72 = _loc30_.next;
                                 _loc30_.next = null;
                              }
                              _loc30_.name_5 = false;
                              _loc30_.var_109 = _loc29_;
                              _loc30_.x = _loc14_;
                              _loc30_.y = _loc34_;
                              _loc12_ = _loc30_;
                              class_239.var_192.add(_loc12_);
                              _loc21_ = true;
                              _loc13_ = _loc18_;
                           }
                        }
                        _loc23_ = 2;
                     }
                     while(true)
                     {
                        if(_loc21_)
                        {
                           _loc13_ = _loc13_.next;
                           _loc11_++;
                           if(_loc13_ == null)
                           {
                              _loc13_ = param1.name_6.var_107.next;
                              _loc11_ = 0;
                           }
                           if(!_loc4_[_loc11_])
                           {
                              _loc18_ = _loc13_;
                              if(_loc12_ != null && Number(_loc10_ * _loc10_ + _loc14_ * _loc14_) < class_238.name_8)
                              {
                                 break;
                              }
                              class_239.var_192.add(_loc18_);
                              if(_loc12_ == null)
                              {
                                 _loc12_ = class_239.var_192.var_73.var_74;
                              }
                              _loc23_ = 1;
                              continue;
                           }
                           _loc18_ = class_239.var_192.var_73.var_74;
                           _loc19_ = _loc13_;
                           _loc27_ = _loc17_;
                           _loc28_ = _loc17_.next;
                           if(_loc28_ == null)
                           {
                              _loc28_ = param2.name_6.var_107.next;
                           }
                           _loc10_ = -1;
                           _loc30_ = null;
                           _loc24_ = 0;
                           _loc25_ = 0;
                           _loc31_ = _loc28_;
                           _loc32_ = _loc28_;
                           _loc33_ = _loc32_;
                           _loc14_ = 0;
                           _loc34_ = 0;
                           _loc35_ = 0;
                           _loc34_ = Number(_loc27_.x - _loc18_.x);
                           _loc35_ = Number(_loc27_.y - _loc18_.y);
                           _loc36_ = 0;
                           _loc37_ = 0;
                           _loc36_ = Number(_loc33_.x - _loc27_.x);
                           _loc37_ = Number(_loc33_.y - _loc27_.y);
                           _loc38_ = 0;
                           _loc39_ = 0;
                           _loc38_ = Number(_loc19_.x - _loc18_.x);
                           _loc39_ = Number(_loc19_.y - _loc18_.y);
                           _loc40_ = Number(_loc37_ * _loc38_ - _loc36_ * _loc39_);
                           if(_loc40_ * _loc40_ > class_238.name_8 * class_238.name_8)
                           {
                              _loc40_ = Number(1 / _loc40_);
                              _loc41_ = Number((_loc39_ * _loc34_ - _loc38_ * _loc35_) * _loc40_);
                              if(_loc41_ > class_238.name_8 && _loc41_ < 1 - class_238.name_8)
                              {
                                 _loc42_ = Number((_loc37_ * _loc34_ - _loc36_ * _loc35_) * _loc40_);
                                 if(_loc42_ > class_238.name_8 && _loc42_ < 1 - class_238.name_8)
                                 {
                                    _loc14_ = Number(_loc41_);
                                    §§push(true);
                                 }
                                 else
                                 {
                                    §§push(false);
                                 }
                              }
                              else
                              {
                                 §§push(false);
                              }
                           }
                           else
                           {
                              §§push(false);
                           }
                           if(_loc14_ >= _loc10_)
                           {
                              _loc30_ = _loc17_;
                              _loc24_ = _loc22_;
                              _loc25_++;
                              if(_loc25_ == _loc23_)
                              {
                                 _loc10_ = Number(_loc14_);
                                 _loc32_ = _loc31_;
                              }
                              else
                              {
                                 _loc10_ = Number(_loc14_);
                              }
                              addr3019:
                              while(_loc32_ != _loc31_)
                              {
                                 _loc33_ = _loc32_;
                                 _loc14_ = 0;
                                 _loc34_ = 0;
                                 _loc35_ = 0;
                                 _loc34_ = Number(_loc27_.x - _loc18_.x);
                                 _loc35_ = Number(_loc27_.y - _loc18_.y);
                                 _loc36_ = 0;
                                 _loc37_ = 0;
                                 _loc36_ = Number(_loc33_.x - _loc27_.x);
                                 _loc37_ = Number(_loc33_.y - _loc27_.y);
                                 _loc38_ = 0;
                                 _loc39_ = 0;
                                 _loc38_ = Number(_loc19_.x - _loc18_.x);
                                 _loc39_ = Number(_loc19_.y - _loc18_.y);
                                 _loc40_ = Number(_loc37_ * _loc38_ - _loc36_ * _loc39_);
                                 if(_loc40_ * _loc40_ > class_238.name_8 * class_238.name_8)
                                 {
                                    _loc40_ = Number(1 / _loc40_);
                                    _loc41_ = Number((_loc39_ * _loc34_ - _loc38_ * _loc35_) * _loc40_);
                                    if(_loc41_ > class_238.name_8 && _loc41_ < 1 - class_238.name_8)
                                    {
                                       _loc42_ = Number((_loc37_ * _loc34_ - _loc36_ * _loc35_) * _loc40_);
                                       if(_loc42_ > class_238.name_8 && _loc42_ < 1 - class_238.name_8)
                                       {
                                          _loc14_ = Number(_loc41_);
                                          §§push(true);
                                       }
                                       else
                                       {
                                          §§push(false);
                                       }
                                    }
                                    else
                                    {
                                       §§push(false);
                                    }
                                 }
                                 else
                                 {
                                    §§push(false);
                                 }
                                 if(_loc14_ >= _loc10_)
                                 {
                                    _loc30_ = _loc17_;
                                    _loc24_ = _loc22_;
                                    _loc25_++;
                                    if(_loc25_ == _loc23_)
                                    {
                                       _loc10_ = Number(_loc14_);
                                       _loc32_ = _loc31_;
                                       break;
                                    }
                                    _loc10_ = Number(_loc14_);
                                 }
                                 _loc27_ = _loc33_;
                                 _loc17_ = _loc32_;
                                 _loc22_++;
                                 if(_loc22_ >= param2.name_6.var_255)
                                 {
                                    _loc22_ = 0;
                                 }
                                 _loc32_ = _loc32_.next;
                                 if(_loc32_ == null)
                                 {
                                    _loc32_ = param2.name_6.var_107.next;
                                 }
                              }
                              if(_loc30_ == null)
                              {
                                 break;
                              }
                              _loc31_ = _loc30_;
                              _loc32_ = _loc30_.next;
                              if(_loc32_ == null)
                              {
                                 _loc32_ = param2.name_6.var_107.next;
                              }
                              _loc33_ = _loc32_;
                              _loc14_ = 0;
                              _loc34_ = 0;
                              _loc35_ = Number(_loc10_);
                              _loc14_ = Number(Number(_loc31_.x + (_loc33_.x - _loc31_.x) * _loc35_));
                              _loc34_ = Number(Number(_loc31_.y + (_loc33_.y - _loc31_.y) * _loc35_));
                              if(_loc12_ != null && Number(_loc35_ * _loc35_ + _loc36_ * _loc36_) < class_238.name_8)
                              {
                                 break;
                              }
                              _loc26_ = false;
                              §§push(class_239.var_192);
                              if(ZPP_Vec2.var_72 == null)
                              {
                                 _loc43_ = new ZPP_Vec2();
                              }
                              else
                              {
                                 _loc43_ = ZPP_Vec2.var_72;
                                 ZPP_Vec2.var_72 = _loc43_.next;
                                 _loc43_.next = null;
                              }
                              _loc43_.name_5 = false;
                              _loc43_.var_109 = _loc26_;
                              _loc43_.x = _loc14_;
                              _loc43_.y = _loc34_;
                              §§pop().add(_loc43_);
                              if(_loc12_ == null)
                              {
                                 _loc12_ = class_239.var_192.var_73.var_74;
                              }
                              _loc17_ = _loc30_;
                              _loc22_ = _loc24_;
                              _loc21_ = !_loc21_;
                              _loc23_ = 2;
                              continue;
                           }
                           _loc27_ = _loc33_;
                           _loc17_ = _loc32_;
                           _loc22_++;
                           if(_loc22_ >= param2.name_6.var_255)
                           {
                              _loc22_ = 0;
                           }
                           _loc32_ = _loc32_.next;
                           if(_loc32_ == null)
                           {
                              _loc32_ = param2.name_6.var_107.next;
                           }
                           §§goto(addr3019);
                        }
                        else
                        {
                           _loc17_ = _loc17_.next;
                           _loc22_++;
                           if(_loc17_ == null)
                           {
                              _loc17_ = param2.name_6.var_107.next;
                              _loc22_ = 0;
                           }
                           if(!_loc5_[_loc22_])
                           {
                              _loc18_ = _loc17_;
                              if(_loc12_ != null && Number(_loc10_ * _loc10_ + _loc14_ * _loc14_) < class_238.name_8)
                              {
                                 break;
                              }
                              class_239.var_192.add(_loc18_);
                              if(_loc12_ == null)
                              {
                                 _loc12_ = class_239.var_192.var_73.var_74;
                              }
                              _loc23_ = 1;
                              continue;
                           }
                           _loc18_ = class_239.var_192.var_73.var_74;
                           _loc19_ = _loc17_;
                           _loc27_ = _loc13_;
                           _loc28_ = _loc13_.next;
                           if(_loc28_ == null)
                           {
                              _loc28_ = param1.name_6.var_107.next;
                           }
                           _loc10_ = -1;
                           _loc30_ = null;
                           _loc24_ = 0;
                           _loc25_ = 0;
                           _loc31_ = _loc28_;
                           _loc32_ = _loc28_;
                           _loc33_ = _loc32_;
                           _loc14_ = 0;
                           _loc34_ = 0;
                           _loc35_ = 0;
                           _loc34_ = Number(_loc27_.x - _loc18_.x);
                           _loc35_ = Number(_loc27_.y - _loc18_.y);
                           _loc36_ = 0;
                           _loc37_ = 0;
                           _loc36_ = Number(_loc33_.x - _loc27_.x);
                           _loc37_ = Number(_loc33_.y - _loc27_.y);
                           _loc38_ = 0;
                           _loc39_ = 0;
                           _loc38_ = Number(_loc19_.x - _loc18_.x);
                           _loc39_ = Number(_loc19_.y - _loc18_.y);
                           _loc40_ = Number(_loc37_ * _loc38_ - _loc36_ * _loc39_);
                           if(_loc40_ * _loc40_ > class_238.name_8 * class_238.name_8)
                           {
                              _loc40_ = Number(1 / _loc40_);
                              _loc41_ = Number((_loc39_ * _loc34_ - _loc38_ * _loc35_) * _loc40_);
                              if(_loc41_ > class_238.name_8 && _loc41_ < 1 - class_238.name_8)
                              {
                                 _loc42_ = Number((_loc37_ * _loc34_ - _loc36_ * _loc35_) * _loc40_);
                                 if(_loc42_ > class_238.name_8 && _loc42_ < 1 - class_238.name_8)
                                 {
                                    _loc14_ = Number(_loc41_);
                                    §§push(true);
                                 }
                                 else
                                 {
                                    §§push(false);
                                 }
                              }
                              else
                              {
                                 §§push(false);
                              }
                           }
                           else
                           {
                              §§push(false);
                           }
                           if(_loc14_ >= _loc10_)
                           {
                              _loc30_ = _loc13_;
                              _loc24_ = _loc11_;
                              _loc25_++;
                              if(_loc25_ == _loc23_)
                              {
                                 _loc10_ = Number(_loc14_);
                                 _loc32_ = _loc31_;
                              }
                              else
                              {
                                 _loc10_ = Number(_loc14_);
                              }
                              addr3729:
                              while(_loc32_ != _loc31_)
                              {
                                 _loc33_ = _loc32_;
                                 _loc14_ = 0;
                                 _loc34_ = 0;
                                 _loc35_ = 0;
                                 _loc34_ = Number(_loc27_.x - _loc18_.x);
                                 _loc35_ = Number(_loc27_.y - _loc18_.y);
                                 _loc36_ = 0;
                                 _loc37_ = 0;
                                 _loc36_ = Number(_loc33_.x - _loc27_.x);
                                 _loc37_ = Number(_loc33_.y - _loc27_.y);
                                 _loc38_ = 0;
                                 _loc39_ = 0;
                                 _loc38_ = Number(_loc19_.x - _loc18_.x);
                                 _loc39_ = Number(_loc19_.y - _loc18_.y);
                                 _loc40_ = Number(_loc37_ * _loc38_ - _loc36_ * _loc39_);
                                 if(_loc40_ * _loc40_ > class_238.name_8 * class_238.name_8)
                                 {
                                    _loc40_ = Number(1 / _loc40_);
                                    _loc41_ = Number((_loc39_ * _loc34_ - _loc38_ * _loc35_) * _loc40_);
                                    if(_loc41_ > class_238.name_8 && _loc41_ < 1 - class_238.name_8)
                                    {
                                       _loc42_ = Number((_loc37_ * _loc34_ - _loc36_ * _loc35_) * _loc40_);
                                       if(_loc42_ > class_238.name_8 && _loc42_ < 1 - class_238.name_8)
                                       {
                                          _loc14_ = Number(_loc41_);
                                          §§push(true);
                                       }
                                       else
                                       {
                                          §§push(false);
                                       }
                                    }
                                    else
                                    {
                                       §§push(false);
                                    }
                                 }
                                 else
                                 {
                                    §§push(false);
                                 }
                                 if(_loc14_ >= _loc10_)
                                 {
                                    _loc30_ = _loc13_;
                                    _loc24_ = _loc11_;
                                    _loc25_++;
                                    if(_loc25_ == _loc23_)
                                    {
                                       _loc10_ = Number(_loc14_);
                                       _loc32_ = _loc31_;
                                       break;
                                    }
                                    _loc10_ = Number(_loc14_);
                                 }
                                 _loc27_ = _loc33_;
                                 _loc13_ = _loc32_;
                                 _loc11_++;
                                 if(_loc11_ >= param1.name_6.var_255)
                                 {
                                    _loc11_ = 0;
                                 }
                                 _loc32_ = _loc32_.next;
                                 if(_loc32_ == null)
                                 {
                                    _loc32_ = param1.name_6.var_107.next;
                                 }
                              }
                              if(_loc30_ == null)
                              {
                                 break;
                              }
                              _loc31_ = _loc30_;
                              _loc32_ = _loc30_.next;
                              if(_loc32_ == null)
                              {
                                 _loc32_ = param1.name_6.var_107.next;
                              }
                              _loc33_ = _loc32_;
                              _loc14_ = 0;
                              _loc34_ = 0;
                              _loc35_ = Number(_loc10_);
                              _loc14_ = Number(Number(_loc31_.x + (_loc33_.x - _loc31_.x) * _loc35_));
                              _loc34_ = Number(Number(_loc31_.y + (_loc33_.y - _loc31_.y) * _loc35_));
                              if(_loc12_ != null && Number(_loc35_ * _loc35_ + _loc36_ * _loc36_) < class_238.name_8)
                              {
                                 break;
                              }
                              _loc26_ = false;
                              §§push(class_239.var_192);
                              if(ZPP_Vec2.var_72 == null)
                              {
                                 _loc43_ = new ZPP_Vec2();
                              }
                              else
                              {
                                 _loc43_ = ZPP_Vec2.var_72;
                                 ZPP_Vec2.var_72 = _loc43_.next;
                                 _loc43_.next = null;
                              }
                              _loc43_.name_5 = false;
                              _loc43_.var_109 = _loc26_;
                              _loc43_.x = _loc14_;
                              _loc43_.y = _loc34_;
                              §§pop().add(_loc43_);
                              if(_loc12_ == null)
                              {
                                 _loc12_ = class_239.var_192.var_73.var_74;
                              }
                              _loc13_ = _loc30_;
                              _loc11_ = _loc24_;
                              _loc21_ = !_loc21_;
                              _loc23_ = 2;
                              continue;
                           }
                           _loc27_ = _loc33_;
                           _loc13_ = _loc32_;
                           _loc11_++;
                           if(_loc11_ >= param1.name_6.var_255)
                           {
                              _loc11_ = 0;
                           }
                           _loc32_ = _loc32_.next;
                           if(_loc32_ == null)
                           {
                              _loc32_ = param1.name_6.var_107.next;
                           }
                           §§goto(addr3729);
                        }
                     }
                     if(class_239.var_192.var_73 != null && class_239.var_192.var_73.next != null && class_239.var_192.var_73.next.next != null)
                     {
                        _loc10_ = 0;
                        _loc14_ = 0;
                        _loc34_ = 0;
                        _loc14_ = 0;
                        _loc34_ = 0;
                        _loc10_ = 0;
                        _loc44_ = class_239.var_192.var_73;
                        _loc18_ = _loc44_.var_74;
                        _loc44_ = _loc44_.next;
                        _loc19_ = _loc44_.var_74;
                        _loc44_ = _loc44_.next;
                        while(_loc44_ != null)
                        {
                           _loc27_ = _loc44_.var_74;
                           _loc10_ = Number(Number(_loc10_ + _loc19_.x * (_loc27_.y - _loc18_.y)));
                           _loc35_ = Number(_loc27_.y * _loc19_.x - _loc27_.x * _loc19_.y);
                           _loc14_ = Number(Number(_loc14_ + (_loc19_.x + _loc27_.x) * _loc35_));
                           _loc34_ = Number(Number(_loc34_ + (_loc19_.y + _loc27_.y) * _loc35_));
                           _loc18_ = _loc19_;
                           _loc19_ = _loc27_;
                           _loc44_ = _loc44_.next;
                        }
                        _loc44_ = class_239.var_192.var_73;
                        _loc27_ = _loc44_.var_74;
                        _loc10_ = Number(Number(_loc10_ + _loc19_.x * (_loc27_.y - _loc18_.y)));
                        _loc35_ = Number(_loc27_.y * _loc19_.x - _loc27_.x * _loc19_.y);
                        _loc14_ = Number(Number(_loc14_ + (_loc19_.x + _loc27_.x) * _loc35_));
                        _loc34_ = Number(Number(_loc34_ + (_loc19_.y + _loc27_.y) * _loc35_));
                        _loc18_ = _loc19_;
                        _loc19_ = _loc27_;
                        _loc44_ = _loc44_.next;
                        _loc28_ = _loc44_.var_74;
                        _loc10_ = Number(Number(_loc10_ + _loc19_.x * (_loc28_.y - _loc18_.y)));
                        _loc35_ = Number(_loc28_.y * _loc19_.x - _loc28_.x * _loc19_.y);
                        _loc14_ = Number(Number(_loc14_ + (_loc19_.x + _loc28_.x) * _loc35_));
                        _loc34_ = Number(Number(_loc34_ + (_loc19_.y + _loc28_.y) * _loc35_));
                        _loc10_ = Number(_loc10_ * 0.5);
                        _loc35_ = Number(1 / (6 * _loc10_));
                        _loc36_ = Number(_loc35_);
                        _loc14_ = Number(_loc14_ * _loc36_);
                        _loc34_ = Number(_loc34_ * _loc36_);
                        param3.name_42 = -_loc10_;
                        param3.var_331 = _loc14_;
                        param3.var_336 = _loc34_;
                        null;
                        return true;
                     }
                     return false;
                  }
                  return false;
               }
               return false;
            }
            _loc4_ = [];
            _loc6_ = true;
            _loc9_ = null;
            _loc12_ = null;
            _loc10_ = -1.0e100;
            _loc7_ = true;
            _loc13_ = param2.name_6.var_107.next;
            _loc11_ = 0;
            _loc8_ = param2.name_6.name_11.var_73;
            while(_loc8_ != null)
            {
               _loc45_ = _loc8_.var_74;
               _loc14_ = Number(Number(_loc45_.var_92 * param1.var_102.var_99 + _loc45_.var_91 * param1.var_102.var_100));
               if(_loc14_ > Number(_loc45_.gprojection + param1.var_102.radius))
               {
                  _loc7_ = false;
                  break;
               }
               if(Number(_loc14_ + param1.var_102.radius) > Number(_loc45_.gprojection + class_238.name_8))
               {
                  _loc6_ = false;
                  _loc4_[_loc11_] = true;
               }
               _loc14_ = Number(_loc14_ - (Number(_loc45_.gprojection + param1.var_102.radius)));
               if(_loc14_ > _loc10_)
               {
                  _loc10_ = Number(_loc14_);
                  _loc9_ = _loc45_;
                  _loc12_ = _loc13_;
               }
               _loc13_ = _loc13_.next;
               _loc11_++;
               _loc8_ = _loc8_.next;
            }
            if(_loc7_)
            {
               if(_loc6_)
               {
                  param3.name_42 = param1.var_102.area;
                  param3.var_331 = param1.var_102.var_99;
                  param3.var_336 = param1.var_102.var_100;
                  null;
                  return true;
               }
               _loc17_ = _loc12_;
               if(_loc12_.next == null)
               {
                  _loc18_ = param2.name_6.var_107.next;
               }
               else
               {
                  _loc18_ = _loc12_.next;
               }
               _loc14_ = Number(param1.var_102.var_100 * _loc9_.var_92 - param1.var_102.var_99 * _loc9_.var_91);
               if(_loc14_ <= _loc17_.y * _loc9_.var_92 - _loc17_.x * _loc9_.var_91)
               {
                  _loc34_ = Number(param1.var_102.radius);
                  _loc35_ = 0;
                  _loc36_ = 0;
                  _loc35_ = Number(_loc17_.x - param1.var_102.var_99);
                  _loc36_ = Number(_loc17_.y - param1.var_102.var_100);
                  _loc37_ = Number(Number(_loc35_ * _loc35_ + _loc36_ * _loc36_));
                  §§push(_loc37_ <= _loc34_ * _loc34_);
               }
               else if(_loc14_ >= _loc18_.y * _loc9_.var_92 - _loc18_.x * _loc9_.var_91)
               {
                  _loc34_ = Number(param1.var_102.radius);
                  _loc35_ = 0;
                  _loc36_ = 0;
                  _loc35_ = Number(_loc18_.x - param1.var_102.var_99);
                  _loc36_ = Number(_loc18_.y - param1.var_102.var_100);
                  _loc37_ = Number(Number(_loc35_ * _loc35_ + _loc36_ * _loc36_));
                  §§push(_loc37_ <= _loc34_ * _loc34_);
               }
               else
               {
                  §§push(true);
               }
               _loc5_ = [];
               _loc22_ = 0;
               _loc21_ = true;
               _loc19_ = null;
               _loc23_ = 0;
               _loc27_ = param2.name_6.var_107.next;
               while(_loc27_ != null)
               {
                  _loc28_ = _loc27_;
                  _loc35_ = 0;
                  _loc36_ = 0;
                  _loc35_ = Number(_loc28_.x - param1.var_102.var_99);
                  _loc36_ = Number(_loc28_.y - param1.var_102.var_100);
                  _loc34_ = Number(Number(_loc35_ * _loc35_ + _loc36_ * _loc36_));
                  _loc26_ = _loc34_ <= param1.var_102.radius * param1.var_102.radius;
                  _loc5_[_loc22_] = _loc26_;
                  if(!_loc26_)
                  {
                     _loc21_ = false;
                  }
                  else
                  {
                     _loc23_ = _loc22_;
                     _loc19_ = _loc27_;
                  }
                  _loc22_++;
                  _loc27_ = _loc27_.next;
               }
               if(_loc21_)
               {
                  _loc15_ = param2.name_6;
                  if(_loc15_.var_139)
                  {
                     if(_loc15_.body != null)
                     {
                        _loc15_.var_139 = false;
                        if(_loc15_.var_140)
                        {
                           _loc15_.var_140 = false;
                           if(_loc15_.type == class_223.var_155)
                           {
                              _loc16_ = _loc15_.name_6;
                              if(_loc16_.var_88.next.next == null)
                              {
                                 _loc16_.var_82 = _loc16_.var_88.next.x;
                                 _loc16_.var_81 = _loc16_.var_88.next.y;
                                 null;
                              }
                              else if(_loc16_.var_88.next.next.next == null)
                              {
                                 _loc16_.var_82 = _loc16_.var_88.next.x;
                                 _loc16_.var_81 = _loc16_.var_88.next.y;
                                 _loc34_ = 1;
                                 _loc16_.var_82 = Number(_loc16_.var_82 + _loc16_.var_88.next.next.x * _loc34_);
                                 _loc16_.var_81 = Number(_loc16_.var_81 + _loc16_.var_88.next.next.y * _loc34_);
                                 _loc34_ = 0.5;
                                 _loc16_.var_82 = _loc16_.var_82 * _loc34_;
                                 _loc16_.var_81 = _loc16_.var_81 * _loc34_;
                              }
                              else
                              {
                                 _loc16_.var_82 = 0;
                                 _loc16_.var_81 = 0;
                                 _loc34_ = 0;
                                 _loc27_ = _loc16_.var_88.next;
                                 _loc28_ = _loc27_;
                                 _loc27_ = _loc27_.next;
                                 _loc30_ = _loc27_;
                                 _loc27_ = _loc27_.next;
                                 while(_loc27_ != null)
                                 {
                                    _loc31_ = _loc27_;
                                    _loc34_ = Number(Number(_loc34_ + _loc30_.x * (_loc31_.y - _loc28_.y)));
                                    _loc35_ = Number(_loc31_.y * _loc30_.x - _loc31_.x * _loc30_.y);
                                    _loc16_.var_82 = Number(_loc16_.var_82 + (_loc30_.x + _loc31_.x) * _loc35_);
                                    _loc16_.var_81 = Number(_loc16_.var_81 + (_loc30_.y + _loc31_.y) * _loc35_);
                                    _loc28_ = _loc30_;
                                    _loc30_ = _loc31_;
                                    _loc27_ = _loc27_.next;
                                 }
                                 _loc27_ = _loc16_.var_88.next;
                                 _loc31_ = _loc27_;
                                 _loc34_ = Number(Number(_loc34_ + _loc30_.x * (_loc31_.y - _loc28_.y)));
                                 _loc35_ = Number(_loc31_.y * _loc30_.x - _loc31_.x * _loc30_.y);
                                 _loc16_.var_82 = Number(_loc16_.var_82 + (_loc30_.x + _loc31_.x) * _loc35_);
                                 _loc16_.var_81 = Number(_loc16_.var_81 + (_loc30_.y + _loc31_.y) * _loc35_);
                                 _loc28_ = _loc30_;
                                 _loc30_ = _loc31_;
                                 _loc27_ = _loc27_.next;
                                 _loc32_ = _loc27_;
                                 _loc34_ = Number(Number(_loc34_ + _loc30_.x * (_loc32_.y - _loc28_.y)));
                                 _loc35_ = Number(_loc32_.y * _loc30_.x - _loc32_.x * _loc30_.y);
                                 _loc16_.var_82 = Number(_loc16_.var_82 + (_loc30_.x + _loc32_.x) * _loc35_);
                                 _loc16_.var_81 = Number(_loc16_.var_81 + (_loc30_.y + _loc32_.y) * _loc35_);
                                 _loc34_ = Number(1 / (3 * _loc34_));
                                 _loc35_ = Number(_loc34_);
                                 _loc16_.var_82 = _loc16_.var_82 * _loc35_;
                                 _loc16_.var_81 = _loc16_.var_81 * _loc35_;
                              }
                           }
                           if(_loc15_.var_115 != null)
                           {
                              _loc15_.var_115.zpp_inner.x = _loc15_.var_82;
                              _loc15_.var_115.zpp_inner.y = _loc15_.var_81;
                           }
                        }
                        _loc20_ = _loc15_.body;
                        if(_loc20_.var_113)
                        {
                           _loc20_.var_113 = false;
                           _loc20_.var_84 = Number(Math.sin(_loc20_.var_93));
                           _loc20_.var_83 = Number(Math.cos(_loc20_.var_93));
                           null;
                        }
                        _loc15_.var_99 = Number(_loc15_.body.var_95 + (_loc15_.body.var_83 * _loc15_.var_82 - _loc15_.body.var_84 * _loc15_.var_81));
                        _loc15_.var_100 = Number(_loc15_.body.var_96 + (Number(_loc15_.var_82 * _loc15_.body.var_84 + _loc15_.var_81 * _loc15_.body.var_83)));
                     }
                  }
                  param3.name_42 = param2.name_6.area;
                  param3.var_331 = param2.name_6.var_99;
                  param3.var_336 = param2.name_6.var_100;
                  null;
                  return true;
               }
               while(class_239.var_192.var_73 != null)
               {
                  _loc27_ = class_239.var_192.method_105();
                  if(!_loc27_.var_120)
                  {
                     _loc28_ = _loc27_;
                     if(_loc28_.outer != null)
                     {
                        _loc28_.outer.zpp_inner = null;
                        _loc28_.outer = null;
                     }
                     _loc28_.var_103 = null;
                     _loc28_._validate = null;
                     _loc28_._invalidate = null;
                     _loc28_.next = ZPP_Vec2.var_72;
                     ZPP_Vec2.var_72 = _loc28_;
                  }
               }
               class_239.var_428.clear();
               _loc27_ = null;
               _loc24_ = 1;
               if(_loc19_ == null)
               {
                  _loc19_ = param2.name_6.var_107.next;
                  _loc24_ = 2;
               }
               else
               {
                  _loc27_ = _loc19_;
                  class_239.var_192.add(_loc27_);
               }
               while(_loc24_ != 0)
               {
                  if(_loc24_ == 1)
                  {
                     _loc19_ = _loc19_.next;
                     if(_loc19_ == null)
                     {
                        _loc19_ = param2.name_6.var_107.next;
                     }
                     _loc23_++;
                     if(_loc23_ >= param2.name_6.var_255)
                     {
                        _loc23_ = 0;
                     }
                     if(_loc5_[_loc23_])
                     {
                        _loc34_ = 0;
                        _loc35_ = 0;
                        _loc34_ = Number(_loc27_.x - _loc19_.x);
                        _loc35_ = Number(_loc27_.y - _loc19_.y);
                        if(Number(_loc34_ * _loc34_ + _loc35_ * _loc35_) < class_238.name_8)
                        {
                           break;
                        }
                        class_239.var_192.add(_loc19_);
                     }
                     else
                     {
                        _loc28_ = class_239.var_192.var_73.var_74;
                        _loc30_ = _loc19_;
                        _loc35_ = 0;
                        _loc36_ = 0;
                        _loc35_ = Number(_loc30_.x - _loc28_.x);
                        _loc36_ = Number(_loc30_.y - _loc28_.y);
                        _loc37_ = 0;
                        _loc38_ = 0;
                        _loc37_ = Number(_loc28_.x - param1.var_102.var_99);
                        _loc38_ = Number(_loc28_.y - param1.var_102.var_100);
                        _loc39_ = Number(Number(_loc35_ * _loc35_ + _loc36_ * _loc36_));
                        _loc40_ = Number(2 * (_loc37_ * _loc35_ + _loc38_ * _loc36_));
                        _loc41_ = Number(_loc37_ * _loc37_ + _loc38_ * _loc38_ - param1.var_102.radius * param1.var_102.radius);
                        _loc42_ = Number(Number(Math.sqrt(_loc40_ * _loc40_ - 4 * _loc39_ * _loc41_)));
                        _loc39_ = Number(1 / (2 * _loc39_));
                        _loc46_ = Number((-_loc40_ - _loc42_) * _loc39_);
                        if(_loc46_ < class_238.name_8)
                        {
                           _loc34_ = Number((-_loc40_ + _loc42_) * _loc39_);
                        }
                        else
                        {
                           _loc34_ = Number(_loc46_);
                        }
                        _loc35_ = 0;
                        _loc36_ = 0;
                        _loc37_ = Number(_loc34_);
                        _loc35_ = Number(Number(_loc28_.x + (_loc30_.x - _loc28_.x) * _loc37_));
                        _loc36_ = Number(Number(_loc28_.y + (_loc30_.y - _loc28_.y) * _loc37_));
                        _loc37_ = 0;
                        _loc38_ = 0;
                        _loc37_ = Number(_loc27_.x - _loc35_);
                        _loc38_ = Number(_loc27_.y - _loc36_);
                        if(Number(_loc37_ * _loc37_ + _loc38_ * _loc38_) < class_238.name_8)
                        {
                           break;
                        }
                        _loc26_ = false;
                        §§push(class_239.var_192);
                        if(ZPP_Vec2.var_72 == null)
                        {
                           _loc31_ = new ZPP_Vec2();
                        }
                        else
                        {
                           _loc31_ = ZPP_Vec2.var_72;
                           ZPP_Vec2.var_72 = _loc31_.next;
                           _loc31_.next = null;
                        }
                        _loc31_.name_5 = false;
                        _loc31_.var_109 = _loc26_;
                        _loc31_.x = _loc35_;
                        _loc31_.y = _loc36_;
                        §§pop().add(_loc31_);
                        _loc24_ = 2;
                     }
                  }
                  else if(_loc24_ == 2)
                  {
                     _loc28_ = _loc19_.next;
                     if(_loc28_ == null)
                     {
                        _loc28_ = param2.name_6.var_107.next;
                     }
                     _loc30_ = _loc19_;
                     _loc24_ = 0;
                     _loc31_ = _loc28_;
                     _loc32_ = _loc28_;
                     _loc33_ = _loc32_;
                     _loc25_ = _loc23_ + 1;
                     if(_loc25_ == param2.name_6.var_255)
                     {
                        _loc25_ = 0;
                     }
                     if(_loc4_[_loc23_])
                     {
                        if(_loc5_[_loc25_])
                        {
                           _loc35_ = 0;
                           _loc36_ = 0;
                           _loc35_ = Number(_loc33_.x - _loc30_.x);
                           _loc36_ = Number(_loc33_.y - _loc30_.y);
                           _loc37_ = 0;
                           _loc38_ = 0;
                           _loc37_ = Number(_loc30_.x - param1.var_102.var_99);
                           _loc38_ = Number(_loc30_.y - param1.var_102.var_100);
                           _loc39_ = Number(Number(_loc35_ * _loc35_ + _loc36_ * _loc36_));
                           _loc40_ = Number(2 * (_loc37_ * _loc35_ + _loc38_ * _loc36_));
                           _loc41_ = Number(_loc37_ * _loc37_ + _loc38_ * _loc38_ - param1.var_102.radius * param1.var_102.radius);
                           _loc42_ = Number(Number(Math.sqrt(_loc40_ * _loc40_ - 4 * _loc39_ * _loc41_)));
                           _loc39_ = Number(1 / (2 * _loc39_));
                           _loc46_ = Number((-_loc40_ - _loc42_) * _loc39_);
                           if(_loc46_ < class_238.name_8)
                           {
                              _loc34_ = Number((-_loc40_ + _loc42_) * _loc39_);
                           }
                           else
                           {
                              _loc34_ = Number(_loc46_);
                           }
                           _loc35_ = 0;
                           _loc36_ = 0;
                           _loc37_ = Number(_loc34_);
                           _loc35_ = Number(Number(_loc30_.x + (_loc33_.x - _loc30_.x) * _loc37_));
                           _loc36_ = Number(Number(_loc30_.y + (_loc33_.y - _loc30_.y) * _loc37_));
                           _loc37_ = 0;
                           _loc38_ = 0;
                           _loc37_ = Number(_loc27_.x - _loc35_);
                           _loc38_ = Number(_loc27_.y - _loc36_);
                           if(Number(_loc37_ * _loc37_ + _loc38_ * _loc38_) < class_238.name_8)
                           {
                              _loc24_ = 0;
                              _loc32_ = _loc31_;
                           }
                           else
                           {
                              _loc26_ = false;
                              if(ZPP_Vec2.var_72 == null)
                              {
                                 _loc47_ = new ZPP_Vec2();
                              }
                              else
                              {
                                 _loc47_ = ZPP_Vec2.var_72;
                                 ZPP_Vec2.var_72 = _loc47_.next;
                                 _loc47_.next = null;
                              }
                              _loc47_.name_5 = false;
                              _loc47_.var_109 = _loc26_;
                              _loc47_.x = _loc35_;
                              _loc47_.y = _loc36_;
                              _loc43_ = _loc47_;
                              class_239.var_428.add(class_239.var_192.var_73.var_74);
                              class_239.var_428.add(_loc43_);
                              class_239.var_192.add(_loc43_);
                              _loc24_ = 1;
                              _loc32_ = _loc31_;
                           }
                        }
                        else
                        {
                           _loc34_ = 0;
                           _loc35_ = 0;
                           _loc36_ = 0;
                           _loc37_ = 0;
                           _loc36_ = Number(_loc33_.x - _loc30_.x);
                           _loc37_ = Number(_loc33_.y - _loc30_.y);
                           _loc38_ = 0;
                           _loc39_ = 0;
                           _loc38_ = Number(_loc30_.x - param1.var_102.var_99);
                           _loc39_ = Number(_loc30_.y - param1.var_102.var_100);
                           _loc40_ = Number(Number(_loc36_ * _loc36_ + _loc37_ * _loc37_));
                           _loc41_ = Number(2 * (_loc38_ * _loc36_ + _loc39_ * _loc37_));
                           _loc42_ = Number(_loc38_ * _loc38_ + _loc39_ * _loc39_ - param1.var_102.radius * param1.var_102.radius);
                           _loc46_ = Number(_loc41_ * _loc41_ - 4 * _loc40_ * _loc42_);
                           if(_loc46_ * _loc46_ < class_238.name_8)
                           {
                              if(_loc46_ < 0)
                              {
                                 _loc34_ = 10;
                              }
                              else
                              {
                                 _loc35_ = Number(-_loc41_ / (2 * _loc40_));
                                 _loc34_ = Number(_loc35_);
                              }
                              _loc26_ = false;
                           }
                           else
                           {
                              _loc46_ = Number(Number(Math.sqrt(_loc46_)));
                              _loc40_ = Number(1 / (2 * _loc40_));
                              _loc34_ = Number((-_loc41_ - _loc46_) * _loc40_);
                              _loc35_ = Number((-_loc41_ + _loc46_) * _loc40_);
                              _loc26_ = true;
                           }
                           if(_loc34_ < 1 - class_238.name_8 && _loc35_ > class_238.name_8)
                           {
                              _loc36_ = 0;
                              _loc37_ = 0;
                              _loc38_ = Number(_loc34_);
                              _loc36_ = Number(Number(_loc30_.x + (_loc33_.x - _loc30_.x) * _loc38_));
                              _loc37_ = Number(Number(_loc30_.y + (_loc33_.y - _loc30_.y) * _loc38_));
                              if(_loc27_ != null && Number(_loc38_ * _loc38_ + _loc39_ * _loc39_) < class_238.name_8)
                              {
                                 _loc24_ = 0;
                                 _loc32_ = _loc31_;
                              }
                              else
                              {
                                 _loc29_ = false;
                                 if(ZPP_Vec2.var_72 == null)
                                 {
                                    _loc47_ = new ZPP_Vec2();
                                 }
                                 else
                                 {
                                    _loc47_ = ZPP_Vec2.var_72;
                                    ZPP_Vec2.var_72 = _loc47_.next;
                                    _loc47_.next = null;
                                 }
                                 _loc47_.name_5 = false;
                                 _loc47_.var_109 = _loc29_;
                                 _loc47_.x = _loc36_;
                                 _loc47_.y = _loc37_;
                                 _loc43_ = _loc47_;
                                 if(class_239.var_192.var_73 != null)
                                 {
                                    class_239.var_428.add(class_239.var_192.var_73.var_74);
                                    class_239.var_428.add(_loc43_);
                                 }
                                 class_239.var_192.add(_loc43_);
                                 if(_loc27_ == null)
                                 {
                                    _loc27_ = class_239.var_192.var_73.var_74;
                                 }
                                 if(_loc26_)
                                 {
                                    _loc38_ = 0;
                                    _loc39_ = 0;
                                    _loc40_ = Number(_loc35_);
                                    _loc38_ = Number(Number(_loc30_.x + (_loc33_.x - _loc30_.x) * _loc40_));
                                    _loc39_ = Number(Number(_loc30_.y + (_loc33_.y - _loc30_.y) * _loc40_));
                                    _loc29_ = false;
                                    §§push(class_239.var_192);
                                    if(ZPP_Vec2.var_72 == null)
                                    {
                                       _loc47_ = new ZPP_Vec2();
                                    }
                                    else
                                    {
                                       _loc47_ = ZPP_Vec2.var_72;
                                       ZPP_Vec2.var_72 = _loc47_.next;
                                       _loc47_.next = null;
                                    }
                                    _loc47_.name_5 = false;
                                    _loc47_.var_109 = _loc29_;
                                    _loc47_.x = _loc38_;
                                    _loc47_.y = _loc39_;
                                    §§pop().add(_loc47_);
                                 }
                              }
                           }
                        }
                        addr6974:
                        while(_loc32_ != _loc31_)
                        {
                           _loc33_ = _loc32_;
                           _loc25_ = _loc23_ + 1;
                           if(_loc25_ == param2.name_6.var_255)
                           {
                              _loc25_ = 0;
                           }
                           if(_loc4_[_loc23_])
                           {
                              if(_loc5_[_loc25_])
                              {
                                 _loc35_ = 0;
                                 _loc36_ = 0;
                                 _loc35_ = Number(_loc33_.x - _loc30_.x);
                                 _loc36_ = Number(_loc33_.y - _loc30_.y);
                                 _loc37_ = 0;
                                 _loc38_ = 0;
                                 _loc37_ = Number(_loc30_.x - param1.var_102.var_99);
                                 _loc38_ = Number(_loc30_.y - param1.var_102.var_100);
                                 _loc39_ = Number(Number(_loc35_ * _loc35_ + _loc36_ * _loc36_));
                                 _loc40_ = Number(2 * (_loc37_ * _loc35_ + _loc38_ * _loc36_));
                                 _loc41_ = Number(_loc37_ * _loc37_ + _loc38_ * _loc38_ - param1.var_102.radius * param1.var_102.radius);
                                 _loc42_ = Number(Number(Math.sqrt(_loc40_ * _loc40_ - 4 * _loc39_ * _loc41_)));
                                 _loc39_ = Number(1 / (2 * _loc39_));
                                 _loc46_ = Number((-_loc40_ - _loc42_) * _loc39_);
                                 if(_loc46_ < class_238.name_8)
                                 {
                                    _loc34_ = Number((-_loc40_ + _loc42_) * _loc39_);
                                 }
                                 else
                                 {
                                    _loc34_ = Number(_loc46_);
                                 }
                                 _loc35_ = 0;
                                 _loc36_ = 0;
                                 _loc37_ = Number(_loc34_);
                                 _loc35_ = Number(Number(_loc30_.x + (_loc33_.x - _loc30_.x) * _loc37_));
                                 _loc36_ = Number(Number(_loc30_.y + (_loc33_.y - _loc30_.y) * _loc37_));
                                 _loc37_ = 0;
                                 _loc38_ = 0;
                                 _loc37_ = Number(_loc27_.x - _loc35_);
                                 _loc38_ = Number(_loc27_.y - _loc36_);
                                 if(Number(_loc37_ * _loc37_ + _loc38_ * _loc38_) < class_238.name_8)
                                 {
                                    _loc24_ = 0;
                                    _loc32_ = _loc31_;
                                    break;
                                 }
                                 _loc26_ = false;
                                 if(ZPP_Vec2.var_72 == null)
                                 {
                                    _loc47_ = new ZPP_Vec2();
                                 }
                                 else
                                 {
                                    _loc47_ = ZPP_Vec2.var_72;
                                    ZPP_Vec2.var_72 = _loc47_.next;
                                    _loc47_.next = null;
                                 }
                                 _loc47_.name_5 = false;
                                 _loc47_.var_109 = _loc26_;
                                 _loc47_.x = _loc35_;
                                 _loc47_.y = _loc36_;
                                 _loc43_ = _loc47_;
                                 class_239.var_428.add(class_239.var_192.var_73.var_74);
                                 class_239.var_428.add(_loc43_);
                                 class_239.var_192.add(_loc43_);
                                 _loc24_ = 1;
                                 _loc32_ = _loc31_;
                                 break;
                              }
                              _loc34_ = 0;
                              _loc35_ = 0;
                              _loc36_ = 0;
                              _loc37_ = 0;
                              _loc36_ = Number(_loc33_.x - _loc30_.x);
                              _loc37_ = Number(_loc33_.y - _loc30_.y);
                              _loc38_ = 0;
                              _loc39_ = 0;
                              _loc38_ = Number(_loc30_.x - param1.var_102.var_99);
                              _loc39_ = Number(_loc30_.y - param1.var_102.var_100);
                              _loc40_ = Number(Number(_loc36_ * _loc36_ + _loc37_ * _loc37_));
                              _loc41_ = Number(2 * (_loc38_ * _loc36_ + _loc39_ * _loc37_));
                              _loc42_ = Number(_loc38_ * _loc38_ + _loc39_ * _loc39_ - param1.var_102.radius * param1.var_102.radius);
                              _loc46_ = Number(_loc41_ * _loc41_ - 4 * _loc40_ * _loc42_);
                              if(_loc46_ * _loc46_ < class_238.name_8)
                              {
                                 if(_loc46_ < 0)
                                 {
                                    _loc34_ = 10;
                                 }
                                 else
                                 {
                                    _loc35_ = Number(-_loc41_ / (2 * _loc40_));
                                    _loc34_ = Number(_loc35_);
                                 }
                                 _loc26_ = false;
                              }
                              else
                              {
                                 _loc46_ = Number(Number(Math.sqrt(_loc46_)));
                                 _loc40_ = Number(1 / (2 * _loc40_));
                                 _loc34_ = Number((-_loc41_ - _loc46_) * _loc40_);
                                 _loc35_ = Number((-_loc41_ + _loc46_) * _loc40_);
                                 _loc26_ = true;
                              }
                              if(_loc34_ < 1 - class_238.name_8 && _loc35_ > class_238.name_8)
                              {
                                 _loc36_ = 0;
                                 _loc37_ = 0;
                                 _loc38_ = Number(_loc34_);
                                 _loc36_ = Number(Number(_loc30_.x + (_loc33_.x - _loc30_.x) * _loc38_));
                                 _loc37_ = Number(Number(_loc30_.y + (_loc33_.y - _loc30_.y) * _loc38_));
                                 if(_loc27_ != null && Number(_loc38_ * _loc38_ + _loc39_ * _loc39_) < class_238.name_8)
                                 {
                                    _loc24_ = 0;
                                    _loc32_ = _loc31_;
                                    break;
                                 }
                                 _loc29_ = false;
                                 if(ZPP_Vec2.var_72 == null)
                                 {
                                    _loc47_ = new ZPP_Vec2();
                                 }
                                 else
                                 {
                                    _loc47_ = ZPP_Vec2.var_72;
                                    ZPP_Vec2.var_72 = _loc47_.next;
                                    _loc47_.next = null;
                                 }
                                 _loc47_.name_5 = false;
                                 _loc47_.var_109 = _loc29_;
                                 _loc47_.x = _loc36_;
                                 _loc47_.y = _loc37_;
                                 _loc43_ = _loc47_;
                                 if(class_239.var_192.var_73 != null)
                                 {
                                    class_239.var_428.add(class_239.var_192.var_73.var_74);
                                    class_239.var_428.add(_loc43_);
                                 }
                                 class_239.var_192.add(_loc43_);
                                 if(_loc27_ == null)
                                 {
                                    _loc27_ = class_239.var_192.var_73.var_74;
                                 }
                                 if(_loc26_)
                                 {
                                    _loc38_ = 0;
                                    _loc39_ = 0;
                                    _loc40_ = Number(_loc35_);
                                    _loc38_ = Number(Number(_loc30_.x + (_loc33_.x - _loc30_.x) * _loc40_));
                                    _loc39_ = Number(Number(_loc30_.y + (_loc33_.y - _loc30_.y) * _loc40_));
                                    _loc29_ = false;
                                    §§push(class_239.var_192);
                                    if(ZPP_Vec2.var_72 == null)
                                    {
                                       _loc47_ = new ZPP_Vec2();
                                    }
                                    else
                                    {
                                       _loc47_ = ZPP_Vec2.var_72;
                                       ZPP_Vec2.var_72 = _loc47_.next;
                                       _loc47_.next = null;
                                    }
                                    _loc47_.name_5 = false;
                                    _loc47_.var_109 = _loc29_;
                                    _loc47_.x = _loc38_;
                                    _loc47_.y = _loc39_;
                                    §§pop().add(_loc47_);
                                 }
                              }
                           }
                           _loc30_ = _loc33_;
                           _loc19_ = _loc32_;
                           _loc23_ = _loc25_;
                           _loc32_ = _loc32_.next;
                           if(_loc32_ == null)
                           {
                              _loc32_ = param2.name_6.var_107.next;
                           }
                        }
                        continue;
                     }
                     _loc30_ = _loc33_;
                     _loc19_ = _loc32_;
                     _loc23_ = _loc25_;
                     _loc32_ = _loc32_.next;
                     if(_loc32_ == null)
                     {
                        _loc32_ = param2.name_6.var_107.next;
                     }
                     §§goto(addr6974);
                  }
               }
               if(class_239.var_192.var_73 == null)
               {
                  return false;
               }
               if(class_239.var_192.var_73.next == null)
               {
                  _loc26_ = true;
                  _loc8_ = param2.name_6.name_11.var_73;
                  while(_loc8_ != null)
                  {
                     _loc45_ = _loc8_.var_74;
                     _loc34_ = Number(Number(_loc45_.var_92 * param1.var_102.var_99 + _loc45_.var_91 * param1.var_102.var_100));
                     if(_loc34_ > _loc45_.gprojection)
                     {
                        _loc26_ = false;
                        break;
                     }
                     _loc8_ = _loc8_.next;
                  }
                  if(_loc26_)
                  {
                     param3.name_42 = param1.var_102.area;
                     param3.var_331 = param1.var_102.var_99;
                     param3.var_336 = param1.var_102.var_100;
                     null;
                     return true;
                  }
                  return false;
               }
               _loc34_ = 0;
               _loc35_ = 0;
               _loc36_ = 0;
               if(class_239.var_192.var_73.next.next != null)
               {
                  _loc37_ = 0;
                  _loc38_ = 0;
                  _loc39_ = 0;
                  _loc38_ = 0;
                  _loc39_ = 0;
                  _loc37_ = 0;
                  _loc44_ = class_239.var_192.var_73;
                  _loc28_ = _loc44_.var_74;
                  _loc44_ = _loc44_.next;
                  _loc30_ = _loc44_.var_74;
                  _loc44_ = _loc44_.next;
                  while(_loc44_ != null)
                  {
                     _loc31_ = _loc44_.var_74;
                     _loc37_ = Number(Number(_loc37_ + _loc30_.x * (_loc31_.y - _loc28_.y)));
                     _loc40_ = Number(_loc31_.y * _loc30_.x - _loc31_.x * _loc30_.y);
                     _loc38_ = Number(Number(_loc38_ + (_loc30_.x + _loc31_.x) * _loc40_));
                     _loc39_ = Number(Number(_loc39_ + (_loc30_.y + _loc31_.y) * _loc40_));
                     _loc28_ = _loc30_;
                     _loc30_ = _loc31_;
                     _loc44_ = _loc44_.next;
                  }
                  _loc44_ = class_239.var_192.var_73;
                  _loc31_ = _loc44_.var_74;
                  _loc37_ = Number(Number(_loc37_ + _loc30_.x * (_loc31_.y - _loc28_.y)));
                  _loc40_ = Number(_loc31_.y * _loc30_.x - _loc31_.x * _loc30_.y);
                  _loc38_ = Number(Number(_loc38_ + (_loc30_.x + _loc31_.x) * _loc40_));
                  _loc39_ = Number(Number(_loc39_ + (_loc30_.y + _loc31_.y) * _loc40_));
                  _loc28_ = _loc30_;
                  _loc30_ = _loc31_;
                  _loc44_ = _loc44_.next;
                  _loc32_ = _loc44_.var_74;
                  _loc37_ = Number(Number(_loc37_ + _loc30_.x * (_loc32_.y - _loc28_.y)));
                  _loc40_ = Number(_loc32_.y * _loc30_.x - _loc32_.x * _loc30_.y);
                  _loc38_ = Number(Number(_loc38_ + (_loc30_.x + _loc32_.x) * _loc40_));
                  _loc39_ = Number(Number(_loc39_ + (_loc30_.y + _loc32_.y) * _loc40_));
                  _loc37_ = Number(_loc37_ * 0.5);
                  _loc40_ = Number(1 / (6 * _loc37_));
                  _loc41_ = Number(_loc40_);
                  _loc38_ = Number(_loc38_ * _loc41_);
                  _loc39_ = Number(_loc39_ * _loc41_);
                  _loc40_ = Number(-_loc37_);
                  _loc34_ = Number(Number(_loc34_ + _loc38_ * _loc40_));
                  _loc35_ = Number(Number(_loc35_ + _loc39_ * _loc40_));
                  _loc36_ = Number(_loc36_ - _loc37_);
               }
               else
               {
                  class_239.var_428.add(class_239.var_192.var_73.var_74);
                  class_239.var_428.add(class_239.var_192.var_73.next.var_74);
               }
               while(class_239.var_428.var_73 != null)
               {
                  _loc28_ = class_239.var_428.method_105();
                  _loc30_ = class_239.var_428.method_105();
                  _loc37_ = 0;
                  _loc38_ = 0;
                  _loc37_ = Number(_loc30_.x - _loc28_.x);
                  _loc38_ = Number(_loc30_.y - _loc28_.y);
                  _loc39_ = 0;
                  _loc40_ = 0;
                  _loc39_ = Number(_loc37_);
                  _loc40_ = Number(_loc38_);
                  _loc41_ = Number(Number(_loc39_ * _loc39_ + _loc40_ * _loc40_));
                  sf32(_loc41_,0);
                  _loc25_ = 1597463007 - (li32(0) >> 1);
                  si32(_loc25_,0);
                  _loc46_ = Number(lf32(0));
                  _loc42_ = Number(_loc46_ * (1.5 - 0.5 * _loc41_ * _loc46_ * _loc46_));
                  _loc46_ = Number(_loc42_);
                  _loc39_ = Number(_loc39_ * _loc46_);
                  _loc40_ = Number(_loc40_ * _loc46_);
                  _loc41_ = Number(_loc39_);
                  _loc39_ = Number(-_loc40_);
                  _loc40_ = Number(_loc41_);
                  _loc41_ = 0;
                  _loc42_ = 0;
                  _loc41_ = Number(Number(_loc28_.x + _loc30_.x));
                  _loc42_ = Number(Number(_loc28_.y + _loc30_.y));
                  _loc46_ = 0.5;
                  _loc41_ = Number(_loc41_ * _loc46_);
                  _loc42_ = Number(_loc42_ * _loc46_);
                  _loc46_ = 1;
                  _loc41_ = Number(_loc41_ - param1.var_102.var_99 * _loc46_);
                  _loc42_ = Number(_loc42_ - param1.var_102.var_100 * _loc46_);
                  _loc46_ = Number(Number(_loc39_ * _loc41_ + _loc40_ * _loc42_));
                  _loc48_ = 0;
                  _loc49_ = 0;
                  _loc50_ = _loc46_;
                  _loc51_ = _loc50_ / param1.var_102.radius;
                  _loc52_ = Number(Math.sqrt(1 - _loc51_ * _loc51_));
                  _loc53_ = Number(Math.acos(_loc51_));
                  _loc48_ = Number(param1.var_102.radius * (param1.var_102.radius * _loc53_ - _loc50_ * _loc52_));
                  _loc49_ = Number(0.666666666666667 * param1.var_102.radius * _loc52_ * _loc52_ * _loc52_ / (_loc53_ - _loc51_ * _loc52_));
                  _loc41_ = Number(param1.var_102.var_99);
                  _loc42_ = Number(param1.var_102.var_100);
                  _loc50_ = _loc49_;
                  _loc41_ = Number(Number(_loc41_ + _loc39_ * _loc50_));
                  _loc42_ = Number(Number(_loc42_ + _loc40_ * _loc50_));
                  _loc50_ = _loc48_;
                  _loc34_ = Number(Number(_loc34_ + _loc41_ * _loc50_));
                  _loc35_ = Number(Number(_loc35_ + _loc42_ * _loc50_));
                  _loc36_ = Number(Number(_loc36_ + _loc48_));
               }
               _loc37_ = Number(1 / _loc36_);
               _loc34_ = Number(_loc34_ * _loc37_);
               _loc35_ = Number(_loc35_ * _loc37_);
               param3.name_42 = _loc36_;
               param3.var_331 = _loc34_;
               param3.var_336 = _loc35_;
               null;
               return true;
            }
            return false;
         }
         _loc54_ = param1.var_102;
         _loc55_ = param2.var_102;
         _loc10_ = 0;
         _loc14_ = 0;
         _loc10_ = Number(_loc55_.var_99 - _loc54_.var_99);
         _loc14_ = Number(_loc55_.var_100 - _loc54_.var_100);
         _loc34_ = Number(Number(_loc54_.radius + _loc55_.radius));
         _loc35_ = Number(Number(_loc10_ * _loc10_ + _loc14_ * _loc14_));
         if(_loc35_ > _loc34_ * _loc34_)
         {
            return false;
         }
         if(_loc35_ < class_238.name_8 * class_238.name_8)
         {
            if(_loc54_.radius < _loc55_.radius)
            {
               param3.name_42 = _loc54_.area;
               param3.var_331 = _loc54_.var_99;
               param3.var_336 = _loc54_.var_100;
               null;
            }
            else
            {
               param3.name_42 = _loc55_.area;
               param3.var_331 = _loc55_.var_99;
               param3.var_336 = _loc55_.var_100;
               null;
            }
            return true;
         }
         _loc36_ = Number(Number(Math.sqrt(_loc35_)));
         _loc37_ = Number(1 / _loc36_);
         _loc38_ = Number(0.5 * (_loc36_ - (_loc55_.radius * _loc55_.radius - _loc54_.radius * _loc54_.radius) * _loc37_));
         if(_loc38_ <= -_loc54_.radius)
         {
            param3.name_42 = _loc54_.area;
            param3.var_331 = _loc54_.var_99;
            param3.var_336 = _loc54_.var_100;
            null;
         }
         else
         {
            _loc39_ = Number(_loc36_ - _loc38_);
            if(_loc39_ <= -_loc55_.radius)
            {
               param3.name_42 = _loc55_.area;
               param3.var_331 = _loc55_.var_99;
               param3.var_336 = _loc55_.var_100;
               null;
            }
            else
            {
               _loc40_ = 0;
               _loc41_ = 0;
               _loc42_ = 0;
               _loc46_ = 0;
               _loc48_ = Number(_loc38_);
               _loc49_ = Number(_loc48_ / _loc54_.radius);
               _loc50_ = Number(Math.sqrt(1 - _loc49_ * _loc49_));
               _loc51_ = Number(Math.acos(_loc49_));
               _loc40_ = Number(_loc54_.radius * (_loc54_.radius * _loc51_ - _loc48_ * _loc50_));
               _loc41_ = Number(0.666666666666667 * _loc54_.radius * _loc50_ * _loc50_ * _loc50_ / (_loc51_ - _loc49_ * _loc50_));
               _loc48_ = Number(_loc39_);
               _loc49_ = Number(_loc48_ / _loc55_.radius);
               _loc50_ = Number(Math.sqrt(1 - _loc49_ * _loc49_));
               _loc51_ = Number(Math.acos(_loc49_));
               _loc42_ = Number(_loc55_.radius * (_loc55_.radius * _loc51_ - _loc48_ * _loc50_));
               _loc46_ = Number(0.666666666666667 * _loc55_.radius * _loc50_ * _loc50_ * _loc50_ / (_loc51_ - _loc49_ * _loc50_));
               _loc48_ = Number(Number(_loc40_ + _loc42_));
               _loc49_ = Number((_loc41_ * _loc40_ + (_loc36_ - _loc46_) * _loc42_) / _loc48_ * _loc37_);
               param3.name_42 = _loc48_;
               param3.var_331 = Number(_loc54_.var_99 + _loc10_ * _loc49_);
               param3.var_336 = Number(_loc54_.var_100 + _loc14_ * _loc49_);
               null;
            }
         }
         return true;
      }
   }
}
