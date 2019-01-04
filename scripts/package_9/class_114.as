package package_9
{
   import flash.geom.Point;
   import package_20.Particle2D;
   
   public final class class_114 implements class_38
   {
       
      
      private var _start:Point;
      
      private var _end:Point;
      
      private var var_218:Point;
      
      private var var_427:Point;
      
      private var var_649:Point;
      
      public function class_114(param1:Point = null, param2:Point = null)
      {
         super();
         if(param1 == null)
         {
            this._start = new Point(0,0);
         }
         else
         {
            this._start = param1;
         }
         if(param2 == null)
         {
            this._end = new Point(0,0);
         }
         else
         {
            this._end = param2;
         }
         this.method_382();
      }
      
      private final function method_382() : void
      {
         this.var_218 = this._end.subtract(this._start);
         this.var_649 = this.var_218.clone();
         this.var_649.normalize(1);
         this.var_427 = new Point(this.var_649.y,-this.var_649.x);
      }
      
      public function get start() : Point
      {
         return this._start;
      }
      
      public function set start(param1:Point) : void
      {
         this._start = param1;
         this.method_382();
      }
      
      public function get end() : Point
      {
         return this._end;
      }
      
      public function set end(param1:Point) : void
      {
         this._end = param1;
         this.method_382();
      }
      
      public function get method_325() : Number
      {
         return this._start.x;
      }
      
      public function set method_325(param1:Number) : void
      {
         this._start.x = param1;
         this.var_218 = this._end.subtract(this._start);
      }
      
      public function get method_320() : Number
      {
         return this._start.y;
      }
      
      public function set method_320(param1:Number) : void
      {
         this._start.y = param1;
         this.var_218 = this._end.subtract(this._start);
      }
      
      public function get endX() : Number
      {
         return this._end.x;
      }
      
      public function set endX(param1:Number) : void
      {
         this._end.x = param1;
         this.var_218 = this._end.subtract(this._start);
      }
      
      public function get endY() : Number
      {
         return this._end.y;
      }
      
      public function set endY(param1:Number) : void
      {
         this._end.y = param1;
         this.var_218 = this._end.subtract(this._start);
      }
      
      public function contains(param1:Number, param2:Number) : Boolean
      {
         if((param1 - this._start.x) * this.var_218.y - (param2 - this._start.y) * this.var_218.x != 0)
         {
            return false;
         }
         return (param1 - this._start.x) * (param1 - this._end.x) + (param2 - this._start.y) * (param2 - this._end.y) <= 0;
      }
      
      public function getLocation() : Point
      {
         var _loc1_:Point = this._start.clone();
         var _loc2_:Number = Math.random();
         _loc1_.x = _loc1_.x + this.var_218.x * _loc2_;
         _loc1_.y = _loc1_.y + this.var_218.y * _loc2_;
         return _loc1_;
      }
      
      public function method_198() : Number
      {
         return this.var_218.length;
      }
      
      public function method_203(param1:Particle2D, param2:Number = 1) : Boolean
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc3_:Number = (param1.var_243 - this._start.x) * this.var_427.x + (param1.var_248 - this._start.y) * this.var_427.y;
         var _loc4_:Number = param1.var_119 * this.var_427.x + param1.var_118 * this.var_427.y;
         if(_loc3_ * _loc4_ >= 0)
         {
            return false;
         }
         var _loc5_:Number = (param1.x - this._start.x) * this.var_427.x + (param1.y - this._start.y) * this.var_427.y;
         if(_loc5_ * _loc3_ > 0 && (_loc5_ > param1.var_169 || _loc5_ < -param1.var_169))
         {
            return false;
         }
         if(_loc3_ < 0)
         {
            _loc6_ = this.var_427.x * param1.var_169;
            _loc7_ = this.var_427.y * param1.var_169;
         }
         else
         {
            _loc6_ = -this.var_427.x * param1.var_169;
            _loc7_ = -this.var_427.y * param1.var_169;
         }
         var _loc8_:Number = param1.var_243 + _loc6_;
         var _loc9_:Number = param1.var_248 + _loc7_;
         var _loc10_:Number = param1.x + _loc6_;
         var _loc11_:Number = param1.y + _loc7_;
         var _loc12_:Number = this._start.x - this.var_649.x * param1.var_169;
         var _loc13_:Number = this._start.y - this.var_649.y * param1.var_169;
         var _loc14_:Number = this._end.x + this.var_649.x * param1.var_169;
         var _loc15_:Number = this._end.y + this.var_649.y * param1.var_169;
         var _loc16_:Number = 1 / ((_loc11_ - _loc9_) * (_loc14_ - _loc12_) - (_loc10_ - _loc8_) * (_loc15_ - _loc13_));
         var _loc17_:Number = _loc16_ * ((_loc10_ - _loc8_) * (_loc13_ - _loc9_) - (_loc11_ - _loc9_) * (_loc12_ - _loc8_));
         if(_loc17_ < 0 || _loc17_ > 1)
         {
            return false;
         }
         var _loc18_:Number = -_loc16_ * ((_loc14_ - _loc12_) * (_loc9_ - _loc13_) - (_loc15_ - _loc13_) * (_loc8_ - _loc12_));
         if(_loc18_ < 0 || _loc18_ > 1)
         {
            return false;
         }
         param1.x = param1.var_243 + _loc18_ * (param1.x - param1.var_243);
         param1.y = param1.var_248 + _loc18_ * (param1.y - param1.var_248);
         var _loc19_:Number = this.var_427.x * param1.var_119 + this.var_427.y * param1.var_118;
         var _loc20_:Number = (1 + param2) * _loc19_;
         param1.var_119 = param1.var_119 - _loc20_ * this.var_427.x;
         param1.var_118 = param1.var_118 - _loc20_ * this.var_427.y;
         return true;
      }
   }
}
