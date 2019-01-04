package com.remindgames.jellygame
{
   import flash.display.Sprite;
   import flash.events.EventDispatcher;
   import flash.geom.Matrix;
   import nape.geom.RayResult;
   import nape.geom.Vec2;
   import nape.geom.Vec2List;
   import nape.geom.class_232;
   import nape.geom.class_233;
   import package_23.class_178;
   import package_32.Shape;
   import package_34.class_216;
   
   public final class class_200 extends Sprite
   {
      
      public static const const_12:String = "Button_black";
       
      
      public var handID:int = 0;
      
      public var segments:Vector.<Vec2>;
      
      public var linkPoint:Vec2;
      
      public var tension:Number = 0;
      
      protected var var_242:class_232;
      
      protected var var_287:RayResult;
      
      protected var var_1193:Boolean = false;
      
      protected var var_767:Vec2;
      
      protected var var_825:Vec2;
      
      public var var_421:Vec2;
      
      protected var var_1190:Vec2;
      
      protected var var_493:Number = 1;
      
      public var var_950:Number = 0;
      
      private var var_488:class_178;
      
      public var isReel:Boolean = false;
      
      public var reelID:int = 0;
      
      public var color:String = "";
      
      private var var_934:Boolean = false;
      
      private var dispatcher:EventDispatcher;
      
      private var var_730:class_232;
      
      private var var_387:class_233;
      
      private var var_1048:Boolean = false;
      
      private var var_1020:Boolean = false;
      
      private var var_1047:Boolean = false;
      
      private var var_986:Boolean = false;
      
      private var matrix:Matrix;
      
      private var var_910:Vec2;
      
      private var var_1027:Boolean = true;
      
      private var var_1023:class_232;
      
      private var var_1000:Number = 0;
      
      private var var_957:Number = 0;
      
      private var var_1038:Vec2;
      
      private var var_869:Number = 0;
      
      private var var_927:Vec2;
      
      private var var_1186:Boolean = false;
      
      public var var_1138:Boolean = false;
      
      public var isCut:Boolean = false;
      
      public var corrected:Boolean = false;
      
      public var var_1070:Boolean = false;
      
      public var isButton:Boolean = false;
      
      public var completeMove:Boolean = false;
      
      private var var_461:Vec2;
      
      private var var_1024:Vec2;
      
      public var isDel:Boolean = false;
      
      private var var_723:Sprite;
      
      private var var_1012:Sprite;
      
      public var isPlatformBlack:Boolean = false;
      
      public var isPlatformWhite:Boolean = false;
      
      public function class_200(param1:Vec2, param2:int, param3:Number = 300)
      {
         this.segments = new Vector.<Vec2>();
         this.var_242 = new class_232(Vec2.method_65(),Vec2.method_65());
         this.matrix = new Matrix();
         this.var_461 = Vec2.method_65(0,0);
         this.var_1024 = Vec2.method_65(0,0);
         this.var_723 = new Sprite();
         this.var_1012 = new Sprite();
         super();
         addChild(this.var_1012);
         addChild(this.var_723);
         this.handID = param2;
         this.linkPoint = param1;
         this.tension = param3;
         this.method_605();
         this.segments[this.segments.length] = this.var_1038;
         this.segments[this.segments.length] = class_202.var_223.position;
         if(!this.var_1070)
         {
            this.var_934 = true;
            this.corrected = true;
         }
      }
      
      private final function method_605() : void
      {
         this.var_767 = class_202.var_223.position;
         this.var_825 = this.linkPoint;
         if(!this.var_242)
         {
            this.var_242 = new class_232(Vec2.method_65(),Vec2.method_65());
         }
         this.var_242.name_55 = this.var_767;
         this.var_242.direction.x = this.var_825.x - this.var_767.x;
         this.var_242.direction.y = this.var_825.y - this.var_767.y;
         var _loc1_:Number = this.var_767.x - this.var_825.x;
         var _loc2_:Number = this.var_767.y - this.var_825.y;
         this.var_242.method_134 = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_) + 2000;
         this.var_287 = Level.space.method_176(this.var_242,false,class_204.const_38);
         if(this.var_287)
         {
            this.method_640(this.var_287.name_7);
            this.var_927 = this.var_242.at(this.var_287.distance - 5);
            this.var_910 = this.var_242.at(this.var_287.distance - 5);
            this.var_1000 = Vec2.distance(class_202.var_223.position,this.var_927);
            this.var_957 = this.var_1000 / 10;
            this.var_1023 = this.var_242.copy();
            this.var_1038 = this.var_242.at(this.var_957);
         }
         else
         {
            this.var_1027 = false;
            this.var_1038 = this.linkPoint;
         }
         if(!this.isReel)
         {
            this.var_488 = new class_178();
            this.var_488.method_111("Hero_hand_end");
            this.var_488.smoothing = true;
            this.var_488.stop();
            if(this.var_910)
            {
               this.var_488.x = this.var_910.x;
               this.var_488.y = this.var_910.y;
            }
            else
            {
               this.var_488.x = this.linkPoint.x;
               this.var_488.y = this.linkPoint.y;
            }
            if(this.var_287)
            {
               this.var_488.rotation = class_207.method_166(this.var_287.normal.angle) - 90;
            }
            else
            {
               this.var_488.rotation = class_207.method_166(Math.atan2(this.linkPoint.y - class_202.var_223.position.y,this.linkPoint.x - class_202.var_223.position.x)) + 90;
            }
         }
      }
      
      private final function method_640(param1:Shape) : void
      {
         if(!this.isDel)
         {
            if(param1.name_10.length > 1)
            {
               if(param1.name_10.at(1) == class_204.const_12)
               {
                  Level.isButton(this,class_2.method_14(-1820302647),param1);
                  this.isButton = true;
               }
               else if(param1.name_10.at(1) == class_204.const_14)
               {
                  Level.isButton(this,class_2.method_14(-1820302844),param1);
                  this.isButton = true;
               }
               else if(param1.name_10.at(1) == class_204.const_30)
               {
                  this.isPlatformBlack = true;
               }
               else if(param1.name_10.at(1) == class_204.const_28)
               {
                  this.isPlatformWhite = true;
               }
               else if(param1.name_10.at(1) == class_204.const_21)
               {
                  Level.isReel(this,param1);
                  this.isReel = true;
               }
               else if(param1.name_10.at(1) == class_204.const_25)
               {
                  Level.method_390(this,class_2.method_14(-1820302599),param1);
                  this.color = class_2.method_14(-1820302599);
               }
               else if(param1.name_10.at(1) == class_204.const_26)
               {
                  Level.method_390(this,class_2.method_14(-1820302634),param1);
                  this.color = class_2.method_14(-1820302634);
               }
               else if(param1.name_10.at(1) == class_204.const_27)
               {
                  Level.method_390(this,class_2.method_14(-1820302698),param1);
                  this.color = class_2.method_14(-1820302698);
               }
               else if(param1.name_10.at(1) == class_204.DISK)
               {
                  Level.method_319(this,"DISK",param1);
               }
               else if(param1.name_10.at(1) == class_204.const_13)
               {
                  this.var_1070 = true;
                  Level.method_428(this,class_2.method_14(-1820302540),param1);
               }
            }
         }
      }
      
      public final function checkTriggers() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:* = 0;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         if(this.var_934 && !this.isDel)
         {
            this.var_1020 = false;
            this.var_986 = false;
            this.isCut = false;
            _loc1_ = 0;
            while(_loc1_ < this.segments.length - 1)
            {
               if(!this.var_730)
               {
                  this.var_730 = new class_232(Vec2.method_65(),Vec2.method_65());
               }
               this.var_730.name_55 = this.segments[_loc1_];
               this.var_730.direction.x = this.segments[_loc1_ + 1].x - this.segments[_loc1_].x;
               this.var_730.direction.y = this.segments[_loc1_ + 1].y - this.segments[_loc1_].y;
               _loc2_ = this.segments[_loc1_].x - this.segments[_loc1_ + 1].x;
               _loc3_ = this.segments[_loc1_].y - this.segments[_loc1_ + 1].y;
               this.var_730.method_134 = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
               if(!this.var_387)
               {
                  this.var_387 = new class_233();
               }
               this.var_387.clear();
               Level.space.method_222(this.var_730,false,class_204.const_10,this.var_387);
               if(this.var_387)
               {
                  if(this.var_387.length > 0)
                  {
                     _loc4_ = int(this.var_387.length);
                     _loc6_ = int(this.var_387.length) - 1;
                     while(_loc6_ >= 0)
                     {
                        _loc5_ = this.var_387.at(_loc6_).name_7.name_10;
                        if(_loc5_.length > 1)
                        {
                           if(_loc5_.at(1) == class_204.const_24)
                           {
                              Level.method_265(this,class_2.method_14(-1820302599),this.var_387.at(_loc6_).name_7);
                           }
                           else if(_loc5_.at(1) == class_204.const_16)
                           {
                              Level.method_265(this,class_2.method_14(-1820302634),this.var_387.at(_loc6_).name_7);
                           }
                           else if(_loc5_.at(1) == class_204.const_20)
                           {
                              Level.method_265(this,class_2.method_14(-1820302698),this.var_387.at(_loc6_).name_7);
                           }
                           else if(_loc5_.at(1) == class_204.const_12)
                           {
                              this.var_1020 = true;
                              if(!this.var_1048)
                              {
                                 this.var_1048 = true;
                                 Level.isButton(this,class_2.method_14(-1820302521),this.var_387.at(_loc6_).name_7);
                              }
                           }
                           else if(_loc5_.at(1) == class_204.const_14)
                           {
                              this.var_986 = true;
                              if(!this.var_1047)
                              {
                                 this.var_1047 = true;
                                 Level.isButton(this,class_2.method_14(-1820302720),this.var_387.at(_loc6_).name_7);
                              }
                           }
                           else if(_loc5_.at(1) == class_204.KEY)
                           {
                              Level.name_76(this,"KEY",this.var_387.at(_loc6_).name_7);
                           }
                           else
                           {
                              if(_loc5_.at(1) == class_204.DISK)
                              {
                                 Level.method_319(this,class_2.method_14(-1820302601),this.var_387.at(_loc6_).name_7);
                                 break;
                              }
                              if(_loc5_.at(1) == class_204.STAR)
                              {
                                 Level.method_491(this,"STAR",this.var_387.at(_loc6_).name_7);
                              }
                              else if(_loc5_.at(1) == class_204.const_31)
                              {
                                 this.isCut = true;
                              }
                              else if(_loc5_.at(1) == class_204.const_13)
                              {
                                 Level.method_428(this,class_2.method_14(-1820302415),this.var_387.at(_loc6_).name_7);
                              }
                           }
                        }
                        _loc6_--;
                     }
                  }
               }
               _loc1_++;
            }
            if(!this.var_1020)
            {
               this.var_1048 = false;
            }
            if(!this.var_986)
            {
               this.var_1047 = false;
            }
         }
      }
      
      public final function update() : void
      {
         var _loc1_:int = 0;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc13_:* = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:* = null;
         var _loc17_:* = null;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         if(this.var_934)
         {
            if(this.var_1027)
            {
               if(this.var_869 + this.var_957 < this.var_1000)
               {
                  this.var_869 = this.var_869 + this.var_957;
                  this.segments[0] = this.var_1023.at(this.var_869);
                  this.linkPoint = this.var_1023.at(this.var_869);
               }
               else
               {
                  this.completeMove = true;
                  this.var_1027 = false;
                  this.segments[0] = this.var_927;
                  this.linkPoint = this.var_927;
                  if(this.var_488)
                  {
                     this.var_1012.addChild(this.var_488);
                  }
               }
            }
            if(this.var_421)
            {
               _loc2_ = 0;
               _loc3_ = 0;
               if(this.var_421.x != this.segments[this.segments.length - 1].x)
               {
                  _loc2_ = Number(-(this.var_421.x - this.segments[this.segments.length - 1].x));
               }
               if(this.var_421.y != this.segments[this.segments.length - 1].y)
               {
                  _loc3_ = Number(-(this.var_421.y - this.segments[this.segments.length - 1].y));
               }
               this.var_493 = Math.max(Math.abs(_loc2_),Math.abs(_loc3_));
               if(this.var_493 == 0)
               {
                  this.var_493 = 1;
               }
               _loc2_ = Number(_loc2_ / this.var_493);
               _loc3_ = Number(_loc3_ / this.var_493);
               if(this.var_493 < 20)
               {
                  this.var_493 = 1;
               }
               this.var_493 = this.var_493 / 5;
               if(this.var_493 < 1)
               {
                  this.var_493 = 1;
               }
               _loc4_ = 0;
               while(_loc4_ < this.var_493)
               {
                  this.var_421.x = this.var_421.x + _loc2_;
                  this.var_421.y = this.var_421.y + _loc3_;
                  this.var_461.x = this.var_421.x;
                  this.var_461.y = this.var_421.y;
                  if(!this.var_242)
                  {
                     this.var_242 = new class_232(Vec2.method_65(),Vec2.method_65());
                  }
                  this.var_242.name_55 = this.segments[this.segments.length - 2];
                  this.var_242.direction.x = this.var_461.x - this.segments[this.segments.length - 2].x;
                  this.var_242.direction.y = this.var_461.y - this.segments[this.segments.length - 2].y;
                  _loc5_ = this.segments[this.segments.length - 2].x - this.var_461.x;
                  _loc6_ = this.segments[this.segments.length - 2].y - this.var_461.y;
                  this.var_242.method_134 = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
                  if(this.var_287)
                  {
                     this.var_287.dispose();
                  }
                  this.var_287 = Level.space.method_176(this.var_242,true,class_204.const_19);
                  if(this.var_287)
                  {
                     if(this.var_287.name_7 != class_202.var_223.shapes.at(0))
                     {
                        if(this.var_287.name_7.name_10.length > 1)
                        {
                           if(this.var_287.name_7.name_10.at(1) == class_204.DISK)
                           {
                              this.var_934 = false;
                              Level.method_319(this,class_2.method_14(-1820302601),this.var_287.name_7);
                              break;
                           }
                        }
                        if(_loc12_ != this.var_1024)
                        {
                           _loc12_ = this.var_242.at(this.var_287.distance);
                           this.var_1024 = _loc12_;
                        }
                        _loc7_ = this.var_287.name_7.method_650.method_643;
                        _loc8_ = Infinity;
                        _loc10_ = 0;
                        while(_loc10_ < _loc7_.length)
                        {
                           _loc13_ = Number(Vec2.distance(_loc12_,_loc7_.at(_loc10_)));
                           if(Number(Vec2.distance(_loc12_,_loc7_.at(_loc10_))) < _loc8_)
                           {
                              _loc8_ = _loc13_;
                              _loc9_ = _loc10_;
                           }
                           _loc10_++;
                        }
                        _loc11_ = _loc7_.at(_loc9_);
                        this.segments.splice(this.segments.length - 1,0,_loc11_);
                        this.linkPoint = this.segments[this.segments.length - 2];
                     }
                  }
                  _loc4_++;
               }
               if(this.segments.length > 2)
               {
                  if(this.var_287)
                  {
                     this.var_287.dispose();
                  }
                  if(!this.var_242)
                  {
                     this.var_242 = new class_232(Vec2.method_65(),Vec2.method_65());
                  }
                  this.var_242.name_55 = this.segments[this.segments.length - 3];
                  this.var_242.direction.x = this.segments[this.segments.length - 1].x - this.segments[this.segments.length - 3].x;
                  this.var_242.direction.y = this.segments[this.segments.length - 1].y - this.segments[this.segments.length - 3].y;
                  _loc5_ = this.segments[this.segments.length - 3].x - this.segments[this.segments.length - 1].x;
                  _loc6_ = this.segments[this.segments.length - 3].y - this.segments[this.segments.length - 1].y;
                  this.var_242.method_134 = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
                  this.var_287 = Level.space.method_176(this.var_242,true,class_204.const_19);
                  if(this.var_287)
                  {
                     if(this.var_287.name_7 == class_202.var_223.shapes.at(0))
                     {
                        _loc14_ = -(this.segments[this.segments.length - 3].x - this.segments[this.segments.length - 1].x);
                        _loc15_ = -(this.segments[this.segments.length - 3].y - this.segments[this.segments.length - 1].y);
                        _loc16_ = Vec2.name_5(this.segments[this.segments.length - 2].x - this.segments[this.segments.length - 3].x,this.segments[this.segments.length - 2].y - this.segments[this.segments.length - 3].y);
                        _loc17_ = Vec2.name_5(this.segments[this.segments.length - 1].x - this.segments[this.segments.length - 3].x,this.segments[this.segments.length - 1].y - this.segments[this.segments.length - 3].y);
                        _loc18_ = _loc17_.length / (_loc16_.length - 10);
                        _loc14_ = _loc14_ / _loc18_;
                        _loc15_ = _loc15_ / _loc18_;
                        _loc19_ = this.segments[this.segments.length - 3].x + _loc14_;
                        _loc20_ = this.segments[this.segments.length - 3].y + _loc15_;
                        this.var_461.x = _loc19_;
                        this.var_461.y = _loc20_;
                        if(!this.var_242)
                        {
                           this.var_242 = new class_232(Vec2.method_65(),Vec2.method_65());
                        }
                        this.var_242.name_55 = this.segments[this.segments.length - 2];
                        this.var_242.direction.x = this.var_461.x - this.segments[this.segments.length - 2].x;
                        this.var_242.direction.y = this.var_461.y - this.segments[this.segments.length - 2].y;
                        _loc5_ = this.segments[this.segments.length - 2].x - this.var_461.x;
                        _loc6_ = this.segments[this.segments.length - 2].y - this.var_461.y;
                        this.var_242.method_134 = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
                        this.var_287 = Level.space.method_176(this.var_242,true,class_204.const_19);
                        if(this.var_287 == null || this.var_287.name_7 == class_202.var_223.shapes.at(0))
                        {
                           this.segments.splice(this.segments.length - 2,1);
                           this.linkPoint = this.segments[this.segments.length - 2];
                        }
                     }
                  }
               }
            }
            this.var_950 = this.tension;
            _loc1_ = 0;
            while(_loc1_ < this.segments.length - 1)
            {
               if(this.segments[_loc1_] && this.segments[_loc1_ + 1])
               {
                  this.var_950 = this.var_950 + Vec2.distance(this.segments[_loc1_],this.segments[_loc1_ + 1]);
               }
               _loc1_++;
            }
            if(!this.var_421)
            {
               this.var_421 = Vec2.method_65();
            }
            this.var_421.x = class_202.var_223.position.x;
            this.var_421.y = class_202.var_223.position.y;
         }
      }
      
      public final function draw() : void
      {
         var _loc2_:* = NaN;
         var _loc3_:Number = NaN;
         this.var_723.graphics.clear();
         var _loc1_:int = 0;
         while(_loc1_ < this.segments.length)
         {
            _loc2_ = Number(5000 / this.var_950);
            if(_loc2_ > 10)
            {
               _loc2_ = 10;
            }
            if(_loc2_ < 6)
            {
               _loc2_ = 6;
            }
            this.var_723.graphics.lineStyle(_loc2_,16777215,0);
            if(_loc1_ == 0)
            {
               if(this.segments[_loc1_])
               {
                  this.var_723.graphics.moveTo(this.segments[_loc1_].x,this.segments[_loc1_].y);
               }
            }
            else
            {
               this.matrix.identity();
               if(this.segments[_loc1_ - 1])
               {
                  _loc3_ = Math.atan2(this.segments[_loc1_ - 1].y - this.segments[_loc1_].y,this.segments[_loc1_ - 1].x - this.segments[_loc1_].x);
                  this.matrix.createBox(_loc2_ / 10,_loc2_ / 10,_loc3_,this.segments[_loc1_ - 1].x,this.segments[_loc1_ - 1].y);
               }
               this.var_723.graphics.lineBitmapStyle(class_202.var_907,this.matrix,true,true);
               this.var_723.graphics.lineTo(this.segments[_loc1_].x,this.segments[_loc1_].y);
            }
            if(!this.var_287)
            {
            }
            _loc1_++;
         }
      }
   }
}
