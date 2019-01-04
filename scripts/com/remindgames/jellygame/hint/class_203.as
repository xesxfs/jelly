package com.remindgames.jellygame.hint
{
   import flash.display.Sprite;
   import flash.utils.getDefinitionByName;
   import package_1.class_12;
   import package_23.class_178;
   
   public final class class_203 extends Sprite
   {
      
      public static var var_390:class_178;
      
      public static var var_391:class_178;
      
      public static var var_401:class_178;
      
      public static var currentCursor:class_178;
      
      public static const const_15:Number = 1;
       
      
      private var var_717:Sprite;
      
      private var var_459:Sprite;
      
      private var var_1202:int = 0;
      
      private var var_416;
      
      public var var_1040:Boolean = false;
      
      public function class_203(param1:Sprite, param2:Sprite)
      {
         super();
         this.mouseChildren = false;
         this.mouseEnabled = false;
         this.var_717 = param1;
         this.var_459 = param2;
      }
      
      public final function method_680(param1:int) : void
      {
         this.var_1040 = false;
         var _loc2_:Class = getDefinitionByName("com.remindgames.jellygame.hint.Hint_" + String(param1)) as Class;
         this.var_416 = new _loc2_();
         if(this.var_717)
         {
            if(!this.var_717.contains(this.var_416))
            {
               this.var_717.addChild(this.var_416);
            }
         }
         this.method_565();
         this.var_416.start();
      }
      
      public final function method_249(param1:Boolean = false, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false) : void
      {
         if(this.var_416 && !this.var_1040)
         {
            this.var_416.update(param1,param2,param3,param4,param5);
         }
      }
      
      public final function method_829(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(param2)
         {
            _loc3_ = 0;
         }
         else
         {
            _loc3_ = 1;
         }
         if(param1)
         {
            _loc4_ = 1;
         }
         else
         {
            _loc4_ = 0;
         }
         class_12.addTween(this.var_416,{
            class_2.method_14(-1820302664):0,
            "time":_loc3_,
            "alpha":_loc4_,
            "visible":param1
         });
      }
      
      public final function dispose() : void
      {
         if(this.var_416)
         {
            this.var_416.dispose();
            if(this.var_717)
            {
               if(this.var_717.contains(this.var_416))
               {
                  this.var_717.removeChild(this.var_416);
               }
            }
            this.var_416 = null;
         }
         if(var_390)
         {
            if(this.var_459)
            {
               if(this.var_459.contains(var_390))
               {
                  this.var_459.removeChild(var_390);
               }
            }
            var_390.method_129();
            var_390 = null;
         }
         if(var_391)
         {
            if(this.var_459)
            {
               if(this.var_459.contains(var_391))
               {
                  this.var_459.removeChild(var_391);
               }
            }
            var_391.method_129();
            var_391 = null;
         }
         if(var_401)
         {
            if(this.var_459)
            {
               if(this.var_459.contains(var_401))
               {
                  this.var_459.removeChild(var_401);
               }
            }
            var_401.method_129();
            var_401 = null;
         }
         this.var_1040 = true;
      }
      
      private final function method_565() : void
      {
         if(this.var_416.cursorID == 1)
         {
            if(!var_390)
            {
               var_390 = new class_178();
               var_390.method_111("Hint_hand_click");
               var_390.gotoAndStop(1);
               var_390.repeat = false;
               var_390.mouseEnabled = false;
               var_390.mouseChildren = false;
               var_390.alpha = 0;
            }
            currentCursor = var_390;
         }
         else if(this.var_416.cursorID == 2)
         {
            if(!var_391)
            {
               var_391 = new class_178();
               var_391.method_111("Hint_hand_down");
               var_391.gotoAndStop(1);
               var_391.repeat = false;
               var_391.mouseEnabled = false;
               var_391.mouseChildren = false;
               var_391.alpha = 0;
            }
            currentCursor = var_391;
         }
         else if(this.var_416.cursorID == 3)
         {
            if(!var_401)
            {
               var_401 = new class_178();
               var_401.method_111("Hint_hand_drag");
               var_401.gotoAndStop(1);
               var_401.repeat = false;
               var_401.mouseEnabled = false;
               var_401.mouseChildren = false;
               var_401.alpha = 0;
            }
            currentCursor = var_401;
         }
         if(currentCursor)
         {
            if(this.var_459)
            {
               if(!this.var_459.contains(currentCursor))
               {
                  this.var_459.addChild(currentCursor);
               }
            }
         }
      }
   }
}
