package package_8
{
   import package_15.class_59;
   import package_16.class_62;
   
   public final class class_120 extends class_32
   {
       
      
      private var var_579:Number;
      
      private var var_469:Number;
      
      public function class_120(param1:Number = 1.7976931348623157E308, param2:Number = NaN)
      {
         super();
         this.var_579 = param2;
         this.var_469 = param1;
      }
      
      public function get method_704() : Number
      {
         return this.var_469;
      }
      
      public function set method_704(param1:Number) : void
      {
         this.var_469 = param1;
      }
      
      public function get method_646() : Number
      {
         return this.var_579;
      }
      
      public function set method_646(param1:Number) : void
      {
         this.var_579 = param1;
      }
      
      public function get lifetime() : Number
      {
         return this.var_469 == this.var_579?Number(this.var_469):Number((this.var_579 + this.var_469) * 0.5);
      }
      
      public function set lifetime(param1:Number) : void
      {
         this.var_579 = this.var_469 = param1;
      }
      
      override public function initialize(param1:class_59, param2:class_62) : void
      {
         if(isNaN(this.var_579))
         {
            param2.lifetime = this.var_469;
         }
         else
         {
            param2.lifetime = this.var_469 + Math.random() * (this.var_579 - this.var_469);
         }
      }
   }
}
