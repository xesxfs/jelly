package org.flintparticles.common.utils
{
   import flash.display.Shape;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.getTimer;
   import package_12.class_160;
   
   public final class class_70 extends EventDispatcher
   {
      
      private static var _instance:class_70;
       
      
      private var var_774:Shape;
      
      private var var_929:Number;
      
      private var var_761:Boolean = false;
      
      public function class_70()
      {
         super();
         this.var_774 = new Shape();
      }
      
      public static function get instance() : class_70
      {
         if(_instance == null)
         {
            _instance = new class_70();
         }
         return _instance;
      }
      
      private final function method_705() : void
      {
         this.var_774.addEventListener(Event.ENTER_FRAME,this.method_477,false,0,true);
         this.var_929 = getTimer();
         this.var_761 = true;
      }
      
      private final function method_682() : void
      {
         this.var_774.removeEventListener(Event.ENTER_FRAME,this.method_477);
         this.var_761 = false;
      }
      
      private final function method_477(param1:Event) : void
      {
         var _loc2_:int = this.var_929;
         this.var_929 = getTimer();
         var _loc3_:Number = (this.var_929 - _loc2_) * 0.001;
         dispatchEvent(new class_160(class_160.UPDATE,_loc3_));
      }
      
      override public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         super.addEventListener(param1,param2,param3,param4,param5);
         if(!this.var_761 && hasEventListener(class_160.UPDATE))
         {
            this.method_705();
         }
      }
      
      override public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         super.removeEventListener(param1,param2,param3);
         if(this.var_761 && !hasEventListener(class_160.UPDATE))
         {
            this.method_682();
         }
      }
   }
}
