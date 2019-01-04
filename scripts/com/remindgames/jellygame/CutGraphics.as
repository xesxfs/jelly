package com.remindgames.jellygame
{
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public final class CutGraphics extends Sprite
   {
       
      
      private const const_46:uint = 1;
      
      private const const_43:uint = 10;
      
      private var var_1057:Array;
      
      private var var_1006:Vector.<Number>;
      
      public var var_1174:Boolean = true;
      
      private var var_1087:BitmapData;
      
      public function CutGraphics()
      {
         this.var_1057 = [];
         this.var_1006 = new Vector.<Number>();
         this.var_1087 = new BitmapData(5,5,false,16776153);
         super();
         addEventListener(Event.ADDED_TO_STAGE,this.initialize);
      }
      
      private final function initialize(param1:Event) : void
      {
         var _loc3_:* = null;
         var _loc4_:int = 0;
         var _loc5_:* = null;
         this.var_1006.push(3,4,5,6,6,6,6,5,4,3);
         removeEventListener(Event.ADDED_TO_STAGE,this.initialize);
         var _loc2_:int = 0;
         while(_loc2_ < 1)
         {
            _loc3_ = [];
            _loc4_ = 0;
            while(_loc4_ < 10)
            {
               _loc5_ = new SectionData(0,0);
               _loc3_.push(_loc5_);
               _loc4_++;
            }
            this.var_1057.push(_loc3_);
            _loc2_++;
         }
         addEventListener(Event.ENTER_FRAME,this.method_667);
      }
      
      private final function method_667(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:int = 0;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:int = 0;
         if(this.var_1174)
         {
            _loc2_ = App.const_7;
            _loc3_ = App.const_8;
            _loc4_ = 0.6;
            this.graphics.clear();
            _loc8_ = 0;
            while(_loc8_ < 1)
            {
               _loc9_ = this.var_1057[_loc8_];
               _loc10_ = _loc9_[0] as CutGraphics;
               _loc10_.x = mouseX;
               _loc10_.y = mouseY;
               if(_loc10_.x <= 0)
               {
                  _loc10_.x = 0;
                  _loc10_.vx = _loc10_.vx * -0.9;
               }
               if(_loc10_.x > _loc2_)
               {
                  _loc10_.x = _loc2_;
                  _loc10_.vx = _loc10_.vx * -0.9;
               }
               if(_loc10_.y <= 0)
               {
                  _loc10_.y = 0;
                  _loc10_.vy = _loc10_.vy * -0.9;
               }
               if(_loc10_.y > _loc3_)
               {
                  _loc10_.y = _loc3_;
                  _loc10_.vy = _loc10_.vy * -0.9;
               }
               this.graphics.moveTo(_loc10_.x,_loc10_.y);
               _loc12_ = 1;
               while(_loc12_ < 10)
               {
                  _loc10_ = _loc9_[_loc12_] as CutGraphics;
                  _loc11_ = _loc9_[_loc12_ - 1] as CutGraphics;
                  _loc10_.x = _loc10_.x + (_loc11_.x - _loc10_.x) * _loc4_;
                  _loc10_.y = _loc10_.y + (_loc11_.y - _loc10_.y) * _loc4_;
                  _loc12_++;
               }
               _loc12_ = 0;
               while(_loc12_ < 10)
               {
                  _loc10_ = _loc9_[_loc12_] as CutGraphics;
                  this.graphics.lineStyle(this.var_1006[_loc12_],16777215);
                  this.graphics.lineBitmapStyle(this.var_1087);
                  this.graphics.lineTo(_loc10_.x,_loc10_.y);
                  _loc12_++;
               }
               _loc8_++;
            }
         }
      }
   }
}

class SectionData
{
    
   
   public var x:Number;
   
   public var y:Number;
   
   public var vx:Number = 0;
   
   public var vy:Number = 0;
   
   public var ax:Number = 0;
   
   public var ay:Number = 0;
   
   function SectionData(param1:Number = 0, param2:Number = 0)
   {
      super();
      this.x = param1;
      this.y = param2;
   }
}
