package package_7
{
   import package_15.class_59;
   import package_16.class_62;
   import package_20.Particle2D;
   import package_6.class_29;
   
   public final class class_35 extends class_29
   {
       
      
      private var var_851:Number = 0;
      
      private var var_798:Number = 0;
      
      private var var_872:Number = 0;
      
      private var var_760:Number = 0;
      
      public function class_35(param1:Number = 0, param2:Number = 0, param3:Number = 0, param4:Number = 0)
      {
         super();
         this.method_325 = param1;
         this.endX = param3;
         this.method_320 = param2;
         this.endY = param4;
      }
      
      public function get method_325() : Number
      {
         return this.var_798 + this.var_851;
      }
      
      public function set method_325(param1:Number) : void
      {
         this.var_851 = param1 - this.var_798;
      }
      
      public function get endX() : Number
      {
         return this.var_798;
      }
      
      public function set endX(param1:Number) : void
      {
         this.var_851 = this.var_798 + this.var_851 - param1;
         this.var_798 = param1;
      }
      
      public function get method_320() : Number
      {
         return this.var_760 + this.var_872;
      }
      
      public function set method_320(param1:Number) : void
      {
         this.var_872 = param1 - this.var_760;
      }
      
      public function get endY() : Number
      {
         return this.var_760;
      }
      
      public function set endY(param1:Number) : void
      {
         this.var_872 = this.var_760 + this.var_872 - param1;
         this.var_760 = param1;
      }
      
      override public function update(param1:class_59, param2:class_62, param3:Number) : void
      {
         var _loc4_:Particle2D = Particle2D(param2);
         _loc4_.x = this.var_798 + this.var_851 * _loc4_.var_358;
         _loc4_.y = this.var_760 + this.var_872 * _loc4_.var_358;
      }
   }
}
