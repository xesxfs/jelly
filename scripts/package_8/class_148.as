package package_8
{
   import package_15.class_59;
   import package_16.class_62;
   
   public final class class_148 extends class_32
   {
       
      
      private var var_469:Number;
      
      private var var_579:Number;
      
      public function class_148(param1:Number = 1, param2:Number = NaN)
      {
         super();
         this.var_469 = param1;
         if(isNaN(param2))
         {
            this.var_579 = this.var_469;
         }
         else
         {
            this.var_579 = param2;
         }
      }
      
      public function get method_322() : Number
      {
         return this.var_469;
      }
      
      public function set method_322(param1:Number) : void
      {
         this.var_469 = param1;
      }
      
      public function get method_311() : Number
      {
         return this.var_579;
      }
      
      public function set method_311(param1:Number) : void
      {
         this.var_579 = param1;
      }
      
      public function get scale() : Number
      {
         return this.var_469 == this.var_579?Number(this.var_469):Number((this.var_579 + this.var_469) / 2);
      }
      
      public function set scale(param1:Number) : void
      {
         this.var_579 = this.var_469 = param1;
      }
      
      override public function initialize(param1:class_59, param2:class_62) : void
      {
         if(this.var_579 == this.var_469)
         {
            param2.scale = this.var_469;
         }
         else
         {
            param2.scale = this.var_469 + Math.random() * (this.var_579 - this.var_469);
         }
      }
   }
}
