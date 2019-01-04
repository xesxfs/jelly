package com.remindgames.jellygame.hint
{
   import com.remindgames.jellygame.Level;
   import flash.display.Sprite;
   import flash.geom.Point;
   import package_1.class_12;
   import package_23.class_178;
   
   public final class Hint_3 extends Sprite
   {
       
      
      public var cursorID:int = 3;
      
      private var var_691:Array;
      
      private var var_518:Array;
      
      private var var_431:class_146;
      
      private var var_560:Array;
      
      private var var_873:Array;
      
      private var var_835:Array;
      
      private var container:Sprite;
      
      private var var_930:Point;
      
      private var var_102:class_178;
      
      private var var_291:int = 0;
      
      private var arrow1:class_178;
      
      private var arrow2:class_178;
      
      public var complete:Boolean = false;
      
      public function Hint_3()
      {
         this.var_691 = [new Point(394.8,203.15),new Point(343.8,308.65)];
         this.var_518 = [true,true];
         this.var_560 = [];
         this.var_873 = [new Point(93.25,-28),new Point(-13.8,190.05)];
         this.var_835 = [new Point(80.25,0),new Point(-1.3,165.05)];
         this.var_930 = new Point(362.25,252.1);
         super();
         this.alpha = 0;
         this.visible = 0;
         this.container = new Sprite();
         this.container.x = 310.05;
         this.container.y = 139.7;
         addChild(this.container);
         this.arrow1 = new class_178();
         this.arrow1.method_111("Hint_3_2");
         this.arrow1.x = 80.25;
         this.arrow1.y = 0;
         this.arrow1.stop();
         this.container.addChild(this.arrow1);
         this.arrow2 = new class_178();
         this.arrow2.method_111("Hint_3_3");
         this.arrow2.x = -1.3;
         this.arrow2.y = 165.05;
         this.arrow2.stop();
         this.container.addChild(this.arrow2);
         this.var_560.push(this.arrow1);
         this.var_560.push(this.arrow2);
         this.var_102 = new class_178();
         this.var_102.method_111("Hint_3_1");
         this.var_102.x = 5.05;
         this.var_102.y = 67.75;
         this.var_102.stop();
         this.container.addChild(this.var_102);
         this.var_431 = new class_146();
         this.var_431.x = 483.2;
         this.var_431.y = 303.25;
         this.var_431.alpha = 0;
         addChild(this.var_431);
      }
      
      public final function start() : void
      {
         this.var_431.var_966.text = "DRAG\nJELLY";
         class_12.addTween(this,{
            class_2.method_14(-1820302664):0.5,
            "time":class_203.const_15,
            "alpha":1,
            "visible":true,
            "onComplete":this.name_53
         });
         class_12.addTween(this.var_431,{
            class_2.method_14(-1820302664):1.5,
            "time":1,
            "alpha":1,
            "visible":true,
            "x":350.2,
            "y":303.25
         });
      }
      
      private final function name_53() : void
      {
         var var_1145:int = 0;
         var var_62:int = 0;
         if(!this.complete)
         {
            if(this.var_291 == 2 || this.var_291 == 0 || !this.var_518[1])
            {
               class_203.currentCursor.alpha = 0;
               class_203.currentCursor.visible = false;
               class_203.currentCursor.gotoAndStop(1);
               class_203.currentCursor.x = this.var_930.x;
               class_203.currentCursor.y = this.var_930.y;
               class_203.currentCursor.rotation = 0;
            }
            if(this.var_291 >= 2)
            {
               this.var_291 = 1;
            }
            else
            {
               this.var_291++;
            }
            if(!this.var_518[this.var_291 - 1])
            {
               if(this.var_291 == 1)
               {
                  this.var_291++;
               }
               else if(this.var_291 == 2)
               {
                  this.var_291 = 1;
               }
               if(!this.var_518[this.var_291 - 1])
               {
                  return;
               }
            }
            var_1145 = -1;
            var_62 = 1;
            if(this.var_291 >= 2 && this.var_518[0])
            {
               var_62 = 0;
            }
            if(this.var_291 == 2)
            {
               var_1145 = 1;
            }
            class_12.addTween(class_203.currentCursor,{
               class_2.method_14(-1820302664):0,
               "time":0.3 * var_62,
               "alpha":1,
               "visible":true,
               "onComplete":function():void
               {
                  if(var_291 == 1 || !var_518[0])
                  {
                     class_203.currentCursor.gotoAndPlay(1);
                  }
                  class_12.addTween(var_560[var_291 - 1],{
                     "delay":0.6 * var_62,
                     "time":0.6,
                     "x":var_873[var_291 - 1].x,
                     "y":var_873[var_291 - 1].y,
                     "onComplete":function():void
                     {
                        class_12.addTween(var_560[var_291 - 1],{
                           "delay":0,
                           "time":0.6,
                           "x":var_835[var_291 - 1].x,
                           "y":var_835[var_291 - 1].y
                        });
                     }
                  });
                  class_12.addTween(class_203.currentCursor,{
                     "delay":0.6 * var_62,
                     "time":0.6,
                     "x":var_691[var_291 - 1].x,
                     "y":var_691[var_291 - 1].y,
                     "rotation":45 * var_1145,
                     "onComplete":function():void
                     {
                        if(var_291 == 2 || !var_518[1])
                        {
                           class_12.addTween(class_203.currentCursor,{
                              "delay":0,
                              "time":0.5,
                              "alpha":0,
                              "visible":false,
                              "onComplete":name_53
                           });
                        }
                        else
                        {
                           name_53();
                        }
                     }
                  });
               }
            });
         }
      }
      
      public final function update(param1:Boolean = false, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(!this.complete)
         {
            if(param2)
            {
               _loc6_ = 0;
               while(_loc6_ < Level.var_200.length)
               {
                  if(Level.var_200[_loc6_].colected)
                  {
                     _loc7_ = 0;
                     while(_loc7_ < this.var_691.length)
                     {
                        if(Point.distance(new Point(Level.var_200[_loc6_].graphics.x,Level.var_200[_loc6_].graphics.y),this.var_691[_loc7_]) < 50)
                        {
                           if(this.var_518[_loc7_])
                           {
                              class_12.method_97(class_203.currentCursor);
                              class_12.addTween(this.var_560[_loc7_],{
                                 "time":0.5,
                                 "alpha":0,
                                 "visible":false
                              });
                              class_12.addTween(class_203.currentCursor,{
                                 "time":0.5,
                                 "alpha":0,
                                 "visible":false,
                                 "onComplete":this.name_53
                              });
                              this.var_518[_loc7_] = false;
                           }
                        }
                        _loc7_++;
                     }
                  }
                  _loc6_++;
               }
               if(!this.var_518[0] && !this.var_518[1] && !this.complete)
               {
                  this.complete = true;
                  class_12.addTween(this,{
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
         class_12.method_97(this.var_560[0]);
         class_12.method_97(this.var_560[1]);
         class_12.method_97(this.var_431);
         class_12.method_97(this.var_102);
         class_12.method_97(this.container);
         this.alpha = 0;
         this.visible = false;
         this.arrow1.method_129();
         this.arrow1 = null;
         this.arrow2.method_129();
         this.arrow2 = null;
         this.var_102.method_129();
         this.var_102 = null;
         this.var_560.length = 0;
         this.var_560 = null;
         this.var_873.length = 0;
         this.var_873 = null;
         this.var_835.length = 0;
         this.var_835 = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.numChildren)
         {
            this.removeChildAt(0);
            _loc1_++;
         }
         this.var_431 = null;
         this.container = null;
      }
   }
}
