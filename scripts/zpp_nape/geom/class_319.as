package zpp_nape.geom
{
   import zpp_nape.util.ZNPNode_ZPP_SimplifyP;
   import zpp_nape.util.class_340;
   
   public final class class_319
   {
      
      public static var var_230:class_340 = null;
       
      
      public function class_319()
      {
      }
      
      public static function method_779(param1:class_274, param2:class_274) : Number
      {
         return Number(param1.x - param2.x + (param1.y - param2.y));
      }
      
      public static function method_879(param1:class_274, param2:class_274) : Boolean
      {
         return Number(param1.x - param2.x + (param1.y - param2.y)) < 0;
      }
      
      public static function distance(param1:class_274, param2:class_274, param3:class_274) : Number
      {
         var _loc9_:Number = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         _loc4_ = Number(param3.x - param2.x);
         _loc5_ = Number(param3.y - param2.y);
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         _loc6_ = Number(param1.x - param2.x);
         _loc7_ = Number(param1.y - param2.y);
         var _loc8_:Number = Number(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         if(_loc8_ == 0)
         {
            return Number(_loc6_ * _loc6_ + _loc7_ * _loc7_);
         }
         _loc9_ = (Number(_loc6_ * _loc4_ + _loc7_ * _loc5_)) / (Number(_loc4_ * _loc4_ + _loc5_ * _loc5_));
         if(_loc9_ <= 0)
         {
            return Number(_loc6_ * _loc6_ + _loc7_ * _loc7_);
         }
         if(_loc9_ >= 1)
         {
            _loc10_ = 0;
            _loc11_ = 0;
            _loc10_ = Number(param1.x - param3.x);
            _loc11_ = Number(param1.y - param3.y);
            return Number(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         }
         _loc10_ = Number(_loc9_);
         _loc6_ = Number(_loc6_ - _loc4_ * _loc10_);
         _loc7_ = Number(_loc7_ - _loc5_ * _loc10_);
         return Number(_loc6_ * _loc6_ + _loc7_ * _loc7_);
      }
      
      public static function method_506(param1:ZPP_GeomVert, param2:Number) : ZPP_GeomVert
      {
         var _loc9_:* = null as class_274;
         var _loc10_:* = null as class_274;
         var _loc11_:* = null as ZPP_SimplifyP;
         var _loc12_:* = null as class_274;
         var _loc13_:Boolean = false;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:* = null as ZPP_SimplifyP;
         var _loc17_:* = null as class_274;
         var _loc19_:* = null as ZPP_GeomVert;
         var _loc20_:* = null as ZPP_GeomVert;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         param2 = param2 * param2;
         if(class_319.var_230 == null)
         {
            class_319.var_230 = new class_340();
         }
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:ZPP_GeomVert = param1;
         do
         {
            if(class_274.var_72 == null)
            {
               _loc10_ = new class_274();
            }
            else
            {
               _loc10_ = class_274.var_72;
               class_274.var_72 = _loc10_.next;
               _loc10_.next = null;
            }
            null;
            _loc10_.x = _loc8_.x;
            _loc10_.y = _loc8_.y;
            _loc10_.var_466 = false;
            _loc9_ = _loc10_;
            _loc9_.var_154 = _loc8_.var_154;
            if(_loc9_.var_154)
            {
               _loc9_.var_466 = true;
               if(_loc6_ != null)
               {
                  §§push(class_319.var_230);
                  if(ZPP_SimplifyP.var_72 == null)
                  {
                     _loc11_ = new ZPP_SimplifyP();
                  }
                  else
                  {
                     _loc11_ = ZPP_SimplifyP.var_72;
                     ZPP_SimplifyP.var_72 = _loc11_.next;
                     _loc11_.next = null;
                  }
                  null;
                  _loc11_.min = _loc6_;
                  _loc11_.max = _loc9_;
                  §§pop().add(_loc11_);
               }
               else
               {
                  _loc7_ = _loc9_;
               }
               _loc6_ = _loc9_;
            }
            _loc10_ = _loc9_;
            if(_loc3_ == null)
            {
               _loc12_ = _loc10_;
               _loc10_.next = _loc12_;
               _loc12_ = _loc12_;
               _loc10_.var_75 = _loc12_;
               _loc3_ = _loc12_;
            }
            else
            {
               _loc10_.var_75 = _loc3_;
               _loc10_.next = _loc3_.next;
               _loc3_.next.var_75 = _loc10_;
               _loc3_.next = _loc10_;
            }
            _loc3_ = _loc10_;
            if(_loc4_ == null)
            {
               _loc4_ = _loc3_;
               _loc5_ = _loc3_;
            }
            else
            {
               if(Number(_loc3_.x - _loc4_.x + (_loc3_.y - _loc4_.y)) < 0)
               {
                  _loc4_ = _loc3_;
               }
               if(Number(_loc5_.x - _loc3_.x + (_loc5_.y - _loc3_.y)) < 0)
               {
                  _loc5_ = _loc3_;
               }
            }
            _loc8_ = _loc8_.next;
         }
         while(_loc8_ != param1);
         
         if(class_319.var_230.var_73 == null)
         {
            if(_loc7_ == null)
            {
               _loc13_ = true;
               _loc5_.var_466 = _loc13_;
               _loc4_.var_466 = _loc13_;
               §§push(class_319.var_230);
               if(ZPP_SimplifyP.var_72 == null)
               {
                  _loc11_ = new ZPP_SimplifyP();
               }
               else
               {
                  _loc11_ = ZPP_SimplifyP.var_72;
                  ZPP_SimplifyP.var_72 = _loc11_.next;
                  _loc11_.next = null;
               }
               null;
               _loc11_.min = _loc4_;
               _loc11_.max = _loc5_;
               §§pop().add(_loc11_);
               §§push(class_319.var_230);
               if(ZPP_SimplifyP.var_72 == null)
               {
                  _loc11_ = new ZPP_SimplifyP();
               }
               else
               {
                  _loc11_ = ZPP_SimplifyP.var_72;
                  ZPP_SimplifyP.var_72 = _loc11_.next;
                  _loc11_.next = null;
               }
               null;
               _loc11_.min = _loc5_;
               _loc11_.max = _loc4_;
               §§pop().add(_loc11_);
            }
            else
            {
               _loc14_ = Number(_loc4_.x - _loc7_.x + (_loc4_.y - _loc7_.y));
               if(_loc14_ < 0)
               {
                  _loc14_ = -_loc14_;
               }
               _loc15_ = Number(_loc5_.x - _loc7_.x + (_loc5_.y - _loc7_.y));
               if(_loc15_ < 0)
               {
                  _loc15_ = -_loc15_;
               }
               if(_loc14_ > _loc15_)
               {
                  _loc13_ = true;
                  _loc7_.var_466 = _loc13_;
                  _loc4_.var_466 = _loc13_;
                  §§push(class_319.var_230);
                  if(ZPP_SimplifyP.var_72 == null)
                  {
                     _loc11_ = new ZPP_SimplifyP();
                  }
                  else
                  {
                     _loc11_ = ZPP_SimplifyP.var_72;
                     ZPP_SimplifyP.var_72 = _loc11_.next;
                     _loc11_.next = null;
                  }
                  null;
                  _loc11_.min = _loc4_;
                  _loc11_.max = _loc7_;
                  §§pop().add(_loc11_);
                  §§push(class_319.var_230);
                  if(ZPP_SimplifyP.var_72 == null)
                  {
                     _loc11_ = new ZPP_SimplifyP();
                  }
                  else
                  {
                     _loc11_ = ZPP_SimplifyP.var_72;
                     ZPP_SimplifyP.var_72 = _loc11_.next;
                     _loc11_.next = null;
                  }
                  null;
                  _loc11_.min = _loc7_;
                  _loc11_.max = _loc4_;
                  §§pop().add(_loc11_);
               }
               else
               {
                  _loc13_ = true;
                  _loc7_.var_466 = _loc13_;
                  _loc5_.var_466 = _loc13_;
                  §§push(class_319.var_230);
                  if(ZPP_SimplifyP.var_72 == null)
                  {
                     _loc11_ = new ZPP_SimplifyP();
                  }
                  else
                  {
                     _loc11_ = ZPP_SimplifyP.var_72;
                     ZPP_SimplifyP.var_72 = _loc11_.next;
                     _loc11_.next = null;
                  }
                  null;
                  _loc11_.min = _loc5_;
                  _loc11_.max = _loc7_;
                  §§pop().add(_loc11_);
                  §§push(class_319.var_230);
                  if(ZPP_SimplifyP.var_72 == null)
                  {
                     _loc11_ = new ZPP_SimplifyP();
                  }
                  else
                  {
                     _loc11_ = ZPP_SimplifyP.var_72;
                     ZPP_SimplifyP.var_72 = _loc11_.next;
                     _loc11_.next = null;
                  }
                  null;
                  _loc11_.min = _loc7_;
                  _loc11_.max = _loc5_;
                  §§pop().add(_loc11_);
               }
            }
         }
         else
         {
            §§push(class_319.var_230);
            if(ZPP_SimplifyP.var_72 == null)
            {
               _loc11_ = new ZPP_SimplifyP();
            }
            else
            {
               _loc11_ = ZPP_SimplifyP.var_72;
               ZPP_SimplifyP.var_72 = _loc11_.next;
               _loc11_.next = null;
            }
            null;
            _loc11_.min = _loc6_;
            _loc11_.max = _loc7_;
            §§pop().add(_loc11_);
         }
         while(class_319.var_230.var_73 != null)
         {
            _loc11_ = class_319.var_230.method_105();
            _loc9_ = _loc11_.min;
            _loc10_ = _loc11_.max;
            _loc16_ = _loc11_;
            _loc12_ = null;
            _loc16_.max = _loc12_;
            _loc16_.min = _loc12_;
            _loc16_.next = ZPP_SimplifyP.var_72;
            ZPP_SimplifyP.var_72 = _loc16_;
            _loc14_ = param2;
            _loc12_ = null;
            _loc17_ = _loc9_.next;
            while(_loc17_ != _loc10_)
            {
               _loc15_ = Number(class_319.distance(_loc17_,_loc9_,_loc10_));
               if(_loc15_ > _loc14_)
               {
                  _loc14_ = _loc15_;
                  _loc12_ = _loc17_;
               }
               _loc17_ = _loc17_.next;
            }
            if(_loc12_ != null)
            {
               _loc12_.var_466 = true;
               §§push(class_319.var_230);
               if(ZPP_SimplifyP.var_72 == null)
               {
                  _loc16_ = new ZPP_SimplifyP();
               }
               else
               {
                  _loc16_ = ZPP_SimplifyP.var_72;
                  ZPP_SimplifyP.var_72 = _loc16_.next;
                  _loc16_.next = null;
               }
               null;
               _loc16_.min = _loc9_;
               _loc16_.max = _loc12_;
               §§pop().add(_loc16_);
               §§push(class_319.var_230);
               if(ZPP_SimplifyP.var_72 == null)
               {
                  _loc16_ = new ZPP_SimplifyP();
               }
               else
               {
                  _loc16_ = ZPP_SimplifyP.var_72;
                  ZPP_SimplifyP.var_72 = _loc16_.next;
                  _loc16_.next = null;
               }
               null;
               _loc16_.min = _loc12_;
               _loc16_.max = _loc10_;
               §§pop().add(_loc16_);
            }
         }
         var _loc18_:* = null;
         while(_loc3_ != null)
         {
            if(_loc3_.var_466)
            {
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
               _loc20_.x = _loc3_.x;
               _loc20_.y = _loc3_.y;
               _loc19_ = _loc20_;
               if(_loc18_ == null)
               {
                  _loc20_ = _loc19_;
                  _loc19_.next = _loc20_;
                  _loc20_ = _loc20_;
                  _loc19_.var_75 = _loc20_;
                  _loc18_ = _loc20_;
               }
               else
               {
                  _loc19_.var_75 = _loc18_;
                  _loc19_.next = _loc18_.next;
                  _loc18_.next.var_75 = _loc19_;
                  _loc18_.next = _loc19_;
               }
               _loc18_ = _loc19_;
               _loc18_.var_154 = _loc3_.var_154;
            }
            if(_loc3_ != null && _loc3_.var_75 == _loc3_)
            {
               _loc9_ = null;
               _loc3_.var_75 = _loc9_;
               _loc3_.next = _loc9_;
               _loc9_ = _loc3_;
               _loc9_.next = class_274.var_72;
               class_274.var_72 = _loc9_;
               _loc3_ = null;
               _loc3_ = _loc3_;
            }
            else
            {
               _loc9_ = _loc3_.next;
               _loc3_.var_75.next = _loc3_.next;
               _loc3_.next.var_75 = _loc3_.var_75;
               _loc10_ = null;
               _loc3_.var_75 = _loc10_;
               _loc3_.next = _loc10_;
               _loc10_ = _loc3_;
               _loc10_.next = class_274.var_72;
               class_274.var_72 = _loc10_;
               _loc3_ = null;
               _loc3_ = _loc9_;
            }
         }
         return _loc18_;
      }
   }
}
