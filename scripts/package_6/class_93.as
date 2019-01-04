package package_6
{
   import package_15.class_59;
   import package_16.class_62;
   
   public final class class_93 extends class_29
   {
       
      
      private var var_770:Number;
      
      private var var_732:Number;
      
      public function class_93(param1:Number = 1, param2:Number = 0)
      {
         super();
         priority = -5;
         this.var_770 = param1 - param2;
         this.var_732 = param2;
      }
      
      public function get method_683() : Number
      {
         return this.var_732 + this.var_770;
      }
      
      public function set method_683(param1:Number) : void
      {
         this.var_770 = param1 - this.var_732;
      }
      
      public function get method_687() : Number
      {
         return this.var_732;
      }
      
      public function set method_687(param1:Number) : void
      {
         this.var_770 = this.var_732 + this.var_770 - param1;
         this.var_732 = param1;
      }
      
      override public function update(param1:class_59, param2:class_62, param3:Number) : void
      {
         var _loc4_:Number = this.var_732 + this.var_770 * param2.var_358;
         param2.color = param2.color & 16777215 | Math.round(_loc4_ * 255) << 24;
      }
   }
}
