package package_7
{
   import package_15.class_59;
   import package_16.class_62;
   import package_20.Particle2D;
   import package_6.class_29;
   
   public final class class_48 extends class_29
   {
       
      
      private var var_993:Number;
      
      private var var_972:Number;
      
      public function class_48(param1:Number = 0, param2:Number = 0)
      {
         super();
         this.method_489 = param1;
         this.method_488 = param2;
      }
      
      public function get method_489() : Number
      {
         return this.var_993 / 2;
      }
      
      public function set method_489(param1:Number) : void
      {
         this.var_993 = param1 * 2;
      }
      
      public function get method_488() : Number
      {
         return this.var_972 / 2;
      }
      
      public function set method_488(param1:Number) : void
      {
         this.var_972 = param1 * 2;
      }
      
      override public function update(param1:class_59, param2:class_62, param3:Number) : void
      {
         var _loc4_:* = null;
         _loc4_ = Particle2D(param2);
         _loc4_.var_119 = _loc4_.var_119 + (Math.random() - 0.5) * this.var_993 * param3;
         _loc4_.var_118 = _loc4_.var_118 + (Math.random() - 0.5) * this.var_972 * param3;
      }
   }
}
