package package_2
{
   import flash.utils.getTimer;
   import package_15.class_59;
   import package_16.class_62;
   
   public final class class_101 implements class_21
   {
       
      
      private var var_598:Number;
      
      private var var_794:Number;
      
      private var var_734:Number;
      
      private var _target:Number;
      
      private var var_787:Number;
      
      private var var_912:Vector.<int>;
      
      private var var_690:Number;
      
      private var var_761:Boolean;
      
      public function class_101(param1:Number = 0, param2:Number = 0, param3:Number = 24)
      {
         super();
         this.var_761 = false;
         this.var_794 = param1;
         this.var_787 = this.var_734 = param2;
         this._target = param3;
         this.var_912 = new Vector.<int>();
         this.var_690 = 0;
      }
      
      public function get method_415() : Number
      {
         return this.var_794;
      }
      
      public function set method_415(param1:Number) : void
      {
         this.var_794 = param1;
         this.var_690 = 0;
      }
      
      public function get method_367() : Number
      {
         return this.var_734;
      }
      
      public function set method_367(param1:Number) : void
      {
         this.var_787 = this.var_734 = param1;
         this.var_690 = 0;
      }
      
      public function get method_550() : Number
      {
         return this._target;
      }
      
      public function set method_550(param1:Number) : void
      {
         this._target = param1;
      }
      
      public function stop() : void
      {
         this.var_761 = false;
      }
      
      public function resume() : void
      {
         this.var_761 = true;
      }
      
      public function method_199(param1:class_59) : uint
      {
         this.var_761 = true;
         this.method_481();
         return 0;
      }
      
      private final function method_481() : void
      {
         this.var_598 = 1 / this.var_787;
      }
      
      public function method_209(param1:class_59, param2:Number) : uint
      {
         var _loc5_:Number = NaN;
         var _loc6_:* = NaN;
         if(!this.var_761)
         {
            return 0;
         }
         if(this.var_787 > this.var_794 && (this.var_690 = this.var_690 - param2) <= 0)
         {
            if(this.var_912.push(_loc5_ = Number(getTimer())) > 9)
            {
               _loc6_ = Number(Math.round(10000 / (_loc5_ - this.var_912.shift())));
               if(Number(Math.round(10000 / (_loc5_ - this.var_912.shift()))) < this._target)
               {
                  this.var_787 = Math.floor((this.var_787 + this.var_794) * 0.5);
                  this.var_912.length = 0;
                  if(!(this.var_690 = class_62(param1.particlesArray[0]).lifetime))
                  {
                     this.var_690 = 2;
                  }
               }
            }
         }
         var _loc3_:Number = param2;
         var _loc4_:int = 0;
         _loc3_ = _loc3_ - this.var_598;
         while(_loc3_ >= 0)
         {
            _loc4_++;
            this.method_481();
            _loc3_ = _loc3_ - this.var_598;
         }
         this.var_598 = -_loc3_;
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
