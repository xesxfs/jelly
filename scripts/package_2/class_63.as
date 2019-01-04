package package_2
{
   import package_15.class_59;
   
   public final class class_63 implements class_21
   {
       
      
      private var var_598:Number;
      
      private var var_841:Number;
      
      private var var_839:Number;
      
      private var var_761:Boolean;
      
      public function class_63(param1:Number = 1, param2:uint = 0)
      {
         super();
         this.var_761 = false;
         this.var_839 = param2;
         this.var_841 = param1;
      }
      
      public function stop() : void
      {
         this.var_761 = false;
      }
      
      public function resume() : void
      {
         this.var_761 = true;
      }
      
      public function get period() : Number
      {
         return this.var_841;
      }
      
      public function set period(param1:Number) : void
      {
         this.var_841 = param1;
      }
      
      public function get method_570() : uint
      {
         return this.var_839;
      }
      
      public function set method_570(param1:uint) : void
      {
         this.var_839 = param1;
      }
      
      public function method_199(param1:class_59) : uint
      {
         this.var_761 = true;
         this.var_598 = this.var_841;
         return this.var_839;
      }
      
      public function method_209(param1:class_59, param2:Number) : uint
      {
         if(!this.var_761)
         {
            return 0;
         }
         var _loc3_:* = 0;
         this.var_598 = this.var_598 - param2;
         while(this.var_598 <= 0)
         {
            _loc3_ = uint(_loc3_ + this.var_839);
            this.var_598 = this.var_598 + this.var_841;
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
