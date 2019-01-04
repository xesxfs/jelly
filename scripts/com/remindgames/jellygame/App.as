package com.remindgames.jellygame
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.net.LocalConnection;
   import flash.utils.Timer;
   import package_1.class_12;
   import package_23.class_172;
   import package_24.SWFProfiler;
   import package_25.class_173;
   import package_26.InteractionGroup;
   
   public final class App extends Sprite
   {
      
      public static const gameWidth:Number = 700;
      
      public static const gameHeight:Number = 525;
      
      public static const const_11:Number = 350;
      
      public static const const_23:Number = 262.5;
      
      public static var cursor:class_173;
      
      public static var var_1080:InteractionGroup = new InteractionGroup(true);
       
      
      private var bg:Sprite;
      
      private var var_525:MovieClip;
      
      private var game:Game;
      
      private var _timer:Timer;
      
      private var _start:Boolean = false;
      
      public function App()
      {
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
      
      private final function init(param1:Event = null) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.init);
         this.bg = new Sprite();
         this.bg.graphics.beginFill(0);
         this.bg.graphics.drawRect(0,0,gameWidth,gameHeight);
         addChild(this.bg);
         this.var_525 = new class_129();
         this.var_525.x = 240;
         this.var_525.y = 250.05;
         this.var_525.alpha = 0;
         addChild(this.var_525);
         class_12.addTween(this.var_525,{
            class_2.method_14(-1820302664):0,
            "time":2,
            "alpha":1
         });
         this._timer = new Timer(500,0);
         this._timer.addEventListener(TimerEvent.TIMER,this.onTimeTick);
         this._timer.start();
      }
      
      private final function onTimeTick(param1:TimerEvent) : void
      {
         if(!this._start)
         {
            this._timer.stop();
            this._timer.removeEventListener(TimerEvent.TIMER,this.onTimeTick);
            this._timer = null;
            this._start = true;
            this.method_649();
         }
      }
      
      private final function start() : void
      {
         try
         {
            new LocalConnection().connect(class_2.method_14(-1820302676));
            new LocalConnection().connect(class_2.method_14(-1820302676));
         }
         catch(e:*)
         {
         }
         SWFProfiler.init(stage,this);
         cursor = new class_173();
         cursor.method_509(UI_Cursor_arrow,class_2.method_14(-1820302404));
         cursor.method_509(UI_Cursor_con,class_2.method_14(-1820302549));
         cursor.method_259(class_2.method_14(-1820302404));
         if(Preloader.var_31)
         {
            Preloader.var_31.parent.removeChild(Preloader.var_31);
         }
         this.game = new Game();
         addChild(this.game);
         if(this.contains(this.bg))
         {
            removeChild(this.bg);
         }
         if(this.bg)
         {
            this.bg = null;
         }
         if(this.contains(this.var_525))
         {
            this.var_525.stop();
            removeChild(this.var_525);
         }
         if(this.var_525)
         {
            this.var_525 = null;
         }
      }
      
      private final function method_649() : void
      {
         var _loc1_:class_172 = new class_172();
         _loc1_.method_738(new Array(Hero_main,Hero_hand_end,BG_yelow,BG_blue,BG_red,MC_Platform_wood_1,MC_Platform_wood_1_blue,MC_Platform_wood_1_red,MC_Platform_wood_2,MC_Platform_wood_2_blue,MC_Platform_wood_2_red,MC_Platform_wood_3,MC_Platform_wood_3_red,MC_Platform_wood_4,MC_Platform_wood_4_red,MC_Platform_wood_5,MC_Platform_wood_5_blue,MC_Platform_wood_5_red,MC_Platform_steel_black_1,MC_Platform_steel_black_1_blue,MC_Platform_steel_black_1_red,MC_Platform_steel_black_2,MC_Platform_steel_black_2_blue,MC_Platform_steel_black_2_red,MC_Platform_steel_black_3,MC_Platform_steel_black_3_blue,MC_Platform_steel_black_3_red,MC_Platform_steel_white_1,MC_Platform_steel_white_1_blue,MC_Platform_steel_white_1_red,MC_Platform_steel_white_2,MC_Platform_steel_white_2_blue,MC_Platform_steel_white_2_red,MC_Platform_steel_white_3,MC_Platform_steel_white_3_blue,MC_Platform_steel_white_3_red,MC_Button_black,MC_Button_white,MC_Reel,MC_Reel_blue,MC_Reel_red,MC_Reel_jelly,MC_Platform_color_blue_1,MC_Platform_color_blue_2,MC_Platform_color_blue_3,MC_Platform_color_green_1,MC_Platform_color_green_2,MC_Platform_color_green_3,MC_Platform_color_red_1,MC_Platform_color_red_2,MC_Platform_color_red_3,MC_Disk,MC_Disk_blue,MC_Disk_red,MC_Star,MC_Key,MC_Brush_red,MC_Brush_green,MC_Brush_blue,MC_Disk_cl,MC_Disk_cl_blue,MC_Disk_cl_red,MC_Disk_cr,MC_Disk_cr_blue,MC_Disk_cr_red,MC_EXIT,MC_EXIT_blue,MC_EXIT_red,EXIT_glow,EXIT_glow_blue,EXIT_glow_red,EXIT_open_key,EXIT_open_key_red,EXIT_open_key_blue,EXIT_opened,EXIT_opened_blue,EXIT_opened_red,MC_Star_pick,MC_key_pick,BlackScreen,MC_Screen_main,UI_button_back,UI_button_info,UI_button_menu,UI_button_music,UI_button_levels,UI_button_music_off,UI_button_next,UI_button_pause,UI_button_play,UI_button_restart,UI_button_restart2,UI_button_resume,UI_button_settings,UI_button_settings_ex,UI_button_skip,UI_button_sound,UI_button_sound_off,MC_Screen_levels,UI_levelIcon,MC_settings_lock,UI_button_close,Ss,BlackScreen,Result_stars_mc,GUI_Stars,UI_button_del,MC_level_stars,MC_levels_bg,MC_levels_hand,MC_levels_jelly,MC_Ship,MC_result_record,MC_Levels_stage1,MC_Levels_stage2,MC_Levels_stage3,MC_levels_lock,MC_result_s2_l,MC_result_s2_u,MC_result_s3_l,MC_result_s3_u,UI_button_yes,UI_button_cancel,UI_button_low,UI_button_medium,UI_button_high,UI_button_score,Hint_hand_click,Hint_hand_down,Hint_hand_drag,Hint_keyPoint,Hint_point,Tutor_2,Hint_3_1,Hint_3_2,Hint_3_3,Tutor_6,Hint_reel_1,Tutor_13,Tutor_25,Level_pause,Level_restart,Main_Logo,Main_hero_1,Main_hero_2,Main_hero_3,Main_sh));
         _loc1_.var_847 = 9;
         _loc1_.method_631();
         _loc1_.var_682 = this.start;
      }
   }
}
