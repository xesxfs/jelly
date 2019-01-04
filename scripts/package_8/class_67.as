package package_8
{
   import flash.display.DisplayObject;
   import package_15.class_59;
   import package_16.class_62;
   
   public final class class_67 extends class_32
   {
       
      
      private var var_943:DisplayObject;
      
      public function class_67(param1:DisplayObject = null)
      {
         super();
         this.var_943 = param1;
      }
      
      public function get image() : DisplayObject
      {
         return this.var_943;
      }
      
      public function set image(param1:DisplayObject) : void
      {
         this.var_943 = param1;
      }
      
      override public function initialize(param1:class_59, param2:class_62) : void
      {
         param2.image = this.var_943;
      }
   }
}
