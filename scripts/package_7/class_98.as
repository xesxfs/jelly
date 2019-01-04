package package_7
{
   import flash.display.DisplayObject;
   import package_15.class_59;
   import package_16.class_62;
   import package_20.Particle2D;
   import package_6.class_29;
   
   public class class_98 extends class_29
   {
       
      
      private var var_878:Number;
      
      private var var_890:Number;
      
      private var var_1099:Number = 10000;
      
      private var var_630:DisplayObject;
      
      public function class_98(param1:Number = 0, param2:DisplayObject = null, param3:Number = 100)
      {
         super();
         this.power = param1;
         this.name_8 = param3;
         this.method_140 = param2;
      }
      
      public function get power() : Number
      {
         return this.var_878 / this.var_1099;
      }
      
      public function set power(param1:Number) : void
      {
         this.var_878 = param1 * this.var_1099;
      }
      
      public function get method_140() : DisplayObject
      {
         return this.var_630;
      }
      
      public function set method_140(param1:DisplayObject) : void
      {
         this.var_630 = param1;
      }
      
      public function get name_8() : Number
      {
         return Math.sqrt(this.var_890);
      }
      
      public function set name_8(param1:Number) : void
      {
         this.var_890 = param1 * param1;
      }
      
      override public function update(param1:class_59, param2:class_62, param3:Number) : void
      {
         var _loc4_:Particle2D = Particle2D(param2);
         var _loc5_:Number = this.var_630.mouseX - _loc4_.x;
         var _loc6_:Number = this.var_630.mouseY - _loc4_.y;
         var _loc7_:Number = _loc5_ * _loc5_ + _loc6_ * _loc6_;
         if(_loc7_ == 0)
         {
            return;
         }
         var _loc8_:Number = Math.sqrt(_loc7_);
         if(_loc7_ < this.var_890)
         {
            _loc7_ = this.var_890;
         }
         var _loc9_:Number = this.var_878 * param3 / (_loc7_ * _loc8_);
         _loc4_.var_119 = _loc4_.var_119 + _loc5_ * _loc9_;
         _loc4_.var_118 = _loc4_.var_118 + _loc6_ * _loc9_;
      }
   }
}
