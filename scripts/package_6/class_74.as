package package_6
{
   import package_15.class_59;
   import package_16.class_62;
   
   public final class class_74 extends class_29
   {
       
      
      private var _scale:Number;
      
      private var var_787:Number;
      
      public function class_74(param1:Number = 1, param2:Number = 0.1)
      {
         super();
         this._scale = param1;
         this.var_787 = param2;
      }
      
      public function get method_596() : Number
      {
         return this._scale;
      }
      
      public function set method_596(param1:Number) : void
      {
         this._scale = param1;
      }
      
      public function get method_158() : Number
      {
         return this.var_787;
      }
      
      public function set method_158(param1:Number) : void
      {
         this.var_787 = param1;
      }
      
      override public function update(param1:class_59, param2:class_62, param3:Number) : void
      {
         param2.scale = param2.scale + (this._scale - param2.scale) * this.var_787 * param3;
      }
   }
}
