package package_7
{
   import package_15.class_59;
   import package_16.class_62;
   import package_20.Particle2D;
   import package_6.class_29;
   
   public final class class_96 extends class_29
   {
       
      
      private var var_1053:Number;
      
      public function class_96(param1:Number = 0)
      {
         super();
         this.name_52 = param1;
      }
      
      public function get name_52() : Number
      {
         return this.var_1053;
      }
      
      public function set name_52(param1:Number) : void
      {
         this.var_1053 = param1;
      }
      
      override public function update(param1:class_59, param2:class_62, param3:Number) : void
      {
         var _loc6_:Number = NaN;
         var _loc4_:Particle2D = Particle2D(param2);
         var _loc5_:Number = _loc4_.var_119 * _loc4_.var_119 + _loc4_.var_118 * _loc4_.var_118;
         if(_loc5_ == 0)
         {
            return;
         }
         _loc6_ = 1 - this.var_1053 * param3 / (Math.sqrt(_loc5_) * _loc4_.mass);
         if(_loc6_ < 0)
         {
            _loc4_.var_119 = 0;
            _loc4_.var_118 = 0;
         }
         else
         {
            _loc4_.var_119 = _loc4_.var_119 * _loc6_;
            _loc4_.var_118 = _loc4_.var_118 * _loc6_;
         }
      }
   }
}
