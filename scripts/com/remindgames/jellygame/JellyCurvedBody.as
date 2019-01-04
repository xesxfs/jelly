package com.remindgames.jellygame
{
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Matrix;
   import package_23.class_178;
   
   public final class JellyCurvedBody extends Sprite
   {
       
      
      private const const_45:uint = 4;
      
      private const const_44:uint = 35;
      
      private var var_1086:uint;
      
      private var var_1088:uint;
      
      private var var_871:Number;
      
      private var var_611:Array;
      
      private var var_1210:Sprite;
      
      private var var_1199:Sprite;
      
      private var var_1209:Sprite;
      
      public var var_548:Sprite;
      
      private var var_666:class_178;
      
      public var var_538:Sprite;
      
      private var var_1087:BitmapData;
      
      private var matrix:Matrix;
      
      public function JellyCurvedBody()
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:* = null;
         super();
         this.var_548 = new Sprite();
         this.var_538 = new Sprite();
         this.var_1086 = 0;
         this.var_1088 = 0;
         this.var_611 = [];
         this.var_871 = 2 * Math.PI / 4;
         var _loc4_:int = 0;
         while(_loc4_ < 4)
         {
            _loc2_ = this.var_871 * (_loc4_ + 1) - this.var_871 * _loc4_;
            _loc1_ = 35 / Math.cos(_loc2_ * 0.5);
            _loc3_ = new p(this.var_1086 + _loc1_ * Math.cos(this.var_871 * (_loc4_ + 1) - _loc2_ * 0.5),this.var_1088 + _loc1_ * Math.sin(this.var_871 * (_loc4_ + 1) - _loc2_ * 0.5));
            this.var_611.push(_loc3_);
            _loc4_++;
         }
         addEventListener(Event.ENTER_FRAME,this.method_667,false,0,true);
         addChild(this.var_538);
         addChild(this.var_548);
         this.var_666 = new class_178();
         this.var_666.method_111("Hero_main");
         this.var_666.stop();
         this.var_666.smoothing = true;
         this.var_666.name = class_2.method_14(-1820302719);
         this.var_548.addChild(this.var_666);
         this.var_538.scaleY = 0.6;
         this.var_538.scaleX = 1.1;
         this.var_1087 = new BitmapData(this.var_666.width,this.var_666.height,false,7368816);
      }
      
      private final function method_667(param1:Event) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc5_:* = NaN;
         this.var_538.graphics.clear();
         this.var_538.graphics.beginBitmapFill(this.var_1087);
         this.var_538.graphics.moveTo((this.var_611[0].x + this.var_611[1].x) * 0.5,(this.var_611[0].y + this.var_611[1].y) * 0.5);
         var _loc4_:int = 4;
         while(--_loc4_ >= 0)
         {
            _loc2_ = this.var_611[_loc4_];
            _loc2_._radX = _loc2_._ax * Math.PI / 180;
            _loc2_._radY = _loc2_._ay * Math.PI / 180;
            _loc2_.x = _loc2_._cx + _loc2_._rx * Math.sin(_loc2_._radX);
            _loc2_.y = _loc2_._cy + _loc2_._ry * Math.sin(_loc2_._radY);
            _loc2_._ax = _loc2_._ax + _loc2_._sx;
            _loc2_._ax = _loc2_._ax % 360;
            _loc2_._ay = _loc2_._ay + _loc2_._sy;
            _loc2_._ay = _loc2_._ay % 360;
            _loc3_ = this.var_611[(_loc4_ + 1) % this.var_611.length];
            this.var_538.graphics.curveTo(_loc3_.x,_loc3_.y,(_loc2_.x + 10 + _loc3_.x - 10) * 0.5,(_loc2_.y + 10 + _loc3_.y - 10) * 0.5);
            this.var_548.x = _loc3_.x + 33;
            this.var_548.y = _loc3_.y - 44;
            _loc5_ = Number(Math.abs(_loc3_.y / 10));
            this.var_548.scaleX = _loc3_.x / 40;
            if(_loc5_ < 0.5)
            {
               _loc5_ = 0.5;
            }
         }
         this.var_538.graphics.endFill();
      }
   }
}

import flash.geom.Point;

class p extends Point
{
    
   
   public var _cx:Number;
   
   public var _cy:Number;
   
   public var _radX:Number;
   
   public var _radY:Number;
   
   public var _rx:Number;
   
   public var _ry:Number;
   
   public var _ax:Number;
   
   public var _ay:Number;
   
   public var _sx:Number;
   
   public var _sy:Number;
   
   function p(param1:Number, param2:Number)
   {
      super();
      this.x = this._cx = param1;
      this.y = this._cy = param2;
      this._rx = 2;
      this._ry = 2;
      this._ax = this._ay = 10000;
      this._sx = Number(2.toFixed(1));
      this._sy = Number(2.toFixed(1));
   }
}
