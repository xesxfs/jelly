package package_21
{
   import flash.display.DisplayObject;
   import org.flintparticles.common.renderers.class_75;
   import package_16.class_62;
   import package_20.Particle2D;
   
   public final class class_113 extends class_75
   {
       
      
      public function class_113()
      {
         super();
      }
      
      override protected function method_449(param1:Array) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:int = param1.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc2_ = Particle2D(param1[_loc5_]);
            _loc3_ = _loc2_.image;
            _loc3_.transform.colorTransform = _loc2_.colorTransform;
            _loc3_.transform.matrix = _loc2_.method_244;
            _loc5_++;
         }
      }
      
      override protected function method_384(param1:class_62) : void
      {
         super.method_384(param1);
         var _loc2_:Particle2D = param1 as Particle2D;
         addChildAt(_loc2_.image,0);
         var _loc3_:DisplayObject = _loc2_.image;
         _loc3_.transform.colorTransform = _loc2_.colorTransform;
         _loc3_.transform.matrix = _loc2_.method_244;
      }
      
      override protected function removeParticle(param1:class_62) : void
      {
         removeChild(param1.image);
         super.removeParticle(param1);
      }
   }
}
