package package_7
{
   import package_15.class_59;
   import package_16.class_62;
   import package_20.Particle2D;
   import package_6.class_29;
   
   public final class class_55 extends class_29
   {
       
      
      private var var_1001:Number;
      
      private var var_1030:Number;
      
      private var var_787:Number;
      
      public function class_55(param1:Number = 0, param2:Number = 0, param3:Number = 0.1)
      {
         super();
         this.method_504 = param1;
         this.method_476 = param2;
         this.method_158 = param3;
      }
      
      public function get method_476() : Number
      {
         return this.var_1030;
      }
      
      public function set method_476(param1:Number) : void
      {
         this.var_1030 = param1;
      }
      
      public function get method_504() : Number
      {
         return this.var_1001;
      }
      
      public function set method_504(param1:Number) : void
      {
         this.var_1001 = param1;
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
         _loc4_.var_119 = _loc4_.var_119 + (this.var_1001 - _loc4_.var_119) * this.var_787 * param3;
         _loc4_.var_118 = _loc4_.var_118 + (this.var_1030 - _loc4_.var_118) * this.var_787 * param3;
      }
   }
}
