package package_27
{
   import com.remindgames.jellygame.Game;
   import com.remindgames.jellygame.class_192;
   import flash.display.BlendMode;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.system.System;
   import package_1.class_12;
   import package_23.class_178;
   import package_28.class_208;
   import package_30.class_193;
   
   public final class class_177 extends Sprite
   {
       
      
      private var var_1090:class_192;
      
      private var var_1011:class_192;
      
      private var var_998:class_192;
      
      private var _color:ColorTransform;
      
      private var var_1157:ColorTransform;
      
      private var var_398:class_178;
      
      private var var_742:class_192;
      
      private var var_741:class_192;
      
      private var var_706:class_192;
      
      private var var_697:class_192;
      
      private var var_799:Sprite;
      
      private var var_965:Boolean = false;
      
      private var _info:MovieClip;
      
      private var var_815:class_192;
      
      private var var_997:class_192;
      
      private var var_520:class_178;
      
      private var var_596:Sprite;
      
      private var var_604:class_178;
      
      private var var_614:class_178;
      
      private var var_580:class_178;
      
      private var var_465:class_178;
      
      public var dx:Number = 25;
      
      public var dy:Number = 255;
      
      private var var_810:Number = 0;
      
      private var var_540:Number = 0;
      
      private var var_1188:Number;
      
      private var var_1196:Number;
      
      private var var_1204:int = 0;
      
      private var var_1095:Array;
      
      private var name_77:Boolean = false;
      
      private var var_1004:Boolean = false;
      
      private var var_502:MovieClip;
      
      private var _bg:class_178;
      
      public function class_177()
      {
         this._color = new ColorTransform(2,2,2);
         this.var_1157 = new ColorTransform();
         this.var_1095 = [{
            "dx":60,
            "dy":461
         },{
            "dx":350,
            "dy":525
         },{
            "dx":589,
            "dy":467
         },{
            "dx":678,
            "dy":262
         },{
            "dx":582,
            "dy":55
         },{
            "dx":350,
            "dy":8
         },{
            "dx":53,
            "dy":60
         }];
         super();
         class_193.init();
         this._bg = new class_178();
         this._bg.method_111("MC_Screen_main");
         this._bg.stop();
         this._bg.x = 0;
         this._bg.y = 0;
         addChild(this._bg);
         this.var_520 = new class_178();
         this.var_520.method_111("Main_Logo");
         this.var_520.x = 350;
         this.var_520.y = 62.5;
         this.var_520.repeat = false;
         this.var_520.stop();
         addChild(this.var_520);
         this.var_465 = new class_178();
         this.var_465.method_111("Main_sh");
         this.var_465.x = 337.8;
         this.var_465.y = 135.05;
         this.var_465.repeat = false;
         this.var_465.stop();
         this.var_465.blendMode = BlendMode.OVERLAY;
         addChild(this.var_465);
         this.var_596 = new Sprite();
         this.var_596.x = 350;
         this.var_596.y = 130.65;
         addChild(this.var_596);
         this.var_604 = new class_178();
         this.var_604.method_111("Main_hero_1");
         this.var_604.stop();
         this.var_604.x = -55.15;
         this.var_604.y = 50.7;
         this.var_596.addChild(this.var_604);
         this.var_614 = new class_178();
         this.var_614.method_111("Main_hero_2");
         this.var_614.stop();
         this.var_614.x = 30;
         this.var_614.y = 34.15;
         this.var_596.addChild(this.var_614);
         this.var_580 = new class_178();
         this.var_580.method_111("Main_hero_3");
         this.var_580.stop();
         this.var_580.x = -8.3;
         this.var_580.y = 38.35;
         this.var_596.addChild(this.var_580);
         this.var_1090 = new class_192("UI_button_play",293.45,241.15,class_2.method_14(-1820302661));
         addChild(this.var_1090);
         this.var_799 = new Sprite();
         this.var_799.x = 70;
         this.var_799.y = 275;
         this.var_799.graphics.beginFill(0,1);
         this.var_799.graphics.drawRect(0,0,180,50);
         this.var_398 = new class_178();
         this.var_398.method_111("MC_settings_lock");
         this.var_398.stop();
         this.var_398.x = 221.5;
         this.var_398.y = 275.45;
         this.var_398.alpha = 0;
         this.var_398.smoothing = true;
         addChild(this.var_398);
         this.var_398.mask = this.var_799;
         this._info = new MC_info();
         this._info.x = 88.05;
         this._info.y = 441.05;
         this._info.ctc.alpha = 0;
         this._info.ctc.visible = false;
         this._info.visible = false;
         this._info.alpha = 0;
         addChild(this._info);
         this.var_815 = new class_192("UI_button_close",650,420,class_2.method_14(-1820302824),0.7,1,2,true);
         addChild(this.var_815);
         this.var_815.alpha = 0;
         this.var_742 = new class_192("UI_button_sound",5.75,3.5,class_2.method_14(-1820302526),0.7,1,2,true);
         this.var_398.addChild(this.var_742);
         this.var_741 = new class_192("UI_button_sound_off",5.75,3.5,class_2.method_14(-1820302526),0.7,1,2,true);
         this.var_398.addChild(this.var_741);
         this.var_706 = new class_192("UI_button_music",52.45,3.5,class_2.method_14(-1820302789),0.7,1,2,true);
         this.var_398.addChild(this.var_706);
         this.var_697 = new class_192("UI_button_music_off",52.45,3.5,class_2.method_14(-1820302789),0.7,1,2,true);
         this.var_398.addChild(this.var_697);
         this.var_997 = new class_192("UI_button_del",100,3.5,class_2.method_14(-1820302425),0.7,1,2,true);
         this.var_398.addChild(this.var_997);
         this.var_1011 = new class_192("UI_button_settings",220.25,272.05,class_2.method_14(-1820302574));
         addChild(this.var_1011);
         this.var_998 = new class_192("UI_button_info",253.9,333.4,class_2.method_14(-1820302799),0.79,1,2,true);
         addChild(this.var_998);
         this.var_502 = new MainSP();
         this.var_502.x = 277.65;
         this.var_502.y = 444.05;
         this.var_502.gotoAndStop(1);
         addChild(this.var_502);
         this.var_502.addEventListener(MouseEvent.MOUSE_OVER,this.method_648);
         this.var_502.addEventListener(MouseEvent.MOUSE_OUT,this.method_661);
         this.var_502.addEventListener(MouseEvent.CLICK,this.method_582);
         this.addEventListener(MouseEvent.CLICK,this.method_604);
         this.method_396();
      }
      
      private final function method_582(param1:MouseEvent) : void
      {
         navigateToURL(new URLRequest("http://www.addictinggames.com/"),"_blank");
      }
      
      private final function method_648(param1:MouseEvent) : void
      {
         this.var_502.gotoAndStop(2);
      }
      
      private final function method_661(param1:MouseEvent) : void
      {
         this.var_502.gotoAndStop(1);
      }
      
      public final function hide(param1:Boolean = true) : void
      {
         if(param1)
         {
            this.removeEventListener(Event.ENTER_FRAME,this.method_517);
            this.var_1004 = false;
         }
         else
         {
            this.addEventListener(Event.ENTER_FRAME,this.method_517);
            this.var_1004 = true;
            this.method_396();
            this.var_520.z = 45;
            this.var_596.z = -50;
            this.var_465.z = -200;
            class_12.addTween(this.var_520,{
               "time":40,
               "z":0
            });
            class_12.addTween(this.var_596,{
               "time":80,
               "z":0
            });
            class_12.addTween(this.var_465,{
               "time":100,
               "z":100
            });
         }
      }
      
      private final function method_396(param1:Number = 25, param2:Number = 255) : void
      {
         if(this.var_1004)
         {
            this.dx = param1;
            this.dy = param2;
            class_12.addTween(this,{
               "time":10,
               "dx":25,
               "dy":255,
               class_2.method_14(-1820302640):this.var_1095,
               "onComplete":this.method_396,
               "transition":"linear"
            });
         }
      }
      
      private final function method_517(param1:Event) : void
      {
         this.var_810 = this.dx;
         this.var_540 = this.dy;
         this.var_520.rotationY = -(this.var_810 - 350) / 50;
         this.var_520.rotationX = (250 - this.var_540) / 50;
         this.var_580.rotationY = (this.var_810 - 350) / 70;
         this.var_580.rotationZ = (this.var_540 - 350) / 100;
         this.var_580.rotationX = -(300 - this.var_540) / 45;
         this.var_604.rotationY = (this.var_810 - 350) / 25;
         this.var_604.rotationZ = (this.var_540 - 350) / 80;
         this.var_604.rotationX = -(300 - this.var_540) / 30;
         this.var_614.rotationY = (this.var_810 - 350) / 25;
         this.var_614.rotationZ = (this.var_540 - 350) / 80;
         this.var_614.rotationX = -(300 - this.var_540) / 30;
         this.var_465.rotationY = -(this.var_810 - 350) / 50;
         this.var_465.rotationZ = (this.var_540 - 350) / 80;
         this.var_465.rotationX = (300 - this.var_540) / 30;
      }
      
      private final function method_604(param1:MouseEvent) : void
      {
         var var_1187:MouseEvent = param1;
         if(var_1187.target == this.var_1011)
         {
            if(!this.var_965)
            {
               this.var_965 = true;
               if(Game.var_205)
               {
                  Game.var_205.trackPageview("SETTINGS");
               }
               class_12.addTween(this.var_398,{
                  class_2.method_14(-1820302664):0,
                  "time":0.4,
                  "alpha":1,
                  "x":73.5
               });
            }
            else
            {
               this.method_307();
            }
         }
         if(var_1187.target == this.var_998)
         {
            this.method_307();
            class_12.addTween(this.var_502,{
               class_2.method_14(-1820302664):0,
               "time":0.5,
               "alpha":0,
               "visible":false
            });
            if(Game.var_205)
            {
               Game.var_205.trackPageview("CREDITS");
            }
            class_12.addTween(this,{
               class_2.method_14(-1820302664):0,
               "time":1,
               "y":-410,
               "rounded":true
            });
            class_12.addTween(this._info,{
               class_2.method_14(-1820302664):0,
               "time":5,
               "alpha":1,
               "visible":true
            });
            class_12.addTween(this.var_815,{
               class_2.method_14(-1820302664):0,
               "time":5,
               "alpha":1,
               "visible":true
            });
         }
         if(var_1187.target == this.var_815)
         {
            class_12.addTween(this.var_502,{
               class_2.method_14(-1820302664):0,
               "time":0.5,
               "alpha":1,
               "visible":true
            });
            class_12.addTween(this,{
               class_2.method_14(-1820302664):0,
               "time":0.7,
               "y":0,
               "rounded":true
            });
            class_12.addTween(this._info,{
               class_2.method_14(-1820302664):0,
               "time":2,
               "alpha":0,
               "visible":false
            });
            class_12.addTween(this.var_815,{
               class_2.method_14(-1820302664):0,
               "time":2,
               "alpha":0,
               "visible":false
            });
         }
         if(var_1187.target == this.var_742)
         {
            Game.name_37 = false;
         }
         if(var_1187.target == this.var_741)
         {
            Game.name_37 = true;
         }
         if(var_1187.target == this.var_706)
         {
            Game.method_260 = false;
         }
         if(var_1187.target == this.var_697)
         {
            Game.method_260 = true;
         }
         if(var_1187.target == this.var_997)
         {
            this.method_307();
         }
         if(var_1187.target.name == "mail")
         {
            System.setClipboard("alexandr.balabanovich@gmail.com");
            class_12.addTween(this._info.ctc,{
               class_2.method_14(-1820302664):0,
               "time":1,
               "alpha":1,
               "visible":true,
               "onComplete":function():*
               {
                  class_12.addTween(_info.ctc,{
                     "delay":0,
                     "time":1,
                     "alpha":0,
                     "visible":false
                  });
               }
            });
         }
         this.method_641();
      }
      
      private final function method_641() : void
      {
         if(Game.var_452)
         {
            this.var_742.visible = true;
            this.var_742.alpha = 1;
            this.var_741.visible = false;
            this.var_741.alpha = 0;
         }
         else
         {
            this.var_742.visible = false;
            this.var_742.alpha = 0;
            this.var_741.visible = true;
            this.var_741.alpha = 1;
         }
         if(Game.var_460)
         {
            this.var_706.visible = true;
            this.var_706.alpha = 1;
            this.var_697.visible = false;
            this.var_697.alpha = 0;
         }
         else
         {
            this.var_706.visible = false;
            this.var_706.alpha = 0;
            this.var_697.visible = true;
            this.var_697.alpha = 1;
         }
      }
      
      public final function method_307() : void
      {
         this.var_965 = false;
         class_12.addTween(this.var_398,{
            class_2.method_14(-1820302664):0,
            "time":0.4,
            "alpha":0,
            "x":221.5
         });
      }
   }
}
