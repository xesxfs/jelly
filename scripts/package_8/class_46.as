package package_8
{
   import package_15.class_59;
   import package_16.class_62;
   
   public final class class_46 extends class_32
   {
       
      
      private var var_515:Number;
      
      public function class_46(param1:Number = 1)
      {
         super();
         this.var_515 = param1;
      }
      
      public function get radius() : Number
      {
         return this.var_515;
      }
      
      public function set radius(param1:Number) : void
      {
         this.var_515 = param1;
      }
      
      override public function initialize(param1:class_59, param2:class_62) : void
      {
         param2.var_169 = this.var_515;
      }
   }
}
