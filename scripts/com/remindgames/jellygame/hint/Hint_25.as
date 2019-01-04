package com.remindgames.jellygame.hint
{
   import flash.display.Sprite;
   import package_1.class_12;
   import package_23.class_178;
   
   public final class Hint_25 extends Sprite
   {
       
      
      private var var_552:class_178;
      
      public var complete:Boolean = false;
      
      public var cursorID:int = 1;
      
      public function Hint_25()
      {
         super();
         this.alpha = 0;
         this.visible = false;
         this.var_552 = new class_178();
         this.var_552.method_111("Tutor_25");
         this.var_552.stop();
         this.var_552.x = 453.2;
         this.var_552.y = 57.35;
         addChild(this.var_552);
      }
      
      public final function start() : void
      {
         class_12.addTween(this,{
            class_2.method_14(-1820302664):0.2,
            "time":class_203.const_15,
            "alpha":1,
            "visible":true
         });
      }
      
      public final function update(param1:Boolean = false, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false) : void
      {
         if(param3 && !this.complete)
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
