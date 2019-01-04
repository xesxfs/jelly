package package_17
{
   import flash.display.DisplayObject;
   import package_11.class_65;
   import package_15.class_59;
   import package_18.class_84;
   
   public final class class_88 extends class_65
   {
       
      
      private var var_630:DisplayObject;
      
      public function class_88(param1:DisplayObject = null)
      {
         super();
         this.method_140 = param1;
      }
      
      public function get method_140() : DisplayObject
      {
         return this.var_630;
      }
      
      public function set method_140(param1:DisplayObject) : void
      {
         this.var_630 = param1;
      }
      
      override public function update(param1:class_59, param2:Number) : void
      {
         var _loc3_:class_84 = class_84(param1);
         _loc3_.x = this.var_630.mouseX;
         _loc3_.y = this.var_630.mouseY;
      }
   }
}
