package package_7
{
   import package_15.class_59;
   import package_16.class_62;
   import package_20.Particle2D;
   import package_6.class_29;
   
   public final class class_162 extends class_29
   {
       
      
      private var var_994:Number;
      
      private var var_787:Number;
      
      public function class_162(param1:Number = 0, param2:Number = 0.1)
      {
         super();
         this.method_501 = param1;
         this.method_158 = param2;
      }
      
      public function get method_501() : Number
      {
         return this.var_994;
      }
      
      public function set method_501(param1:Number) : void
      {
         this.var_994 = param1;
      }
      
      public function get method_158() : Number
      {
         return this.var_787;
      }
      
      public function set method_158(param1:Number) : void
      {
         this.var_787 = param1;
      }
      
      override public function update(param1:class_59, param2:class_62, param3:Number) : void
      {
         var _loc4_:Particle2D = Particle2D(param2);
         _loc4_.name_38 = _loc4_.name_38 + (this.var_994 - _loc4_.name_38) * this.var_787 * param3;
      }
   }
}
