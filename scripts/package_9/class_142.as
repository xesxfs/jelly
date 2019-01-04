package package_9
{
   import flash.geom.Point;
   import package_20.Particle2D;
   
   public final class class_142 implements class_38
   {
       
      
      private var var_338:Number;
      
      private var var_339:Number;
      
      private var var_356:Number;
      
      private var var_355:Number;
      
      private var _width:Number;
      
      private var _height:Number;
      
      public function class_142(param1:Number = 0, param2:Number = 0, param3:Number = 0, param4:Number = 0)
      {
         super();
         this.var_338 = param1;
         this.var_339 = param2;
         this.var_356 = param3;
         this.var_355 = param4;
         this._width = param3 - param1;
         this._height = param4 - param2;
      }
      
      public function get left() : Number
      {
         return this.var_338;
      }
      
      public function set left(param1:Number) : void
      {
         this.var_338 = param1;
         if(!isNaN(this.var_356) && !isNaN(this.var_338))
         {
            this._width = this.right - this.left;
         }
      }
      
      public function get right() : Number
      {
         return this.var_356;
      }
      
      public function set right(param1:Number) : void
      {
         this.var_356 = param1;
         if(!isNaN(this.var_356) && !isNaN(this.var_338))
         {
            this._width = this.right - this.left;
         }
      }
      
      public function get top() : Number
      {
         return this.var_339;
      }
      
      public function set top(param1:Number) : void
      {
         this.var_339 = param1;
         if(!isNaN(this.var_339) && !isNaN(this.var_355))
         {
            this._height = this.bottom - this.top;
         }
      }
      
      public function get bottom() : Number
      {
         return this.var_355;
      }
      
      public function set bottom(param1:Number) : void
      {
         this.var_355 = param1;
         if(!isNaN(this.var_339) && !isNaN(this.var_355))
         {
            this._height = this.bottom - this.top;
         }
      }
      
      public function contains(param1:Number, param2:Number) : Boolean
      {
         return param1 >= this.var_338 && param1 <= this.var_356 && param2 >= this.var_339 && param2 <= this.var_355;
      }
      
      public function getLocation() : Point
      {
         return new Point(this.var_338 + Math.random() * this._width,this.var_339 + Math.random() * this._height);
      }
      
      public function method_198() : Number
      {
         return this._width * this._height;
      }
      
      public function method_203(param1:Particle2D, param2:Number = 1) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:Boolean = false;
         if(param1.var_119 > 0)
         {
            _loc3_ = param1.x + param1.var_169;
            _loc4_ = Number(param1.var_243 + param1.var_169);
            if(Number(param1.var_243 + param1.var_169) < this.var_338 && _loc3_ >= this.var_338)
            {
               _loc5_ = Number(param1.var_248 + (param1.y - param1.var_248) * (this.var_338 - _loc4_) / (_loc3_ - _loc4_));
               if(Number(param1.var_248 + (param1.y - param1.var_248) * (this.var_338 - _loc4_) / (_loc3_ - _loc4_)) >= this.var_339 - param1.var_169 && _loc5_ <= this.var_355 + param1.var_169)
               {
                  param1.var_119 = -param1.var_119 * param2;
                  param1.x = param1.x + 2 * (this.var_338 - _loc3_);
                  _loc6_ = true;
               }
            }
            else if(_loc4_ <= this.var_356 && _loc3_ > this.var_356)
            {
               _loc5_ = Number(param1.var_248 + (param1.y - param1.var_248) * (this.var_356 - _loc4_) / (_loc3_ - _loc4_));
               if(Number(param1.var_248 + (param1.y - param1.var_248) * (this.var_356 - _loc4_) / (_loc3_ - _loc4_)) >= this.var_339 - param1.var_169 && _loc5_ <= this.var_355 + param1.var_169)
               {
                  param1.var_119 = -param1.var_119 * param2;
                  param1.x = param1.x + 2 * (this.var_356 - _loc3_);
                  _loc6_ = true;
               }
            }
         }
         else if(param1.var_119 < 0)
         {
            _loc3_ = param1.x - param1.var_169;
            _loc4_ = Number(param1.var_243 - param1.var_169);
            if(Number(param1.var_243 - param1.var_169) > this.var_356 && _loc3_ <= this.var_356)
            {
               _loc5_ = Number(param1.var_248 + (param1.y - param1.var_248) * (this.var_356 - _loc4_) / (_loc3_ - _loc4_));
               if(Number(param1.var_248 + (param1.y - param1.var_248) * (this.var_356 - _loc4_) / (_loc3_ - _loc4_)) >= this.var_339 - param1.var_169 && _loc5_ <= this.var_355 + param1.var_169)
               {
                  param1.var_119 = -param1.var_119 * param2;
                  param1.x = param1.x + 2 * (this.var_356 - _loc3_);
                  _loc6_ = true;
               }
            }
            else if(_loc4_ >= this.var_338 && _loc3_ < this.var_338)
            {
               _loc5_ = Number(param1.var_248 + (param1.y - param1.var_248) * (this.var_338 - _loc4_) / (_loc3_ - _loc4_));
               if(Number(param1.var_248 + (param1.y - param1.var_248) * (this.var_338 - _loc4_) / (_loc3_ - _loc4_)) >= this.var_339 - param1.var_169 && _loc5_ <= this.var_355 + param1.var_169)
               {
                  param1.var_119 = -param1.var_119 * param2;
                  param1.x = param1.x + 2 * (this.var_338 - _loc3_);
                  _loc6_ = true;
               }
            }
         }
         if(param1.var_118 > 0)
         {
            _loc3_ = param1.y + param1.var_169;
            _loc4_ = Number(param1.var_248 + param1.var_169);
            if(Number(param1.var_248 + param1.var_169) < this.var_339 && _loc3_ >= this.var_339)
            {
               _loc5_ = Number(param1.var_243 + (param1.x - param1.var_243) * (this.var_339 - _loc4_) / (_loc3_ - _loc4_));
               if(Number(param1.var_243 + (param1.x - param1.var_243) * (this.var_339 - _loc4_) / (_loc3_ - _loc4_)) >= this.var_338 - param1.var_169 && _loc5_ <= this.var_356 + param1.var_169)
               {
                  param1.var_118 = -param1.var_118 * param2;
                  param1.y = param1.y + 2 * (this.var_339 - _loc3_);
                  _loc6_ = true;
               }
            }
            else if(_loc4_ <= this.var_355 && _loc3_ > this.var_355)
            {
               _loc5_ = Number(param1.var_243 + (param1.x - param1.var_243) * (this.var_355 - _loc4_) / (_loc3_ - _loc4_));
               if(Number(param1.var_243 + (param1.x - param1.var_243) * (this.var_355 - _loc4_) / (_loc3_ - _loc4_)) >= this.var_338 - param1.var_169 && _loc5_ <= this.var_356 + param1.var_169)
               {
                  param1.var_118 = -param1.var_118 * param2;
                  param1.y = param1.y + 2 * (this.var_355 - _loc3_);
                  _loc6_ = true;
               }
            }
         }
         else if(param1.var_118 < 0)
         {
            _loc3_ = param1.y - param1.var_169;
            _loc4_ = Number(param1.var_248 - param1.var_169);
            if(Number(param1.var_248 - param1.var_169) > this.var_355 && _loc3_ <= this.var_355)
            {
               _loc5_ = Number(param1.var_243 + (param1.x - param1.var_243) * (this.var_355 - _loc4_) / (_loc3_ - _loc4_));
               if(Number(param1.var_243 + (param1.x - param1.var_243) * (this.var_355 - _loc4_) / (_loc3_ - _loc4_)) >= this.var_338 - param1.var_169 && _loc5_ <= this.var_356 + param1.var_169)
               {
                  param1.var_118 = -param1.var_118 * param2;
                  param1.y = param1.y + 2 * (this.var_355 - _loc3_);
                  _loc6_ = true;
               }
            }
            else if(_loc4_ >= this.var_339 && _loc3_ < this.var_339)
            {
               _loc5_ = Number(param1.var_243 + (param1.x - param1.var_243) * (this.var_339 - _loc4_) / (_loc3_ - _loc4_));
               if(Number(param1.var_243 + (param1.x - param1.var_243) * (this.var_339 - _loc4_) / (_loc3_ - _loc4_)) >= this.var_338 - param1.var_169 && _loc5_ <= this.var_356 + param1.var_169)
               {
                  param1.var_118 = -param1.var_118 * param2;
                  param1.y = param1.y + 2 * (this.var_339 - _loc3_);
                  _loc6_ = true;
               }
            }
         }
         return _loc6_;
      }
   }
}
