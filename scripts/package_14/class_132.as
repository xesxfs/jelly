package package_14
{
   import flash.geom.Point;
   import package_15.class_59;
   import package_16.class_62;
   import package_20.Particle2D;
   import package_8.class_32;
   import package_9.class_38;
   
   public final class class_132 extends class_32
   {
       
      
      private var var_898:class_38;
      
      public function class_132(param1:class_38 = null)
      {
         super();
         this.method_125 = param1;
      }
      
      public function get method_125() : class_38
      {
         return this.var_898;
      }
      
      public function set method_125(param1:class_38) : void
      {
         this.var_898 = param1;
      }
      
      override public function initialize(param1:class_59, param2:class_62) : void
      {
         var _loc3_:* = null;
         _loc3_ = Particle2D(param2);
         var _loc4_:Point = this.var_898.getLocation();
         _loc3_.x = _loc4_.x;
         _loc3_.y = _loc4_.y;
         _loc3_.var_243 = _loc3_.x;
         _loc3_.var_248 = _loc3_.y;
      }
   }
}
