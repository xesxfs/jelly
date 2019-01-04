package package_4
{
   import flash.geom.Rectangle;
   import package_20.Particle2D;
   
   public final class class_125 extends class_25
   {
       
      
      public function class_125(param1:Rectangle = null)
      {
         super(param1);
      }
      
      override protected function method_672(param1:Particle2D) : void
      {
         var_322.setPixel32(Math.round(param1.x - var_317.x),Math.round(param1.y - var_317.y),param1.color);
      }
   }
}
