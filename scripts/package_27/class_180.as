package package_27
{
   import com.remindgames.jellygame.App;
   import com.remindgames.jellygame.Game;
   import com.remindgames.jellygame.class_192;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import package_1.class_12;
   import package_30.class_195;
   import treefortress.sound.SoundAS;
   
   public final class class_180 extends Sprite
   {
       
      
      private var _bg:Sprite;
      
      private var var_412:Sprite;
      
      private var _t1:MovieClip;
      
      private var _t2:MovieClip;
      
      private var _t3:MovieClip;
      
      private var _t4:MovieClip;
      
      private var _t5:MovieClip;
      
      private var _t6:MovieClip;
      
      private var _t7:MovieClip;
      
      private var _t8:MovieClip;
      
      private var _t9:MovieClip;
      
      private var _t10:MovieClip;
      
      private var _t11:MovieClip;
      
      private var _t12:MovieClip;
      
      private var _t13:MovieClip;
      
      private var var_370:MovieClip;
      
      private var var_457:MovieClip;
      
      private var var_1098:Array;
      
      private var var_199:Array;
      
      private var var_1180:Number = -100;
      
      private var var_643:class_192;
      
      private var var_960:Boolean = false;
      
      private var var_327:int;
      
      private var var_354:Array;
      
      private var var_1009:Array;
      
      private var _scoreTemp:int = 0;
      
      public var _currentNumTT:int;
      
      public var _totalScore:int = 0;
      
      private var var_1195:String = "";
      
      private var var_163:Array;
      
      public var var_805:String;
      
      public function class_180()
      {
         this.var_1098 = [194,216,238,260,282,304,326,348,370,392,414,436,458];
         this.var_199 = [];
         this.var_354 = [0,0,0,0,0,0,0,0,0,0,0,0,0];
         this.var_1009 = [10,12,13,11,22,43,23,24,234,22,22,22,11];
         this.var_163 = [0,0,0,0,0,0,0,0,0,0,0,0,0];
         super();
         class_195.init();
         this._bg = new MC_y_bg();
         this._bg.cacheAsBitmap = true;
         this._bg.mouseEnabled = false;
         this._bg.mouseChildren = false;
         addChild(this._bg);
         this.var_412 = new class_95();
         this.var_412.alpha = 0;
         this.var_412.visible = false;
         this.var_412.cacheAsBitmap = true;
         this.var_412.mouseChildren = false;
         this.var_412.mouseEnabled = false;
         addChild(this.var_412);
         this._t1 = new TT_1();
         this._t1.alpha = 0;
         this._t1.visible = false;
         addChild(this._t1);
         this.var_199[this.var_199.length] = this._t1;
         this._t2 = new TT_2();
         this._t2.alpha = 0;
         this._t2.visible = false;
         addChild(this._t2);
         this.var_199[this.var_199.length] = this._t2;
         this._t3 = new TT_3();
         this._t3.alpha = 0;
         this._t3.visible = false;
         addChild(this._t3);
         this.var_199[this.var_199.length] = this._t3;
         this._t4 = new TT_4();
         this._t4.alpha = 0;
         this._t4.visible = false;
         addChild(this._t4);
         this.var_199[this.var_199.length] = this._t4;
         this._t5 = new TT_5();
         this._t5.alpha = 0;
         this._t5.visible = false;
         addChild(this._t5);
         this.var_199[this.var_199.length] = this._t5;
         this._t6 = new TT_6();
         this._t6.alpha = 0;
         this._t6.visible = false;
         addChild(this._t6);
         this.var_199[this.var_199.length] = this._t6;
         this._t7 = new TT_7();
         this._t7.alpha = 0;
         this._t7.visible = false;
         addChild(this._t7);
         this.var_199[this.var_199.length] = this._t7;
         this._t8 = new TT_8();
         this._t8.alpha = 0;
         this._t8.visible = false;
         addChild(this._t8);
         this.var_199[this.var_199.length] = this._t8;
         this._t9 = new TT_9();
         this._t9.alpha = 0;
         this._t9.visible = false;
         addChild(this._t9);
         this.var_199[this.var_199.length] = this._t9;
         this._t10 = new TT_10();
         this._t10.alpha = 0;
         this._t10.visible = false;
         addChild(this._t10);
         this.var_199[this.var_199.length] = this._t10;
         this._t11 = new TT_11();
         this._t11.alpha = 0;
         this._t11.visible = false;
         addChild(this._t11);
         this.var_199[this.var_199.length] = this._t11;
         this._t12 = new TT_12();
         this._t12.alpha = 0;
         this._t12.visible = false;
         addChild(this._t12);
         this.var_199[this.var_199.length] = this._t12;
         this._t13 = new TT_13();
         this._t13.alpha = 0;
         this._t13.visible = false;
         addChild(this._t13);
         this.var_199[this.var_199.length] = this._t13;
         this.var_370 = new class_149();
         this.var_370.alpha = 0;
         this.var_370.visible = false;
         addChild(this.var_370);
         this.var_457 = new class_43();
         this.var_457.alpha = 0;
         this.var_457.visible = false;
         addChild(this.var_457);
         this.var_643 = new class_192("UI_button_menu",19,463.75,"TotalScore_menu",0.8,1,2,true);
         this.var_643.visible = false;
         this.var_643.alpha = 0;
         addChild(this.var_643);
         this.method_460();
      }
      
      private final function method_460() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.var_199.length)
         {
            this.var_199[_loc1_].x = 90 + this.var_1180;
            this.var_199[_loc1_].y = this.var_1098[_loc1_];
            this.var_199[_loc1_].visible = false;
            this.var_199[_loc1_].mouseEnabled = false;
            this.var_199[_loc1_].mouseChildren = false;
            this.var_199[_loc1_].alpha = 0;
            this.var_199[_loc1_].tt.text = "";
            _loc1_++;
         }
         this.var_412.visible = false;
         this.var_412.alpha = 0;
         this.var_643.visible = false;
         this.var_643.alpha = 0;
         this.var_370.visible = false;
         this.var_370.alpha = 0;
         this.var_370.score.text = "000000";
         this.var_370.x = 351;
         this.var_370.y = 150;
         this.var_457.visible = false;
         this.var_457.scaleX = 0.5;
         this.var_457.scaleY = 0.5;
         this.var_457.alpha = 0;
         this.var_457.x = App.const_11;
         this.var_457.y = App.const_23;
         this.var_412.x = 350;
         this.var_412.y = 339;
         this.var_412.alpha = 0;
         this.var_412.visible = false;
         this.var_960 = false;
      }
      
      public final function start(param1:Boolean = false) : void
      {
         var _loc3_:int = 0;
         if(this.var_805 == class_2.method_14(-1820302409))
         {
            if(!SoundAS.group(class_2.method_14(-1820302544)).getSound(class_2.method_14(-1820302743)).isPlaying)
            {
               SoundAS.group(class_2.method_14(-1820302544)).playLoop(class_2.method_14(-1820302743),0).fadeFrom(0,0.6,2000,false);
            }
            if(SoundAS.group(class_2.method_14(-1820302544)).getSound("Level").isPlaying)
            {
               SoundAS.group(class_2.method_14(-1820302544)).fadeTo("Level",0,2000,true);
            }
         }
         if(this.var_960)
         {
            this.method_460();
         }
         this.var_960 = true;
         var _loc2_:Array = Game.var_183.levels;
         this.var_163["0"] = 0;
         this.var_163["1"] = 0;
         this.var_163["2"] = 0;
         this.var_163["3"] = 0;
         this.var_163["4"] = 0;
         this.var_163["5"] = 0;
         this.var_163["6"] = 0;
         this.var_163["7"] = 0;
         this.var_163["8"] = 0;
         this.var_163["9"] = 0;
         this.var_163["10"] = 0;
         this.var_163["11"] = 0;
         this.var_163["12"] = 0;
         _loc3_ = 0;
         while(_loc3_ < _loc2_.length)
         {
            this.var_163["0"] = this.var_163["0"] + _loc2_[_loc3_].record;
            if(_loc2_[_loc3_].completed)
            {
               this.var_163["1"] = this.var_163["1"] + 1;
            }
            if(_loc2_[_loc3_].stars == 3)
            {
               this.var_163["2"] = this.var_163["2"] + 1;
            }
            this.var_163["3"] = this.var_163["3"] + _loc2_[_loc3_].stars;
            if(_loc2_[_loc3_].skipped)
            {
               this.var_163["4"] = this.var_163["4"] + 1;
            }
            this.var_163["5"] = this.var_163["5"] + _loc2_[_loc3_].time;
            this.var_163["6"] = this.var_163["6"] + _loc2_[_loc3_].numRecords;
            this.var_163["7"] = this.var_163["7"] + _loc2_[_loc3_].hands;
            this.var_163["8"] = this.var_163["8"] + _loc2_[_loc3_].platforms;
            this.var_163["9"] = this.var_163["9"] + _loc2_[_loc3_].colouring;
            this.var_163["10"] = this.var_163["10"] + _loc2_[_loc3_].reels;
            this.var_163["11"] = this.var_163["11"] + _loc2_[_loc3_].spikes;
            this.var_163["12"] = this.var_163["12"] + _loc2_[_loc3_].blades;
            _loc3_++;
         }
         var _loc4_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < this.var_163.length)
         {
            if(_loc3_ == 0)
            {
               _loc4_ = _loc4_ + this.var_163[_loc3_] * 100;
            }
            if(_loc3_ == 1)
            {
               _loc4_ = _loc4_ + this.var_163[_loc3_] * 10000;
            }
            if(_loc3_ == 2)
            {
               _loc4_ = _loc4_ + this.var_163[_loc3_] * 30000;
            }
            if(_loc3_ == 3)
            {
               _loc4_ = _loc4_ + this.var_163[_loc3_] * 5000;
            }
            if(_loc3_ == 4)
            {
               _loc4_ = _loc4_ + (36 - this.var_163[_loc3_]) * 10000;
            }
            if(_loc3_ == 5)
            {
               _loc4_ = _loc4_ + (2200 - this.var_163[_loc3_]) * 990;
            }
            if(_loc3_ == 6)
            {
               _loc4_ = _loc4_ + this.var_163[_loc3_] * 100500;
            }
            if(_loc3_ == 7)
            {
               _loc4_ = _loc4_ + (720 - this.var_163[_loc3_]) * 1450;
            }
            if(_loc3_ == 8)
            {
               _loc4_ = _loc4_ + (120 - this.var_163[_loc3_]) * 680;
            }
            if(_loc3_ == 9)
            {
               _loc4_ = _loc4_ + (108 - this.var_163[_loc3_]) * 1030;
            }
            if(_loc3_ == 10)
            {
               _loc4_ = _loc4_ + (108 - this.var_163[_loc3_]) * 850;
            }
            if(_loc3_ == 11)
            {
               _loc4_ = _loc4_ + (360 - this.var_163[_loc3_]) * 1050;
            }
            if(_loc3_ == 12)
            {
               _loc4_ = _loc4_ + (50 - this.var_163[_loc3_]) * 3060;
            }
            _loc3_++;
         }
         if(Game.var_205)
         {
            Game.var_205.trackEvent("SCORE","TARGET: " + this.var_805 + class_2.method_14(-1820302668) + "TOTAL: " + String(_loc4_) + class_2.method_14(-1820302668) + class_2.method_14(-1820302846) + String(this.var_163["0"]) + class_2.method_14(-1820302668) + "COMPLETE: " + String(this.var_163["1"]) + class_2.method_14(-1820302668) + "3 STARS: " + String(this.var_163["2"]) + class_2.method_14(-1820302668) + "STARS: " + String(this.var_163["3"]) + class_2.method_14(-1820302668) + "SKIPPED: " + String(this.var_163["4"]) + class_2.method_14(-1820302668) + "TIME: " + String(this.var_163["5"]) + class_2.method_14(-1820302668) + "RECORDS: " + String(this.var_163["6"]) + class_2.method_14(-1820302668) + "HANDS: " + String(this.var_163["7"]) + class_2.method_14(-1820302668) + "PLATFORMS: " + String(this.var_163["8"]) + class_2.method_14(-1820302668) + "COLOURING: " + String(this.var_163["9"]) + class_2.method_14(-1820302668) + "REELS: " + String(this.var_163["10"]) + class_2.method_14(-1820302668) + "SPIKES: " + String(this.var_163["11"]) + class_2.method_14(-1820302668) + "BLADES: " + String(this.var_163["12"]));
         }
         var _loc5_:int = 0;
         while(_loc5_ < this.var_163.length)
         {
            this.var_1009[_loc5_] = this.var_163[_loc5_];
            _loc5_++;
         }
         if(this.var_805 == class_2.method_14(-1820302448))
         {
            param1 = false;
         }
         else
         {
            param1 = true;
         }
         var _loc6_:* = 0;
         if(param1)
         {
            _loc6_ = 5;
            class_12.addTween(this.var_457,{
               class_2.method_14(-1820302664):0,
               "time":4,
               "alpha":1,
               "visible":true,
               "scaleX":1,
               "scaleY":1,
               "onComplete":this.method_684
            });
            Game.name_34.y = App.const_23;
            Game.name_34.x = 0;
            Game.method_225(25);
         }
         this.var_327 = 1;
         class_12.addTween(this.var_370,{
            class_2.method_14(-1820302664):_loc6_,
            "time":4,
            "alpha":1,
            "y":85.3,
            "visible":true,
            "onStart":this.method_493
         });
         class_12.addTween(this.var_412,{
            class_2.method_14(-1820302664):_loc6_,
            "time":1,
            "alpha":1,
            "visible":true
         });
         class_12.addTween(this.var_643,{
            class_2.method_14(-1820302664):_loc6_,
            "time":1,
            "alpha":1,
            "visible":true
         });
      }
      
      private final function method_684() : void
      {
         class_12.addTween(this.var_457,{
            class_2.method_14(-1820302664):0,
            "time":1,
            "alpha":0,
            "visible":false
         });
      }
      
      private final function method_493() : void
      {
         if(this._totalScore > 100)
         {
            Game.name_34.y = 70;
            Game.name_34.x = 0;
            Game.method_225(15);
         }
         this._currentNumTT = 0;
         this.method_494();
         if(this.var_327 > 1)
         {
            class_12.addTween(this,{
               class_2.method_14(-1820302664):0,
               "time":1,
               "_totalScore":this._scoreTemp,
               "onUpdate":this.method_434
            });
            class_12.addTween(this.var_370.score,{
               class_2.method_14(-1820302664):0,
               "time":0.2,
               "_text_color":16772693,
               "onComplete":function():void
               {
                  class_12.addTween(var_370.score,{
                     "delay":0,
                     "time":0.2,
                     "_text_color":16777215
                  });
               }
            });
            class_12.addTween(this.var_370,{
               class_2.method_14(-1820302664):0,
               "time":0.1,
               "scaleX":1.1,
               "scaleY":1.1,
               "onComplete":function():void
               {
                  class_12.addTween(var_370,{
                     "delay":0,
                     "time":0.1,
                     "scaleX":1,
                     "scaleY":1
                  });
               }
            });
         }
         class_12.addTween(this.var_199[this.var_327 - 1],{
            class_2.method_14(-1820302664):0,
            "time":2,
            "x":90,
            "alpha":1,
            "visible":true,
            "transition":"easeOutElastic"
         });
         class_12.addTween(this,{
            class_2.method_14(-1820302664):0.1,
            "time":0.5,
            "_currentNumTT":this.var_1009[this.var_327 - 1],
            "onUpdate":this.method_494,
            "onComplete":this.method_653,
            "transition":"linear"
         });
      }
      
      private final function method_653() : void
      {
         if(this.var_327 <= 12)
         {
            this.var_327++;
            this.method_493();
         }
         else
         {
            Game.name_34.y = 0;
            Game.name_34.x = App.const_7 * Math.random();
            Game.method_225(15);
            Game.name_34.y = 100;
            Game.name_34.x = App.const_7 * Math.random();
            Game.method_225(10);
            Game.name_34.y = 200;
            Game.name_34.x = App.const_7 * Math.random();
            Game.method_225(8);
            Game.name_34.y = 300;
            Game.name_34.x = App.const_7 * Math.random();
            Game.method_225(4);
         }
      }
      
      private final function method_494() : void
      {
         this._scoreTemp = 0;
         this.var_354[this.var_327 - 1] = this._currentNumTT;
         var _loc1_:int = 0;
         while(_loc1_ < this.var_354.length)
         {
            if(_loc1_ == 5)
            {
               this.var_199[_loc1_].tt.text = this.method_465(this.var_354[_loc1_]);
            }
            else
            {
               this.var_199[_loc1_].tt.text = String(this.var_354[_loc1_]);
            }
            if(_loc1_ == 0)
            {
               if(this.var_327 > 0)
               {
                  this._scoreTemp = this._scoreTemp + this.var_354[_loc1_] * 100;
               }
            }
            if(_loc1_ == 1)
            {
               if(this.var_327 > 1)
               {
                  this._scoreTemp = this._scoreTemp + this.var_354[_loc1_] * 10000;
               }
            }
            if(_loc1_ == 2)
            {
               if(this.var_327 > 2)
               {
                  this._scoreTemp = this._scoreTemp + this.var_354[_loc1_] * 30000;
               }
            }
            if(_loc1_ == 3)
            {
               if(this.var_327 > 3)
               {
                  this._scoreTemp = this._scoreTemp + this.var_354[_loc1_] * 5000;
               }
            }
            if(_loc1_ == 4)
            {
               if(this.var_327 > 4)
               {
                  this._scoreTemp = this._scoreTemp + (36 - this.var_354[_loc1_]) * 10000;
               }
            }
            if(_loc1_ == 5)
            {
               if(this.var_327 > 5)
               {
                  this._scoreTemp = this._scoreTemp + (2200 - this.var_354[_loc1_]) * 990;
               }
            }
            if(_loc1_ == 6)
            {
               if(this.var_327 > 6)
               {
                  this._scoreTemp = this._scoreTemp + this.var_354[_loc1_] * 100500;
               }
            }
            if(_loc1_ == 7)
            {
               if(this.var_327 > 7)
               {
                  this._scoreTemp = this._scoreTemp + (720 - this.var_354[_loc1_]) * 1450;
               }
            }
            if(_loc1_ == 8)
            {
               if(this.var_327 > 8)
               {
                  this._scoreTemp = this._scoreTemp + (120 - this.var_354[_loc1_]) * 680;
               }
            }
            if(_loc1_ == 9)
            {
               if(this.var_327 > 9)
               {
                  this._scoreTemp = this._scoreTemp + (108 - this.var_354[_loc1_]) * 1030;
               }
            }
            if(_loc1_ == 10)
            {
               if(this.var_327 > 10)
               {
                  this._scoreTemp = this._scoreTemp + (108 - this.var_354[_loc1_]) * 850;
               }
            }
            if(_loc1_ == 11)
            {
               if(this.var_327 > 11)
               {
                  this._scoreTemp = this._scoreTemp + (360 - this.var_354[_loc1_]) * 1050;
               }
            }
            if(_loc1_ == 12)
            {
               if(this.var_327 > 12)
               {
                  this._scoreTemp = this._scoreTemp + (50 - this.var_354[_loc1_]) * 3060;
               }
            }
            _loc1_++;
         }
      }
      
      private final function method_539(param1:String, param2:Number) : String
      {
         if(param1.length < param2)
         {
            return this.method_539("0" + param1,param2);
         }
         return param1;
      }
      
      private final function method_465(param1:int) : String
      {
         var _loc2_:int = param1 % 60;
         var _loc3_:int = Math.floor(param1 / 60) % 60;
         var _loc4_:int = Math.floor(param1 / 3600) % 24;
         return String(_loc4_ + ":" + _loc3_ + ":" + _loc2_);
      }
      
      private final function method_434() : void
      {
         if(this.var_805 == class_2.method_14(-1820302448))
         {
            SoundAS.group(class_2.method_14(-1820302475)).playFx(class_2.method_14(-1820302627),0.6);
         }
         else
         {
            SoundAS.group(class_2.method_14(-1820302475)).playFx(class_2.method_14(-1820302627),0.4);
         }
         this.var_370.score.text = this.method_539(String(this._totalScore),9);
      }
      
      public final function stop() : void
      {
         class_12.method_97(this);
         class_12.method_97(this.var_199[0]);
         class_12.method_97(this.var_199[1]);
         class_12.method_97(this.var_199[2]);
         class_12.method_97(this.var_199[3]);
         class_12.method_97(this.var_199[4]);
         class_12.method_97(this.var_199[5]);
         class_12.method_97(this.var_199[6]);
         class_12.method_97(this.var_199[7]);
         class_12.method_97(this.var_199[8]);
         class_12.method_97(this.var_199[9]);
         class_12.method_97(this.var_199[10]);
         class_12.method_97(this.var_199[11]);
         class_12.method_97(this.var_199[12]);
         class_12.method_97(this.var_370.score);
         class_12.method_97(this.var_370);
         class_12.method_97(this.var_643);
         class_12.method_97(this.var_412);
         class_12.method_97(this.var_457);
         Game.name_34.stop();
      }
   }
}
