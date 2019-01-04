package com.remindgames.jellygame
{
   import com.google.analytics.GATracker;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.display.StageQuality;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.LocalConnection;
   import flash.system.Capabilities;
   import package_1.class_12;
   import package_10.class_106;
   import package_14.class_139;
   import package_14.class_147;
   import package_14.class_58;
   import package_18.class_84;
   import package_2.class_53;
   import package_21.class_25;
   import package_23.class_178;
   import package_24.SWFProfiler;
   import package_27.class_177;
   import package_27.class_179;
   import package_27.class_180;
   import package_27.class_181;
   import package_27.class_182;
   import package_27.class_183;
   import package_27.class_186;
   import package_28.class_184;
   import package_6.class_36;
   import package_6.class_93;
   import package_7.class_105;
   import package_7.class_123;
   import package_7.class_163;
   import package_7.class_37;
   import package_7.class_48;
   import package_8.class_117;
   import package_8.class_120;
   import package_8.class_148;
   import package_8.class_67;
   import package_9.class_171;
   import treefortress.sound.SoundAS;
   
   public final class Game extends Sprite
   {
      
      public static var var_475:GUI;
      
      public static var var_135:int = 0;
      
      public static var var_537:int = 36;
      
      public static const const_37:ColorTransform = new ColorTransform(1.1,1.1,1.1);
      
      public static const const_33:ColorTransform = new ColorTransform();
      
      public static var var_1031:int;
      
      public static var var_919:int;
      
      public static var var_936:int;
      
      public static var var_452:Boolean = true;
      
      public static var var_460:Boolean = true;
      
      public static var var_183:class_185;
      
      public static var var_969:SoundManager;
      
      public static var var_476:int = 0;
      
      public static const UNLOCK_STAGE2_STARS:int = 20;
      
      public static const UNLOCK_STAGE3_STARS:int = 50;
      
      public static var var_985:String = "";
      
      public static var var_846:Boolean = false;
      
      public static var name_34:class_84;
      
      public static var var_163:Array;
      
      public static var var_205:GATracker;
      
      public static var var_689:Boolean = true;
      
      public static var var_722:class_184;
      
      private static var var_811:Number = 0;
       
      
      private var var_380:Level;
      
      private var var_454:class_177;
      
      private var var_362:class_179;
      
      private var var_806:class_181;
      
      private var var_482:Sprite;
      
      private var _resultsContainer:Sprite;
      
      private var var_456:class_178;
      
      private var var_854:Function;
      
      private var var_982:Boolean;
      
      private var var_961:DisplayObject;
      
      private var var_1065:Array;
      
      private var var_1198:int;
      
      private var _screenResults:class_186;
      
      private var _totalScore:class_180;
      
      private var var_938:Boolean;
      
      public var var_310:Boolean = false;
      
      private var var_1172:Array;
      
      private var var_867:class_182;
      
      private var var_884:class_183;
      
      private var var_1084:Boolean = false;
      
      private var var_866:Sprite;
      
      public function Game()
      {
         this.var_1172 = new Array();
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.init);
         }
      }
      
      public static function method_225(param1:Number) : void
      {
         var _loc2_:* = null;
         if(name_34)
         {
            if(var_811)
            {
               param1 = param1 + 300;
            }
            _loc2_ = new class_53(param1);
            name_34.counter = _loc2_;
            SoundAS.group(class_2.method_14(-1820302475)).playFx("Particles_" + String(int(Math.random() * 2) + 1),0.9);
            name_34.start();
         }
      }
      
      public static function method_554() : void
      {
         if(name_34)
         {
            class_12.addTween(name_34,{
               class_2.method_14(-1820302664):2,
               "onComplete":function():*
               {
                  name_34.stop();
               }
            });
         }
      }
      
      public static function get method_260() : Boolean
      {
         return var_460;
      }
      
      public static function set method_260(param1:*) : void
      {
         if(var_205)
         {
            var_205.trackEvent("SOUND","MUSIC " + String(param1));
         }
         var_460 = param1;
         SoundAS.group("MUSIC").mute = !var_460;
      }
      
      public static function get name_37() : Boolean
      {
         return var_452;
      }
      
      public static function set name_37(param1:*) : void
      {
         if(var_205)
         {
            var_205.trackEvent("SOUND","SFX " + String(param1));
         }
         var_452 = param1;
         SoundAS.group("SFX").mute = !var_452;
      }
      
      private final function init(param1:Event = null) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.init);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.method_482);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.method_482);
         stage.addEventListener(MouseEvent.CLICK,this.method_688);
         var_969 = new SoundManager();
         var_969.method_714();
         var_205 = new GATracker(this,"UA-41167306-4");
         var_205.trackEvent("SYSTEM","Game.as");
         var_722 = new class_184();
         var_722.method_606();
         var_183 = new class_185();
         var_183.create();
         this.var_482 = new Sprite();
         addChild(this.var_482);
         var_475 = new GUI();
         var_475.method_247();
         addChild(var_475);
         this.var_456 = new class_178();
         this.var_456.method_111("BlackScreen");
         this.var_456.x = 100;
         this.var_456.y = App.const_8;
         this.var_456.visible = false;
         addChild(this.var_456);
         this._resultsContainer = new Sprite();
         addChild(this._resultsContainer);
         this.var_866 = new Sprite();
         addChild(this.var_866);
         this.method_258();
         this.method_285();
         var_163 = var_183.tt;
         stage.addEventListener(Event.ACTIVATE,this.method_675);
         stage.addEventListener(Event.DEACTIVATE,this.method_571);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.method_599);
         this.addEventListener(Event.ENTER_FRAME,this.method_492);
      }
      
      private final function method_571(param1:Event) : void
      {
         var_689 = false;
         SWFProfiler.var_484.length = 0;
         SWFProfiler.var_517.length = 0;
      }
      
      private final function method_675(param1:Event) : void
      {
         SWFProfiler.var_484.length = 0;
         SWFProfiler.var_517.length = 0;
         var_689 = true;
      }
      
      private final function method_258() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc13_:* = null;
         var _loc14_:* = null;
         var _loc15_:* = null;
         var _loc16_:* = null;
         if(!name_34)
         {
            name_34 = new class_84();
            _loc1_ = new class_53(100);
            name_34.counter = _loc1_;
            _loc2_ = new class_105();
            _loc3_ = new class_36();
            _loc4_ = new class_93(1,0);
            _loc5_ = new class_48(5000,1000);
            _loc6_ = new class_123(3,-2);
            _loc7_ = new class_163();
            _loc8_ = new class_37(0,-50);
            name_34.method_232(_loc2_);
            name_34.method_232(_loc3_);
            name_34.method_232(_loc4_);
            name_34.method_232(_loc5_);
            name_34.method_232(_loc6_);
            name_34.method_232(_loc7_);
            name_34.method_232(_loc8_);
            _loc9_ = new class_117(4294967040,4294901913);
            _loc10_ = new class_148(0.6,2);
            _loc11_ = new class_58(0,0);
            _loc12_ = new class_139(new class_171(new Point(350,100)));
            _loc13_ = new class_67(new class_106(14.5,22,16777215,"screen"));
            _loc14_ = new class_120(1,3);
            _loc15_ = new class_147(0,19);
            name_34.addInitializer(_loc9_);
            name_34.addInitializer(_loc10_);
            name_34.addInitializer(_loc11_);
            name_34.addInitializer(_loc12_);
            name_34.addInitializer(_loc13_);
            name_34.addInitializer(_loc14_);
            name_34.addInitializer(_loc15_);
            _loc16_ = new class_25(new Rectangle(0,0,700,525));
            _loc16_.method_264(name_34);
            this.var_866.addChild(_loc16_);
            this.var_866.mouseEnabled = false;
            this.var_866.mouseChildren = false;
         }
      }
      
      private final function method_599(param1:KeyboardEvent) : void
      {
         if(this.var_380)
         {
            if(contains(this.var_380))
            {
               if(param1.keyCode == 75)
               {
                  this.method_444();
               }
               if(param1.keyCode == 82)
               {
                  if(!Level.stopAll)
                  {
                     GUI.method_295();
                     SoundAS.group(class_2.method_14(-1820302475)).stopAll();
                     SoundAS.group(class_2.method_14(-1820302475)).play(class_2.method_14(-1820302678));
                     this.var_310 = false;
                     if(this.var_380)
                     {
                        Level.restart();
                     }
                  }
               }
               if(param1.keyCode == 27)
               {
                  SoundAS.group(class_2.method_14(-1820302475)).play(class_2.method_14(-1820302678));
                  if(!this.var_310)
                  {
                     this.var_310 = true;
                     this.pause(this.var_310);
                     Level.stopAll = true;
                  }
                  else
                  {
                     this.var_310 = false;
                     this.pause(this.var_310);
                     Level.stopAll = false;
                  }
               }
               if(param1.keyCode == 77)
               {
               }
            }
         }
      }
      
      private final function method_347(param1:String) : void
      {
         if(this.var_380 && contains(this.var_380) && param1 != class_2.method_14(-1820302541))
         {
            this.var_482.removeChild(this.var_380);
         }
         if(this.var_454 && contains(this.var_454) && param1 != class_2.method_14(-1820302409))
         {
            this.var_482.removeChild(this.var_454);
            this.var_454.hide();
         }
         if(this.var_362 && contains(this.var_362) && param1 != class_2.method_14(-1820302448))
         {
            this.var_482.removeChild(this.var_362);
         }
         if(this._totalScore && contains(this._totalScore) && param1 != "TOTAL")
         {
            this.var_482.removeChild(this._totalScore);
         }
      }
      
      private final function method_181(param1:int = 0) : void
      {
         if(param1 == 0)
         {
            if(var_135 <= 12)
            {
               var_476 = 1;
            }
            else if(var_135 > 12 && var_135 <= 24)
            {
               var_476 = 2;
            }
            else if(var_135 > 24)
            {
               var_476 = 3;
            }
         }
         else
         {
            var_476 = param1;
         }
      }
      
      private final function method_444() : void
      {
         if(!this.var_867)
         {
            this.var_867 = new class_182();
         }
         if(!contains(this.var_867))
         {
            addChild(this.var_867);
         }
         this.var_867.open();
      }
      
      private final function method_628() : void
      {
         if(!this.var_884)
         {
            this.var_884 = new class_183();
         }
         if(!contains(this.var_884))
         {
            addChild(this.var_884);
         }
         this.var_884.open();
      }
      
      private final function method_688(param1:MouseEvent) : void
      {
         if(param1.target.name == "LOW")
         {
            stage.quality = StageQuality.LOW;
            if(var_205)
            {
               var_205.trackEvent("SYSTEM","Q_LOW");
            }
         }
         if(param1.target.name == "MEDIUM")
         {
            stage.quality = StageQuality.MEDIUM;
            if(var_205)
            {
               var_205.trackEvent("SYSTEM","Q_MEDIUM");
            }
         }
         if(param1.target.name == "HIGH")
         {
            stage.quality = StageQuality.HIGH;
            if(var_205)
            {
               var_205.trackEvent("SYSTEM","Q_HIGH");
            }
         }
         if(param1.target.name == class_2.method_14(-1820302661))
         {
            this.var_454.method_307();
            if(this.var_362)
            {
               this.method_181(this.var_362._currentStage);
            }
            else
            {
               this.method_181();
            }
            this.method_132(this.method_200);
         }
         if(param1.target.name == "Levels_score")
         {
            this.method_132(this.method_371,new Array(class_2.method_14(-1820302448)));
         }
         if(param1.target.name == "TotalScore_menu")
         {
            if(this._totalScore)
            {
               this._totalScore.stop();
               if(this._totalScore.var_805 == class_2.method_14(-1820302448))
               {
                  if(this.var_362)
                  {
                     this.method_181(this.var_362._currentStage);
                  }
                  this.method_132(this.method_200);
               }
               else
               {
                  this.method_132(this.method_285);
               }
            }
         }
         if(param1.target.name == class_2.method_14(-1820302425))
         {
            this.method_628();
         }
         if(param1.target.name == class_2.method_14(-1820302716))
         {
            this.method_132(this.method_285);
            SoundAS.group(class_2.method_14(-1820302544)).fadeTo(class_2.method_14(-1820302743),0.5,2000,false);
         }
         if(String(param1.target.name).substr(0,18) == class_2.method_14(-1820302545))
         {
            switch(Capabilities.playerType)
            {
               case class_2.method_14(-1820302717):
                  var_811 = 0.6;
                  this.method_132(this.method_186,[int(param1.target.name.substr(19,25))]);
                  if(var_205)
                  {
                     var_205.trackEvent("ALERT","AIR RUN");
                     break;
                  }
                  break;
               case class_2.method_14(-1820302523):
                  this.method_132(this.method_186,[int(param1.target.name.substr(19,25))]);
                  break;
               case class_2.method_14(-1820302769):
                  this.method_132(this.method_186,[int(param1.target.name.substr(19,25))]);
                  break;
               case class_2.method_14(-1820302689):
                  break;
               case class_2.method_14(-1820302412):
                  this.method_132(this.method_186,[int(param1.target.name.substr(19,25))]);
            }
         }
         if(param1.target.name == class_2.method_14(-1820302607))
         {
            if(var_135 + 1 <= var_537)
            {
               var_135 = var_135 + 1;
               this.method_234();
               this.method_132(this.method_186,[var_135],false);
            }
            else
            {
               this.method_234();
               this.method_132(this.method_371,[class_2.method_14(-1820302409)],false);
            }
         }
         if(param1.target.name == class_2.method_14(-1820302506))
         {
            SoundAS.group(class_2.method_14(-1820302544)).fadeTo("Level",0.8,2000,false);
            this.var_310 = false;
            if(this.var_380)
            {
               Level.restart();
            }
            var_475.method_546();
            this.var_938 = false;
            this.method_234();
            this.method_248(false);
         }
         if(param1.target.name == class_2.method_14(-1820302499))
         {
            this.method_234();
            this.method_285();
            this.method_248(false);
         }
         if(param1.target.name == class_2.method_14(-1820302488))
         {
            this.method_234();
            this.method_181();
            this.method_200(class_2.method_14(-1820302448));
            this.method_248(false);
         }
         if(param1.target.name == "GUI_Restart")
         {
            GUI.method_295();
            SoundAS.group(class_2.method_14(-1820302475)).stopAll();
            SoundAS.group(class_2.method_14(-1820302475)).play(class_2.method_14(-1820302678));
            this.var_310 = false;
            if(this.var_380)
            {
               Level.restart();
            }
         }
         if(param1.target.name == "GUI_Pause")
         {
            if(Level.var_233)
            {
               if(!Level.var_233.var_700)
               {
                  SoundAS.group(class_2.method_14(-1820302475)).play(class_2.method_14(-1820302678));
                  if(!this.var_310)
                  {
                     this.var_310 = true;
                     this.pause(this.var_310);
                     Level.stopAll = true;
                  }
                  else
                  {
                     this.var_310 = false;
                     this.pause(this.var_310);
                     Level.stopAll = false;
                  }
               }
            }
         }
         if(param1.target.name == class_2.method_14(-1820302405))
         {
            this.var_310 = false;
            this.pause(this.var_310);
            Level.stopAll = false;
         }
         if(param1.target.name == class_2.method_14(-1820302733))
         {
            if(var_205)
            {
               var_205.trackEvent(class_2.method_14(-1820302541),"SKIP",String(var_135),Number(var_135));
            }
            var_183.levels[var_135 - 1].skipped = true;
            if(var_135 == 12)
            {
               if(!var_183.stages[1])
               {
                  this.method_181();
                  this.method_132(this.method_200,new Array(class_2.method_14(-1820302409)));
               }
               else
               {
                  var_183.levels[var_135].opened = true;
                  var_135 = var_135 + 1;
                  this.method_132(this.method_186,[var_135]);
               }
            }
            else if(var_135 == 24)
            {
               if(!var_183.stages[2])
               {
                  this.method_181();
                  this.method_132(this.method_200,new Array(class_2.method_14(-1820302409)));
               }
               else
               {
                  var_183.levels[var_135].opened = true;
                  var_135 = var_135 + 1;
                  this.method_132(this.method_186,[var_135]);
               }
            }
            else if(var_135 + 1 <= var_537)
            {
               var_183.levels[var_135].opened = true;
               var_135 = var_135 + 1;
               this.method_132(this.method_186,[var_135]);
            }
            else
            {
               this.method_132(this.method_371,[class_2.method_14(-1820302409)]);
            }
            var_183.save();
            this.var_310 = false;
            this.pause(this.var_310);
            Level.stopAll = true;
         }
         if(param1.target.name == class_2.method_14(-1820302577))
         {
            GUI.method_295();
            this.var_310 = false;
            this.pause(this.var_310);
            if(this.var_380)
            {
               Level.restart();
            }
         }
         if(param1.target.name == class_2.method_14(-1820302483))
         {
            this.method_132(this.method_285);
            this.var_310 = false;
            this.pause(this.var_310);
            Level.stopAll = true;
         }
         if(param1.target.name == class_2.method_14(-1820302619))
         {
            this.method_181();
            this.method_132(this.method_200,new Array(class_2.method_14(-1820302448)));
            this.var_310 = false;
            this.pause(this.var_310);
            Level.stopAll = true;
         }
         if(param1.target.name == class_2.method_14(-1820302603))
         {
            this.method_181(1);
            this.method_234();
            this.method_200(class_2.method_14(-1820302409),true);
            this.method_248(false);
         }
         if(param1.target.name == class_2.method_14(-1820302604))
         {
            this.method_181(2);
            this.method_234();
            this.method_200(class_2.method_14(-1820302409),true);
            this.method_248(false);
         }
      }
      
      private final function pause(param1:Boolean) : void
      {
         if(var_205)
         {
            var_205.trackEvent("GUI","PAUSE " + String(param1));
         }
         if(!this.var_806)
         {
            this.var_806 = new class_181();
         }
         if(!contains(this.var_806))
         {
            addChild(this.var_806);
         }
         if(param1)
         {
            this.var_806.open();
         }
         else
         {
            this.var_806.close();
         }
      }
      
      private final function method_132(param1:Function, param2:Array = null, param3:Boolean = true) : void
      {
         class_12.addTween(this.var_456,{
            "visible":true,
            "x":-250,
            "y":-120,
            "time":0.7
         });
         if(param3)
         {
            SoundAS.group(class_2.method_14(-1820302475)).play(class_2.method_14(-1820302748),0.6);
         }
         if(param2)
         {
            this.var_1065 = param2;
         }
         else
         {
            this.var_1065 = null;
         }
         this.var_854 = param1;
         this.var_982 = true;
      }
      
      private final function method_248(param1:Boolean = true) : void
      {
         var var_1208:Boolean = param1;
         if(var_1208)
         {
            this.var_456.x = 100;
            this.var_456.y = App.const_8;
            class_12.addTween(this.var_456,{
               "visible":true,
               "x":-250,
               "y":-120,
               "time":0.7
            });
            SoundAS.group(class_2.method_14(-1820302475)).play(class_2.method_14(-1820302748),0.4);
            SoundAS.group(class_2.method_14(-1820302475)).play(class_2.method_14(-1820302673),0.1);
         }
         else
         {
            try
            {
               new LocalConnection().connect(class_2.method_14(-1820302676));
               new LocalConnection().connect(class_2.method_14(-1820302676));
            }
            catch(e:*)
            {
            }
            class_12.addTween(this.var_456,{
               class_2.method_14(-1820302664):0.5,
               "visible":false,
               "time":0.5,
               "x":100,
               "y":App.const_8,
               "onStart":function():*
               {
                  SoundAS.group("SFX").play("BS",0.4);
                  SoundAS.group("SFX").play("Water",0.1);
               }
            });
         }
      }
      
      private final function method_647() : void
      {
         if(var_205)
         {
            var_205.trackEvent("RESULTS","Level" + String(var_135) + class_2.method_14(-1820302503) + "S" + String(var_936) + ", T" + String(var_919));
            var_205.trackPageview("RESULT " + String(var_135));
         }
         if(var_722)
         {
            var_722.method_402(var_936,String(var_919));
         }
         this.method_248();
         if(!this._screenResults)
         {
            this._screenResults = new class_186();
         }
         if(!contains(this._screenResults))
         {
            this._resultsContainer.addChild(this._screenResults);
         }
         var_475.method_247();
         this._screenResults.alpha = 1;
         this._screenResults.start(var_936,var_919);
         this._screenResults.opened = true;
      }
      
      private final function method_371(param1:String) : DisplayObject
      {
         var_475.method_247();
         this.method_347("TOTAL");
         if(!this._totalScore)
         {
            this._totalScore = new class_180();
         }
         if(!contains(this._totalScore))
         {
            this.var_482.addChild(this._totalScore);
         }
         this._totalScore.var_805 = param1;
         this._totalScore.start();
         return this._totalScore;
      }
      
      private final function method_234() : void
      {
         this._screenResults.method_557();
         class_12.addTween(this._screenResults,{
            class_2.method_14(-1820302664):1,
            "onComplete":function():void
            {
               if(contains(_screenResults))
               {
                  _resultsContainer.removeChild(_screenResults);
               }
            }
         });
         this._screenResults.opened = false;
         Level.name_69 = false;
         this.var_938 = false;
      }
      
      private final function method_186(param1:int) : DisplayObject
      {
         if(var_722)
         {
            var_722.method_723(param1);
         }
         stage.focus = stage;
         this.method_347(class_2.method_14(-1820302541));
         if(!this.var_380)
         {
            this.var_380 = new Level();
         }
         if(!SoundAS.group(class_2.method_14(-1820302544)).getSound("Level").isPlaying)
         {
            SoundAS.group(class_2.method_14(-1820302544)).playLoop("Level",0).fadeFrom(0,0.8,2000,false);
         }
         else if(var_135 == 13 || var_135 == 25)
         {
            SoundAS.group(class_2.method_14(-1820302544)).getSound("Level").stop();
            SoundAS.group(class_2.method_14(-1820302544)).playLoop("Level",0).fadeFrom(0,0.8,2000,false);
         }
         else
         {
            SoundAS.group(class_2.method_14(-1820302544)).fadeTo("Level",0.8,2000,false);
         }
         if(SoundAS.group(class_2.method_14(-1820302544)).getSound(class_2.method_14(-1820302743)).isPlaying)
         {
            SoundAS.group(class_2.method_14(-1820302544)).fadeTo(class_2.method_14(-1820302743),0,1000);
         }
         if(!contains(this.var_380))
         {
            this.var_482.addChild(this.var_380);
         }
         this.var_380.method_186(param1,var_811);
         var_135 = param1;
         if(var_205)
         {
            var_205.trackPageview(class_2.method_14(-1820302403) + String(param1));
         }
         var_475.method_546();
         return this.var_380;
      }
      
      private final function method_285() : DisplayObject
      {
         if(var_205)
         {
            var_205.trackPageview(class_2.method_14(-1820302409));
         }
         if(!SoundAS.group(class_2.method_14(-1820302544)).getSound(class_2.method_14(-1820302743)).isPlaying)
         {
            SoundAS.group(class_2.method_14(-1820302544)).playLoop(class_2.method_14(-1820302743),0).fadeFrom(0,0.5,2000,false);
         }
         if(SoundAS.group(class_2.method_14(-1820302544)).getSound("Level").isPlaying)
         {
            SoundAS.group(class_2.method_14(-1820302544)).fadeTo("Level",0,2000,true);
         }
         this.method_347(class_2.method_14(-1820302409));
         if(!this.var_454)
         {
            this.var_454 = new class_177();
         }
         if(!contains(this.var_454))
         {
            this.var_482.addChild(this.var_454);
         }
         if(this.var_380)
         {
            Level.stopAll = true;
         }
         this.var_454.hide(false);
         var_475.method_247();
         return this.var_454;
      }
      
      private final function method_200(param1:String = "MAIN", param2:Boolean = false) : DisplayObject
      {
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:int = 0;
         if(var_205)
         {
            var_205.trackPageview("LEVELS_MENU " + param1);
         }
         if(!SoundAS.group(class_2.method_14(-1820302544)).getSound(class_2.method_14(-1820302743)).isPlaying)
         {
            SoundAS.group(class_2.method_14(-1820302544)).playLoop(class_2.method_14(-1820302743),0).fadeFrom(0,1,2000,false);
         }
         if(SoundAS.group(class_2.method_14(-1820302544)).getSound("Level").isPlaying)
         {
            SoundAS.group(class_2.method_14(-1820302544)).fadeTo("Level",0,2000,true);
         }
         this.method_347(class_2.method_14(-1820302448));
         if(contains(this.var_454))
         {
            this.var_482.removeChild(this.var_454);
         }
         if(!this.var_362)
         {
            this.var_362 = new class_179();
         }
         if(!contains(this.var_362))
         {
            this.var_482.addChild(this.var_362);
         }
         if(this.var_380)
         {
            Level.stopAll = true;
         }
         if(param1 == class_2.method_14(-1820302409))
         {
            _loc3_ = 0;
            _loc4_ = var_183.stages;
            _loc5_ = 0;
            while(_loc5_ < _loc4_.length)
            {
               if(_loc4_[_loc5_])
               {
                  _loc3_ = _loc3_ + 1;
               }
               _loc5_++;
            }
            this.var_362.method_439(var_476,_loc3_,param2);
         }
         else if(param1 == class_2.method_14(-1820302448))
         {
            this.var_362.method_345(var_476);
         }
         var_475.method_247();
         return this.var_362;
      }
      
      private final function method_819() : void
      {
         if(contains(this.var_362))
         {
            this.var_482.removeChild(this.var_362);
         }
         if(this.var_362)
         {
            this.var_362 = null;
         }
      }
      
      private final function method_482(param1:KeyboardEvent) : void
      {
      }
      
      private final function method_492(param1:Event) : void
      {
         var var_1194:Number = NaN;
         var var_1187:Event = param1;
         if(this.var_982)
         {
            if(!class_12.method_91(this.var_456))
            {
               if(this.var_854)
               {
                  try
                  {
                     new LocalConnection().connect(class_2.method_14(-1820302676));
                     new LocalConnection().connect(class_2.method_14(-1820302676));
                  }
                  catch(e:*)
                  {
                  }
                  this.var_961 = this.var_854.apply(null,this.var_1065);
               }
               if(contains(this.var_961))
               {
                  this.var_982 = false;
                  this.var_961 = null;
                  var_1194 = 0;
                  if(this.var_854 == this.method_186)
                  {
                     var_1194 = 0.5;
                  }
                  this.var_854 = null;
                  class_12.addTween(this.var_456,{
                     class_2.method_14(-1820302664):var_1194,
                     "visible":false,
                     "time":0.5,
                     "x":100,
                     "y":App.const_8,
                     "alpha":1,
                     "onStart":function():void
                     {
                        SoundAS.group("SFX").play("BS",0.3);
                        SoundAS.group("SFX").play("Water",0.5);
                     }
                  });
               }
            }
         }
         if(!this.var_938)
         {
            if(Level.name_69)
            {
               this.var_938 = true;
               this.method_647();
            }
         }
         if(var_846 && !this.var_1084)
         {
            this.var_1084 = true;
            this.method_444();
         }
      }
   }
}
