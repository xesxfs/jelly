package package_27
{
   import com.remindgames.jellygame.App;
   import com.remindgames.jellygame.Game;
   import com.remindgames.jellygame.class_192;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import package_1.class_12;
   import package_23.class_178;
   import package_30.class_194;
   
   public final class class_179 extends Sprite
   {
       
      
      private var _bg:class_178;
      
      private var var_788:class_178;
      
      private var var_812:class_178;
      
      private var var_439:class_192;
      
      private var var_533:class_192;
      
      private var var_436:class_192;
      
      private var var_1134:class_192;
      
      private var var_1217:class_192;
      
      private var var_991:int = 16;
      
      private var var_1201:int = 0;
      
      private var var_1181:int = 3;
      
      private var var_1141:int = 4;
      
      private var var_332:Array;
      
      private var var_1176:Number = 120;
      
      private var var_1140:Number = 100;
      
      private var var_949:int = 0;
      
      private var var_1177:int = 0;
      
      private var var_1161:Point;
      
      private var var_530:MovieClip;
      
      private var colorYelow:ColorTransform;
      
      private var colorRed:ColorTransform;
      
      private var colorBlue:ColorTransform;
      
      private var _stage1:class_178;
      
      private var _stage2:class_178;
      
      private var _stage3:class_178;
      
      private var var_425:MovieClip;
      
      private var var_498:MovieClip;
      
      private var var_377:MovieClip;
      
      private var _level_unlockStars1:MovieClip;
      
      private var _level_unlockStars2:MovieClip;
      
      private var var_809:int = 0;
      
      public var _currentStage:int = 0;
      
      private var var_1146:Array;
      
      private var var_507:Sprite;
      
      private var _level_lock2:class_178;
      
      private var _level_lock3:class_178;
      
      private var var_1184:Boolean = false;
      
      private var var_945:Array;
      
      private var var_996:Array;
      
      private var var_801:Array;
      
      private var var_792:class_192;
      
      private var var_793:class_192;
      
      private var var_748:class_192;
      
      private var var_777:class_192;
      
      private var var_1096:class_192;
      
      public function class_179()
      {
         var _loc8_:* = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc13_:* = null;
         this.var_332 = [];
         this.var_1161 = new Point(80,80);
         this.colorYelow = new ColorTransform();
         this.colorRed = new ColorTransform(1,1,1,1,5,-77);
         this.colorBlue = new ColorTransform(1,1,1,1,-153,-7,228);
         this.var_1146 = new Array(true,false,false);
         this.var_945 = new Array(200,-150,-500);
         this.var_996 = new Array(class_2.method_14(-1820302838),class_2.method_14(-1820302539),class_2.method_14(-1820302639));
         this.var_801 = new Array(0,0,0);
         super();
         class_194.init();
         this.var_949 = int(Game.var_135 / this.var_991) + 1;
         this._bg = new class_178();
         this._bg.method_111("MC_levels_bg");
         this._bg.stop();
         this._bg.x = -455.45;
         this._bg.y = -93.15;
         addChild(this._bg);
         this.var_788 = new class_178();
         this.var_788.method_111("MC_levels_hand");
         this.var_788.stop();
         this.var_788.x = -435.95;
         this.var_788.y = -95.8;
         addChild(this.var_788);
         this.var_812 = new class_178();
         this.var_812.method_111("MC_levels_jelly");
         this.var_812.stop();
         this.var_812.x = -151;
         this.var_812.y = 334.1;
         addChild(this.var_812);
         this.var_507 = new Sprite();
         this._stage1 = new class_192("MC_Levels_stage1",10,125,class_2.method_14(-1820302749),1,1,1);
         this._stage2 = new class_192("MC_Levels_stage2",360,125,class_2.method_14(-1820302752),1,1,1);
         this._level_lock2 = new class_178();
         this._level_lock2.method_111("MC_levels_lock");
         this._level_lock2.stop();
         this._level_lock2.x = 31;
         this._level_lock2.y = 62.05;
         this._level_lock2.alpha = 0;
         this._level_lock2.visible = false;
         this._stage2.addChild(this._level_lock2);
         this._stage3 = new class_192("MC_Levels_stage3",710,125,class_2.method_14(-1820302740),1,1,1);
         this._level_lock3 = new class_178();
         this._level_lock3.method_111("MC_levels_lock");
         this._level_lock3.stop();
         this._level_lock3.x = 31;
         this._level_lock3.y = 62.05;
         this._level_lock3.alpha = 0;
         this._level_lock3.visible = false;
         this._stage3.addChild(this._level_lock3);
         this.var_507.addChild(this._stage1);
         this.var_507.addChild(this._stage2);
         this.var_507.addChild(this._stage3);
         this.var_507.alpha = 0;
         this.var_507.visible = false;
         addChild(this.var_507);
         this.var_425 = new MC_levels_numStars();
         this.var_425.x = 230.5;
         this.var_425.y = 423.35;
         this.var_425.visible = false;
         this.var_425.alpha = 0;
         this.var_425.cacheAsBitmap = true;
         this.var_425.mouseEnabled = false;
         this.var_425.mouseChildren = false;
         addChild(this.var_425);
         this.var_377 = new MC_levels_score();
         this.var_377.x = 0;
         this.var_377.y = 25;
         this.var_377.alpha = 0;
         this.var_377.visible = 0;
         this.var_377.mouseChildren = false;
         this.var_377.mouseEnabled = false;
         this.var_377.scaleX = 0.7;
         this.var_377.cacheAsBitmap = true;
         this.var_377.scaleY = 0.7;
         addChild(this.var_377);
         this.var_498 = new MC_levels_stageName();
         this.var_498.x = 239.95;
         this.var_498.y = 20.15;
         this.var_498.alpha = 0;
         this.var_498.visible = false;
         this.var_498.cacheAsBitmap = true;
         this.var_498.mouseEnabled = false;
         this.var_498.mouseChildren = false;
         addChild(this.var_498);
         this._level_unlockStars1 = new MC_levels_unlockStars();
         this._level_unlockStars1.x = 35.75;
         this._level_unlockStars1.y = 100.05;
         this._level_unlockStars1.alpha = 0.3;
         this._level_unlockStars1.cacheAsBitmap = true;
         this._level_unlockStars1.mouseChildren = false;
         this._level_unlockStars1.mouseEnabled = false;
         this._level_lock2.addChild(this._level_unlockStars1);
         this._level_unlockStars2 = new MC_levels_unlockStars();
         this._level_unlockStars2.x = 35.75;
         this._level_unlockStars2.y = 100.05;
         this._level_unlockStars2.alpha = 0.3;
         this._level_unlockStars2.cacheAsBitmap = true;
         this._level_unlockStars2.mouseChildren = false;
         this._level_unlockStars2.mouseEnabled = false;
         this._level_lock3.addChild(this._level_unlockStars2);
         this.var_1096 = new class_192("UI_button_score",630,463.2,"Levels_score",0.9,1,2,true);
         addChild(this.var_1096);
         this.var_1134 = new class_192("UI_button_menu",21.35,463.2,class_2.method_14(-1820302716),0.9,1,2,true);
         addChild(this.var_1134);
         this.var_439 = new class_192("UI_button_back",27.65,243.35,class_2.method_14(-1820302694));
         this.var_439.visible = false;
         this.var_439.alpha = 0;
         addChild(this.var_439);
         this.var_533 = new class_192("UI_button_back",27.65,243.35,class_2.method_14(-1820302600));
         this.var_533.visible = false;
         this.var_533.alpha = 0;
         addChild(this.var_533);
         this.var_436 = new class_192("UI_button_next",616.6,243.35,class_2.method_14(-1820302833));
         this.var_436.visible = false;
         this.var_436.alpha = 0;
         addChild(this.var_436);
         this.var_792 = new class_192("UI_button_music",645,20,class_2.method_14(-1820302585),0.7,1,2,true);
         addChild(this.var_792);
         this.var_792.visible = false;
         this.var_793 = new class_192("UI_button_music_off",645,20,class_2.method_14(-1820302680),0.7,1,2,true);
         addChild(this.var_793);
         this.var_793.visible = false;
         this.var_748 = new class_192("UI_button_sound",600,20,class_2.method_14(-1820302421),0.7,1,2,true);
         addChild(this.var_748);
         this.var_748.visible = false;
         this.var_777 = new class_192("UI_button_sound_off",600,20,class_2.method_14(-1820302421),0.7,1,2,true);
         addChild(this.var_777);
         this.var_777.visible = false;
         this.var_530 = new MC_levels_text();
         this.var_530.scaleX = 0.8;
         this.var_530.scaleY = 0.8;
         this.var_530.x = App.const_11 - this.var_530.width * 0.5;
         this.var_530.y = 0;
         this.var_530.alpha = 0;
         this.var_530.visible = false;
         TextField(this.var_530.numLevel).autoSize = TextFieldAutoSize.CENTER;
         addChild(this.var_530);
         var _loc1_:int = Game.var_537;
         var _loc2_:int = int(_loc1_ / this.var_991) + 1;
         this.var_1177 = _loc2_;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:int = 0;
         var _loc6_:Array = Game.var_183.levels;
         var _loc7_:int = 0;
         while(_loc7_ < _loc2_)
         {
            _loc8_ = new Sprite();
            _loc8_.scaleX = 0.5;
            _loc8_.scaleY = 0.5;
            _loc8_.x = 200;
            _loc8_.y = 200;
            _loc9_ = 0;
            while(_loc9_ < this.var_1181)
            {
               if(_loc5_ >= _loc1_)
               {
                  break;
               }
               _loc10_ = 0;
               while(_loc10_ < this.var_1141)
               {
                  if(_loc5_ >= _loc1_)
                  {
                     break;
                  }
                  _loc5_++;
                  _loc11_ = new class_192("UI_levelIcon",_loc10_ * this.var_1176,_loc9_ * this.var_1140,class_2.method_14(-1820302442) + String(_loc5_),0.6,1,2,true);
                  _loc12_ = new MC_levels_text();
                  _loc13_ = new class_178();
                  _loc13_.name = class_2.method_14(-1820302584);
                  _loc13_.method_111("MC_level_stars");
                  _loc13_.smoothing = true;
                  _loc13_.x = 29.1;
                  _loc13_.y = 78.75;
                  _loc13_.mouseChildren = false;
                  _loc13_.mouseEnabled = false;
                  if(!_loc6_[_loc5_ - 1].opened)
                  {
                     _loc13_.gotoAndStop(0);
                     _loc11_.mouseChildren = false;
                     _loc11_.mouseEnabled = false;
                  }
                  else
                  {
                     _loc13_.gotoAndStop(_loc6_[_loc5_ - 1].stars + 2);
                     _loc11_.mouseChildren = true;
                     _loc11_.mouseEnabled = true;
                  }
                  _loc12_.numLevel.text = String(_loc5_);
                  _loc12_.x = 32.05;
                  _loc12_.y = 17.9;
                  _loc11_.addChild(_loc13_);
                  _loc11_.addChild(_loc12_);
                  _loc12_.mouseChildren = false;
                  _loc12_.mouseEnabled = false;
                  _loc8_.addChild(_loc11_);
                  _loc10_++;
               }
               _loc9_++;
            }
            this.var_332[this.var_332.length] = _loc8_;
            _loc7_++;
         }
         this.update();
         this.addEventListener(MouseEvent.CLICK,this.method_604);
      }
      
      public final function method_439(param1:int, param2:int, param3:Boolean = false) : void
      {
         var var_476:int = param1;
         var var_1215:int = param2;
         var var_1004:Boolean = param3;
         if(Game.var_205)
         {
            Game.var_205.trackPageview("LEVELS_main: " + String(var_476));
         }
         if(var_1004)
         {
            this.method_309(true);
            class_12.addTween(new Shape(),{
               class_2.method_14(-1820302664):0.5,
               "onComplete":function():*
               {
                  _currentStage = _currentStage + 1;
                  changeButtons("STAGE");
                  animList(1);
                  updateBackNext();
                  if(_currentStage == 1)
                  {
                     class_12.addTween(_bg,{
                        "delay":0,
                        "time":2,
                        "_colorTransform":colorYelow
                     });
                  }
                  else if(_currentStage == 2)
                  {
                     class_12.addTween(_bg,{
                        "delay":0,
                        "time":2,
                        "_colorTransform":colorRed
                     });
                  }
                  else if(_currentStage == 3)
                  {
                     class_12.addTween(_bg,{
                        "delay":0,
                        "time":2,
                        "_colorTransform":colorBlue
                     });
                  }
               }
            });
         }
         this.var_533.visible = false;
         this.var_533.alpha = 0;
         this.method_309(true);
         this.var_1184 = true;
         this._currentStage = var_476;
         this.var_809 = var_1215;
         var var_183:Array = Game.var_183.levels;
         var var_1214:int = 0;
         var var_768:int = 0;
         var var_1216:int = 0;
         var var_1206:int = 0;
         var var_1211:int = 0;
         var var_49:int = 0;
         while(var_49 < var_183.length)
         {
            var_1214 = var_1214 + var_183[var_49].record;
            var_768 = var_768 + var_183[var_49].stars;
            if(var_49 <= 11)
            {
               var_1216 = var_1216 + var_183[var_49].stars;
            }
            if(var_49 > 11 && var_49 <= 23)
            {
               var_1206 = var_1206 + var_183[var_49].stars;
            }
            if(var_49 > 23)
            {
               var_1211 = var_1211 + var_183[var_49].stars;
            }
            var_49++;
         }
         this.var_801[0] = var_1216;
         this.var_801[1] = var_1206;
         this.var_801[2] = var_1211;
         this.var_377.score.text = class_2.method_14(-1820302846) + String(var_1214);
         this.var_377.num.text = String(var_768);
         this.var_425.num.text = String(this.var_801[this._currentStage - 1]) + class_2.method_14(-1820302763);
         this._level_unlockStars1.num.text = String(Game.UNLOCK_STAGE2_STARS - var_768);
         this._level_unlockStars2.num.text = String(Game.UNLOCK_STAGE3_STARS - var_768);
         if(var_1215 != 3)
         {
            if(Game.UNLOCK_STAGE2_STARS - var_768 <= 0)
            {
               var_1215 = 2;
               this.var_809 = 2;
            }
            if(Game.UNLOCK_STAGE3_STARS - var_768 <= 0)
            {
               var_1215 = 3;
               this.var_809 = 3;
            }
         }
         this.var_507.x = this.var_945[var_476 - 1];
         class_12.addTween(this.var_507,{
            class_2.method_14(-1820302664):0,
            "time":0.5,
            "alpha":1,
            "visible":true
         });
         if(var_1215 == 1)
         {
            this._level_lock2.visible = true;
            this._level_lock2.alpha = 1;
            this._level_lock3.visible = true;
            this._level_lock3.alpha = 1;
         }
         else if(var_1215 == 2)
         {
            this._level_lock2.visible = false;
            this._level_lock2.alpha = 0;
            this._level_lock3.visible = true;
            this._level_lock3.alpha = 1;
         }
         else if(var_1215 == 3)
         {
            this._level_lock2.visible = false;
            this._level_lock2.alpha = 0;
            this._level_lock3.visible = false;
            this._level_lock3.alpha = 0;
         }
         class_12.addTween(this.var_498,{
            class_2.method_14(-1820302664):0,
            "time":0.5,
            "alpha":1,
            "visible":true
         });
         this.updateBackNext();
         this.method_531(true);
         this.method_316();
      }
      
      private final function method_607(param1:int) : *
      {
         this._currentStage = param1;
         this.var_507.x = this.var_945[this._currentStage - 1];
         this.var_498.stageName.text = this.var_996[this._currentStage - 1];
         if(this._currentStage == 1)
         {
            class_12.addTween(this._bg,{
               class_2.method_14(-1820302664):0,
               "time":0,
               "_colorTransform":this.colorYelow
            });
         }
         else if(this._currentStage == 2)
         {
            class_12.addTween(this._bg,{
               class_2.method_14(-1820302664):0,
               "time":0,
               "_colorTransform":this.colorRed
            });
         }
         else if(this._currentStage == 3)
         {
            class_12.addTween(this._bg,{
               class_2.method_14(-1820302664):0,
               "time":0,
               "_colorTransform":this.colorBlue
            });
         }
      }
      
      private final function method_316() : void
      {
         if(Game.var_460)
         {
            this.var_793.visible = false;
            this.var_792.visible = true;
         }
         else
         {
            this.var_793.visible = true;
            this.var_792.visible = false;
         }
         if(Game.var_452)
         {
            this.var_777.visible = false;
            this.var_748.visible = true;
         }
         else
         {
            this.var_777.visible = true;
            this.var_748.visible = false;
         }
      }
      
      private final function method_531(param1:Boolean) : void
      {
         if(param1)
         {
            this.var_425.visible = true;
            this.var_425.alpha = 1;
            this.var_377.visible = true;
            this.var_377.alpha = 1;
         }
         else
         {
            this.var_425.visible = false;
            this.var_425.alpha = 0;
            this.var_377.visible = false;
            this.var_377.alpha = 0;
         }
      }
      
      private final function updateBackNext() : void
      {
         if(this._currentStage == 1)
         {
            this.var_439.visible = false;
            this.var_439.alpha = 0;
            this.var_436.visible = true;
            this.var_436.alpha = 1;
            this._stage1.mouseEnabled = true;
            this._stage1.mouseChildren = true;
            this._stage2.mouseEnabled = false;
            this._stage2.mouseChildren = false;
            this._stage3.mouseEnabled = false;
            this._stage3.mouseChildren = false;
         }
         else if(this._currentStage == 2)
         {
            this.var_439.visible = true;
            this.var_439.alpha = 1;
            this.var_436.visible = true;
            this.var_436.alpha = 1;
            this._stage1.mouseEnabled = false;
            this._stage1.mouseChildren = false;
            if(this.var_809 >= 2)
            {
               this._stage2.mouseEnabled = true;
               this._stage2.mouseChildren = true;
            }
            this._stage3.mouseEnabled = false;
            this._stage3.mouseChildren = false;
         }
         else if(this._currentStage == 3)
         {
            this.var_439.visible = true;
            this.var_439.alpha = 1;
            this.var_436.visible = false;
            this.var_436.alpha = 0;
            this._stage1.mouseEnabled = false;
            this._stage1.mouseChildren = false;
            this._stage2.mouseEnabled = false;
            this._stage2.mouseChildren = false;
            if(this.var_809 == 3)
            {
               this._stage3.mouseEnabled = true;
               this._stage3.mouseChildren = true;
            }
         }
         this.var_498.stageName.text = this.var_996[this._currentStage - 1];
      }
      
      private final function method_604(param1:MouseEvent) : void
      {
         if(param1.target.name == class_2.method_14(-1820302694))
         {
            this._currentStage = this._currentStage - 1;
            this.animList(-1);
            this.updateBackNext();
         }
         else if(param1.target.name == class_2.method_14(-1820302833))
         {
            this._currentStage = this._currentStage + 1;
            this.animList(1);
            this.updateBackNext();
         }
         if(this._currentStage == 1)
         {
            class_12.addTween(this._bg,{
               class_2.method_14(-1820302664):0,
               "time":2,
               "_colorTransform":this.colorYelow
            });
         }
         else if(this._currentStage == 2)
         {
            class_12.addTween(this._bg,{
               class_2.method_14(-1820302664):0,
               "time":2,
               "_colorTransform":this.colorRed
            });
         }
         else if(this._currentStage == 3)
         {
            class_12.addTween(this._bg,{
               class_2.method_14(-1820302664):0,
               "time":2,
               "_colorTransform":this.colorBlue
            });
         }
         if(param1.target.name == class_2.method_14(-1820302749))
         {
            this.method_345(1);
         }
         if(param1.target.name == class_2.method_14(-1820302752))
         {
            this.method_345(2);
         }
         if(param1.target.name == class_2.method_14(-1820302740))
         {
            this.method_345(3);
         }
         if(param1.target.name == class_2.method_14(-1820302600))
         {
            this.changeButtons(class_2.method_14(-1820302785));
            this.method_439(this._currentStage,this.var_809);
            this.method_309();
         }
         if(param1.target == this.var_792 || param1.target == this.var_793)
         {
            if(Game.method_260)
            {
               Game.method_260 = false;
            }
            else
            {
               Game.method_260 = true;
            }
            this.method_316();
         }
         if(param1.target == this.var_748 || param1.target == this.var_777)
         {
            if(Game.name_37)
            {
               Game.name_37 = false;
            }
            else
            {
               Game.name_37 = true;
            }
            this.method_316();
         }
      }
      
      private final function method_309(param1:Boolean = false) : void
      {
         var _loc2_:* = 0.4;
         if(param1)
         {
            _loc2_ = 0;
         }
         class_12.addTween(this.var_332[0],{
            class_2.method_14(-1820302664):0,
            "time":_loc2_,
            "alpha":0,
            "visible":false,
            "scaleX":0.5,
            "scaleY":0.5,
            "x":200,
            "y":200
         });
         class_12.addTween(this.var_332[1],{
            class_2.method_14(-1820302664):0,
            "time":_loc2_,
            "alpha":0,
            "visible":false,
            "scaleX":0.5,
            "scaleY":0.5,
            "x":200,
            "y":200
         });
         class_12.addTween(this.var_332[2],{
            class_2.method_14(-1820302664):0,
            "time":_loc2_,
            "alpha":0,
            "visible":false,
            "scaleX":0.5,
            "scaleY":0.5,
            "x":200,
            "y":200
         });
      }
      
      public final function method_345(param1:int) : void
      {
         if(Game.var_205)
         {
            Game.var_205.trackPageview("LEVELS_lev: " + String(param1));
         }
         if(this._currentStage != param1)
         {
            this.method_607(param1);
         }
         this.method_309(true);
         this.method_316();
         this.method_583();
         this.method_531(false);
         this.changeButtons(class_2.method_14(-1820302502));
         addChild(this.var_332[param1 - 1]);
         class_12.addTween(this.var_332[param1 - 1],{
            class_2.method_14(-1820302664):0,
            "time":0.4,
            "alpha":1,
            "visible":true,
            "scaleX":1,
            "scaleY":1,
            "x":130,
            "y":120
         });
         class_12.addTween(this.var_507,{
            class_2.method_14(-1820302664):0,
            "time":0.4,
            "alpha":0,
            "visible":false
         });
      }
      
      private final function changeButtons(param1:String) : void
      {
         if(param1 == class_2.method_14(-1820302502))
         {
            this.var_439.visible = false;
            this.var_439.alpha = 0;
            this.var_436.visible = false;
            this.var_436.alpha = 0;
            this.var_533.visible = true;
            this.var_533.alpha = 1;
         }
         else if(param1 == class_2.method_14(-1820302785))
         {
            this.updateBackNext();
            this.var_533.visible = false;
            this.var_533.alpha = 0;
         }
      }
      
      private final function method_583() : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc1_:Array = Game.var_183.levels;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < this.var_332.length)
         {
            _loc4_ = 0;
            while(_loc4_ < this.var_332[_loc3_].numChildren)
            {
               _loc2_ = _loc2_ + 1;
               if(!_loc1_[_loc2_ - 1].opened)
               {
                  this.var_332[_loc3_].getChildAt(_loc4_).mouseChildren = false;
                  this.var_332[_loc3_].getChildAt(_loc4_).mouseEnabled = false;
               }
               else
               {
                  this.var_332[_loc3_].getChildAt(_loc4_).mouseChildren = true;
                  this.var_332[_loc3_].getChildAt(_loc4_).mouseEnabled = true;
               }
               _loc5_ = 0;
               while(_loc5_ < this.var_332[_loc3_].getChildAt(_loc4_).numChildren)
               {
                  if(this.var_332[_loc3_].getChildAt(_loc4_).getChildAt(_loc5_).name == class_2.method_14(-1820302584))
                  {
                     this.var_332[_loc3_].getChildAt(_loc4_).getChildAt(_loc5_).mouseChildren = false;
                     this.var_332[_loc3_].getChildAt(_loc4_).getChildAt(_loc5_).mouseEnabled = false;
                     if(!_loc1_[_loc2_ - 1].opened)
                     {
                        this.var_332[_loc3_].getChildAt(_loc4_).getChildAt(_loc5_).gotoAndStop(0);
                     }
                     else
                     {
                        this.var_332[_loc3_].getChildAt(_loc4_).getChildAt(_loc5_).gotoAndStop(_loc1_[_loc2_ - 1].stars + 2);
                     }
                  }
                  _loc5_++;
               }
               _loc4_++;
            }
            _loc3_++;
         }
      }
      
      private final function animList(param1:Number) : void
      {
         class_12.addTween(this.var_507,{
            class_2.method_14(-1820302664):0,
            "time":0.3,
            "x":this.var_945[this._currentStage - 1]
         });
         this.var_425.num.text = String(this.var_801[this._currentStage - 1]) + class_2.method_14(-1820302763);
      }
      
      private final function update() : void
      {
         if(this.var_949 - 1 > 0)
         {
            this.var_439.visible = true;
         }
         else
         {
            this.var_439.visible = false;
         }
         if(this.var_949 + 1 <= 3)
         {
            this.var_436.visible = true;
         }
         else
         {
            this.var_436.visible = false;
         }
         var _loc1_:int = this.var_991 * this.var_949;
         if(_loc1_ > Game.var_537)
         {
            _loc1_ = Game.var_537;
         }
         this.var_530.numLevel.text = String(_loc1_) + "/" + String(Game.var_537);
      }
   }
}
