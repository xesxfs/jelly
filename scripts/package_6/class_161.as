package package_6
{
   import package_15.class_59;
   import package_16.class_62;
   
   public final class class_161 extends class_29
   {
       
      
      private var var_772:Number;
      
      private var var_711:Number;
      
      public function class_161(param1:Number = 1, param2:Number = 1)
      {
         super();
         this.var_772 = param1 - param2;
         this.var_711 = param2;
      }
      
      public function get method_337() : Number
      {
         return this.var_711 + this.var_772;
      }
      
      public function set method_337(param1:Number) : void
      {
         this.var_772 = param1 - this.var_711;
      }
      
      public function get method_333() : Number
      {
         return this.var_711;
      }
      
      public function set method_333(param1:Number) : void
      {
         this.var_772 = this.var_711 + this.var_772 - param1;
         this.var_711 = param1;
      }
      
      override public function update(param1:class_59, param2:class_62, param3:Number) : void
      {
         param2.scale = this.var_711 + this.var_772 * param2.var_358;
      }
   }
}
