package package_7
{
   import package_11.class_47;
   import package_11.class_87;
   import package_15.class_59;
   import package_16.class_62;
   import package_20.Particle2D;
   import package_5.class_82;
   import package_6.class_29;
   
   public final class class_83 extends class_29 implements class_82, class_47
   {
      
      private static const const_40:Number = 100000;
       
      
      private var var_920:class_87;
      
      private var _x:Number;
      
      private var _y:Number;
      
      private var var_878:Number;
      
      private var var_591:Number;
      
      private var var_1045:Number;
      
      private var var_890:Number;
      
      private var var_692:Number = 0;
      
      private var var_515:Number = 0;
      
      private var var_655:Number = 0;
      
      private var var_987:Number = 500;
      
      public function class_83(param1:Number = 0, param2:Number = 0, param3:Number = 0, param4:Number = 300, param5:Number = 10, param6:Number = 1)
      {
         super();
         this.power = param1;
         this.x = param2;
         this.y = param3;
         this.method_520 = param4;
         this.depth = param5;
         this.name_8 = param6;
      }
      
      public function get power() : Number
      {
         return this.var_878 / const_40;
      }
      
      public function set power(param1:Number) : void
      {
         this.var_878 = param1 * const_40;
      }
      
      public function get method_520() : Number
      {
         return this.var_987;
      }
      
      public function set method_520(param1:Number) : void
      {
         this.var_987 = param1;
      }
      
      public function get depth() : Number
      {
         return this.var_591 * 2;
      }
      
      public function set depth(param1:Number) : void
      {
         this.var_591 = param1 * 0.5;
         this.var_1045 = 1 / this.var_591;
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
      
      public function get name_8() : Number
      {
         return Math.sqrt(this.var_890);
      }
      
      public function set name_8(param1:Number) : void
      {
         this.var_890 = param1 * param1;
      }
      
      override public function method_126(param1:class_59) : void
      {
         this.var_920 = new class_87(this);
         param1.method_462(this.var_920);
      }
      
      override public function method_163(param1:class_59) : void
      {
         if(this.var_920)
         {
            param1.method_532(this.var_920);
         }
      }
      
      public function reset() : void
      {
         this.var_515 = 0;
         this.var_692 = 0;
         this.var_655 = 0;
      }
      
      public final function method_477(param1:class_59, param2:Number) : void
      {
         this.var_692 = this.var_515;
         this.var_655 = this.var_987 * param2;
         this.var_515 = this.var_515 + this.var_655;
      }
      
      override public function update(param1:class_59, param2:class_62, param3:Number) : void
      {
         var _loc11_:Number = NaN;
         var _loc12_:* = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc4_:Particle2D = Particle2D(param2);
         var _loc5_:* = Number(_loc4_.x - this._x);
         var _loc6_:* = Number(_loc4_.y - this._y);
         var _loc7_:* = Number(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         if(_loc7_ == 0)
         {
            _loc7_ = 0.02;
            _loc5_ = 0.1;
            _loc6_ = 0.1;
         }
         var _loc8_:Number = Math.sqrt(_loc7_);
         if(_loc8_ < this.var_692 - this.var_591)
         {
            return;
         }
         if(_loc8_ > this.var_515 + this.var_591)
         {
            return;
         }
         var _loc9_:* = Number(_loc8_ < this.var_515?Number(this.var_591 - this.var_515 + _loc8_):Number(this.var_591 - _loc8_ + this.var_515));
         var _loc10_:* = Number(_loc8_ < this.var_692?Number(this.var_591 - this.var_692 + _loc8_):Number(this.var_591 - _loc8_ + this.var_692));
         _loc9_ = Number(_loc9_ * this.var_1045);
         _loc10_ = Number(_loc10_ * this.var_1045);
         if(_loc9_ < 0)
         {
            param3 = param3 * (this.var_655 + _loc9_) / this.var_655;
            _loc9_ = 0;
         }
         if(_loc10_ < 0)
         {
            param3 = param3 * (this.var_655 + _loc10_) / this.var_655;
            _loc10_ = 0;
         }
         if(_loc8_ < this.var_692 || _loc8_ > this.var_515)
         {
            _loc11_ = param3 * this.var_878 * (_loc9_ + _loc10_) / (this.var_515 * 2 * _loc8_ * _loc4_.mass);
         }
         else
         {
            _loc12_ = Number((1 - _loc10_) / this.var_655);
            _loc13_ = (1 - _loc10_) / this.var_655 * param3 * this.var_878 * (_loc10_ + 1);
            _loc14_ = (1 - _loc12_) * param3 * this.var_878 * (_loc9_ + 1);
            _loc11_ = (_loc13_ + _loc14_) / (this.var_515 * 2 * _loc8_ * _loc4_.mass);
         }
         _loc4_.var_119 = _loc4_.var_119 + _loc5_ * _loc11_;
         _loc4_.var_118 = _loc4_.var_118 + _loc6_ * _loc11_;
      }
   }
}
