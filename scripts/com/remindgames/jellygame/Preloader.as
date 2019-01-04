package com.remindgames.jellygame
{
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.StageAlign;
   import flash.display.StageScaleMode;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.ProgressEvent;
   import flash.utils.getDefinitionByName;
   import package_1.class_12;
   
   public final class Preloader extends MovieClip
   {
      
      public static var var_31:MovieClip;
       
      
      private var var_30:MovieClip;
      
      private var var_47:Boolean = false;
      
      public function Preloader()
      {
         super();
         if(stage)
         {
            stage.scaleMode = StageScaleMode.EXACT_FIT;
            stage.align = StageAlign.LEFT;
         }
         if(this.numChildren > 0)
         {
            this.removeChildAt(0);
         }
         addEventListener(Event.ENTER_FRAME,this.method_63);
         loaderInfo.addEventListener(ProgressEvent.PROGRESS,this.progress);
         loaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.method_64);
         var_31 = new MC_Preloader();
         addChild(var_31);
         var_31.btn_play.visible = false;
         var_31.btn_play.addEventListener(MouseEvent.CLICK,this.method_62);
      }
      
      private final function method_62(param1:MouseEvent) : void
      {
         var_31.removeEventListener(MouseEvent.CLICK,this.method_62);
         var_31.btn_play.visible = false;
         var_31.prc.visible = false;
         this.method_76();
      }
      
      private final function method_76() : void
      {
         if(this.contains(var_31))
         {
            this.removeChild(var_31);
            var_31 = null;
         }
         stage.frameRate = 24;
         addEventListener(Event.ENTER_FRAME,this.method_65);
         if(!this.var_30)
         {
            this.var_30 = new class_13();
            this.var_30.scaleY = 0.6;
            this.var_30.scaleX = 0.6;
            this.var_30.x = this.var_30.x - (this.var_30.width - 700) / 2;
            this.var_30.y = this.var_30.y - 25;
            addChild(this.var_30);
            this.var_30.play();
         }
      }
      
      private final function method_64(param1:IOErrorEvent) : void
      {
      }
      
      private final function progress(param1:ProgressEvent) : void
      {
         var _loc2_:int = param1.bytesLoaded / (param1.bytesTotal / 100);
         var_31.prc.text = String(_loc2_) + "%";
      }
      
      private final function method_63(param1:Event) : void
      {
         if(currentFrame == totalFrames)
         {
            stop();
            this.method_85();
         }
      }
      
      private final function method_65(param1:Event) : void
      {
         if(!this.var_47)
         {
            if(this.var_30)
            {
               if(this.var_30.currentFrame == this.var_30.totalFrames)
               {
                  this.var_47 = true;
                  this.method_75();
               }
            }
         }
      }
      
      private final function method_85() : void
      {
         removeEventListener(Event.ENTER_FRAME,this.method_63);
         loaderInfo.removeEventListener(ProgressEvent.PROGRESS,this.progress);
         loaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.method_64);
         var_31.btn_play.scaleX = 0.3;
         var_31.btn_play.scaleY = 0.3;
         var_31.btn_play.alpha = 0;
         var_31.prc.visible = false;
         class_12.addTween(var_31.btn_play,{
            class_2.method_14(-1820302664):0,
            "time":0.5,
            "scaleX":1,
            "scaleY":1,
            "alpha":1,
            "visible":true,
            "transition":"easeOutElastic"
         });
      }
      
      private final function method_75() : void
      {
         removeEventListener(Event.ENTER_FRAME,this.method_65);
         if(this.contains(this.var_30))
         {
            this.var_30.stop();
            this.removeChild(this.var_30);
         }
         if(this.var_30)
         {
            this.var_30 = null;
         }
         stage.frameRate = 60;
         var _loc1_:Class = getDefinitionByName("com.remindgames.jellygame.App") as Class;
         addChild(new _loc1_() as DisplayObject);
      }
   }
}
