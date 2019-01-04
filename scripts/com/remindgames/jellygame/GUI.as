package com.remindgames.jellygame
{
   import flash.display.Sprite;
   import package_1.class_12;
   import package_23.class_178;
   import package_24.SWFProfiler;
   
   public final class GUI extends Sprite
   {
      
      private static var var_200:class_178;
      
      private static var var_442:Sprite;
       
      
      private var var_395:class_192;
      
      private var var_719:class_192;
      
      public var var_1106:Boolean = false;
      
      public function GUI()
      {
         super();
         this.var_395 = new class_192("Level_restart",617.95,4.8,"GUI_Restart");
         this.var_395.visible = false;
         addChild(this.var_395);
         this.var_719 = new class_192("Level_pause",654.7,2.8,"GUI_Pause");
         this.var_719.visible = false;
         addChild(this.var_719);
         var_200 = new class_178();
         var_200.method_111("GUI_Stars");
         var_200.stop();
         var_200.visible = false;
         var_200.x = 3.15;
         var_200.y = 2.6;
         var_200.alpha = 0.8;
         var_200.scaleY = 0.83;
         var_200.scaleX = 0.83;
         var_200.smoothing = true;
         var_200.mouseChildren = false;
         var_200.mouseEnabled = false;
         addChild(var_200);
         var_442 = new Sprite();
         var_442.graphics.beginFill(16777215,1);
         var_442.graphics.drawRect(0,0,App.const_7,App.const_8);
         var_442.visible = false;
         var_442.alpha = 0;
         var_442.mouseChildren = false;
         var_442.mouseEnabled = false;
         addChild(var_442);
      }
      
      public static function method_295() : void
      {
         if(var_442)
         {
            class_12.addTween(var_442,{
               class_2.method_14(-1820302664):0,
               "time":0.1,
               "alpha":0.8,
               "visible":true,
               "onComplete":function():*
               {
                  class_12.addTween(var_442,{
                     "delay":0,
                     "time":0.3,
                     "alpha":0,
                     "visible":false
                  });
               }
            });
            method_269(0);
         }
      }
      
      public static function method_269(param1:*) : void
      {
         var _loc2_:int = param1 + 1;
         if(_loc2_ > 4)
         {
            _loc2_ = 4;
         }
         if(var_200)
         {
            var_200.gotoAndStop(_loc2_);
         }
      }
      
      public final function method_546() : void
      {
         SWFProfiler.var_484.length = 0;
         SWFProfiler.var_517.length = 0;
         this.var_1106 = true;
         this.var_719.y = 2.8;
         this.var_395.y = 4.8;
         var_200.y = 2.6;
         if(!this.var_719.visible)
         {
            this.var_719.visible = true;
         }
         if(!this.var_395.visible)
         {
            this.var_395.visible = true;
         }
         if(!var_200.visible)
         {
            var_200.visible = true;
         }
      }
      
      public final function method_247() : void
      {
         SWFProfiler.var_484.length = 0;
         SWFProfiler.var_517.length = 0;
         this.var_1106 = false;
         class_12.addTween(this.var_395,{
            class_2.method_14(-1820302664):0,
            "time":0.5,
            "y":-50,
            "visible":false,
            "transition":"easeInBack"
         });
         class_12.addTween(this.var_719,{
            class_2.method_14(-1820302664):0,
            "time":0.5,
            "y":-50,
            "visible":false,
            "transition":"easeInBack"
         });
         class_12.addTween(var_200,{
            class_2.method_14(-1820302664):0,
            "time":0.5,
            "y":-50,
            "visible":false,
            "transition":"easeInBack"
         });
         if(var_442.visible)
         {
            var_442.visible = false;
         }
      }
   }
}
