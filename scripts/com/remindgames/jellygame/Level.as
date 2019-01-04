package com.remindgames.jellygame
{
   import com.remindgames.jellygame.hint.class_203;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   import flash.utils.getDefinitionByName;
   import flash.utils.getTimer;
   import nape.constraint.class_196;
   import nape.geom.Vec2;
   import package_1.class_12;
   import package_23.class_178;
   import package_24.SWFProfiler;
   import package_29.Body;
   import package_29.class_198;
   import package_29.class_199;
   import package_29.class_205;
   import package_30.class_193;
   import package_31.class_197;
   import package_32.Polygon;
   import package_32.Shape;
   import package_33.class_206;
   import treefortress.sound.SoundAS;
   
   public final class Level extends Sprite
   {
      
      public static var var_232:Sprite;
      
      public static var space:class_197;
      
      private static var var_365:class_196;
      
      public static var var_233:class_202;
      
      protected static var var_204:Vector.<Object>;
      
      protected static var var_203:Vector.<Object>;
      
      protected static var var_301:Vector.<Object>;
      
      protected static var var_299:Vector.<Object>;
      
      public static var var_168:Vector.<Object>;
      
      protected static var var_167:Vector.<Object>;
      
      protected static var var_582:Vector.<Object>;
      
      protected static var var_601:Vector.<Object>;
      
      protected static var var_594:Vector.<Object>;
      
      public static var var_200:Vector.<Object>;
      
      public static var var_236:Vector.<Object>;
      
      protected static var var_842:Vector.<Object>;
      
      protected static var var_497:Vector.<Point>;
      
      protected static var var_843:Vec2;
      
      public static var name_53:Number = 0.0166666666666667;
      
      public static var stopAll:Boolean = true;
      
      protected static var var_768:int = 0;
      
      protected static var var_512:int = 0;
      
      protected static var var_433:Boolean = false;
      
      public static var var_162:class_178;
      
      protected static var var_588:Boolean = false;
      
      protected static var var_298:Vector.<Object>;
      
      protected static var var_415:Sprite;
      
      protected static var var_581:Sprite;
      
      protected static var var_328:class_178;
      
      public static var name_69:Boolean;
      
      protected static var var_473:Timer;
      
      public static var var_256:String = class_2.method_14(-1820302504);
      
      protected static var var_351:Timer;
      
      public static var var_212:Array = [0,0,0,0,0,0,0];
      
      private static var var_472:Sprite;
      
      private static var var_833:Boolean = true;
      
      private static var var_664:int = 0;
      
      private static var var_820:int = 0;
      
      private static var var_625:Timer;
      
      public static var var_576:Boolean = false;
      
      public static var var_330:class_203;
       
      
      private var var_933:int;
      
      private var var_670:Sprite;
      
      private var var_541:Sprite;
      
      private var var_1092:Boolean = false;
      
      private var _debug:class_206;
      
      private var var_715:Vector.<Object>;
      
      private var var_740:Vector.<Object>;
      
      private var var_743:Vector.<Object>;
      
      private var var_738:Vector.<Object>;
      
      private var var_880:Number = 3000;
      
      private var var_449:Number = 0;
      
      private var var_1059:Boolean = false;
      
      private var var_632:Sprite;
      
      private var var_1122:Boolean = false;
      
      private var var_1182:Bitmap;
      
      private var var_1163:Sprite;
      
      private var var_848:Sprite;
      
      private var var_856:Sprite;
      
      private var hands:Array;
      
      private var var_1112:Boolean = false;
      
      public function Level()
      {
         this.var_1182 = new Bitmap();
         this.var_1163 = new Sprite();
         this.hands = new Array();
         super();
      }
      
      private static function method_344() : void
      {
         if(!var_625)
         {
            var_625 = new Timer(10000,0);
            var_625.addEventListener(TimerEvent.TIMER,method_617);
         }
         else
         {
            var_625.repeatCount = 0;
            var_625.delay = 10000;
         }
         if(!var_625.running)
         {
            var_625.start();
         }
      }
      
      private static function method_617(param1:TimerEvent) : void
      {
         if(Game.var_205)
         {
            Game.var_205.trackEvent("FPS",String(int(SWFProfiler.method_228)));
         }
      }
      
      public static function restart() : void
      {
         var jj:int = 0;
         method_278();
         var_576 = false;
         if(Game.var_205)
         {
            Game.var_205.trackEvent(class_2.method_14(-1820302541),"Restart",String(Game.var_135),Number(Game.var_135));
         }
         var_212[6] = var_212[6] + 1;
         if(var_820 != Game.var_135)
         {
            var_820 = Game.var_135;
            var_664 = 0;
         }
         else
         {
            var_664 = var_664 + 1;
         }
         GUI.method_269(0);
         stopAll = true;
         if(var_473)
         {
            var_473.stop();
         }
         var_233.reset();
         var_233.method_378(var_497,var_843);
         var_433 = 0;
         var_512 = 0;
         name_69 = false;
         var_588 = false;
         if(var_256 == class_2.method_14(-1820302504))
         {
            var_162.method_174("MC_EXIT");
         }
         else if(var_256 == class_2.method_14(-1820302599))
         {
            var_162.method_174("MC_EXIT_red");
         }
         else if(var_256 == class_2.method_14(-1820302698))
         {
            var_162.method_174("MC_EXIT_blue");
         }
         var_162.stop();
         if(var_212)
         {
            jj = var_212[6];
            var_212.length = 0;
            var_212 = [0,0,0,0,0,0,jj];
         }
         var i:int = 0;
         if(var_204)
         {
            i = 0;
            while(i < var_204.length)
            {
               var_204[i].physics.position = var_204[i].start;
               var_204[i].open = false;
               i++;
            }
         }
         if(var_203)
         {
            i = 0;
            while(i < var_203.length)
            {
               var_203[i].physics.position = var_203[i].start;
               var_203[i].open = false;
               i++;
            }
         }
         if(var_301)
         {
            i = 0;
            while(i < var_301.length)
            {
               var_301[i].graphics.repeat = false;
               var_301[i].graphics.gotoAndStop(1);
               var_301[i].enabled = false;
               i++;
            }
         }
         if(var_299)
         {
            i = 0;
            while(i < var_299.length)
            {
               var_299[i].graphics.repeat = false;
               var_299[i].graphics.gotoAndStop(1);
               var_299[i].enabled = false;
               i++;
            }
         }
         if(var_168)
         {
            i = 0;
            while(i < var_168.length)
            {
               var_168[i].graphicstReelJelly.alpha = 0;
               var_168[i].graphicstReelJelly.visible = false;
               var_168[i].run = false;
               var_168[i].tension = 0;
               var_168[i].enable = true;
               i++;
            }
         }
         if(var_167)
         {
            i = 0;
            while(i < var_167.length)
            {
               var_167[i].physics.position = var_167[i].indexPos;
               var_167[i].pauseDelta = 0;
               if(var_167[i].start && var_167[i].end)
               {
                  var_167[i].move = true;
                  var_167[i].run = true;
                  var_167[i].target = var_167[i].start;
               }
               else
               {
                  var_167[i].move = false;
               }
               i++;
            }
         }
         if(var_236)
         {
            class_12.method_97(var_236[0].graphics);
         }
         if(var_328)
         {
            var_328.visible = false;
            class_12.method_97(var_328);
         }
         if(var_236)
         {
            i = 0;
            while(i < var_236.length)
            {
               var_236[i].graphics.x = var_236[i].indexPos.x;
               var_236[i].graphics.y = var_236[i].indexPos.y;
               var_236[i].graphics.rotation = 0;
               var_236[i].graphics.scaleX = 1;
               var_236[i].graphics.scaleY = 1;
               var_236[i].graphics.visible = true;
               var_236[i].graphics.alpha = 1;
               var_236[i].colected = false;
               var_236[i].physics.space = space;
               var_433 = false;
               i++;
            }
         }
         if(var_200)
         {
            i = 0;
            while(i < var_200.length)
            {
               var_200[i].graphics.scaleX = 1;
               var_200[i].graphics.scaleY = 1;
               var_200[i].graphics.rotation = 0;
               var_200[i].graphics.x = var_200[i].indexPos.x;
               var_200[i].graphics.y = var_200[i].indexPos.y;
               var_200[i].graphics.visible = true;
               var_200[i].graphics.alpha = 1;
               var_200[i].colected = false;
               var_200[i].physics.space = space;
               i++;
            }
         }
         if(var_330)
         {
            var_330.dispose();
         }
         method_344();
         Game.var_1031 = getTimer() / 1000;
         stopAll = false;
         if(var_664 >= 2)
         {
            if(var_833)
            {
               if(!var_472)
               {
                  var_472 = new class_86();
                  var_472.x = App.const_11;
                  var_472.y = 400;
                  var_472.mouseChildren = false;
                  var_472.mouseEnabled = false;
                  var_472.alpha = 0;
                  var_472.visible = false;
                  var_232.addChild(var_472);
               }
               var_833 = false;
               class_12.addTween(var_472,{
                  class_2.method_14(-1820302664):1,
                  "time":2,
                  "alpha":1,
                  "visible":true,
                  "onComplete":function():void
                  {
                     class_12.addTween(var_472,{
                        "delay":3,
                        "time":2,
                        "alpha":0,
                        "visible":false
                     });
                  }
               });
            }
         }
      }
      
      public static function method_278(param1:MouseEvent = null) : void
      {
         var_365.active = false;
      }
      
      public static function isButton(param1:class_200 = null, param2:String = null, param3:Shape = null) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         if(var_330)
         {
            var_330.method_249(false,false,false,true);
         }
         var_212["1"] = var_212["1"] + 1;
         if(param2 == class_2.method_14(-1820302647) || param2 == class_2.method_14(-1820302521))
         {
            _loc4_ = 0;
            while(_loc4_ < var_233._hands.length)
            {
               if(var_233._hands[_loc4_].isPlatformBlack)
               {
                  var_233._hands[_loc4_].isPlatformBlack = false;
                  var_233.removePoint(_loc4_);
               }
               _loc4_++;
            }
            _loc5_ = 0;
            while(true)
            {
               if(_loc5_ < var_301.length)
               {
                  if(var_301[_loc5_].physics.shapes.at(0) == param3)
                  {
                     if(!var_301[_loc5_].enabled)
                     {
                        SoundAS.group(class_2.method_14(-1820302475)).play(class_2.method_14(-1820302817),3);
                        SoundAS.group(class_2.method_14(-1820302475)).play(class_2.method_14(-1820302812),2);
                        var_301[_loc5_].enabled = true;
                        var_301[_loc5_].graphics.reverse = false;
                        var_301[_loc5_].graphics.play();
                        _loc6_ = 0;
                        while(_loc6_ < var_204.length)
                        {
                           if(!var_204[_loc6_].open)
                           {
                              var_204[_loc6_].open = true;
                           }
                           else
                           {
                              var_204[_loc6_].open = false;
                           }
                           _loc6_++;
                        }
                     }
                     else
                     {
                        SoundAS.group(class_2.method_14(-1820302475)).play(class_2.method_14(-1820302817),3);
                        SoundAS.group(class_2.method_14(-1820302475)).play(class_2.method_14(-1820302812),2);
                        var_301[_loc5_].enabled = false;
                        var_301[_loc5_].graphics.reverse = true;
                        var_301[_loc5_].graphics.play();
                        _loc6_ = 0;
                        while(_loc6_ < var_204.length)
                        {
                           if(var_204[_loc6_].open)
                           {
                              var_204[_loc6_].open = false;
                           }
                           else
                           {
                              var_204[_loc6_].open = true;
                           }
                           _loc6_++;
                        }
                     }
                     if(var_301[_loc5_].lock)
                     {
                        if(param2 == class_2.method_14(-1820302647))
                        {
                        }
                     }
                  }
                  else
                  {
                     _loc5_++;
                     continue;
                  }
               }
            }
         }
         else if(param2 == class_2.method_14(-1820302844) || param2 == class_2.method_14(-1820302720))
         {
            _loc4_ = 0;
            while(_loc4_ < var_233._hands.length)
            {
               if(var_233._hands[_loc4_].isPlatformWhite)
               {
                  var_233._hands[_loc4_].isPlatformWhite = false;
                  var_233.removePoint(_loc4_);
               }
               _loc4_++;
            }
            _loc5_ = 0;
            while(_loc5_ < var_299.length)
            {
               if(var_299[_loc5_].physics.shapes.at(0) == param3)
               {
                  if(!var_299[_loc5_].enabled)
                  {
                     SoundAS.group(class_2.method_14(-1820302475)).play(class_2.method_14(-1820302817),3);
                     SoundAS.group(class_2.method_14(-1820302475)).play(class_2.method_14(-1820302812),2);
                     var_299[_loc5_].enabled = true;
                     var_299[_loc5_].graphics.reverse = false;
                     var_299[_loc5_].graphics.gotoAndPlay(1);
                     _loc6_ = 0;
                     while(_loc6_ < var_203.length)
                     {
                        if(!var_203[_loc6_].open)
                        {
                           var_203[_loc6_].open = true;
                        }
                        else
                        {
                           var_203[_loc6_].open = false;
                        }
                        _loc6_++;
                     }
                  }
                  else
                  {
                     SoundAS.group(class_2.method_14(-1820302475)).play(class_2.method_14(-1820302817),3);
                     SoundAS.group(class_2.method_14(-1820302475)).play(class_2.method_14(-1820302812),2);
                     var_299[_loc5_].enabled = false;
                     var_299[_loc5_].graphics.reverse = true;
                     var_299[_loc5_].graphics.gotoAndPlay(1);
                     _loc6_ = 0;
                     while(_loc6_ < var_203.length)
                     {
                        if(var_203[_loc6_].open)
                        {
                           var_203[_loc6_].open = false;
                        }
                        else
                        {
                           var_203[_loc6_].open = true;
                        }
                        _loc6_++;
                     }
                  }
                  if(var_299[_loc5_].lock)
                  {
                     if(param2 == class_2.method_14(-1820302844))
                     {
                        break;
                     }
                     break;
                  }
                  break;
               }
               _loc5_++;
            }
         }
      }
      
      public static function isReel(param1:class_200 = null, param2:Shape = null) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < var_168.length)
         {
            if(param2 == var_168[_loc3_].physics.shapes.at(0))
            {
               var_212["3"] = var_212["3"] + 1;
               if(!var_168[_loc3_].run)
               {
                  var_168[_loc3_].hand = param1;
                  var_168[_loc3_].hand.reelID = _loc3_;
                  SoundAS.group(class_2.method_14(-1820302475)).play(class_2.method_14(-1820302648),0.4).pan = SoundManager.method_190(var_168[_loc3_].graphics.x);
                  var_168[_loc3_].run = true;
                  var_168[_loc3_].enable = false;
                  var_168[_loc3_].graphicstReelJelly.scaleX = 0.7;
                  var_168[_loc3_].graphicstReelJelly.scaleY = 0.7;
                  var_168[_loc3_].graphicstReelJelly.alpha = 0;
                  var_168[_loc3_].graphicstReelJelly.visible = true;
               }
            }
            _loc3_++;
         }
         if(var_330)
         {
            var_330.method_249(false,false,false,false,true);
         }
      }
      
      public static function method_390(param1:class_200 = null, param2:String = null, param3:Shape = null) : void
      {
         if(var_233.var_1007 != param2)
         {
            if(param1)
            {
               var_233.method_255(param1,-1,0);
            }
            SoundAS.group(class_2.method_14(-1820302475)).play(class_2.method_14(-1820302556) + String(class_207.method_179(5,6)),0.7);
         }
      }
      
      public static function method_319(param1:class_200 = null, param2:String = null, param3:Shape = null) : void
      {
         if(param2 == "DISK" || param2 == class_2.method_14(-1820302601))
         {
            SoundAS.group(class_2.method_14(-1820302475)).play(class_2.method_14(-1820302556) + String(class_207.method_179(5,6)),0.7);
            if(param1.var_1138)
            {
            }
            var_212["5"] = var_212["5"] + 1;
            var_233.method_255(param1,-1,0);
         }
         else if(param2 == class_2.method_14(-1820302656))
         {
            var_233.method_450();
            SoundAS.group(class_2.method_14(-1820302475)).play(class_2.method_14(-1820302556) + String(class_207.method_179(2,3)),0.7);
            var_212["5"] = var_212["5"] + 1;
            if(!var_351)
            {
               var_351 = new Timer(1000,1);
            }
            var_351.reset();
            var_351.repeatCount = 1;
            var_351.delay = 1000;
            var_351.addEventListener(TimerEvent.TIMER,method_381);
            var_351.start();
         }
      }
      
      private static function method_381(param1:TimerEvent) : void
      {
         var_351.stop();
         var_351.removeEventListener(TimerEvent.TIMER,method_381);
         GUI.method_295();
         restart();
      }
      
      public static function method_265(param1:class_200 = null, param2:String = null, param3:Shape = null) : void
      {
         if(var_330)
         {
            var_330.method_249(false,false,true);
         }
         if(var_233.var_1007 != param2)
         {
            var_212["2"] = var_212["2"] + 1;
            var_233.method_407(param2);
         }
      }
      
      public static function name_76(param1:class_200 = null, param2:String = null, param3:Shape = null) : void
      {
         var var_811:class_200 = param1;
         var var_1159:String = param2;
         var name_7:Shape = param3;
         if(var_330)
         {
            var_330.method_249(true);
         }
         var var_1200:int = var_236.length;
         var var_1191:int = 0;
         while(var_1191 < var_1200)
         {
            if(name_7 == var_236[var_1191].physics.shapes.at(0))
            {
               var_433 = true;
               var_236[var_1191].physics.space = null;
               if(!var_328)
               {
                  var_328 = new class_178();
                  var_328.method_111("MC_key_pick");
               }
               if(!var_415.contains(var_328))
               {
                  var_415.addChild(var_328);
               }
               var_328.gotoAndStop(1);
               var_328.visible = true;
               var_328.repeat = false;
               var_328.x = var_236[var_1191].graphics.x;
               var_328.y = var_236[var_1191].graphics.y;
               var_328.rotation = var_236[var_1191].graphics.rotation;
               var_328.scaleX = var_236[var_1191].graphics.scaleX;
               var_328.scaleY = var_236[var_1191].graphics.scaleY;
               var_328.gotoAndPlay(1);
               SoundAS.group(class_2.method_14(-1820302475)).play("Key",0.8).pan = SoundManager.method_190(var_236[var_1191].graphics.x);
               class_12.addTween(var_328,{
                  "rotation":190,
                  "scaleX":0.6,
                  "scaleY":0.6,
                  "x":var_162.x + var_162.width / 2,
                  "y":var_162.y + var_162.height / 2,
                  class_2.method_14(-1820302640):{
                     "x":App.const_11,
                     "y":App.const_23
                  },
                  "time":2,
                  "transition":"easeInOutExpo"
               });
               class_12.addTween(var_236[var_1191].graphics,{
                  "rotation":190,
                  "scaleX":0.6,
                  "scaleY":0.6,
                  "x":var_162.x + var_162.width / 2,
                  "y":var_162.y + var_162.height / 2 + 33,
                  class_2.method_14(-1820302640):{
                     "x":App.const_11,
                     "y":App.const_23
                  },
                  "time":2,
                  "transition":"easeInOutExpo",
                  "onComplete":function():*
                  {
                     if(var_433)
                     {
                        var_236[0].graphics.visible = false;
                        var_588 = true;
                        if(var_256 == "YELOW")
                        {
                           var_162.method_174("EXIT_open_key");
                        }
                        else if(var_256 == "RED")
                        {
                           var_162.method_174("EXIT_open_key_red");
                        }
                        else if(var_256 == "BLUE")
                        {
                           var_162.method_174("EXIT_open_key_blue");
                        }
                        var_162.play();
                        SoundAS.group("SFX").play("Exit_1",0.6).pan = SoundManager.method_190(var_162.x);
                        var_328.visible = false;
                        var_328.gotoAndStop(1);
                     }
                  }
               });
            }
            var_1191++;
         }
      }
      
      public static function method_491(param1:class_200 = null, param2:String = null, param3:Shape = null) : void
      {
         var var_1192:Boolean = false;
         var var_1197:int = 0;
         var var_1158:int = 0;
         var var_1166:Object = null;
         var var_1207:class_178 = null;
         var var_811:class_200 = param1;
         var var_1159:String = param2;
         var name_7:Shape = param3;
         var var_1213:int = var_200.length;
         var var_49:int = 0;
         while(var_49 < var_1213)
         {
            if(name_7 == var_200[var_49].physics.shapes.at(0))
            {
               if(!var_200[var_49].colected)
               {
                  var_200[var_49].colected = true;
                  if(var_330)
                  {
                     var_330.method_249(false,true);
                  }
                  var_512++;
                  GUI.method_269(var_512);
                  var_200[var_49].physics.space = null;
                  SoundAS.group(class_2.method_14(-1820302475)).play("Star",0.8).pan = SoundManager.method_190(var_200[var_49].graphics.x);
                  var_1192 = false;
                  var_1197 = 0;
                  if(!var_298)
                  {
                     var_298 = new Vector.<Object>();
                  }
                  var_1158 = 0;
                  while(var_1158 < var_298.length)
                  {
                     if(!var_298[var_1158].used)
                     {
                        var_1192 = true;
                        var_1197 = var_1158;
                        break;
                     }
                     var_1158++;
                  }
                  if(var_1192)
                  {
                     if(!var_415.contains(var_298[var_1197].graphics))
                     {
                        var_415.addChild(var_298[var_1197].graphics);
                     }
                     var_298[var_1197].used = true;
                     var_298[var_1197].graphics.x = var_200[var_49].graphics.x;
                     var_298[var_1197].graphics.y = var_200[var_49].graphics.y;
                     var_298[var_1197].graphics.rotation = var_200[var_49].graphics.rotation;
                     var_298[var_1197].graphics.scaleX = 1;
                     var_298[var_1197].graphics.scaleY = 1;
                     var_298[var_1197].graphics.repeat = false;
                     var_298[var_1197].graphics.alpha = 1;
                     var_298[var_1197].graphics.gotoAndPlay(1);
                     class_12.addTween(var_200[var_49].graphics,{
                        class_2.method_14(-1820302664):0,
                        "time":0.2,
                        "scaleX":0,
                        "scaleY":0,
                        "alpha":0,
                        "visible":false,
                        "onComplete":function():*
                        {
                        }
                     });
                     break;
                  }
                  var_1166 = {};
                  var_1207 = new class_178();
                  var_1207.method_111("MC_Star_pick");
                  var_1207.gotoAndStop(1);
                  var_1207.repeat = false;
                  var_415.addChild(var_1207);
                  var_1207.x = var_200[var_49].graphics.x;
                  var_1207.y = var_200[var_49].graphics.y;
                  var_1207.alpha = 1;
                  var_1207.rotation = var_200[var_49].graphics.rotation;
                  var_1207.scaleX = var_200[var_49].graphics.scaleX;
                  var_1207.scaleY = var_200[var_49].graphics.scaleY;
                  var_1207.gotoAndPlay(1);
                  var_1166.graphics = var_1207;
                  var_1166.used = true;
                  var_298[var_298.length] = var_1166;
                  class_12.addTween(var_200[var_49].graphics,{
                     class_2.method_14(-1820302664):0,
                     "time":0.2,
                     "scaleX":0,
                     "scaleY":0,
                     "alpha":0,
                     "visible":false,
                     "onComplete":function():*
                     {
                     }
                  });
                  break;
               }
            }
            var_49++;
         }
         if(var_512 == var_768)
         {
         }
      }
      
      public static function method_467(param1:Object, param2:String) : void
      {
         if(!name_69)
         {
            if(var_588)
            {
               class_12.addTween(Game.var_475,{
                  class_2.method_14(-1820302664):1,
                  "onComplete":Game.var_475.method_247
               });
               if(!var_233.var_700)
               {
                  Game.var_919 = getTimer() / 1000 - Game.var_1031;
                  Game.var_936 = var_512;
                  SoundAS.group(class_2.method_14(-1820302475)).getSound(class_2.method_14(-1820302648)).stop();
                  SoundAS.group(class_2.method_14(-1820302475)).getSound(class_2.method_14(-1820302472)).stop();
                  SoundAS.group(class_2.method_14(-1820302475)).getSound(class_2.method_14(-1820302489)).stop();
                  SoundAS.group(class_2.method_14(-1820302475)).getSound(class_2.method_14(-1820302467)).stop();
                  SoundAS.group(class_2.method_14(-1820302475)).getSound(class_2.method_14(-1820302469)).stop();
                  SoundAS.group(class_2.method_14(-1820302475)).getSound(class_2.method_14(-1820302494)).stop();
                  SoundAS.group(class_2.method_14(-1820302475)).getSound(class_2.method_14(-1820302492)).stop();
                  SoundAS.group(class_2.method_14(-1820302475)).getSound(class_2.method_14(-1820302670)).stop();
                  SoundAS.group(class_2.method_14(-1820302475)).getSound(class_2.method_14(-1820302672)).stop();
                  SoundAS.group(class_2.method_14(-1820302475)).getSound(class_2.method_14(-1820302671)).stop();
                  SoundAS.group(class_2.method_14(-1820302475)).getSound(class_2.method_14(-1820302659)).stop();
                  SoundAS.group(class_2.method_14(-1820302475)).getSound(class_2.method_14(-1820302658)).stop();
                  SoundAS.group(class_2.method_14(-1820302475)).getSound(class_2.method_14(-1820302662)).stop();
                  SoundAS.group(class_2.method_14(-1820302475)).getSound(class_2.method_14(-1820302660)).stop();
                  SoundAS.group(class_2.method_14(-1820302475)).getSound(class_2.method_14(-1820302560)).stop();
                  SoundAS.group(class_2.method_14(-1820302475)).getSound(class_2.method_14(-1820302817)).stop();
                  SoundAS.group(class_2.method_14(-1820302475)).getSound(class_2.method_14(-1820302410)).stop();
                  SoundAS.group(class_2.method_14(-1820302475)).getSound(class_2.method_14(-1820302636)).stop();
                  SoundAS.group(class_2.method_14(-1820302475)).getSound(class_2.method_14(-1820302748)).stop();
                  SoundAS.group(class_2.method_14(-1820302475)).getSound(class_2.method_14(-1820302673)).stop();
                  SoundAS.group(class_2.method_14(-1820302475)).getSound(class_2.method_14(-1820302627)).stop();
                  SoundAS.group(class_2.method_14(-1820302475)).getSound(class_2.method_14(-1820302648)).stop();
                  SoundAS.group(class_2.method_14(-1820302475)).getSound(class_2.method_14(-1820302596)).stop();
                  SoundAS.group(class_2.method_14(-1820302475)).getSound(class_2.method_14(-1820302595)).stop();
                  SoundAS.group(class_2.method_14(-1820302475)).getSound(class_2.method_14(-1820302594)).stop();
                  SoundAS.group(class_2.method_14(-1820302475)).getSound(class_2.method_14(-1820302812)).stop();
                  SoundAS.group(class_2.method_14(-1820302475)).play(class_2.method_14(-1820302826),2);
                  SoundAS.group(class_2.method_14(-1820302544)).fadeAllTo(0,1000,false);
                  var_233.method_616(new Point(var_162.x + var_162.width * 0.5,var_162.y + var_162.height * 0.5));
                  if(!var_473)
                  {
                     var_473 = new Timer(1700,1);
                  }
                  var_473.addEventListener(TimerEvent.TIMER,method_475);
                  var_473.reset();
                  var_473.delay = 1700;
                  var_473.repeatCount = 1;
                  var_473.start();
               }
            }
         }
      }
      
      public static function method_428(param1:class_200 = null, param2:String = null, param3:Shape = null) : void
      {
         if(param2 == class_2.method_14(-1820302540))
         {
            if(param1)
            {
               var_212["4"] = var_212["4"] + 1;
               var_233.method_255(param1,-1,0);
            }
            SoundAS.group(class_2.method_14(-1820302475)).play(class_2.method_14(-1820302556) + String(class_207.method_179(5,6)),0.7);
         }
         else if(param2 == class_2.method_14(-1820302415))
         {
            if(param1)
            {
               var_212["4"] = var_212["4"] + 1;
               var_233.method_255(param1,-1,0);
            }
            SoundAS.group(class_2.method_14(-1820302475)).play(class_2.method_14(-1820302556) + String(class_207.method_179(2,3)),0.7);
         }
         else if(param2 == class_2.method_14(-1820302633))
         {
            var_233.method_450();
            SoundAS.group(class_2.method_14(-1820302475)).play(class_2.method_14(-1820302556) + String(class_207.method_179(2,3)),0.7);
            var_212["4"] = var_212["4"] + 1;
            if(!var_351)
            {
               var_351 = new Timer(1000,1);
            }
            var_351.reset();
            var_351.repeatCount = 1;
            var_351.delay = 1000;
            var_351.addEventListener(TimerEvent.TIMER,method_381);
            var_351.start();
         }
      }
      
      private static function method_475(param1:TimerEvent) : void
      {
         var_625.stop();
         var_473.stop();
         var_473.removeEventListener(TimerEvent.TIMER,method_475);
         stopAll = true;
         name_69 = true;
      }
      
      public final function method_186(param1:int, param2:Number = 0) : void
      {
         var _loc6_:int = 0;
         GUI.method_269(0);
         stopAll = true;
         var _loc3_:Number = param2;
         if(param1 > 0 && param1 < 13)
         {
            var_256 = class_2.method_14(-1820302504);
         }
         if(param1 > 12 && param1 < 25)
         {
            var_256 = class_2.method_14(-1820302599);
         }
         if(param1 > 24 && param1 < 37)
         {
            var_256 = class_2.method_14(-1820302698);
         }
         class_193.init();
         if(!space)
         {
            space = new class_197(Vec2.method_65(0,1500));
         }
         if(param1 != this.var_933)
         {
            this.method_567();
            if(!this._debug && this.var_1092)
            {
               this._debug = new class_206(App.const_7 + 1000,App.const_8,1117971);
               addChild(this._debug.display);
            }
            class_201.create(space,20);
            this.var_933 = param1;
            if(!var_232)
            {
               var_232 = new Sprite();
               addChild(var_232);
               var_232.alpha = 1;
            }
            if(!this.var_541)
            {
               this.var_541 = new Sprite();
               this.var_541.name = class_2.method_14(-1820302819);
               var_232.addChild(this.var_541);
            }
            var _loc4_:Number = _loc3_ / 2;
            if(!this.var_848)
            {
               this.var_848 = new Sprite();
            }
            if(!var_232.contains(this.var_848))
            {
               var_232.addChild(this.var_848);
            }
            if(!var_581)
            {
               var_581 = new Sprite();
               var_232.addChild(var_581);
            }
            if(!this.var_670)
            {
               this.var_670 = new Sprite();
               var_232.addChild(this.var_670);
            }
            if(!this.var_632)
            {
               this.var_632 = new Sprite();
            }
            this.var_1112 = param2;
            this.method_580();
            if(!var_233)
            {
               var_233 = new class_202(space,var_497,var_843,param2);
            }
            else
            {
               var_233.method_378(var_497,var_843);
               var_233.method_453();
               var_233.method_436();
            }
            if(!var_232.contains(var_233))
            {
               var_232.addChild(var_233);
            }
            var_232.addChild(this.var_632);
            if(!var_415)
            {
               var_415 = new Sprite();
            }
            if(!var_232.contains(var_415))
            {
               var_232.addChild(var_415);
            }
            if(!this.var_856)
            {
               this.var_856 = new Sprite();
            }
            if(!var_232.contains(this.var_856))
            {
               var_232.addChild(this.var_856);
            }
            var_365 = new class_196(space.name_29,null,Vec2.name_5(),Vec2.name_5());
            var_365.space = space;
            var_365.active = false;
            var_365.name_45 = false;
            var_365.name_56 = 1.3;
            var_365.name_57 = 1;
            if(this._debug)
            {
               this._debug.var_695 = true;
               this._debug.var_603 = true;
               this._debug.var_572 = true;
            }
            method_344();
            if(param1 == 1 || param1 == 2 || param1 == 3 || param1 == 6 || param1 == 13 || param1 == 25)
            {
               if(!var_330)
               {
                  var_330 = new class_203(this.var_848,this.var_856);
               }
               var_330.method_680(param1);
            }
            this.addEventListener(Event.ENTER_FRAME,this.method_492);
            this.addEventListener(MouseEvent.MOUSE_DOWN,this.method_464);
            this.addEventListener(MouseEvent.MOUSE_UP,method_278);
            this.var_1122 = true;
            var _loc5_:Boolean = _loc4_;
            stopAll = false;
            var_576 = false;
            Game.var_1031 = getTimer() / 1000;
            if(_loc4_ / 1)
            {
               this.parent.cacheAsBitmap = true;
               this.cacheAsBitmap = true;
               _loc6_ = 0;
               while(_loc6_ < this.numChildren)
               {
                  this.getChildAt(_loc6_).cacheAsBitmap = true;
                  _loc6_++;
               }
            }
            return;
         }
         restart();
      }
      
      private final function method_567() : void
      {
         stopAll = true;
         Game.method_554();
         var_433 = 0;
         var_512 = 0;
         name_69 = false;
         var_588 = false;
         var_576 = false;
         name_53 = 0.0166666666666667;
         if(this._debug)
         {
            this._debug = null;
         }
         if(space)
         {
            space.name_30.clear();
         }
         var_365 = null;
         if(this.var_1122)
         {
            this.removeEventListener(Event.ENTER_FRAME,this.method_492);
            this.removeEventListener(MouseEvent.MOUSE_DOWN,this.method_464);
            this.removeEventListener(MouseEvent.MOUSE_UP,method_278);
         }
         if(var_233)
         {
            var_233.reset();
         }
         if(var_212)
         {
            var_212.length = 0;
            var_212 = [0,0,0,0,0,0,0];
         }
         var _loc1_:int = 0;
         if(var_232)
         {
            _loc1_ = 0;
            while(_loc1_ < var_232.numChildren)
            {
               var_232.removeChildAt(0);
               _loc1_++;
            }
            if(contains(var_232))
            {
               removeChild(var_232);
            }
            var_232 = null;
         }
         if(var_581)
         {
            _loc1_ = 0;
            while(_loc1_ < var_581.numChildren)
            {
               var_581.removeChildAt(0);
               _loc1_++;
            }
            var_581 = null;
         }
         if(this.var_541)
         {
            _loc1_ = 0;
            while(_loc1_ < this.var_541.numChildren)
            {
               this.var_541.removeChildAt(0);
               _loc1_++;
            }
            this.var_541 = null;
         }
         if(this.var_670)
         {
            _loc1_ = 0;
            while(_loc1_ < this.var_670.numChildren)
            {
               this.var_670.removeChildAt(0);
               _loc1_++;
            }
            this.var_670 = null;
         }
         if(var_415)
         {
            _loc1_ = 0;
            while(_loc1_ < var_415.numChildren)
            {
               var_415.removeChildAt(0);
               _loc1_++;
            }
            var_415 = null;
         }
         if(this.var_632)
         {
            _loc1_ = 0;
            while(_loc1_ < this.var_632.numChildren)
            {
               this.var_632.removeChildAt(0);
               _loc1_++;
            }
            this.var_632 = null;
         }
         if(this.var_715)
         {
            this.var_715.length = 0;
            this.var_715 = null;
         }
         if(var_204)
         {
            var_204.length = 0;
            var_204 = null;
         }
         if(var_203)
         {
            var_203.length = 0;
            var_203 = null;
         }
         if(var_301)
         {
            var_301.length = 0;
            var_301 = null;
         }
         if(var_299)
         {
            var_299.length = 0;
            var_299 = null;
         }
         if(var_168)
         {
            var_168.length = 0;
            var_168 = null;
         }
         if(var_167)
         {
            var_167.length = 0;
            var_167 = null;
         }
         if(var_582)
         {
            var_582.length = 0;
            var_582 = null;
         }
         if(var_601)
         {
            var_601.length = 0;
            var_601 = null;
         }
         if(var_594)
         {
            var_594.length = 0;
            var_594 = null;
         }
         if(var_200)
         {
            var_200.length = 0;
            var_200 = null;
         }
         if(var_236)
         {
            var_236.length = 0;
            var_236 = null;
         }
         if(this.var_740)
         {
            this.var_740.length = 0;
            this.var_740 = null;
         }
         if(this.var_743)
         {
            this.var_743.length = 0;
            this.var_743 = null;
         }
         if(this.var_738)
         {
            this.var_738.length = 0;
            this.var_738 = null;
         }
         if(var_497)
         {
            var_497.length = 0;
            var_497 = null;
         }
         if(var_330)
         {
            var_330.dispose();
         }
         this.var_933 = 0;
      }
      
      private final function method_580() : void
      {
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:int = 0;
         var _loc8_:* = null;
         var _loc9_:int = 0;
         var _loc10_:* = null;
         var _loc11_:int = 0;
         var _loc12_:* = null;
         var _loc13_:* = null;
         var _loc14_:* = null;
         var _loc15_:* = null;
         var _loc16_:* = null;
         var _loc17_:* = null;
         var _loc18_:* = null;
         var _loc19_:* = undefined;
         var _loc20_:int = 0;
         var _loc21_:* = null;
         var _loc22_:* = null;
         var _loc23_:* = null;
         var _loc24_:* = null;
         var _loc25_:int = 0;
         var _loc26_:* = null;
         var _loc27_:int = 0;
         var _loc28_:* = null;
         var _loc29_:* = null;
         var _loc30_:int = 0;
         var _loc31_:* = null;
         var _loc32_:* = null;
         var _loc33_:* = null;
         var _loc34_:* = null;
         var _loc35_:* = null;
         var _loc36_:* = null;
         var _loc1_:Class = getDefinitionByName(class_2.method_14(-1820302759) + String(this.var_933)) as Class;
         var _loc2_:MovieClip = new _loc1_();
         var _loc3_:int = _loc2_.numChildren;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(_loc2_.getChildAt(_loc4_).name == "hero_point")
            {
               if(!var_497)
               {
                  var_497 = new Vector.<Point>();
               }
               var_497[var_497.length] = new Point(_loc2_.getChildAt(_loc4_).x,_loc2_.getChildAt(_loc4_).y);
            }
            if(_loc2_.getChildAt(_loc4_).name == "hero_point_m")
            {
               var_843 = Vec2.method_65(_loc2_.getChildAt(_loc4_).x,_loc2_.getChildAt(_loc4_).y);
            }
            if(_loc2_.getChildAt(_loc4_).name == "backGround_yelow" || _loc2_.getChildAt(_loc4_).name == "backGround_red" || _loc2_.getChildAt(_loc4_).name == "backGround_blue")
            {
               _loc5_ = new class_178();
               if(_loc2_.getChildAt(_loc4_).name == "backGround_yelow")
               {
                  _loc5_.method_111("BG_yelow");
               }
               else if(_loc2_.getChildAt(_loc4_).name == "backGround_red")
               {
                  _loc5_.method_111("BG_red");
               }
               else if(_loc2_.getChildAt(_loc4_).name == "backGround_blue")
               {
                  _loc5_.method_111("BG_blue");
               }
               _loc5_.stop();
               _loc5_.cacheAsBitmap = true;
               _loc5_.name = class_2.method_14(-1820302742);
               this.var_541.cacheAsBitmap = true;
               this.var_541.addChild(_loc5_);
               _loc5_.x = _loc2_.getChildAt(_loc4_).x;
               _loc5_.y = _loc2_.getChildAt(_loc4_).y;
               _loc5_.scaleX = _loc2_.getChildAt(_loc4_).scaleX;
               _loc5_.scaleY = _loc2_.getChildAt(_loc4_).scaleY;
            }
            if(_loc2_.getChildAt(_loc4_).name == "EXIT")
            {
               var_162 = new class_178();
               if(var_256 == class_2.method_14(-1820302504))
               {
                  var_162.method_111("EXIT_glow");
                  var_162.method_111("EXIT_open_key");
                  var_162.method_111("EXIT_opened");
                  var_162.method_111("MC_EXIT",null,true);
               }
               else if(var_256 == class_2.method_14(-1820302599))
               {
                  var_162.method_111("EXIT_glow_red");
                  var_162.method_111("EXIT_open_key_red");
                  var_162.method_111("EXIT_opened_red");
                  var_162.method_111("MC_EXIT_red",null,true);
               }
               else if(var_256 == class_2.method_14(-1820302698))
               {
                  var_162.method_111("EXIT_glow_blue");
                  var_162.method_111("EXIT_open_key_blue");
                  var_162.method_111("EXIT_opened_blue");
                  var_162.method_111("MC_EXIT_blue",null,true);
               }
               var_162.stop();
               var_162.repeat = false;
               var_162.x = _loc2_.getChildAt(_loc4_).x;
               var_162.y = _loc2_.getChildAt(_loc4_).y;
               var_162.rotation = _loc2_.getChildAt(_loc4_).rotation;
               var_162.scaleX = _loc2_.getChildAt(_loc4_).scaleX;
               var_162.scaleY = _loc2_.getChildAt(_loc4_).scaleY;
               var_162.cacheAsBitmap = true;
               var_232.addChild(var_162);
               this.method_156(_loc2_.getChildAt(_loc4_),"EXIT");
            }
            if(_loc2_.getChildAt(_loc4_).name == "platformWood")
            {
               _loc6_ = new Object();
               _loc7_ = MovieClip(_loc2_.getChildAt(_loc4_)).numChildren;
               _loc8_ = new Sprite();
               _loc9_ = 0;
               while(_loc9_ < _loc7_)
               {
                  _loc10_ = new class_178();
                  _loc10_.method_111(class_2.method_14(-1820302674) + MovieClip(_loc2_.getChildAt(_loc4_)).getChildAt(_loc9_).name);
                  _loc10_.stop();
                  _loc8_.addChild(_loc10_);
                  _loc10_.x = MovieClip(_loc2_.getChildAt(_loc4_)).getChildAt(_loc9_).x;
                  _loc10_.y = MovieClip(_loc2_.getChildAt(_loc4_)).getChildAt(_loc9_).y;
                  _loc10_.smoothing = true;
                  _loc9_++;
               }
               _loc8_.x = _loc2_.getChildAt(_loc4_).x;
               _loc8_.y = _loc2_.getChildAt(_loc4_).y;
               _loc8_.rotation = _loc2_.getChildAt(_loc4_).rotation;
               var_232.addChild(_loc8_);
               _loc8_.cacheAsBitmap = true;
               _loc6_.graphics = _loc8_;
               this.method_156(_loc2_.getChildAt(_loc4_),class_2.method_14(-1820302707),_loc6_);
            }
            if(_loc2_.getChildAt(_loc4_).name == "platformSteel_black" || _loc2_.getChildAt(_loc4_).name == "platformSteel_white")
            {
               _loc6_ = new Object();
               _loc6_.open = false;
               _loc11_ = MovieClip(_loc2_.getChildAt(_loc4_)).numChildren;
               _loc8_ = new Sprite();
               _loc9_ = 0;
               while(_loc9_ < _loc11_)
               {
                  if(MovieClip(_loc2_.getChildAt(_loc4_)).getChildAt(_loc9_).name == "start")
                  {
                     _loc13_ = MovieClip(_loc2_.getChildAt(_loc4_)).localToGlobal(new Point(MovieClip(_loc2_.getChildAt(_loc4_)).getChildAt(_loc9_).x,MovieClip(_loc2_.getChildAt(_loc4_)).getChildAt(_loc9_).y));
                     _loc6_.start = Vec2.method_527(_loc13_);
                     _loc6_.target = _loc6_.start;
                     MovieClip(_loc2_.getChildAt(_loc4_)).removeChildAt(_loc9_);
                     _loc9_--;
                     _loc11_--;
                  }
                  else if(MovieClip(_loc2_.getChildAt(_loc4_)).getChildAt(_loc9_).name == "end")
                  {
                     _loc14_ = MovieClip(_loc2_.getChildAt(_loc4_)).localToGlobal(new Point(MovieClip(_loc2_.getChildAt(_loc4_)).getChildAt(_loc9_).x,MovieClip(_loc2_.getChildAt(_loc4_)).getChildAt(_loc9_).y));
                     _loc6_.end = Vec2.method_527(_loc14_);
                     MovieClip(_loc2_.getChildAt(_loc4_)).removeChildAt(_loc9_);
                     _loc9_--;
                     _loc11_--;
                  }
                  else
                  {
                     _loc10_ = new class_178();
                     if(var_256 == class_2.method_14(-1820302504))
                     {
                        _loc12_ = "";
                     }
                     else if(var_256 == class_2.method_14(-1820302599))
                     {
                        _loc12_ = "_red";
                     }
                     else if(var_256 == class_2.method_14(-1820302698))
                     {
                        _loc12_ = "_blue";
                     }
                     _loc10_.method_111(class_2.method_14(-1820302674) + MovieClip(_loc2_.getChildAt(_loc4_)).getChildAt(_loc9_).name + _loc12_);
                     _loc10_.stop();
                     _loc8_.addChild(_loc10_);
                     _loc10_.x = MovieClip(_loc2_.getChildAt(_loc4_)).getChildAt(_loc9_).x;
                     _loc10_.y = MovieClip(_loc2_.getChildAt(_loc4_)).getChildAt(_loc9_).y;
                     _loc10_.smoothing = true;
                  }
                  _loc9_++;
               }
               _loc8_.x = _loc2_.getChildAt(_loc4_).x;
               _loc8_.y = _loc2_.getChildAt(_loc4_).y;
               _loc8_.rotation = _loc2_.getChildAt(_loc4_).rotation;
               var_232.addChild(_loc8_);
               _loc8_.cacheAsBitmap = true;
               _loc6_.graphics = _loc8_;
               this.method_156(_loc2_.getChildAt(_loc4_),_loc2_.getChildAt(_loc4_).name,_loc6_);
            }
            if(_loc2_.getChildAt(_loc4_).name == "Button_black")
            {
               _loc15_ = new Object();
               _loc16_ = new class_178();
               _loc16_.method_111("MC_Button_black");
               _loc16_.stop();
               _loc16_.repeat = false;
               _loc16_.smoothing = true;
               var_232.addChild(_loc16_);
               _loc16_.x = _loc2_.getChildAt(_loc4_).x;
               _loc16_.y = _loc2_.getChildAt(_loc4_).y;
               _loc16_.rotation = _loc2_.getChildAt(_loc4_).rotation;
               _loc15_.graphics = _loc16_;
               _loc15_.graphics.cacheAsBitmap = true;
               _loc15_.enabled = false;
               _loc15_.lock = true;
               this.method_156(_loc2_.getChildAt(_loc4_),class_2.method_14(-1820302762),_loc15_);
            }
            if(_loc2_.getChildAt(_loc4_).name == "Button_white")
            {
               _loc17_ = new Object();
               _loc18_ = new class_178();
               _loc18_.method_111("MC_Button_white");
               _loc18_.stop();
               _loc18_.repeat = false;
               _loc18_.smoothing = true;
               var_232.addChild(_loc18_);
               _loc18_.x = _loc2_.getChildAt(_loc4_).x;
               _loc18_.y = _loc2_.getChildAt(_loc4_).y;
               _loc18_.rotation = _loc2_.getChildAt(_loc4_).rotation;
               _loc17_.graphics = _loc18_;
               _loc17_.graphics.cacheAsBitmap = true;
               _loc17_.enabled = false;
               _loc17_.lock = true;
               this.method_156(_loc2_.getChildAt(_loc4_),class_2.method_14(-1820302626),_loc17_);
            }
            if(_loc2_.getChildAt(_loc4_).name == "Reel")
            {
               _loc6_ = new Object();
               _loc19_ = MovieClip(_loc2_.getChildAt(_loc4_)).numChildren;
               _loc20_ = 0;
               while(_loc20_ < _loc19_)
               {
                  if(MovieClip(_loc2_.getChildAt(_loc4_)).getChildAt(_loc20_).name == class_2.method_14(-1820302546))
                  {
                     _loc22_ = new class_178();
                     _loc22_.method_111(class_2.method_14(-1820302674) + MovieClip(_loc2_.getChildAt(_loc4_)).getChildAt(_loc20_).name);
                     _loc22_.stop();
                     _loc22_.smoothing = true;
                     _loc22_.x = MovieClip(_loc2_.getChildAt(_loc4_)).getChildAt(_loc20_).x;
                     _loc22_.y = MovieClip(_loc2_.getChildAt(_loc4_)).getChildAt(_loc20_).y;
                     _loc22_.alpha = 0;
                     _loc22_.visible = false;
                     _loc22_.rotation = MovieClip(_loc2_.getChildAt(_loc4_)).getChildAt(_loc20_).rotation;
                     MovieClip(_loc2_.getChildAt(_loc4_)).removeChild(MovieClip(_loc2_.getChildAt(_loc4_)).getChildAt(_loc20_));
                     _loc20_--;
                     _loc19_--;
                  }
                  else if(MovieClip(_loc2_.getChildAt(_loc4_)).getChildAt(_loc20_).name == "Reel")
                  {
                     _loc23_ = new class_178();
                     if(var_256 == class_2.method_14(-1820302504))
                     {
                        _loc24_ = "";
                     }
                     else if(var_256 == class_2.method_14(-1820302599))
                     {
                        _loc24_ = "_red";
                     }
                     else if(var_256 == class_2.method_14(-1820302698))
                     {
                        _loc24_ = "_blue";
                     }
                     _loc23_.method_111(class_2.method_14(-1820302674) + MovieClip(_loc2_.getChildAt(_loc4_)).getChildAt(_loc20_).name + _loc24_);
                     _loc23_.stop();
                     _loc23_.smoothing = true;
                     _loc23_.x = MovieClip(_loc2_.getChildAt(_loc4_)).getChildAt(_loc20_).x;
                     _loc23_.y = MovieClip(_loc2_.getChildAt(_loc4_)).getChildAt(_loc20_).y;
                     _loc23_.rotation = MovieClip(_loc2_.getChildAt(_loc4_)).getChildAt(_loc20_).rotation;
                  }
                  _loc20_++;
               }
               _loc6_.graphicsReel = _loc23_;
               _loc6_.graphicstReelJelly = _loc22_;
               _loc21_ = new Sprite();
               _loc21_.x = _loc2_.getChildAt(_loc4_).x;
               _loc21_.y = _loc2_.getChildAt(_loc4_).y;
               _loc21_.rotation = _loc2_.getChildAt(_loc4_).rotation;
               _loc21_.addChild(_loc22_);
               _loc21_.addChild(_loc23_);
               this.var_632.addChild(_loc21_);
               _loc6_.graphics = _loc21_;
               _loc6_.run = false;
               _loc6_.tension = 0;
               _loc6_.enable = true;
               this.method_156(_loc2_.getChildAt(_loc4_),"Reel",_loc6_);
            }
            if(_loc2_.getChildAt(_loc4_).name == "Platform_color_blue" || _loc2_.getChildAt(_loc4_).name == "Platform_color_red" || _loc2_.getChildAt(_loc4_).name == "Platform_color_green")
            {
               _loc6_ = new Object();
               _loc25_ = (_loc2_.getChildAt(_loc4_) as MovieClip).numChildren;
               _loc26_ = new Sprite();
               _loc27_ = 0;
               while(_loc27_ < _loc25_)
               {
                  if((_loc2_.getChildAt(_loc4_) as MovieClip).getChildAt(_loc27_).name == class_2.method_14(-1820302758) || (_loc2_.getChildAt(_loc4_) as MovieClip).getChildAt(_loc27_).name == class_2.method_14(-1820302757) || (_loc2_.getChildAt(_loc4_) as MovieClip).getChildAt(_loc27_).name == class_2.method_14(-1820302760) || (_loc2_.getChildAt(_loc4_) as MovieClip).getChildAt(_loc27_).name == class_2.method_14(-1820302782) || (_loc2_.getChildAt(_loc4_) as MovieClip).getChildAt(_loc27_).name == class_2.method_14(-1820302780) || (_loc2_.getChildAt(_loc4_) as MovieClip).getChildAt(_loc27_).name == class_2.method_14(-1820302779) || (_loc2_.getChildAt(_loc4_) as MovieClip).getChildAt(_loc27_).name == class_2.method_14(-1820302776) || (_loc2_.getChildAt(_loc4_) as MovieClip).getChildAt(_loc27_).name == class_2.method_14(-1820302775) || (_loc2_.getChildAt(_loc4_) as MovieClip).getChildAt(_loc27_).name == class_2.method_14(-1820302774))
                  {
                     _loc28_ = new class_178();
                     _loc28_.method_111(class_2.method_14(-1820302674) + (_loc2_.getChildAt(_loc4_) as MovieClip).getChildAt(_loc27_).name);
                     _loc28_.stop();
                     _loc28_.smoothing = true;
                     _loc26_.addChild(_loc28_);
                     _loc28_.x = (_loc2_.getChildAt(_loc4_) as MovieClip).getChildAt(_loc27_).x;
                     _loc28_.y = (_loc2_.getChildAt(_loc4_) as MovieClip).getChildAt(_loc27_).y;
                     _loc28_.rotation = (_loc2_.getChildAt(_loc4_) as MovieClip).getChildAt(_loc27_).rotation;
                     _loc28_.scaleX = (_loc2_.getChildAt(_loc4_) as MovieClip).getChildAt(_loc27_).scaleX;
                     _loc28_.scaleY = (_loc2_.getChildAt(_loc4_) as MovieClip).getChildAt(_loc27_).scaleY;
                  }
                  _loc27_++;
               }
               _loc26_.x = _loc2_.getChildAt(_loc4_).x;
               _loc26_.y = _loc2_.getChildAt(_loc4_).y;
               _loc26_.rotation = _loc2_.getChildAt(_loc4_).rotation;
               _loc26_.scaleX = _loc2_.getChildAt(_loc4_).scaleX;
               _loc26_.scaleY = _loc2_.getChildAt(_loc4_).scaleY;
               var_232.addChild(_loc26_);
               _loc6_.graphics = _loc26_;
               _loc6_.graphics.cacheAsBitmap = true;
               this.method_156(_loc2_.getChildAt(_loc4_),_loc2_.getChildAt(_loc4_).name,_loc6_);
            }
            if(_loc2_.getChildAt(_loc4_).name.substr(0,4) == class_2.method_14(-1820302560))
            {
               _loc6_ = new Object();
               _loc29_ = new class_178();
               if(var_256 == class_2.method_14(-1820302504))
               {
                  _loc24_ = "";
               }
               else if(var_256 == class_2.method_14(-1820302599))
               {
                  _loc24_ = "_red";
               }
               else if(var_256 == class_2.method_14(-1820302698))
               {
                  _loc24_ = "_blue";
               }
               _loc29_.method_111("MC_Disk" + _loc24_);
               _loc29_.stop();
               var_232.addChild(_loc29_);
               _loc29_.x = _loc2_.getChildAt(_loc4_).x;
               _loc29_.y = _loc2_.getChildAt(_loc4_).y;
               _loc29_.rotation = _loc2_.getChildAt(_loc4_).rotation;
               _loc29_.scaleX = _loc2_.getChildAt(_loc4_).scaleX;
               _loc29_.scaleY = _loc2_.getChildAt(_loc4_).scaleY;
               _loc29_.smoothing = true;
               _loc6_.graphics = _loc29_;
               _loc6_.indexPos = Vec2.method_65(_loc29_.x,_loc29_.y);
               this.method_156(_loc2_.getChildAt(_loc4_),class_2.method_14(-1820302560),_loc6_);
               if(_loc2_["p" + _loc2_.getChildAt(_loc4_).name + "_start"])
               {
                  _loc31_ = _loc2_["p" + _loc2_.getChildAt(_loc4_).name + "_start"];
                  _loc6_.start = Vec2.method_65(_loc31_.x,_loc31_.y);
               }
               if(_loc2_["p" + _loc2_.getChildAt(_loc4_).name + "_end"])
               {
                  _loc32_ = _loc2_["p" + _loc2_.getChildAt(_loc4_).name + "_end"];
                  _loc6_.end = Vec2.method_65(_loc32_.x,_loc32_.y);
               }
               _loc6_.ps = false;
               _loc30_ = 0;
               while(_loc30_ < _loc3_)
               {
                  if(_loc2_.getChildAt(_loc30_).name.substr(0,12) == "p" + _loc2_.getChildAt(_loc4_).name.substr(0,5) + class_2.method_14(-1820302543))
                  {
                     _loc6_.speed = int(_loc2_.getChildAt(_loc30_).name.substr(13,3));
                     _loc6_.pauseTime = int(_loc2_.getChildAt(_loc30_).name.substr(17,3));
                     _loc6_.pauseDelta = 0;
                  }
                  _loc30_++;
               }
               if(_loc6_.start && _loc6_.end)
               {
                  _loc6_.move = true;
                  _loc6_.run = true;
                  _loc6_.target = _loc6_.start;
                  this.method_556(_loc6_);
               }
               else
               {
                  _loc6_.move = false;
               }
            }
            if(_loc2_.getChildAt(_loc4_).name == "Brush_red" || _loc2_.getChildAt(_loc4_).name == "Brush_green" || _loc2_.getChildAt(_loc4_).name == "Brush_blue")
            {
               _loc6_ = new Object();
               _loc33_ = new class_178();
               _loc33_.method_111(class_2.method_14(-1820302674) + _loc2_.getChildAt(_loc4_).name);
               _loc33_.stop();
               var_232.addChild(_loc33_);
               _loc33_.transform.matrix = _loc2_.getChildAt(_loc4_).transform.matrix;
               _loc6_.graphics = _loc33_;
               _loc6_.graphics.cacheAsBitmap = true;
               this.method_156(_loc2_.getChildAt(_loc4_),_loc2_.getChildAt(_loc4_).name,_loc6_);
            }
            if(_loc2_.getChildAt(_loc4_).name == "Key")
            {
               _loc6_ = new Object();
               _loc34_ = new class_178();
               _loc34_.smoothing = true;
               _loc34_.method_111(class_2.method_14(-1820302674) + _loc2_.getChildAt(_loc4_).name);
               _loc34_.gotoAndPlay(int(Math.random() * _loc34_.totalFrames));
               var_232.addChild(_loc34_);
               _loc34_.x = _loc2_.getChildAt(_loc4_).x;
               _loc34_.y = _loc2_.getChildAt(_loc4_).y;
               _loc34_.rotation = _loc2_.getChildAt(_loc4_).rotation;
               _loc34_.scaleX = _loc2_.getChildAt(_loc4_).scaleX;
               _loc34_.scaleY = _loc2_.getChildAt(_loc4_).scaleY;
               _loc6_.graphics = _loc34_;
               _loc6_.colected = false;
               _loc6_.indexPos = new Point(_loc2_.getChildAt(_loc4_).x,_loc2_.getChildAt(_loc4_).y);
               var_433 = false;
               this.method_156(_loc2_.getChildAt(_loc4_),_loc2_.getChildAt(_loc4_).name,_loc6_);
            }
            if(_loc2_.getChildAt(_loc4_).name == "Star")
            {
               _loc6_ = new Object();
               _loc35_ = new class_178();
               _loc35_.method_111(class_2.method_14(-1820302674) + _loc2_.getChildAt(_loc4_).name);
               _loc35_.gotoAndPlay(int(Math.random() * _loc35_.totalFrames));
               var_232.addChild(_loc35_);
               _loc35_.x = _loc2_.getChildAt(_loc4_).x;
               _loc35_.y = _loc2_.getChildAt(_loc4_).y;
               _loc35_.rotation = _loc2_.getChildAt(_loc4_).rotation;
               _loc35_.scaleX = _loc2_.getChildAt(_loc4_).scaleX;
               _loc35_.scaleY = _loc2_.getChildAt(_loc4_).scaleY;
               _loc6_.graphics = _loc35_;
               _loc6_.colected = false;
               _loc6_.indexPos = new Point(_loc2_.getChildAt(_loc4_).x,_loc2_.getChildAt(_loc4_).y);
               var_768 = var_768 + 1;
               this.method_156(_loc2_.getChildAt(_loc4_),_loc2_.getChildAt(_loc4_).name,_loc6_);
            }
            if(_loc2_.getChildAt(_loc4_).name == "Ship")
            {
               _loc6_ = new Object();
               _loc36_ = new class_178();
               _loc36_.method_111(class_2.method_14(-1820302674) + _loc2_.getChildAt(_loc4_).name);
               _loc36_.smoothing = true;
               _loc36_.stop();
               var_232.addChild(_loc36_);
               _loc36_.x = _loc2_.getChildAt(_loc4_).x;
               _loc36_.y = _loc2_.getChildAt(_loc4_).y;
               _loc36_.rotation = _loc2_.getChildAt(_loc4_).rotation;
               _loc36_.scaleX = _loc2_.getChildAt(_loc4_).scaleX;
               _loc36_.scaleY = _loc2_.getChildAt(_loc4_).scaleY;
               _loc6_.graphics = _loc36_;
               _loc6_.graphics.cacheAsBitmap = true;
               this.method_156(_loc2_.getChildAt(_loc4_),_loc2_.getChildAt(_loc4_).name,_loc6_);
            }
            _loc4_++;
         }
      }
      
      private final function method_556(param1:Object) : void
      {
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc2_:Number = Vec2.distance(param1.start,param1.end);
         var _loc3_:* = 0;
         if(var_256 == class_2.method_14(-1820302504))
         {
            _loc11_ = new MC_Disk_cl();
            _loc12_ = new MC_Disk_cr();
         }
         else if(var_256 == class_2.method_14(-1820302599))
         {
            _loc11_ = new MC_Disk_cl_red();
            _loc12_ = new MC_Disk_cr_red();
         }
         else if(var_256 == class_2.method_14(-1820302698))
         {
            _loc11_ = new MC_Disk_cl_blue();
            _loc12_ = new MC_Disk_cr_blue();
         }
         var _loc4_:BitmapData = new BitmapData(_loc11_.width,_loc11_.height,true,0);
         var _loc5_:BitmapData = new BitmapData(_loc12_.width,_loc12_.height,true,0);
         _loc4_.draw(_loc11_);
         _loc5_.draw(_loc12_);
         var _loc6_:BitmapData = new BitmapData(_loc2_,_loc11_.height,true,0);
         var _loc7_:Rectangle = _loc4_.rect;
         var _loc8_:Point = new Point();
         var _loc9_:Number = Math.floor(_loc2_ / _loc11_.width) + 1;
         while(_loc2_ - _loc3_ > 0)
         {
            if(_loc2_ - _loc3_ > _loc4_.width)
            {
               _loc8_.x = _loc3_;
               if(_loc3_ > 0)
               {
                  _loc8_.x = _loc8_.x - Math.floor(_loc3_ / _loc4_.width);
               }
               if(_loc3_ == 0)
               {
                  _loc6_.copyPixels(_loc4_,_loc7_,_loc8_,null,null,true);
               }
               else
               {
                  _loc6_.copyPixels(_loc5_,_loc7_,_loc8_,null,null,true);
               }
               _loc3_ = Number(_loc3_ + (_loc4_.width - Math.floor(_loc3_ / _loc4_.width)));
            }
            else
            {
               _loc8_.x = _loc6_.width - _loc5_.width;
               _loc6_.copyPixels(_loc5_,_loc7_,_loc8_,null,null,true);
               _loc3_ = Number(_loc2_);
            }
         }
         var _loc10_:Bitmap = new Bitmap(_loc6_);
         _loc10_.smoothing = true;
         _loc10_.x = param1.start.x;
         _loc10_.y = param1.start.y;
         _loc10_.rotation = class_207.method_166(Vec2.method_65(param1.end.x - param1.start.x,param1.end.y - param1.start.y).angle);
         this.var_670.addChild(_loc10_);
      }
      
      private final function method_156(param1:DisplayObject, param2:String, param3:Object = null) : void
      {
         var _loc4_:* = null;
         var _loc5_:Number = NaN;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc13_:* = NaN;
         var _loc14_:* = null;
         var _loc15_:* = null;
         var _loc16_:* = null;
         var _loc17_:* = null;
         if(param2 == class_2.method_14(-1820302707))
         {
            _loc4_ = new Body(class_198.STATIC,Vec2.method_65(param1.x,param1.y));
            _loc5_ = param1.rotation;
            param1.rotation = 0;
            _loc4_.shapes.add(new Polygon(Polygon.rect(0,0,param1.width,param1.height),class_199.method_162()));
            _loc4_.shapes.at(0).name_10.add(class_204.const_9);
            _loc4_.rotation = class_207.method_173(_loc5_);
            _loc4_.space = space;
            param1.rotation = _loc5_;
            if(!this.var_715)
            {
               this.var_715 = new Vector.<Object>();
            }
            param3.physics = _loc4_;
            this.var_715[this.var_715.length] = param3;
         }
         if(param2 == "platformSteel_black" || param2 == "platformSteel_white")
         {
            _loc6_ = new Body(class_198.KINEMATIC,Vec2.method_65(param1.x,param1.y));
            _loc5_ = param1.rotation;
            param1.rotation = 0;
            _loc6_.shapes.add(new Polygon(Polygon.rect(0,0,param1.width,param1.height),class_199.method_162()));
            if(param2 == "platformSteel_black")
            {
               _loc6_.shapes.at(0).name_10.add(class_204.const_30);
            }
            else
            {
               _loc6_.shapes.at(0).name_10.add(class_204.const_28);
            }
            _loc6_.shapes.at(0).name_10.add(class_204.const_9);
            _loc6_.rotation = class_207.method_173(_loc5_);
            _loc6_.space = space;
            param1.rotation = _loc5_;
            param3.physics = _loc6_;
            if(param2 == "platformSteel_black")
            {
               if(!var_204)
               {
                  var_204 = new Vector.<Object>();
               }
               var_204[var_204.length] = param3;
            }
            else if(param2 == "platformSteel_white")
            {
               if(!var_203)
               {
                  var_203 = new Vector.<Object>();
               }
               var_203[var_203.length] = param3;
            }
         }
         if(param2 == class_2.method_14(-1820302762) || param2 == class_2.method_14(-1820302626))
         {
            _loc7_ = new Body(class_198.STATIC,Vec2.method_65(param1.x,param1.y));
            _loc5_ = param1.rotation;
            param1.rotation = 0;
            _loc8_ = new Polygon(Polygon.rect(0,0,param1.width,param1.height),class_199.method_162(),class_204.const_17);
            if(param2 == class_2.method_14(-1820302762))
            {
               _loc8_.name_10.add(class_204.const_12);
            }
            else if(param2 == class_2.method_14(-1820302626))
            {
               _loc8_.name_10.add(class_204.const_14);
            }
            _loc8_.name_10.add(class_204.const_9);
            _loc7_.shapes.add(_loc8_);
            _loc7_.rotation = class_207.method_173(_loc5_);
            _loc7_.space = space;
            param1.rotation = _loc5_;
            param3.physics = _loc7_;
            if(param2 == class_2.method_14(-1820302762))
            {
               if(!var_301)
               {
                  var_301 = new Vector.<Object>();
               }
               var_301[var_301.length] = param3;
            }
            else if(param2 == class_2.method_14(-1820302626))
            {
               if(!var_299)
               {
                  var_299 = new Vector.<Object>();
               }
               var_299[var_299.length] = param3;
            }
         }
         if(param2 == "Reel")
         {
            _loc9_ = new Body(class_198.STATIC,Vec2.method_65(param1.x,param1.y));
            _loc5_ = param1.rotation;
            param1.rotation = 0;
            _loc9_.shapes.add(new Polygon(Polygon.regular(param1.width / 2.2,param1.height / 2.2,10)));
            _loc9_.shapes.at(0).name_10.add(class_204.const_21);
            _loc9_.shapes.at(0).name_10.add(class_204.const_9);
            _loc9_.rotation = class_207.method_173(_loc5_);
            _loc9_.space = space;
            param1.rotation = _loc5_;
            if(!var_168)
            {
               var_168 = new Vector.<Object>();
            }
            param3.physics = _loc9_;
            var_168[var_168.length] = param3;
         }
         if(param2 == "Platform_color_blue" || param2 == "Platform_color_red" || param2 == "Platform_color_green")
         {
            _loc10_ = new Body(class_198.STATIC,Vec2.method_65(param1.x,param1.y));
            _loc5_ = param1.rotation;
            param1.rotation = 0;
            _loc8_ = new Polygon(Polygon.rect(0,-5,param1.width,param1.height),class_199.method_162(),class_204.const_32);
            if(param2 == "Platform_color_red")
            {
               _loc8_.name_10.add(class_204.const_25);
            }
            else if(param2 == "Platform_color_green")
            {
               _loc8_.name_10.add(class_204.const_26);
            }
            else if(param2 == "Platform_color_blue")
            {
               _loc8_.name_10.add(class_204.const_27);
            }
            _loc8_.name_10.add(class_204.const_9);
            _loc8_.sensorEnabled = true;
            _loc10_.shapes.add(_loc8_);
            _loc10_.rotation = class_207.method_173(_loc5_);
            _loc10_.space = space;
            param1.rotation = _loc5_;
            param3.physics = _loc10_;
            if(param2 == "Platform_color_red")
            {
               if(!this.var_740)
               {
                  this.var_740 = new Vector.<Object>();
               }
               this.var_740[this.var_740.length] = param3;
            }
            else if(param2 == "Platform_color_green")
            {
               if(!this.var_738)
               {
                  this.var_738 = new Vector.<Object>();
               }
               this.var_738[this.var_738.length] = param3;
            }
            else if(param2 == "Platform_color_blue")
            {
               if(!this.var_743)
               {
                  this.var_743 = new Vector.<Object>();
               }
               this.var_743[this.var_743.length] = param3;
            }
         }
         if(param2 == class_2.method_14(-1820302560))
         {
            _loc11_ = new Body(class_198.KINEMATIC,Vec2.method_65(param1.x,param1.y));
            _loc5_ = param1.rotation;
            param1.rotation = 0;
            _loc11_.shapes.add(new Polygon(Polygon.regular(param1.width / 2,param1.height / 2,10),class_199.method_162(),class_204.const_17));
            _loc11_.shapes.at(0).name_10.add(class_204.DISK);
            _loc11_.rotation = class_207.method_173(_loc5_);
            _loc11_.space = space;
            _loc11_.shapes.at(0).sensorEnabled = true;
            param1.rotation = _loc5_;
            if(!var_167)
            {
               var_167 = new Vector.<Object>();
            }
            param3.physics = _loc11_;
            var_167[var_167.length] = param3;
         }
         if(param2 == "Brush_red" || param2 == "Brush_green" || param2 == "Brush_blue")
         {
            _loc12_ = new Body(class_198.STATIC,Vec2.method_65(param1.x,param1.y));
            _loc5_ = param1.rotation;
            param1.rotation = 0;
            _loc13_ = 0;
            if(param3.graphics.transform.matrix.a < 0)
            {
               _loc13_ = Number(-param1.width);
            }
            if(param2 == "Brush_red")
            {
               _loc8_ = new Polygon(Polygon.rect(_loc13_,0,param1.width,param1.height - 20),class_199.method_162(),class_204.const_10);
            }
            else
            {
               _loc8_ = new Polygon(Polygon.rect(_loc13_,0,param1.width,param1.height),class_199.method_162(),class_204.const_10);
            }
            if(param2 == "Brush_red")
            {
               _loc8_.name_10.add(class_204.const_24);
            }
            else if(param2 == "Brush_green")
            {
               _loc8_.name_10.add(class_204.const_16);
            }
            else if(param2 == "Brush_blue")
            {
               _loc8_.name_10.add(class_204.const_20);
            }
            _loc8_.sensorEnabled = true;
            _loc12_.shapes.add(_loc8_);
            _loc12_.space = space;
            param1.rotation = _loc5_;
            param3.physics = _loc12_;
            if(param2 == "Brush_red")
            {
               if(!var_582)
               {
                  var_582 = new Vector.<Object>();
               }
               var_582[var_582.length] = param3;
            }
            else if(param2 == "Brush_green")
            {
               if(!var_601)
               {
                  var_601 = new Vector.<Object>();
               }
               var_601[var_601.length] = param3;
            }
            else if(param2 == "Brush_blue")
            {
               if(!var_594)
               {
                  var_594 = new Vector.<Object>();
               }
               var_594[var_594.length] = param3;
            }
         }
         if(param2 == "Key")
         {
            _loc14_ = new Body(class_198.STATIC,Vec2.method_65(param1.x - param1.width / 2,param1.y - param1.height / 2));
            _loc5_ = param1.rotation;
            param1.rotation = 0;
            _loc8_ = new Polygon(Polygon.rect(0,0,param1.width,param1.height),class_199.method_162(),class_204.const_10);
            _loc8_.name_10.add(class_204.KEY);
            _loc8_.sensorEnabled = true;
            _loc14_.shapes.add(_loc8_);
            _loc14_.rotation = class_207.method_173(_loc5_);
            _loc14_.space = space;
            param1.rotation = _loc5_;
            param3.physics = _loc14_;
            if(!var_236)
            {
               var_236 = new Vector.<Object>();
            }
            var_236[var_236.length] = param3;
         }
         if(param2 == "Star")
         {
            _loc15_ = new Body(class_198.STATIC,Vec2.method_65(param1.x - param1.width / 4,param1.y - param1.height / 4));
            _loc5_ = param1.rotation;
            param1.rotation = 0;
            _loc8_ = new Polygon(Polygon.rect(0,0,param1.width / 2,param1.height / 2),class_199.method_162(),class_204.const_10);
            _loc8_.name_10.add(class_204.STAR);
            _loc8_.sensorEnabled = true;
            _loc15_.shapes.add(_loc8_);
            _loc15_.rotation = class_207.method_173(_loc5_);
            _loc15_.space = space;
            param1.rotation = _loc5_;
            param3.physics = _loc15_;
            if(!var_200)
            {
               var_200 = new Vector.<Object>();
            }
            var_200[var_200.length] = param3;
         }
         if(param2 == "EXIT")
         {
            _loc16_ = new Body(class_198.STATIC,Vec2.method_65(param1.x,param1.y));
            _loc5_ = param1.rotation;
            param1.rotation = 0;
            _loc8_ = new Polygon(Polygon.rect(0,0,param1.width,param1.height),class_199.method_162(),class_204.const_10);
            _loc8_.name_10.add(class_204.EXIT);
            _loc8_.sensorEnabled = true;
            _loc16_.shapes.add(_loc8_);
            _loc16_.rotation = class_207.method_173(_loc5_);
            _loc16_.space = space;
            param1.rotation = _loc5_;
         }
         if(param2 == "Ship")
         {
            _loc17_ = new Body(class_198.STATIC,Vec2.method_65(param1.x,param1.y));
            _loc5_ = param1.rotation;
            param1.rotation = 0;
            _loc17_.shapes.add(new Polygon(Polygon.rect(0,5,param1.width - 5,param1.height + 2),null,class_204.const_17));
            _loc17_.shapes.at(0).name_10.add(class_204.const_13);
            _loc17_.shapes.at(0).sensorEnabled = true;
            _loc17_.rotation = class_207.method_173(_loc5_);
            _loc17_.space = space;
            param1.rotation = _loc5_;
            if(!var_842)
            {
               var_842 = new Vector.<Object>();
            }
            param3.physics = _loc17_;
            var_842[var_842.length] = param3;
         }
      }
      
      private final function method_464(param1:MouseEvent) : void
      {
         var _loc5_:* = null;
         var _loc2_:Vec2 = Vec2.method_65(mouseX,mouseY);
         var _loc3_:class_205 = space.method_187(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_.length)
         {
            _loc5_ = _loc3_.at(_loc4_);
            if(_loc5_.isDynamic())
            {
               if(_loc5_.space)
               {
                  var_365.body2 = _loc5_;
                  var_365.anchor2.name_40(_loc5_.method_726(_loc2_,true));
                  var_365.active = true;
                  break;
               }
            }
            _loc4_++;
         }
         _loc2_.dispose();
      }
      
      private final function method_492(param1:Event) : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:int = 0;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:* = 0;
         var _loc13_:int = 0;
         if(!stopAll)
         {
            if(var_298)
            {
               _loc2_ = 0;
               while(_loc2_ < var_298.length)
               {
                  if(var_298[_loc2_].used)
                  {
                     if(var_298[_loc2_].graphics.currentFrame == var_298[_loc2_].graphics.totalFrames)
                     {
                        var_298[_loc2_].used = false;
                     }
                  }
                  _loc2_++;
               }
            }
            if(var_433)
            {
               _loc3_ = "";
               _loc4_ = "";
               _loc5_ = "";
               if(var_256 == class_2.method_14(-1820302504))
               {
                  _loc3_ = "EXIT_open_key";
                  _loc4_ = "EXIT_glow";
                  _loc5_ = "EXIT_opened";
               }
               else if(var_256 == class_2.method_14(-1820302599))
               {
                  _loc3_ = "EXIT_open_key_red";
                  _loc4_ = "EXIT_glow_red";
                  _loc5_ = "EXIT_opened_red";
               }
               else if(var_256 == class_2.method_14(-1820302698))
               {
                  _loc3_ = "EXIT_open_key_blue";
                  _loc4_ = "EXIT_glow_blue";
                  _loc5_ = "EXIT_opened_blue";
               }
               if(var_162.method_457 == _loc3_)
               {
                  if(var_162.currentFrame == var_162.totalFrames)
                  {
                     var_162.method_174(_loc4_);
                     var_162.play();
                     SoundAS.group(class_2.method_14(-1820302475)).play(class_2.method_14(-1820302569),0.9).pan = SoundManager.method_190(var_162.x);
                  }
               }
               else if(var_162.method_457 == _loc4_)
               {
                  if(var_162.currentFrame == var_162.totalFrames)
                  {
                     var_162.method_174(_loc5_);
                     var_162.play();
                     var_162.repeat = true;
                  }
               }
            }
            if(var_365.body2)
            {
               if(!var_365.body2.space)
               {
                  var_365.active = false;
               }
            }
            if(var_365.active)
            {
               var_365.anchor1.method_211(mouseX,mouseY);
            }
            if(this.var_1112)
            {
               _loc6_ = new BitmapData(300,300);
               _loc6_.draw(var_233);
               this.hands.push(_loc6_);
            }
            else
            {
               this.hands = null;
            }
            if(this.var_449 > 200)
            {
               this.var_1059 = true;
            }
            else if(this.var_449 < 0)
            {
               this.var_1059 = false;
            }
            if(this.var_1059)
            {
               if(this.var_449 < 10)
               {
                  this.var_449 = this.var_449 - 0.01;
               }
               else
               {
                  this.var_449 = this.var_449 - 0.8;
               }
            }
            else if(this.var_449 < 20)
            {
               this.var_449 = this.var_449 + 0.5;
            }
            else
            {
               this.var_449 = this.var_449 + 3;
            }
            if(var_167)
            {
               _loc7_ = 0;
               while(_loc7_ < var_167.length)
               {
                  var_167[_loc7_].graphics.rotation = var_167[_loc7_].graphics.rotation + this.var_449 * (_loc7_ + 1);
                  if(this.var_449 * (_loc7_ + 1) > 10)
                  {
                     if(!var_167[_loc7_].ps)
                     {
                        var_167[_loc7_].ps = true;
                        SoundAS.group(class_2.method_14(-1820302475)).playFx(class_2.method_14(-1820302560),0.1).pan = SoundManager.method_190(var_167[_loc7_].graphics.x);
                     }
                  }
                  else
                  {
                     var_167[_loc7_].ps = false;
                  }
                  var_167[_loc7_].graphics.x = var_167[_loc7_].physics.position.x;
                  var_167[_loc7_].graphics.y = var_167[_loc7_].physics.position.y;
                  if(var_167[_loc7_].move)
                  {
                     if(Vec2.distance(var_167[_loc7_].physics.position,var_167[_loc7_].start) < 10 && var_167[_loc7_].run)
                     {
                        var_167[_loc7_].run = false;
                        var_167[_loc7_].target = var_167[_loc7_].end;
                     }
                     if(Vec2.distance(var_167[_loc7_].physics.position,var_167[_loc7_].end) < 10 && var_167[_loc7_].run)
                     {
                        var_167[_loc7_].run = false;
                        var_167[_loc7_].target = var_167[_loc7_].start;
                     }
                     if(!var_167[_loc7_].run)
                     {
                        if(var_167[_loc7_].pauseDelta < var_167[_loc7_].pauseTime)
                        {
                           var_167[_loc7_].pauseDelta = var_167[_loc7_].pauseDelta + 0.1;
                        }
                        else
                        {
                           var_167[_loc7_].run = true;
                           var_167[_loc7_].pauseDelta = 0;
                        }
                     }
                     if(var_167[_loc7_].run)
                     {
                        _loc8_ = var_167[_loc7_].physics.position.x - var_167[_loc7_].target.x;
                        _loc9_ = var_167[_loc7_].physics.position.y - var_167[_loc7_].target.y;
                        var_167[_loc7_].physics.position.x = var_167[_loc7_].physics.position.x - _loc8_ * (var_167[_loc7_].speed / 1000);
                        var_167[_loc7_].physics.position.y = var_167[_loc7_].physics.position.y - _loc9_ * (var_167[_loc7_].speed / 1000);
                     }
                  }
                  _loc7_++;
               }
            }
            if(var_168)
            {
               _loc10_ = 0;
               while(_loc10_ < var_168.length)
               {
                  if(!var_168[_loc10_].hand)
                  {
                  }
                  if(var_168[_loc10_].run)
                  {
                     if(var_168[_loc10_].hand.tension < this.var_880)
                     {
                        var_168[_loc10_].hand.tension = var_168[_loc10_].hand.tension + 10;
                        var_168[_loc10_].graphics.rotation = var_168[_loc10_].graphics.rotation + (this.var_880 - var_168[_loc10_].hand.tension) / 1000;
                        if(var_168[_loc10_].graphicstReelJelly.scaleX <= 1)
                        {
                           var_168[_loc10_].graphicstReelJelly.alpha = var_168[_loc10_].graphicstReelJelly.alpha + (this.var_880 - var_168[_loc10_].hand.tension) / 230000;
                           var_168[_loc10_].graphicstReelJelly.scaleX = var_168[_loc10_].graphicstReelJelly.scaleX + (this.var_880 - var_168[_loc10_].hand.tension) / 800000;
                           var_168[_loc10_].graphicstReelJelly.scaleY = var_168[_loc10_].graphicstReelJelly.scaleY + (this.var_880 - var_168[_loc10_].hand.tension) / 800000;
                        }
                     }
                     else
                     {
                        var_168[_loc10_].run = false;
                     }
                  }
                  else if(var_168[_loc10_].enable)
                  {
                     var_168[_loc10_].graphics.rotation = var_168[_loc10_].graphics.rotation + 3;
                  }
                  _loc10_++;
               }
            }
            if(var_204)
            {
               _loc11_ = 0;
               while(_loc11_ < var_204.length)
               {
                  if(var_204[_loc11_].open)
                  {
                     var_204[_loc11_].target = var_204[_loc11_].end;
                  }
                  else
                  {
                     var_204[_loc11_].target = var_204[_loc11_].start;
                  }
                  if(var_204[_loc11_].physics.position.x != var_204[_loc11_].target.x)
                  {
                     var_204[_loc11_].physics.position.x = var_204[_loc11_].physics.position.x - (var_204[_loc11_].physics.position.x - var_204[_loc11_].target.x) * 0.1;
                  }
                  else
                  {
                     var_204[_loc11_].physics.velocity.x = 0;
                  }
                  if(var_204[_loc11_].physics.position.y != var_204[_loc11_].target.y)
                  {
                     var_204[_loc11_].physics.position.y = var_204[_loc11_].physics.position.y - (var_204[_loc11_].physics.position.y - var_204[_loc11_].target.y) * 0.1;
                  }
                  else
                  {
                     var_204[_loc11_].physics.velocity.y = 0;
                  }
                  var_204[_loc11_].graphics.x = var_204[_loc11_].physics.position.x;
                  var_204[_loc11_].graphics.y = var_204[_loc11_].physics.position.y;
                  var_204[_loc11_].graphics.rotation = class_207.method_166(var_204[_loc11_].physics.rotation);
                  _loc11_++;
               }
            }
            if(var_203)
            {
               _loc11_ = 0;
               while(_loc11_ < var_203.length)
               {
                  if(var_203[_loc11_].open)
                  {
                     var_203[_loc11_].target = var_203[_loc11_].end;
                  }
                  else
                  {
                     var_203[_loc11_].target = var_203[_loc11_].start;
                  }
                  if(var_203[_loc11_].physics.position.x != var_203[_loc11_].target.x)
                  {
                     var_203[_loc11_].physics.position.x = var_203[_loc11_].physics.position.x - (var_203[_loc11_].physics.position.x - var_203[_loc11_].target.x) * 0.1;
                  }
                  else
                  {
                     var_203[_loc11_].physics.velocity.x = 0;
                  }
                  if(var_203[_loc11_].physics.position.y != var_203[_loc11_].target.y)
                  {
                     var_203[_loc11_].physics.position.y = var_203[_loc11_].physics.position.y - (var_203[_loc11_].physics.position.y - var_203[_loc11_].target.y) * 0.1;
                  }
                  else
                  {
                     var_203[_loc11_].physics.velocity.y = 0;
                  }
                  var_203[_loc11_].graphics.x = var_203[_loc11_].physics.position.x;
                  var_203[_loc11_].graphics.y = var_203[_loc11_].physics.position.y;
                  var_203[_loc11_].graphics.rotation = class_207.method_166(var_203[_loc11_].physics.rotation);
                  _loc11_++;
               }
            }
            if(!Game.var_846)
            {
               if(Game.var_985 != "LOW")
               {
                  if(Game.var_689)
                  {
                     if(SWFProfiler.var_484.length > 20)
                     {
                        _loc12_ = 0;
                        _loc13_ = 0;
                        while(_loc13_ < SWFProfiler.var_484.length)
                        {
                           _loc12_ = int(_loc12_ + SWFProfiler.var_484[_loc13_]);
                           _loc13_++;
                        }
                        _loc12_ = int(_loc12_ / SWFProfiler.var_484.length);
                        if(int(_loc12_ / SWFProfiler.var_484.length) < 50)
                        {
                           stopAll = true;
                           Game.var_846 = true;
                        }
                     }
                  }
               }
            }
            var_233.update();
            space.name_53(name_53);
            if(this.var_1092)
            {
               this._debug.clear();
               this._debug.draw(space);
               this._debug.flush();
            }
         }
      }
   }
}
