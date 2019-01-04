package package_7
{
   import package_15.class_59;
   import package_16.class_62;
   import package_20.Particle2D;
   import package_6.class_29;
   
   public final class class_105 extends class_29
   {
       
      
      public function class_105()
      {
         super();
         priority = -10;
      }
      
      override public function update(param1:class_59, param2:class_62, param3:Number) : void
      {
         var _loc4_:Particle2D = Particle2D(param2);
         _loc4_.var_243 = _loc4_.x;
         _loc4_.var_248 = _loc4_.y;
         _loc4_.x = _loc4_.x + _loc4_.var_119 * param3;
         _loc4_.y = _loc4_.y + _loc4_.var_118 * param3;
      }
   }
}
