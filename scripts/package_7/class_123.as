package package_7
{
   import package_15.class_59;
   import package_16.class_62;
   import package_6.class_29;
   
   public final class class_123 extends class_29
   {
       
      
      private var var_772:Number = 0;
      
      private var var_711:Number = 1;
      
      public function class_123(param1:Number = 1, param2:Number = 1)
      {
         super();
         this.method_337 = param1;
         this.method_333 = param2;
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
         var _loc4_:Number = this.var_711 + this.var_772 * param2.var_358;
         var _loc5_:Number = _loc4_ / param2.scale;
         param2.scale = _loc4_;
         param2.mass = param2.mass * (_loc5_ * _loc5_);
         param2.var_169 = param2.var_169 * _loc5_;
      }
   }
}
