package package_7
{
   import package_12.class_50;
   import package_15.class_59;
   import package_16.class_62;
   import package_20.Particle2D;
   import package_6.class_29;
   
   public final class class_127 extends class_29
   {
       
      
      private var var_338:Number;
      
      private var var_339:Number;
      
      private var var_356:Number;
      
      private var var_355:Number;
      
      private var var_803:Number;
      
      public function class_127(param1:Number = 0, param2:Number = 0, param3:Number = 0, param4:Number = 0, param5:Number = 1)
      {
         super();
         priority = -20;
         this.left = param1;
         this.top = param2;
         this.right = param3;
         this.bottom = param4;
         this.name_39 = param5;
      }
      
      public function get left() : Number
      {
         return this.var_338;
      }
      
      public function set left(param1:Number) : void
      {
         this.var_338 = param1;
      }
      
      public function get top() : Number
      {
         return this.var_339;
      }
      
      public function set top(param1:Number) : void
      {
         this.var_339 = param1;
      }
      
      public function get right() : Number
      {
         return this.var_356;
      }
      
      public function set right(param1:Number) : void
      {
         this.var_356 = param1;
      }
      
      public function get bottom() : Number
      {
         return this.var_355;
      }
      
      public function set bottom(param1:Number) : void
      {
         this.var_355 = param1;
      }
      
      public function get name_39() : Number
      {
         return this.var_803;
      }
      
      public function set name_39(param1:Number) : void
      {
         this.var_803 = param1;
      }
      
      override public function update(param1:class_59, param2:class_62, param3:Number) : void
      {
         var _loc6_:Number = NaN;
         var _loc4_:Particle2D = Particle2D(param2);
         var _loc5_:Number = param2.var_169;
         if(_loc4_.var_119 > 0 && _loc7_ >= this.var_356)
         {
            _loc4_.var_119 = -_loc4_.var_119 * this.var_803;
            _loc4_.x = _loc4_.x + 2 * (this.var_356 - _loc6_);
            if(param1.hasEventListener(class_50.var_558))
            {
               param1.dispatchEvent(new class_50(class_50.var_558,_loc4_));
            }
         }
         else if(_loc4_.var_119 < 0 && _loc7_ <= this.var_338)
         {
            _loc4_.var_119 = -_loc4_.var_119 * this.var_803;
            _loc4_.x = _loc4_.x + 2 * (this.var_338 - _loc6_);
            if(param1.hasEventListener(class_50.var_558))
            {
               param1.dispatchEvent(new class_50(class_50.var_558,_loc4_));
            }
         }
         if(_loc4_.var_118 > 0 && _loc7_ >= this.var_355)
         {
            _loc4_.var_118 = -_loc4_.var_118 * this.var_803;
            _loc4_.y = _loc4_.y + 2 * (this.var_355 - _loc6_);
            if(param1.hasEventListener(class_50.var_558))
            {
               param1.dispatchEvent(new class_50(class_50.var_558,_loc4_));
            }
         }
         else if(_loc4_.var_118 < 0 && _loc7_ <= this.var_339)
         {
            _loc4_.var_118 = -_loc4_.var_118 * this.var_803;
            _loc4_.y = _loc4_.y + 2 * (this.var_339 - _loc6_);
            if(param1.hasEventListener(class_50.var_558))
            {
               param1.dispatchEvent(new class_50(class_50.var_558,_loc4_));
            }
         }
      }
   }
}
