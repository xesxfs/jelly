package package_7
{
   import package_15.class_59;
   import package_16.class_62;
   import package_20.Particle2D;
   import package_6.class_29;
   
   public final class class_163 extends class_29
   {
       
      
      public function class_163()
      {
         super();
         priority = -10;
      }
      
      override public function update(param1:class_59, param2:class_62, param3:Number) : void
      {
         var _loc4_:Particle2D = Particle2D(param2);
         _loc4_.rotation = _loc4_.rotation + _loc4_.name_38 * param3;
      }
   }
}
