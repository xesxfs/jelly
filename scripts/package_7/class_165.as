package package_7
{
   import package_15.class_59;
   import package_16.class_62;
   import package_20.Particle2D;
   import package_6.class_29;
   
   public final class class_165 extends class_29
   {
       
      
      private var var_1014:Number;
      
      private var var_1008:Number;
      
      private var var_916:Boolean;
      
      public function class_165(param1:Number = 1.7976931348623157E308, param2:Boolean = false)
      {
         super();
         priority = -5;
         this.method_291 = param1;
         this.method_268 = param2;
      }
      
      public function get method_291() : Number
      {
         return this.var_1014;
      }
      
      public function set method_291(param1:Number) : void
      {
         this.var_1014 = param1;
         this.var_1008 = param1 * param1;
      }
      
      public function get method_268() : Boolean
      {
         return this.var_916;
      }
      
      public function set method_268(param1:Boolean) : void
      {
         this.var_916 = param1;
      }
      
      override public function update(param1:class_59, param2:class_62, param3:Number) : void
      {
         var _loc6_:Number = NaN;
         var _loc4_:Particle2D = Particle2D(param2);
         var _loc5_:Number = _loc4_.var_119 * _loc4_.var_119 + _loc4_.var_118 * _loc4_.var_118;
         if(this.var_916 && _loc5_ < this.var_1008 || !this.var_916 && _loc5_ > this.var_1008)
         {
            _loc6_ = this.var_1014 / Math.sqrt(_loc5_);
            _loc4_.var_119 = _loc4_.var_119 * _loc6_;
            _loc4_.var_118 = _loc4_.var_118 * _loc6_;
         }
      }
   }
}
