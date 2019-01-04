package zpp_nape.geom
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
   import nape.geom.Vec2;
   import nape.geom.class_260;
   import nape.geom.class_321;
   import zpp_nape.util.ZNPNode_ZPP_CutInt;
   import zpp_nape.util.ZNPNode_ZPP_CutVert;
   import zpp_nape.util.class_219;
   import zpp_nape.util.class_341;
   import zpp_nape.util.class_342;
   
   public final class class_324
   {
      
      public static var var_220:class_342 = null;
      
      public static var var_385:class_341 = null;
       
      
      public function class_324()
      {
      }
      
      public static function run(param1:ZPP_GeomVert, param2:Vec2, param3:Vec2, param4:Boolean, param5:Boolean, param6:class_321) : class_321
      {
         var _loc9_:* = null as ZPP_Vec2;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc18_:* = null as ZPP_CutVert;
         var _loc19_:* = null as ZPP_CutVert;
         var _loc20_:* = null as ZPP_CutVert;
         var _loc21_:* = null as ZPP_CutVert;
         var _loc22_:* = null as ZPP_CutVert;
         var _loc23_:* = NaN;
         var _loc24_:* = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:* = NaN;
         var _loc27_:* = 0;
         var _loc28_:* = NaN;
         var _loc29_:Boolean = false;
         var _loc30_:* = NaN;
         var _loc31_:Number = NaN;
         var _loc32_:* = false;
         var _loc33_:* = null as ZPP_GeomVert;
         var _loc34_:* = null as ZPP_GeomVert;
         var _loc35_:* = null as ZPP_GeomVert;
         var _loc36_:* = null as ZPP_GeomVert;
         var _loc37_:* = null as ZPP_GeomVert;
         var _loc38_:* = null as ZPP_CutVert;
         var _loc39_:* = null as ZPP_CutVert;
         var _loc40_:* = null as ZPP_CutVert;
         var _loc41_:* = null as ZPP_CutInt;
         var _loc42_:* = null as ZPP_GeomVert;
         var _loc43_:* = NaN;
         var _loc44_:* = NaN;
         var _loc45_:Number = NaN;
         var _loc47_:* = null as ZNPNode_ZPP_CutInt;
         var _loc48_:* = null as ZNPNode_ZPP_CutInt;
         var _loc49_:* = null as ZNPNode_ZPP_CutInt;
         var _loc50_:* = null as ZNPNode_ZPP_CutInt;
         var _loc51_:* = null as ZNPNode_ZPP_CutInt;
         var _loc52_:int = 0;
         var _loc53_:int = 0;
         var _loc54_:int = 0;
         var _loc55_:* = null as ZPP_CutInt;
         var _loc56_:* = null as Vec2;
         var _loc57_:* = null as Vec2;
         var _loc58_:* = null as ZPP_Vec2;
         var _loc59_:* = null as ZPP_CutInt;
         var _loc60_:* = null as class_321;
         var _loc62_:* = null as class_260;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         _loc9_ = param2.zpp_inner;
         if(_loc9_._validate != null)
         {
            _loc9_._validate();
         }
         _loc7_ = Number(param2.zpp_inner.x);
         _loc9_ = param2.zpp_inner;
         if(_loc9_._validate != null)
         {
            _loc9_._validate();
         }
         _loc8_ = Number(param2.zpp_inner.y);
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         _loc9_ = param3.zpp_inner;
         if(_loc9_._validate != null)
         {
            _loc9_._validate();
         }
         _loc10_ = Number(param3.zpp_inner.x - _loc7_);
         _loc9_ = param3.zpp_inner;
         if(_loc9_._validate != null)
         {
            _loc9_._validate();
         }
         _loc11_ = Number(param3.zpp_inner.y - _loc8_);
         if(param4)
         {
            _loc12_ = 0;
         }
         else
         {
            _loc12_ = -1.79e308;
         }
         if(param5)
         {
            _loc13_ = 1;
         }
         else
         {
            _loc13_ = 1.79e308;
         }
         var _loc14_:Number = -(_loc8_ * _loc10_ - _loc7_ * _loc11_);
         var _loc15_:* = null;
         var _loc16_:Boolean = false;
         var _loc17_:ZPP_GeomVert = param1;
         do
         {
            if(ZPP_CutVert.var_72 == null)
            {
               _loc18_ = new ZPP_CutVert();
            }
            else
            {
               _loc18_ = ZPP_CutVert.var_72;
               ZPP_CutVert.var_72 = _loc18_.next;
               _loc18_.next = null;
            }
            null;
            _loc18_.var_308 = _loc17_;
            _loc18_.var_95 = _loc18_.var_308.x;
            _loc18_.var_96 = _loc18_.var_308.y;
            _loc18_.value = Number(_loc18_.var_96 * _loc10_ - _loc18_.var_95 * _loc11_ + _loc14_);
            _loc18_.var_610 = _loc18_.value > 0;
            if(_loc18_.value == 0)
            {
               _loc16_ = true;
            }
            _loc19_ = _loc18_;
            if(_loc15_ == null)
            {
               _loc20_ = _loc19_;
               _loc19_.next = _loc20_;
               _loc20_ = _loc20_;
               _loc19_.var_75 = _loc20_;
               _loc15_ = _loc20_;
            }
            else
            {
               _loc19_.var_75 = _loc15_;
               _loc19_.next = _loc15_.next;
               _loc15_.next.var_75 = _loc19_;
               _loc15_.next = _loc19_;
            }
            _loc15_ = _loc19_;
            _loc17_ = _loc17_.next;
         }
         while(_loc17_ != param1);
         
         if(_loc16_)
         {
            _loc18_ = null;
            _loc19_ = _loc15_;
            _loc20_ = _loc15_;
            if(_loc19_ != null)
            {
               _loc21_ = _loc19_;
               do
               {
                  _loc22_ = _loc21_;
                  if(_loc22_.value != 0)
                  {
                     _loc18_ = _loc22_;
                     break;
                  }
                  _loc21_ = _loc21_.next;
               }
               while(_loc21_ != _loc20_);
               
            }
            _loc23_ = 0;
            _loc24_ = 0;
            _loc23_ = Number(_loc10_);
            _loc24_ = Number(_loc11_);
            _loc25_ = Number(_loc23_ * _loc23_ + _loc24_ * _loc24_);
            sf32(_loc25_,0);
            _loc27_ = 1597463007 - (li32(0) >> 1);
            si32(_loc27_,0);
            _loc28_ = Number(lf32(0));
            _loc26_ = Number(_loc28_ * (1.5 - 0.5 * _loc25_ * _loc28_ * _loc28_));
            _loc28_ = Number(_loc26_);
            _loc23_ = Number(_loc23_ * _loc28_);
            _loc24_ = Number(_loc24_ * _loc28_);
            _loc25_ = _loc23_;
            _loc23_ = Number(-_loc24_);
            _loc24_ = Number(_loc25_);
            _loc19_ = null;
            _loc20_ = _loc18_;
            do
            {
               if(_loc20_.value != 0 && (_loc19_ == null || _loc20_ == _loc19_.next))
               {
                  _loc19_ = _loc20_;
                  _loc20_ = _loc20_.next;
               }
               else
               {
                  _loc25_ = _loc19_.value * _loc20_.value;
                  if(_loc25_ == 0)
                  {
                     _loc20_ = _loc20_.next;
                  }
                  else
                  {
                     _loc21_ = _loc19_.next;
                     if(_loc25_ > 0)
                     {
                        _loc29_ = _loc19_.var_610;
                     }
                     else
                     {
                        _loc22_ = _loc21_.next;
                        _loc26_ = 0;
                        _loc28_ = 0;
                        _loc26_ = Number(Number(_loc21_.var_95 + _loc22_.var_95));
                        _loc28_ = Number(Number(_loc21_.var_96 + _loc22_.var_96));
                        _loc30_ = 0.5;
                        _loc26_ = Number(_loc26_ * _loc30_);
                        _loc28_ = Number(_loc28_ * _loc30_);
                        _loc30_ = Number(Number(_loc26_ + _loc23_ * 1.0e-8));
                        _loc31_ = Number(_loc28_ + _loc24_ * 1.0e-8);
                        _loc32_ = false;
                        _loc33_ = param1;
                        _loc34_ = param1;
                        if(_loc33_ != null)
                        {
                           _loc35_ = _loc33_;
                           do
                           {
                              _loc36_ = _loc35_;
                              _loc37_ = _loc36_.var_75;
                              if((_loc36_.y < _loc31_ && _loc37_.y >= _loc31_ || _loc37_.y < _loc31_ && _loc36_.y >= _loc31_) && (_loc36_.x <= _loc30_ || _loc37_.x <= _loc30_))
                              {
                                 if(Number(_loc36_.x + (_loc31_ - _loc36_.y) / (_loc37_.y - _loc36_.y) * (_loc37_.x - _loc36_.x)) < _loc30_)
                                 {
                                    _loc32_ = !_loc32_;
                                 }
                              }
                              _loc35_ = _loc35_.next;
                           }
                           while(_loc35_ != _loc34_);
                           
                        }
                        _loc29_ = _loc32_;
                     }
                     _loc22_ = _loc21_;
                     _loc38_ = _loc20_;
                     if(_loc22_ != null)
                     {
                        _loc39_ = _loc22_;
                        do
                        {
                           _loc40_ = _loc39_;
                           _loc40_.var_610 = _loc29_;
                           _loc39_ = _loc39_.next;
                        }
                        while(_loc39_ != _loc38_);
                        
                     }
                     _loc19_ = _loc20_;
                     _loc20_ = _loc20_.next;
                  }
               }
            }
            while(_loc20_ != _loc18_);
            
            if(_loc20_.value != 0 && (_loc19_ == null || _loc20_ == _loc19_.next))
            {
               _loc19_ = _loc20_;
               _loc20_ = _loc20_.next;
            }
            else
            {
               _loc25_ = _loc19_.value * _loc20_.value;
               if(_loc25_ == 0)
               {
                  _loc20_ = _loc20_.next;
               }
               else
               {
                  _loc21_ = _loc19_.next;
                  if(_loc25_ > 0)
                  {
                     _loc29_ = _loc19_.var_610;
                  }
                  else
                  {
                     _loc22_ = _loc21_.next;
                     _loc26_ = 0;
                     _loc28_ = 0;
                     _loc26_ = Number(Number(_loc21_.var_95 + _loc22_.var_95));
                     _loc28_ = Number(Number(_loc21_.var_96 + _loc22_.var_96));
                     _loc30_ = 0.5;
                     _loc26_ = Number(_loc26_ * _loc30_);
                     _loc28_ = Number(_loc28_ * _loc30_);
                     _loc30_ = Number(Number(_loc26_ + _loc23_ * 1.0e-8));
                     _loc31_ = Number(_loc28_ + _loc24_ * 1.0e-8);
                     _loc32_ = false;
                     _loc33_ = param1;
                     _loc34_ = param1;
                     if(_loc33_ != null)
                     {
                        _loc35_ = _loc33_;
                        do
                        {
                           _loc36_ = _loc35_;
                           _loc37_ = _loc36_.var_75;
                           if((_loc36_.y < _loc31_ && _loc37_.y >= _loc31_ || _loc37_.y < _loc31_ && _loc36_.y >= _loc31_) && (_loc36_.x <= _loc30_ || _loc37_.x <= _loc30_))
                           {
                              if(Number(_loc36_.x + (_loc31_ - _loc36_.y) / (_loc37_.y - _loc36_.y) * (_loc37_.x - _loc36_.x)) < _loc30_)
                              {
                                 _loc32_ = !_loc32_;
                              }
                           }
                           _loc35_ = _loc35_.next;
                        }
                        while(_loc35_ != _loc34_);
                        
                     }
                     _loc29_ = _loc32_;
                  }
                  _loc22_ = _loc21_;
                  _loc38_ = _loc20_;
                  if(_loc22_ != null)
                  {
                     _loc39_ = _loc22_;
                     do
                     {
                        _loc40_ = _loc39_;
                        _loc40_.var_610 = _loc29_;
                        _loc39_ = _loc39_.next;
                     }
                     while(_loc39_ != _loc38_);
                     
                  }
                  _loc19_ = _loc20_;
                  _loc20_ = _loc20_.next;
               }
            }
         }
         if(class_324.var_220 == null)
         {
            class_324.var_220 = new class_342();
         }
         if(class_324.var_385 == null)
         {
            class_324.var_385 = new class_341();
         }
         _loc33_ = null;
         if(ZPP_GeomVert.var_72 == null)
         {
            _loc35_ = new ZPP_GeomVert();
         }
         else
         {
            _loc35_ = ZPP_GeomVert.var_72;
            ZPP_GeomVert.var_72 = _loc35_.next;
            _loc35_.next = null;
         }
         _loc35_.var_154 = false;
         _loc35_.x = _loc15_.var_95;
         _loc35_.y = _loc15_.var_96;
         _loc34_ = _loc35_;
         if(_loc33_ == null)
         {
            _loc35_ = _loc34_;
            _loc34_.next = _loc35_;
            _loc35_ = _loc35_;
            _loc34_.var_75 = _loc35_;
            _loc33_ = _loc35_;
         }
         else
         {
            _loc34_.next = _loc33_;
            _loc34_.var_75 = _loc33_.var_75;
            _loc33_.var_75.next = _loc34_;
            _loc33_.var_75 = _loc34_;
         }
         _loc34_;
         _loc34_ = _loc33_;
         if(ZPP_CutVert.var_72 == null)
         {
            _loc19_ = new ZPP_CutVert();
         }
         else
         {
            _loc19_ = ZPP_CutVert.var_72;
            ZPP_CutVert.var_72 = _loc19_.next;
            _loc19_.next = null;
         }
         null;
         _loc19_.var_308 = _loc33_;
         _loc19_.parent = _loc19_;
         _loc19_.var_158 = 0;
         _loc19_.used = false;
         _loc18_ = _loc19_;
         class_324.var_385.add(_loc18_);
         _loc19_ = _loc15_;
         do
         {
            _loc20_ = _loc19_.next;
            if(ZPP_GeomVert.var_72 == null)
            {
               _loc36_ = new ZPP_GeomVert();
            }
            else
            {
               _loc36_ = ZPP_GeomVert.var_72;
               ZPP_GeomVert.var_72 = _loc36_.next;
               _loc36_.next = null;
            }
            _loc36_.var_154 = false;
            _loc36_.x = _loc20_.var_95;
            _loc36_.y = _loc20_.var_96;
            _loc35_ = _loc36_;
            if(_loc19_.var_610 == _loc20_.var_610)
            {
               _loc36_ = _loc35_;
               if(_loc33_ == null)
               {
                  _loc37_ = _loc36_;
                  _loc36_.next = _loc37_;
                  _loc37_ = _loc37_;
                  _loc36_.var_75 = _loc37_;
                  _loc33_ = _loc37_;
               }
               else
               {
                  _loc36_.next = _loc33_;
                  _loc36_.var_75 = _loc33_.var_75;
                  _loc33_.var_75.next = _loc36_;
                  _loc33_.var_75 = _loc36_;
               }
               _loc36_;
            }
            else
            {
               _loc23_ = 0;
               _loc24_ = 0;
               _loc23_ = Number(_loc20_.var_95 - _loc19_.var_95);
               _loc24_ = Number(_loc20_.var_96 - _loc19_.var_96);
               _loc25_ = _loc11_ * _loc23_ - _loc10_ * _loc24_;
               _loc25_ = 1 / _loc25_;
               _loc26_ = 0;
               _loc28_ = 0;
               _loc26_ = Number(_loc7_ - _loc19_.var_95);
               _loc28_ = Number(_loc8_ - _loc19_.var_96);
               _loc30_ = Number((_loc24_ * _loc26_ - _loc23_ * _loc28_) * _loc25_);
               if(_loc30_ < _loc12_ || _loc30_ > _loc13_)
               {
                  _loc29_ = false;
                  §§push(class_324.var_220);
                  if(ZPP_CutInt.var_72 == null)
                  {
                     _loc41_ = new ZPP_CutInt();
                  }
                  else
                  {
                     _loc41_ = ZPP_CutInt.var_72;
                     ZPP_CutInt.var_72 = _loc41_.next;
                     _loc41_.next = null;
                  }
                  null;
                  _loc41_.var_467 = true;
                  _loc41_.end = null;
                  _loc41_.start = null;
                  _loc41_.path0 = null;
                  _loc41_.path1 = null;
                  _loc41_.time = _loc30_;
                  _loc41_.vertex = _loc29_;
                  §§pop().add(_loc41_);
                  _loc36_ = _loc35_;
                  if(_loc33_ == null)
                  {
                     _loc37_ = _loc36_;
                     _loc36_.next = _loc37_;
                     _loc37_ = _loc37_;
                     _loc36_.var_75 = _loc37_;
                     _loc33_ = _loc37_;
                  }
                  else
                  {
                     _loc36_.next = _loc33_;
                     _loc36_.var_75 = _loc33_.var_75;
                     _loc33_.var_75.next = _loc36_;
                     _loc33_.var_75 = _loc36_;
                  }
                  _loc36_;
               }
               else if(_loc19_.value == 0)
               {
                  _loc36_ = _loc33_.var_75;
                  _loc33_ = null;
                  if(ZPP_GeomVert.var_72 == null)
                  {
                     _loc42_ = new ZPP_GeomVert();
                  }
                  else
                  {
                     _loc42_ = ZPP_GeomVert.var_72;
                     ZPP_GeomVert.var_72 = _loc42_.next;
                     _loc42_.next = null;
                  }
                  _loc42_.var_154 = false;
                  _loc42_.x = _loc36_.x;
                  _loc42_.y = _loc36_.y;
                  _loc37_ = _loc42_;
                  if(_loc33_ == null)
                  {
                     _loc42_ = _loc37_;
                     _loc37_.next = _loc42_;
                     _loc42_ = _loc42_;
                     _loc37_.var_75 = _loc42_;
                     _loc33_ = _loc42_;
                  }
                  else
                  {
                     _loc37_.next = _loc33_;
                     _loc37_.var_75 = _loc33_.var_75;
                     _loc33_.var_75.next = _loc37_;
                     _loc33_.var_75 = _loc37_;
                  }
                  _loc37_;
                  _loc37_ = _loc35_;
                  if(_loc33_ == null)
                  {
                     _loc42_ = _loc37_;
                     _loc37_.next = _loc42_;
                     _loc42_ = _loc42_;
                     _loc37_.var_75 = _loc42_;
                     _loc33_ = _loc42_;
                  }
                  else
                  {
                     _loc37_.next = _loc33_;
                     _loc37_.var_75 = _loc33_.var_75;
                     _loc33_.var_75.next = _loc37_;
                     _loc33_.var_75 = _loc37_;
                  }
                  _loc37_;
                  _loc21_ = class_324.var_385.var_73.var_74;
                  §§push(class_324.var_385);
                  if(ZPP_CutVert.var_72 == null)
                  {
                     _loc22_ = new ZPP_CutVert();
                  }
                  else
                  {
                     _loc22_ = ZPP_CutVert.var_72;
                     ZPP_CutVert.var_72 = _loc22_.next;
                     _loc22_.next = null;
                  }
                  null;
                  _loc22_.var_308 = _loc33_;
                  _loc22_.parent = _loc22_;
                  _loc22_.var_158 = 0;
                  _loc22_.used = false;
                  §§pop().add(_loc22_);
                  _loc22_ = class_324.var_385.var_73.var_74;
                  _loc29_ = false;
                  §§push(class_324.var_220);
                  if(ZPP_CutInt.var_72 == null)
                  {
                     _loc41_ = new ZPP_CutInt();
                  }
                  else
                  {
                     _loc41_ = ZPP_CutInt.var_72;
                     ZPP_CutInt.var_72 = _loc41_.next;
                     _loc41_.next = null;
                  }
                  null;
                  _loc41_.var_467 = true;
                  _loc41_.end = _loc36_;
                  _loc41_.start = _loc33_;
                  _loc41_.path0 = _loc21_;
                  _loc41_.path1 = _loc22_;
                  _loc41_.time = _loc30_;
                  _loc41_.vertex = _loc29_;
                  §§pop().add(_loc41_);
               }
               else if(_loc20_.value == 0)
               {
                  _loc36_ = _loc35_;
                  if(_loc33_ == null)
                  {
                     _loc37_ = _loc36_;
                     _loc36_.next = _loc37_;
                     _loc37_ = _loc37_;
                     _loc36_.var_75 = _loc37_;
                     _loc33_ = _loc37_;
                  }
                  else
                  {
                     _loc36_.next = _loc33_;
                     _loc36_.var_75 = _loc33_.var_75;
                     _loc33_.var_75.next = _loc36_;
                     _loc33_.var_75 = _loc36_;
                  }
                  _loc36_;
                  _loc36_ = _loc33_.var_75;
                  _loc33_ = null;
                  if(ZPP_GeomVert.var_72 == null)
                  {
                     _loc42_ = new ZPP_GeomVert();
                  }
                  else
                  {
                     _loc42_ = ZPP_GeomVert.var_72;
                     ZPP_GeomVert.var_72 = _loc42_.next;
                     _loc42_.next = null;
                  }
                  _loc42_.var_154 = false;
                  _loc42_.x = _loc20_.var_95;
                  _loc42_.y = _loc20_.var_96;
                  _loc37_ = _loc42_;
                  if(_loc33_ == null)
                  {
                     _loc42_ = _loc37_;
                     _loc37_.next = _loc42_;
                     _loc42_ = _loc42_;
                     _loc37_.var_75 = _loc42_;
                     _loc33_ = _loc42_;
                  }
                  else
                  {
                     _loc37_.next = _loc33_;
                     _loc37_.var_75 = _loc33_.var_75;
                     _loc33_.var_75.next = _loc37_;
                     _loc33_.var_75 = _loc37_;
                  }
                  _loc37_;
                  _loc21_ = class_324.var_385.var_73.var_74;
                  §§push(class_324.var_385);
                  if(ZPP_CutVert.var_72 == null)
                  {
                     _loc22_ = new ZPP_CutVert();
                  }
                  else
                  {
                     _loc22_ = ZPP_CutVert.var_72;
                     ZPP_CutVert.var_72 = _loc22_.next;
                     _loc22_.next = null;
                  }
                  null;
                  _loc22_.var_308 = _loc33_;
                  _loc22_.parent = _loc22_;
                  _loc22_.var_158 = 0;
                  _loc22_.used = false;
                  §§pop().add(_loc22_);
                  _loc22_ = class_324.var_385.var_73.var_74;
                  _loc29_ = false;
                  §§push(class_324.var_220);
                  if(ZPP_CutInt.var_72 == null)
                  {
                     _loc41_ = new ZPP_CutInt();
                  }
                  else
                  {
                     _loc41_ = ZPP_CutInt.var_72;
                     ZPP_CutInt.var_72 = _loc41_.next;
                     _loc41_.next = null;
                  }
                  null;
                  _loc41_.var_467 = true;
                  _loc41_.end = _loc36_;
                  _loc41_.start = _loc33_;
                  _loc41_.path0 = _loc21_;
                  _loc41_.path1 = _loc22_;
                  _loc41_.time = _loc30_;
                  _loc41_.vertex = _loc29_;
                  §§pop().add(_loc41_);
               }
               else
               {
                  _loc31_ = (_loc11_ * _loc26_ - _loc10_ * _loc28_) * _loc25_;
                  _loc43_ = 0;
                  _loc44_ = 0;
                  _loc43_ = Number(_loc19_.var_95);
                  _loc44_ = Number(_loc19_.var_96);
                  _loc45_ = _loc31_;
                  _loc43_ = Number(Number(_loc43_ + _loc23_ * _loc45_));
                  _loc44_ = Number(Number(_loc44_ + _loc24_ * _loc45_));
                  if(ZPP_GeomVert.var_72 == null)
                  {
                     _loc37_ = new ZPP_GeomVert();
                  }
                  else
                  {
                     _loc37_ = ZPP_GeomVert.var_72;
                     ZPP_GeomVert.var_72 = _loc37_.next;
                     _loc37_.next = null;
                  }
                  _loc37_.var_154 = false;
                  _loc37_.x = _loc43_;
                  _loc37_.y = _loc44_;
                  _loc36_ = _loc37_;
                  if(_loc33_ == null)
                  {
                     _loc37_ = _loc36_;
                     _loc36_.next = _loc37_;
                     _loc37_ = _loc37_;
                     _loc36_.var_75 = _loc37_;
                     _loc33_ = _loc37_;
                  }
                  else
                  {
                     _loc36_.next = _loc33_;
                     _loc36_.var_75 = _loc33_.var_75;
                     _loc33_.var_75.next = _loc36_;
                     _loc33_.var_75 = _loc36_;
                  }
                  _loc36_;
                  _loc36_ = _loc33_.var_75;
                  _loc33_ = null;
                  if(ZPP_GeomVert.var_72 == null)
                  {
                     _loc42_ = new ZPP_GeomVert();
                  }
                  else
                  {
                     _loc42_ = ZPP_GeomVert.var_72;
                     ZPP_GeomVert.var_72 = _loc42_.next;
                     _loc42_.next = null;
                  }
                  _loc42_.var_154 = false;
                  _loc42_.x = _loc43_;
                  _loc42_.y = _loc44_;
                  _loc37_ = _loc42_;
                  if(_loc33_ == null)
                  {
                     _loc42_ = _loc37_;
                     _loc37_.next = _loc42_;
                     _loc42_ = _loc42_;
                     _loc37_.var_75 = _loc42_;
                     _loc33_ = _loc42_;
                  }
                  else
                  {
                     _loc37_.next = _loc33_;
                     _loc37_.var_75 = _loc33_.var_75;
                     _loc33_.var_75.next = _loc37_;
                     _loc33_.var_75 = _loc37_;
                  }
                  _loc37_;
                  _loc37_ = _loc35_;
                  if(_loc33_ == null)
                  {
                     _loc42_ = _loc37_;
                     _loc37_.next = _loc42_;
                     _loc42_ = _loc42_;
                     _loc37_.var_75 = _loc42_;
                     _loc33_ = _loc42_;
                  }
                  else
                  {
                     _loc37_.next = _loc33_;
                     _loc37_.var_75 = _loc33_.var_75;
                     _loc33_.var_75.next = _loc37_;
                     _loc33_.var_75 = _loc37_;
                  }
                  _loc37_;
                  _loc21_ = class_324.var_385.var_73.var_74;
                  §§push(class_324.var_385);
                  if(ZPP_CutVert.var_72 == null)
                  {
                     _loc22_ = new ZPP_CutVert();
                  }
                  else
                  {
                     _loc22_ = ZPP_CutVert.var_72;
                     ZPP_CutVert.var_72 = _loc22_.next;
                     _loc22_.next = null;
                  }
                  null;
                  _loc22_.var_308 = _loc33_;
                  _loc22_.parent = _loc22_;
                  _loc22_.var_158 = 0;
                  _loc22_.used = false;
                  §§pop().add(_loc22_);
                  _loc22_ = class_324.var_385.var_73.var_74;
                  _loc29_ = false;
                  §§push(class_324.var_220);
                  if(ZPP_CutInt.var_72 == null)
                  {
                     _loc41_ = new ZPP_CutInt();
                  }
                  else
                  {
                     _loc41_ = ZPP_CutInt.var_72;
                     ZPP_CutInt.var_72 = _loc41_.next;
                     _loc41_.next = null;
                  }
                  null;
                  _loc41_.var_467 = false;
                  _loc41_.end = _loc36_;
                  _loc41_.start = _loc33_;
                  _loc41_.path0 = _loc21_;
                  _loc41_.path1 = _loc22_;
                  _loc41_.time = _loc30_;
                  _loc41_.vertex = _loc29_;
                  §§pop().add(_loc41_);
               }
            }
            _loc19_ = _loc19_.next;
         }
         while(_loc19_ != _loc15_);
         
         _loc35_ = _loc33_.var_75;
         _loc35_.next.var_75 = _loc34_.var_75;
         _loc34_.var_75.next = _loc35_.next;
         _loc35_.next = _loc34_;
         _loc34_.var_75 = _loc35_;
         _loc20_ = class_324.var_385.var_73.var_74;
         if(_loc18_ == _loc18_.parent)
         {
            _loc21_ = _loc18_;
         }
         else
         {
            _loc22_ = _loc18_;
            _loc38_ = null;
            while(_loc22_ != _loc22_.parent)
            {
               _loc39_ = _loc22_.parent;
               _loc22_.parent = _loc38_;
               _loc38_ = _loc22_;
               _loc22_ = _loc39_;
            }
            while(_loc38_ != null)
            {
               _loc39_ = _loc38_.parent;
               _loc38_.parent = _loc22_;
               _loc38_ = _loc39_;
            }
            _loc21_ = _loc22_;
         }
         if(_loc20_ == _loc20_.parent)
         {
            _loc22_ = _loc20_;
         }
         else
         {
            _loc38_ = _loc20_;
            _loc39_ = null;
            while(_loc38_ != _loc38_.parent)
            {
               _loc40_ = _loc38_.parent;
               _loc38_.parent = _loc39_;
               _loc39_ = _loc38_;
               _loc38_ = _loc40_;
            }
            while(_loc39_ != null)
            {
               _loc40_ = _loc39_.parent;
               _loc39_.parent = _loc38_;
               _loc39_ = _loc40_;
            }
            _loc22_ = _loc38_;
         }
         if(_loc21_ != _loc22_)
         {
            if(_loc21_.var_158 < _loc22_.var_158)
            {
               _loc21_.parent = _loc22_;
            }
            else if(_loc21_.var_158 > _loc22_.var_158)
            {
               _loc22_.parent = _loc21_;
            }
            else
            {
               _loc22_.parent = _loc21_;
               _loc21_.var_158 = _loc21_.var_158 + 1;
            }
         }
         var _loc46_:class_342 = class_324.var_220;
         if(_loc46_.var_73 != null && _loc46_.var_73.next != null)
         {
            _loc47_ = _loc46_.var_73;
            _loc48_ = null;
            _loc49_ = null;
            _loc50_ = null;
            _loc51_ = null;
            _loc27_ = 1;
            do
            {
               _loc52_ = 0;
               _loc49_ = _loc47_;
               _loc47_ = null;
               _loc48_ = _loc47_;
               while(_loc49_ != null)
               {
                  _loc52_++;
                  _loc50_ = _loc49_;
                  _loc53_ = 0;
                  _loc54_ = _loc27_;
                  while(_loc50_ != null && _loc53_ < _loc27_)
                  {
                     _loc53_++;
                     _loc50_ = _loc50_.next;
                  }
                  while(_loc53_ > 0 || _loc54_ > 0 && _loc50_ != null)
                  {
                     if(_loc53_ == 0)
                     {
                        _loc51_ = _loc50_;
                        _loc50_ = _loc50_.next;
                        _loc54_--;
                     }
                     else if(_loc54_ == 0 || _loc50_ == null)
                     {
                        _loc51_ = _loc49_;
                        _loc49_ = _loc49_.next;
                        _loc53_--;
                     }
                     else if(_loc49_.var_74.time < _loc50_.var_74.time)
                     {
                        _loc51_ = _loc49_;
                        _loc49_ = _loc49_.next;
                        _loc53_--;
                     }
                     else
                     {
                        _loc51_ = _loc50_;
                        _loc50_ = _loc50_.next;
                        _loc54_--;
                     }
                     if(_loc48_ != null)
                     {
                        _loc48_.next = _loc51_;
                     }
                     else
                     {
                        _loc47_ = _loc51_;
                     }
                     _loc48_ = _loc51_;
                  }
                  _loc49_ = _loc50_;
               }
               _loc48_.next = null;
               _loc27_ = _loc27_ << 1;
            }
            while(_loc52_ > 1);
            
            _loc46_.var_73 = _loc47_;
            _loc46_.name_2 = true;
            _loc46_.var_76 = true;
         }
         while(class_324.var_220.var_73 != null)
         {
            _loc41_ = class_324.var_220.method_105();
            _loc55_ = class_324.var_220.method_105();
            if(!_loc41_.var_467 && !_loc55_.var_467)
            {
               _loc41_.end.next.var_75 = _loc55_.start.var_75;
               _loc55_.start.var_75.next = _loc41_.end.next;
               _loc41_.end.next = _loc55_.start;
               _loc55_.start.var_75 = _loc41_.end;
               _loc55_.end.next.var_75 = _loc41_.start.var_75;
               _loc41_.start.var_75.next = _loc55_.end.next;
               _loc55_.end.next = _loc41_.start;
               _loc41_.start.var_75 = _loc55_.end;
               if(_loc41_.path0 == _loc41_.path0.parent)
               {
                  _loc21_ = _loc41_.path0;
               }
               else
               {
                  _loc22_ = _loc41_.path0;
                  _loc38_ = null;
                  while(_loc22_ != _loc22_.parent)
                  {
                     _loc39_ = _loc22_.parent;
                     _loc22_.parent = _loc38_;
                     _loc38_ = _loc22_;
                     _loc22_ = _loc39_;
                  }
                  while(_loc38_ != null)
                  {
                     _loc39_ = _loc38_.parent;
                     _loc38_.parent = _loc22_;
                     _loc38_ = _loc39_;
                  }
                  _loc21_ = _loc22_;
               }
               if(_loc55_.path1 == _loc55_.path1.parent)
               {
                  _loc22_ = _loc55_.path1;
               }
               else
               {
                  _loc38_ = _loc55_.path1;
                  _loc39_ = null;
                  while(_loc38_ != _loc38_.parent)
                  {
                     _loc40_ = _loc38_.parent;
                     _loc38_.parent = _loc39_;
                     _loc39_ = _loc38_;
                     _loc38_ = _loc40_;
                  }
                  while(_loc39_ != null)
                  {
                     _loc40_ = _loc39_.parent;
                     _loc39_.parent = _loc38_;
                     _loc39_ = _loc40_;
                  }
                  _loc22_ = _loc38_;
               }
               if(_loc21_ != _loc22_)
               {
                  if(_loc21_.var_158 < _loc22_.var_158)
                  {
                     _loc21_.parent = _loc22_;
                  }
                  else if(_loc21_.var_158 > _loc22_.var_158)
                  {
                     _loc22_.parent = _loc21_;
                  }
                  else
                  {
                     _loc22_.parent = _loc21_;
                     _loc21_.var_158 = _loc21_.var_158 + 1;
                  }
               }
               if(_loc41_.path1 == _loc41_.path1.parent)
               {
                  _loc21_ = _loc41_.path1;
               }
               else
               {
                  _loc22_ = _loc41_.path1;
                  _loc38_ = null;
                  while(_loc22_ != _loc22_.parent)
                  {
                     _loc39_ = _loc22_.parent;
                     _loc22_.parent = _loc38_;
                     _loc38_ = _loc22_;
                     _loc22_ = _loc39_;
                  }
                  while(_loc38_ != null)
                  {
                     _loc39_ = _loc38_.parent;
                     _loc38_.parent = _loc22_;
                     _loc38_ = _loc39_;
                  }
                  _loc21_ = _loc22_;
               }
               if(_loc55_.path0 == _loc55_.path0.parent)
               {
                  _loc22_ = _loc55_.path0;
               }
               else
               {
                  _loc38_ = _loc55_.path0;
                  _loc39_ = null;
                  while(_loc38_ != _loc38_.parent)
                  {
                     _loc40_ = _loc38_.parent;
                     _loc38_.parent = _loc39_;
                     _loc39_ = _loc38_;
                     _loc38_ = _loc40_;
                  }
                  while(_loc39_ != null)
                  {
                     _loc40_ = _loc39_.parent;
                     _loc39_.parent = _loc38_;
                     _loc39_ = _loc40_;
                  }
                  _loc22_ = _loc38_;
               }
               if(_loc21_ != _loc22_)
               {
                  if(_loc21_.var_158 < _loc22_.var_158)
                  {
                     _loc21_.parent = _loc22_;
                  }
                  else if(_loc21_.var_158 > _loc22_.var_158)
                  {
                     _loc22_.parent = _loc21_;
                  }
                  else
                  {
                     _loc22_.parent = _loc21_;
                     _loc21_.var_158 = _loc21_.var_158 + 1;
                  }
               }
            }
            else if(!!_loc41_.var_467 && !_loc55_.var_467)
            {
               if(_loc55_.end != null && _loc55_.end.var_75 == _loc55_.end)
               {
                  _loc36_ = null;
                  _loc55_.end.var_75 = _loc36_;
                  _loc55_.end.next = _loc36_;
                  _loc36_ = _loc55_.end;
                  if(_loc36_.var_127 != null)
                  {
                     _loc36_.var_127.zpp_inner.var_120 = false;
                     _loc56_ = _loc36_.var_127;
                     _loc9_ = _loc56_.zpp_inner;
                     _loc56_.zpp_inner.outer = null;
                     _loc56_.zpp_inner = null;
                     _loc57_ = _loc56_;
                     _loc57_.var_72 = class_219.poolVec2;
                     class_219.poolVec2 = _loc57_;
                     _loc58_ = _loc9_;
                     if(_loc58_.outer != null)
                     {
                        _loc58_.outer.zpp_inner = null;
                        _loc58_.outer = null;
                     }
                     _loc58_.var_103 = null;
                     _loc58_._validate = null;
                     _loc58_._invalidate = null;
                     _loc58_.next = ZPP_Vec2.var_72;
                     ZPP_Vec2.var_72 = _loc58_;
                     _loc36_.var_127 = null;
                  }
                  _loc37_ = null;
                  _loc36_.next = _loc37_;
                  _loc36_.var_75 = _loc37_;
                  _loc36_.next = ZPP_GeomVert.var_72;
                  ZPP_GeomVert.var_72 = _loc36_;
                  _loc55_.end = null;
               }
               else
               {
                  _loc36_ = _loc55_.end.var_75;
                  _loc55_.end.var_75.next = _loc55_.end.next;
                  _loc55_.end.next.var_75 = _loc55_.end.var_75;
                  _loc37_ = null;
                  _loc55_.end.var_75 = _loc37_;
                  _loc55_.end.next = _loc37_;
                  _loc37_ = _loc55_.end;
                  if(_loc37_.var_127 != null)
                  {
                     _loc37_.var_127.zpp_inner.var_120 = false;
                     _loc56_ = _loc37_.var_127;
                     _loc9_ = _loc56_.zpp_inner;
                     _loc56_.zpp_inner.outer = null;
                     _loc56_.zpp_inner = null;
                     _loc57_ = _loc56_;
                     _loc57_.var_72 = class_219.poolVec2;
                     class_219.poolVec2 = _loc57_;
                     _loc58_ = _loc9_;
                     if(_loc58_.outer != null)
                     {
                        _loc58_.outer.zpp_inner = null;
                        _loc58_.outer = null;
                     }
                     _loc58_.var_103 = null;
                     _loc58_._validate = null;
                     _loc58_._invalidate = null;
                     _loc58_.next = ZPP_Vec2.var_72;
                     ZPP_Vec2.var_72 = _loc58_;
                     _loc37_.var_127 = null;
                  }
                  _loc42_ = null;
                  _loc37_.next = _loc42_;
                  _loc37_.var_75 = _loc42_;
                  _loc37_.next = ZPP_GeomVert.var_72;
                  ZPP_GeomVert.var_72 = _loc37_;
                  _loc55_.end = null;
                  _loc55_.end = _loc36_;
               }
               if(!_loc55_.vertex)
               {
                  if(_loc55_.end != _loc55_.path0.var_308)
                  {
                     _loc55_.start.x = _loc55_.end.x;
                     _loc55_.start.y = _loc55_.end.y;
                     if(_loc55_.end != null && _loc55_.end.var_75 == _loc55_.end)
                     {
                        _loc36_ = null;
                        _loc55_.end.var_75 = _loc36_;
                        _loc55_.end.next = _loc36_;
                        _loc36_ = _loc55_.end;
                        if(_loc36_.var_127 != null)
                        {
                           _loc36_.var_127.zpp_inner.var_120 = false;
                           _loc56_ = _loc36_.var_127;
                           _loc9_ = _loc56_.zpp_inner;
                           _loc56_.zpp_inner.outer = null;
                           _loc56_.zpp_inner = null;
                           _loc57_ = _loc56_;
                           _loc57_.var_72 = class_219.poolVec2;
                           class_219.poolVec2 = _loc57_;
                           _loc58_ = _loc9_;
                           if(_loc58_.outer != null)
                           {
                              _loc58_.outer.zpp_inner = null;
                              _loc58_.outer = null;
                           }
                           _loc58_.var_103 = null;
                           _loc58_._validate = null;
                           _loc58_._invalidate = null;
                           _loc58_.next = ZPP_Vec2.var_72;
                           ZPP_Vec2.var_72 = _loc58_;
                           _loc36_.var_127 = null;
                        }
                        _loc37_ = null;
                        _loc36_.next = _loc37_;
                        _loc36_.var_75 = _loc37_;
                        _loc36_.next = ZPP_GeomVert.var_72;
                        ZPP_GeomVert.var_72 = _loc36_;
                        _loc55_.end = null;
                     }
                     else
                     {
                        _loc36_ = _loc55_.end.var_75;
                        _loc55_.end.var_75.next = _loc55_.end.next;
                        _loc55_.end.next.var_75 = _loc55_.end.var_75;
                        _loc37_ = null;
                        _loc55_.end.var_75 = _loc37_;
                        _loc55_.end.next = _loc37_;
                        _loc37_ = _loc55_.end;
                        if(_loc37_.var_127 != null)
                        {
                           _loc37_.var_127.zpp_inner.var_120 = false;
                           _loc56_ = _loc37_.var_127;
                           _loc9_ = _loc56_.zpp_inner;
                           _loc56_.zpp_inner.outer = null;
                           _loc56_.zpp_inner = null;
                           _loc57_ = _loc56_;
                           _loc57_.var_72 = class_219.poolVec2;
                           class_219.poolVec2 = _loc57_;
                           _loc58_ = _loc9_;
                           if(_loc58_.outer != null)
                           {
                              _loc58_.outer.zpp_inner = null;
                              _loc58_.outer = null;
                           }
                           _loc58_.var_103 = null;
                           _loc58_._validate = null;
                           _loc58_._invalidate = null;
                           _loc58_.next = ZPP_Vec2.var_72;
                           ZPP_Vec2.var_72 = _loc58_;
                           _loc37_.var_127 = null;
                        }
                        _loc42_ = null;
                        _loc37_.next = _loc42_;
                        _loc37_.var_75 = _loc42_;
                        _loc37_.next = ZPP_GeomVert.var_72;
                        ZPP_GeomVert.var_72 = _loc37_;
                        _loc55_.end = null;
                        _loc55_.end = _loc36_;
                     }
                  }
                  else
                  {
                     _loc36_ = _loc55_.start.next;
                     _loc55_.start.x = _loc36_.x;
                     _loc55_.start.y = _loc36_.y;
                     if(_loc36_ != null && _loc36_.var_75 == _loc36_)
                     {
                        _loc37_ = null;
                        _loc36_.var_75 = _loc37_;
                        _loc36_.next = _loc37_;
                        _loc37_ = _loc36_;
                        if(_loc37_.var_127 != null)
                        {
                           _loc37_.var_127.zpp_inner.var_120 = false;
                           _loc56_ = _loc37_.var_127;
                           _loc9_ = _loc56_.zpp_inner;
                           _loc56_.zpp_inner.outer = null;
                           _loc56_.zpp_inner = null;
                           _loc57_ = _loc56_;
                           _loc57_.var_72 = class_219.poolVec2;
                           class_219.poolVec2 = _loc57_;
                           _loc58_ = _loc9_;
                           if(_loc58_.outer != null)
                           {
                              _loc58_.outer.zpp_inner = null;
                              _loc58_.outer = null;
                           }
                           _loc58_.var_103 = null;
                           _loc58_._validate = null;
                           _loc58_._invalidate = null;
                           _loc58_.next = ZPP_Vec2.var_72;
                           ZPP_Vec2.var_72 = _loc58_;
                           _loc37_.var_127 = null;
                        }
                        _loc42_ = null;
                        _loc37_.next = _loc42_;
                        _loc37_.var_75 = _loc42_;
                        _loc37_.next = ZPP_GeomVert.var_72;
                        ZPP_GeomVert.var_72 = _loc37_;
                        _loc36_ = null;
                     }
                     else
                     {
                        _loc36_.var_75.next = _loc36_.next;
                        _loc36_.next.var_75 = _loc36_.var_75;
                        _loc37_ = null;
                        _loc36_.var_75 = _loc37_;
                        _loc36_.next = _loc37_;
                        _loc37_ = _loc36_;
                        if(_loc37_.var_127 != null)
                        {
                           _loc37_.var_127.zpp_inner.var_120 = false;
                           _loc56_ = _loc37_.var_127;
                           _loc9_ = _loc56_.zpp_inner;
                           _loc56_.zpp_inner.outer = null;
                           _loc56_.zpp_inner = null;
                           _loc57_ = _loc56_;
                           _loc57_.var_72 = class_219.poolVec2;
                           class_219.poolVec2 = _loc57_;
                           _loc58_ = _loc9_;
                           if(_loc58_.outer != null)
                           {
                              _loc58_.outer.zpp_inner = null;
                              _loc58_.outer = null;
                           }
                           _loc58_.var_103 = null;
                           _loc58_._validate = null;
                           _loc58_._invalidate = null;
                           _loc58_.next = ZPP_Vec2.var_72;
                           ZPP_Vec2.var_72 = _loc58_;
                           _loc37_.var_127 = null;
                        }
                        _loc42_ = null;
                        _loc37_.next = _loc42_;
                        _loc37_.var_75 = _loc42_;
                        _loc37_.next = ZPP_GeomVert.var_72;
                        ZPP_GeomVert.var_72 = _loc37_;
                     }
                  }
               }
               _loc55_.end.next.var_75 = _loc55_.start.var_75;
               _loc55_.start.var_75.next = _loc55_.end.next;
               _loc55_.end.next = _loc55_.start;
               _loc55_.start.var_75 = _loc55_.end;
               if(_loc55_.path0 == _loc55_.path0.parent)
               {
                  _loc21_ = _loc55_.path0;
               }
               else
               {
                  _loc22_ = _loc55_.path0;
                  _loc38_ = null;
                  while(_loc22_ != _loc22_.parent)
                  {
                     _loc39_ = _loc22_.parent;
                     _loc22_.parent = _loc38_;
                     _loc38_ = _loc22_;
                     _loc22_ = _loc39_;
                  }
                  while(_loc38_ != null)
                  {
                     _loc39_ = _loc38_.parent;
                     _loc38_.parent = _loc22_;
                     _loc38_ = _loc39_;
                  }
                  _loc21_ = _loc22_;
               }
               if(_loc55_.path1 == _loc55_.path1.parent)
               {
                  _loc22_ = _loc55_.path1;
               }
               else
               {
                  _loc38_ = _loc55_.path1;
                  _loc39_ = null;
                  while(_loc38_ != _loc38_.parent)
                  {
                     _loc40_ = _loc38_.parent;
                     _loc38_.parent = _loc39_;
                     _loc39_ = _loc38_;
                     _loc38_ = _loc40_;
                  }
                  while(_loc39_ != null)
                  {
                     _loc40_ = _loc39_.parent;
                     _loc39_.parent = _loc38_;
                     _loc39_ = _loc40_;
                  }
                  _loc22_ = _loc38_;
               }
               if(_loc21_ != _loc22_)
               {
                  if(_loc21_.var_158 < _loc22_.var_158)
                  {
                     _loc21_.parent = _loc22_;
                  }
                  else if(_loc21_.var_158 > _loc22_.var_158)
                  {
                     _loc22_.parent = _loc21_;
                  }
                  else
                  {
                     _loc22_.parent = _loc21_;
                     _loc21_.var_158 = _loc21_.var_158 + 1;
                  }
               }
            }
            else if(!!_loc55_.var_467 && !_loc41_.var_467)
            {
               if(_loc41_.end != null && _loc41_.end.var_75 == _loc41_.end)
               {
                  _loc36_ = null;
                  _loc41_.end.var_75 = _loc36_;
                  _loc41_.end.next = _loc36_;
                  _loc36_ = _loc41_.end;
                  if(_loc36_.var_127 != null)
                  {
                     _loc36_.var_127.zpp_inner.var_120 = false;
                     _loc56_ = _loc36_.var_127;
                     _loc9_ = _loc56_.zpp_inner;
                     _loc56_.zpp_inner.outer = null;
                     _loc56_.zpp_inner = null;
                     _loc57_ = _loc56_;
                     _loc57_.var_72 = class_219.poolVec2;
                     class_219.poolVec2 = _loc57_;
                     _loc58_ = _loc9_;
                     if(_loc58_.outer != null)
                     {
                        _loc58_.outer.zpp_inner = null;
                        _loc58_.outer = null;
                     }
                     _loc58_.var_103 = null;
                     _loc58_._validate = null;
                     _loc58_._invalidate = null;
                     _loc58_.next = ZPP_Vec2.var_72;
                     ZPP_Vec2.var_72 = _loc58_;
                     _loc36_.var_127 = null;
                  }
                  _loc37_ = null;
                  _loc36_.next = _loc37_;
                  _loc36_.var_75 = _loc37_;
                  _loc36_.next = ZPP_GeomVert.var_72;
                  ZPP_GeomVert.var_72 = _loc36_;
                  _loc41_.end = null;
               }
               else
               {
                  _loc36_ = _loc41_.end.var_75;
                  _loc41_.end.var_75.next = _loc41_.end.next;
                  _loc41_.end.next.var_75 = _loc41_.end.var_75;
                  _loc37_ = null;
                  _loc41_.end.var_75 = _loc37_;
                  _loc41_.end.next = _loc37_;
                  _loc37_ = _loc41_.end;
                  if(_loc37_.var_127 != null)
                  {
                     _loc37_.var_127.zpp_inner.var_120 = false;
                     _loc56_ = _loc37_.var_127;
                     _loc9_ = _loc56_.zpp_inner;
                     _loc56_.zpp_inner.outer = null;
                     _loc56_.zpp_inner = null;
                     _loc57_ = _loc56_;
                     _loc57_.var_72 = class_219.poolVec2;
                     class_219.poolVec2 = _loc57_;
                     _loc58_ = _loc9_;
                     if(_loc58_.outer != null)
                     {
                        _loc58_.outer.zpp_inner = null;
                        _loc58_.outer = null;
                     }
                     _loc58_.var_103 = null;
                     _loc58_._validate = null;
                     _loc58_._invalidate = null;
                     _loc58_.next = ZPP_Vec2.var_72;
                     ZPP_Vec2.var_72 = _loc58_;
                     _loc37_.var_127 = null;
                  }
                  _loc42_ = null;
                  _loc37_.next = _loc42_;
                  _loc37_.var_75 = _loc42_;
                  _loc37_.next = ZPP_GeomVert.var_72;
                  ZPP_GeomVert.var_72 = _loc37_;
                  _loc41_.end = null;
                  _loc41_.end = _loc36_;
               }
               if(!_loc41_.vertex)
               {
                  if(_loc41_.end != _loc41_.path0.var_308)
                  {
                     _loc41_.start.x = _loc41_.end.x;
                     _loc41_.start.y = _loc41_.end.y;
                     if(_loc41_.end != null && _loc41_.end.var_75 == _loc41_.end)
                     {
                        _loc36_ = null;
                        _loc41_.end.var_75 = _loc36_;
                        _loc41_.end.next = _loc36_;
                        _loc36_ = _loc41_.end;
                        if(_loc36_.var_127 != null)
                        {
                           _loc36_.var_127.zpp_inner.var_120 = false;
                           _loc56_ = _loc36_.var_127;
                           _loc9_ = _loc56_.zpp_inner;
                           _loc56_.zpp_inner.outer = null;
                           _loc56_.zpp_inner = null;
                           _loc57_ = _loc56_;
                           _loc57_.var_72 = class_219.poolVec2;
                           class_219.poolVec2 = _loc57_;
                           _loc58_ = _loc9_;
                           if(_loc58_.outer != null)
                           {
                              _loc58_.outer.zpp_inner = null;
                              _loc58_.outer = null;
                           }
                           _loc58_.var_103 = null;
                           _loc58_._validate = null;
                           _loc58_._invalidate = null;
                           _loc58_.next = ZPP_Vec2.var_72;
                           ZPP_Vec2.var_72 = _loc58_;
                           _loc36_.var_127 = null;
                        }
                        _loc37_ = null;
                        _loc36_.next = _loc37_;
                        _loc36_.var_75 = _loc37_;
                        _loc36_.next = ZPP_GeomVert.var_72;
                        ZPP_GeomVert.var_72 = _loc36_;
                        _loc41_.end = null;
                     }
                     else
                     {
                        _loc36_ = _loc41_.end.var_75;
                        _loc41_.end.var_75.next = _loc41_.end.next;
                        _loc41_.end.next.var_75 = _loc41_.end.var_75;
                        _loc37_ = null;
                        _loc41_.end.var_75 = _loc37_;
                        _loc41_.end.next = _loc37_;
                        _loc37_ = _loc41_.end;
                        if(_loc37_.var_127 != null)
                        {
                           _loc37_.var_127.zpp_inner.var_120 = false;
                           _loc56_ = _loc37_.var_127;
                           _loc9_ = _loc56_.zpp_inner;
                           _loc56_.zpp_inner.outer = null;
                           _loc56_.zpp_inner = null;
                           _loc57_ = _loc56_;
                           _loc57_.var_72 = class_219.poolVec2;
                           class_219.poolVec2 = _loc57_;
                           _loc58_ = _loc9_;
                           if(_loc58_.outer != null)
                           {
                              _loc58_.outer.zpp_inner = null;
                              _loc58_.outer = null;
                           }
                           _loc58_.var_103 = null;
                           _loc58_._validate = null;
                           _loc58_._invalidate = null;
                           _loc58_.next = ZPP_Vec2.var_72;
                           ZPP_Vec2.var_72 = _loc58_;
                           _loc37_.var_127 = null;
                        }
                        _loc42_ = null;
                        _loc37_.next = _loc42_;
                        _loc37_.var_75 = _loc42_;
                        _loc37_.next = ZPP_GeomVert.var_72;
                        ZPP_GeomVert.var_72 = _loc37_;
                        _loc41_.end = null;
                        _loc41_.end = _loc36_;
                     }
                  }
                  else
                  {
                     _loc36_ = _loc41_.start.next;
                     _loc41_.start.x = _loc36_.x;
                     _loc41_.start.y = _loc36_.y;
                     if(_loc36_ != null && _loc36_.var_75 == _loc36_)
                     {
                        _loc37_ = null;
                        _loc36_.var_75 = _loc37_;
                        _loc36_.next = _loc37_;
                        _loc37_ = _loc36_;
                        if(_loc37_.var_127 != null)
                        {
                           _loc37_.var_127.zpp_inner.var_120 = false;
                           _loc56_ = _loc37_.var_127;
                           _loc9_ = _loc56_.zpp_inner;
                           _loc56_.zpp_inner.outer = null;
                           _loc56_.zpp_inner = null;
                           _loc57_ = _loc56_;
                           _loc57_.var_72 = class_219.poolVec2;
                           class_219.poolVec2 = _loc57_;
                           _loc58_ = _loc9_;
                           if(_loc58_.outer != null)
                           {
                              _loc58_.outer.zpp_inner = null;
                              _loc58_.outer = null;
                           }
                           _loc58_.var_103 = null;
                           _loc58_._validate = null;
                           _loc58_._invalidate = null;
                           _loc58_.next = ZPP_Vec2.var_72;
                           ZPP_Vec2.var_72 = _loc58_;
                           _loc37_.var_127 = null;
                        }
                        _loc42_ = null;
                        _loc37_.next = _loc42_;
                        _loc37_.var_75 = _loc42_;
                        _loc37_.next = ZPP_GeomVert.var_72;
                        ZPP_GeomVert.var_72 = _loc37_;
                        _loc36_ = null;
                     }
                     else
                     {
                        _loc36_.var_75.next = _loc36_.next;
                        _loc36_.next.var_75 = _loc36_.var_75;
                        _loc37_ = null;
                        _loc36_.var_75 = _loc37_;
                        _loc36_.next = _loc37_;
                        _loc37_ = _loc36_;
                        if(_loc37_.var_127 != null)
                        {
                           _loc37_.var_127.zpp_inner.var_120 = false;
                           _loc56_ = _loc37_.var_127;
                           _loc9_ = _loc56_.zpp_inner;
                           _loc56_.zpp_inner.outer = null;
                           _loc56_.zpp_inner = null;
                           _loc57_ = _loc56_;
                           _loc57_.var_72 = class_219.poolVec2;
                           class_219.poolVec2 = _loc57_;
                           _loc58_ = _loc9_;
                           if(_loc58_.outer != null)
                           {
                              _loc58_.outer.zpp_inner = null;
                              _loc58_.outer = null;
                           }
                           _loc58_.var_103 = null;
                           _loc58_._validate = null;
                           _loc58_._invalidate = null;
                           _loc58_.next = ZPP_Vec2.var_72;
                           ZPP_Vec2.var_72 = _loc58_;
                           _loc37_.var_127 = null;
                        }
                        _loc42_ = null;
                        _loc37_.next = _loc42_;
                        _loc37_.var_75 = _loc42_;
                        _loc37_.next = ZPP_GeomVert.var_72;
                        ZPP_GeomVert.var_72 = _loc37_;
                     }
                  }
               }
               _loc41_.end.next.var_75 = _loc41_.start.var_75;
               _loc41_.start.var_75.next = _loc41_.end.next;
               _loc41_.end.next = _loc41_.start;
               _loc41_.start.var_75 = _loc41_.end;
               if(_loc41_.path0 == _loc41_.path0.parent)
               {
                  _loc21_ = _loc41_.path0;
               }
               else
               {
                  _loc22_ = _loc41_.path0;
                  _loc38_ = null;
                  while(_loc22_ != _loc22_.parent)
                  {
                     _loc39_ = _loc22_.parent;
                     _loc22_.parent = _loc38_;
                     _loc38_ = _loc22_;
                     _loc22_ = _loc39_;
                  }
                  while(_loc38_ != null)
                  {
                     _loc39_ = _loc38_.parent;
                     _loc38_.parent = _loc22_;
                     _loc38_ = _loc39_;
                  }
                  _loc21_ = _loc22_;
               }
               if(_loc41_.path1 == _loc41_.path1.parent)
               {
                  _loc22_ = _loc41_.path1;
               }
               else
               {
                  _loc38_ = _loc41_.path1;
                  _loc39_ = null;
                  while(_loc38_ != _loc38_.parent)
                  {
                     _loc40_ = _loc38_.parent;
                     _loc38_.parent = _loc39_;
                     _loc39_ = _loc38_;
                     _loc38_ = _loc40_;
                  }
                  while(_loc39_ != null)
                  {
                     _loc40_ = _loc39_.parent;
                     _loc39_.parent = _loc38_;
                     _loc39_ = _loc40_;
                  }
                  _loc22_ = _loc38_;
               }
               if(_loc21_ != _loc22_)
               {
                  if(_loc21_.var_158 < _loc22_.var_158)
                  {
                     _loc21_.parent = _loc22_;
                  }
                  else if(_loc21_.var_158 > _loc22_.var_158)
                  {
                     _loc22_.parent = _loc21_;
                  }
                  else
                  {
                     _loc22_.parent = _loc21_;
                     _loc21_.var_158 = _loc21_.var_158 + 1;
                  }
               }
            }
            _loc59_ = _loc41_;
            _loc36_ = null;
            _loc59_.start = _loc36_;
            _loc59_.end = _loc36_;
            _loc21_ = null;
            _loc59_.path1 = _loc21_;
            _loc59_.path0 = _loc21_;
            _loc59_.next = ZPP_CutInt.var_72;
            ZPP_CutInt.var_72 = _loc59_;
            _loc59_ = _loc55_;
            _loc36_ = null;
            _loc59_.start = _loc36_;
            _loc59_.end = _loc36_;
            _loc21_ = null;
            _loc59_.path1 = _loc21_;
            _loc59_.path0 = _loc21_;
            _loc59_.next = ZPP_CutInt.var_72;
            ZPP_CutInt.var_72 = _loc59_;
         }
         if(param6 == null)
         {
            _loc60_ = new class_321();
         }
         else
         {
            _loc60_ = param6;
         }
         var _loc61_:ZNPNode_ZPP_CutVert = class_324.var_385.var_73;
         while(_loc61_ != null)
         {
            _loc21_ = _loc61_.var_74;
            if(_loc21_ == _loc21_.parent)
            {
               _loc22_ = _loc21_;
            }
            else
            {
               _loc38_ = _loc21_;
               _loc39_ = null;
               while(_loc38_ != _loc38_.parent)
               {
                  _loc40_ = _loc38_.parent;
                  _loc38_.parent = _loc39_;
                  _loc39_ = _loc38_;
                  _loc38_ = _loc40_;
               }
               while(_loc39_ != null)
               {
                  _loc40_ = _loc39_.parent;
                  _loc39_.parent = _loc38_;
                  _loc39_ = _loc40_;
               }
               _loc22_ = _loc38_;
            }
            if(_loc22_.used)
            {
               _loc61_ = _loc61_.next;
            }
            else
            {
               _loc22_.used = true;
               _loc36_ = _loc22_.var_308;
               _loc29_ = true;
               while(_loc22_.var_308 != null && (_loc29_ || _loc36_ != _loc22_.var_308))
               {
                  _loc29_ = false;
                  if(_loc36_.x == _loc36_.next.x && _loc36_.y == _loc36_.next.y)
                  {
                     if(_loc36_ == _loc22_.var_308)
                     {
                        if(_loc36_.next == _loc36_)
                        {
                           _loc22_.var_308 = null;
                        }
                        else
                        {
                           _loc22_.var_308 = _loc36_.next;
                        }
                        _loc29_ = true;
                     }
                     if(_loc36_ != null && _loc36_.var_75 == _loc36_)
                     {
                        _loc37_ = null;
                        _loc36_.var_75 = _loc37_;
                        _loc36_.next = _loc37_;
                        _loc36_ = null;
                        _loc36_ = _loc36_;
                     }
                     else
                     {
                        _loc37_ = _loc36_.next;
                        _loc36_.var_75.next = _loc36_.next;
                        _loc36_.next.var_75 = _loc36_.var_75;
                        _loc42_ = null;
                        _loc36_.var_75 = _loc42_;
                        _loc36_.next = _loc42_;
                        _loc36_ = null;
                        _loc36_ = _loc37_;
                     }
                  }
                  else
                  {
                     _loc36_ = _loc36_.next;
                  }
               }
               if(_loc22_.var_308 != null)
               {
                  _loc62_ = class_260.method_65();
                  _loc62_.zpp_inner.vertices = _loc22_.var_308;
                  if(_loc60_.zpp_inner.var_111)
                  {
                     _loc60_.push(_loc62_);
                  }
                  else
                  {
                     _loc60_.unshift(_loc62_);
                  }
               }
               _loc61_ = _loc61_.next;
            }
         }
         while(class_324.var_385.var_73 != null)
         {
            _loc21_ = class_324.var_385.method_105();
            _loc22_ = _loc21_;
            _loc22_.var_308 = null;
            _loc22_.parent = null;
            _loc22_.next = ZPP_CutVert.var_72;
            ZPP_CutVert.var_72 = _loc22_;
         }
         while(_loc15_ != null)
         {
            if(_loc15_ != null && _loc15_.var_75 == _loc15_)
            {
               _loc21_ = null;
               _loc15_.var_75 = _loc21_;
               _loc15_.next = _loc21_;
               _loc21_ = _loc15_;
               _loc21_.var_308 = null;
               _loc21_.parent = null;
               _loc21_.next = ZPP_CutVert.var_72;
               ZPP_CutVert.var_72 = _loc21_;
               _loc15_ = null;
               _loc15_ = _loc15_;
            }
            else
            {
               _loc21_ = _loc15_.next;
               _loc15_.var_75.next = _loc15_.next;
               _loc15_.next.var_75 = _loc15_.var_75;
               _loc22_ = null;
               _loc15_.var_75 = _loc22_;
               _loc15_.next = _loc22_;
               _loc22_ = _loc15_;
               _loc22_.var_308 = null;
               _loc22_.parent = null;
               _loc22_.next = ZPP_CutVert.var_72;
               ZPP_CutVert.var_72 = _loc22_;
               _loc15_ = null;
               _loc15_ = _loc21_;
            }
         }
         return _loc60_;
      }
   }
}
