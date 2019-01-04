package package_21
{
   import flash.events.Event;
   import org.flintparticles.common.renderers.class_75;
   import package_12.class_170;
   import package_15.class_59;
   import package_20.Particle2D;
   
   public final class class_54 extends class_75
   {
       
      
      public function class_54()
      {
         super();
      }
      
      override protected function method_449(param1:Array) : void
      {
         var _loc2_:* = null;
         var _loc3_:int = param1.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc2_ = Particle2D(param1[_loc4_]);
            graphics.lineStyle(_loc2_.scale,_loc2_.color & 16777215,_loc2_.color >>> 24);
            graphics.moveTo(_loc2_.var_243,_loc2_.var_248);
            graphics.lineTo(_loc2_.x,_loc2_.y);
            _loc4_++;
         }
      }
      
      override protected function emitterUpdated(param1:class_170) : void
      {
         this.method_449(class_59(param1.target).particlesArray);
      }
      
      override protected function method_515(param1:Event) : void
      {
      }
   }
}
