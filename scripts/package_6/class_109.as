package package_6
{
   import package_15.class_59;
   import package_16.class_62;
   
   public final class class_109 extends class_29
   {
       
      
      private var var_808:Number;
      
      private var var_693:Number;
      
      public function class_109(param1:Number = 1, param2:Number = 1)
      {
         super();
         this.var_808 = param1 - param2;
         this.var_693 = param2;
      }
      
      public function get method_603() : Number
      {
         return this.var_693 + this.var_808;
      }
      
      public function set method_603(param1:Number) : void
      {
         this.var_808 = param1 - this.var_693;
      }
      
      public function get method_669() : Number
      {
         return this.var_693;
      }
      
      public function set method_669(param1:Number) : void
      {
         this.var_808 = this.var_693 + this.var_808 - param1;
         this.var_693 = param1;
      }
      
      override public function update(param1:class_59, param2:class_62, param3:Number) : void
      {
         param2.var_169 = this.var_693 + this.var_808 * param2.var_358;
      }
   }
}
