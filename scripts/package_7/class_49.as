package package_7
{
   import flash.display.DisplayObject;
   import package_15.class_59;
   import package_16.class_62;
   import package_20.Particle2D;
   import package_6.class_29;
   
   public final class class_49 extends class_29
   {
       
      
      private var var_878:Number;
      
      private var var_630:DisplayObject;
      
      public function class_49(param1:Number = 0, param2:DisplayObject = null)
      {
         super();
         this.power = param1;
         this.method_140 = param2;
      }
      
      public function get power() : Number
      {
         return this.var_878;
      }
      
      public function set power(param1:Number) : void
      {
         this.var_878 = param1;
      }
      
      public function get method_140() : DisplayObject
      {
         return this.var_630;
      }
      
      public function set method_140(param1:DisplayObject) : void
      {
         this.var_630 = param1;
      }
      
      override public function update(param1:class_59, param2:class_62, param3:Number) : void
      {
         var _loc4_:* = null;
         var _loc5_:* = false;
         var _loc6_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         _loc4_ = Particle2D(param2);
         _loc5_ = (_loc4_.y - this.var_630.mouseY) * _loc4_.var_119 + (this.var_630.mouseX - _loc4_.x) * _loc4_.var_118 < 0;
         if(_loc5_)
         {
            _loc6_ = Math.atan2(_loc4_.var_118,_loc4_.var_119) - this.var_878 * param3;
         }
         else
         {
            _loc6_ = Math.atan2(_loc4_.var_118,_loc4_.var_119) + this.var_878 * param3;
         }
         var _loc7_:Number = Math.sqrt(_loc4_.var_119 * _loc4_.var_119 + _loc4_.var_118 * _loc4_.var_118);
         _loc4_.var_119 = _loc7_ * Math.cos(_loc6_);
         _loc4_.var_118 = _loc7_ * Math.sin(_loc6_);
         var _loc8_:* = (_loc4_.y - this.var_630.mouseY) * _loc4_.var_119 + (this.var_630.mouseX - _loc4_.x) * _loc4_.var_118 < 0 != _loc5_;
         if(_loc8_)
         {
            _loc9_ = _loc4_.x - this.var_630.mouseX;
            _loc10_ = _loc4_.y - this.var_630.mouseY;
            _loc11_ = _loc7_ / Math.sqrt(_loc9_ * _loc9_ + _loc10_ * _loc10_);
            _loc4_.var_119 = _loc9_ * _loc11_;
            _loc4_.var_118 = _loc10_ * _loc11_;
         }
      }
   }
}
