package package_7
{
   import package_15.class_59;
   import package_16.class_62;
   import package_20.Particle2D;
   import package_6.class_29;
   
   public final class class_137 extends class_29
   {
       
      
      private var _x:Number;
      
      private var _y:Number;
      
      private var var_878:Number;
      
      public function class_137(param1:Number = 0, param2:Number = 0, param3:Number = 0)
      {
         super();
         this.power = param3;
         this.x = param1;
         this.y = param2;
      }
      
      public function get power() : Number
      {
         return this.var_878;
      }
      
      public function set power(param1:Number) : void
      {
         this.var_878 = param1;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         this._x = param1;
      }
      
      public function get y() : Number
      {
         return this._y;
      }
      
      public function set y(param1:Number) : void
      {
         this._y = param1;
      }
      
      override public function update(param1:class_59, param2:class_62, param3:Number) : void
      {
         var _loc4_:Particle2D = Particle2D(param2);
         var _loc5_:Number = Math.sqrt(_loc4_.var_119 * _loc4_.var_119 + _loc4_.var_118 * _loc4_.var_118);
         var _loc6_:Number = _loc4_.var_119 / _loc5_;
         var _loc7_:Number = _loc4_.var_118 / _loc5_;
         var _loc8_:Number = this.power * param3;
         var _loc9_:Number = this._x - _loc4_.x;
         var _loc10_:Number = this._y - _loc4_.y;
         var _loc11_:Number = Math.sqrt(_loc9_ * _loc9_ + _loc10_ * _loc10_);
         if(_loc11_ == 0)
         {
            return;
         }
         _loc9_ = _loc9_ / _loc11_;
         _loc10_ = _loc10_ / _loc11_;
         var _loc12_:Number = _loc9_ * _loc6_ + _loc10_ * _loc7_;
         var _loc13_:Number = _loc9_ - _loc6_ * _loc12_;
         var _loc14_:Number = _loc10_ - _loc7_ * _loc12_;
         var _loc15_:Number = _loc8_ / Math.sqrt(_loc13_ * _loc13_ + _loc14_ * _loc14_);
         _loc4_.var_119 = _loc4_.var_119 + _loc13_ * _loc15_;
         _loc4_.var_118 = _loc4_.var_118 + _loc14_ * _loc15_;
         _loc15_ = _loc5_ / Math.sqrt(_loc4_.var_119 * _loc4_.var_119 + _loc4_.var_118 * _loc4_.var_118);
         _loc4_.var_119 = _loc4_.var_119 * _loc15_;
         _loc4_.var_118 = _loc4_.var_118 * _loc15_;
      }
   }
}
