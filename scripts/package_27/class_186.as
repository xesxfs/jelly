package package_27
{
   import com.remindgames.jellygame.Game;
   import com.remindgames.jellygame.Level;
   import com.remindgames.jellygame.class_192;
   import com.remindgames.jellygame.class_209;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import package_1.class_12;
   import package_23.class_178;
   import treefortress.sound.SoundAS;
   
   public final class class_186 extends Sprite
   {
       
      
      private var var_236:MovieClip;
      
      private var var_529:MovieClip;
      
      private var var_519:MovieClip;
      
      public var _totalScore:int = 2;
      
      private var var_1149:int = 0;
      
      private var var_372:int = 0;
      
      public var _timeTemp:int = 0;
      
      public var _scoreTemp:int = 0;
      
      private const KEYS_1_STAR:String = "Good";
      
      private const KEYS_2_STAR:String = "Great!";
      
      private const KEYS_3_STAR:String = "Excellent!";
      
      private var var_392:class_192;
      
      private var var_395:class_192;
      
      private var var_578:class_192;
      
      private var var_380:MovieClip;
      
      private var var_704:int = 0;
      
      private var var_619:int = 0;
      
      public var opened:Boolean = false;
      
      private var var_282:class_178;
      
      private var var_584:class_192;
      
      private var unlockStage2:class_192;
      
      private var lockStage2:class_192;
      
      private var unlockStage3:class_192;
      
      private var lockStage3:class_192;
      
      private var var_318:MovieClip;
      
      private var var_200:class_178;
      
      private var var_542:Array;
      
      private var var_556:Array;
      
      public function class_186()
      {
         this.var_542 = [1,21,44,63];
         this.var_556 = [true,true,true];
         super();
         this.var_236 = new MC_Results_keys();
         this.var_236.x = 220.5;
         this.var_236.y = 95.65;
         this.var_236.alpha = 0;
         this.var_236.mouseEnabled = false;
         this.var_236.mouseChildren = false;
         addChild(this.var_236);
         this.var_529 = new MC_Results_time();
         this.var_529.x = 351.95;
         this.var_529.y = 226.5;
         this.var_529.alpha = 0;
         this.var_529.mouseEnabled = false;
         this.var_529.mouseChildren = false;
         addChild(this.var_529);
         this.var_519 = new MC_Results_score();
         this.var_519.x = 351.95;
         this.var_519.y = 249.1;
         this.var_519.alpha = 0;
         this.var_519.mouseEnabled = false;
         this.var_519.mouseChildren = false;
         addChild(this.var_519);
         this.var_380 = new MC_Result_level();
         this.var_380.x = 222.5;
         this.var_380.y = 8.85;
         this.var_380.alpha = 0;
         this.var_380.mouseEnabled = false;
         this.var_380.mouseChildren = false;
         addChild(this.var_380);
         var _loc1_:int = 61;
         this.unlockStage2 = new class_192("MC_result_s2_u",200,400,class_2.method_14(-1820302603),1,1,1);
         this.unlockStage2.alpha = 0;
         this.unlockStage2.visible = false;
         addChild(this.unlockStage2);
         this.lockStage2 = new class_192("MC_result_s2_l",200,400,class_2.method_14(-1820302603),1,1,1);
         this.lockStage2.alpha = 0;
         addChild(this.lockStage2);
         this.unlockStage3 = new class_192("MC_result_s3_u",200,400,class_2.method_14(-1820302604),1,1,1);
         this.unlockStage3.alpha = 0;
         this.unlockStage3.visible = false;
         addChild(this.unlockStage3);
         this.lockStage3 = new class_192("MC_result_s3_l",200,400,class_2.method_14(-1820302604),1,1,1);
         this.lockStage3.alpha = 0;
         this.lockStage3.visible = false;
         addChild(this.lockStage3);
         this.var_318 = new MC_result_opens();
         this.var_318.x = 310;
         this.var_318.y = 430;
         this.var_318.alpha = 0;
         this.var_318.visible = false;
         addChild(this.var_318);
         this.var_392 = new class_192("UI_button_play",367.6,297.3,class_2.method_14(-1820302607),0.55,1,2,true);
         this.var_392.alpha = 0;
         addChild(this.var_392);
         this.var_395 = new class_192("UI_button_restart",291.2,297.3,class_2.method_14(-1820302506),0.55,1,2,true);
         this.var_395.alpha = 0;
         addChild(this.var_395);
         this.var_578 = new class_192("UI_button_menu",639.85,8.85,class_2.method_14(-1820302499),0.8,1,2,true);
         this.var_578.alpha = 0;
         addChild(this.var_578);
         this.var_584 = new class_192("UI_button_levels",580,8.85,class_2.method_14(-1820302488),0.8,1,2,true);
         this.var_584.alpha = 0;
         addChild(this.var_584);
         this.var_200 = new class_178();
         this.var_200.method_111("Result_stars_mc");
         this.var_200.repeat = false;
         this.var_200.stop();
         this.var_200.x = 248.95;
         this.var_200.y = 145.95;
         this.var_200.var_904 = 0.7;
         this.var_200.mouseEnabled = false;
         this.var_200.mouseChildren = false;
         addChild(this.var_200);
         addEventListener(MouseEvent.CLICK,this.method_612);
         addEventListener(Event.ENTER_FRAME,this.method_492);
      }
      
      private final function method_492(param1:Event) : void
      {
         if(this.var_200)
         {
            if(this.var_200.method_593)
            {
               if(this.var_372 == 1)
               {
                  if(this.var_200.currentFrame >= this.var_542[1])
                  {
                     this.var_200.gotoAndStop(this.var_542[1]);
                  }
               }
               else if(this.var_372 == 2)
               {
                  if(this.var_200.currentFrame >= this.var_542[2])
                  {
                     this.var_200.gotoAndStop(this.var_542[2]);
                  }
               }
               else if(this.var_372 == 3)
               {
                  if(this.var_200.currentFrame >= this.var_542[3])
                  {
                     this.var_200.gotoAndStop(this.var_542[3]);
                  }
               }
               else
               {
                  this.var_200.gotoAndStop(1);
               }
               if(this.var_200.currentFrame >= this.var_542[0] + 2)
               {
                  if(this.var_556[0])
                  {
                     this.var_556[0] = false;
                     SoundAS.group(class_2.method_14(-1820302475)).play("RStar_1",0.3);
                  }
               }
               if(this.var_200.currentFrame >= this.var_542[1] + 4)
               {
                  if(this.var_556[1])
                  {
                     this.var_556[1] = false;
                     if(this.var_372 > 1)
                     {
                        SoundAS.group(class_2.method_14(-1820302475)).play("RStar_2",0.4);
                     }
                  }
               }
               if(this.var_200.currentFrame >= this.var_542[2] + 11)
               {
                  if(this.var_556[2])
                  {
                     this.var_556[2] = false;
                     if(this.var_372 > 2)
                     {
                        SoundAS.group(class_2.method_14(-1820302475)).play("RStar_3",0.5);
                     }
                  }
               }
            }
         }
      }
      
      private final function method_612(param1:MouseEvent) : void
      {
         var _loc2_:* = null;
         if(param1.target == this.var_578 || param1.target == this.var_392 || param1.target == this.var_584 || param1.target == this.unlockStage2 || param1.target == this.unlockStage3 || param1.target == this.lockStage2 || param1.target == this.lockStage3)
         {
            if(this.var_372 > Game.var_183.levels[Game.var_135 - 1].stars)
            {
               Game.var_183.levels[Game.var_135 - 1].stars = this.var_372;
            }
            Game.var_183.levels[Game.var_135 - 1].opened = true;
            if(Game.var_183.levels[Game.var_135 - 1].record < this.var_704 + this.var_619)
            {
               Game.var_183.levels[Game.var_135 - 1].record = this.var_704 + this.var_619;
            }
            if(Game.var_135 < Game.var_537)
            {
               Game.var_183.levels[Game.var_135].opened = true;
            }
            Game.var_183.levels[Game.var_135 - 1].completed = true;
            _loc2_ = Game.var_183.levels;
            _loc2_[Game.var_135 - 1].hands = _loc2_[Game.var_135 - 1].hands + Level.var_212["0"];
            _loc2_[Game.var_135 - 1].platforms = _loc2_[Game.var_135 - 1].platforms + Level.var_212["1"];
            _loc2_[Game.var_135 - 1].colouring = _loc2_[Game.var_135 - 1].colouring + Level.var_212["2"];
            _loc2_[Game.var_135 - 1].reels = _loc2_[Game.var_135 - 1].reels + Level.var_212["3"];
            _loc2_[Game.var_135 - 1].spikes = _loc2_[Game.var_135 - 1].spikes + Level.var_212["4"];
            _loc2_[Game.var_135 - 1].blades = _loc2_[Game.var_135 - 1].blades + Level.var_212["5"];
            _loc2_[Game.var_135 - 1].restart = _loc2_[Game.var_135 - 1].restart + Level.var_212["6"];
            Game.var_183.levels = _loc2_;
            Game.var_183.save();
            if(Game.var_205)
            {
               Game.var_205.trackEvent("STAT","Completed: " + String(_loc2_[Game.var_135 - 1].completed) + class_2.method_14(-1820302668) + "Records: " + String(_loc2_[Game.var_135 - 1].record) + class_2.method_14(-1820302668) + "Stars: " + String(_loc2_[Game.var_135 - 1].stars) + class_2.method_14(-1820302668) + "Time: " + String(_loc2_[Game.var_135 - 1].time) + class_2.method_14(-1820302668) + "Skipped: " + String(_loc2_[Game.var_135 - 1].skipped) + class_2.method_14(-1820302668) + "NumRecords: " + String(_loc2_[Game.var_135 - 1].numRecords) + class_2.method_14(-1820302668) + "Hands: " + String(_loc2_[Game.var_135 - 1].hands) + class_2.method_14(-1820302668) + "Blades: " + String(_loc2_[Game.var_135 - 1].blades) + class_2.method_14(-1820302668) + "Spikes: " + String(_loc2_[Game.var_135 - 1].spikes) + class_2.method_14(-1820302668) + "Platforms: " + String(_loc2_[Game.var_135 - 1].platforms) + class_2.method_14(-1820302668) + "Colouring: " + String(_loc2_[Game.var_135 - 1].colouring) + class_2.method_14(-1820302668) + "Reels: " + String(_loc2_[Game.var_135 - 1].reels) + class_2.method_14(-1820302668) + "restart: " + String(_loc2_[Game.var_135 - 1].restart));
            }
         }
         if(param1.target == this.var_395)
         {
            _loc2_ = Game.var_183.levels;
            _loc2_[Game.var_135 - 1].hands = _loc2_[Game.var_135 - 1].hands + Level.var_212["0"];
            _loc2_[Game.var_135 - 1].platforms = _loc2_[Game.var_135 - 1].platforms + Level.var_212["1"];
            _loc2_[Game.var_135 - 1].colouring = _loc2_[Game.var_135 - 1].colouring + Level.var_212["2"];
            _loc2_[Game.var_135 - 1].reels = _loc2_[Game.var_135 - 1].reels + Level.var_212["3"];
            _loc2_[Game.var_135 - 1].spikes = _loc2_[Game.var_135 - 1].spikes + Level.var_212["4"];
            _loc2_[Game.var_135 - 1].blades = _loc2_[Game.var_135 - 1].blades + Level.var_212["5"];
            Game.var_183.levels = _loc2_;
            if(this.var_372 > Game.var_183.levels[Game.var_135 - 1].stars)
            {
               Game.var_183.levels[Game.var_135 - 1].stars = this.var_372;
            }
            Game.var_183.levels[Game.var_135 - 1].opened = true;
            if(Game.var_183.levels[Game.var_135 - 1].record < this.var_704 + this.var_619)
            {
               Game.var_183.levels[Game.var_135 - 1].record = this.var_704 + this.var_619;
            }
            Game.var_183.levels[Game.var_135 - 1].completed = true;
            if(Game.var_135 < Game.var_537)
            {
               Game.var_183.levels[Game.var_135].opened = true;
            }
            Game.var_183.save();
         }
      }
      
      private final function name_77() : void
      {
         if(this.var_372 >= 3)
         {
            Game.name_34.y = 0;
            Game.name_34.x = 0;
            Game.method_225(100);
         }
      }
      
      public final function start(param1:int, param2:int) : void
      {
         var ns:int = 0;
         var gl:String = null;
         var stars:int = param1;
         var time:int = param2;
         this.method_460();
         this.var_704 = stars * 1000;
         this.var_619 = (class_209.const_34[Game.var_135 - 1] - time) * 200;
         if(this.var_619 < 0)
         {
            this.var_619 = 0;
         }
         this._totalScore = 0;
         this._scoreTemp = 0;
         this.var_1149 = time;
         this._timeTemp = time;
         this.var_372 = stars;
         if(time < Game.var_183.levels[Game.var_135 - 1].time || Game.var_183.levels[Game.var_135 - 1].time == 0)
         {
            Game.var_183.levels[Game.var_135 - 1].time = time;
         }
         if(this.var_372 > Game.var_183.levels[Game.var_135 - 1].stars)
         {
            Game.var_183.levels[Game.var_135 - 1].stars = this.var_372;
         }
         this.var_380.keys.text = class_2.method_14(-1820302403) + String(Game.var_135);
         if(this.var_372 == 1)
         {
            this.var_236.keys.text = "Good";
            this.var_395.scale(0.55);
            this.var_395.y = this.var_395.y - 8;
            this.var_392.scale(0.45);
         }
         else if(this.var_372 == 2)
         {
            this.var_236.keys.text = "Great!";
            this.var_395.scale(0.55);
            this.var_395.y = this.var_395.y - 8;
            this.var_392.scale(0.45);
         }
         else if(this.var_372 == 3)
         {
            this.var_236.keys.text = "Excellent!";
            this.var_395.scale(0.45);
            this.var_392.scale(0.55);
            this.var_392.y = this.var_392.y - 8;
         }
         this.var_529.time.text = this.method_465(this._timeTemp);
         this.var_519.score.text = "";
         class_12.addTween(this.var_236,{
            class_2.method_14(-1820302664):1,
            "time":1,
            "alpha":1
         });
         class_12.addTween(this.var_380,{
            class_2.method_14(-1820302664):1,
            "time":1,
            "alpha":1,
            "onStart":this.name_77
         });
         class_12.addTween(this.var_392,{
            class_2.method_14(-1820302664):1,
            "time":1,
            "alpha":1
         });
         class_12.addTween(this.var_395,{
            class_2.method_14(-1820302664):1,
            "time":1,
            "alpha":1
         });
         class_12.addTween(this.var_578,{
            class_2.method_14(-1820302664):1,
            "time":1,
            "alpha":1
         });
         class_12.addTween(this.var_584,{
            class_2.method_14(-1820302664):1,
            "time":1,
            "alpha":1
         });
         class_12.addTween(this.var_200,{
            class_2.method_14(-1820302664):1,
            "time":1,
            "alpha":1
         });
         var ts:int = 0;
         var sv:Array = Game.var_183.levels;
         var j:int = 0;
         while(j < sv.length)
         {
            ts = ts + sv[j].stars;
            j++;
         }
         this.var_318.name = class_2.method_14(-1820302607);
         if(Game.var_135 == 12)
         {
            if(!Game.var_183.stages[1])
            {
               if(ts < Game.UNLOCK_STAGE2_STARS)
               {
                  this.var_392.name = class_2.method_14(-1820302603);
                  ns = Game.UNLOCK_STAGE2_STARS - ts;
                  gl = "stars";
                  if(ns == 1)
                  {
                     gl = class_2.method_14(-1820302702);
                  }
                  class_12.addTween(this.lockStage2,{
                     class_2.method_14(-1820302664):1,
                     "time":1,
                     "alpha":1,
                     "visible":true
                  });
                  this.var_318.num.text = class_2.method_14(-1820302710) + String(ns) + " " + gl;
                  this.var_318.name = class_2.method_14(-1820302603);
                  class_12.addTween(this.var_318,{
                     class_2.method_14(-1820302664):1,
                     "time":1,
                     "alpha":1,
                     "visible":true
                  });
               }
            }
         }
         else if(Game.var_135 == 24)
         {
            if(!Game.var_183.stages[2])
            {
               if(ts < Game.UNLOCK_STAGE3_STARS)
               {
                  this.var_392.name = class_2.method_14(-1820302603);
                  ns = Game.UNLOCK_STAGE3_STARS - ts;
                  gl = "stars";
                  if(ns == 1)
                  {
                     gl = class_2.method_14(-1820302702);
                  }
                  class_12.addTween(this.lockStage3,{
                     class_2.method_14(-1820302664):1,
                     "time":1,
                     "alpha":1,
                     "visible":true
                  });
                  this.var_318.num.text = class_2.method_14(-1820302710) + String(ns) + " " + gl;
                  this.var_318.name = class_2.method_14(-1820302604);
                  class_12.addTween(this.var_318,{
                     class_2.method_14(-1820302664):1,
                     "time":1,
                     "alpha":1,
                     "visible":true
                  });
               }
            }
         }
         if(!Game.var_183.stages[1])
         {
            if(ts >= Game.UNLOCK_STAGE2_STARS)
            {
               Game.var_183.stages[1] = true;
               Game.var_183.levels[12].opened = true;
               class_12.addTween(this.unlockStage2,{
                  class_2.method_14(-1820302664):1,
                  "time":1,
                  "alpha":1,
                  "visible":true
               });
               this.var_318.num.text = class_2.method_14(-1820302840);
               this.var_318.name = class_2.method_14(-1820302603);
               class_12.addTween(this.var_318,{
                  class_2.method_14(-1820302664):1,
                  "time":1,
                  "alpha":1,
                  "visible":true
               });
            }
         }
         if(!Game.var_183.stages[2])
         {
            if(ts >= Game.UNLOCK_STAGE3_STARS)
            {
               Game.var_183.stages[2] = true;
               Game.var_183.levels[24].opened = true;
               class_12.addTween(this.unlockStage3,{
                  class_2.method_14(-1820302664):1,
                  "time":1,
                  "alpha":1,
                  "visible":true
               });
               this.var_318.num.text = class_2.method_14(-1820302840);
               this.var_318.name = class_2.method_14(-1820302604);
               class_12.addTween(this.var_318,{
                  class_2.method_14(-1820302664):1,
                  "time":1,
                  "alpha":1,
                  "visible":true
               });
            }
         }
         if(this.var_372 > 0)
         {
            class_12.addTween(new Shape(),{
               class_2.method_14(-1820302664):1.1,
               "onComplete":function():*
               {
                  var_200.gotoAndPlay(1);
               }
            });
         }
         class_12.addTween(this.var_519,{
            class_2.method_14(-1820302664):1,
            "time":1,
            "alpha":1
         });
         class_12.addTween(this,{
            class_2.method_14(-1820302664):0.7,
            "time":2,
            "transition":"easeInQuart",
            "_totalScore":this.var_704,
            "onUpdate":this.method_434,
            "onComplete":this.method_547
         });
      }
      
      private final function method_434() : void
      {
         if(this.opened)
         {
            this.var_519.score.text = String(this._totalScore + this._scoreTemp);
            SoundAS.group(class_2.method_14(-1820302475)).playFx(class_2.method_14(-1820302627),0.5);
         }
      }
      
      private final function method_36() : void
      {
         if(this.opened)
         {
            this.var_529.time.text = this.method_465(this._timeTemp);
         }
      }
      
      private final function method_547() : void
      {
         class_12.addTween(this.var_529,{
            "time":0.5,
            "alpha":1
         });
         class_12.addTween(this,{
            class_2.method_14(-1820302664):0.5,
            "time":1,
            "transition":"easeInSine",
            "_timeTemp":0,
            "onUpdate":this.method_36,
            "onComplete":this.method_658
         });
         class_12.addTween(this,{
            class_2.method_14(-1820302664):0.5,
            "time":1,
            "transition":"easeInSine",
            "_scoreTemp":this.var_619,
            "onUpdate":this.method_434
         });
      }
      
      private final function method_658() : void
      {
         class_12.addTween(this.var_529,{
            "time":2,
            "alpha":0
         });
         if(Game.var_183.levels[Game.var_135 - 1].record != 0 && Game.var_183.levels[Game.var_135 - 1].record < this.var_704 + this.var_619)
         {
            Game.var_183.levels[Game.var_135 - 1].numRecords = Game.var_183.levels[Game.var_135 - 1].numRecords + 1;
            this.method_573();
         }
      }
      
      private final function method_573() : void
      {
         if(!this.var_282)
         {
            this.var_282 = new class_178();
            this.var_282.method_111("MC_result_record");
            this.var_282.x = 300;
            this.var_282.y = 200;
            this.var_282.scaleX = 5;
            this.var_282.scaleY = 5;
            this.var_282.alpha = 0;
            this.var_282.stop();
            this.var_282.mouseEnabled = false;
            this.var_282.mouseChildren = false;
            this.var_282.smoothing = true;
            addChild(this.var_282);
         }
         SoundAS.group(class_2.method_14(-1820302475)).play(class_2.method_14(-1820302748),0.3);
         class_12.addTween(this.var_282,{
            class_2.method_14(-1820302664):0,
            "time":0.2,
            "scaleX":1,
            "scaleY":1,
            "alpha":1,
            "x":455.95,
            "y":210.95,
            "transition":"easeInOutCirc"
         });
      }
      
      private final function method_465(param1:int) : String
      {
         var _loc2_:int = param1 % 60;
         var _loc3_:int = Math.floor(param1 / 60) % 60;
         var _loc4_:int = Math.floor(param1 / 3600) % 24;
         return String(_loc3_ + ":" + _loc2_);
      }
      
      public final function method_557() : void
      {
         class_12.addTween(this.var_392,{
            class_2.method_14(-1820302664):0,
            "time":0.5,
            "y":600,
            "transition":"easeInBack"
         });
         class_12.addTween(this.var_395,{
            class_2.method_14(-1820302664):0.2,
            "time":0.5,
            "y":600,
            "transition":"easeInBack"
         });
         class_12.addTween(this.var_578,{
            class_2.method_14(-1820302664):0.2,
            "time":0.5,
            "y":-100,
            "transition":"easeInBack"
         });
         class_12.addTween(this.var_584,{
            class_2.method_14(-1820302664):0,
            "time":0.5,
            "y":-100,
            "transition":"easeInBack"
         });
         class_12.addTween(this,{
            class_2.method_14(-1820302664):0,
            "time":1,
            "alpha":0
         });
      }
      
      private final function method_460() : void
      {
         if(this.var_282)
         {
            this.var_282.x = 300;
            this.var_282.y = 200;
            this.var_282.scaleX = 5;
            this.var_282.scaleY = 5;
            this.var_282.alpha = 0;
         }
         this.var_556[0] = true;
         this.var_556[1] = true;
         this.var_556[2] = true;
         this.lockStage2.visible = false;
         this.lockStage2.alpha = 0;
         this.unlockStage2.visible = false;
         this.unlockStage2.alpha = 0;
         this.lockStage3.visible = false;
         this.lockStage3.alpha = 0;
         this.unlockStage3.visible = false;
         this.unlockStage3.alpha = 0;
         this.var_318.visible = false;
         this.var_318.alpha = 0;
         this.var_584.x = 580;
         this.var_584.y = 8.85;
         this.var_200.alpha = 0;
         this.var_200.gotoAndStop(1);
         this.var_200.stop();
         this.var_392.x = 367.6;
         this.var_392.y = 297.3;
         this.var_392.alpha = 0;
         this.var_395.x = 291.2;
         this.var_395.y = 297.3;
         this.var_395.alpha = 0;
         this.var_578.x = 639.85;
         this.var_578.y = 8.85;
         this.var_578.alpha = 0;
         this.var_584.alpha = 0;
         this.var_380.alpha = 0;
         this.var_519.alpha = 0;
         this.var_236.alpha = 0;
         if(this.var_282)
         {
            this.var_282.x = 300;
            this.var_282.y = 200;
            this.var_282.scaleX = 5;
            this.var_282.scaleY = 5;
            this.var_282.alpha = 0;
         }
      }
   }
}
