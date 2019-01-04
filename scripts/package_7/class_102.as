package package_7
{
   import package_11.class_47;
   import package_11.class_87;
   import package_12.class_50;
   import package_15.class_59;
   import package_16.class_62;
   import package_18.class_84;
   import package_20.Particle2D;
   import package_6.class_29;
   
   public final class class_102 extends class_29 implements class_47
   {
       
      
      private var var_803:Number;
      
      private var var_818:Number;
      
      private var var_920:class_87;
      
      private var var_791:int = 1;
      
      public function class_102(param1:Number = 1)
      {
         super();
         priority = -20;
         this.name_39 = param1;
         this.var_818 = 0;
      }
      
      public function get name_39() : Number
      {
         return this.var_803;
      }
      
      public function set name_39(param1:Number) : void
      {
         this.var_803 = param1;
      }
      
      override public function method_126(param1:class_59) : void
      {
         class_84(param1).spaceSort = true;
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
      
      public function method_477(param1:class_59, param2:Number) : void
      {
         var _loc6_:* = null;
         var _loc3_:Array = param1.particlesArray;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         for each(_loc6_ in _loc3_)
         {
            if(_loc6_.var_169 > _loc4_)
            {
               _loc5_ = Number(_loc4_);
               _loc4_ = Number(_loc6_.var_169);
            }
            else if(_loc6_.var_169 > _loc5_)
            {
               _loc5_ = Number(_loc6_.var_169);
            }
         }
         this.var_818 = _loc4_ + _loc5_;
         this.var_791 = -this.var_791;
      }
      
      override public function update(param1:class_59, param2:class_62, param3:Number) : void
      {
         var _loc4_:* = null;
         var _loc7_:* = null;
         var _loc8_:int = 0;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:* = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:* = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:* = null;
         _loc4_ = Particle2D(param2);
         var _loc5_:class_84 = class_84(param1);
         var _loc6_:Array = _loc5_.particlesArray;
         var _loc9_:int = _loc6_.length;
         _loc8_ = _loc4_.sortID + this.var_791;
         while(_loc8_ < _loc9_ && _loc8_ >= 0)
         {
            _loc7_ = _loc6_[_loc8_];
            _loc13_ = _loc7_.x - _loc4_.x;
            if(_loc23_ * this.var_791 > this.var_818)
            {
               break;
            }
            _loc12_ = _loc7_.var_169 + _loc4_.var_169;
            if(_loc13_ * this.var_791 <= _loc12_)
            {
               _loc14_ = Number(_loc7_.y - _loc4_.y);
               if(!(Number(_loc7_.y - _loc4_.y) > _loc12_ || _loc14_ < -_loc12_))
               {
                  _loc11_ = Number(_loc14_ * _loc14_ + _loc13_ * _loc13_);
                  if(Number(_loc14_ * _loc14_ + _loc13_ * _loc13_) <= _loc12_ * _loc12_ && _loc11_ > 0)
                  {
                     _loc10_ = Number(1 / Math.sqrt(_loc11_));
                     _loc13_ = _loc13_ * _loc10_;
                     _loc14_ = Number(_loc14_ * _loc10_);
                     _loc15_ = _loc13_ * _loc4_.var_119 + _loc14_ * _loc4_.var_118;
                     _loc16_ = _loc13_ * _loc7_.var_119 + _loc14_ * _loc7_.var_118;
                     _loc17_ = Number(_loc15_ - _loc16_);
                     if(Number(_loc15_ - _loc16_) > 0)
                     {
                        _loc18_ = _loc4_.mass;
                        _loc19_ = _loc7_.mass;
                        _loc10_ = Number((1 + this.var_803) * _loc17_ / (_loc18_ + _loc19_));
                        _loc20_ = (1 + this.var_803) * _loc17_ / (_loc18_ + _loc19_) * _loc19_;
                        _loc21_ = -_loc10_ * _loc18_;
                        _loc4_.var_119 = _loc4_.var_119 - _loc20_ * _loc13_;
                        _loc4_.var_118 = _loc4_.var_118 - _loc20_ * _loc14_;
                        _loc7_.var_119 = _loc7_.var_119 - _loc21_ * _loc13_;
                        _loc7_.var_118 = _loc7_.var_118 - _loc21_ * _loc14_;
                        if(param1.hasEventListener(class_50.var_935))
                        {
                           _loc22_ = new class_50(class_50.var_935,_loc4_);
                           _loc22_.var_937 = _loc7_;
                           param1.dispatchEvent(_loc22_);
                        }
                     }
                  }
               }
            }
            _loc8_ = _loc8_ + this.var_791;
         }
      }
   }
}
