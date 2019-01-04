package package_9
{
   import flash.geom.Point;
   import package_20.Particle2D;
   
   public final class class_107 implements class_38
   {
      
      private static var name_66:Number = Math.PI * 2;
       
      
      private var var_284:Point;
      
      private var var_464:Number;
      
      private var var_504:Number;
      
      private var var_645:Number;
      
      private var var_650:Number;
      
      private var var_326:Number;
      
      private var var_286:Number;
      
      private var var_879:Number;
      
      private var var_532:Point;
      
      private var var_535:Point;
      
      public function class_107(param1:Point = null, param2:Number = 0, param3:Number = 0, param4:Number = 0, param5:Number = 0)
      {
         super();
         if(param2 < param3)
         {
            throw new Error(class_2.method_14(-1820302646) + param2 + class_2.method_14(-1820302509) + param3 + class_2.method_14(-1820302591));
         }
         this.var_284 = !!param1?param1.clone():new Point(0,0);
         this.var_464 = param3;
         this.var_504 = param2;
         this.var_645 = this.var_464 * this.var_464;
         this.var_650 = this.var_504 * this.var_504;
         this.var_326 = param4;
         this.var_286 = param5;
         if(!isNaN(this.var_286))
         {
            while(this.var_286 > name_66)
            {
               this.var_286 = this.var_286 - name_66;
            }
            while(this.var_286 < 0)
            {
               this.var_286 = this.var_286 + name_66;
            }
            this.var_879 = this.var_286 - name_66;
            if(!isNaN(this.var_326))
            {
               if(param4 == param5)
               {
                  this.var_326 = this.var_286;
               }
               else
               {
                  this.var_326 = this.method_245(this.var_326);
               }
            }
            this.method_414();
         }
      }
      
      private final function method_245(param1:Number) : Number
      {
         if(!isNaN(this.var_286))
         {
            while(param1 > this.var_286)
            {
               param1 = param1 - name_66;
            }
            while(param1 < this.var_879)
            {
               param1 = param1 + name_66;
            }
         }
         return param1;
      }
      
      private final function method_414() : void
      {
         if(!isNaN(this.var_326))
         {
            this.var_532 = new Point(Math.sin(this.var_326),-Math.cos(this.var_326));
            this.var_532.normalize(1);
         }
         if(!isNaN(this.var_286))
         {
            this.var_535 = new Point(-Math.sin(this.var_286),Math.cos(this.var_286));
            this.var_535.normalize(1);
         }
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
      
      public function get method_215() : Number
      {
         return this.var_326;
      }
      
      public function set method_215(param1:Number) : void
      {
         this.var_326 = this.method_245(param1);
         this.method_414();
      }
      
      public function get method_233() : Number
      {
         return this.var_286;
      }
      
      public function set method_233(param1:Number) : void
      {
         this.var_286 = param1;
         while(this.var_286 > name_66)
         {
            this.var_286 = this.var_286 - name_66;
         }
         while(this.var_286 < 0)
         {
            this.var_286 = this.var_286 + name_66;
         }
         this.var_879 = this.var_286 - name_66;
         this.var_326 = this.method_245(this.var_326);
         this.method_414();
      }
      
      public function contains(param1:Number, param2:Number) : Boolean
      {
         param1 = param1 - this.var_284.x;
         param2 = param2 - this.var_284.y;
         var _loc3_:Number = param1 * param1 + param2 * param2;
         if(_loc3_ > this.var_650 || _loc3_ < this.var_645)
         {
            return false;
         }
         var _loc4_:* = Number(Math.atan2(param2,param1));
         _loc4_ = Number(this.method_245(_loc4_));
         return Number(this.method_245(_loc4_)) >= this.var_326;
      }
      
      public function getLocation() : Point
      {
         var _loc1_:Number = Math.random();
         var _loc2_:Point = Point.polar(this.var_464 + (1 - _loc1_ * _loc1_) * (this.var_504 - this.var_464),this.var_326 + Math.random() * (this.var_286 - this.var_326));
         _loc2_.x = _loc2_.x + this.var_284.x;
         _loc2_.y = _loc2_.y + this.var_284.y;
         return _loc2_;
      }
      
      public function method_198() : Number
      {
         return (this.var_650 - this.var_645) * (this.var_286 - this.var_326) * 0.5;
      }
      
      public function method_203(param1:Particle2D, param2:Number = 1) : Boolean
      {
         var _loc13_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc3_:Number = param1.x - this.var_284.x;
         var _loc4_:Number = param1.y - this.var_284.y;
         var _loc5_:Number = param1.var_243 - this.var_284.x;
         var _loc6_:Number = param1.var_248 - this.var_284.y;
         var _loc7_:* = true;
         var _loc8_:Boolean = true;
         var _loc9_:Number = _loc5_ * _loc5_ + _loc6_ * _loc6_;
         var _loc10_:Number = _loc3_ * _loc3_ + _loc4_ * _loc4_;
         if(_loc9_ > this.var_650 || _loc9_ < this.var_645)
         {
            _loc8_ = false;
         }
         if(_loc10_ > this.var_650 || _loc10_ < this.var_645)
         {
            _loc7_ = false;
         }
         if(!_loc7_ && !_loc8_)
         {
            return false;
         }
         var _loc11_:Number = this.method_245(Math.atan2(_loc6_,_loc5_));
         var _loc12_:Number = this.method_245(Math.atan2(_loc4_,_loc3_));
         _loc8_ = _loc8_ && _loc11_ >= this.method_215;
         _loc7_ = Boolean(_loc7_ && _loc12_ >= this.var_326);
         if((Boolean(_loc7_ && _loc12_ >= this.var_326)) == _loc8_)
         {
            return false;
         }
         var _loc14_:Number = param1.var_119 * _loc3_ + param1.var_118 * _loc4_;
         if(_loc7_)
         {
            if(_loc9_ > this.var_650)
            {
               _loc13_ = (1 + param2) * _loc14_ / _loc10_;
               param1.var_119 = param1.var_119 - _loc13_ * _loc3_;
               param1.var_118 = param1.var_118 - _loc13_ * _loc4_;
            }
            else if(_loc9_ < this.var_645)
            {
               _loc13_ = (1 + param2) * _loc14_ / _loc10_;
               param1.var_119 = param1.var_119 - _loc13_ * _loc3_;
               param1.var_118 = param1.var_118 - _loc13_ * _loc4_;
            }
            if(_loc11_ < this.var_326)
            {
               if(_loc11_ < (this.var_879 + this.var_326) / 2)
               {
                  _loc16_ = this.var_535.x * param1.var_119 + this.var_535.y * param1.var_118;
                  _loc15_ = (1 + param2) * _loc16_;
                  param1.var_119 = param1.var_119 - _loc15_ * this.var_535.x;
                  param1.var_118 = param1.var_118 - _loc15_ * this.var_535.y;
               }
               else
               {
                  _loc16_ = this.var_532.x * param1.var_119 + this.var_532.y * param1.var_118;
                  _loc15_ = (1 + param2) * _loc16_;
                  param1.var_119 = param1.var_119 - _loc15_ * this.var_532.x;
                  param1.var_118 = param1.var_118 - _loc15_ * this.var_532.y;
               }
            }
         }
         else
         {
            if(_loc10_ > this.var_650)
            {
               _loc13_ = (1 + param2) * _loc14_ / _loc10_;
               param1.var_119 = param1.var_119 - _loc13_ * _loc3_;
               param1.var_118 = param1.var_118 - _loc13_ * _loc4_;
            }
            else if(_loc10_ < this.var_645)
            {
               _loc13_ = (1 + param2) * _loc14_ / _loc10_;
               param1.var_119 = param1.var_119 - _loc13_ * _loc3_;
               param1.var_118 = param1.var_118 - _loc13_ * _loc4_;
            }
            if(_loc12_ < this.var_326)
            {
               if(_loc12_ < (this.var_879 + this.var_326) / 2)
               {
                  _loc16_ = this.var_535.x * param1.var_119 + this.var_535.y * param1.var_118;
                  _loc15_ = (1 + param2) * _loc16_;
                  param1.var_119 = param1.var_119 - _loc15_ * this.var_535.x;
                  param1.var_118 = param1.var_118 - _loc15_ * this.var_535.y;
               }
               else
               {
                  _loc16_ = this.var_532.x * param1.var_119 + this.var_532.y * param1.var_118;
                  _loc15_ = (1 + param2) * _loc16_;
                  param1.var_119 = param1.var_119 - _loc15_ * this.var_532.x;
                  param1.var_118 = param1.var_118 - _loc15_ * this.var_532.y;
               }
            }
         }
         param1.x = param1.var_243;
         param1.y = param1.var_248;
         return true;
      }
   }
}
