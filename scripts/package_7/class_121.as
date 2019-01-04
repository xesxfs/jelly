package package_7
{
   import package_15.class_59;
   import package_16.class_62;
   import package_20.Particle2D;
   import package_6.class_29;
   
   public final class class_121 extends class_29
   {
       
      
      private var var_338:Number;
      
      private var var_339:Number;
      
      private var var_356:Number;
      
      private var var_355:Number;
      
      private var _width:Number;
      
      private var _height:Number;
      
      public function class_121(param1:Number = 0, param2:Number = 0, param3:Number = 0, param4:Number = 0)
      {
         super();
         priority = -20;
         this.left = param1;
         this.top = param2;
         this.right = param3;
         this.bottom = param4;
      }
      
      public function get left() : Number
      {
         return this.var_338;
      }
      
      public function set left(param1:Number) : void
      {
         this.var_338 = param1;
         this._width = this.var_356 - this.var_338;
      }
      
      public function get top() : Number
      {
         return this.var_339;
      }
      
      public function set top(param1:Number) : void
      {
         this.var_339 = param1;
         this._height = this.var_355 - this.var_339;
      }
      
      public function get right() : Number
      {
         return this.var_356;
      }
      
      public function set right(param1:Number) : void
      {
         this.var_356 = param1;
         this._width = this.var_356 - this.var_338;
      }
      
      public function get bottom() : Number
      {
         return this.var_355;
      }
      
      public function set bottom(param1:Number) : void
      {
         this.var_355 = param1;
         this._height = this.var_355 - this.var_339;
      }
      
      override public function update(param1:class_59, param2:class_62, param3:Number) : void
      {
         var _loc4_:Particle2D = Particle2D(param2);
         if(_loc4_.var_119 > 0 && _loc4_.x >= this.var_356)
         {
            _loc4_.x = _loc4_.x - this._width;
         }
         else if(_loc4_.var_119 < 0 && _loc4_.x <= this.var_338)
         {
            _loc4_.x = _loc4_.x + this._width;
         }
         if(_loc4_.var_118 > 0 && _loc4_.y >= this.var_355)
         {
            _loc4_.y = _loc4_.y - this._height;
         }
         else if(_loc4_.var_118 < 0 && _loc4_.y <= this.var_339)
         {
            _loc4_.y = _loc4_.y + this._height;
         }
      }
   }
}
