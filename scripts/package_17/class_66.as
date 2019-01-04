package package_17
{
   import flash.display.DisplayObject;
   import flash.geom.Point;
   import org.flintparticles.common.utils.class_85;
   import package_11.class_65;
   import package_15.class_59;
   import package_18.class_84;
   
   public final class class_66 extends class_65
   {
       
      
      private var var_630:DisplayObject;
      
      private var var_531:DisplayObject;
      
      public function class_66(param1:DisplayObject = null, param2:DisplayObject = null)
      {
         super();
         this.displayObject = param1;
         this.method_140 = param2;
      }
      
      public function get method_140() : DisplayObject
      {
         return this.var_630;
      }
      
      public function set method_140(param1:DisplayObject) : void
      {
         this.var_630 = param1;
      }
      
      public function get displayObject() : DisplayObject
      {
         return this.var_531;
      }
      
      public function set displayObject(param1:DisplayObject) : void
      {
         this.var_531 = param1;
      }
      
      override public function update(param1:class_59, param2:Number) : void
      {
         var _loc3_:class_84 = class_84(param1);
         var _loc4_:Point = new Point(0,0);
         _loc4_ = this.var_531.localToGlobal(_loc4_);
         _loc4_ = this.var_630.globalToLocal(_loc4_);
         var _loc5_:* = 0;
         _loc5_ = Number(class_85.method_522(this.var_531,_loc5_));
         _loc5_ = Number(class_85.method_512(this.var_630,_loc5_));
         _loc3_.x = _loc4_.x;
         _loc3_.y = _loc4_.y;
         _loc3_.rotation = _loc5_;
      }
   }
}
