package package_2
{
   import package_15.class_59;
   
   public final class class_69 implements class_21
   {
       
      
      private var var_598:Number;
      
      private var var_947:Number;
      
      private var var_862:Number;
      
      private var var_761:Boolean;
      
      public function class_69(param1:Number = 0, param2:Number = 0)
      {
         super();
         this.var_761 = false;
         this.var_947 = param1;
         this.var_862 = param2;
      }
      
      public function stop() : void
      {
         this.var_761 = false;
      }
      
      public function resume() : void
      {
         this.var_761 = true;
      }
      
      public function get method_655() : Number
      {
         return this.var_947;
      }
      
      public function set method_655(param1:Number) : void
      {
         this.var_947 = param1;
      }
      
      public function get method_698() : Number
      {
         return this.var_862;
      }
      
      public function set method_698(param1:Number) : void
      {
         this.var_862 = param1;
      }
      
      public function method_199(param1:class_59) : uint
      {
         this.var_761 = true;
         this.var_598 = this.method_481();
         return 0;
      }
      
      private final function method_481() : Number
      {
         var _loc1_:Number = Math.random() * (this.var_862 - this.var_947) + this.var_862;
         return 1 / _loc1_;
      }
      
      public function method_209(param1:class_59, param2:Number) : uint
      {
         if(!this.var_761)
         {
            return 0;
         }
         var _loc3_:int = 0;
         this.var_598 = this.var_598 - param2;
         while(this.var_598 <= 0)
         {
            _loc3_++;
            this.var_598 = this.var_598 + this.method_481();
         }
         return _loc3_;
      }
      
      public function get complete() : Boolean
      {
         return false;
      }
      
      public function get running() : Boolean
      {
         return this.var_761;
      }
   }
}
