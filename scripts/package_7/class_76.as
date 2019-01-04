package package_7
{
   import package_15.class_59;
   import package_16.class_62;
   import package_20.Particle2D;
   import package_6.class_29;
   
   public final class class_76 extends class_29
   {
       
      
      private var var_968:Number;
      
      public function class_76(param1:Number = 0)
      {
         super();
         this.method_167 = param1;
      }
      
      public function get method_167() : Number
      {
         return this.var_968;
      }
      
      public function set method_167(param1:Number) : void
      {
         this.var_968 = param1;
      }
      
      override public function update(param1:class_59, param2:class_62, param3:Number) : void
      {
         var _loc4_:Particle2D = Particle2D(param2);
         if(_loc4_.name_38 == 0)
         {
            return;
         }
         var _loc5_:Number = 1 - this.var_968 * param3 * _loc4_.name_38 / _loc4_.inertia;
         if(_loc5_ < 0)
         {
            _loc4_.name_38 = 0;
         }
         else
         {
            _loc4_.name_38 = _loc4_.name_38 * _loc5_;
         }
      }
   }
}
