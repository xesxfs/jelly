package zpp_nape.geom
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
   import nape.geom.Vec2;
   import package_35.class_238;
   import zpp_nape.phys.ZPP_Body;
   import zpp_nape.shape.ZPP_Circle;
   import zpp_nape.shape.ZPP_Edge;
   import zpp_nape.shape.ZPP_Polygon;
   import zpp_nape.shape.ZPP_Shape;
   import zpp_nape.util.ZNPNode_ZPP_Edge;
   import zpp_nape.util.ZNPNode_ZPP_Shape;
   import zpp_nape.util.class_223;
   
   public final class class_304
   {
       
      
      public function class_304()
      {
      }
      
      public static function method_366(param1:ZPP_ToiEvent, param2:Number, param3:Number, param4:Number, param5:Boolean = false) : void
      {
         var _loc20_:Number = NaN;
         var _loc21_:* = NaN;
         var _loc22_:* = NaN;
         var _loc23_:* = NaN;
         var _loc24_:* = NaN;
         var _loc25_:* = NaN;
         var _loc26_:* = NaN;
         var _loc27_:* = null as ZPP_Polygon;
         var _loc28_:* = null as ZPP_Vec2;
         var _loc29_:* = null as ZPP_Vec2;
         var _loc30_:* = null as ZPP_Vec2;
         var _loc31_:* = null as ZPP_Vec2;
         var _loc32_:* = null as ZNPNode_ZPP_Edge;
         var _loc33_:* = null as ZPP_Edge;
         var _loc34_:* = null as ZPP_Shape;
         var _loc35_:* = null as ZPP_Shape;
         var _loc36_:* = null as ZPP_Circle;
         var _loc37_:* = null as ZPP_Circle;
         var _loc38_:* = 0;
         var _loc39_:* = NaN;
         var _loc40_:* = false;
         var _loc41_:* = null as ZPP_Shape;
         var _loc42_:* = null as ZPP_Edge;
         var _loc43_:* = NaN;
         var _loc44_:* = null as ZPP_Polygon;
         var _loc45_:* = null as ZPP_Edge;
         var _loc46_:* = null as ZPP_Polygon;
         var _loc47_:* = null as ZPP_Polygon;
         var _loc48_:* = null as ZPP_Edge;
         var _loc49_:* = null as ZPP_Edge;
         var _loc50_:* = null as ZPP_Vec2;
         var _loc51_:* = null as ZPP_Vec2;
         var _loc52_:* = NaN;
         var _loc53_:* = NaN;
         var _loc54_:* = NaN;
         var _loc55_:* = NaN;
         var _loc56_:* = NaN;
         var _loc57_:* = NaN;
         var _loc58_:* = NaN;
         var _loc59_:* = NaN;
         var _loc60_:* = NaN;
         var _loc61_:* = NaN;
         var _loc62_:* = NaN;
         var _loc63_:* = NaN;
         var _loc64_:* = NaN;
         var _loc65_:* = NaN;
         var _loc66_:* = NaN;
         var _loc67_:* = NaN;
         var _loc68_:* = NaN;
         var _loc69_:* = NaN;
         var _loc70_:* = NaN;
         var _loc71_:* = null as ZPP_Vec2;
         var _loc72_:* = NaN;
         var _loc73_:* = NaN;
         var _loc74_:* = null as ZPP_Vec2;
         var _loc75_:* = NaN;
         var _loc76_:* = NaN;
         var _loc77_:* = NaN;
         var _loc78_:* = NaN;
         var _loc79_:Number = NaN;
         var _loc6_:ZPP_Shape = param1.s1;
         var _loc7_:ZPP_Shape = param1.s2;
         var _loc8_:ZPP_Body = _loc6_.body;
         var _loc9_:ZPP_Body = _loc7_.body;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         _loc10_ = Number(_loc9_.var_104 - _loc8_.var_104);
         _loc11_ = Number(_loc9_.var_105 - _loc8_.var_105);
         var _loc12_:Number = _loc8_.var_94;
         if(_loc12_ < 0)
         {
            _loc12_ = -_loc12_;
         }
         var _loc13_:Number = _loc9_.var_94;
         if(_loc13_ < 0)
         {
            _loc13_ = -_loc13_;
         }
         var _loc14_:Number = Number(_loc6_.var_366 * _loc12_ + _loc7_.var_366 * _loc13_);
         if(!param5 && !param1.kinematic && Number(_loc10_ * _loc10_ + _loc11_ * _loc11_) < class_238.var_974 * class_238.var_974 && _loc14_ < class_238.var_1136)
         {
            param1.name_51 = -1;
            param1.var_143 = true;
            return;
         }
         var _loc15_:ZPP_Vec2 = param1.c1;
         var _loc16_:ZPP_Vec2 = param1.c2;
         var _loc17_:ZPP_Vec2 = param1.var_561;
         var _loc18_:* = Number(param3);
         var _loc19_:int = 0;
         while(true)
         {
            _loc20_ = _loc18_ * param2;
            _loc21_ = Number(_loc20_ - _loc8_.var_176);
            if(_loc21_ != 0)
            {
               _loc8_.var_176 = _loc20_;
               _loc22_ = Number(_loc21_);
               _loc8_.var_95 = Number(_loc8_.var_95 + _loc8_.var_104 * _loc22_);
               _loc8_.var_96 = Number(_loc8_.var_96 + _loc8_.var_105 * _loc22_);
               if(_loc8_.var_94 != 0)
               {
                  _loc22_ = Number(_loc8_.var_191 * _loc21_);
                  _loc8_.var_93 = Number(_loc8_.var_93 + _loc22_);
                  if(_loc22_ * _loc22_ > 0.0001)
                  {
                     _loc8_.var_84 = Number(Math.sin(_loc8_.var_93));
                     _loc8_.var_83 = Number(Math.cos(_loc8_.var_93));
                     null;
                  }
                  else
                  {
                     _loc23_ = Number(_loc22_ * _loc22_);
                     _loc24_ = Number(1 - 0.5 * _loc23_);
                     _loc25_ = Number(1 - _loc23_ * _loc23_ / 8);
                     _loc26_ = Number((_loc24_ * _loc8_.var_84 + _loc22_ * _loc8_.var_83) * _loc25_);
                     _loc8_.var_83 = (_loc24_ * _loc8_.var_83 - _loc22_ * _loc8_.var_84) * _loc25_;
                     _loc8_.var_84 = _loc26_;
                  }
               }
            }
            if(_loc6_.type == class_223.var_131)
            {
               _loc6_.var_99 = Number(_loc8_.var_95 + (_loc8_.var_83 * _loc6_.var_82 - _loc8_.var_84 * _loc6_.var_81));
               _loc6_.var_100 = Number(_loc8_.var_96 + (Number(_loc6_.var_82 * _loc8_.var_84 + _loc6_.var_81 * _loc8_.var_83)));
            }
            else
            {
               _loc27_ = _loc6_.name_6;
               _loc28_ = _loc27_.var_88.next;
               _loc29_ = _loc27_.var_107.next;
               while(_loc29_ != null)
               {
                  _loc30_ = _loc29_;
                  _loc31_ = _loc28_;
                  _loc28_ = _loc28_.next;
                  _loc30_.x = Number(_loc8_.var_95 + (_loc8_.var_83 * _loc31_.x - _loc8_.var_84 * _loc31_.y));
                  _loc30_.y = Number(_loc8_.var_96 + (Number(_loc31_.x * _loc8_.var_84 + _loc31_.y * _loc8_.var_83)));
                  _loc29_ = _loc29_.next;
               }
               _loc32_ = _loc27_.name_11.var_73;
               _loc29_ = _loc27_.var_107.next;
               _loc30_ = _loc29_;
               _loc29_ = _loc29_.next;
               while(_loc29_ != null)
               {
                  _loc31_ = _loc29_;
                  _loc33_ = _loc32_.var_74;
                  _loc32_ = _loc32_.next;
                  _loc33_.var_92 = _loc8_.var_83 * _loc33_.var_122 - _loc8_.var_84 * _loc33_.var_121;
                  _loc33_.var_91 = Number(_loc33_.var_122 * _loc8_.var_84 + _loc33_.var_121 * _loc8_.var_83);
                  _loc33_.gprojection = Number(Number(_loc8_.var_95 * _loc33_.var_92 + _loc8_.var_96 * _loc33_.var_91) + _loc33_.var_165);
                  _loc33_.tp0 = _loc30_.y * _loc33_.var_92 - _loc30_.x * _loc33_.var_91;
                  _loc33_.tp1 = _loc31_.y * _loc33_.var_92 - _loc31_.x * _loc33_.var_91;
                  _loc30_ = _loc31_;
                  _loc29_ = _loc29_.next;
               }
               _loc31_ = _loc27_.var_107.next;
               _loc33_ = _loc32_.var_74;
               _loc32_ = _loc32_.next;
               _loc33_.var_92 = _loc8_.var_83 * _loc33_.var_122 - _loc8_.var_84 * _loc33_.var_121;
               _loc33_.var_91 = Number(_loc33_.var_122 * _loc8_.var_84 + _loc33_.var_121 * _loc8_.var_83);
               _loc33_.gprojection = Number(Number(_loc8_.var_95 * _loc33_.var_92 + _loc8_.var_96 * _loc33_.var_91) + _loc33_.var_165);
               _loc33_.tp0 = _loc30_.y * _loc33_.var_92 - _loc30_.x * _loc33_.var_91;
               _loc33_.tp1 = _loc31_.y * _loc33_.var_92 - _loc31_.x * _loc33_.var_91;
            }
            _loc20_ = _loc18_ * param2;
            _loc21_ = Number(_loc20_ - _loc9_.var_176);
            if(_loc21_ != 0)
            {
               _loc9_.var_176 = _loc20_;
               _loc22_ = Number(_loc21_);
               _loc9_.var_95 = Number(_loc9_.var_95 + _loc9_.var_104 * _loc22_);
               _loc9_.var_96 = Number(_loc9_.var_96 + _loc9_.var_105 * _loc22_);
               if(_loc9_.var_94 != 0)
               {
                  _loc22_ = Number(_loc9_.var_191 * _loc21_);
                  _loc9_.var_93 = Number(_loc9_.var_93 + _loc22_);
                  if(_loc22_ * _loc22_ > 0.0001)
                  {
                     _loc9_.var_84 = Number(Math.sin(_loc9_.var_93));
                     _loc9_.var_83 = Number(Math.cos(_loc9_.var_93));
                     null;
                  }
                  else
                  {
                     _loc23_ = Number(_loc22_ * _loc22_);
                     _loc24_ = Number(1 - 0.5 * _loc23_);
                     _loc25_ = Number(1 - _loc23_ * _loc23_ / 8);
                     _loc26_ = Number((_loc24_ * _loc9_.var_84 + _loc22_ * _loc9_.var_83) * _loc25_);
                     _loc9_.var_83 = (_loc24_ * _loc9_.var_83 - _loc22_ * _loc9_.var_84) * _loc25_;
                     _loc9_.var_84 = _loc26_;
                  }
               }
            }
            if(_loc7_.type == class_223.var_131)
            {
               _loc7_.var_99 = Number(_loc9_.var_95 + (_loc9_.var_83 * _loc7_.var_82 - _loc9_.var_84 * _loc7_.var_81));
               _loc7_.var_100 = Number(_loc9_.var_96 + (Number(_loc7_.var_82 * _loc9_.var_84 + _loc7_.var_81 * _loc9_.var_83)));
            }
            else
            {
               _loc27_ = _loc7_.name_6;
               _loc28_ = _loc27_.var_88.next;
               _loc29_ = _loc27_.var_107.next;
               while(_loc29_ != null)
               {
                  _loc30_ = _loc29_;
                  _loc31_ = _loc28_;
                  _loc28_ = _loc28_.next;
                  _loc30_.x = Number(_loc9_.var_95 + (_loc9_.var_83 * _loc31_.x - _loc9_.var_84 * _loc31_.y));
                  _loc30_.y = Number(_loc9_.var_96 + (Number(_loc31_.x * _loc9_.var_84 + _loc31_.y * _loc9_.var_83)));
                  _loc29_ = _loc29_.next;
               }
               _loc32_ = _loc27_.name_11.var_73;
               _loc29_ = _loc27_.var_107.next;
               _loc30_ = _loc29_;
               _loc29_ = _loc29_.next;
               while(_loc29_ != null)
               {
                  _loc31_ = _loc29_;
                  _loc33_ = _loc32_.var_74;
                  _loc32_ = _loc32_.next;
                  _loc33_.var_92 = _loc9_.var_83 * _loc33_.var_122 - _loc9_.var_84 * _loc33_.var_121;
                  _loc33_.var_91 = Number(_loc33_.var_122 * _loc9_.var_84 + _loc33_.var_121 * _loc9_.var_83);
                  _loc33_.gprojection = Number(Number(_loc9_.var_95 * _loc33_.var_92 + _loc9_.var_96 * _loc33_.var_91) + _loc33_.var_165);
                  _loc33_.tp0 = _loc30_.y * _loc33_.var_92 - _loc30_.x * _loc33_.var_91;
                  _loc33_.tp1 = _loc31_.y * _loc33_.var_92 - _loc31_.x * _loc33_.var_91;
                  _loc30_ = _loc31_;
                  _loc29_ = _loc29_.next;
               }
               _loc31_ = _loc27_.var_107.next;
               _loc33_ = _loc32_.var_74;
               _loc32_ = _loc32_.next;
               _loc33_.var_92 = _loc9_.var_83 * _loc33_.var_122 - _loc9_.var_84 * _loc33_.var_121;
               _loc33_.var_91 = Number(_loc33_.var_122 * _loc9_.var_84 + _loc33_.var_121 * _loc9_.var_83);
               _loc33_.gprojection = Number(Number(_loc9_.var_95 * _loc33_.var_92 + _loc9_.var_96 * _loc33_.var_91) + _loc33_.var_165);
               _loc33_.tp0 = _loc30_.y * _loc33_.var_92 - _loc30_.x * _loc33_.var_91;
               _loc33_.tp1 = _loc31_.y * _loc33_.var_92 - _loc31_.x * _loc33_.var_91;
            }
            _loc34_ = _loc6_;
            _loc35_ = _loc7_;
            _loc28_ = _loc15_;
            _loc29_ = _loc16_;
            _loc21_ = 1.0e100;
            if(_loc34_.type == class_223.var_131 && _loc35_.type == class_223.var_131)
            {
               _loc36_ = _loc34_.var_102;
               _loc37_ = _loc35_.var_102;
               _loc23_ = 0;
               _loc24_ = 0;
               _loc23_ = Number(_loc37_.var_99 - _loc36_.var_99);
               _loc24_ = Number(_loc37_.var_100 - _loc36_.var_100);
               _loc26_ = Number(Number(_loc23_ * _loc23_ + _loc24_ * _loc24_));
               if(_loc26_ == 0)
               {
                  _loc25_ = 0;
               }
               else
               {
                  sf32(_loc26_,0);
                  _loc38_ = 1597463007 - (li32(0) >> 1);
                  si32(_loc38_,0);
                  _loc39_ = Number(lf32(0));
                  _loc25_ = Number(1 / (_loc39_ * (1.5 - 0.5 * _loc26_ * _loc39_ * _loc39_)));
               }
               _loc22_ = Number(_loc25_ - (Number(_loc36_.radius + _loc37_.radius)));
               if(_loc22_ < _loc21_)
               {
                  if(_loc25_ == 0)
                  {
                     _loc23_ = 1;
                     _loc24_ = 0;
                  }
                  else
                  {
                     _loc26_ = Number(1 / _loc25_);
                     _loc23_ = Number(_loc23_ * _loc26_);
                     _loc24_ = Number(_loc24_ * _loc26_);
                  }
                  _loc26_ = Number(_loc36_.radius);
                  _loc28_.x = Number(_loc36_.var_99 + _loc23_ * _loc26_);
                  _loc28_.y = Number(_loc36_.var_100 + _loc24_ * _loc26_);
                  _loc26_ = Number(-_loc37_.radius);
                  _loc29_.x = Number(_loc37_.var_99 + _loc23_ * _loc26_);
                  _loc29_.y = Number(_loc37_.var_100 + _loc24_ * _loc26_);
                  _loc17_.x = _loc23_;
                  _loc17_.y = _loc24_;
               }
               §§push(_loc22_);
            }
            else
            {
               _loc40_ = false;
               if(_loc34_.type == class_223.var_131 && _loc35_.type == class_223.var_155)
               {
                  _loc41_ = _loc34_;
                  _loc34_ = _loc35_;
                  _loc35_ = _loc41_;
                  _loc30_ = _loc28_;
                  _loc28_ = _loc29_;
                  _loc29_ = _loc30_;
                  _loc40_ = true;
               }
               if(_loc34_.type == class_223.var_155 && _loc35_.type == class_223.var_131)
               {
                  _loc27_ = _loc34_.name_6;
                  _loc36_ = _loc35_.var_102;
                  _loc22_ = -1.0e100;
                  _loc33_ = null;
                  _loc32_ = _loc27_.name_11.var_73;
                  while(_loc32_ != null)
                  {
                     _loc42_ = _loc32_.var_74;
                     _loc23_ = Number(_loc42_.var_92 * _loc36_.var_99 + _loc42_.var_91 * _loc36_.var_100 - _loc42_.gprojection - _loc36_.radius);
                     if(_loc23_ > _loc21_)
                     {
                        _loc22_ = Number(_loc23_);
                        break;
                     }
                     if(_loc23_ > 0)
                     {
                        if(_loc23_ > _loc22_)
                        {
                           _loc22_ = Number(_loc23_);
                           _loc33_ = _loc42_;
                        }
                     }
                     else if(_loc22_ < 0 && _loc23_ > _loc22_)
                     {
                        _loc22_ = Number(_loc23_);
                        _loc33_ = _loc42_;
                     }
                     _loc32_ = _loc32_.next;
                  }
                  if(_loc22_ < _loc21_)
                  {
                     _loc30_ = _loc33_.gp0;
                     _loc31_ = _loc33_.gp1;
                     _loc23_ = Number(_loc36_.var_100 * _loc33_.var_92 - _loc36_.var_99 * _loc33_.var_91);
                     if(_loc23_ <= _loc30_.y * _loc33_.var_92 - _loc30_.x * _loc33_.var_91)
                     {
                        _loc24_ = 0;
                        _loc25_ = 0;
                        _loc24_ = Number(_loc36_.var_99 - _loc30_.x);
                        _loc25_ = Number(_loc36_.var_100 - _loc30_.y);
                        _loc39_ = Number(Number(_loc24_ * _loc24_ + _loc25_ * _loc25_));
                        if(_loc39_ == 0)
                        {
                           _loc26_ = 0;
                        }
                        else
                        {
                           sf32(_loc39_,0);
                           _loc38_ = 1597463007 - (li32(0) >> 1);
                           si32(_loc38_,0);
                           _loc43_ = Number(lf32(0));
                           _loc26_ = Number(1 / (_loc43_ * (1.5 - 0.5 * _loc39_ * _loc43_ * _loc43_)));
                        }
                        _loc22_ = Number(_loc26_ - _loc36_.radius);
                        if(_loc22_ < _loc21_)
                        {
                           if(_loc26_ == 0)
                           {
                              _loc24_ = 1;
                              _loc25_ = 0;
                           }
                           else
                           {
                              _loc39_ = Number(1 / _loc26_);
                              _loc24_ = Number(_loc24_ * _loc39_);
                              _loc25_ = Number(_loc25_ * _loc39_);
                           }
                           _loc38_ = 0;
                           _loc28_.x = Number(_loc30_.x + _loc24_ * _loc38_);
                           _loc28_.y = Number(_loc30_.y + _loc25_ * _loc38_);
                           _loc39_ = Number(-_loc36_.radius);
                           _loc29_.x = Number(_loc36_.var_99 + _loc24_ * _loc39_);
                           _loc29_.y = Number(_loc36_.var_100 + _loc25_ * _loc39_);
                           _loc17_.x = _loc24_;
                           _loc17_.y = _loc25_;
                        }
                     }
                     else if(_loc23_ >= _loc31_.y * _loc33_.var_92 - _loc31_.x * _loc33_.var_91)
                     {
                        _loc24_ = 0;
                        _loc25_ = 0;
                        _loc24_ = Number(_loc36_.var_99 - _loc31_.x);
                        _loc25_ = Number(_loc36_.var_100 - _loc31_.y);
                        _loc39_ = Number(Number(_loc24_ * _loc24_ + _loc25_ * _loc25_));
                        if(_loc39_ == 0)
                        {
                           _loc26_ = 0;
                        }
                        else
                        {
                           sf32(_loc39_,0);
                           _loc38_ = 1597463007 - (li32(0) >> 1);
                           si32(_loc38_,0);
                           _loc43_ = Number(lf32(0));
                           _loc26_ = Number(1 / (_loc43_ * (1.5 - 0.5 * _loc39_ * _loc43_ * _loc43_)));
                        }
                        _loc22_ = Number(_loc26_ - _loc36_.radius);
                        if(_loc22_ < _loc21_)
                        {
                           if(_loc26_ == 0)
                           {
                              _loc24_ = 1;
                              _loc25_ = 0;
                           }
                           else
                           {
                              _loc39_ = Number(1 / _loc26_);
                              _loc24_ = Number(_loc24_ * _loc39_);
                              _loc25_ = Number(_loc25_ * _loc39_);
                           }
                           _loc38_ = 0;
                           _loc28_.x = Number(_loc31_.x + _loc24_ * _loc38_);
                           _loc28_.y = Number(_loc31_.y + _loc25_ * _loc38_);
                           _loc39_ = Number(-_loc36_.radius);
                           _loc29_.x = Number(_loc36_.var_99 + _loc24_ * _loc39_);
                           _loc29_.y = Number(_loc36_.var_100 + _loc25_ * _loc39_);
                           _loc17_.x = _loc24_;
                           _loc17_.y = _loc25_;
                        }
                     }
                     else
                     {
                        _loc24_ = Number(-_loc36_.radius);
                        _loc29_.x = Number(_loc36_.var_99 + _loc33_.var_92 * _loc24_);
                        _loc29_.y = Number(_loc36_.var_100 + _loc33_.var_91 * _loc24_);
                        _loc24_ = Number(-_loc22_);
                        _loc28_.x = Number(_loc29_.x + _loc33_.var_92 * _loc24_);
                        _loc28_.y = Number(_loc29_.y + _loc33_.var_91 * _loc24_);
                        _loc17_.x = _loc33_.var_92;
                        _loc17_.y = _loc33_.var_91;
                     }
                  }
                  if(_loc40_)
                  {
                     _loc17_.x = -_loc17_.x;
                     _loc17_.y = -_loc17_.y;
                  }
                  §§push(_loc22_);
               }
               else
               {
                  _loc27_ = _loc34_.name_6;
                  _loc44_ = _loc35_.name_6;
                  _loc22_ = -1.0e100;
                  _loc33_ = null;
                  _loc42_ = null;
                  _loc38_ = 0;
                  _loc32_ = _loc27_.name_11.var_73;
                  while(_loc32_ != null)
                  {
                     _loc45_ = _loc32_.var_74;
                     _loc23_ = 1.0e100;
                     _loc30_ = _loc44_.var_107.next;
                     while(_loc30_ != null)
                     {
                        _loc31_ = _loc30_;
                        _loc24_ = Number(Number(_loc45_.var_92 * _loc31_.x + _loc45_.var_91 * _loc31_.y));
                        if(_loc24_ < _loc23_)
                        {
                           _loc23_ = Number(_loc24_);
                        }
                        _loc30_ = _loc30_.next;
                     }
                     _loc23_ = Number(_loc23_ - _loc45_.gprojection);
                     if(_loc23_ > _loc21_)
                     {
                        _loc22_ = Number(_loc23_);
                        break;
                     }
                     if(_loc23_ > 0)
                     {
                        if(_loc23_ > _loc22_)
                        {
                           _loc22_ = Number(_loc23_);
                           _loc33_ = _loc45_;
                           _loc38_ = 1;
                        }
                     }
                     else if(_loc22_ < 0 && _loc23_ > _loc22_)
                     {
                        _loc22_ = Number(_loc23_);
                        _loc33_ = _loc45_;
                        _loc38_ = 1;
                     }
                     _loc32_ = _loc32_.next;
                  }
                  if(_loc22_ < _loc21_)
                  {
                     _loc32_ = _loc44_.name_11.var_73;
                     while(_loc32_ != null)
                     {
                        _loc45_ = _loc32_.var_74;
                        _loc23_ = 1.0e100;
                        _loc30_ = _loc27_.var_107.next;
                        while(_loc30_ != null)
                        {
                           _loc31_ = _loc30_;
                           _loc24_ = Number(Number(_loc45_.var_92 * _loc31_.x + _loc45_.var_91 * _loc31_.y));
                           if(_loc24_ < _loc23_)
                           {
                              _loc23_ = Number(_loc24_);
                           }
                           _loc30_ = _loc30_.next;
                        }
                        _loc23_ = Number(_loc23_ - _loc45_.gprojection);
                        if(_loc23_ > _loc21_)
                        {
                           _loc22_ = Number(_loc23_);
                           break;
                        }
                        if(_loc23_ > 0)
                        {
                           if(_loc23_ > _loc22_)
                           {
                              _loc22_ = Number(_loc23_);
                              _loc42_ = _loc45_;
                              _loc38_ = 2;
                           }
                        }
                        else if(_loc22_ < 0 && _loc23_ > _loc22_)
                        {
                           _loc22_ = Number(_loc23_);
                           _loc42_ = _loc45_;
                           _loc38_ = 2;
                        }
                        _loc32_ = _loc32_.next;
                     }
                     if(_loc22_ < _loc21_)
                     {
                        if(_loc38_ == 1)
                        {
                           _loc46_ = _loc27_;
                           _loc47_ = _loc44_;
                           _loc45_ = _loc33_;
                        }
                        else
                        {
                           _loc46_ = _loc44_;
                           _loc47_ = _loc27_;
                           _loc45_ = _loc42_;
                           _loc30_ = _loc28_;
                           _loc28_ = _loc29_;
                           _loc29_ = _loc30_;
                           _loc40_ = !_loc40_;
                        }
                        _loc48_ = null;
                        _loc23_ = 1.0e100;
                        _loc32_ = _loc47_.name_11.var_73;
                        while(_loc32_ != null)
                        {
                           _loc49_ = _loc32_.var_74;
                           _loc24_ = Number(Number(_loc45_.var_92 * _loc49_.var_92 + _loc45_.var_91 * _loc49_.var_91));
                           if(_loc24_ < _loc23_)
                           {
                              _loc23_ = Number(_loc24_);
                              _loc48_ = _loc49_;
                           }
                           _loc32_ = _loc32_.next;
                        }
                        if(_loc40_)
                        {
                           _loc17_.x = -_loc45_.var_92;
                           _loc17_.y = -_loc45_.var_91;
                        }
                        else
                        {
                           _loc17_.x = _loc45_.var_92;
                           _loc17_.y = _loc45_.var_91;
                        }
                        if(_loc22_ >= 0)
                        {
                           _loc30_ = _loc45_.gp0;
                           _loc31_ = _loc45_.gp1;
                           _loc50_ = _loc48_.gp0;
                           _loc51_ = _loc48_.gp1;
                           _loc24_ = 0;
                           _loc25_ = 0;
                           _loc26_ = 0;
                           _loc39_ = 0;
                           _loc24_ = Number(_loc31_.x - _loc30_.x);
                           _loc25_ = Number(_loc31_.y - _loc30_.y);
                           _loc26_ = Number(_loc51_.x - _loc50_.x);
                           _loc39_ = Number(_loc51_.y - _loc50_.y);
                           _loc43_ = Number(1 / (Number(_loc24_ * _loc24_ + _loc25_ * _loc25_)));
                           _loc52_ = Number(1 / (Number(_loc26_ * _loc26_ + _loc39_ * _loc39_)));
                           _loc53_ = Number(-(_loc24_ * (_loc30_.x - _loc50_.x) + _loc25_ * (_loc30_.y - _loc50_.y)) * _loc43_);
                           _loc54_ = Number(-(_loc24_ * (_loc30_.x - _loc51_.x) + _loc25_ * (_loc30_.y - _loc51_.y)) * _loc43_);
                           _loc55_ = Number(-(_loc26_ * (_loc50_.x - _loc30_.x) + _loc39_ * (_loc50_.y - _loc30_.y)) * _loc52_);
                           _loc56_ = Number(-(_loc26_ * (_loc50_.x - _loc31_.x) + _loc39_ * (_loc50_.y - _loc31_.y)) * _loc52_);
                           if(_loc53_ < 0)
                           {
                              _loc53_ = 0;
                           }
                           else if(_loc53_ > 1)
                           {
                              _loc53_ = 1;
                           }
                           if(_loc54_ < 0)
                           {
                              _loc54_ = 0;
                           }
                           else if(_loc54_ > 1)
                           {
                              _loc54_ = 1;
                           }
                           if(_loc55_ < 0)
                           {
                              _loc55_ = 0;
                           }
                           else if(_loc55_ > 1)
                           {
                              _loc55_ = 1;
                           }
                           if(_loc56_ < 0)
                           {
                              _loc56_ = 0;
                           }
                           else if(_loc56_ > 1)
                           {
                              _loc56_ = 1;
                           }
                           _loc57_ = 0;
                           _loc58_ = 0;
                           _loc59_ = Number(_loc53_);
                           _loc57_ = Number(Number(_loc30_.x + _loc24_ * _loc59_));
                           _loc58_ = Number(Number(_loc30_.y + _loc25_ * _loc59_));
                           _loc59_ = 0;
                           _loc60_ = 0;
                           _loc61_ = Number(_loc54_);
                           _loc59_ = Number(Number(_loc30_.x + _loc24_ * _loc61_));
                           _loc60_ = Number(Number(_loc30_.y + _loc25_ * _loc61_));
                           _loc61_ = 0;
                           _loc62_ = 0;
                           _loc63_ = Number(_loc55_);
                           _loc61_ = Number(Number(_loc50_.x + _loc26_ * _loc63_));
                           _loc62_ = Number(Number(_loc50_.y + _loc39_ * _loc63_));
                           _loc63_ = 0;
                           _loc64_ = 0;
                           _loc65_ = Number(_loc56_);
                           _loc63_ = Number(Number(_loc50_.x + _loc26_ * _loc65_));
                           _loc64_ = Number(Number(_loc50_.y + _loc39_ * _loc65_));
                           _loc66_ = 0;
                           _loc67_ = 0;
                           _loc66_ = Number(_loc57_ - _loc50_.x);
                           _loc67_ = Number(_loc58_ - _loc50_.y);
                           _loc65_ = Number(Number(_loc66_ * _loc66_ + _loc67_ * _loc67_));
                           _loc67_ = 0;
                           _loc68_ = 0;
                           _loc67_ = Number(_loc59_ - _loc51_.x);
                           _loc68_ = Number(_loc60_ - _loc51_.y);
                           _loc66_ = Number(Number(_loc67_ * _loc67_ + _loc68_ * _loc68_));
                           _loc68_ = 0;
                           _loc69_ = 0;
                           _loc68_ = Number(_loc61_ - _loc30_.x);
                           _loc69_ = Number(_loc62_ - _loc30_.y);
                           _loc67_ = Number(Number(_loc68_ * _loc68_ + _loc69_ * _loc69_));
                           _loc69_ = 0;
                           _loc70_ = 0;
                           _loc69_ = Number(_loc63_ - _loc31_.x);
                           _loc70_ = Number(_loc64_ - _loc31_.y);
                           _loc68_ = Number(Number(_loc69_ * _loc69_ + _loc70_ * _loc70_));
                           _loc69_ = 0;
                           _loc70_ = 0;
                           _loc71_ = null;
                           if(_loc65_ < _loc66_)
                           {
                              _loc69_ = Number(_loc57_);
                              _loc70_ = Number(_loc58_);
                              _loc71_ = _loc50_;
                           }
                           else
                           {
                              _loc69_ = Number(_loc59_);
                              _loc70_ = Number(_loc60_);
                              _loc71_ = _loc51_;
                              _loc65_ = Number(_loc66_);
                           }
                           _loc72_ = 0;
                           _loc73_ = 0;
                           _loc74_ = null;
                           if(_loc67_ < _loc68_)
                           {
                              _loc72_ = Number(_loc61_);
                              _loc73_ = Number(_loc62_);
                              _loc74_ = _loc30_;
                           }
                           else
                           {
                              _loc72_ = Number(_loc63_);
                              _loc73_ = Number(_loc64_);
                              _loc74_ = _loc31_;
                              _loc67_ = Number(_loc68_);
                           }
                           if(_loc65_ < _loc67_)
                           {
                              _loc28_.x = _loc69_;
                              _loc28_.y = _loc70_;
                              _loc29_.x = _loc71_.x;
                              _loc29_.y = _loc71_.y;
                              _loc22_ = Number(Number(Math.sqrt(_loc65_)));
                           }
                           else
                           {
                              _loc29_.x = _loc72_;
                              _loc29_.y = _loc73_;
                              _loc28_.x = _loc74_.x;
                              _loc28_.y = _loc74_.y;
                              _loc22_ = Number(Number(Math.sqrt(_loc67_)));
                           }
                           if(_loc22_ != 0)
                           {
                              _loc17_.x = _loc29_.x - _loc28_.x;
                              _loc17_.y = _loc29_.y - _loc28_.y;
                              _loc75_ = Number(1 / _loc22_);
                              _loc17_.x = _loc17_.x * _loc75_;
                              _loc17_.y = _loc17_.y * _loc75_;
                              if(_loc40_)
                              {
                                 _loc17_.x = -_loc17_.x;
                                 _loc17_.y = -_loc17_.y;
                              }
                           }
                           §§push(_loc22_);
                        }
                        else
                        {
                           _loc24_ = 0;
                           _loc25_ = 0;
                           _loc24_ = Number(_loc48_.gp0.x);
                           _loc25_ = Number(_loc48_.gp0.y);
                           _loc26_ = 0;
                           _loc39_ = 0;
                           _loc26_ = Number(_loc48_.gp1.x);
                           _loc39_ = Number(_loc48_.gp1.y);
                           _loc43_ = 0;
                           _loc52_ = 0;
                           _loc43_ = Number(_loc26_ - _loc24_);
                           _loc52_ = Number(_loc39_ - _loc25_);
                           _loc53_ = Number(_loc45_.var_91 * _loc24_ - _loc45_.var_92 * _loc25_);
                           _loc54_ = Number(_loc45_.var_91 * _loc26_ - _loc45_.var_92 * _loc39_);
                           _loc55_ = Number(1 / (_loc54_ - _loc53_));
                           _loc56_ = Number((-_loc45_.tp1 - _loc53_) * _loc55_);
                           if(_loc56_ > class_238.name_8)
                           {
                              _loc57_ = Number(_loc56_);
                              _loc24_ = Number(Number(_loc24_ + _loc43_ * _loc57_));
                              _loc25_ = Number(Number(_loc25_ + _loc52_ * _loc57_));
                           }
                           _loc57_ = Number((-_loc45_.tp0 - _loc54_) * _loc55_);
                           if(_loc57_ < -class_238.name_8)
                           {
                              _loc58_ = Number(_loc57_);
                              _loc26_ = Number(Number(_loc26_ + _loc43_ * _loc58_));
                              _loc39_ = Number(Number(_loc39_ + _loc52_ * _loc58_));
                           }
                           _loc58_ = Number(_loc24_ * _loc45_.var_92 + _loc25_ * _loc45_.var_91 - _loc45_.gprojection);
                           _loc59_ = Number(_loc26_ * _loc45_.var_92 + _loc39_ * _loc45_.var_91 - _loc45_.gprojection);
                           if(_loc58_ < _loc59_)
                           {
                              _loc29_.x = _loc24_;
                              _loc29_.y = _loc25_;
                              _loc60_ = Number(-_loc58_);
                              _loc28_.x = Number(_loc29_.x + _loc45_.var_92 * _loc60_);
                              _loc28_.y = Number(_loc29_.y + _loc45_.var_91 * _loc60_);
                              §§push(_loc58_);
                           }
                           else
                           {
                              _loc29_.x = _loc26_;
                              _loc29_.y = _loc39_;
                              _loc60_ = Number(-_loc59_);
                              _loc28_.x = Number(_loc29_.x + _loc45_.var_92 * _loc60_);
                              _loc28_.y = Number(_loc29_.y + _loc45_.var_91 * _loc60_);
                              §§push(_loc59_);
                           }
                        }
                     }
                     else
                     {
                        §§push(_loc21_);
                     }
                  }
                  else
                  {
                     §§push(_loc21_);
                  }
               }
            }
            _loc20_ = Number(§§pop() + param4);
            _loc21_ = Number(Number(_loc10_ * _loc17_.x + _loc11_ * _loc17_.y));
            if(_loc20_ < class_238.var_608)
            {
               if(param5)
               {
                  break;
               }
               _loc22_ = 0;
               _loc23_ = 0;
               _loc22_ = Number(_loc15_.x - _loc8_.var_95);
               _loc23_ = Number(_loc15_.y - _loc8_.var_96);
               _loc24_ = 0;
               _loc25_ = 0;
               _loc24_ = Number(_loc16_.x - _loc9_.var_95);
               _loc25_ = Number(_loc16_.y - _loc9_.var_96);
               _loc26_ = Number(Number(_loc21_ - _loc8_.var_191 * (_loc17_.y * _loc22_ - _loc17_.x * _loc23_) + _loc9_.var_191 * (_loc17_.y * _loc24_ - _loc17_.x * _loc25_)));
               if(_loc26_ > 0)
               {
                  param1.var_647 = true;
               }
               if(_loc26_ <= 0 || _loc20_ < class_238.var_608 * 0.5)
               {
                  break;
               }
            }
            _loc22_ = Number((_loc14_ - _loc21_) * param2);
            if(_loc22_ <= 0)
            {
               _loc18_ = -1;
               break;
            }
            _loc23_ = Number(_loc20_ / _loc22_);
            if(_loc23_ < 1.0e-6)
            {
               _loc23_ = 1.0e-6;
            }
            _loc18_ = Number(Number(_loc18_ + _loc23_));
            if(_loc18_ >= 1)
            {
               _loc18_ = 1;
               _loc24_ = Number(_loc18_ * param2);
               _loc25_ = Number(_loc24_ - _loc8_.var_176);
               if(_loc25_ != 0)
               {
                  _loc8_.var_176 = _loc24_;
                  _loc26_ = Number(_loc25_);
                  _loc8_.var_95 = Number(_loc8_.var_95 + _loc8_.var_104 * _loc26_);
                  _loc8_.var_96 = Number(_loc8_.var_96 + _loc8_.var_105 * _loc26_);
                  if(_loc8_.var_94 != 0)
                  {
                     _loc26_ = Number(_loc8_.var_191 * _loc25_);
                     _loc8_.var_93 = Number(_loc8_.var_93 + _loc26_);
                     if(_loc26_ * _loc26_ > 0.0001)
                     {
                        _loc8_.var_84 = Number(Math.sin(_loc8_.var_93));
                        _loc8_.var_83 = Number(Math.cos(_loc8_.var_93));
                        null;
                     }
                     else
                     {
                        _loc39_ = Number(_loc26_ * _loc26_);
                        _loc43_ = Number(1 - 0.5 * _loc39_);
                        _loc52_ = Number(1 - _loc39_ * _loc39_ / 8);
                        _loc53_ = Number((_loc43_ * _loc8_.var_84 + _loc26_ * _loc8_.var_83) * _loc52_);
                        _loc8_.var_83 = (_loc43_ * _loc8_.var_83 - _loc26_ * _loc8_.var_84) * _loc52_;
                        _loc8_.var_84 = _loc53_;
                     }
                  }
               }
               if(_loc6_.type == class_223.var_131)
               {
                  _loc6_.var_99 = Number(_loc8_.var_95 + (_loc8_.var_83 * _loc6_.var_82 - _loc8_.var_84 * _loc6_.var_81));
                  _loc6_.var_100 = Number(_loc8_.var_96 + (Number(_loc6_.var_82 * _loc8_.var_84 + _loc6_.var_81 * _loc8_.var_83)));
               }
               else
               {
                  _loc27_ = _loc6_.name_6;
                  _loc28_ = _loc27_.var_88.next;
                  _loc29_ = _loc27_.var_107.next;
                  while(_loc29_ != null)
                  {
                     _loc30_ = _loc29_;
                     _loc31_ = _loc28_;
                     _loc28_ = _loc28_.next;
                     _loc30_.x = Number(_loc8_.var_95 + (_loc8_.var_83 * _loc31_.x - _loc8_.var_84 * _loc31_.y));
                     _loc30_.y = Number(_loc8_.var_96 + (Number(_loc31_.x * _loc8_.var_84 + _loc31_.y * _loc8_.var_83)));
                     _loc29_ = _loc29_.next;
                  }
                  _loc32_ = _loc27_.name_11.var_73;
                  _loc29_ = _loc27_.var_107.next;
                  _loc30_ = _loc29_;
                  _loc29_ = _loc29_.next;
                  while(_loc29_ != null)
                  {
                     _loc31_ = _loc29_;
                     _loc33_ = _loc32_.var_74;
                     _loc32_ = _loc32_.next;
                     _loc33_.var_92 = _loc8_.var_83 * _loc33_.var_122 - _loc8_.var_84 * _loc33_.var_121;
                     _loc33_.var_91 = Number(_loc33_.var_122 * _loc8_.var_84 + _loc33_.var_121 * _loc8_.var_83);
                     _loc33_.gprojection = Number(Number(_loc8_.var_95 * _loc33_.var_92 + _loc8_.var_96 * _loc33_.var_91) + _loc33_.var_165);
                     _loc33_.tp0 = _loc30_.y * _loc33_.var_92 - _loc30_.x * _loc33_.var_91;
                     _loc33_.tp1 = _loc31_.y * _loc33_.var_92 - _loc31_.x * _loc33_.var_91;
                     _loc30_ = _loc31_;
                     _loc29_ = _loc29_.next;
                  }
                  _loc31_ = _loc27_.var_107.next;
                  _loc33_ = _loc32_.var_74;
                  _loc32_ = _loc32_.next;
                  _loc33_.var_92 = _loc8_.var_83 * _loc33_.var_122 - _loc8_.var_84 * _loc33_.var_121;
                  _loc33_.var_91 = Number(_loc33_.var_122 * _loc8_.var_84 + _loc33_.var_121 * _loc8_.var_83);
                  _loc33_.gprojection = Number(Number(_loc8_.var_95 * _loc33_.var_92 + _loc8_.var_96 * _loc33_.var_91) + _loc33_.var_165);
                  _loc33_.tp0 = _loc30_.y * _loc33_.var_92 - _loc30_.x * _loc33_.var_91;
                  _loc33_.tp1 = _loc31_.y * _loc33_.var_92 - _loc31_.x * _loc33_.var_91;
               }
               _loc24_ = Number(_loc18_ * param2);
               _loc25_ = Number(_loc24_ - _loc9_.var_176);
               if(_loc25_ != 0)
               {
                  _loc9_.var_176 = _loc24_;
                  _loc26_ = Number(_loc25_);
                  _loc9_.var_95 = Number(_loc9_.var_95 + _loc9_.var_104 * _loc26_);
                  _loc9_.var_96 = Number(_loc9_.var_96 + _loc9_.var_105 * _loc26_);
                  if(_loc9_.var_94 != 0)
                  {
                     _loc26_ = Number(_loc9_.var_191 * _loc25_);
                     _loc9_.var_93 = Number(_loc9_.var_93 + _loc26_);
                     if(_loc26_ * _loc26_ > 0.0001)
                     {
                        _loc9_.var_84 = Number(Math.sin(_loc9_.var_93));
                        _loc9_.var_83 = Number(Math.cos(_loc9_.var_93));
                        null;
                     }
                     else
                     {
                        _loc39_ = Number(_loc26_ * _loc26_);
                        _loc43_ = Number(1 - 0.5 * _loc39_);
                        _loc52_ = Number(1 - _loc39_ * _loc39_ / 8);
                        _loc53_ = Number((_loc43_ * _loc9_.var_84 + _loc26_ * _loc9_.var_83) * _loc52_);
                        _loc9_.var_83 = (_loc43_ * _loc9_.var_83 - _loc26_ * _loc9_.var_84) * _loc52_;
                        _loc9_.var_84 = _loc53_;
                     }
                  }
               }
               if(_loc7_.type == class_223.var_131)
               {
                  _loc7_.var_99 = Number(_loc9_.var_95 + (_loc9_.var_83 * _loc7_.var_82 - _loc9_.var_84 * _loc7_.var_81));
                  _loc7_.var_100 = Number(_loc9_.var_96 + (Number(_loc7_.var_82 * _loc9_.var_84 + _loc7_.var_81 * _loc9_.var_83)));
               }
               else
               {
                  _loc27_ = _loc7_.name_6;
                  _loc28_ = _loc27_.var_88.next;
                  _loc29_ = _loc27_.var_107.next;
                  while(_loc29_ != null)
                  {
                     _loc30_ = _loc29_;
                     _loc31_ = _loc28_;
                     _loc28_ = _loc28_.next;
                     _loc30_.x = Number(_loc9_.var_95 + (_loc9_.var_83 * _loc31_.x - _loc9_.var_84 * _loc31_.y));
                     _loc30_.y = Number(_loc9_.var_96 + (Number(_loc31_.x * _loc9_.var_84 + _loc31_.y * _loc9_.var_83)));
                     _loc29_ = _loc29_.next;
                  }
                  _loc32_ = _loc27_.name_11.var_73;
                  _loc29_ = _loc27_.var_107.next;
                  _loc30_ = _loc29_;
                  _loc29_ = _loc29_.next;
                  while(_loc29_ != null)
                  {
                     _loc31_ = _loc29_;
                     _loc33_ = _loc32_.var_74;
                     _loc32_ = _loc32_.next;
                     _loc33_.var_92 = _loc9_.var_83 * _loc33_.var_122 - _loc9_.var_84 * _loc33_.var_121;
                     _loc33_.var_91 = Number(_loc33_.var_122 * _loc9_.var_84 + _loc33_.var_121 * _loc9_.var_83);
                     _loc33_.gprojection = Number(Number(_loc9_.var_95 * _loc33_.var_92 + _loc9_.var_96 * _loc33_.var_91) + _loc33_.var_165);
                     _loc33_.tp0 = _loc30_.y * _loc33_.var_92 - _loc30_.x * _loc33_.var_91;
                     _loc33_.tp1 = _loc31_.y * _loc33_.var_92 - _loc31_.x * _loc33_.var_91;
                     _loc30_ = _loc31_;
                     _loc29_ = _loc29_.next;
                  }
                  _loc31_ = _loc27_.var_107.next;
                  _loc33_ = _loc32_.var_74;
                  _loc32_ = _loc32_.next;
                  _loc33_.var_92 = _loc9_.var_83 * _loc33_.var_122 - _loc9_.var_84 * _loc33_.var_121;
                  _loc33_.var_91 = Number(_loc33_.var_122 * _loc9_.var_84 + _loc33_.var_121 * _loc9_.var_83);
                  _loc33_.gprojection = Number(Number(_loc9_.var_95 * _loc33_.var_92 + _loc9_.var_96 * _loc33_.var_91) + _loc33_.var_165);
                  _loc33_.tp0 = _loc30_.y * _loc33_.var_92 - _loc30_.x * _loc33_.var_91;
                  _loc33_.tp1 = _loc31_.y * _loc33_.var_92 - _loc31_.x * _loc33_.var_91;
               }
               _loc34_ = _loc6_;
               _loc35_ = _loc7_;
               _loc28_ = _loc15_;
               _loc29_ = _loc16_;
               _loc25_ = 1.0e100;
               if(_loc34_.type == class_223.var_131 && _loc35_.type == class_223.var_131)
               {
                  _loc36_ = _loc34_.var_102;
                  _loc37_ = _loc35_.var_102;
                  _loc39_ = 0;
                  _loc43_ = 0;
                  _loc39_ = Number(_loc37_.var_99 - _loc36_.var_99);
                  _loc43_ = Number(_loc37_.var_100 - _loc36_.var_100);
                  _loc53_ = Number(Number(_loc39_ * _loc39_ + _loc43_ * _loc43_));
                  if(_loc53_ == 0)
                  {
                     _loc52_ = 0;
                  }
                  else
                  {
                     sf32(_loc53_,0);
                     _loc38_ = 1597463007 - (li32(0) >> 1);
                     si32(_loc38_,0);
                     _loc54_ = Number(lf32(0));
                     _loc52_ = Number(1 / (_loc54_ * (1.5 - 0.5 * _loc53_ * _loc54_ * _loc54_)));
                  }
                  _loc26_ = Number(_loc52_ - (Number(_loc36_.radius + _loc37_.radius)));
                  if(_loc26_ < _loc25_)
                  {
                     if(_loc52_ == 0)
                     {
                        _loc39_ = 1;
                        _loc43_ = 0;
                     }
                     else
                     {
                        _loc53_ = Number(1 / _loc52_);
                        _loc39_ = Number(_loc39_ * _loc53_);
                        _loc43_ = Number(_loc43_ * _loc53_);
                     }
                     _loc53_ = Number(_loc36_.radius);
                     _loc28_.x = Number(_loc36_.var_99 + _loc39_ * _loc53_);
                     _loc28_.y = Number(_loc36_.var_100 + _loc43_ * _loc53_);
                     _loc53_ = Number(-_loc37_.radius);
                     _loc29_.x = Number(_loc37_.var_99 + _loc39_ * _loc53_);
                     _loc29_.y = Number(_loc37_.var_100 + _loc43_ * _loc53_);
                     _loc17_.x = _loc39_;
                     _loc17_.y = _loc43_;
                  }
                  §§push(_loc26_);
               }
               else
               {
                  _loc40_ = false;
                  if(_loc34_.type == class_223.var_131 && _loc35_.type == class_223.var_155)
                  {
                     _loc41_ = _loc34_;
                     _loc34_ = _loc35_;
                     _loc35_ = _loc41_;
                     _loc30_ = _loc28_;
                     _loc28_ = _loc29_;
                     _loc29_ = _loc30_;
                     _loc40_ = true;
                  }
                  if(_loc34_.type == class_223.var_155 && _loc35_.type == class_223.var_131)
                  {
                     _loc27_ = _loc34_.name_6;
                     _loc36_ = _loc35_.var_102;
                     _loc26_ = -1.0e100;
                     _loc33_ = null;
                     _loc32_ = _loc27_.name_11.var_73;
                     while(_loc32_ != null)
                     {
                        _loc42_ = _loc32_.var_74;
                        _loc39_ = Number(_loc42_.var_92 * _loc36_.var_99 + _loc42_.var_91 * _loc36_.var_100 - _loc42_.gprojection - _loc36_.radius);
                        if(_loc39_ > _loc25_)
                        {
                           _loc26_ = Number(_loc39_);
                           break;
                        }
                        if(_loc39_ > 0)
                        {
                           if(_loc39_ > _loc26_)
                           {
                              _loc26_ = Number(_loc39_);
                              _loc33_ = _loc42_;
                           }
                        }
                        else if(_loc26_ < 0 && _loc39_ > _loc26_)
                        {
                           _loc26_ = Number(_loc39_);
                           _loc33_ = _loc42_;
                        }
                        _loc32_ = _loc32_.next;
                     }
                     if(_loc26_ < _loc25_)
                     {
                        _loc30_ = _loc33_.gp0;
                        _loc31_ = _loc33_.gp1;
                        _loc39_ = Number(_loc36_.var_100 * _loc33_.var_92 - _loc36_.var_99 * _loc33_.var_91);
                        if(_loc39_ <= _loc30_.y * _loc33_.var_92 - _loc30_.x * _loc33_.var_91)
                        {
                           _loc43_ = 0;
                           _loc52_ = 0;
                           _loc43_ = Number(_loc36_.var_99 - _loc30_.x);
                           _loc52_ = Number(_loc36_.var_100 - _loc30_.y);
                           _loc54_ = Number(Number(_loc43_ * _loc43_ + _loc52_ * _loc52_));
                           if(_loc54_ == 0)
                           {
                              _loc53_ = 0;
                           }
                           else
                           {
                              sf32(_loc54_,0);
                              _loc38_ = 1597463007 - (li32(0) >> 1);
                              si32(_loc38_,0);
                              _loc55_ = Number(lf32(0));
                              _loc53_ = Number(1 / (_loc55_ * (1.5 - 0.5 * _loc54_ * _loc55_ * _loc55_)));
                           }
                           _loc26_ = Number(_loc53_ - _loc36_.radius);
                           if(_loc26_ < _loc25_)
                           {
                              if(_loc53_ == 0)
                              {
                                 _loc43_ = 1;
                                 _loc52_ = 0;
                              }
                              else
                              {
                                 _loc54_ = Number(1 / _loc53_);
                                 _loc43_ = Number(_loc43_ * _loc54_);
                                 _loc52_ = Number(_loc52_ * _loc54_);
                              }
                              _loc38_ = 0;
                              _loc28_.x = Number(_loc30_.x + _loc43_ * _loc38_);
                              _loc28_.y = Number(_loc30_.y + _loc52_ * _loc38_);
                              _loc54_ = Number(-_loc36_.radius);
                              _loc29_.x = Number(_loc36_.var_99 + _loc43_ * _loc54_);
                              _loc29_.y = Number(_loc36_.var_100 + _loc52_ * _loc54_);
                              _loc17_.x = _loc43_;
                              _loc17_.y = _loc52_;
                           }
                        }
                        else if(_loc39_ >= _loc31_.y * _loc33_.var_92 - _loc31_.x * _loc33_.var_91)
                        {
                           _loc43_ = 0;
                           _loc52_ = 0;
                           _loc43_ = Number(_loc36_.var_99 - _loc31_.x);
                           _loc52_ = Number(_loc36_.var_100 - _loc31_.y);
                           _loc54_ = Number(Number(_loc43_ * _loc43_ + _loc52_ * _loc52_));
                           if(_loc54_ == 0)
                           {
                              _loc53_ = 0;
                           }
                           else
                           {
                              sf32(_loc54_,0);
                              _loc38_ = 1597463007 - (li32(0) >> 1);
                              si32(_loc38_,0);
                              _loc55_ = Number(lf32(0));
                              _loc53_ = Number(1 / (_loc55_ * (1.5 - 0.5 * _loc54_ * _loc55_ * _loc55_)));
                           }
                           _loc26_ = Number(_loc53_ - _loc36_.radius);
                           if(_loc26_ < _loc25_)
                           {
                              if(_loc53_ == 0)
                              {
                                 _loc43_ = 1;
                                 _loc52_ = 0;
                              }
                              else
                              {
                                 _loc54_ = Number(1 / _loc53_);
                                 _loc43_ = Number(_loc43_ * _loc54_);
                                 _loc52_ = Number(_loc52_ * _loc54_);
                              }
                              _loc38_ = 0;
                              _loc28_.x = Number(_loc31_.x + _loc43_ * _loc38_);
                              _loc28_.y = Number(_loc31_.y + _loc52_ * _loc38_);
                              _loc54_ = Number(-_loc36_.radius);
                              _loc29_.x = Number(_loc36_.var_99 + _loc43_ * _loc54_);
                              _loc29_.y = Number(_loc36_.var_100 + _loc52_ * _loc54_);
                              _loc17_.x = _loc43_;
                              _loc17_.y = _loc52_;
                           }
                        }
                        else
                        {
                           _loc43_ = Number(-_loc36_.radius);
                           _loc29_.x = Number(_loc36_.var_99 + _loc33_.var_92 * _loc43_);
                           _loc29_.y = Number(_loc36_.var_100 + _loc33_.var_91 * _loc43_);
                           _loc43_ = Number(-_loc26_);
                           _loc28_.x = Number(_loc29_.x + _loc33_.var_92 * _loc43_);
                           _loc28_.y = Number(_loc29_.y + _loc33_.var_91 * _loc43_);
                           _loc17_.x = _loc33_.var_92;
                           _loc17_.y = _loc33_.var_91;
                        }
                     }
                     if(_loc40_)
                     {
                        _loc17_.x = -_loc17_.x;
                        _loc17_.y = -_loc17_.y;
                     }
                     §§push(_loc26_);
                  }
                  else
                  {
                     _loc27_ = _loc34_.name_6;
                     _loc44_ = _loc35_.name_6;
                     _loc26_ = -1.0e100;
                     _loc33_ = null;
                     _loc42_ = null;
                     _loc38_ = 0;
                     _loc32_ = _loc27_.name_11.var_73;
                     while(_loc32_ != null)
                     {
                        _loc45_ = _loc32_.var_74;
                        _loc39_ = 1.0e100;
                        _loc30_ = _loc44_.var_107.next;
                        while(_loc30_ != null)
                        {
                           _loc31_ = _loc30_;
                           _loc43_ = Number(Number(_loc45_.var_92 * _loc31_.x + _loc45_.var_91 * _loc31_.y));
                           if(_loc43_ < _loc39_)
                           {
                              _loc39_ = Number(_loc43_);
                           }
                           _loc30_ = _loc30_.next;
                        }
                        _loc39_ = Number(_loc39_ - _loc45_.gprojection);
                        if(_loc39_ > _loc25_)
                        {
                           _loc26_ = Number(_loc39_);
                           break;
                        }
                        if(_loc39_ > 0)
                        {
                           if(_loc39_ > _loc26_)
                           {
                              _loc26_ = Number(_loc39_);
                              _loc33_ = _loc45_;
                              _loc38_ = 1;
                           }
                        }
                        else if(_loc26_ < 0 && _loc39_ > _loc26_)
                        {
                           _loc26_ = Number(_loc39_);
                           _loc33_ = _loc45_;
                           _loc38_ = 1;
                        }
                        _loc32_ = _loc32_.next;
                     }
                     if(_loc26_ < _loc25_)
                     {
                        _loc32_ = _loc44_.name_11.var_73;
                        while(_loc32_ != null)
                        {
                           _loc45_ = _loc32_.var_74;
                           _loc39_ = 1.0e100;
                           _loc30_ = _loc27_.var_107.next;
                           while(_loc30_ != null)
                           {
                              _loc31_ = _loc30_;
                              _loc43_ = Number(Number(_loc45_.var_92 * _loc31_.x + _loc45_.var_91 * _loc31_.y));
                              if(_loc43_ < _loc39_)
                              {
                                 _loc39_ = Number(_loc43_);
                              }
                              _loc30_ = _loc30_.next;
                           }
                           _loc39_ = Number(_loc39_ - _loc45_.gprojection);
                           if(_loc39_ > _loc25_)
                           {
                              _loc26_ = Number(_loc39_);
                              break;
                           }
                           if(_loc39_ > 0)
                           {
                              if(_loc39_ > _loc26_)
                              {
                                 _loc26_ = Number(_loc39_);
                                 _loc42_ = _loc45_;
                                 _loc38_ = 2;
                              }
                           }
                           else if(_loc26_ < 0 && _loc39_ > _loc26_)
                           {
                              _loc26_ = Number(_loc39_);
                              _loc42_ = _loc45_;
                              _loc38_ = 2;
                           }
                           _loc32_ = _loc32_.next;
                        }
                        if(_loc26_ < _loc25_)
                        {
                           if(_loc38_ == 1)
                           {
                              _loc46_ = _loc27_;
                              _loc47_ = _loc44_;
                              _loc45_ = _loc33_;
                           }
                           else
                           {
                              _loc46_ = _loc44_;
                              _loc47_ = _loc27_;
                              _loc45_ = _loc42_;
                              _loc30_ = _loc28_;
                              _loc28_ = _loc29_;
                              _loc29_ = _loc30_;
                              _loc40_ = !_loc40_;
                           }
                           _loc48_ = null;
                           _loc39_ = 1.0e100;
                           _loc32_ = _loc47_.name_11.var_73;
                           while(_loc32_ != null)
                           {
                              _loc49_ = _loc32_.var_74;
                              _loc43_ = Number(Number(_loc45_.var_92 * _loc49_.var_92 + _loc45_.var_91 * _loc49_.var_91));
                              if(_loc43_ < _loc39_)
                              {
                                 _loc39_ = Number(_loc43_);
                                 _loc48_ = _loc49_;
                              }
                              _loc32_ = _loc32_.next;
                           }
                           if(_loc40_)
                           {
                              _loc17_.x = -_loc45_.var_92;
                              _loc17_.y = -_loc45_.var_91;
                           }
                           else
                           {
                              _loc17_.x = _loc45_.var_92;
                              _loc17_.y = _loc45_.var_91;
                           }
                           if(_loc26_ >= 0)
                           {
                              _loc30_ = _loc45_.gp0;
                              _loc31_ = _loc45_.gp1;
                              _loc50_ = _loc48_.gp0;
                              _loc51_ = _loc48_.gp1;
                              _loc43_ = 0;
                              _loc52_ = 0;
                              _loc53_ = 0;
                              _loc54_ = 0;
                              _loc43_ = Number(_loc31_.x - _loc30_.x);
                              _loc52_ = Number(_loc31_.y - _loc30_.y);
                              _loc53_ = Number(_loc51_.x - _loc50_.x);
                              _loc54_ = Number(_loc51_.y - _loc50_.y);
                              _loc55_ = Number(1 / (Number(_loc43_ * _loc43_ + _loc52_ * _loc52_)));
                              _loc56_ = Number(1 / (Number(_loc53_ * _loc53_ + _loc54_ * _loc54_)));
                              _loc57_ = Number(-(_loc43_ * (_loc30_.x - _loc50_.x) + _loc52_ * (_loc30_.y - _loc50_.y)) * _loc55_);
                              _loc58_ = Number(-(_loc43_ * (_loc30_.x - _loc51_.x) + _loc52_ * (_loc30_.y - _loc51_.y)) * _loc55_);
                              _loc59_ = Number(-(_loc53_ * (_loc50_.x - _loc30_.x) + _loc54_ * (_loc50_.y - _loc30_.y)) * _loc56_);
                              _loc60_ = Number(-(_loc53_ * (_loc50_.x - _loc31_.x) + _loc54_ * (_loc50_.y - _loc31_.y)) * _loc56_);
                              if(_loc57_ < 0)
                              {
                                 _loc57_ = 0;
                              }
                              else if(_loc57_ > 1)
                              {
                                 _loc57_ = 1;
                              }
                              if(_loc58_ < 0)
                              {
                                 _loc58_ = 0;
                              }
                              else if(_loc58_ > 1)
                              {
                                 _loc58_ = 1;
                              }
                              if(_loc59_ < 0)
                              {
                                 _loc59_ = 0;
                              }
                              else if(_loc59_ > 1)
                              {
                                 _loc59_ = 1;
                              }
                              if(_loc60_ < 0)
                              {
                                 _loc60_ = 0;
                              }
                              else if(_loc60_ > 1)
                              {
                                 _loc60_ = 1;
                              }
                              _loc61_ = 0;
                              _loc62_ = 0;
                              _loc63_ = Number(_loc57_);
                              _loc61_ = Number(Number(_loc30_.x + _loc43_ * _loc63_));
                              _loc62_ = Number(Number(_loc30_.y + _loc52_ * _loc63_));
                              _loc63_ = 0;
                              _loc64_ = 0;
                              _loc65_ = Number(_loc58_);
                              _loc63_ = Number(Number(_loc30_.x + _loc43_ * _loc65_));
                              _loc64_ = Number(Number(_loc30_.y + _loc52_ * _loc65_));
                              _loc65_ = 0;
                              _loc66_ = 0;
                              _loc67_ = Number(_loc59_);
                              _loc65_ = Number(Number(_loc50_.x + _loc53_ * _loc67_));
                              _loc66_ = Number(Number(_loc50_.y + _loc54_ * _loc67_));
                              _loc67_ = 0;
                              _loc68_ = 0;
                              _loc69_ = Number(_loc60_);
                              _loc67_ = Number(Number(_loc50_.x + _loc53_ * _loc69_));
                              _loc68_ = Number(Number(_loc50_.y + _loc54_ * _loc69_));
                              _loc70_ = 0;
                              _loc72_ = 0;
                              _loc70_ = Number(_loc61_ - _loc50_.x);
                              _loc72_ = Number(_loc62_ - _loc50_.y);
                              _loc69_ = Number(Number(_loc70_ * _loc70_ + _loc72_ * _loc72_));
                              _loc72_ = 0;
                              _loc73_ = 0;
                              _loc72_ = Number(_loc63_ - _loc51_.x);
                              _loc73_ = Number(_loc64_ - _loc51_.y);
                              _loc70_ = Number(Number(_loc72_ * _loc72_ + _loc73_ * _loc73_));
                              _loc73_ = 0;
                              _loc75_ = 0;
                              _loc73_ = Number(_loc65_ - _loc30_.x);
                              _loc75_ = Number(_loc66_ - _loc30_.y);
                              _loc72_ = Number(Number(_loc73_ * _loc73_ + _loc75_ * _loc75_));
                              _loc75_ = 0;
                              _loc76_ = 0;
                              _loc75_ = Number(_loc67_ - _loc31_.x);
                              _loc76_ = Number(_loc68_ - _loc31_.y);
                              _loc73_ = Number(Number(_loc75_ * _loc75_ + _loc76_ * _loc76_));
                              _loc75_ = 0;
                              _loc76_ = 0;
                              _loc71_ = null;
                              if(_loc69_ < _loc70_)
                              {
                                 _loc75_ = Number(_loc61_);
                                 _loc76_ = Number(_loc62_);
                                 _loc71_ = _loc50_;
                              }
                              else
                              {
                                 _loc75_ = Number(_loc63_);
                                 _loc76_ = Number(_loc64_);
                                 _loc71_ = _loc51_;
                                 _loc69_ = Number(_loc70_);
                              }
                              _loc77_ = 0;
                              _loc78_ = 0;
                              _loc74_ = null;
                              if(_loc72_ < _loc73_)
                              {
                                 _loc77_ = Number(_loc65_);
                                 _loc78_ = Number(_loc66_);
                                 _loc74_ = _loc30_;
                              }
                              else
                              {
                                 _loc77_ = Number(_loc67_);
                                 _loc78_ = Number(_loc68_);
                                 _loc74_ = _loc31_;
                                 _loc72_ = Number(_loc73_);
                              }
                              if(_loc69_ < _loc72_)
                              {
                                 _loc28_.x = _loc75_;
                                 _loc28_.y = _loc76_;
                                 _loc29_.x = _loc71_.x;
                                 _loc29_.y = _loc71_.y;
                                 _loc26_ = Number(Number(Math.sqrt(_loc69_)));
                              }
                              else
                              {
                                 _loc29_.x = _loc77_;
                                 _loc29_.y = _loc78_;
                                 _loc28_.x = _loc74_.x;
                                 _loc28_.y = _loc74_.y;
                                 _loc26_ = Number(Number(Math.sqrt(_loc72_)));
                              }
                              if(_loc26_ != 0)
                              {
                                 _loc17_.x = _loc29_.x - _loc28_.x;
                                 _loc17_.y = _loc29_.y - _loc28_.y;
                                 _loc79_ = 1 / _loc26_;
                                 _loc17_.x = _loc17_.x * _loc79_;
                                 _loc17_.y = _loc17_.y * _loc79_;
                                 if(_loc40_)
                                 {
                                    _loc17_.x = -_loc17_.x;
                                    _loc17_.y = -_loc17_.y;
                                 }
                              }
                              §§push(_loc26_);
                           }
                           else
                           {
                              _loc43_ = 0;
                              _loc52_ = 0;
                              _loc43_ = Number(_loc48_.gp0.x);
                              _loc52_ = Number(_loc48_.gp0.y);
                              _loc53_ = 0;
                              _loc54_ = 0;
                              _loc53_ = Number(_loc48_.gp1.x);
                              _loc54_ = Number(_loc48_.gp1.y);
                              _loc55_ = 0;
                              _loc56_ = 0;
                              _loc55_ = Number(_loc53_ - _loc43_);
                              _loc56_ = Number(_loc54_ - _loc52_);
                              _loc57_ = Number(_loc45_.var_91 * _loc43_ - _loc45_.var_92 * _loc52_);
                              _loc58_ = Number(_loc45_.var_91 * _loc53_ - _loc45_.var_92 * _loc54_);
                              _loc59_ = Number(1 / (_loc58_ - _loc57_));
                              _loc60_ = Number((-_loc45_.tp1 - _loc57_) * _loc59_);
                              if(_loc60_ > class_238.name_8)
                              {
                                 _loc61_ = Number(_loc60_);
                                 _loc43_ = Number(Number(_loc43_ + _loc55_ * _loc61_));
                                 _loc52_ = Number(Number(_loc52_ + _loc56_ * _loc61_));
                              }
                              _loc61_ = Number((-_loc45_.tp0 - _loc58_) * _loc59_);
                              if(_loc61_ < -class_238.name_8)
                              {
                                 _loc62_ = Number(_loc61_);
                                 _loc53_ = Number(Number(_loc53_ + _loc55_ * _loc62_));
                                 _loc54_ = Number(Number(_loc54_ + _loc56_ * _loc62_));
                              }
                              _loc62_ = Number(_loc43_ * _loc45_.var_92 + _loc52_ * _loc45_.var_91 - _loc45_.gprojection);
                              _loc63_ = Number(_loc53_ * _loc45_.var_92 + _loc54_ * _loc45_.var_91 - _loc45_.gprojection);
                              if(_loc62_ < _loc63_)
                              {
                                 _loc29_.x = _loc43_;
                                 _loc29_.y = _loc52_;
                                 _loc64_ = Number(-_loc62_);
                                 _loc28_.x = Number(_loc29_.x + _loc45_.var_92 * _loc64_);
                                 _loc28_.y = Number(_loc29_.y + _loc45_.var_91 * _loc64_);
                                 §§push(_loc62_);
                              }
                              else
                              {
                                 _loc29_.x = _loc53_;
                                 _loc29_.y = _loc54_;
                                 _loc64_ = Number(-_loc63_);
                                 _loc28_.x = Number(_loc29_.x + _loc45_.var_92 * _loc64_);
                                 _loc28_.y = Number(_loc29_.y + _loc45_.var_91 * _loc64_);
                                 §§push(_loc63_);
                              }
                           }
                        }
                        else
                        {
                           §§push(_loc25_);
                        }
                     }
                     else
                     {
                        §§push(_loc25_);
                     }
                  }
               }
               _loc24_ = Number(Number(§§pop() + param4));
               _loc25_ = Number(Number(_loc10_ * _loc17_.x + _loc11_ * _loc17_.y));
               if(_loc24_ < class_238.var_608)
               {
                  if(param5)
                  {
                     break;
                  }
                  _loc26_ = 0;
                  _loc39_ = 0;
                  _loc26_ = Number(_loc15_.x - _loc8_.var_95);
                  _loc39_ = Number(_loc15_.y - _loc8_.var_96);
                  _loc43_ = 0;
                  _loc52_ = 0;
                  _loc43_ = Number(_loc16_.x - _loc9_.var_95);
                  _loc52_ = Number(_loc16_.y - _loc9_.var_96);
                  _loc53_ = Number(Number(_loc25_ - _loc8_.var_191 * (_loc17_.y * _loc26_ - _loc17_.x * _loc39_) + _loc9_.var_191 * (_loc17_.y * _loc43_ - _loc17_.x * _loc52_)));
                  if(_loc53_ > 0)
                  {
                     param1.var_647 = true;
                  }
                  if(_loc53_ <= 0 || _loc24_ < class_238.var_608 * 0.5)
                  {
                     break;
                  }
               }
               _loc18_ = -1;
               break;
            }
            _loc19_++;
            if(_loc19_ >= 40)
            {
               if(_loc20_ > param4)
               {
                  param1.var_143 = true;
                  break;
               }
               break;
            }
         }
         param1.name_51 = _loc18_;
      }
      
      public static function method_284(param1:ZPP_ToiEvent, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc18_:Number = NaN;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         var _loc21_:* = NaN;
         var _loc22_:* = NaN;
         var _loc23_:* = NaN;
         var _loc24_:* = NaN;
         var _loc25_:* = null as ZPP_Polygon;
         var _loc26_:* = null as ZPP_Vec2;
         var _loc27_:* = null as ZPP_Vec2;
         var _loc28_:* = null as ZPP_Vec2;
         var _loc29_:* = null as ZPP_Vec2;
         var _loc30_:* = null as ZNPNode_ZPP_Edge;
         var _loc31_:* = null as ZPP_Edge;
         var _loc32_:* = null as ZPP_Shape;
         var _loc33_:* = null as ZPP_Shape;
         var _loc34_:* = null as ZPP_Circle;
         var _loc35_:* = null as ZPP_Circle;
         var _loc36_:* = 0;
         var _loc37_:* = NaN;
         var _loc38_:* = false;
         var _loc39_:* = null as ZPP_Shape;
         var _loc40_:* = null as ZPP_Edge;
         var _loc41_:* = NaN;
         var _loc42_:* = null as ZPP_Polygon;
         var _loc43_:* = null as ZPP_Edge;
         var _loc44_:* = null as ZPP_Polygon;
         var _loc45_:* = null as ZPP_Polygon;
         var _loc46_:* = null as ZPP_Edge;
         var _loc47_:* = null as ZPP_Edge;
         var _loc48_:* = null as ZPP_Vec2;
         var _loc49_:* = null as ZPP_Vec2;
         var _loc50_:* = NaN;
         var _loc51_:* = NaN;
         var _loc52_:* = NaN;
         var _loc53_:* = NaN;
         var _loc54_:* = NaN;
         var _loc55_:* = NaN;
         var _loc56_:* = NaN;
         var _loc57_:* = NaN;
         var _loc58_:* = NaN;
         var _loc59_:* = NaN;
         var _loc60_:* = NaN;
         var _loc61_:* = NaN;
         var _loc62_:* = NaN;
         var _loc63_:* = NaN;
         var _loc64_:* = NaN;
         var _loc65_:* = NaN;
         var _loc66_:* = NaN;
         var _loc67_:* = NaN;
         var _loc68_:* = NaN;
         var _loc69_:* = null as ZPP_Vec2;
         var _loc70_:* = NaN;
         var _loc71_:* = NaN;
         var _loc72_:* = null as ZPP_Vec2;
         var _loc73_:* = NaN;
         var _loc74_:* = NaN;
         var _loc75_:* = NaN;
         var _loc76_:* = NaN;
         var _loc77_:Number = NaN;
         var _loc5_:ZPP_Shape = param1.s1;
         var _loc6_:ZPP_Shape = param1.s2;
         var _loc7_:ZPP_Body = _loc5_.body;
         var _loc8_:ZPP_Body = _loc6_.body;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         _loc9_ = Number(-_loc7_.var_104);
         _loc10_ = Number(-_loc7_.var_105);
         var _loc11_:Number = _loc7_.var_191;
         if(_loc11_ < 0)
         {
            _loc11_ = -_loc11_;
         }
         var _loc12_:Number = _loc5_.var_366 * _loc11_;
         var _loc13_:ZPP_Vec2 = param1.c1;
         var _loc14_:ZPP_Vec2 = param1.c2;
         var _loc15_:ZPP_Vec2 = param1.var_561;
         var _loc16_:* = Number(param3);
         var _loc17_:int = 0;
         while(true)
         {
            _loc18_ = _loc16_ * param2;
            _loc19_ = Number(_loc18_ - _loc7_.var_176);
            if(_loc19_ != 0)
            {
               _loc7_.var_176 = _loc18_;
               _loc20_ = Number(_loc19_);
               _loc7_.var_95 = Number(_loc7_.var_95 + _loc7_.var_104 * _loc20_);
               _loc7_.var_96 = Number(_loc7_.var_96 + _loc7_.var_105 * _loc20_);
               if(_loc7_.var_94 != 0)
               {
                  _loc20_ = Number(_loc7_.var_191 * _loc19_);
                  _loc7_.var_93 = Number(_loc7_.var_93 + _loc20_);
                  if(_loc20_ * _loc20_ > 0.0001)
                  {
                     _loc7_.var_84 = Number(Math.sin(_loc7_.var_93));
                     _loc7_.var_83 = Number(Math.cos(_loc7_.var_93));
                     null;
                  }
                  else
                  {
                     _loc21_ = Number(_loc20_ * _loc20_);
                     _loc22_ = Number(1 - 0.5 * _loc21_);
                     _loc23_ = Number(1 - _loc21_ * _loc21_ / 8);
                     _loc24_ = Number((_loc22_ * _loc7_.var_84 + _loc20_ * _loc7_.var_83) * _loc23_);
                     _loc7_.var_83 = (_loc22_ * _loc7_.var_83 - _loc20_ * _loc7_.var_84) * _loc23_;
                     _loc7_.var_84 = _loc24_;
                  }
               }
            }
            if(_loc5_.type == class_223.var_131)
            {
               _loc5_.var_99 = Number(_loc7_.var_95 + (_loc7_.var_83 * _loc5_.var_82 - _loc7_.var_84 * _loc5_.var_81));
               _loc5_.var_100 = Number(_loc7_.var_96 + (Number(_loc5_.var_82 * _loc7_.var_84 + _loc5_.var_81 * _loc7_.var_83)));
            }
            else
            {
               _loc25_ = _loc5_.name_6;
               _loc26_ = _loc25_.var_88.next;
               _loc27_ = _loc25_.var_107.next;
               while(_loc27_ != null)
               {
                  _loc28_ = _loc27_;
                  _loc29_ = _loc26_;
                  _loc26_ = _loc26_.next;
                  _loc28_.x = Number(_loc7_.var_95 + (_loc7_.var_83 * _loc29_.x - _loc7_.var_84 * _loc29_.y));
                  _loc28_.y = Number(_loc7_.var_96 + (Number(_loc29_.x * _loc7_.var_84 + _loc29_.y * _loc7_.var_83)));
                  _loc27_ = _loc27_.next;
               }
               _loc30_ = _loc25_.name_11.var_73;
               _loc27_ = _loc25_.var_107.next;
               _loc28_ = _loc27_;
               _loc27_ = _loc27_.next;
               while(_loc27_ != null)
               {
                  _loc29_ = _loc27_;
                  _loc31_ = _loc30_.var_74;
                  _loc30_ = _loc30_.next;
                  _loc31_.var_92 = _loc7_.var_83 * _loc31_.var_122 - _loc7_.var_84 * _loc31_.var_121;
                  _loc31_.var_91 = Number(_loc31_.var_122 * _loc7_.var_84 + _loc31_.var_121 * _loc7_.var_83);
                  _loc31_.gprojection = Number(Number(_loc7_.var_95 * _loc31_.var_92 + _loc7_.var_96 * _loc31_.var_91) + _loc31_.var_165);
                  _loc31_.tp0 = _loc28_.y * _loc31_.var_92 - _loc28_.x * _loc31_.var_91;
                  _loc31_.tp1 = _loc29_.y * _loc31_.var_92 - _loc29_.x * _loc31_.var_91;
                  _loc28_ = _loc29_;
                  _loc27_ = _loc27_.next;
               }
               _loc29_ = _loc25_.var_107.next;
               _loc31_ = _loc30_.var_74;
               _loc30_ = _loc30_.next;
               _loc31_.var_92 = _loc7_.var_83 * _loc31_.var_122 - _loc7_.var_84 * _loc31_.var_121;
               _loc31_.var_91 = Number(_loc31_.var_122 * _loc7_.var_84 + _loc31_.var_121 * _loc7_.var_83);
               _loc31_.gprojection = Number(Number(_loc7_.var_95 * _loc31_.var_92 + _loc7_.var_96 * _loc31_.var_91) + _loc31_.var_165);
               _loc31_.tp0 = _loc28_.y * _loc31_.var_92 - _loc28_.x * _loc31_.var_91;
               _loc31_.tp1 = _loc29_.y * _loc31_.var_92 - _loc29_.x * _loc31_.var_91;
            }
            _loc32_ = _loc5_;
            _loc33_ = _loc6_;
            _loc26_ = _loc13_;
            _loc27_ = _loc14_;
            _loc19_ = 1.0e100;
            if(_loc32_.type == class_223.var_131 && _loc33_.type == class_223.var_131)
            {
               _loc34_ = _loc32_.var_102;
               _loc35_ = _loc33_.var_102;
               _loc21_ = 0;
               _loc22_ = 0;
               _loc21_ = Number(_loc35_.var_99 - _loc34_.var_99);
               _loc22_ = Number(_loc35_.var_100 - _loc34_.var_100);
               _loc24_ = Number(Number(_loc21_ * _loc21_ + _loc22_ * _loc22_));
               if(_loc24_ == 0)
               {
                  _loc23_ = 0;
               }
               else
               {
                  sf32(_loc24_,0);
                  _loc36_ = 1597463007 - (li32(0) >> 1);
                  si32(_loc36_,0);
                  _loc37_ = Number(lf32(0));
                  _loc23_ = Number(1 / (_loc37_ * (1.5 - 0.5 * _loc24_ * _loc37_ * _loc37_)));
               }
               _loc20_ = Number(_loc23_ - (Number(_loc34_.radius + _loc35_.radius)));
               if(_loc20_ < _loc19_)
               {
                  if(_loc23_ == 0)
                  {
                     _loc21_ = 1;
                     _loc22_ = 0;
                  }
                  else
                  {
                     _loc24_ = Number(1 / _loc23_);
                     _loc21_ = Number(_loc21_ * _loc24_);
                     _loc22_ = Number(_loc22_ * _loc24_);
                  }
                  _loc24_ = Number(_loc34_.radius);
                  _loc26_.x = Number(_loc34_.var_99 + _loc21_ * _loc24_);
                  _loc26_.y = Number(_loc34_.var_100 + _loc22_ * _loc24_);
                  _loc24_ = Number(-_loc35_.radius);
                  _loc27_.x = Number(_loc35_.var_99 + _loc21_ * _loc24_);
                  _loc27_.y = Number(_loc35_.var_100 + _loc22_ * _loc24_);
                  _loc15_.x = _loc21_;
                  _loc15_.y = _loc22_;
               }
               §§push(_loc20_);
            }
            else
            {
               _loc38_ = false;
               if(_loc32_.type == class_223.var_131 && _loc33_.type == class_223.var_155)
               {
                  _loc39_ = _loc32_;
                  _loc32_ = _loc33_;
                  _loc33_ = _loc39_;
                  _loc28_ = _loc26_;
                  _loc26_ = _loc27_;
                  _loc27_ = _loc28_;
                  _loc38_ = true;
               }
               if(_loc32_.type == class_223.var_155 && _loc33_.type == class_223.var_131)
               {
                  _loc25_ = _loc32_.name_6;
                  _loc34_ = _loc33_.var_102;
                  _loc20_ = -1.0e100;
                  _loc31_ = null;
                  _loc30_ = _loc25_.name_11.var_73;
                  while(_loc30_ != null)
                  {
                     _loc40_ = _loc30_.var_74;
                     _loc21_ = Number(_loc40_.var_92 * _loc34_.var_99 + _loc40_.var_91 * _loc34_.var_100 - _loc40_.gprojection - _loc34_.radius);
                     if(_loc21_ > _loc19_)
                     {
                        _loc20_ = Number(_loc21_);
                        break;
                     }
                     if(_loc21_ > 0)
                     {
                        if(_loc21_ > _loc20_)
                        {
                           _loc20_ = Number(_loc21_);
                           _loc31_ = _loc40_;
                        }
                     }
                     else if(_loc20_ < 0 && _loc21_ > _loc20_)
                     {
                        _loc20_ = Number(_loc21_);
                        _loc31_ = _loc40_;
                     }
                     _loc30_ = _loc30_.next;
                  }
                  if(_loc20_ < _loc19_)
                  {
                     _loc28_ = _loc31_.gp0;
                     _loc29_ = _loc31_.gp1;
                     _loc21_ = Number(_loc34_.var_100 * _loc31_.var_92 - _loc34_.var_99 * _loc31_.var_91);
                     if(_loc21_ <= _loc28_.y * _loc31_.var_92 - _loc28_.x * _loc31_.var_91)
                     {
                        _loc22_ = 0;
                        _loc23_ = 0;
                        _loc22_ = Number(_loc34_.var_99 - _loc28_.x);
                        _loc23_ = Number(_loc34_.var_100 - _loc28_.y);
                        _loc37_ = Number(Number(_loc22_ * _loc22_ + _loc23_ * _loc23_));
                        if(_loc37_ == 0)
                        {
                           _loc24_ = 0;
                        }
                        else
                        {
                           sf32(_loc37_,0);
                           _loc36_ = 1597463007 - (li32(0) >> 1);
                           si32(_loc36_,0);
                           _loc41_ = Number(lf32(0));
                           _loc24_ = Number(1 / (_loc41_ * (1.5 - 0.5 * _loc37_ * _loc41_ * _loc41_)));
                        }
                        _loc20_ = Number(_loc24_ - _loc34_.radius);
                        if(_loc20_ < _loc19_)
                        {
                           if(_loc24_ == 0)
                           {
                              _loc22_ = 1;
                              _loc23_ = 0;
                           }
                           else
                           {
                              _loc37_ = Number(1 / _loc24_);
                              _loc22_ = Number(_loc22_ * _loc37_);
                              _loc23_ = Number(_loc23_ * _loc37_);
                           }
                           _loc36_ = 0;
                           _loc26_.x = Number(_loc28_.x + _loc22_ * _loc36_);
                           _loc26_.y = Number(_loc28_.y + _loc23_ * _loc36_);
                           _loc37_ = Number(-_loc34_.radius);
                           _loc27_.x = Number(_loc34_.var_99 + _loc22_ * _loc37_);
                           _loc27_.y = Number(_loc34_.var_100 + _loc23_ * _loc37_);
                           _loc15_.x = _loc22_;
                           _loc15_.y = _loc23_;
                        }
                     }
                     else if(_loc21_ >= _loc29_.y * _loc31_.var_92 - _loc29_.x * _loc31_.var_91)
                     {
                        _loc22_ = 0;
                        _loc23_ = 0;
                        _loc22_ = Number(_loc34_.var_99 - _loc29_.x);
                        _loc23_ = Number(_loc34_.var_100 - _loc29_.y);
                        _loc37_ = Number(Number(_loc22_ * _loc22_ + _loc23_ * _loc23_));
                        if(_loc37_ == 0)
                        {
                           _loc24_ = 0;
                        }
                        else
                        {
                           sf32(_loc37_,0);
                           _loc36_ = 1597463007 - (li32(0) >> 1);
                           si32(_loc36_,0);
                           _loc41_ = Number(lf32(0));
                           _loc24_ = Number(1 / (_loc41_ * (1.5 - 0.5 * _loc37_ * _loc41_ * _loc41_)));
                        }
                        _loc20_ = Number(_loc24_ - _loc34_.radius);
                        if(_loc20_ < _loc19_)
                        {
                           if(_loc24_ == 0)
                           {
                              _loc22_ = 1;
                              _loc23_ = 0;
                           }
                           else
                           {
                              _loc37_ = Number(1 / _loc24_);
                              _loc22_ = Number(_loc22_ * _loc37_);
                              _loc23_ = Number(_loc23_ * _loc37_);
                           }
                           _loc36_ = 0;
                           _loc26_.x = Number(_loc29_.x + _loc22_ * _loc36_);
                           _loc26_.y = Number(_loc29_.y + _loc23_ * _loc36_);
                           _loc37_ = Number(-_loc34_.radius);
                           _loc27_.x = Number(_loc34_.var_99 + _loc22_ * _loc37_);
                           _loc27_.y = Number(_loc34_.var_100 + _loc23_ * _loc37_);
                           _loc15_.x = _loc22_;
                           _loc15_.y = _loc23_;
                        }
                     }
                     else
                     {
                        _loc22_ = Number(-_loc34_.radius);
                        _loc27_.x = Number(_loc34_.var_99 + _loc31_.var_92 * _loc22_);
                        _loc27_.y = Number(_loc34_.var_100 + _loc31_.var_91 * _loc22_);
                        _loc22_ = Number(-_loc20_);
                        _loc26_.x = Number(_loc27_.x + _loc31_.var_92 * _loc22_);
                        _loc26_.y = Number(_loc27_.y + _loc31_.var_91 * _loc22_);
                        _loc15_.x = _loc31_.var_92;
                        _loc15_.y = _loc31_.var_91;
                     }
                  }
                  if(_loc38_)
                  {
                     _loc15_.x = -_loc15_.x;
                     _loc15_.y = -_loc15_.y;
                  }
                  §§push(_loc20_);
               }
               else
               {
                  _loc25_ = _loc32_.name_6;
                  _loc42_ = _loc33_.name_6;
                  _loc20_ = -1.0e100;
                  _loc31_ = null;
                  _loc40_ = null;
                  _loc36_ = 0;
                  _loc30_ = _loc25_.name_11.var_73;
                  while(_loc30_ != null)
                  {
                     _loc43_ = _loc30_.var_74;
                     _loc21_ = 1.0e100;
                     _loc28_ = _loc42_.var_107.next;
                     while(_loc28_ != null)
                     {
                        _loc29_ = _loc28_;
                        _loc22_ = Number(Number(_loc43_.var_92 * _loc29_.x + _loc43_.var_91 * _loc29_.y));
                        if(_loc22_ < _loc21_)
                        {
                           _loc21_ = Number(_loc22_);
                        }
                        _loc28_ = _loc28_.next;
                     }
                     _loc21_ = Number(_loc21_ - _loc43_.gprojection);
                     if(_loc21_ > _loc19_)
                     {
                        _loc20_ = Number(_loc21_);
                        break;
                     }
                     if(_loc21_ > 0)
                     {
                        if(_loc21_ > _loc20_)
                        {
                           _loc20_ = Number(_loc21_);
                           _loc31_ = _loc43_;
                           _loc36_ = 1;
                        }
                     }
                     else if(_loc20_ < 0 && _loc21_ > _loc20_)
                     {
                        _loc20_ = Number(_loc21_);
                        _loc31_ = _loc43_;
                        _loc36_ = 1;
                     }
                     _loc30_ = _loc30_.next;
                  }
                  if(_loc20_ < _loc19_)
                  {
                     _loc30_ = _loc42_.name_11.var_73;
                     while(_loc30_ != null)
                     {
                        _loc43_ = _loc30_.var_74;
                        _loc21_ = 1.0e100;
                        _loc28_ = _loc25_.var_107.next;
                        while(_loc28_ != null)
                        {
                           _loc29_ = _loc28_;
                           _loc22_ = Number(Number(_loc43_.var_92 * _loc29_.x + _loc43_.var_91 * _loc29_.y));
                           if(_loc22_ < _loc21_)
                           {
                              _loc21_ = Number(_loc22_);
                           }
                           _loc28_ = _loc28_.next;
                        }
                        _loc21_ = Number(_loc21_ - _loc43_.gprojection);
                        if(_loc21_ > _loc19_)
                        {
                           _loc20_ = Number(_loc21_);
                           break;
                        }
                        if(_loc21_ > 0)
                        {
                           if(_loc21_ > _loc20_)
                           {
                              _loc20_ = Number(_loc21_);
                              _loc40_ = _loc43_;
                              _loc36_ = 2;
                           }
                        }
                        else if(_loc20_ < 0 && _loc21_ > _loc20_)
                        {
                           _loc20_ = Number(_loc21_);
                           _loc40_ = _loc43_;
                           _loc36_ = 2;
                        }
                        _loc30_ = _loc30_.next;
                     }
                     if(_loc20_ < _loc19_)
                     {
                        if(_loc36_ == 1)
                        {
                           _loc44_ = _loc25_;
                           _loc45_ = _loc42_;
                           _loc43_ = _loc31_;
                        }
                        else
                        {
                           _loc44_ = _loc42_;
                           _loc45_ = _loc25_;
                           _loc43_ = _loc40_;
                           _loc28_ = _loc26_;
                           _loc26_ = _loc27_;
                           _loc27_ = _loc28_;
                           _loc38_ = !_loc38_;
                        }
                        _loc46_ = null;
                        _loc21_ = 1.0e100;
                        _loc30_ = _loc45_.name_11.var_73;
                        while(_loc30_ != null)
                        {
                           _loc47_ = _loc30_.var_74;
                           _loc22_ = Number(Number(_loc43_.var_92 * _loc47_.var_92 + _loc43_.var_91 * _loc47_.var_91));
                           if(_loc22_ < _loc21_)
                           {
                              _loc21_ = Number(_loc22_);
                              _loc46_ = _loc47_;
                           }
                           _loc30_ = _loc30_.next;
                        }
                        if(_loc38_)
                        {
                           _loc15_.x = -_loc43_.var_92;
                           _loc15_.y = -_loc43_.var_91;
                        }
                        else
                        {
                           _loc15_.x = _loc43_.var_92;
                           _loc15_.y = _loc43_.var_91;
                        }
                        if(_loc20_ >= 0)
                        {
                           _loc28_ = _loc43_.gp0;
                           _loc29_ = _loc43_.gp1;
                           _loc48_ = _loc46_.gp0;
                           _loc49_ = _loc46_.gp1;
                           _loc22_ = 0;
                           _loc23_ = 0;
                           _loc24_ = 0;
                           _loc37_ = 0;
                           _loc22_ = Number(_loc29_.x - _loc28_.x);
                           _loc23_ = Number(_loc29_.y - _loc28_.y);
                           _loc24_ = Number(_loc49_.x - _loc48_.x);
                           _loc37_ = Number(_loc49_.y - _loc48_.y);
                           _loc41_ = Number(1 / (Number(_loc22_ * _loc22_ + _loc23_ * _loc23_)));
                           _loc50_ = Number(1 / (Number(_loc24_ * _loc24_ + _loc37_ * _loc37_)));
                           _loc51_ = Number(-(_loc22_ * (_loc28_.x - _loc48_.x) + _loc23_ * (_loc28_.y - _loc48_.y)) * _loc41_);
                           _loc52_ = Number(-(_loc22_ * (_loc28_.x - _loc49_.x) + _loc23_ * (_loc28_.y - _loc49_.y)) * _loc41_);
                           _loc53_ = Number(-(_loc24_ * (_loc48_.x - _loc28_.x) + _loc37_ * (_loc48_.y - _loc28_.y)) * _loc50_);
                           _loc54_ = Number(-(_loc24_ * (_loc48_.x - _loc29_.x) + _loc37_ * (_loc48_.y - _loc29_.y)) * _loc50_);
                           if(_loc51_ < 0)
                           {
                              _loc51_ = 0;
                           }
                           else if(_loc51_ > 1)
                           {
                              _loc51_ = 1;
                           }
                           if(_loc52_ < 0)
                           {
                              _loc52_ = 0;
                           }
                           else if(_loc52_ > 1)
                           {
                              _loc52_ = 1;
                           }
                           if(_loc53_ < 0)
                           {
                              _loc53_ = 0;
                           }
                           else if(_loc53_ > 1)
                           {
                              _loc53_ = 1;
                           }
                           if(_loc54_ < 0)
                           {
                              _loc54_ = 0;
                           }
                           else if(_loc54_ > 1)
                           {
                              _loc54_ = 1;
                           }
                           _loc55_ = 0;
                           _loc56_ = 0;
                           _loc57_ = Number(_loc51_);
                           _loc55_ = Number(Number(_loc28_.x + _loc22_ * _loc57_));
                           _loc56_ = Number(Number(_loc28_.y + _loc23_ * _loc57_));
                           _loc57_ = 0;
                           _loc58_ = 0;
                           _loc59_ = Number(_loc52_);
                           _loc57_ = Number(Number(_loc28_.x + _loc22_ * _loc59_));
                           _loc58_ = Number(Number(_loc28_.y + _loc23_ * _loc59_));
                           _loc59_ = 0;
                           _loc60_ = 0;
                           _loc61_ = Number(_loc53_);
                           _loc59_ = Number(Number(_loc48_.x + _loc24_ * _loc61_));
                           _loc60_ = Number(Number(_loc48_.y + _loc37_ * _loc61_));
                           _loc61_ = 0;
                           _loc62_ = 0;
                           _loc63_ = Number(_loc54_);
                           _loc61_ = Number(Number(_loc48_.x + _loc24_ * _loc63_));
                           _loc62_ = Number(Number(_loc48_.y + _loc37_ * _loc63_));
                           _loc64_ = 0;
                           _loc65_ = 0;
                           _loc64_ = Number(_loc55_ - _loc48_.x);
                           _loc65_ = Number(_loc56_ - _loc48_.y);
                           _loc63_ = Number(Number(_loc64_ * _loc64_ + _loc65_ * _loc65_));
                           _loc65_ = 0;
                           _loc66_ = 0;
                           _loc65_ = Number(_loc57_ - _loc49_.x);
                           _loc66_ = Number(_loc58_ - _loc49_.y);
                           _loc64_ = Number(Number(_loc65_ * _loc65_ + _loc66_ * _loc66_));
                           _loc66_ = 0;
                           _loc67_ = 0;
                           _loc66_ = Number(_loc59_ - _loc28_.x);
                           _loc67_ = Number(_loc60_ - _loc28_.y);
                           _loc65_ = Number(Number(_loc66_ * _loc66_ + _loc67_ * _loc67_));
                           _loc67_ = 0;
                           _loc68_ = 0;
                           _loc67_ = Number(_loc61_ - _loc29_.x);
                           _loc68_ = Number(_loc62_ - _loc29_.y);
                           _loc66_ = Number(Number(_loc67_ * _loc67_ + _loc68_ * _loc68_));
                           _loc67_ = 0;
                           _loc68_ = 0;
                           _loc69_ = null;
                           if(_loc63_ < _loc64_)
                           {
                              _loc67_ = Number(_loc55_);
                              _loc68_ = Number(_loc56_);
                              _loc69_ = _loc48_;
                           }
                           else
                           {
                              _loc67_ = Number(_loc57_);
                              _loc68_ = Number(_loc58_);
                              _loc69_ = _loc49_;
                              _loc63_ = Number(_loc64_);
                           }
                           _loc70_ = 0;
                           _loc71_ = 0;
                           _loc72_ = null;
                           if(_loc65_ < _loc66_)
                           {
                              _loc70_ = Number(_loc59_);
                              _loc71_ = Number(_loc60_);
                              _loc72_ = _loc28_;
                           }
                           else
                           {
                              _loc70_ = Number(_loc61_);
                              _loc71_ = Number(_loc62_);
                              _loc72_ = _loc29_;
                              _loc65_ = Number(_loc66_);
                           }
                           if(_loc63_ < _loc65_)
                           {
                              _loc26_.x = _loc67_;
                              _loc26_.y = _loc68_;
                              _loc27_.x = _loc69_.x;
                              _loc27_.y = _loc69_.y;
                              _loc20_ = Number(Number(Math.sqrt(_loc63_)));
                           }
                           else
                           {
                              _loc27_.x = _loc70_;
                              _loc27_.y = _loc71_;
                              _loc26_.x = _loc72_.x;
                              _loc26_.y = _loc72_.y;
                              _loc20_ = Number(Number(Math.sqrt(_loc65_)));
                           }
                           if(_loc20_ != 0)
                           {
                              _loc15_.x = _loc27_.x - _loc26_.x;
                              _loc15_.y = _loc27_.y - _loc26_.y;
                              _loc73_ = Number(1 / _loc20_);
                              _loc15_.x = _loc15_.x * _loc73_;
                              _loc15_.y = _loc15_.y * _loc73_;
                              if(_loc38_)
                              {
                                 _loc15_.x = -_loc15_.x;
                                 _loc15_.y = -_loc15_.y;
                              }
                           }
                           §§push(_loc20_);
                        }
                        else
                        {
                           _loc22_ = 0;
                           _loc23_ = 0;
                           _loc22_ = Number(_loc46_.gp0.x);
                           _loc23_ = Number(_loc46_.gp0.y);
                           _loc24_ = 0;
                           _loc37_ = 0;
                           _loc24_ = Number(_loc46_.gp1.x);
                           _loc37_ = Number(_loc46_.gp1.y);
                           _loc41_ = 0;
                           _loc50_ = 0;
                           _loc41_ = Number(_loc24_ - _loc22_);
                           _loc50_ = Number(_loc37_ - _loc23_);
                           _loc51_ = Number(_loc43_.var_91 * _loc22_ - _loc43_.var_92 * _loc23_);
                           _loc52_ = Number(_loc43_.var_91 * _loc24_ - _loc43_.var_92 * _loc37_);
                           _loc53_ = Number(1 / (_loc52_ - _loc51_));
                           _loc54_ = Number((-_loc43_.tp1 - _loc51_) * _loc53_);
                           if(_loc54_ > class_238.name_8)
                           {
                              _loc55_ = Number(_loc54_);
                              _loc22_ = Number(Number(_loc22_ + _loc41_ * _loc55_));
                              _loc23_ = Number(Number(_loc23_ + _loc50_ * _loc55_));
                           }
                           _loc55_ = Number((-_loc43_.tp0 - _loc52_) * _loc53_);
                           if(_loc55_ < -class_238.name_8)
                           {
                              _loc56_ = Number(_loc55_);
                              _loc24_ = Number(Number(_loc24_ + _loc41_ * _loc56_));
                              _loc37_ = Number(Number(_loc37_ + _loc50_ * _loc56_));
                           }
                           _loc56_ = Number(_loc22_ * _loc43_.var_92 + _loc23_ * _loc43_.var_91 - _loc43_.gprojection);
                           _loc57_ = Number(_loc24_ * _loc43_.var_92 + _loc37_ * _loc43_.var_91 - _loc43_.gprojection);
                           if(_loc56_ < _loc57_)
                           {
                              _loc27_.x = _loc22_;
                              _loc27_.y = _loc23_;
                              _loc58_ = Number(-_loc56_);
                              _loc26_.x = Number(_loc27_.x + _loc43_.var_92 * _loc58_);
                              _loc26_.y = Number(_loc27_.y + _loc43_.var_91 * _loc58_);
                              §§push(_loc56_);
                           }
                           else
                           {
                              _loc27_.x = _loc24_;
                              _loc27_.y = _loc37_;
                              _loc58_ = Number(-_loc57_);
                              _loc26_.x = Number(_loc27_.x + _loc43_.var_92 * _loc58_);
                              _loc26_.y = Number(_loc27_.y + _loc43_.var_91 * _loc58_);
                              §§push(_loc57_);
                           }
                        }
                     }
                     else
                     {
                        §§push(_loc19_);
                     }
                  }
                  else
                  {
                     §§push(_loc19_);
                  }
               }
            }
            _loc18_ = Number(§§pop() + param4);
            _loc19_ = Number(Number(_loc9_ * _loc15_.x + _loc10_ * _loc15_.y));
            if(_loc18_ < class_238.var_608)
            {
               _loc20_ = 0;
               _loc21_ = 0;
               _loc20_ = Number(_loc13_.x - _loc7_.var_95);
               _loc21_ = Number(_loc13_.y - _loc7_.var_96);
               _loc22_ = Number(_loc19_ - _loc7_.var_191 * (_loc15_.y * _loc20_ - _loc15_.x * _loc21_));
               if(_loc22_ > 0)
               {
                  param1.var_647 = true;
               }
               if(_loc22_ <= 0 || _loc18_ < class_238.var_608 * 0.5)
               {
                  break;
               }
            }
            _loc20_ = Number((_loc12_ - _loc19_) * param2);
            if(_loc20_ <= 0)
            {
               _loc16_ = -1;
               break;
            }
            _loc21_ = Number(_loc18_ / _loc20_);
            if(_loc21_ < 1.0e-6)
            {
               _loc21_ = 1.0e-6;
            }
            _loc16_ = Number(Number(_loc16_ + _loc21_));
            if(_loc16_ >= 1)
            {
               _loc16_ = 1;
               _loc22_ = Number(_loc16_ * param2);
               _loc23_ = Number(_loc22_ - _loc7_.var_176);
               if(_loc23_ != 0)
               {
                  _loc7_.var_176 = _loc22_;
                  _loc24_ = Number(_loc23_);
                  _loc7_.var_95 = Number(_loc7_.var_95 + _loc7_.var_104 * _loc24_);
                  _loc7_.var_96 = Number(_loc7_.var_96 + _loc7_.var_105 * _loc24_);
                  if(_loc7_.var_94 != 0)
                  {
                     _loc24_ = Number(_loc7_.var_191 * _loc23_);
                     _loc7_.var_93 = Number(_loc7_.var_93 + _loc24_);
                     if(_loc24_ * _loc24_ > 0.0001)
                     {
                        _loc7_.var_84 = Number(Math.sin(_loc7_.var_93));
                        _loc7_.var_83 = Number(Math.cos(_loc7_.var_93));
                        null;
                     }
                     else
                     {
                        _loc37_ = Number(_loc24_ * _loc24_);
                        _loc41_ = Number(1 - 0.5 * _loc37_);
                        _loc50_ = Number(1 - _loc37_ * _loc37_ / 8);
                        _loc51_ = Number((_loc41_ * _loc7_.var_84 + _loc24_ * _loc7_.var_83) * _loc50_);
                        _loc7_.var_83 = (_loc41_ * _loc7_.var_83 - _loc24_ * _loc7_.var_84) * _loc50_;
                        _loc7_.var_84 = _loc51_;
                     }
                  }
               }
               if(_loc5_.type == class_223.var_131)
               {
                  _loc5_.var_99 = Number(_loc7_.var_95 + (_loc7_.var_83 * _loc5_.var_82 - _loc7_.var_84 * _loc5_.var_81));
                  _loc5_.var_100 = Number(_loc7_.var_96 + (Number(_loc5_.var_82 * _loc7_.var_84 + _loc5_.var_81 * _loc7_.var_83)));
               }
               else
               {
                  _loc25_ = _loc5_.name_6;
                  _loc26_ = _loc25_.var_88.next;
                  _loc27_ = _loc25_.var_107.next;
                  while(_loc27_ != null)
                  {
                     _loc28_ = _loc27_;
                     _loc29_ = _loc26_;
                     _loc26_ = _loc26_.next;
                     _loc28_.x = Number(_loc7_.var_95 + (_loc7_.var_83 * _loc29_.x - _loc7_.var_84 * _loc29_.y));
                     _loc28_.y = Number(_loc7_.var_96 + (Number(_loc29_.x * _loc7_.var_84 + _loc29_.y * _loc7_.var_83)));
                     _loc27_ = _loc27_.next;
                  }
                  _loc30_ = _loc25_.name_11.var_73;
                  _loc27_ = _loc25_.var_107.next;
                  _loc28_ = _loc27_;
                  _loc27_ = _loc27_.next;
                  while(_loc27_ != null)
                  {
                     _loc29_ = _loc27_;
                     _loc31_ = _loc30_.var_74;
                     _loc30_ = _loc30_.next;
                     _loc31_.var_92 = _loc7_.var_83 * _loc31_.var_122 - _loc7_.var_84 * _loc31_.var_121;
                     _loc31_.var_91 = Number(_loc31_.var_122 * _loc7_.var_84 + _loc31_.var_121 * _loc7_.var_83);
                     _loc31_.gprojection = Number(Number(_loc7_.var_95 * _loc31_.var_92 + _loc7_.var_96 * _loc31_.var_91) + _loc31_.var_165);
                     _loc31_.tp0 = _loc28_.y * _loc31_.var_92 - _loc28_.x * _loc31_.var_91;
                     _loc31_.tp1 = _loc29_.y * _loc31_.var_92 - _loc29_.x * _loc31_.var_91;
                     _loc28_ = _loc29_;
                     _loc27_ = _loc27_.next;
                  }
                  _loc29_ = _loc25_.var_107.next;
                  _loc31_ = _loc30_.var_74;
                  _loc30_ = _loc30_.next;
                  _loc31_.var_92 = _loc7_.var_83 * _loc31_.var_122 - _loc7_.var_84 * _loc31_.var_121;
                  _loc31_.var_91 = Number(_loc31_.var_122 * _loc7_.var_84 + _loc31_.var_121 * _loc7_.var_83);
                  _loc31_.gprojection = Number(Number(_loc7_.var_95 * _loc31_.var_92 + _loc7_.var_96 * _loc31_.var_91) + _loc31_.var_165);
                  _loc31_.tp0 = _loc28_.y * _loc31_.var_92 - _loc28_.x * _loc31_.var_91;
                  _loc31_.tp1 = _loc29_.y * _loc31_.var_92 - _loc29_.x * _loc31_.var_91;
               }
               _loc32_ = _loc5_;
               _loc33_ = _loc6_;
               _loc26_ = _loc13_;
               _loc27_ = _loc14_;
               _loc23_ = 1.0e100;
               if(_loc32_.type == class_223.var_131 && _loc33_.type == class_223.var_131)
               {
                  _loc34_ = _loc32_.var_102;
                  _loc35_ = _loc33_.var_102;
                  _loc37_ = 0;
                  _loc41_ = 0;
                  _loc37_ = Number(_loc35_.var_99 - _loc34_.var_99);
                  _loc41_ = Number(_loc35_.var_100 - _loc34_.var_100);
                  _loc51_ = Number(Number(_loc37_ * _loc37_ + _loc41_ * _loc41_));
                  if(_loc51_ == 0)
                  {
                     _loc50_ = 0;
                  }
                  else
                  {
                     sf32(_loc51_,0);
                     _loc36_ = 1597463007 - (li32(0) >> 1);
                     si32(_loc36_,0);
                     _loc52_ = Number(lf32(0));
                     _loc50_ = Number(1 / (_loc52_ * (1.5 - 0.5 * _loc51_ * _loc52_ * _loc52_)));
                  }
                  _loc24_ = Number(_loc50_ - (Number(_loc34_.radius + _loc35_.radius)));
                  if(_loc24_ < _loc23_)
                  {
                     if(_loc50_ == 0)
                     {
                        _loc37_ = 1;
                        _loc41_ = 0;
                     }
                     else
                     {
                        _loc51_ = Number(1 / _loc50_);
                        _loc37_ = Number(_loc37_ * _loc51_);
                        _loc41_ = Number(_loc41_ * _loc51_);
                     }
                     _loc51_ = Number(_loc34_.radius);
                     _loc26_.x = Number(_loc34_.var_99 + _loc37_ * _loc51_);
                     _loc26_.y = Number(_loc34_.var_100 + _loc41_ * _loc51_);
                     _loc51_ = Number(-_loc35_.radius);
                     _loc27_.x = Number(_loc35_.var_99 + _loc37_ * _loc51_);
                     _loc27_.y = Number(_loc35_.var_100 + _loc41_ * _loc51_);
                     _loc15_.x = _loc37_;
                     _loc15_.y = _loc41_;
                  }
                  §§push(_loc24_);
               }
               else
               {
                  _loc38_ = false;
                  if(_loc32_.type == class_223.var_131 && _loc33_.type == class_223.var_155)
                  {
                     _loc39_ = _loc32_;
                     _loc32_ = _loc33_;
                     _loc33_ = _loc39_;
                     _loc28_ = _loc26_;
                     _loc26_ = _loc27_;
                     _loc27_ = _loc28_;
                     _loc38_ = true;
                  }
                  if(_loc32_.type == class_223.var_155 && _loc33_.type == class_223.var_131)
                  {
                     _loc25_ = _loc32_.name_6;
                     _loc34_ = _loc33_.var_102;
                     _loc24_ = -1.0e100;
                     _loc31_ = null;
                     _loc30_ = _loc25_.name_11.var_73;
                     while(_loc30_ != null)
                     {
                        _loc40_ = _loc30_.var_74;
                        _loc37_ = Number(_loc40_.var_92 * _loc34_.var_99 + _loc40_.var_91 * _loc34_.var_100 - _loc40_.gprojection - _loc34_.radius);
                        if(_loc37_ > _loc23_)
                        {
                           _loc24_ = Number(_loc37_);
                           break;
                        }
                        if(_loc37_ > 0)
                        {
                           if(_loc37_ > _loc24_)
                           {
                              _loc24_ = Number(_loc37_);
                              _loc31_ = _loc40_;
                           }
                        }
                        else if(_loc24_ < 0 && _loc37_ > _loc24_)
                        {
                           _loc24_ = Number(_loc37_);
                           _loc31_ = _loc40_;
                        }
                        _loc30_ = _loc30_.next;
                     }
                     if(_loc24_ < _loc23_)
                     {
                        _loc28_ = _loc31_.gp0;
                        _loc29_ = _loc31_.gp1;
                        _loc37_ = Number(_loc34_.var_100 * _loc31_.var_92 - _loc34_.var_99 * _loc31_.var_91);
                        if(_loc37_ <= _loc28_.y * _loc31_.var_92 - _loc28_.x * _loc31_.var_91)
                        {
                           _loc41_ = 0;
                           _loc50_ = 0;
                           _loc41_ = Number(_loc34_.var_99 - _loc28_.x);
                           _loc50_ = Number(_loc34_.var_100 - _loc28_.y);
                           _loc52_ = Number(Number(_loc41_ * _loc41_ + _loc50_ * _loc50_));
                           if(_loc52_ == 0)
                           {
                              _loc51_ = 0;
                           }
                           else
                           {
                              sf32(_loc52_,0);
                              _loc36_ = 1597463007 - (li32(0) >> 1);
                              si32(_loc36_,0);
                              _loc53_ = Number(lf32(0));
                              _loc51_ = Number(1 / (_loc53_ * (1.5 - 0.5 * _loc52_ * _loc53_ * _loc53_)));
                           }
                           _loc24_ = Number(_loc51_ - _loc34_.radius);
                           if(_loc24_ < _loc23_)
                           {
                              if(_loc51_ == 0)
                              {
                                 _loc41_ = 1;
                                 _loc50_ = 0;
                              }
                              else
                              {
                                 _loc52_ = Number(1 / _loc51_);
                                 _loc41_ = Number(_loc41_ * _loc52_);
                                 _loc50_ = Number(_loc50_ * _loc52_);
                              }
                              _loc36_ = 0;
                              _loc26_.x = Number(_loc28_.x + _loc41_ * _loc36_);
                              _loc26_.y = Number(_loc28_.y + _loc50_ * _loc36_);
                              _loc52_ = Number(-_loc34_.radius);
                              _loc27_.x = Number(_loc34_.var_99 + _loc41_ * _loc52_);
                              _loc27_.y = Number(_loc34_.var_100 + _loc50_ * _loc52_);
                              _loc15_.x = _loc41_;
                              _loc15_.y = _loc50_;
                           }
                        }
                        else if(_loc37_ >= _loc29_.y * _loc31_.var_92 - _loc29_.x * _loc31_.var_91)
                        {
                           _loc41_ = 0;
                           _loc50_ = 0;
                           _loc41_ = Number(_loc34_.var_99 - _loc29_.x);
                           _loc50_ = Number(_loc34_.var_100 - _loc29_.y);
                           _loc52_ = Number(Number(_loc41_ * _loc41_ + _loc50_ * _loc50_));
                           if(_loc52_ == 0)
                           {
                              _loc51_ = 0;
                           }
                           else
                           {
                              sf32(_loc52_,0);
                              _loc36_ = 1597463007 - (li32(0) >> 1);
                              si32(_loc36_,0);
                              _loc53_ = Number(lf32(0));
                              _loc51_ = Number(1 / (_loc53_ * (1.5 - 0.5 * _loc52_ * _loc53_ * _loc53_)));
                           }
                           _loc24_ = Number(_loc51_ - _loc34_.radius);
                           if(_loc24_ < _loc23_)
                           {
                              if(_loc51_ == 0)
                              {
                                 _loc41_ = 1;
                                 _loc50_ = 0;
                              }
                              else
                              {
                                 _loc52_ = Number(1 / _loc51_);
                                 _loc41_ = Number(_loc41_ * _loc52_);
                                 _loc50_ = Number(_loc50_ * _loc52_);
                              }
                              _loc36_ = 0;
                              _loc26_.x = Number(_loc29_.x + _loc41_ * _loc36_);
                              _loc26_.y = Number(_loc29_.y + _loc50_ * _loc36_);
                              _loc52_ = Number(-_loc34_.radius);
                              _loc27_.x = Number(_loc34_.var_99 + _loc41_ * _loc52_);
                              _loc27_.y = Number(_loc34_.var_100 + _loc50_ * _loc52_);
                              _loc15_.x = _loc41_;
                              _loc15_.y = _loc50_;
                           }
                        }
                        else
                        {
                           _loc41_ = Number(-_loc34_.radius);
                           _loc27_.x = Number(_loc34_.var_99 + _loc31_.var_92 * _loc41_);
                           _loc27_.y = Number(_loc34_.var_100 + _loc31_.var_91 * _loc41_);
                           _loc41_ = Number(-_loc24_);
                           _loc26_.x = Number(_loc27_.x + _loc31_.var_92 * _loc41_);
                           _loc26_.y = Number(_loc27_.y + _loc31_.var_91 * _loc41_);
                           _loc15_.x = _loc31_.var_92;
                           _loc15_.y = _loc31_.var_91;
                        }
                     }
                     if(_loc38_)
                     {
                        _loc15_.x = -_loc15_.x;
                        _loc15_.y = -_loc15_.y;
                     }
                     §§push(_loc24_);
                  }
                  else
                  {
                     _loc25_ = _loc32_.name_6;
                     _loc42_ = _loc33_.name_6;
                     _loc24_ = -1.0e100;
                     _loc31_ = null;
                     _loc40_ = null;
                     _loc36_ = 0;
                     _loc30_ = _loc25_.name_11.var_73;
                     while(_loc30_ != null)
                     {
                        _loc43_ = _loc30_.var_74;
                        _loc37_ = 1.0e100;
                        _loc28_ = _loc42_.var_107.next;
                        while(_loc28_ != null)
                        {
                           _loc29_ = _loc28_;
                           _loc41_ = Number(Number(_loc43_.var_92 * _loc29_.x + _loc43_.var_91 * _loc29_.y));
                           if(_loc41_ < _loc37_)
                           {
                              _loc37_ = Number(_loc41_);
                           }
                           _loc28_ = _loc28_.next;
                        }
                        _loc37_ = Number(_loc37_ - _loc43_.gprojection);
                        if(_loc37_ > _loc23_)
                        {
                           _loc24_ = Number(_loc37_);
                           break;
                        }
                        if(_loc37_ > 0)
                        {
                           if(_loc37_ > _loc24_)
                           {
                              _loc24_ = Number(_loc37_);
                              _loc31_ = _loc43_;
                              _loc36_ = 1;
                           }
                        }
                        else if(_loc24_ < 0 && _loc37_ > _loc24_)
                        {
                           _loc24_ = Number(_loc37_);
                           _loc31_ = _loc43_;
                           _loc36_ = 1;
                        }
                        _loc30_ = _loc30_.next;
                     }
                     if(_loc24_ < _loc23_)
                     {
                        _loc30_ = _loc42_.name_11.var_73;
                        while(_loc30_ != null)
                        {
                           _loc43_ = _loc30_.var_74;
                           _loc37_ = 1.0e100;
                           _loc28_ = _loc25_.var_107.next;
                           while(_loc28_ != null)
                           {
                              _loc29_ = _loc28_;
                              _loc41_ = Number(Number(_loc43_.var_92 * _loc29_.x + _loc43_.var_91 * _loc29_.y));
                              if(_loc41_ < _loc37_)
                              {
                                 _loc37_ = Number(_loc41_);
                              }
                              _loc28_ = _loc28_.next;
                           }
                           _loc37_ = Number(_loc37_ - _loc43_.gprojection);
                           if(_loc37_ > _loc23_)
                           {
                              _loc24_ = Number(_loc37_);
                              break;
                           }
                           if(_loc37_ > 0)
                           {
                              if(_loc37_ > _loc24_)
                              {
                                 _loc24_ = Number(_loc37_);
                                 _loc40_ = _loc43_;
                                 _loc36_ = 2;
                              }
                           }
                           else if(_loc24_ < 0 && _loc37_ > _loc24_)
                           {
                              _loc24_ = Number(_loc37_);
                              _loc40_ = _loc43_;
                              _loc36_ = 2;
                           }
                           _loc30_ = _loc30_.next;
                        }
                        if(_loc24_ < _loc23_)
                        {
                           if(_loc36_ == 1)
                           {
                              _loc44_ = _loc25_;
                              _loc45_ = _loc42_;
                              _loc43_ = _loc31_;
                           }
                           else
                           {
                              _loc44_ = _loc42_;
                              _loc45_ = _loc25_;
                              _loc43_ = _loc40_;
                              _loc28_ = _loc26_;
                              _loc26_ = _loc27_;
                              _loc27_ = _loc28_;
                              _loc38_ = !_loc38_;
                           }
                           _loc46_ = null;
                           _loc37_ = 1.0e100;
                           _loc30_ = _loc45_.name_11.var_73;
                           while(_loc30_ != null)
                           {
                              _loc47_ = _loc30_.var_74;
                              _loc41_ = Number(Number(_loc43_.var_92 * _loc47_.var_92 + _loc43_.var_91 * _loc47_.var_91));
                              if(_loc41_ < _loc37_)
                              {
                                 _loc37_ = Number(_loc41_);
                                 _loc46_ = _loc47_;
                              }
                              _loc30_ = _loc30_.next;
                           }
                           if(_loc38_)
                           {
                              _loc15_.x = -_loc43_.var_92;
                              _loc15_.y = -_loc43_.var_91;
                           }
                           else
                           {
                              _loc15_.x = _loc43_.var_92;
                              _loc15_.y = _loc43_.var_91;
                           }
                           if(_loc24_ >= 0)
                           {
                              _loc28_ = _loc43_.gp0;
                              _loc29_ = _loc43_.gp1;
                              _loc48_ = _loc46_.gp0;
                              _loc49_ = _loc46_.gp1;
                              _loc41_ = 0;
                              _loc50_ = 0;
                              _loc51_ = 0;
                              _loc52_ = 0;
                              _loc41_ = Number(_loc29_.x - _loc28_.x);
                              _loc50_ = Number(_loc29_.y - _loc28_.y);
                              _loc51_ = Number(_loc49_.x - _loc48_.x);
                              _loc52_ = Number(_loc49_.y - _loc48_.y);
                              _loc53_ = Number(1 / (Number(_loc41_ * _loc41_ + _loc50_ * _loc50_)));
                              _loc54_ = Number(1 / (Number(_loc51_ * _loc51_ + _loc52_ * _loc52_)));
                              _loc55_ = Number(-(_loc41_ * (_loc28_.x - _loc48_.x) + _loc50_ * (_loc28_.y - _loc48_.y)) * _loc53_);
                              _loc56_ = Number(-(_loc41_ * (_loc28_.x - _loc49_.x) + _loc50_ * (_loc28_.y - _loc49_.y)) * _loc53_);
                              _loc57_ = Number(-(_loc51_ * (_loc48_.x - _loc28_.x) + _loc52_ * (_loc48_.y - _loc28_.y)) * _loc54_);
                              _loc58_ = Number(-(_loc51_ * (_loc48_.x - _loc29_.x) + _loc52_ * (_loc48_.y - _loc29_.y)) * _loc54_);
                              if(_loc55_ < 0)
                              {
                                 _loc55_ = 0;
                              }
                              else if(_loc55_ > 1)
                              {
                                 _loc55_ = 1;
                              }
                              if(_loc56_ < 0)
                              {
                                 _loc56_ = 0;
                              }
                              else if(_loc56_ > 1)
                              {
                                 _loc56_ = 1;
                              }
                              if(_loc57_ < 0)
                              {
                                 _loc57_ = 0;
                              }
                              else if(_loc57_ > 1)
                              {
                                 _loc57_ = 1;
                              }
                              if(_loc58_ < 0)
                              {
                                 _loc58_ = 0;
                              }
                              else if(_loc58_ > 1)
                              {
                                 _loc58_ = 1;
                              }
                              _loc59_ = 0;
                              _loc60_ = 0;
                              _loc61_ = Number(_loc55_);
                              _loc59_ = Number(Number(_loc28_.x + _loc41_ * _loc61_));
                              _loc60_ = Number(Number(_loc28_.y + _loc50_ * _loc61_));
                              _loc61_ = 0;
                              _loc62_ = 0;
                              _loc63_ = Number(_loc56_);
                              _loc61_ = Number(Number(_loc28_.x + _loc41_ * _loc63_));
                              _loc62_ = Number(Number(_loc28_.y + _loc50_ * _loc63_));
                              _loc63_ = 0;
                              _loc64_ = 0;
                              _loc65_ = Number(_loc57_);
                              _loc63_ = Number(Number(_loc48_.x + _loc51_ * _loc65_));
                              _loc64_ = Number(Number(_loc48_.y + _loc52_ * _loc65_));
                              _loc65_ = 0;
                              _loc66_ = 0;
                              _loc67_ = Number(_loc58_);
                              _loc65_ = Number(Number(_loc48_.x + _loc51_ * _loc67_));
                              _loc66_ = Number(Number(_loc48_.y + _loc52_ * _loc67_));
                              _loc68_ = 0;
                              _loc70_ = 0;
                              _loc68_ = Number(_loc59_ - _loc48_.x);
                              _loc70_ = Number(_loc60_ - _loc48_.y);
                              _loc67_ = Number(Number(_loc68_ * _loc68_ + _loc70_ * _loc70_));
                              _loc70_ = 0;
                              _loc71_ = 0;
                              _loc70_ = Number(_loc61_ - _loc49_.x);
                              _loc71_ = Number(_loc62_ - _loc49_.y);
                              _loc68_ = Number(Number(_loc70_ * _loc70_ + _loc71_ * _loc71_));
                              _loc71_ = 0;
                              _loc73_ = 0;
                              _loc71_ = Number(_loc63_ - _loc28_.x);
                              _loc73_ = Number(_loc64_ - _loc28_.y);
                              _loc70_ = Number(Number(_loc71_ * _loc71_ + _loc73_ * _loc73_));
                              _loc73_ = 0;
                              _loc74_ = 0;
                              _loc73_ = Number(_loc65_ - _loc29_.x);
                              _loc74_ = Number(_loc66_ - _loc29_.y);
                              _loc71_ = Number(Number(_loc73_ * _loc73_ + _loc74_ * _loc74_));
                              _loc73_ = 0;
                              _loc74_ = 0;
                              _loc69_ = null;
                              if(_loc67_ < _loc68_)
                              {
                                 _loc73_ = Number(_loc59_);
                                 _loc74_ = Number(_loc60_);
                                 _loc69_ = _loc48_;
                              }
                              else
                              {
                                 _loc73_ = Number(_loc61_);
                                 _loc74_ = Number(_loc62_);
                                 _loc69_ = _loc49_;
                                 _loc67_ = Number(_loc68_);
                              }
                              _loc75_ = 0;
                              _loc76_ = 0;
                              _loc72_ = null;
                              if(_loc70_ < _loc71_)
                              {
                                 _loc75_ = Number(_loc63_);
                                 _loc76_ = Number(_loc64_);
                                 _loc72_ = _loc28_;
                              }
                              else
                              {
                                 _loc75_ = Number(_loc65_);
                                 _loc76_ = Number(_loc66_);
                                 _loc72_ = _loc29_;
                                 _loc70_ = Number(_loc71_);
                              }
                              if(_loc67_ < _loc70_)
                              {
                                 _loc26_.x = _loc73_;
                                 _loc26_.y = _loc74_;
                                 _loc27_.x = _loc69_.x;
                                 _loc27_.y = _loc69_.y;
                                 _loc24_ = Number(Number(Math.sqrt(_loc67_)));
                              }
                              else
                              {
                                 _loc27_.x = _loc75_;
                                 _loc27_.y = _loc76_;
                                 _loc26_.x = _loc72_.x;
                                 _loc26_.y = _loc72_.y;
                                 _loc24_ = Number(Number(Math.sqrt(_loc70_)));
                              }
                              if(_loc24_ != 0)
                              {
                                 _loc15_.x = _loc27_.x - _loc26_.x;
                                 _loc15_.y = _loc27_.y - _loc26_.y;
                                 _loc77_ = 1 / _loc24_;
                                 _loc15_.x = _loc15_.x * _loc77_;
                                 _loc15_.y = _loc15_.y * _loc77_;
                                 if(_loc38_)
                                 {
                                    _loc15_.x = -_loc15_.x;
                                    _loc15_.y = -_loc15_.y;
                                 }
                              }
                              §§push(_loc24_);
                           }
                           else
                           {
                              _loc41_ = 0;
                              _loc50_ = 0;
                              _loc41_ = Number(_loc46_.gp0.x);
                              _loc50_ = Number(_loc46_.gp0.y);
                              _loc51_ = 0;
                              _loc52_ = 0;
                              _loc51_ = Number(_loc46_.gp1.x);
                              _loc52_ = Number(_loc46_.gp1.y);
                              _loc53_ = 0;
                              _loc54_ = 0;
                              _loc53_ = Number(_loc51_ - _loc41_);
                              _loc54_ = Number(_loc52_ - _loc50_);
                              _loc55_ = Number(_loc43_.var_91 * _loc41_ - _loc43_.var_92 * _loc50_);
                              _loc56_ = Number(_loc43_.var_91 * _loc51_ - _loc43_.var_92 * _loc52_);
                              _loc57_ = Number(1 / (_loc56_ - _loc55_));
                              _loc58_ = Number((-_loc43_.tp1 - _loc55_) * _loc57_);
                              if(_loc58_ > class_238.name_8)
                              {
                                 _loc59_ = Number(_loc58_);
                                 _loc41_ = Number(Number(_loc41_ + _loc53_ * _loc59_));
                                 _loc50_ = Number(Number(_loc50_ + _loc54_ * _loc59_));
                              }
                              _loc59_ = Number((-_loc43_.tp0 - _loc56_) * _loc57_);
                              if(_loc59_ < -class_238.name_8)
                              {
                                 _loc60_ = Number(_loc59_);
                                 _loc51_ = Number(Number(_loc51_ + _loc53_ * _loc60_));
                                 _loc52_ = Number(Number(_loc52_ + _loc54_ * _loc60_));
                              }
                              _loc60_ = Number(_loc41_ * _loc43_.var_92 + _loc50_ * _loc43_.var_91 - _loc43_.gprojection);
                              _loc61_ = Number(_loc51_ * _loc43_.var_92 + _loc52_ * _loc43_.var_91 - _loc43_.gprojection);
                              if(_loc60_ < _loc61_)
                              {
                                 _loc27_.x = _loc41_;
                                 _loc27_.y = _loc50_;
                                 _loc62_ = Number(-_loc60_);
                                 _loc26_.x = Number(_loc27_.x + _loc43_.var_92 * _loc62_);
                                 _loc26_.y = Number(_loc27_.y + _loc43_.var_91 * _loc62_);
                                 §§push(_loc60_);
                              }
                              else
                              {
                                 _loc27_.x = _loc51_;
                                 _loc27_.y = _loc52_;
                                 _loc62_ = Number(-_loc61_);
                                 _loc26_.x = Number(_loc27_.x + _loc43_.var_92 * _loc62_);
                                 _loc26_.y = Number(_loc27_.y + _loc43_.var_91 * _loc62_);
                                 §§push(_loc61_);
                              }
                           }
                        }
                        else
                        {
                           §§push(_loc23_);
                        }
                     }
                     else
                     {
                        §§push(_loc23_);
                     }
                  }
               }
               _loc22_ = Number(Number(§§pop() + param4));
               _loc23_ = Number(Number(_loc9_ * _loc15_.x + _loc10_ * _loc15_.y));
               if(_loc22_ < class_238.var_608)
               {
                  _loc24_ = 0;
                  _loc37_ = 0;
                  _loc24_ = Number(_loc13_.x - _loc7_.var_95);
                  _loc37_ = Number(_loc13_.y - _loc7_.var_96);
                  _loc41_ = Number(_loc23_ - _loc7_.var_191 * (_loc15_.y * _loc24_ - _loc15_.x * _loc37_));
                  if(_loc41_ > 0)
                  {
                     param1.var_647 = true;
                  }
                  if(_loc41_ <= 0 || _loc22_ < class_238.var_608 * 0.5)
                  {
                     break;
                  }
               }
               _loc16_ = -1;
               break;
            }
            _loc17_++;
            if(_loc17_ >= 40)
            {
               if(_loc18_ > param4)
               {
                  param1.var_143 = true;
                  break;
               }
               break;
            }
         }
         param1.name_51 = _loc16_;
      }
      
      public static function method_792(param1:ZPP_Body, param2:ZPP_Body, param3:ZPP_Vec2, param4:ZPP_Vec2) : Number
      {
         var _loc5_:* = null as ZPP_Vec2;
         var _loc6_:* = null as ZPP_Vec2;
         var _loc7_:* = null as ZPP_Vec2;
         var _loc10_:* = null as ZPP_Shape;
         var _loc11_:* = null as ZNPNode_ZPP_Shape;
         var _loc12_:* = null as ZPP_Shape;
         var _loc13_:Number = NaN;
         var _loc14_:* = null as ZPP_Shape;
         var _loc15_:* = null as ZPP_Shape;
         var _loc16_:* = null as ZPP_Vec2;
         var _loc17_:* = null as ZPP_Vec2;
         var _loc18_:* = null as ZPP_Circle;
         var _loc19_:* = null as ZPP_Circle;
         var _loc20_:* = NaN;
         var _loc21_:* = NaN;
         var _loc22_:* = NaN;
         var _loc23_:* = NaN;
         var _loc24_:* = NaN;
         var _loc25_:* = 0;
         var _loc26_:* = NaN;
         var _loc27_:* = false;
         var _loc28_:* = null as ZPP_Shape;
         var _loc29_:* = null as ZPP_Vec2;
         var _loc30_:* = null as ZPP_Polygon;
         var _loc31_:* = null as ZPP_Edge;
         var _loc32_:* = null as ZNPNode_ZPP_Edge;
         var _loc33_:* = null as ZPP_Edge;
         var _loc34_:* = null as ZPP_Vec2;
         var _loc35_:* = NaN;
         var _loc36_:* = null as ZPP_Polygon;
         var _loc37_:* = null as ZPP_Edge;
         var _loc38_:* = null as ZPP_Polygon;
         var _loc39_:* = null as ZPP_Polygon;
         var _loc40_:* = null as ZPP_Edge;
         var _loc41_:* = null as ZPP_Edge;
         var _loc42_:* = null as ZPP_Vec2;
         var _loc43_:* = null as ZPP_Vec2;
         var _loc44_:* = NaN;
         var _loc45_:* = NaN;
         var _loc46_:* = NaN;
         var _loc47_:* = NaN;
         var _loc48_:* = NaN;
         var _loc49_:* = NaN;
         var _loc50_:* = NaN;
         var _loc51_:* = NaN;
         var _loc52_:* = NaN;
         var _loc53_:* = NaN;
         var _loc54_:* = NaN;
         var _loc55_:* = NaN;
         var _loc56_:* = NaN;
         var _loc57_:Number = NaN;
         var _loc58_:* = NaN;
         var _loc59_:* = NaN;
         var _loc60_:* = NaN;
         var _loc61_:* = NaN;
         var _loc62_:* = NaN;
         var _loc63_:* = null as ZPP_Vec2;
         var _loc64_:* = NaN;
         var _loc65_:* = NaN;
         var _loc66_:* = null as ZPP_Vec2;
         var _loc67_:Number = NaN;
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
         var _loc8_:* = 1.0e100;
         var _loc9_:ZNPNode_ZPP_Shape = param1.shapes.var_73;
         while(_loc9_ != null)
         {
            _loc10_ = _loc9_.var_74;
            _loc11_ = param2.shapes.var_73;
            while(_loc11_ != null)
            {
               _loc12_ = _loc11_.var_74;
               _loc14_ = _loc10_;
               _loc15_ = _loc12_;
               _loc16_ = _loc5_;
               _loc17_ = _loc6_;
               if(_loc14_.type == class_223.var_131 && _loc15_.type == class_223.var_131)
               {
                  _loc18_ = _loc14_.var_102;
                  _loc19_ = _loc15_.var_102;
                  _loc21_ = 0;
                  _loc22_ = 0;
                  _loc21_ = Number(_loc19_.var_99 - _loc18_.var_99);
                  _loc22_ = Number(_loc19_.var_100 - _loc18_.var_100);
                  _loc24_ = Number(Number(_loc21_ * _loc21_ + _loc22_ * _loc22_));
                  if(_loc24_ == 0)
                  {
                     _loc23_ = 0;
                  }
                  else
                  {
                     sf32(_loc24_,0);
                     _loc25_ = 1597463007 - (li32(0) >> 1);
                     si32(_loc25_,0);
                     _loc26_ = Number(lf32(0));
                     _loc23_ = Number(1 / (_loc26_ * (1.5 - 0.5 * _loc24_ * _loc26_ * _loc26_)));
                  }
                  _loc20_ = Number(_loc23_ - (Number(_loc18_.radius + _loc19_.radius)));
                  if(_loc20_ < _loc8_)
                  {
                     if(_loc23_ == 0)
                     {
                        _loc21_ = 1;
                        _loc22_ = 0;
                     }
                     else
                     {
                        _loc24_ = Number(1 / _loc23_);
                        _loc21_ = Number(_loc21_ * _loc24_);
                        _loc22_ = Number(_loc22_ * _loc24_);
                     }
                     _loc24_ = Number(_loc18_.radius);
                     _loc16_.x = Number(_loc18_.var_99 + _loc21_ * _loc24_);
                     _loc16_.y = Number(_loc18_.var_100 + _loc22_ * _loc24_);
                     _loc24_ = Number(-_loc19_.radius);
                     _loc17_.x = Number(_loc19_.var_99 + _loc21_ * _loc24_);
                     _loc17_.y = Number(_loc19_.var_100 + _loc22_ * _loc24_);
                     _loc7_.x = _loc21_;
                     _loc7_.y = _loc22_;
                  }
                  _loc13_ = _loc20_;
               }
               else
               {
                  _loc27_ = false;
                  if(_loc14_.type == class_223.var_131 && _loc15_.type == class_223.var_155)
                  {
                     _loc28_ = _loc14_;
                     _loc14_ = _loc15_;
                     _loc15_ = _loc28_;
                     _loc29_ = _loc16_;
                     _loc16_ = _loc17_;
                     _loc17_ = _loc29_;
                     _loc27_ = true;
                  }
                  if(_loc14_.type == class_223.var_155 && _loc15_.type == class_223.var_131)
                  {
                     _loc30_ = _loc14_.name_6;
                     _loc18_ = _loc15_.var_102;
                     _loc20_ = -1.0e100;
                     _loc31_ = null;
                     _loc32_ = _loc30_.name_11.var_73;
                     while(_loc32_ != null)
                     {
                        _loc33_ = _loc32_.var_74;
                        _loc21_ = Number(_loc33_.var_92 * _loc18_.var_99 + _loc33_.var_91 * _loc18_.var_100 - _loc33_.gprojection - _loc18_.radius);
                        if(_loc21_ > _loc8_)
                        {
                           _loc20_ = Number(_loc21_);
                           break;
                        }
                        if(_loc21_ > 0)
                        {
                           if(_loc21_ > _loc20_)
                           {
                              _loc20_ = Number(_loc21_);
                              _loc31_ = _loc33_;
                           }
                        }
                        else if(_loc20_ < 0 && _loc21_ > _loc20_)
                        {
                           _loc20_ = Number(_loc21_);
                           _loc31_ = _loc33_;
                        }
                        _loc32_ = _loc32_.next;
                     }
                     if(_loc20_ < _loc8_)
                     {
                        _loc29_ = _loc31_.gp0;
                        _loc34_ = _loc31_.gp1;
                        _loc21_ = Number(_loc18_.var_100 * _loc31_.var_92 - _loc18_.var_99 * _loc31_.var_91);
                        if(_loc21_ <= _loc29_.y * _loc31_.var_92 - _loc29_.x * _loc31_.var_91)
                        {
                           _loc22_ = 0;
                           _loc23_ = 0;
                           _loc22_ = Number(_loc18_.var_99 - _loc29_.x);
                           _loc23_ = Number(_loc18_.var_100 - _loc29_.y);
                           _loc26_ = Number(Number(_loc22_ * _loc22_ + _loc23_ * _loc23_));
                           if(_loc26_ == 0)
                           {
                              _loc24_ = 0;
                           }
                           else
                           {
                              sf32(_loc26_,0);
                              _loc25_ = 1597463007 - (li32(0) >> 1);
                              si32(_loc25_,0);
                              _loc35_ = Number(lf32(0));
                              _loc24_ = Number(1 / (_loc35_ * (1.5 - 0.5 * _loc26_ * _loc35_ * _loc35_)));
                           }
                           _loc20_ = Number(_loc24_ - _loc18_.radius);
                           if(_loc20_ < _loc8_)
                           {
                              if(_loc24_ == 0)
                              {
                                 _loc22_ = 1;
                                 _loc23_ = 0;
                              }
                              else
                              {
                                 _loc26_ = Number(1 / _loc24_);
                                 _loc22_ = Number(_loc22_ * _loc26_);
                                 _loc23_ = Number(_loc23_ * _loc26_);
                              }
                              _loc25_ = 0;
                              _loc16_.x = Number(_loc29_.x + _loc22_ * _loc25_);
                              _loc16_.y = Number(_loc29_.y + _loc23_ * _loc25_);
                              _loc26_ = Number(-_loc18_.radius);
                              _loc17_.x = Number(_loc18_.var_99 + _loc22_ * _loc26_);
                              _loc17_.y = Number(_loc18_.var_100 + _loc23_ * _loc26_);
                              _loc7_.x = _loc22_;
                              _loc7_.y = _loc23_;
                           }
                        }
                        else if(_loc21_ >= _loc34_.y * _loc31_.var_92 - _loc34_.x * _loc31_.var_91)
                        {
                           _loc22_ = 0;
                           _loc23_ = 0;
                           _loc22_ = Number(_loc18_.var_99 - _loc34_.x);
                           _loc23_ = Number(_loc18_.var_100 - _loc34_.y);
                           _loc26_ = Number(Number(_loc22_ * _loc22_ + _loc23_ * _loc23_));
                           if(_loc26_ == 0)
                           {
                              _loc24_ = 0;
                           }
                           else
                           {
                              sf32(_loc26_,0);
                              _loc25_ = 1597463007 - (li32(0) >> 1);
                              si32(_loc25_,0);
                              _loc35_ = Number(lf32(0));
                              _loc24_ = Number(1 / (_loc35_ * (1.5 - 0.5 * _loc26_ * _loc35_ * _loc35_)));
                           }
                           _loc20_ = Number(_loc24_ - _loc18_.radius);
                           if(_loc20_ < _loc8_)
                           {
                              if(_loc24_ == 0)
                              {
                                 _loc22_ = 1;
                                 _loc23_ = 0;
                              }
                              else
                              {
                                 _loc26_ = Number(1 / _loc24_);
                                 _loc22_ = Number(_loc22_ * _loc26_);
                                 _loc23_ = Number(_loc23_ * _loc26_);
                              }
                              _loc25_ = 0;
                              _loc16_.x = Number(_loc34_.x + _loc22_ * _loc25_);
                              _loc16_.y = Number(_loc34_.y + _loc23_ * _loc25_);
                              _loc26_ = Number(-_loc18_.radius);
                              _loc17_.x = Number(_loc18_.var_99 + _loc22_ * _loc26_);
                              _loc17_.y = Number(_loc18_.var_100 + _loc23_ * _loc26_);
                              _loc7_.x = _loc22_;
                              _loc7_.y = _loc23_;
                           }
                        }
                        else
                        {
                           _loc22_ = Number(-_loc18_.radius);
                           _loc17_.x = Number(_loc18_.var_99 + _loc31_.var_92 * _loc22_);
                           _loc17_.y = Number(_loc18_.var_100 + _loc31_.var_91 * _loc22_);
                           _loc22_ = Number(-_loc20_);
                           _loc16_.x = Number(_loc17_.x + _loc31_.var_92 * _loc22_);
                           _loc16_.y = Number(_loc17_.y + _loc31_.var_91 * _loc22_);
                           _loc7_.x = _loc31_.var_92;
                           _loc7_.y = _loc31_.var_91;
                        }
                     }
                     if(_loc27_)
                     {
                        _loc7_.x = -_loc7_.x;
                        _loc7_.y = -_loc7_.y;
                     }
                     _loc13_ = _loc20_;
                  }
                  else
                  {
                     _loc30_ = _loc14_.name_6;
                     _loc36_ = _loc15_.name_6;
                     _loc20_ = -1.0e100;
                     _loc31_ = null;
                     _loc33_ = null;
                     _loc25_ = 0;
                     _loc32_ = _loc30_.name_11.var_73;
                     while(_loc32_ != null)
                     {
                        _loc37_ = _loc32_.var_74;
                        _loc21_ = 1.0e100;
                        _loc29_ = _loc36_.var_107.next;
                        while(_loc29_ != null)
                        {
                           _loc34_ = _loc29_;
                           _loc22_ = Number(Number(_loc37_.var_92 * _loc34_.x + _loc37_.var_91 * _loc34_.y));
                           if(_loc22_ < _loc21_)
                           {
                              _loc21_ = Number(_loc22_);
                           }
                           _loc29_ = _loc29_.next;
                        }
                        _loc21_ = Number(_loc21_ - _loc37_.gprojection);
                        if(_loc21_ > _loc8_)
                        {
                           _loc20_ = Number(_loc21_);
                           break;
                        }
                        if(_loc21_ > 0)
                        {
                           if(_loc21_ > _loc20_)
                           {
                              _loc20_ = Number(_loc21_);
                              _loc31_ = _loc37_;
                              _loc25_ = 1;
                           }
                        }
                        else if(_loc20_ < 0 && _loc21_ > _loc20_)
                        {
                           _loc20_ = Number(_loc21_);
                           _loc31_ = _loc37_;
                           _loc25_ = 1;
                        }
                        _loc32_ = _loc32_.next;
                     }
                     if(_loc20_ < _loc8_)
                     {
                        _loc32_ = _loc36_.name_11.var_73;
                        while(_loc32_ != null)
                        {
                           _loc37_ = _loc32_.var_74;
                           _loc21_ = 1.0e100;
                           _loc29_ = _loc30_.var_107.next;
                           while(_loc29_ != null)
                           {
                              _loc34_ = _loc29_;
                              _loc22_ = Number(Number(_loc37_.var_92 * _loc34_.x + _loc37_.var_91 * _loc34_.y));
                              if(_loc22_ < _loc21_)
                              {
                                 _loc21_ = Number(_loc22_);
                              }
                              _loc29_ = _loc29_.next;
                           }
                           _loc21_ = Number(_loc21_ - _loc37_.gprojection);
                           if(_loc21_ > _loc8_)
                           {
                              _loc20_ = Number(_loc21_);
                              break;
                           }
                           if(_loc21_ > 0)
                           {
                              if(_loc21_ > _loc20_)
                              {
                                 _loc20_ = Number(_loc21_);
                                 _loc33_ = _loc37_;
                                 _loc25_ = 2;
                              }
                           }
                           else if(_loc20_ < 0 && _loc21_ > _loc20_)
                           {
                              _loc20_ = Number(_loc21_);
                              _loc33_ = _loc37_;
                              _loc25_ = 2;
                           }
                           _loc32_ = _loc32_.next;
                        }
                        if(_loc20_ < _loc8_)
                        {
                           if(_loc25_ == 1)
                           {
                              _loc38_ = _loc30_;
                              _loc39_ = _loc36_;
                              _loc37_ = _loc31_;
                           }
                           else
                           {
                              _loc38_ = _loc36_;
                              _loc39_ = _loc30_;
                              _loc37_ = _loc33_;
                              _loc29_ = _loc16_;
                              _loc16_ = _loc17_;
                              _loc17_ = _loc29_;
                              _loc27_ = !_loc27_;
                           }
                           _loc40_ = null;
                           _loc21_ = 1.0e100;
                           _loc32_ = _loc39_.name_11.var_73;
                           while(_loc32_ != null)
                           {
                              _loc41_ = _loc32_.var_74;
                              _loc22_ = Number(Number(_loc37_.var_92 * _loc41_.var_92 + _loc37_.var_91 * _loc41_.var_91));
                              if(_loc22_ < _loc21_)
                              {
                                 _loc21_ = Number(_loc22_);
                                 _loc40_ = _loc41_;
                              }
                              _loc32_ = _loc32_.next;
                           }
                           if(_loc27_)
                           {
                              _loc7_.x = -_loc37_.var_92;
                              _loc7_.y = -_loc37_.var_91;
                           }
                           else
                           {
                              _loc7_.x = _loc37_.var_92;
                              _loc7_.y = _loc37_.var_91;
                           }
                           if(_loc20_ >= 0)
                           {
                              _loc29_ = _loc37_.gp0;
                              _loc34_ = _loc37_.gp1;
                              _loc42_ = _loc40_.gp0;
                              _loc43_ = _loc40_.gp1;
                              _loc22_ = 0;
                              _loc23_ = 0;
                              _loc24_ = 0;
                              _loc26_ = 0;
                              _loc22_ = Number(_loc34_.x - _loc29_.x);
                              _loc23_ = Number(_loc34_.y - _loc29_.y);
                              _loc24_ = Number(_loc43_.x - _loc42_.x);
                              _loc26_ = Number(_loc43_.y - _loc42_.y);
                              _loc35_ = Number(1 / (Number(_loc22_ * _loc22_ + _loc23_ * _loc23_)));
                              _loc44_ = Number(1 / (Number(_loc24_ * _loc24_ + _loc26_ * _loc26_)));
                              _loc45_ = Number(-(_loc22_ * (_loc29_.x - _loc42_.x) + _loc23_ * (_loc29_.y - _loc42_.y)) * _loc35_);
                              _loc46_ = Number(-(_loc22_ * (_loc29_.x - _loc43_.x) + _loc23_ * (_loc29_.y - _loc43_.y)) * _loc35_);
                              _loc47_ = Number(-(_loc24_ * (_loc42_.x - _loc29_.x) + _loc26_ * (_loc42_.y - _loc29_.y)) * _loc44_);
                              _loc48_ = Number(-(_loc24_ * (_loc42_.x - _loc34_.x) + _loc26_ * (_loc42_.y - _loc34_.y)) * _loc44_);
                              if(_loc45_ < 0)
                              {
                                 _loc45_ = 0;
                              }
                              else if(_loc45_ > 1)
                              {
                                 _loc45_ = 1;
                              }
                              if(_loc46_ < 0)
                              {
                                 _loc46_ = 0;
                              }
                              else if(_loc46_ > 1)
                              {
                                 _loc46_ = 1;
                              }
                              if(_loc47_ < 0)
                              {
                                 _loc47_ = 0;
                              }
                              else if(_loc47_ > 1)
                              {
                                 _loc47_ = 1;
                              }
                              if(_loc48_ < 0)
                              {
                                 _loc48_ = 0;
                              }
                              else if(_loc48_ > 1)
                              {
                                 _loc48_ = 1;
                              }
                              _loc49_ = 0;
                              _loc50_ = 0;
                              _loc51_ = Number(_loc45_);
                              _loc49_ = Number(Number(_loc29_.x + _loc22_ * _loc51_));
                              _loc50_ = Number(Number(_loc29_.y + _loc23_ * _loc51_));
                              _loc51_ = 0;
                              _loc52_ = 0;
                              _loc53_ = Number(_loc46_);
                              _loc51_ = Number(Number(_loc29_.x + _loc22_ * _loc53_));
                              _loc52_ = Number(Number(_loc29_.y + _loc23_ * _loc53_));
                              _loc53_ = 0;
                              _loc54_ = 0;
                              _loc55_ = Number(_loc47_);
                              _loc53_ = Number(Number(_loc42_.x + _loc24_ * _loc55_));
                              _loc54_ = Number(Number(_loc42_.y + _loc26_ * _loc55_));
                              _loc55_ = 0;
                              _loc56_ = 0;
                              _loc57_ = _loc48_;
                              _loc55_ = Number(Number(_loc42_.x + _loc24_ * _loc57_));
                              _loc56_ = Number(Number(_loc42_.y + _loc26_ * _loc57_));
                              _loc58_ = 0;
                              _loc59_ = 0;
                              _loc58_ = Number(_loc49_ - _loc42_.x);
                              _loc59_ = Number(_loc50_ - _loc42_.y);
                              _loc57_ = Number(_loc58_ * _loc58_ + _loc59_ * _loc59_);
                              _loc59_ = 0;
                              _loc60_ = 0;
                              _loc59_ = Number(_loc51_ - _loc43_.x);
                              _loc60_ = Number(_loc52_ - _loc43_.y);
                              _loc58_ = Number(Number(_loc59_ * _loc59_ + _loc60_ * _loc60_));
                              _loc60_ = 0;
                              _loc61_ = 0;
                              _loc60_ = Number(_loc53_ - _loc29_.x);
                              _loc61_ = Number(_loc54_ - _loc29_.y);
                              _loc59_ = Number(Number(_loc60_ * _loc60_ + _loc61_ * _loc61_));
                              _loc61_ = 0;
                              _loc62_ = 0;
                              _loc61_ = Number(_loc55_ - _loc34_.x);
                              _loc62_ = Number(_loc56_ - _loc34_.y);
                              _loc60_ = Number(Number(_loc61_ * _loc61_ + _loc62_ * _loc62_));
                              _loc61_ = 0;
                              _loc62_ = 0;
                              _loc63_ = null;
                              if(_loc57_ < _loc58_)
                              {
                                 _loc61_ = Number(_loc49_);
                                 _loc62_ = Number(_loc50_);
                                 _loc63_ = _loc42_;
                              }
                              else
                              {
                                 _loc61_ = Number(_loc51_);
                                 _loc62_ = Number(_loc52_);
                                 _loc63_ = _loc43_;
                                 _loc57_ = _loc58_;
                              }
                              _loc64_ = 0;
                              _loc65_ = 0;
                              _loc66_ = null;
                              if(_loc59_ < _loc60_)
                              {
                                 _loc64_ = Number(_loc53_);
                                 _loc65_ = Number(_loc54_);
                                 _loc66_ = _loc29_;
                              }
                              else
                              {
                                 _loc64_ = Number(_loc55_);
                                 _loc65_ = Number(_loc56_);
                                 _loc66_ = _loc34_;
                                 _loc59_ = Number(_loc60_);
                              }
                              if(_loc57_ < _loc59_)
                              {
                                 _loc16_.x = _loc61_;
                                 _loc16_.y = _loc62_;
                                 _loc17_.x = _loc63_.x;
                                 _loc17_.y = _loc63_.y;
                                 _loc20_ = Number(Number(Math.sqrt(_loc57_)));
                              }
                              else
                              {
                                 _loc17_.x = _loc64_;
                                 _loc17_.y = _loc65_;
                                 _loc16_.x = _loc66_.x;
                                 _loc16_.y = _loc66_.y;
                                 _loc20_ = Number(Number(Math.sqrt(_loc59_)));
                              }
                              if(_loc20_ != 0)
                              {
                                 _loc7_.x = _loc17_.x - _loc16_.x;
                                 _loc7_.y = _loc17_.y - _loc16_.y;
                                 _loc67_ = 1 / _loc20_;
                                 _loc7_.x = _loc7_.x * _loc67_;
                                 _loc7_.y = _loc7_.y * _loc67_;
                                 if(_loc27_)
                                 {
                                    _loc7_.x = -_loc7_.x;
                                    _loc7_.y = -_loc7_.y;
                                 }
                              }
                              _loc13_ = _loc20_;
                           }
                           else
                           {
                              _loc22_ = 0;
                              _loc23_ = 0;
                              _loc22_ = Number(_loc40_.gp0.x);
                              _loc23_ = Number(_loc40_.gp0.y);
                              _loc24_ = 0;
                              _loc26_ = 0;
                              _loc24_ = Number(_loc40_.gp1.x);
                              _loc26_ = Number(_loc40_.gp1.y);
                              _loc35_ = 0;
                              _loc44_ = 0;
                              _loc35_ = Number(_loc24_ - _loc22_);
                              _loc44_ = Number(_loc26_ - _loc23_);
                              _loc45_ = Number(_loc37_.var_91 * _loc22_ - _loc37_.var_92 * _loc23_);
                              _loc46_ = Number(_loc37_.var_91 * _loc24_ - _loc37_.var_92 * _loc26_);
                              _loc47_ = Number(1 / (_loc46_ - _loc45_));
                              _loc48_ = Number((-_loc37_.tp1 - _loc45_) * _loc47_);
                              if(_loc48_ > class_238.name_8)
                              {
                                 _loc49_ = Number(_loc48_);
                                 _loc22_ = Number(Number(_loc22_ + _loc35_ * _loc49_));
                                 _loc23_ = Number(Number(_loc23_ + _loc44_ * _loc49_));
                              }
                              _loc49_ = Number((-_loc37_.tp0 - _loc46_) * _loc47_);
                              if(_loc49_ < -class_238.name_8)
                              {
                                 _loc50_ = Number(_loc49_);
                                 _loc24_ = Number(Number(_loc24_ + _loc35_ * _loc50_));
                                 _loc26_ = Number(Number(_loc26_ + _loc44_ * _loc50_));
                              }
                              _loc50_ = Number(_loc22_ * _loc37_.var_92 + _loc23_ * _loc37_.var_91 - _loc37_.gprojection);
                              _loc51_ = Number(_loc24_ * _loc37_.var_92 + _loc26_ * _loc37_.var_91 - _loc37_.gprojection);
                              if(_loc50_ < _loc51_)
                              {
                                 _loc17_.x = _loc22_;
                                 _loc17_.y = _loc23_;
                                 _loc52_ = Number(-_loc50_);
                                 _loc16_.x = Number(_loc17_.x + _loc37_.var_92 * _loc52_);
                                 _loc16_.y = Number(_loc17_.y + _loc37_.var_91 * _loc52_);
                                 _loc13_ = _loc50_;
                              }
                              else
                              {
                                 _loc17_.x = _loc24_;
                                 _loc17_.y = _loc26_;
                                 _loc52_ = Number(-_loc51_);
                                 _loc16_.x = Number(_loc17_.x + _loc37_.var_92 * _loc52_);
                                 _loc16_.y = Number(_loc17_.y + _loc37_.var_91 * _loc52_);
                                 _loc13_ = _loc51_;
                              }
                           }
                        }
                        else
                        {
                           _loc13_ = _loc8_;
                        }
                     }
                     else
                     {
                        _loc13_ = _loc8_;
                     }
                  }
               }
               if(_loc13_ < _loc8_)
               {
                  _loc8_ = Number(_loc13_);
                  param3.x = _loc5_.x;
                  param3.y = _loc5_.y;
                  param4.x = _loc6_.x;
                  param4.y = _loc6_.y;
               }
               _loc11_ = _loc11_.next;
            }
            _loc9_ = _loc9_.next;
         }
         _loc16_ = _loc5_;
         if(_loc16_.outer != null)
         {
            _loc16_.outer.zpp_inner = null;
            _loc16_.outer = null;
         }
         _loc16_.var_103 = null;
         _loc16_._validate = null;
         _loc16_._invalidate = null;
         _loc16_.next = ZPP_Vec2.var_72;
         ZPP_Vec2.var_72 = _loc16_;
         _loc16_ = _loc6_;
         if(_loc16_.outer != null)
         {
            _loc16_.outer.zpp_inner = null;
            _loc16_.outer = null;
         }
         _loc16_.var_103 = null;
         _loc16_._validate = null;
         _loc16_._invalidate = null;
         _loc16_.next = ZPP_Vec2.var_72;
         ZPP_Vec2.var_72 = _loc16_;
         _loc16_ = _loc7_;
         if(_loc16_.outer != null)
         {
            _loc16_.outer.zpp_inner = null;
            _loc16_.outer = null;
         }
         _loc16_.var_103 = null;
         _loc16_._validate = null;
         _loc16_._invalidate = null;
         _loc16_.next = ZPP_Vec2.var_72;
         ZPP_Vec2.var_72 = _loc16_;
         return _loc8_;
      }
      
      public static function distance(param1:ZPP_Shape, param2:ZPP_Shape, param3:ZPP_Vec2, param4:ZPP_Vec2, param5:ZPP_Vec2, param6:Number = 1.0E100) : Number
      {
         var _loc7_:* = null as ZPP_Circle;
         var _loc8_:* = null as ZPP_Circle;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = 0;
         var _loc15_:* = NaN;
         var _loc16_:* = false;
         var _loc17_:* = null as ZPP_Shape;
         var _loc18_:* = null as ZPP_Vec2;
         var _loc19_:* = null as ZPP_Polygon;
         var _loc20_:* = null as ZPP_Edge;
         var _loc21_:* = null as ZNPNode_ZPP_Edge;
         var _loc22_:* = null as ZPP_Edge;
         var _loc23_:* = null as ZPP_Vec2;
         var _loc24_:* = NaN;
         var _loc25_:* = null as ZPP_Polygon;
         var _loc26_:* = null as ZPP_Edge;
         var _loc27_:* = null as ZPP_Polygon;
         var _loc28_:* = null as ZPP_Polygon;
         var _loc29_:* = null as ZPP_Edge;
         var _loc30_:* = null as ZPP_Edge;
         var _loc31_:* = null as ZPP_Vec2;
         var _loc32_:* = null as ZPP_Vec2;
         var _loc33_:* = NaN;
         var _loc34_:* = NaN;
         var _loc35_:* = NaN;
         var _loc36_:* = NaN;
         var _loc37_:* = NaN;
         var _loc38_:* = NaN;
         var _loc39_:* = NaN;
         var _loc40_:* = NaN;
         var _loc41_:* = NaN;
         var _loc42_:* = NaN;
         var _loc43_:* = NaN;
         var _loc44_:* = NaN;
         var _loc45_:* = NaN;
         var _loc46_:Number = NaN;
         var _loc47_:* = NaN;
         var _loc48_:* = NaN;
         var _loc49_:* = NaN;
         var _loc50_:* = NaN;
         var _loc51_:* = NaN;
         var _loc52_:* = null as ZPP_Vec2;
         var _loc53_:* = NaN;
         var _loc54_:* = NaN;
         var _loc55_:* = null as ZPP_Vec2;
         var _loc56_:Number = NaN;
         if(param1.type == class_223.var_131 && param2.type == class_223.var_131)
         {
            _loc7_ = param1.var_102;
            _loc8_ = param2.var_102;
            _loc10_ = 0;
            _loc11_ = 0;
            _loc10_ = Number(_loc8_.var_99 - _loc7_.var_99);
            _loc11_ = Number(_loc8_.var_100 - _loc7_.var_100);
            _loc13_ = Number(Number(_loc10_ * _loc10_ + _loc11_ * _loc11_));
            if(_loc13_ == 0)
            {
               _loc12_ = 0;
            }
            else
            {
               sf32(_loc13_,0);
               _loc14_ = 1597463007 - (li32(0) >> 1);
               si32(_loc14_,0);
               _loc15_ = Number(lf32(0));
               _loc12_ = Number(1 / (_loc15_ * (1.5 - 0.5 * _loc13_ * _loc15_ * _loc15_)));
            }
            _loc9_ = Number(_loc12_ - (Number(_loc7_.radius + _loc8_.radius)));
            if(_loc9_ < param6)
            {
               if(_loc12_ == 0)
               {
                  _loc10_ = 1;
                  _loc11_ = 0;
               }
               else
               {
                  _loc13_ = Number(1 / _loc12_);
                  _loc10_ = Number(_loc10_ * _loc13_);
                  _loc11_ = Number(_loc11_ * _loc13_);
               }
               _loc13_ = Number(_loc7_.radius);
               param3.x = Number(_loc7_.var_99 + _loc10_ * _loc13_);
               param3.y = Number(_loc7_.var_100 + _loc11_ * _loc13_);
               _loc13_ = Number(-_loc8_.radius);
               param4.x = Number(_loc8_.var_99 + _loc10_ * _loc13_);
               param4.y = Number(_loc8_.var_100 + _loc11_ * _loc13_);
               param5.x = _loc10_;
               param5.y = _loc11_;
            }
            return _loc9_;
         }
         _loc16_ = false;
         if(param1.type == class_223.var_131 && param2.type == class_223.var_155)
         {
            _loc17_ = param1;
            param1 = param2;
            param2 = _loc17_;
            _loc18_ = param3;
            param3 = param4;
            param4 = _loc18_;
            _loc16_ = true;
         }
         if(param1.type == class_223.var_155 && param2.type == class_223.var_131)
         {
            _loc19_ = param1.name_6;
            _loc7_ = param2.var_102;
            _loc9_ = -1.0e100;
            _loc20_ = null;
            _loc21_ = _loc19_.name_11.var_73;
            while(_loc21_ != null)
            {
               _loc22_ = _loc21_.var_74;
               _loc10_ = Number(_loc22_.var_92 * _loc7_.var_99 + _loc22_.var_91 * _loc7_.var_100 - _loc22_.gprojection - _loc7_.radius);
               if(_loc10_ > param6)
               {
                  _loc9_ = Number(_loc10_);
                  break;
               }
               if(_loc10_ > 0)
               {
                  if(_loc10_ > _loc9_)
                  {
                     _loc9_ = Number(_loc10_);
                     _loc20_ = _loc22_;
                  }
               }
               else if(_loc9_ < 0 && _loc10_ > _loc9_)
               {
                  _loc9_ = Number(_loc10_);
                  _loc20_ = _loc22_;
               }
               _loc21_ = _loc21_.next;
            }
            if(_loc9_ < param6)
            {
               _loc18_ = _loc20_.gp0;
               _loc23_ = _loc20_.gp1;
               _loc10_ = Number(_loc7_.var_100 * _loc20_.var_92 - _loc7_.var_99 * _loc20_.var_91);
               if(_loc10_ <= _loc18_.y * _loc20_.var_92 - _loc18_.x * _loc20_.var_91)
               {
                  _loc11_ = 0;
                  _loc12_ = 0;
                  _loc11_ = Number(_loc7_.var_99 - _loc18_.x);
                  _loc12_ = Number(_loc7_.var_100 - _loc18_.y);
                  _loc15_ = Number(Number(_loc11_ * _loc11_ + _loc12_ * _loc12_));
                  if(_loc15_ == 0)
                  {
                     _loc13_ = 0;
                  }
                  else
                  {
                     sf32(_loc15_,0);
                     _loc14_ = 1597463007 - (li32(0) >> 1);
                     si32(_loc14_,0);
                     _loc24_ = Number(lf32(0));
                     _loc13_ = Number(1 / (_loc24_ * (1.5 - 0.5 * _loc15_ * _loc24_ * _loc24_)));
                  }
                  _loc9_ = Number(_loc13_ - _loc7_.radius);
                  if(_loc9_ < param6)
                  {
                     if(_loc13_ == 0)
                     {
                        _loc11_ = 1;
                        _loc12_ = 0;
                     }
                     else
                     {
                        _loc15_ = Number(1 / _loc13_);
                        _loc11_ = Number(_loc11_ * _loc15_);
                        _loc12_ = Number(_loc12_ * _loc15_);
                     }
                     _loc14_ = 0;
                     param3.x = Number(_loc18_.x + _loc11_ * _loc14_);
                     param3.y = Number(_loc18_.y + _loc12_ * _loc14_);
                     _loc15_ = Number(-_loc7_.radius);
                     param4.x = Number(_loc7_.var_99 + _loc11_ * _loc15_);
                     param4.y = Number(_loc7_.var_100 + _loc12_ * _loc15_);
                     param5.x = _loc11_;
                     param5.y = _loc12_;
                  }
               }
               else if(_loc10_ >= _loc23_.y * _loc20_.var_92 - _loc23_.x * _loc20_.var_91)
               {
                  _loc11_ = 0;
                  _loc12_ = 0;
                  _loc11_ = Number(_loc7_.var_99 - _loc23_.x);
                  _loc12_ = Number(_loc7_.var_100 - _loc23_.y);
                  _loc15_ = Number(Number(_loc11_ * _loc11_ + _loc12_ * _loc12_));
                  if(_loc15_ == 0)
                  {
                     _loc13_ = 0;
                  }
                  else
                  {
                     sf32(_loc15_,0);
                     _loc14_ = 1597463007 - (li32(0) >> 1);
                     si32(_loc14_,0);
                     _loc24_ = Number(lf32(0));
                     _loc13_ = Number(1 / (_loc24_ * (1.5 - 0.5 * _loc15_ * _loc24_ * _loc24_)));
                  }
                  _loc9_ = Number(_loc13_ - _loc7_.radius);
                  if(_loc9_ < param6)
                  {
                     if(_loc13_ == 0)
                     {
                        _loc11_ = 1;
                        _loc12_ = 0;
                     }
                     else
                     {
                        _loc15_ = Number(1 / _loc13_);
                        _loc11_ = Number(_loc11_ * _loc15_);
                        _loc12_ = Number(_loc12_ * _loc15_);
                     }
                     _loc14_ = 0;
                     param3.x = Number(_loc23_.x + _loc11_ * _loc14_);
                     param3.y = Number(_loc23_.y + _loc12_ * _loc14_);
                     _loc15_ = Number(-_loc7_.radius);
                     param4.x = Number(_loc7_.var_99 + _loc11_ * _loc15_);
                     param4.y = Number(_loc7_.var_100 + _loc12_ * _loc15_);
                     param5.x = _loc11_;
                     param5.y = _loc12_;
                  }
               }
               else
               {
                  _loc11_ = Number(-_loc7_.radius);
                  param4.x = Number(_loc7_.var_99 + _loc20_.var_92 * _loc11_);
                  param4.y = Number(_loc7_.var_100 + _loc20_.var_91 * _loc11_);
                  _loc11_ = Number(-_loc9_);
                  param3.x = Number(param4.x + _loc20_.var_92 * _loc11_);
                  param3.y = Number(param4.y + _loc20_.var_91 * _loc11_);
                  param5.x = _loc20_.var_92;
                  param5.y = _loc20_.var_91;
               }
            }
            if(_loc16_)
            {
               param5.x = -param5.x;
               param5.y = -param5.y;
            }
            return _loc9_;
         }
         _loc19_ = param1.name_6;
         _loc25_ = param2.name_6;
         _loc9_ = -1.0e100;
         _loc20_ = null;
         _loc22_ = null;
         _loc14_ = 0;
         _loc21_ = _loc19_.name_11.var_73;
         while(_loc21_ != null)
         {
            _loc26_ = _loc21_.var_74;
            _loc10_ = 1.0e100;
            _loc18_ = _loc25_.var_107.next;
            while(_loc18_ != null)
            {
               _loc23_ = _loc18_;
               _loc11_ = Number(Number(_loc26_.var_92 * _loc23_.x + _loc26_.var_91 * _loc23_.y));
               if(_loc11_ < _loc10_)
               {
                  _loc10_ = Number(_loc11_);
               }
               _loc18_ = _loc18_.next;
            }
            _loc10_ = Number(_loc10_ - _loc26_.gprojection);
            if(_loc10_ > param6)
            {
               _loc9_ = Number(_loc10_);
               break;
            }
            if(_loc10_ > 0)
            {
               if(_loc10_ > _loc9_)
               {
                  _loc9_ = Number(_loc10_);
                  _loc20_ = _loc26_;
                  _loc14_ = 1;
               }
            }
            else if(_loc9_ < 0 && _loc10_ > _loc9_)
            {
               _loc9_ = Number(_loc10_);
               _loc20_ = _loc26_;
               _loc14_ = 1;
            }
            _loc21_ = _loc21_.next;
         }
         if(_loc9_ < param6)
         {
            _loc21_ = _loc25_.name_11.var_73;
            while(_loc21_ != null)
            {
               _loc26_ = _loc21_.var_74;
               _loc10_ = 1.0e100;
               _loc18_ = _loc19_.var_107.next;
               while(_loc18_ != null)
               {
                  _loc23_ = _loc18_;
                  _loc11_ = Number(Number(_loc26_.var_92 * _loc23_.x + _loc26_.var_91 * _loc23_.y));
                  if(_loc11_ < _loc10_)
                  {
                     _loc10_ = Number(_loc11_);
                  }
                  _loc18_ = _loc18_.next;
               }
               _loc10_ = Number(_loc10_ - _loc26_.gprojection);
               if(_loc10_ > param6)
               {
                  _loc9_ = Number(_loc10_);
                  break;
               }
               if(_loc10_ > 0)
               {
                  if(_loc10_ > _loc9_)
                  {
                     _loc9_ = Number(_loc10_);
                     _loc22_ = _loc26_;
                     _loc14_ = 2;
                  }
               }
               else if(_loc9_ < 0 && _loc10_ > _loc9_)
               {
                  _loc9_ = Number(_loc10_);
                  _loc22_ = _loc26_;
                  _loc14_ = 2;
               }
               _loc21_ = _loc21_.next;
            }
            if(_loc9_ < param6)
            {
               if(_loc14_ == 1)
               {
                  _loc27_ = _loc19_;
                  _loc28_ = _loc25_;
                  _loc26_ = _loc20_;
               }
               else
               {
                  _loc27_ = _loc25_;
                  _loc28_ = _loc19_;
                  _loc26_ = _loc22_;
                  _loc18_ = param3;
                  param3 = param4;
                  param4 = _loc18_;
                  _loc16_ = !_loc16_;
               }
               _loc29_ = null;
               _loc10_ = 1.0e100;
               _loc21_ = _loc28_.name_11.var_73;
               while(_loc21_ != null)
               {
                  _loc30_ = _loc21_.var_74;
                  _loc11_ = Number(Number(_loc26_.var_92 * _loc30_.var_92 + _loc26_.var_91 * _loc30_.var_91));
                  if(_loc11_ < _loc10_)
                  {
                     _loc10_ = Number(_loc11_);
                     _loc29_ = _loc30_;
                  }
                  _loc21_ = _loc21_.next;
               }
               if(_loc16_)
               {
                  param5.x = -_loc26_.var_92;
                  param5.y = -_loc26_.var_91;
               }
               else
               {
                  param5.x = _loc26_.var_92;
                  param5.y = _loc26_.var_91;
               }
               if(_loc9_ >= 0)
               {
                  _loc18_ = _loc26_.gp0;
                  _loc23_ = _loc26_.gp1;
                  _loc31_ = _loc29_.gp0;
                  _loc32_ = _loc29_.gp1;
                  _loc11_ = 0;
                  _loc12_ = 0;
                  _loc13_ = 0;
                  _loc15_ = 0;
                  _loc11_ = Number(_loc23_.x - _loc18_.x);
                  _loc12_ = Number(_loc23_.y - _loc18_.y);
                  _loc13_ = Number(_loc32_.x - _loc31_.x);
                  _loc15_ = Number(_loc32_.y - _loc31_.y);
                  _loc24_ = Number(1 / (Number(_loc11_ * _loc11_ + _loc12_ * _loc12_)));
                  _loc33_ = Number(1 / (Number(_loc13_ * _loc13_ + _loc15_ * _loc15_)));
                  _loc34_ = Number(-(_loc11_ * (_loc18_.x - _loc31_.x) + _loc12_ * (_loc18_.y - _loc31_.y)) * _loc24_);
                  _loc35_ = Number(-(_loc11_ * (_loc18_.x - _loc32_.x) + _loc12_ * (_loc18_.y - _loc32_.y)) * _loc24_);
                  _loc36_ = Number(-(_loc13_ * (_loc31_.x - _loc18_.x) + _loc15_ * (_loc31_.y - _loc18_.y)) * _loc33_);
                  _loc37_ = Number(-(_loc13_ * (_loc31_.x - _loc23_.x) + _loc15_ * (_loc31_.y - _loc23_.y)) * _loc33_);
                  if(_loc34_ < 0)
                  {
                     _loc34_ = 0;
                  }
                  else if(_loc34_ > 1)
                  {
                     _loc34_ = 1;
                  }
                  if(_loc35_ < 0)
                  {
                     _loc35_ = 0;
                  }
                  else if(_loc35_ > 1)
                  {
                     _loc35_ = 1;
                  }
                  if(_loc36_ < 0)
                  {
                     _loc36_ = 0;
                  }
                  else if(_loc36_ > 1)
                  {
                     _loc36_ = 1;
                  }
                  if(_loc37_ < 0)
                  {
                     _loc37_ = 0;
                  }
                  else if(_loc37_ > 1)
                  {
                     _loc37_ = 1;
                  }
                  _loc38_ = 0;
                  _loc39_ = 0;
                  _loc40_ = Number(_loc34_);
                  _loc38_ = Number(Number(_loc18_.x + _loc11_ * _loc40_));
                  _loc39_ = Number(Number(_loc18_.y + _loc12_ * _loc40_));
                  _loc40_ = 0;
                  _loc41_ = 0;
                  _loc42_ = Number(_loc35_);
                  _loc40_ = Number(Number(_loc18_.x + _loc11_ * _loc42_));
                  _loc41_ = Number(Number(_loc18_.y + _loc12_ * _loc42_));
                  _loc42_ = 0;
                  _loc43_ = 0;
                  _loc44_ = Number(_loc36_);
                  _loc42_ = Number(Number(_loc31_.x + _loc13_ * _loc44_));
                  _loc43_ = Number(Number(_loc31_.y + _loc15_ * _loc44_));
                  _loc44_ = 0;
                  _loc45_ = 0;
                  _loc46_ = _loc37_;
                  _loc44_ = Number(Number(_loc31_.x + _loc13_ * _loc46_));
                  _loc45_ = Number(Number(_loc31_.y + _loc15_ * _loc46_));
                  _loc47_ = 0;
                  _loc48_ = 0;
                  _loc47_ = Number(_loc38_ - _loc31_.x);
                  _loc48_ = Number(_loc39_ - _loc31_.y);
                  _loc46_ = Number(_loc47_ * _loc47_ + _loc48_ * _loc48_);
                  _loc48_ = 0;
                  _loc49_ = 0;
                  _loc48_ = Number(_loc40_ - _loc32_.x);
                  _loc49_ = Number(_loc41_ - _loc32_.y);
                  _loc47_ = Number(Number(_loc48_ * _loc48_ + _loc49_ * _loc49_));
                  _loc49_ = 0;
                  _loc50_ = 0;
                  _loc49_ = Number(_loc42_ - _loc18_.x);
                  _loc50_ = Number(_loc43_ - _loc18_.y);
                  _loc48_ = Number(Number(_loc49_ * _loc49_ + _loc50_ * _loc50_));
                  _loc50_ = 0;
                  _loc51_ = 0;
                  _loc50_ = Number(_loc44_ - _loc23_.x);
                  _loc51_ = Number(_loc45_ - _loc23_.y);
                  _loc49_ = Number(Number(_loc50_ * _loc50_ + _loc51_ * _loc51_));
                  _loc50_ = 0;
                  _loc51_ = 0;
                  _loc52_ = null;
                  if(_loc46_ < _loc47_)
                  {
                     _loc50_ = Number(_loc38_);
                     _loc51_ = Number(_loc39_);
                     _loc52_ = _loc31_;
                  }
                  else
                  {
                     _loc50_ = Number(_loc40_);
                     _loc51_ = Number(_loc41_);
                     _loc52_ = _loc32_;
                     _loc46_ = _loc47_;
                  }
                  _loc53_ = 0;
                  _loc54_ = 0;
                  _loc55_ = null;
                  if(_loc48_ < _loc49_)
                  {
                     _loc53_ = Number(_loc42_);
                     _loc54_ = Number(_loc43_);
                     _loc55_ = _loc18_;
                  }
                  else
                  {
                     _loc53_ = Number(_loc44_);
                     _loc54_ = Number(_loc45_);
                     _loc55_ = _loc23_;
                     _loc48_ = Number(_loc49_);
                  }
                  if(_loc46_ < _loc48_)
                  {
                     param3.x = _loc50_;
                     param3.y = _loc51_;
                     param4.x = _loc52_.x;
                     param4.y = _loc52_.y;
                     _loc9_ = Number(Number(Math.sqrt(_loc46_)));
                  }
                  else
                  {
                     param4.x = _loc53_;
                     param4.y = _loc54_;
                     param3.x = _loc55_.x;
                     param3.y = _loc55_.y;
                     _loc9_ = Number(Number(Math.sqrt(_loc48_)));
                  }
                  if(_loc9_ != 0)
                  {
                     param5.x = param4.x - param3.x;
                     param5.y = param4.y - param3.y;
                     _loc56_ = 1 / _loc9_;
                     param5.x = param5.x * _loc56_;
                     param5.y = param5.y * _loc56_;
                     if(_loc16_)
                     {
                        param5.x = -param5.x;
                        param5.y = -param5.y;
                     }
                  }
                  return _loc9_;
               }
               _loc11_ = 0;
               _loc12_ = 0;
               _loc11_ = Number(_loc29_.gp0.x);
               _loc12_ = Number(_loc29_.gp0.y);
               _loc13_ = 0;
               _loc15_ = 0;
               _loc13_ = Number(_loc29_.gp1.x);
               _loc15_ = Number(_loc29_.gp1.y);
               _loc24_ = 0;
               _loc33_ = 0;
               _loc24_ = Number(_loc13_ - _loc11_);
               _loc33_ = Number(_loc15_ - _loc12_);
               _loc34_ = Number(_loc26_.var_91 * _loc11_ - _loc26_.var_92 * _loc12_);
               _loc35_ = Number(_loc26_.var_91 * _loc13_ - _loc26_.var_92 * _loc15_);
               _loc36_ = Number(1 / (_loc35_ - _loc34_));
               _loc37_ = Number((-_loc26_.tp1 - _loc34_) * _loc36_);
               if(_loc37_ > class_238.name_8)
               {
                  _loc38_ = Number(_loc37_);
                  _loc11_ = Number(Number(_loc11_ + _loc24_ * _loc38_));
                  _loc12_ = Number(Number(_loc12_ + _loc33_ * _loc38_));
               }
               _loc38_ = Number((-_loc26_.tp0 - _loc35_) * _loc36_);
               if(_loc38_ < -class_238.name_8)
               {
                  _loc39_ = Number(_loc38_);
                  _loc13_ = Number(Number(_loc13_ + _loc24_ * _loc39_));
                  _loc15_ = Number(Number(_loc15_ + _loc33_ * _loc39_));
               }
               _loc39_ = Number(_loc11_ * _loc26_.var_92 + _loc12_ * _loc26_.var_91 - _loc26_.gprojection);
               _loc40_ = Number(_loc13_ * _loc26_.var_92 + _loc15_ * _loc26_.var_91 - _loc26_.gprojection);
               if(_loc39_ < _loc40_)
               {
                  param4.x = _loc11_;
                  param4.y = _loc12_;
                  _loc41_ = Number(-_loc39_);
                  param3.x = Number(param4.x + _loc26_.var_92 * _loc41_);
                  param3.y = Number(param4.y + _loc26_.var_91 * _loc41_);
                  return _loc39_;
               }
               param4.x = _loc13_;
               param4.y = _loc15_;
               _loc41_ = Number(-_loc40_);
               param3.x = Number(param4.x + _loc26_.var_92 * _loc41_);
               param3.y = Number(param4.y + _loc26_.var_91 * _loc41_);
               return _loc40_;
            }
            return param6;
         }
         return param6;
      }
   }
}
