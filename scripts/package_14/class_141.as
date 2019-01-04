package package_14
{
   import package_15.class_59;
   import package_16.class_62;
   import package_8.class_32;
   
   public final class class_141 extends class_32
   {
       
      
      private var var_469:Number;
      
      private var var_579:Number;
      
      public function class_141(param1:Number = 1, param2:Number = NaN)
      {
         super();
         priority = -10;
         this.method_322 = param1;
         this.method_311 = !!isNaN(param2)?Number(param1):Number(param2);
      }
      
      public function get method_322() : Number
      {
         return this.var_469;
      }
      
      public function set method_322(param1:Number) : void
      {
         this.var_469 = param1;
      }
      
      public function get method_311() : Number
      {
         return this.var_579;
      }
      
      public function set method_311(param1:Number) : void
      {
         this.var_579 = param1;
      }
      
      public function get scale() : Number
      {
         return this.var_469 == this.var_579?Number(this.var_469):Number((this.var_579 + this.var_469) / 2);
      }
      
      public function set scale(param1:Number) : void
      {
         this.var_579 = this.var_469 = param1;
      }
      
      override public function initialize(param1:class_59, param2:class_62) : void
      {
         var _loc3_:Number = NaN;
         if(this.var_579 == this.var_469)
         {
            _loc3_ = this.var_469;
         }
         else
         {
            _loc3_ = this.var_469 + Math.random() * (this.var_579 - this.var_469);
         }
         param2.scale = _loc3_;
         param2.mass = param2.mass * (_loc3_ * _loc3_);
         param2.var_169 = param2.var_169 * _loc3_;
      }
   }
}
