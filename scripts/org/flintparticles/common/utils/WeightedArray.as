package org.flintparticles.common.utils
{
   import flash.utils.Proxy;
   import flash.utils.flash_proxy;
   
   public final class WeightedArray extends Proxy
   {
       
      
      private var var_290:Vector.<Pair_321>;
      
      private var var_563:Number;
      
      public function WeightedArray()
      {
         super();
         this.var_290 = new Vector.<Pair_321>();
         this.var_563 = 0;
      }
      
      override flash_proxy function getProperty(param1:*) : *
      {
         var _loc2_:int = int(param1);
         if(_loc2_ == param1 && _loc2_ < this.var_290.length && this.var_290[_loc2_])
         {
            return this.var_290[_loc2_].value;
         }
         return undefined;
      }
      
      override flash_proxy function setProperty(param1:*, param2:*) : void
      {
         var _loc3_:uint = uint(param1);
         if(_loc3_ == param1 && _loc3_ < this.var_290.length)
         {
            this.var_290[_loc3_].value = param2;
         }
      }
      
      override flash_proxy function nextNameIndex(param1:int) : int
      {
         if(param1 < this.var_290.length)
         {
            return param1 + 1;
         }
         return 0;
      }
      
      override flash_proxy function nextName(param1:int) : String
      {
         return (param1 - 1).toString();
      }
      
      override flash_proxy function nextValue(param1:int) : *
      {
         return this.var_290[param1 - 1].value;
      }
      
      public final function add(param1:*, param2:Number) : uint
      {
         this.var_563 = this.var_563 + param2;
         this.var_290.push(new Pair_321(param2,param1));
         return this.var_290.length;
      }
      
      public final function remove(param1:*) : Boolean
      {
         var _loc2_:uint = this.var_290.length;
         while(_loc2_--)
         {
            if(this.var_290[_loc2_].value == param1)
            {
               this.var_563 = this.var_563 - Pair_321(this.var_290[_loc2_]).weight;
               this.var_290.splice(_loc2_,1);
               return true;
            }
         }
         return false;
      }
      
      public final function contains(param1:*) : Boolean
      {
         var _loc2_:uint = this.var_290.length;
         while(_loc2_--)
         {
            if(this.var_290[_loc2_].value == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public final function method_835(param1:uint) : *
      {
         var _loc2_:* = this.var_290[param1].value;
         this.var_563 = this.var_563 - this.var_290[param1].weight;
         this.var_290.splice(param1,1);
         return _loc2_;
      }
      
      public final function clear() : void
      {
         this.var_290.length = 0;
         this.var_563 = 0;
      }
      
      public function get length() : uint
      {
         return this.var_290.length;
      }
      
      public function get method_913() : Number
      {
         return this.var_563;
      }
      
      public final function method_192() : *
      {
         var _loc1_:Number = Math.random() * this.var_563;
         var _loc2_:* = 0;
         var _loc3_:int = this.var_290.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc2_ = Number(_loc2_ + this.var_290[_loc4_].weight);
            if(_loc2_ >= _loc1_)
            {
               return this.var_290[_loc4_].value;
            }
            _loc4_++;
         }
         return this.var_290[_loc3_ - 1].value;
      }
   }
}

class Pair_321
{
    
   
   private var weight:Number;
   
   private var value;
   
   function Pair_321(param1:Number, param2:*)
   {
      super();
      this.weight = param1;
      this.value = param2;
   }
}
