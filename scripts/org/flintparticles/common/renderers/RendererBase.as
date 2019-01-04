package org.flintparticles.common.renderers
{
   import package_12.class_170;
   import package_12.class_50;
   import package_15.class_59;
   import package_16.class_62;
   
   public final class RendererBase implements class_23
   {
       
      
      protected var var_620:Vector.<class_59>;
      
      public function RendererBase()
      {
         super();
         this.var_620 = new Vector.<class_59>();
      }
      
      protected static function method_384(param1:class_62) : void
      {
      }
      
      protected static function removeParticle(param1:class_62) : void
      {
      }
      
      protected static function method_449(param1:Array) : void
      {
      }
      
      public function method_264(param1:class_59) : void
      {
         var _loc2_:* = null;
         this.var_620.push(param1);
         param1.addEventListener(class_170.var_441,this.emitterUpdated,false,0,true);
         param1.addEventListener(class_50.var_562,this.particleAdded,false,0,true);
         param1.addEventListener(class_50.var_490,this.particleAdded,false,0,true);
         param1.addEventListener(class_50.var_364,this.particleRemoved,false,0,true);
         param1.addEventListener(class_50.var_565,this.particleRemoved,false,0,true);
         for each(_loc2_ in param1.particlesArray)
         {
            this;
            RendererBase.method_384(_loc2_);
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
                  this;
                  RendererBase.removeParticle(_loc3_);
               }
               return;
            }
            _loc2_++;
         }
      }
      
      private final function particleAdded(param1:class_50) : void
      {
         this;
         RendererBase.method_384(param1.var_438);
      }
      
      private final function particleRemoved(param1:class_50) : void
      {
         this;
         RendererBase.removeParticle(param1.var_438);
      }
      
      private final function emitterUpdated(param1:class_170) : void
      {
         this;
         RendererBase.method_449(class_59(param1.target).particlesArray);
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
   }
}
