package com.remindgames.jellygame
{
   import flash.net.SharedObject;
   
   public final class class_185
   {
       
      
      private var var_343:SharedObject;
      
      public function class_185()
      {
         super();
         this.clear();
      }
      
      public final function create() : void
      {
         if(!this.var_343)
         {
            this.var_343 = SharedObject.getLocal(class_2.method_14(-1820302605),"/");
         }
         this.method_634();
      }
      
      private final function method_634() : void
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         if(this.var_343.data.levels == null)
         {
            _loc1_ = new Array();
            _loc2_ = 0;
            while(_loc2_ < 36)
            {
               _loc3_ = new Object();
               if(_loc2_ == 0)
               {
                  _loc3_.opened = true;
               }
               else
               {
                  _loc3_.opened = false;
               }
               _loc3_.completed = false;
               _loc3_.record = 0;
               _loc3_.stars = 0;
               _loc3_.time = 0;
               _loc3_.skipped = false;
               _loc3_.numRecords = 0;
               _loc3_.hands = 0;
               _loc3_.blades = 0;
               _loc3_.spikes = 0;
               _loc3_.platforms = 0;
               _loc3_.colouring = 0;
               _loc3_.reels = 0;
               _loc3_.restart = 0;
               _loc1_[_loc1_.length] = _loc3_;
               _loc2_++;
            }
            this.var_343.data.levels = _loc1_;
         }
         if(this.var_343.data.stages == null)
         {
            _loc4_ = new Array(true,false,false);
            this.var_343.data.stages = _loc4_;
         }
         if(this.var_343.data.tt == null)
         {
            _loc5_ = new Array(0,0,0,0,0,0,0,0,0,0,0,0,0);
            this.var_343.data.tt = _loc5_;
         }
         this.var_343.flush();
      }
      
      public final function save() : void
      {
         this.var_343.flush();
      }
      
      public final function clear() : void
      {
         if(this.var_343)
         {
            this.var_343.clear();
            this.var_343.flush();
         }
         this.create();
      }
      
      public function get levels() : Array
      {
         return this.var_343.data.levels;
      }
      
      public function set levels(param1:Array) : void
      {
         this.var_343.data.levels = param1;
      }
      
      public function get stages() : Array
      {
         return this.var_343.data.stages;
      }
      
      public function set stages(param1:Array) : void
      {
         this.var_343.data.stages = param1;
      }
      
      public function get tt() : Array
      {
         return this.var_343.data.tt;
      }
      
      public function set tt(param1:Array) : void
      {
         this.var_343.data.tt = param1;
      }
   }
}
