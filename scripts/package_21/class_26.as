package package_21
{
   import flash.display.Shape;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import package_12.class_170;
   import package_15.class_59;
   import package_20.Particle2D;
   
   public final class class_26 extends class_25
   {
       
      
      private var var_774:Shape;
      
      public function class_26(param1:Rectangle, param2:Boolean = false)
      {
         super(param1,param2);
         var_758 = false;
         this.var_774 = new Shape();
      }
      
      override protected function method_672(param1:Particle2D) : void
      {
         this.var_774.graphics.clear();
         this.var_774.graphics.lineStyle(param1.scale,param1.color & 16777215,param1.color >>> 24);
         this.var_774.graphics.moveTo(param1.var_243 - var_317.x,param1.var_248 - var_317.y);
         this.var_774.graphics.lineTo(param1.x - var_317.x,param1.y - var_317.y);
         var_322.draw(this.var_774);
      }
      
      override protected function emitterUpdated(param1:class_170) : void
      {
         method_449(class_59(param1.target).particlesArray);
      }
      
      override protected function method_515(param1:Event) : void
      {
      }
   }
}
