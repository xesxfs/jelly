package package_27
{
   import com.remindgames.jellygame.App;
   import com.remindgames.jellygame.Game;
   import com.remindgames.jellygame.Level;
   import com.remindgames.jellygame.class_192;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import package_1.class_12;
   
   public final class class_182 extends Sprite
   {
       
      
      private var _bg:Sprite;
      
      private var var_889:MC_qual;
      
      private var var_1109:class_192;
      
      private var var_1076:class_192;
      
      private var var_1135:class_192;
      
      public function class_182()
      {
         super();
         this.visible = false;
         this.alpha = 0;
         this._bg = new Sprite();
         this._bg.graphics.beginFill(0,0.5);
         this._bg.graphics.drawRect(0,0,App.const_7,App.const_8);
         addChild(this._bg);
         this.var_889 = new MC_qual();
         this.var_889.x = 70;
         this.var_889.y = 168.7;
         addChild(this.var_889);
         this.var_1109 = new class_192("UI_button_low",164.35,237.7,"LOW",0.4,1,2,true);
         addChild(this.var_1109);
         this.var_1076 = new class_192("UI_button_medium",297.3,237.7,"MEDIUM",0.4,1,2,true);
         addChild(this.var_1076);
         this.var_1135 = new class_192("UI_button_high",440.3,237.7,"HIGH",0.4,1,2,true);
         addChild(this.var_1135);
         this.addEventListener(MouseEvent.CLICK,this.method_604);
      }
      
      private final function method_604(param1:MouseEvent) : void
      {
         this.close();
      }
      
      public final function close() : void
      {
         class_12.addTween(this,{
            class_2.method_14(-1820302664):0,
            "time":0,
            "alpha":0,
            "visible":false
         });
         Level.stopAll = false;
      }
      
      public final function open() : void
      {
         if(Game.var_205)
         {
            Game.var_205.trackPageview("PERFOMANCE");
         }
         class_12.addTween(this,{
            class_2.method_14(-1820302664):0,
            "time":0.4,
            "alpha":1,
            "visible":true
         });
      }
   }
}
