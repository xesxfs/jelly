package package_7
{
   import package_15.class_59;
   import package_16.class_62;
   import package_18.class_84;
   import package_20.Particle2D;
   import package_6.class_29;
   
   public final class class_30 extends class_29
   {
       
      
      private var var_878:Number;
      
      private var var_818:Number;
      
      private var var_1093:Number;
      
      private var var_890:Number;
      
      private var var_1099:Number = 1000;
      
      public function class_30(param1:Number = 0, param2:Number = 0, param3:Number = 1)
      {
         super();
         priority = 10;
         this.power = param1;
         this.method_134 = param2;
         this.name_8 = param3;
      }
      
      public function get power() : Number
      {
         return this.var_878 / this.var_1099;
      }
      
      public function set power(param1:Number) : void
      {
         this.var_878 = param1 * this.var_1099;
      }
      
      public function get method_134() : Number
      {
         return this.var_818;
      }
      
      public function set method_134(param1:Number) : void
      {
         this.var_818 = param1;
         this.var_1093 = param1 * param1;
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
         class_84(param1).spaceSort = true;
      }
      
      override public function update(param1:class_59, param2:class_62, param3:Number) : void
      {
         var _loc7_:* = null;
         var _loc8_:int = 0;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:* = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:* = NaN;
         if(param2.mass == 0)
         {
            return;
         }
         var _loc4_:Particle2D = Particle2D(param2);
         var _loc5_:class_84 = class_84(param1);
         var _loc6_:Array = _loc5_.particlesArray;
         var _loc9_:int = _loc6_.length;
         _loc8_ = _loc4_.sortID + 1;
         while(_loc8_ < _loc9_)
         {
            _loc7_ = _loc6_[_loc8_];
            if(_loc7_.mass != 0)
            {
               _loc13_ = _loc7_.x - _loc4_.x;
               if(_loc15_ > this.var_818)
               {
                  break;
               }
               _loc14_ = Number(_loc7_.y - _loc4_.y);
               if(!(Number(_loc7_.y - _loc4_.y) > this.var_818 || _loc14_ < -this.var_818))
               {
                  _loc12_ = Number(_loc14_ * _loc14_ + _loc13_ * _loc13_);
                  if(Number(_loc14_ * _loc14_ + _loc13_ * _loc13_) <= this.var_1093 && _loc12_ > 0)
                  {
                     _loc11_ = Math.sqrt(_loc12_);
                     if(_loc12_ < this.var_890)
                     {
                        _loc12_ = Number(this.var_890);
                     }
                     _loc10_ = this.var_878 * param3 / (_loc12_ * _loc11_);
                     _loc13_ = _loc13_ * _loc10_;
                     _loc4_.var_119 = _loc4_.var_119 + _loc15_ * _loc7_.mass;
                     _loc14_ = Number(_loc14_ * _loc10_);
                     _loc4_.var_118 = _loc4_.var_118 + _loc15_ * _loc7_.mass;
                     _loc7_.var_119 = _loc7_.var_119 - _loc13_ * _loc4_.mass;
                     _loc7_.var_118 = _loc7_.var_118 - _loc14_ * _loc4_.mass;
                  }
               }
            }
            _loc8_++;
         }
      }
   }
}
