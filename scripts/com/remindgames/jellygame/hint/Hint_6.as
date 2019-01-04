package com.remindgames.jellygame.hint
{
   import flash.display.Sprite;
   import flash.geom.Point;
   import package_1.class_12;
   import package_23.class_178;
   import package_30.class_314;
   
   public final class Hint_6 extends Sprite
   {
       
      
      public var cursorID:int = 1;
      
      private var var_1005:Point;
      
      private var var_1061:Point;
      
      private var var_705:int = 0;
      
      private var isReel:Boolean = false;
      
      private var var_552:class_178;
      
      private var arrow:class_178;
      
      private var var_1205:Boolean = false;
      
      public var complete:Boolean = false;
      
      public function Hint_6()
      {
         this.var_1005 = new Point(156.9,384.9);
         this.var_1061 = new Point(74.9,384.9);
         super();
         class_314.init();
         this.alpha = 0;
         this.visible = false;
         this.var_552 = new class_178();
         this.var_552.method_111("Tutor_6");
         this.var_552.stop();
         this.var_552.x = 25.8;
         this.var_552.y = 304.05;
         addChild(this.var_552);
         this.arrow = new class_178();
         this.arrow.method_111("Hint_reel_1");
         this.arrow.x = 36.1;
         this.arrow.y = 441.45;
         this.arrow.stop();
         this.arrow.repeat = false;
         this.arrow.alpha = 0;
         this.arrow.visible = false;
         addChild(this.arrow);
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
      
      private final function name_53(param1:Number = 0) : void
      {
         var var_1194:Number = param1;
         if(!this.complete)
         {
            class_203.currentCursor.alpha = 0;
            class_203.currentCursor.visible = false;
            class_203.currentCursor.x = this.var_1005.x;
            class_203.currentCursor.y = this.var_1005.y;
            if(this.var_705 != 0)
            {
               return;
            }
            class_12.addTween(class_203.currentCursor,{
               class_2.method_14(-1820302664):var_1194,
               "time":1,
               "alpha":1,
               "visible":true,
               "x":this.var_1061.x,
               "y":this.var_1061.y,
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
         var key:Boolean = param1;
         var stars:Boolean = param2;
         var brush:Boolean = param3;
         var button:Boolean = param4;
         var reel:Boolean = param5;
         if(!this.complete)
         {
            if(reel)
            {
               this.var_705++;
               if(this.var_705 == 1 && !this.isReel)
               {
                  this.isReel = true;
                  this.var_705 = 0;
                  class_12.addTween(class_203.currentCursor,{
                     class_2.method_14(-1820302664):0,
                     "time":1,
                     "alpha":0,
                     "visible":false
                  });
                  class_12.addTween(this.var_552,{
                     class_2.method_14(-1820302664):0,
                     "time":1,
                     "alpha":0,
                     "visible":false
                  });
                  class_12.addTween(this.arrow,{
                     class_2.method_14(-1820302664):0,
                     "time":1,
                     "alpha":1,
                     "visible":true,
                     "onComplete":function():void
                     {
                        class_12.addTween(arrow,{
                           "_frame":6,
                           "time":8
                        });
                     }
                  });
                  this.name_53(3);
               }
               else if(this.var_705 == 1 && this.isReel)
               {
                  this.var_705 = 3;
                  class_12.method_97(class_203.currentCursor);
                  class_12.addTween(class_203.currentCursor,{
                     class_2.method_14(-1820302664):0,
                     "time":1,
                     "alpha":0,
                     "visible":false
                  });
                  class_12.addTween(this,{
                     class_2.method_14(-1820302664):0,
                     "time":1,
                     "alpha":0,
                     "visible":false
                  });
               }
            }
         }
      }
      
      public final function dispose() : void
      {
         this.complete = true;
         class_12.method_97(this);
         class_12.method_97(class_203.currentCursor);
         class_12.method_97(this.arrow);
         class_12.method_97(this.var_552);
         this.alpha = 0;
         this.visible = false;
         this.var_552.method_129();
         this.var_552 = null;
         this.arrow.method_129();
         this.arrow = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.numChildren)
         {
            this.removeChildAt(0);
            _loc1_++;
         }
      }
   }
}
