package package_22
{
   import flash.events.Event;
   import flash.system.System;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.getTimer;
   
   public final class class_124 extends TextField
   {
       
      
      private const const_47:Number = 9.5367431640625E-7;
      
      private var timer:uint;
      
      private var fps:uint;
      
      private var next:uint;
      
      private var var_913:Number;
      
      private var max:Number;
      
      public function class_124(param1:uint = 16777215, param2:uint = 0)
      {
         super();
         this.max = 0;
         var _loc3_:TextFormat = new TextFormat();
         _loc3_.color = param1;
         _loc3_.font = class_2.method_14(-1820302722);
         _loc3_.size = 9;
         _loc3_.leading = -1;
         backgroundColor = param2;
         background = true;
         defaultTextFormat = _loc3_;
         multiline = true;
         selectable = false;
         mouseEnabled = false;
         autoSize = TextFieldAutoSize.LEFT;
         addEventListener(Event.ADDED_TO_STAGE,this.start);
         addEventListener(Event.REMOVED_FROM_STAGE,this.stop);
      }
      
      private final function start(param1:Event) : void
      {
         addEventListener(Event.ENTER_FRAME,this.update);
         text = "";
         this.next = this.timer + 1000;
      }
      
      private final function stop(param1:Event) : void
      {
         removeEventListener(Event.ENTER_FRAME,this.update);
      }
      
      private final function update(param1:Event) : void
      {
         this.timer = getTimer();
         if(this.timer > this.next)
         {
            this.next = this.timer + 1000;
            this.var_913 = Number((System.totalMemory * 9.5367431640625e-7).toFixed(3));
            if(this.max < this.var_913)
            {
               this.max = this.var_913;
            }
            text = class_2.method_14(-1820302618) + this.fps + class_2.method_14(-1820302586) + stage.frameRate + class_2.method_14(-1820302628) + this.var_913 + class_2.method_14(-1820302728) + this.max + class_2.method_14(-1820302655) + class_166.name_70;
            this.fps = 0;
         }
         this.fps++;
      }
   }
}
