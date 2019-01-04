package package_2
{
   import package_15.class_59;
   
   public final class class_57 implements class_21
   {
       
      
      private var var_598:Number;
      
      private var var_787:Number;
      
      private var var_727:Number;
      
      private var var_761:Boolean;
      
      public function class_57(param1:Number = 0)
      {
         super();
         this.var_761 = false;
         this.method_158 = param1;
      }
      
      public function stop() : void
      {
         this.var_761 = false;
      }
      
      public function resume() : void
      {
         this.var_761 = true;
      }
      
      public function get method_158() : Number
      {
         return this.var_787;
      }
      
      public function set method_158(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         if(!param1 || param1 < 0)
         {
            param1 = 0;
         }
         if(this.var_787 != param1)
         {
            if(this.var_787 && param1)
            {
               _loc2_ = this.var_727 - this.var_598;
               this.var_787 = param1;
               this.var_727 = !!param1?Number(1 / param1):Number(Number.MAX_VALUE);
               this.var_598 = Math.max(this.var_727 - _loc2_,0);
            }
            else
            {
               this.var_787 = param1;
               this.var_727 = !!param1?Number(1 / param1):Number(Number.MAX_VALUE);
               this.var_598 = this.var_727;
            }
         }
      }
      
      public function method_199(param1:class_59) : uint
      {
         this.var_761 = true;
         this.var_598 = this.var_727;
         return 0;
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
            this.var_598 = this.var_598 + this.var_727;
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
