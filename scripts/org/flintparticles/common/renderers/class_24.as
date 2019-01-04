package org.flintparticles.common.renderers
{
   import flash.events.Event;
   import mx.core.UIComponent;
   import package_12.class_170;
   import package_12.class_50;
   import package_15.class_59;
   import package_16.class_62;
   
   public class class_24 extends UIComponent implements class_23
   {
       
      
      protected var var_620:Vector.<class_59>;
      
      protected var var_279:Array;
      
      public function class_24()
      {
         super();
         this.var_620 = new Vector.<class_59>();
         this.var_279 = [];
         mouseEnabled = false;
         mouseChildren = false;
         addEventListener(Event.ADDED_TO_STAGE,this.method_601,false,0,true);
      }
      
      public function method_264(param1:class_59) : void
      {
         var _loc2_:* = null;
         this.var_620.push(param1);
         if(stage)
         {
            stage.invalidate();
         }
         param1.addEventListener(class_170.var_441,this.emitterUpdated,false,0,true);
         param1.addEventListener(class_50.var_562,this.particleAdded,false,0,true);
         param1.addEventListener(class_50.var_490,this.particleAdded,false,0,true);
         param1.addEventListener(class_50.var_364,this.particleRemoved,false,0,true);
         param1.addEventListener(class_50.var_565,this.particleRemoved,false,0,true);
         for each(_loc2_ in param1.particlesArray)
         {
            this.method_384(_loc2_);
         }
         if(this.var_620.length == 1)
         {
            addEventListener(Event.RENDER,this.method_515,false,0,true);
         }
      }
      
      public function method_293(param1:class_59) : void
      {
         var _loc3_:* = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.var_620.length)
         {
            if(this.var_620[_loc2_] == param1)
            {
               this.var_620.splice(_loc2_,1);
               param1.removeEventListener(class_170.var_441,this.emitterUpdated);
               param1.removeEventListener(class_50.var_562,this.particleAdded);
               param1.removeEventListener(class_50.var_490,this.particleAdded);
               param1.removeEventListener(class_50.var_364,this.particleRemoved);
               param1.removeEventListener(class_50.var_565,this.particleRemoved);
               for each(_loc3_ in param1.particlesArray)
               {
                  this.removeParticle(_loc3_);
               }
               if(this.var_620.length == 0)
               {
                  removeEventListener(Event.RENDER,this.method_515);
                  this.method_449([]);
               }
               else if(stage)
               {
                  stage.invalidate();
               }
               return;
            }
            _loc2_++;
         }
      }
      
      private final function method_601(param1:Event) : void
      {
         if(stage)
         {
            stage.invalidate();
         }
      }
      
      private final function particleAdded(param1:class_50) : void
      {
         this.method_384(param1.var_438);
         if(stage)
         {
            stage.invalidate();
         }
      }
      
      private final function particleRemoved(param1:class_50) : void
      {
         this.removeParticle(param1.var_438);
         if(stage)
         {
            stage.invalidate();
         }
      }
      
      protected function emitterUpdated(param1:class_170) : void
      {
         if(stage)
         {
            stage.invalidate();
         }
      }
      
      protected function method_515(param1:Event) : void
      {
         this.method_449(this.var_279);
      }
      
      protected function method_384(param1:class_62) : void
      {
         this.var_279.push(param1);
      }
      
      protected function removeParticle(param1:class_62) : void
      {
         var _loc2_:int = this.var_279.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.var_279.splice(_loc2_,1);
         }
      }
      
      protected function method_449(param1:Array) : void
      {
      }
      
      public function get method_273() : Vector.<class_59>
      {
         return this.var_620;
      }
      
      public function set method_273(param1:Vector.<class_59>) : void
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_620)
         {
            this.method_293(_loc2_);
         }
         for each(_loc2_ in param1)
         {
            this.method_264(_loc2_);
         }
      }
      
      override protected function measure() : void
      {
         super.measure();
         measuredWidth = 200;
         measuredMinWidth = 0;
         measuredHeight = 200;
         measuredMinHeight = 0;
      }
   }
}
