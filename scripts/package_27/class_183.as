package package_27
{
   import com.remindgames.jellygame.App;
   import com.remindgames.jellygame.Game;
   import com.remindgames.jellygame.class_192;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import package_1.class_12;
   
   public final class class_183 extends Sprite
   {
       
      
      private var var_889:Sprite;
      
      private var var_1015:class_192;
      
      private var var_979:class_192;
      
      private var var_989:class_192;
      
      private var _bg:Sprite;
      
      public function class_183()
      {
         super();
         this.visible = false;
         this.alpha = 0;
         this._bg = new Sprite();
         this._bg.graphics.beginFill(0,0.5);
         this._bg.graphics.drawRect(0,0,App.const_7,App.const_8);
         addChild(this._bg);
         this.var_889 = new MC_dp();
         this.var_889.x = 175;
         this.var_889.y = 202;
         addChild(this.var_889);
         this.var_989 = new class_192("UI_button_close",530.6,180.3,class_2.method_14(-1820302822),0.6,1,2,true);
         addChild(this.var_989);
         this.var_1015 = new class_192("UI_button_yes",374.1,289.95,class_2.method_14(-1820302802),0.5);
         addChild(this.var_1015);
         this.var_979 = new class_192("UI_button_cancel",193.3,289.95,class_2.method_14(-1820302630),0.5);
         addChild(this.var_979);
         this.addEventListener(MouseEvent.CLICK,this.method_604);
      }
      
      public final function close() : void
      {
         class_12.addTween(this,{
            class_2.method_14(-1820302664):0,
            "time":0,
            "alpha":0,
            "visible":false
         });
      }
      
      public final function open() : void
      {
         class_12.addTween(this,{
            class_2.method_14(-1820302664):0,
            "time":0.4,
            "alpha":1,
            "visible":true
         });
      }
      
      private final function method_604(param1:MouseEvent) : void
      {
         if(param1.target == this.var_989 || param1.target == this.var_979 || param1.target == this._bg)
         {
            this.close();
         }
         if(param1.target == this.var_1015)
         {
            if(Game.var_205)
            {
               Game.var_205.trackEvent("SYSTEM","SAVE_DEL");
            }
            Game.var_183.clear();
            Game.var_163 = Game.var_183.tt;
            this.close();
         }
      }
   }
}
