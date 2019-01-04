package package_2
{
   import package_15.class_59;
   
   public final class class_168 implements class_21
   {
       
      
      private var var_932:Number;
      
      private var var_794:Number;
      
      private var var_734:Number;
      
      private var var_841:Number;
      
      private var var_761:Boolean;
      
      private var var_696:Number;
      
      private var var_901:Number;
      
      private var _scale:Number;
      
      public function class_168(param1:Number = 1, param2:Number = 0, param3:Number = 0)
      {
         super();
         this.var_761 = false;
         this.var_841 = param1;
         this.var_794 = param3;
         this.var_734 = param2;
         this.var_901 = 2 * Math.PI / param1;
         this._scale = 0.5 * (this.var_734 - this.var_794);
      }
      
      public function stop() : void
      {
         this.var_761 = false;
      }
      
      public function resume() : void
      {
         this.var_761 = true;
         this.var_932 = 0;
      }
      
      public function get method_415() : Number
      {
         return this.var_794;
      }
      
      public function set method_415(param1:Number) : void
      {
         this.var_794 = param1;
         this._scale = 0.5 * (this.var_734 - this.var_794);
      }
      
      public function get method_367() : Number
      {
         return this.var_734;
      }
      
      public function set method_367(param1:Number) : void
      {
         this.var_734 = param1;
         this._scale = 0.5 * (this.var_734 - this.var_794);
      }
      
      public function get period() : Number
      {
         return this.var_841;
      }
      
      public function set period(param1:Number) : void
      {
         this.var_841 = param1;
         this.var_901 = 2 * Math.PI / this.var_841;
      }
      
      public function method_199(param1:class_59) : uint
      {
         this.var_761 = true;
         this.var_696 = 0;
         this.var_932 = 0;
         return 0;
      }
      
      public function method_209(param1:class_59, param2:Number) : uint
      {
         if(!this.var_761)
         {
            return 0;
         }
         this.var_696 = this.var_696 + param2;
         var _loc3_:uint = Math.floor(this.var_734 * this.var_696 + this._scale * (1 - Math.cos(this.var_696 * this.var_901)) / this.var_901);
         var _loc4_:uint = _loc3_ - this.var_932;
         this.var_932 = _loc3_;
         return _loc4_;
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
