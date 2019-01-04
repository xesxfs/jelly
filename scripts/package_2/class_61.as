package package_2
{
   import package_13.class_77;
   import package_15.class_59;
   
   public final class class_61 implements class_21
   {
       
      
      private var var_279:uint;
      
      private var _duration:Number;
      
      private var var_739:uint;
      
      private var var_696:Number;
      
      private var var_821:Function;
      
      private var var_761:Boolean = false;
      
      public function class_61(param1:uint = 0, param2:Number = 0, param3:Function = null)
      {
         super();
         this.var_279 = param1;
         this._duration = param2;
         if(param3 == null)
         {
            this.var_821 = class_77.method_56;
         }
         else
         {
            this.var_821 = param3;
         }
      }
      
      public function get name_70() : uint
      {
         return this.var_279;
      }
      
      public function set name_70(param1:uint) : void
      {
         this.var_279 = param1;
      }
      
      public function get duration() : Number
      {
         return this._duration;
      }
      
      public function set duration(param1:Number) : void
      {
         this._duration = param1;
      }
      
      public function get method_385() : Function
      {
         return this.var_821;
      }
      
      public function set method_385(param1:Function) : void
      {
         this.var_821 = param1;
      }
      
      public function method_199(param1:class_59) : uint
      {
         this.var_761 = true;
         this.var_739 = 0;
         this.var_696 = 0;
         return 0;
      }
      
      public function method_209(param1:class_59, param2:Number) : uint
      {
         var _loc4_:* = 0;
         if(!this.var_761 || this.var_696 >= this._duration)
         {
            return 0;
         }
         this.var_696 = this.var_696 + param2;
         if(this.var_696 >= this._duration)
         {
            param1.method_521();
            _loc4_ = uint(this.var_279 - this.var_739);
            this.var_739 = this.var_279;
            return _loc4_;
         }
         var _loc3_:uint = this.var_739;
         this.var_739 = Math.round(this.var_821(this.var_696,0,this.var_279,this._duration));
         return this.var_739 - _loc3_;
      }
      
      public function stop() : void
      {
         this.var_761 = false;
      }
      
      public function resume() : void
      {
         this.var_761 = true;
      }
      
      public function get complete() : Boolean
      {
         return this.var_739 == this.var_279;
      }
      
      public function get running() : Boolean
      {
         return this.var_761 && this.var_696 < this._duration;
      }
   }
}
