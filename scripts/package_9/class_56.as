package package_9
{
   import flash.geom.Point;
   import package_20.Particle2D;
   
   public final class class_56 implements class_38
   {
       
      
      private var var_479:Array;
      
      private var var_886:Array;
      
      private var var_736:Number;
      
      public function class_56()
      {
         super();
         this.var_479 = new Array();
         this.var_886 = new Array();
         this.var_736 = 0;
      }
      
      public final function method_760(param1:class_38) : void
      {
         this.var_479.push(param1);
         var _loc2_:Number = param1.method_198();
         this.var_886.push(_loc2_);
         this.var_736 = this.var_736 + _loc2_;
      }
      
      public final function method_873(param1:class_38) : void
      {
         var _loc2_:int = this.var_479.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            if(this.var_479[_loc3_] == param1)
            {
               this.var_736 = this.var_736 - this.var_886[_loc3_];
               this.var_886.splice(_loc3_,1);
               this.var_479.splice(_loc3_,1);
               return;
            }
            _loc3_++;
         }
      }
      
      public function contains(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:int = this.var_479.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(class_38(this.var_479[_loc4_]).contains(param1,param2))
            {
               return true;
            }
            _loc4_++;
         }
         return false;
      }
      
      public function getLocation() : Point
      {
         var _loc1_:Number = Math.random() * this.var_736;
         var _loc2_:int = this.var_479.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            if((_loc1_ = _loc1_ - this.var_886[_loc3_]) <= 0)
            {
               return class_38(this.var_479[_loc3_]).getLocation();
            }
            _loc3_++;
         }
         if(this.var_479.length == 0)
         {
            throw new Error(class_2.method_14(-1820302621));
         }
         return class_38(this.var_479[0]).getLocation();
      }
      
      public function method_198() : Number
      {
         return this.var_736;
      }
      
      public function method_203(param1:Particle2D, param2:Number = 1) : Boolean
      {
         var _loc4_:* = null;
         var _loc3_:Boolean = false;
         for each(_loc4_ in this.var_479)
         {
            _loc3_ = _loc4_.method_203(param1,param2) || _loc3_;
         }
         return _loc3_;
      }
   }
}
