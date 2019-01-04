package com.remindgames.jellygame.hint
{
   import com.remindgames.jellygame.Level;
   import flash.display.Sprite;
   import flash.geom.Point;
   import package_1.class_12;
   import package_23.class_178;
   
   public final class Hint_2 extends Sprite
   {
       
      
      public var cursorID:int = 2;
      
      private var var_431:class_146;
      
      private var var_617:class_178;
      
      private var var_691:Array;
      
      private var var_518:Array;
      
      public var complete:Boolean = false;
      
      public function Hint_2()
      {
         this.var_691 = [new Point(61.75,185.7),new Point(61.75,335.7)];
         this.var_518 = [true];
         super();
         this.alpha = 0;
         this.visible = false;
         this.var_617 = new class_178();
         this.var_617.method_111("Tutor_2");
         this.var_617.x = 25;
         this.var_617.y = 138.85;
         this.var_617.stop();
         addChild(this.var_617);
      }
      
      public final function start() : void
      {
         class_12.addTween(this,{
            class_2.method_14(-1820302664):0.5,
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
            class_203.currentCursor.x = this.var_691[0].x;
            class_203.currentCursor.y = this.var_691[0].y;
            class_203.currentCursor.gotoAndStop(1);
            if(this.var_518[0])
            {
               class_12.addTween(class_203.currentCursor,{
                  class_2.method_14(-1820302664):0,
                  "time":0.5,
                  "alpha":1,
                  "visible":true,
                  "onComplete":function():void
                  {
                     class_203.currentCursor.gotoAndPlay(1);
                     class_12.addTween(class_203.currentCursor,{
                        "delay":0.5,
                        "time":1.5,
                        "x":var_691[1].x,
                        "y":var_691[1].y,
                        "onComplete":function():void
                        {
                           class_12.addTween(class_203.currentCursor,{
                              "delay":0,
                              "time":0.5,
                              "alpha":0,
                              "visible":false,
                              "onComplete":name_53
                           });
                        }
                     });
                  }
               });
            }
         }
      }
      
      public final function update(param1:Boolean = false, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false) : void
      {
         var _loc6_:int = 0;
         if(!this.complete)
         {
            if(param2)
            {
               _loc6_ = 0;
               while(_loc6_ < Level.var_200.length)
               {
                  if(Level.var_200[_loc6_].colected)
                  {
                     if(Point.distance(new Point(Level.var_200[_loc6_].graphics.x,Level.var_200[_loc6_].graphics.y),new Point(236.5,262.05)) < 50)
                     {
                        this.complete = true;
                        class_12.addTween(this,{
                           "time":1,
                           "alpha":0,
                           "visible":false
                        });
                        class_12.addTween(class_203.currentCursor,{
                           "time":1,
                           "alpha":0,
                           "visible":false
                        });
                        this.var_518[0] = false;
                        return;
                     }
                  }
                  _loc6_++;
               }
            }
         }
      }
      
      public final function dispose() : void
      {
         this.complete = true;
         class_12.method_97(this);
         class_12.method_97(class_203.currentCursor);
         class_12.method_97(this.var_617);
         class_12.method_97(this.var_431);
         this.alpha = 0;
         this.visible = false;
         this.var_617.method_129();
         this.var_617 = null;
         this.var_691.length = 0;
         this.var_691 = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.numChildren)
         {
            this.removeChildAt(0);
            _loc1_++;
         }
         this.var_431 = null;
      }
   }
}
