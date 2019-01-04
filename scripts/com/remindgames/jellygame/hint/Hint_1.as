package com.remindgames.jellygame.hint
{
   import com.remindgames.jellygame.App;
   import com.remindgames.jellygame.Level;
   import flash.display.Sprite;
   import flash.geom.Point;
   import package_1.class_12;
   import package_23.class_178;
   
   public final class Hint_1 extends Sprite
   {
       
      
      public var cursorID:int = 1;
      
      private var var_431:class_146;
      
      private var var_1042;
      
      private var var_593:Array;
      
      private var var_930:Point;
      
      private var var_694:Array;
      
      private var var_349:class_178;
      
      private var var_409:Array;
      
      private var text:Array;
      
      private var var_429:int = 0;
      
      private var name_76:Boolean = false;
      
      public var complete:Boolean = false;
      
      public function Hint_1()
      {
         var _loc2_:* = null;
         this.var_1042 = [new Point(135.65,282.55),new Point(559.65,282.55)];
         this.var_593 = [];
         this.var_930 = new Point(App.const_11,App.const_23);
         this.var_694 = [new Point(135.7,281.5),new Point(559.8,281.5),new Point(348.7,462.35)];
         this.var_409 = [true,true,false];
         this.text = ["CLICK ON  THE\nPLATFORM","PICK UP"];
         super();
         this.alpha = 0;
         this.visible = false;
         this.var_431 = new class_146();
         this.var_431.alpha = 0;
         this.var_431.visible = false;
         this.var_431.x = 10.8;
         this.var_431.y = 200;
         addChild(this.var_431);
         var _loc1_:int = 0;
         while(_loc1_ < 2)
         {
            _loc2_ = new class_178();
            _loc2_.method_111("Hint_point");
            _loc2_.stop();
            _loc2_.x = this.var_1042[_loc1_].x;
            _loc2_.y = this.var_1042[_loc1_].y;
            addChild(_loc2_);
            this.var_593.push(_loc2_);
            _loc1_++;
         }
         this.var_349 = new class_178();
         this.var_349.method_111("Hint_keyPoint");
         this.var_349.x = 348.8;
         this.var_349.y = 459.4;
         this.var_349.scaleX = 1.5;
         this.var_349.scaleY = 1.5;
         this.var_349.smoothing = true;
         this.var_349.alpha = 0;
         this.var_349.visible = false;
         this.var_349.stop();
         addChild(this.var_349);
      }
      
      public static function stop() : void
      {
      }
      
      public final function start() : void
      {
         this.var_431.var_966.text = this.text[0];
         class_12.addTween(this,{
            class_2.method_14(-1820302664):0.5,
            "time":class_203.const_15,
            "alpha":1,
            "visible":true,
            "onComplete":this.name_53
         });
         class_12.addTween(this.var_431,{
            class_2.method_14(-1820302664):1.3,
            "time":1,
            "alpha":1,
            "visible":true,
            "x":10.8,
            "y":214.9
         });
      }
      
      private final function name_53() : void
      {
         var var_1212:int = 0;
         var var_49:int = 0;
         if(!this.complete)
         {
            class_203.currentCursor.alpha = 0;
            class_203.currentCursor.visible = false;
            class_203.currentCursor.x = this.var_930.x;
            class_203.currentCursor.y = this.var_930.y;
            if(this.var_429 >= 3)
            {
               this.var_429 = 0;
               class_12.addTween(class_203.currentCursor,{
                  class_2.method_14(-1820302664):0.8,
                  "onComplete":this.name_53
               });
               return;
            }
            this.var_429++;
            var_1212 = 0;
            var_49 = 0;
            while(var_49 < 3)
            {
               if(!this.var_409[this.var_429 - 1])
               {
                  if(this.var_429 >= 3)
                  {
                     this.var_429 = 1;
                  }
                  else
                  {
                     this.var_429++;
                  }
                  var_1212++;
                  var_49++;
                  continue;
               }
               break;
            }
            if(var_1212 >= 3)
            {
               return;
            }
            if(this.var_429 == 1 || this.var_429 == 2)
            {
               class_12.addTween(this.var_593[this.var_429 - 1],{
                  "time":0.5,
                  "scaleX":1.5,
                  "scaleY":1.5,
                  "transition":"easeOutElastic",
                  "onComplete":function():void
                  {
                     class_12.addTween(var_593[var_429 - 1],{
                        "time":0.5,
                        "scaleX":1,
                        "scaleY":1
                     });
                  }
               });
            }
            if(!this.var_409[0] && !this.var_409[1])
            {
               if(!this.name_76)
               {
                  class_12.addTween(this.var_349,{
                     "time":0.5,
                     "rotation":this.var_349.rotation + 360
                  });
               }
            }
            class_12.addTween(class_203.currentCursor,{
               "time":0.5,
               "x":this.var_694[this.var_429 - 1].x,
               "y":this.var_694[this.var_429 - 1].y,
               "alpha":1,
               "visible":true,
               "onComplete":function():void
               {
                  class_203.currentCursor.gotoAndPlay(1);
                  class_12.addTween(class_203.currentCursor,{
                     "delay":0.5,
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
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(!this.complete)
         {
            if(param1)
            {
               this.name_76 = true;
               this.var_409[2] = false;
               class_12.addTween(this.var_349,{
                  "time":0.5,
                  "alpha":0,
                  "visible":false
               });
               class_12.addTween(this.var_431,{
                  "time":0.5,
                  "alpha":0,
                  "visible":false
               });
            }
            if(param2)
            {
               _loc6_ = 0;
               while(_loc6_ < Level.var_200.length)
               {
                  if(Level.var_200[_loc6_].colected)
                  {
                     _loc7_ = 0;
                     while(_loc7_ < this.var_694.length)
                     {
                        if(Point.distance(new Point(Level.var_200[_loc6_].graphics.x,Level.var_200[_loc6_].graphics.y),this.var_694[_loc7_]) < 50)
                        {
                           if(this.var_409[_loc7_])
                           {
                              class_12.addTween(this.var_593[_loc7_],{
                                 "time":0.5,
                                 "alpha":0,
                                 "visible":false
                              });
                           }
                           if(_loc7_ == 0)
                           {
                              if(this.var_409[1])
                              {
                                 class_12.addTween(this.var_431,{
                                    "time":1.5,
                                    "alpha":1,
                                    "visible":true,
                                    "x":506.8,
                                    "y":307.2
                                 });
                              }
                              else
                              {
                                 class_12.addTween(this.var_431,{
                                    "time":0.5,
                                    "alpha":0,
                                    "visible":false
                                 });
                              }
                           }
                           this.var_409[_loc7_] = false;
                        }
                        _loc7_++;
                     }
                  }
                  _loc6_++;
               }
            }
            if(!this.var_409[0] && !this.var_409[1])
            {
               if(!this.name_76)
               {
                  this.var_409[2] = true;
                  class_12.addTween(this.var_349,{
                     "time":0.5,
                     "alpha":1,
                     "scaleX":1,
                     "scaleY":1,
                     "visible":true
                  });
                  this.var_431.var_966.text = this.text[1];
                  class_12.addTween(this.var_431,{
                     "time":1.5,
                     "alpha":1,
                     "visible":true,
                     "x":329.65,
                     "y":403.85
                  });
               }
            }
            if(!this.var_409[0] && !this.var_409[1] && this.name_76)
            {
               this.complete = true;
            }
         }
      }
      
      public final function dispose() : void
      {
         this.complete = true;
         class_12.method_97(this);
         class_12.method_97(class_203.currentCursor);
         class_12.method_97(this.var_349);
         class_12.method_97(this.var_431);
         class_12.method_97(this.var_593[0]);
         class_12.method_97(this.var_593[1]);
         this.alpha = 0;
         this.visible = false;
         this.var_349.method_129();
         this.var_349 = null;
         this.var_409.length = 0;
         this.var_409 = null;
         this.var_694.length = 0;
         this.var_694 = null;
         this.var_930 = null;
         this.var_593.length = 0;
         this.var_593 = null;
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
