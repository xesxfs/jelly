package package_7
{
   import package_15.class_59;
   import package_16.class_62;
   import package_18.class_84;
   import package_20.Particle2D;
   import package_6.class_29;
   
   public final class class_145 extends class_29
   {
       
      
      private var var_579:Number;
      
      private var var_1034:Number;
      
      private var var_990:Number;
      
      public function class_145(param1:Number = 0, param2:Number = 0)
      {
         super();
         priority = 10;
         this.method_134 = param1;
         this.method_168 = param2;
      }
      
      public function get method_134() : Number
      {
         return this.var_579;
      }
      
      public function set method_134(param1:Number) : void
      {
         this.var_579 = param1;
         this.var_990 = param1 * param1;
      }
      
      public function get method_168() : Number
      {
         return this.var_1034;
      }
      
      public function set method_168(param1:Number) : void
      {
         this.var_1034 = param1;
      }
      
      override public function method_126(param1:class_59) : void
      {
         class_84(param1).spaceSort = true;
      }
      
      override public function update(param1:class_59, param2:class_62, param3:Number) : void
      {
         var _loc7_:* = null;
         var _loc8_:int = 0;
         var _loc10_:Number = NaN;
         var _loc11_:* = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:* = NaN;
         var _loc16_:Number = NaN;
         var _loc4_:Particle2D = Particle2D(param2);
         var _loc5_:class_84 = class_84(param1);
         var _loc6_:Array = _loc5_.particlesArray;
         var _loc9_:int = _loc6_.length;
         var _loc14_:* = 0;
         var _loc15_:* = 0;
         _loc8_ = _loc4_.sortID - 1;
         while(_loc8_ >= 0)
         {
            _loc7_ = _loc6_[_loc8_];
            _loc12_ = _loc7_.x - _loc4_.x;
            if(_loc17_ < -this.var_579)
            {
               break;
            }
            _loc13_ = Number(_loc7_.y - _loc4_.y);
            if(!(Number(_loc7_.y - _loc4_.y) > this.var_579 || _loc13_ < -this.var_579))
            {
               _loc11_ = Number(_loc13_ * _loc13_ + _loc12_ * _loc12_);
               if(Number(_loc13_ * _loc13_ + _loc12_ * _loc12_) <= this.var_990 && _loc11_ > 0)
               {
                  _loc10_ = 1 / Math.sqrt(_loc11_);
                  _loc14_ = Number(_loc14_ + _loc12_ * _loc10_);
                  _loc15_ = Number(_loc15_ + _loc13_ * _loc10_);
               }
            }
            _loc8_--;
         }
         _loc8_ = _loc4_.sortID + 1;
         while(_loc8_ < _loc9_)
         {
            _loc7_ = _loc6_[_loc8_];
            _loc12_ = _loc7_.x - _loc4_.x;
            if(_loc17_ > this.var_579)
            {
               break;
            }
            _loc13_ = Number(_loc7_.y - _loc4_.y);
            if(!(Number(_loc7_.y - _loc4_.y) > this.var_579 || _loc13_ < -this.var_579))
            {
               _loc11_ = Number(_loc13_ * _loc13_ + _loc12_ * _loc12_);
               if(Number(_loc13_ * _loc13_ + _loc12_ * _loc12_) <= this.var_990 && _loc11_ > 0)
               {
                  _loc10_ = 1 / Math.sqrt(_loc11_);
                  _loc14_ = Number(_loc14_ + _loc12_ * _loc10_);
                  _loc15_ = Number(_loc15_ + _loc13_ * _loc10_);
               }
            }
            _loc8_++;
         }
         if(_loc14_ != 0 || _loc15_ != 0)
         {
            _loc16_ = param3 * this.var_1034 / Math.sqrt(_loc14_ * _loc14_ + _loc15_ * _loc15_);
            _loc4_.var_119 = _loc4_.var_119 + _loc16_ * _loc14_;
            _loc4_.var_118 = _loc4_.var_118 + _loc16_ * _loc15_;
         }
      }
   }
}
