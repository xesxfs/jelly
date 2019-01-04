package package_14
{
   import package_15.class_59;
   import package_16.class_62;
   import package_20.Particle2D;
   import package_8.class_32;
   
   public final class class_131 extends class_32
   {
       
      
      private var var_469:Number;
      
      private var var_579:Number;
      
      public function class_131(param1:Number = 0, param2:Number = NaN)
      {
         super();
         this.method_215 = param1;
         this.method_233 = param2;
      }
      
      public function get method_215() : Number
      {
         return this.var_469;
      }
      
      public function set method_215(param1:Number) : void
      {
         this.var_469 = param1;
      }
      
      public function get method_233() : Number
      {
         return this.var_579;
      }
      
      public function set method_233(param1:Number) : void
      {
         this.var_579 = param1;
      }
      
      public function get angle() : Number
      {
         return this.var_469 == this.var_579?Number(this.var_469):Number((this.var_579 + this.var_469) / 2);
      }
      
      public function set angle(param1:Number) : void
      {
         this.var_579 = this.var_469 = param1;
      }
      
      override public function initialize(param1:class_59, param2:class_62) : void
      {
         var _loc3_:Particle2D = Particle2D(param2);
         if(isNaN(this.var_579))
         {
            _loc3_.rotation = this.var_469;
         }
         else
         {
            _loc3_.rotation = this.var_469 + Math.random() * (this.var_579 - this.var_469);
         }
      }
   }
}
