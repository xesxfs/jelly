package org.flintparticles.common.utils
{
   public final class FastWeightedArray
   {
       
      
      private var var_290:Vector.<Pair_530>;
      
      private var var_733:Number;
      
      public function FastWeightedArray()
      {
         super();
         this.var_290 = new Vector.<Pair_530>();
         this.var_733 = 0;
      }
      
      public final function add(param1:*, param2:Number) : uint
      {
         this.var_733 = this.var_733 + param2;
         this.var_290.push(new Pair_530(this.var_733,param1));
         return this.var_290.length;
      }
      
      public final function clear() : void
      {
         this.var_290.length = 0;
         this.var_733 = 0;
      }
      
      public function get length() : uint
      {
         return this.var_290.length;
      }
      
      public function get method_455() : Number
      {
         return this.var_733;
      }
      
      public final function method_192() : *
      {
         var _loc3_:* = 0;
         var _loc1_:Number = Math.random() * this.var_733;
         var _loc2_:* = 0;
         var _loc4_:uint = this.var_290.length;
         while(_loc2_ < _loc4_)
         {
            _loc3_ = uint(Math.floor((_loc2_ + _loc4_) * 0.5));
            if(this.var_290[_loc3_].topWeight < _loc1_)
            {
               _loc2_ = uint(_loc3_ + 1);
            }
            else
            {
               _loc4_ = _loc3_;
            }
         }
         return this.var_290[_loc2_].value;
      }
   }
}

class Pair_530
{
    
   
   private var topWeight:Number;
   
   private var value;
   
   function Pair_530(param1:Number, param2:*)
   {
      super();
      this.topWeight = param1;
      this.value = param2;
   }
}
