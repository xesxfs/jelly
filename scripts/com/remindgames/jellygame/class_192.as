package com.remindgames.jellygame
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import package_23.class_178;
   import treefortress.sound.SoundAS;
   
   public final class class_192 extends class_178
   {
       
      
      protected var var_1127:int;
      
      protected var var_1081:int;
      
      protected var var_981:int;
      
      public function class_192(param1:String, param2:Number = 0, param3:Number = 0, param4:String = "", param5:Number = 1, param6:int = 1, param7:int = 2, param8:Boolean = false)
      {
         super();
         this.var_1127 = param6;
         this.var_1081 = param7;
         this.method_111(param1);
         this.stop();
         this.repeat = false;
         this.name = param4;
         this.x = param2;
         this.y = param3;
         this.buttonMode = true;
         this.smoothing = param8;
         if(param5 != 1)
         {
            this.scaleX = param5;
            this.scaleY = param5;
         }
         if(stage)
         {
            this.method_469();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.method_469);
         }
      }
      
      public final function scale(param1:Number) : void
      {
         this.scaleX = param1;
         this.scaleY = param1;
      }
      
      private final function method_469(param1:Event = null) : void
      {
         this.addEventListener(MouseEvent.MOUSE_OVER,this.method_632);
         this.addEventListener(MouseEvent.MOUSE_OUT,this.method_588);
         this.addEventListener(MouseEvent.MOUSE_DOWN,this.method_664);
         stage.addEventListener(MouseEvent.MOUSE_UP,this.method_278);
      }
      
      private final function method_278(param1:MouseEvent) : void
      {
         this.var_981 = this.alpha;
         this.transform.colorTransform = Game.const_33;
         if(this.alpha != this.var_981)
         {
            this.alpha = this.var_981;
         }
         if(param1.target is class_192)
         {
            SoundAS.group(class_2.method_14(-1820302475)).play(class_2.method_14(-1820302678));
         }
      }
      
      private final function method_664(param1:MouseEvent) : void
      {
         this.transform.colorTransform = Game.const_37;
      }
      
      private final function method_588(param1:MouseEvent) : void
      {
         this.gotoAndStop(this.var_1127);
      }
      
      private final function method_632(param1:MouseEvent) : void
      {
         this.gotoAndStop(this.var_1081);
      }
   }
}
