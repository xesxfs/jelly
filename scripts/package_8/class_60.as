package package_8
{
   import package_15.class_59;
   import package_16.class_62;
   
   public final class class_60 extends class_32
   {
       
      
      private var var_917:Number;
      
      public function class_60(param1:Number = 1)
      {
         super();
         this.var_917 = param1;
      }
      
      public function get mass() : Number
      {
         return this.var_917;
      }
      
      public function set mass(param1:Number) : void
      {
         this.var_917 = param1;
      }
      
      override public function initialize(param1:class_59, param2:class_62) : void
      {
         param2.mass = this.var_917;
      }
   }
}
