package package_6
{
   import package_15.class_59;
   import package_16.class_62;
   
   public final class class_90 extends class_29
   {
       
      
      private var var_762:Number;
      
      private var var_702:Number;
      
      public function class_90(param1:Number = 1, param2:Number = 1)
      {
         super();
         this.var_762 = param1 - param2;
         this.var_702 = param2;
      }
      
      public function get method_725() : Number
      {
         return this.var_702 + this.var_762;
      }
      
      public function set method_725(param1:Number) : void
      {
         this.var_762 = param1 - this.var_702;
      }
      
      public function get method_703() : Number
      {
         return this.var_702;
      }
      
      public function set method_703(param1:Number) : void
      {
         this.var_762 = this.var_702 + this.var_762 - param1;
         this.var_702 = param1;
      }
      
      override public function update(param1:class_59, param2:class_62, param3:Number) : void
      {
         param2.mass = this.var_702 + this.var_762 * param2.var_358;
      }
   }
}
