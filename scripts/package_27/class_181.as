package package_27
{
   import com.remindgames.jellygame.App;
   import com.remindgames.jellygame.Game;
   import com.remindgames.jellygame.class_192;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import package_1.class_12;
   import treefortress.sound.SoundAS;
   
   public final class class_181 extends Sprite
   {
       
      
      private var var_522:class_192;
      
      private var var_528:class_192;
      
      private var var_524:class_192;
      
      private var var_516:class_192;
      
      private var var_779:class_192;
      
      private var var_754:class_192;
      
      private var var_775:class_192;
      
      private var var_756:class_192;
      
      private var var_570:Sprite;
      
      private var var_584:class_192;
      
      public function class_181()
      {
         super();
         this.var_570 = new Sprite();
         this.var_570.graphics.beginFill(0,1);
         this.var_570.graphics.drawRect(0,0,App.const_7,App.const_8);
         this.var_570.alpha = 0;
         this.var_570.visible = false;
         this.var_570.name = class_2.method_14(-1820302405);
         addChild(this.var_570);
         this.var_522 = new class_192("UI_button_sound",302.05,107.95,class_2.method_14(-1820302814),0.8,1,2,true);
         this.var_522.alpha = 0;
         this.var_522.visible = false;
         addChild(this.var_522);
         this.var_528 = new class_192("UI_button_sound_off",302.05,107.95,class_2.method_14(-1820302814),0.8,1,2,true);
         this.var_528.alpha = 0;
         this.var_528.visible = false;
         addChild(this.var_528);
         this.var_524 = new class_192("UI_button_music",353.35,107.95,class_2.method_14(-1820302480),0.8,1,2,true);
         this.var_524.alpha = 0;
         this.var_524.visible = false;
         addChild(this.var_524);
         this.var_516 = new class_192("UI_button_music_off",353.35,107.95,class_2.method_14(-1820302480),0.8,1,2,true);
         this.var_516.alpha = 0;
         this.var_516.visible = false;
         addChild(this.var_516);
         this.var_779 = new class_192("UI_button_resume",277.3,161.8,class_2.method_14(-1820302405),0.5,1,2,true);
         this.var_779.alpha = 0;
         this.var_779.visible = false;
         addChild(this.var_779);
         this.var_775 = new class_192("UI_button_skip",277.3,227.8,class_2.method_14(-1820302733),0.5,1,2,true);
         this.var_775.alpha = 0;
         this.var_775.visible = false;
         addChild(this.var_775);
         this.var_756 = new class_192("UI_button_restart2",277.3,295.8,class_2.method_14(-1820302577),0.5,1,2,true);
         this.var_756.alpha = 0;
         this.var_756.visible = false;
         addChild(this.var_756);
         this.var_754 = new class_192("UI_button_menu",288.7,362.65,class_2.method_14(-1820302483),1,1,2);
         this.var_754.alpha = 0;
         this.var_754.visible = false;
         addChild(this.var_754);
         this.var_584 = new class_192("UI_button_levels",356.15,362.65,class_2.method_14(-1820302619),1,1,2);
         this.var_584.alpha = 0;
         this.var_584.visible = false;
         this.var_584.smoothing = true;
         addChild(this.var_584);
         this.addEventListener(MouseEvent.CLICK,this.method_604);
      }
      
      private final function method_604(param1:MouseEvent) : void
      {
         if(param1.target == this.var_522)
         {
            Game.var_452 = false;
         }
         if(param1.target == this.var_528)
         {
            Game.var_452 = true;
         }
         if(param1.target == this.var_524)
         {
            Game.var_460 = false;
         }
         if(param1.target == this.var_516)
         {
            Game.var_460 = true;
         }
         this.method_641();
      }
      
      private final function method_641() : void
      {
         if(Game.var_452)
         {
            this.var_522.visible = true;
            this.var_522.alpha = 1;
            this.var_528.visible = false;
            this.var_528.alpha = 0;
         }
         else
         {
            this.var_522.visible = false;
            this.var_522.alpha = 0;
            this.var_528.visible = true;
            this.var_528.alpha = 1;
         }
         if(Game.var_460)
         {
            this.var_524.visible = true;
            this.var_524.alpha = 1;
            this.var_516.visible = false;
            this.var_516.alpha = 0;
         }
         else
         {
            this.var_524.visible = false;
            this.var_524.alpha = 0;
            this.var_516.visible = true;
            this.var_516.alpha = 1;
         }
      }
      
      public final function open() : void
      {
         SoundAS.group(class_2.method_14(-1820302544)).mute = true;
         SoundAS.group(class_2.method_14(-1820302475)).mute = true;
         var _loc1_:int = 0;
         while(_loc1_ < this.numChildren)
         {
            this.getChildAt(_loc1_).alpha = 0;
            this.getChildAt(_loc1_).visible = false;
            _loc1_++;
         }
         class_12.addTween(this.var_570,{
            class_2.method_14(-1820302664):0,
            "time":0.5,
            "alpha":0.3,
            "visible":true
         });
         if(Game.var_452)
         {
            class_12.addTween(this.var_522,{
               class_2.method_14(-1820302664):0,
               "time":0.5,
               "alpha":1,
               "visible":true
            });
         }
         else
         {
            class_12.addTween(this.var_528,{
               class_2.method_14(-1820302664):0,
               "time":0.5,
               "alpha":1,
               "visible":true
            });
         }
         if(Game.var_460)
         {
            class_12.addTween(this.var_524,{
               class_2.method_14(-1820302664):0,
               "time":0.5,
               "alpha":1,
               "visible":true
            });
         }
         else
         {
            class_12.addTween(this.var_516,{
               class_2.method_14(-1820302664):0,
               "time":0.5,
               "alpha":1,
               "visible":true
            });
         }
         class_12.addTween(this.var_779,{
            class_2.method_14(-1820302664):0,
            "time":0.5,
            "alpha":1,
            "visible":true
         });
         class_12.addTween(this.var_775,{
            class_2.method_14(-1820302664):0,
            "time":0.5,
            "alpha":1,
            "visible":true
         });
         class_12.addTween(this.var_756,{
            class_2.method_14(-1820302664):0,
            "time":0.5,
            "alpha":1,
            "visible":true
         });
         class_12.addTween(this.var_754,{
            class_2.method_14(-1820302664):0,
            "time":0.5,
            "alpha":1,
            "visible":true
         });
         class_12.addTween(this.var_584,{
            class_2.method_14(-1820302664):0,
            "time":0.5,
            "alpha":1,
            "visible":true
         });
      }
      
      public final function close() : void
      {
         class_12.method_97(this.var_570);
         class_12.method_97(this.var_522);
         class_12.method_97(this.var_528);
         class_12.method_97(this.var_524);
         class_12.method_97(this.var_516);
         class_12.method_97(this.var_779);
         class_12.method_97(this.var_775);
         class_12.method_97(this.var_756);
         class_12.method_97(this.var_754);
         var _loc1_:int = 0;
         while(_loc1_ < this.numChildren)
         {
            this.getChildAt(_loc1_).alpha = 0;
            this.getChildAt(_loc1_).visible = false;
            _loc1_++;
         }
         if(Game.var_460)
         {
            SoundAS.group(class_2.method_14(-1820302544)).mute = false;
         }
         if(Game.var_452)
         {
            SoundAS.group(class_2.method_14(-1820302475)).mute = false;
         }
      }
   }
}
