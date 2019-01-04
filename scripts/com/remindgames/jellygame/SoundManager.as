package com.remindgames.jellygame
{
   import treefortress.sound.SoundAS;
   
   public final class SoundManager
   {
       
      
      public function SoundManager()
      {
         super();
      }
      
      public static function method_190(param1:Number) : Number
      {
         return (param1 - App.const_11) / (App.const_11 / 100) / 100;
      }
      
      public final function method_714() : void
      {
         SoundAS.group(class_2.method_14(-1820302544)).addSound(class_2.method_14(-1820302743),new Music_main());
         SoundAS.group(class_2.method_14(-1820302544)).addSound("Level",new Music_level());
         SoundAS.group(class_2.method_14(-1820302475)).addSound(class_2.method_14(-1820302678),new SFX_Click());
         SoundAS.group(class_2.method_14(-1820302475)).addSound(class_2.method_14(-1820302472),new SFX_Hero_1());
         SoundAS.group(class_2.method_14(-1820302475)).addSound(class_2.method_14(-1820302489),new SFX_Hero_2());
         SoundAS.group(class_2.method_14(-1820302475)).addSound(class_2.method_14(-1820302467),new SFX_Hero_3());
         SoundAS.group(class_2.method_14(-1820302475)).addSound(class_2.method_14(-1820302469),new SFX_Hero_4());
         SoundAS.group(class_2.method_14(-1820302475)).addSound(class_2.method_14(-1820302494),new SFX_Hero_5());
         SoundAS.group(class_2.method_14(-1820302475)).addSound(class_2.method_14(-1820302492),new SFX_Hero_6());
         SoundAS.group(class_2.method_14(-1820302475)).addSound(class_2.method_14(-1820302670),new SFX_Hand_1());
         SoundAS.group(class_2.method_14(-1820302475)).addSound(class_2.method_14(-1820302672),new SFX_Hand_2());
         SoundAS.group(class_2.method_14(-1820302475)).addSound(class_2.method_14(-1820302671),new SFX_Hand_3());
         SoundAS.group(class_2.method_14(-1820302475)).addSound(class_2.method_14(-1820302659),new SFX_Hand_4());
         SoundAS.group(class_2.method_14(-1820302475)).addSound(class_2.method_14(-1820302658),new SFX_Hand_5());
         SoundAS.group(class_2.method_14(-1820302475)).addSound(class_2.method_14(-1820302662),new SFX_Hand_6());
         SoundAS.group(class_2.method_14(-1820302475)).addSound(class_2.method_14(-1820302660),new SFX_Hand_7());
         SoundAS.group(class_2.method_14(-1820302475)).addSound(class_2.method_14(-1820302570),new SFX_Exit_1());
         SoundAS.group(class_2.method_14(-1820302475)).addSound(class_2.method_14(-1820302569),new SFX_Exit_2());
         SoundAS.group(class_2.method_14(-1820302475)).addSound(class_2.method_14(-1820302560),new SFX_Disk());
         SoundAS.group(class_2.method_14(-1820302475)).addSound(class_2.method_14(-1820302826),new SFX_Complete());
         SoundAS.group(class_2.method_14(-1820302475)).addSound(class_2.method_14(-1820302817),new SFX_Btn_onoff());
         SoundAS.group(class_2.method_14(-1820302475)).addSound(class_2.method_14(-1820302410),new SFX_Btn_on());
         SoundAS.group(class_2.method_14(-1820302475)).addSound(class_2.method_14(-1820302636),new SFX_Btn_off());
         SoundAS.group(class_2.method_14(-1820302475)).addSound(class_2.method_14(-1820302748),new SFX_BS());
         SoundAS.group(class_2.method_14(-1820302475)).addSound(class_2.method_14(-1820302673),new SFX_Water());
         SoundAS.group(class_2.method_14(-1820302475)).addSound(class_2.method_14(-1820302627),new SFX_Score());
         SoundAS.group(class_2.method_14(-1820302475)).addSound(class_2.method_14(-1820302648),new SFX_Reel_tent());
         SoundAS.group(class_2.method_14(-1820302475)).addSound(class_2.method_14(-1820302596),new SFX_Reel_force_1());
         SoundAS.group(class_2.method_14(-1820302475)).addSound(class_2.method_14(-1820302595),new SFX_Reel_force_2());
         SoundAS.group(class_2.method_14(-1820302475)).addSound(class_2.method_14(-1820302594),new SFX_Reel_force_3());
         SoundAS.group(class_2.method_14(-1820302475)).addSound(class_2.method_14(-1820302812),new SFX_Platform());
         SoundAS.group(class_2.method_14(-1820302475)).addSound("Key",new SFX_Key());
         SoundAS.group(class_2.method_14(-1820302475)).addSound("Star",new SFX_Star());
         SoundAS.group(class_2.method_14(-1820302475)).addSound("Particles_1",new SFX_Particles_1());
         SoundAS.group(class_2.method_14(-1820302475)).addSound("Particles_2",new SFX_Particles_2());
         SoundAS.group(class_2.method_14(-1820302475)).addSound("RStar_1",new SFX_RStar_1());
         SoundAS.group(class_2.method_14(-1820302475)).addSound("RStar_2",new SFX_RStar_2());
         SoundAS.group(class_2.method_14(-1820302475)).addSound("RStar_3",new SFX_RStar_3());
         SoundAS.group(class_2.method_14(-1820302475)).addSound("Scissors",new SFX_Scissors());
      }
   }
}
