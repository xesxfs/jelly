package package_9
{
   import flash.geom.Point;
   import package_20.Particle2D;
   
   public final class class_44 implements class_38
   {
      
      private static const name_66:Number = 6.283185307179586;
       
      
      private var var_284:Point;
      
      private var var_464:Number;
      
      private var var_504:Number;
      
      private var var_645:Number;
      
      private var var_650:Number;
      
      public function class_44(param1:Point = null, param2:Number = 0, param3:Number = 0)
      {
         super();
         if(param2 < param3)
         {
            throw new Error(class_2.method_14(-1820302646) + param2 + class_2.method_14(-1820302509) + param3 + class_2.method_14(-1820302767));
         }
         if(param1 == null)
         {
            this.var_284 = new Point(0,0);
         }
         else
         {
            this.var_284 = param1;
         }
         this.var_464 = param3;
         this.var_504 = param2;
         this.var_645 = this.var_464 * this.var_464;
         this.var_650 = this.var_504 * this.var_504;
      }
      
      public function get center() : Point
      {
         return this.var_284;
      }
      
      public function set center(param1:Point) : void
      {
         this.var_284 = param1;
      }
      
      public function get method_391() : Number
      {
         return this.var_284.x;
      }
      
      public function set method_391(param1:Number) : void
      {
         this.var_284.x = param1;
      }
      
      public function get method_380() : Number
      {
         return this.var_284.y;
      }
      
      public function set method_380(param1:Number) : void
      {
         this.var_284.y = param1;
      }
      
      public function get method_216() : Number
      {
         return this.var_464;
      }
      
      public function set method_216(param1:Number) : void
      {
         this.var_464 = param1;
         this.var_645 = this.var_464 * this.var_464;
      }
      
      public function get method_274() : Number
      {
         return this.var_504;
      }
      
      public function set method_274(param1:Number) : void
      {
         this.var_504 = param1;
         this.var_650 = this.var_504 * this.var_504;
      }
      
      public function contains(param1:Number, param2:Number) : Boolean
      {
         param1 = param1 - this.var_284.x;
         param2 = param2 - this.var_284.y;
         var _loc3_:Number = param1 * param1 + param2 * param2;
         return _loc3_ <= this.var_650 && _loc3_ >= this.var_645;
      }
      
      public function getLocation() : Point
      {
         var _loc1_:Number = Math.random();
         var _loc2_:Point = Point.polar(this.var_464 + (1 - _loc1_ * _loc1_) * (this.var_504 - this.var_464),Math.random() * name_66);
         _loc2_.x = _loc2_.x + this.var_284.x;
         _loc2_.y = _loc2_.y + this.var_284.y;
         return _loc2_;
      }
      
      public function method_198() : Number
      {
         return Math.PI * (this.var_650 - this.var_645);
      }
      
      public function method_203(param1:Particle2D, param2:Number = 1) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:* = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc15_:Number = param1.x - this.var_284.x;
         var _loc16_:Number = param1.y - this.var_284.y;
         var _loc17_:Number = param1.var_119 * _loc15_ + param1.var_118 * _loc16_;
         if(_loc17_ < 0)
         {
            _loc3_ = this.var_504 + param1.var_169;
            if(Math.abs(_loc15_) > _loc3_)
            {
               return false;
            }
            if(Math.abs(_loc16_) > _loc3_)
            {
               return false;
            }
            _loc7_ = _loc15_ * _loc15_ + _loc16_ * _loc16_;
            _loc5_ = _loc3_ * _loc3_;
            if(_loc7_ > _loc5_)
            {
               return false;
            }
            _loc9_ = param1.var_243 - this.var_284.x;
            _loc10_ = param1.var_248 - this.var_284.y;
            _loc11_ = Number(_loc9_ * _loc9_ + _loc10_ * _loc10_);
            if(Number(_loc9_ * _loc9_ + _loc10_ * _loc10_) > _loc5_)
            {
               _loc12_ = (1 + param2) * _loc17_ / _loc7_;
               param1.var_119 = param1.var_119 - _loc12_ * _loc15_;
               param1.var_118 = param1.var_118 - _loc12_ * _loc16_;
               _loc8_ = Math.sqrt(_loc7_);
               _loc13_ = (2 * _loc3_ - _loc8_) / _loc8_ + 0.001;
               param1.x = this.var_284.x + _loc15_ * _loc13_;
               param1.y = this.var_284.y + _loc16_ * _loc13_;
               return true;
            }
            if(this.var_464 != 0 && this.method_216 != this.var_504)
            {
               _loc4_ = this.var_464 + param1.var_169;
               if(Math.abs(_loc15_) > _loc4_)
               {
                  return false;
               }
               if(Math.abs(_loc16_) > _loc4_)
               {
                  return false;
               }
               _loc6_ = _loc4_ * _loc4_;
               if(_loc7_ > _loc6_)
               {
                  return false;
               }
               if(_loc11_ > _loc6_)
               {
                  _loc12_ = (1 + param2) * _loc17_ / _loc7_;
                  param1.var_119 = param1.var_119 - _loc12_ * _loc15_;
                  param1.var_118 = param1.var_118 - _loc12_ * _loc16_;
                  _loc8_ = Math.sqrt(_loc7_);
                  _loc13_ = (2 * _loc4_ - _loc8_) / _loc8_ + 0.001;
                  param1.x = this.var_284.x + _loc15_ * _loc13_;
                  param1.y = this.var_284.y + _loc16_ * _loc13_;
                  return true;
               }
            }
            return false;
         }
         _loc3_ = this.var_504 - param1.var_169;
         _loc9_ = param1.var_243 - this.var_284.x;
         _loc10_ = param1.var_248 - this.var_284.y;
         if(Math.abs(_loc9_) > _loc3_)
         {
            return false;
         }
         if(Math.abs(_loc10_) > _loc3_)
         {
            return false;
         }
         _loc11_ = Number(_loc9_ * _loc9_ + _loc10_ * _loc10_);
         _loc5_ = _loc3_ * _loc3_;
         if(_loc11_ > _loc5_)
         {
            return false;
         }
         _loc7_ = _loc15_ * _loc15_ + _loc16_ * _loc16_;
         if(this.var_464 != 0 && this.method_216 != this.var_504)
         {
            _loc4_ = this.var_464 - param1.var_169;
            _loc6_ = (this.var_464 - param1.var_169) * _loc4_;
            if(_loc11_ < _loc6_ && _loc7_ >= _loc6_)
            {
               _loc12_ = (1 + param2) * _loc17_ / _loc7_;
               param1.var_119 = param1.var_119 - _loc12_ * _loc15_;
               param1.var_118 = param1.var_118 - _loc12_ * _loc16_;
               _loc8_ = Math.sqrt(_loc7_);
               _loc13_ = (2 * _loc4_ - _loc8_) / _loc8_ - 0.001;
               param1.x = this.var_284.x + _loc15_ * _loc13_;
               param1.y = this.var_284.y + _loc16_ * _loc13_;
               return true;
            }
         }
         if(_loc7_ >= _loc5_)
         {
            _loc12_ = (1 + param2) * _loc17_ / _loc7_;
            param1.var_119 = param1.var_119 - _loc12_ * _loc15_;
            param1.var_118 = param1.var_118 - _loc12_ * _loc16_;
            _loc8_ = Math.sqrt(_loc7_);
            _loc13_ = (2 * _loc3_ - _loc8_) / _loc8_ - 0.001;
            param1.x = this.var_284.x + _loc15_ * _loc13_;
            param1.y = this.var_284.y + _loc16_ * _loc13_;
            return true;
         }
         return false;
      }
   }
}
