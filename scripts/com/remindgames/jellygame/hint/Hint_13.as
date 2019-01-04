package com.remindgames.jellygame.hint
{
   import flash.display.Sprite;
   import flash.geom.Point;
   import package_1.class_12;
   import package_23.class_178;
   
   public final class Hint_13 extends Sprite
   {
       
      
      public var cursorID:int = 1;
      
      private var var_552:class_178;
      
      private var var_1005:Point;
      
      private var var_1064:Point;
      
      public var complete:Boolean = false;
      
      public function Hint_13()
      {
         this.var_1005 = new Point(557.55,110.95);
         this.var_1064 = new Point(660,110.95);
         super();
         this.alpha = 0;
         this.visible = false;
         this.var_552 = new class_178();
         this.var_552.method_111("Tutor_13");
         this.var_552.stop();
         this.var_552.x = 579.75;
         this.var_552.y = 99.8;
         addChild(this.var_552);
      }
      
      public final function start() : void
      {
         class_12.addTween(this,{
            class_2.method_14(-1820302664):0.2,
            "time":class_203.const_15,
            "alpha":1,
            "visible":true,
            "onComplete":this.name_53
         });
      }
      
      private final function name_53() : void
      {
         if(!this.complete)
         {
            class_203.currentCursor.alpha = 0;
            class_203.currentCursor.visible = false;
            class_203.currentCursor.x = this.var_1005.x;
            class_203.currentCursor.y = this.var_1005.y;
            class_12.addTween(class_203.currentCursor,{
               class_2.method_14(-1820302664):0.5,
               "time":1,
               "alpha":1,
               "visible":true,
               "x":this.var_1064.x,
               "y":this.var_1064.y,
               "onComplete":function():void
               {
                  class_203.currentCursor.gotoAndPlay(1);
                  class_12.addTween(class_203.currentCursor,{
                     "delay":1,
                     "time":0.5,
                     "alpha":0,
                     "visible":false,
                     "onComplete":name_53
                  });
               }
            });
         }
      }
      
      public final function update(param1:Boolean = false, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false) : void
      {
         if(param4 && !this.complete)
         {
            this.complete = true;
            class_12.addTween(this,{
               class_2.method_14(-1820302664):0,
               "time":1,
               "alpha":0,
               "visible":false
            });
            class_12.addTween(class_203.currentCursor,{
               class_2.method_14(-1820302664):0,
               "time":1,
               "alpha":0,
               "visible":false
            });
         }
      }
      
      public final function dispose() : void
      {
         this.complete = true;
         class_12.method_97(this);
         class_12.method_97(class_203.currentCursor);
         this.alpha = 0;
         this.visible = false;
         this.var_552.method_129();
         this.var_552 = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.numChildren)
         {
            this.removeChildAt(0);
            _loc1_++;
         }
      }
   }
}
