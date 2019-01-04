package package_24
{
   import flash.display.InteractiveObject;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.ContextMenuEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.LocalConnection;
   import flash.system.System;
   import flash.ui.ContextMenuItem;
   import flash.utils.getTimer;
   
   public final class SWFProfiler
   {
      
      private static var var_829:int;
      
      private static var var_1041:int;
      
      private static var currentTime:int;
      
      private static var var_662:int;
      
      private static var var_783:int;
      
      public static var var_744:Number;
      
      public static var var_735:Number;
      
      public static var var_745:Number;
      
      public static var var_720:Number;
      
      public static var var_757:int = 60;
      
      public static var var_517:Array = [];
      
      public static var var_484:Array = [];
      
      public static var var_684:Array = [];
      
      private static var var_660:Boolean = false;
      
      private static var started:Boolean = false;
      
      private static var var_853:Boolean = false;
      
      private static var frame:Sprite;
      
      private static var stage:Stage;
      
      private static var content:ProfilerContent;
      
      private static var var_1128:ContextMenuItem;
       
      
      public function SWFProfiler()
      {
         super();
      }
      
      public static function init(param1:Stage, param2:InteractiveObject) : void
      {
         if(var_853)
         {
            return;
         }
         var_853 = true;
         stage = param1;
         content = new ProfilerContent();
         frame = new Sprite();
         var_744 = Number.MAX_VALUE;
         var_735 = Number.MIN_VALUE;
         var_745 = Number.MAX_VALUE;
         var_720 = Number.MIN_VALUE;
         start();
      }
      
      public static function start() : void
      {
         if(started)
         {
            return;
         }
         started = true;
         var_1041 = var_829 = getTimer();
         var_783 = var_662 = 0;
         method_313(frame,Event.ENTER_FRAME,draw);
      }
      
      public static function stop() : void
      {
         if(!started)
         {
            return;
         }
         started = false;
         method_317(frame,Event.ENTER_FRAME,draw);
      }
      
      public static function method_796() : void
      {
         try
         {
            new LocalConnection().connect(class_2.method_14(-1820302466));
            new LocalConnection().connect(class_2.method_14(-1820302466));
            return;
         }
         catch(e:Error)
         {
            return;
         }
      }
      
      public static function get method_228() : Number
      {
         return var_662 / intervalTime;
      }
      
      public static function get method_272() : Number
      {
         return System.totalMemory / 1024 / 1000;
      }
      
      public static function get method_496() : Number
      {
         return var_783 / method_358;
      }
      
      private static function get method_358() : Number
      {
         return (currentTime - var_1041) / 1000;
      }
      
      private static function get intervalTime() : Number
      {
         return (currentTime - var_829) / 1000;
      }
      
      private static function method_826(param1:ContextMenuEvent) : void
      {
         if(!var_660)
         {
            show();
         }
         else
         {
            hide();
         }
      }
      
      public static function show() : void
      {
         var_1128.caption = class_2.method_14(-1820302754);
         var_660 = true;
         method_313(stage,Event.RESIZE,resize);
         stage.addChild(content);
         method_310();
      }
      
      public static function hide() : void
      {
         var_1128.caption = class_2.method_14(-1820302622);
         var_660 = false;
         method_317(stage,Event.RESIZE,resize);
         stage.removeChild(content);
      }
      
      private static function resize(param1:Event) : void
      {
         content.update(method_358,var_744,var_735,var_745,var_720,method_228,method_272,method_496,var_517,var_684,var_757);
      }
      
      private static function draw(param1:Event) : void
      {
         currentTime = getTimer();
         var_662++;
         var_783++;
         if(intervalTime >= 1)
         {
            if(var_660)
            {
               method_310();
            }
            else
            {
               method_350();
            }
            var_517.unshift(method_228);
            var_484.unshift(method_228);
            var_684.unshift(method_272);
            if(var_517.length > var_757)
            {
               var_517.pop();
               var_484.pop();
            }
            if(var_684.length > var_757)
            {
               var_684.pop();
            }
            var_829 = currentTime;
            var_662 = 0;
         }
      }
      
      private static function method_310() : void
      {
         method_350();
         content.update(method_358,var_744,var_735,var_745,var_720,method_228,method_272,method_496,var_517,var_684,var_757);
      }
      
      private static function method_350() : void
      {
         var_744 = Math.min(method_228,var_744);
         var_735 = Math.max(method_228,var_735);
         var_745 = Math.min(method_272,var_745);
         var_720 = Math.max(method_272,var_720);
      }
      
      private static function method_313(param1:EventDispatcher, param2:String, param3:Function) : void
      {
         param1.addEventListener(param2,param3,false,0,true);
      }
      
      private static function method_317(param1:EventDispatcher, param2:String, param3:Function) : void
      {
         param1.removeEventListener(param2,param3);
      }
   }
}

import flash.display.Graphics;
import flash.display.Shape;
import flash.display.Sprite;
import flash.events.Event;
import flash.text.TextField;
import flash.text.TextFieldAutoSize;
import flash.text.TextFormat;

class ProfilerContent extends Sprite
{
    
   
   private var minFpsTxtBx:TextField;
   
   private var maxFpsTxtBx:TextField;
   
   private var minMemTxtBx:TextField;
   
   private var maxMemTxtBx:TextField;
   
   private var infoTxtBx:TextField;
   
   private var box:Shape;
   
   private var fps:Shape;
   
   private var mb:Shape;
   
   function ProfilerContent()
   {
      super();
      this.fps = new Shape();
      this.mb = new Shape();
      this.box = new Shape();
      this.mouseChildren = false;
      this.mouseEnabled = false;
      this.fps.x = 65;
      this.fps.y = 45;
      this.mb.x = 65;
      this.mb.y = 90;
      var _loc1_:TextFormat = new TextFormat("_sans",9,11184810);
      this.infoTxtBx = new TextField();
      this.infoTxtBx.autoSize = TextFieldAutoSize.LEFT;
      this.infoTxtBx.defaultTextFormat = new TextFormat("_sans",11,13421772);
      this.infoTxtBx.y = 98;
      this.minFpsTxtBx = new TextField();
      this.minFpsTxtBx.autoSize = TextFieldAutoSize.LEFT;
      this.minFpsTxtBx.defaultTextFormat = _loc1_;
      this.minFpsTxtBx.x = 7;
      this.minFpsTxtBx.y = 37;
      this.maxFpsTxtBx = new TextField();
      this.maxFpsTxtBx.autoSize = TextFieldAutoSize.LEFT;
      this.maxFpsTxtBx.defaultTextFormat = _loc1_;
      this.maxFpsTxtBx.x = 7;
      this.maxFpsTxtBx.y = 5;
      this.minMemTxtBx = new TextField();
      this.minMemTxtBx.autoSize = TextFieldAutoSize.LEFT;
      this.minMemTxtBx.defaultTextFormat = _loc1_;
      this.minMemTxtBx.x = 7;
      this.minMemTxtBx.y = 83;
      this.maxMemTxtBx = new TextField();
      this.maxMemTxtBx.autoSize = TextFieldAutoSize.LEFT;
      this.maxMemTxtBx.defaultTextFormat = _loc1_;
      this.maxMemTxtBx.x = 7;
      this.maxMemTxtBx.y = 50;
      addChild(this.box);
      addChild(this.infoTxtBx);
      addChild(this.minFpsTxtBx);
      addChild(this.maxFpsTxtBx);
      addChild(this.minMemTxtBx);
      addChild(this.maxMemTxtBx);
      addChild(this.fps);
      addChild(this.mb);
      this.addEventListener(Event.ADDED_TO_STAGE,this.added,false,0,true);
      this.addEventListener(Event.REMOVED_FROM_STAGE,this.removed,false,0,true);
   }
   
   public function update(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Array, param10:Array, param11:int) : void
   {
      var _loc19_:Number = NaN;
      if(param1 >= 1)
      {
         this.minFpsTxtBx.text = param2.toFixed(3) + " Fps";
         this.maxFpsTxtBx.text = param3.toFixed(3) + " Fps";
         this.minMemTxtBx.text = param4.toFixed(3) + " Mb";
         this.maxMemTxtBx.text = param5.toFixed(3) + " Mb";
      }
      this.infoTxtBx.text = "Current Fps " + param6.toFixed(3) + "   |   Average Fps " + param8.toFixed(3) + "   |   Memory Used " + param7.toFixed(3) + " Mb";
      this.infoTxtBx.x = stage.stageWidth - this.infoTxtBx.width - 20;
      var _loc12_:Graphics = this.fps.graphics;
      _loc12_.clear();
      _loc12_.lineStyle(1,3407616,0.7);
      var _loc13_:int = 0;
      var _loc14_:int = param9.length;
      var _loc16_:int = stage.stageWidth - 80;
      var _loc17_:Number = _loc16_ / (param11 - 1);
      var _loc18_:Number = param3 - param2;
      _loc13_ = 0;
      while(_loc13_ < _loc14_)
      {
         _loc19_ = (param9[_loc13_] - param2) / _loc18_;
         if(_loc13_ == 0)
         {
            _loc12_.moveTo(0,-_loc19_ * 35);
         }
         else
         {
            _loc12_.lineTo(_loc13_ * _loc17_,-_loc19_ * 35);
         }
         _loc13_++;
      }
      _loc12_ = this.mb.graphics;
      _loc12_.clear();
      _loc12_.lineStyle(1,26367,0.7);
      _loc13_ = 0;
      _loc14_ = param10.length;
      _loc18_ = param5 - param4;
      _loc13_ = 0;
      while(_loc13_ < _loc14_)
      {
         _loc19_ = (param10[_loc13_] - param4) / _loc18_;
         if(_loc13_ == 0)
         {
            _loc12_.moveTo(0,-_loc19_ * 35);
         }
         else
         {
            _loc12_.lineTo(_loc13_ * _loc17_,-_loc19_ * 35);
         }
         _loc13_++;
      }
   }
   
   private function added(param1:Event) : void
   {
      this.resize();
      stage.addEventListener(Event.RESIZE,this.resize,false,0,true);
   }
   
   private function removed(param1:Event) : void
   {
      stage.removeEventListener(Event.RESIZE,this.resize);
   }
   
   private function resize(param1:Event = null) : void
   {
      var _loc2_:Graphics = this.box.graphics;
      _loc2_.clear();
      _loc2_.beginFill(0,0.5);
      _loc2_.drawRect(0,0,stage.stageWidth,120);
      _loc2_.lineStyle(1,16777215,0.2);
      _loc2_.moveTo(65,45);
      _loc2_.lineTo(65,10);
      _loc2_.moveTo(65,45);
      _loc2_.lineTo(stage.stageWidth - 15,45);
      _loc2_.moveTo(65,90);
      _loc2_.lineTo(65,55);
      _loc2_.moveTo(65,90);
      _loc2_.lineTo(stage.stageWidth - 15,90);
      _loc2_.endFill();
      this.infoTxtBx.x = stage.stageWidth - this.infoTxtBx.width - 20;
   }
}
