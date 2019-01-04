package com.remindgames.jellygame
{
   import fl.motion.Color;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.utils.Timer;
   import nape.geom.Vec2;
   import package_1.class_12;
   import package_23.class_178;
   import package_27.class_181;
   import package_29.Body;
   import package_29.class_198;
   import package_29.class_199;
   import package_29.class_205;
   import package_30.class_193;
   import package_31.class_197;
   import package_32.Circle;
   import package_32.Polygon;
   import package_34.class_221;
   import package_34.class_246;
   import package_34.class_248;
   import package_34.class_249;
   import package_34.class_250;
   import treefortress.sound.SoundAS;
   
   public final class class_202 extends Sprite
   {
      
      public static var var_223:Body;
      
      public static var var_907:BitmapData;
       
      
      private var space:class_197;
      
      public var _hands:Array;
      
      private var var_666:class_178;
      
      private var length:Number;
      
      private var var_683:Vec2;
      
      private var it:int = 1;
      
      private var var_1075:Number = 0.8;
      
      private var var_1148:Vec2;
      
      private var var_567:Sprite;
      
      private var f:Function;
      
      private var var_1115:ColorTransform;
      
      private var var_1126:ColorTransform;
      
      private var var_1132:ColorTransform;
      
      private var var_759:Number = 0;
      
      public var var_1007:String = "RED";
      
      public var var_819:String = "RED";
      
      private var var_964:Boolean = false;
      
      private var var_955:ColorTransform;
      
      private var var_646:ColorTransform;
      
      private var var_510:Number = 0;
      
      private var var_257:JellyCurvedBody;
      
      private var var_383:MovieClip;
      
      private var var_616:MovieClip;
      
      private var var_881:int = 0;
      
      private var var_1171:Number = 30;
      
      private var var_1060:Boolean = false;
      
      private var _timer:Timer;
      
      public var var_946:Boolean = false;
      
      private var var_1085:class_248;
      
      private var var_1068:class_248;
      
      public var var_700:Boolean = false;
      
      private var var_785:Vec2;
      
      private var var_764:Vector.<Point>;
      
      private var var_628:Body;
      
      private var var_1056:Boolean = false;
      
      private var var_908:Boolean = false;
      
      private var name_74:Vec2;
      
      private var d:Vec2;
      
      private var var_659:Vec2;
      
      private var var_858:CutGraphics;
      
      private var _cx:Number;
      
      private var _cy:Number;
      
      private var var_1101:Number;
      
      public var var_970:Boolean = false;
      
      private var var_340:Vector.<Point>;
      
      private var var_637:Body;
      
      private var var_1111:class_248;
      
      private var var_1124:class_248;
      
      private var var_942:Boolean = false;
      
      private var var_346:class_205;
      
      private var var_824:Vec2;
      
      private var var_939:Point;
      
      private var var_1010:Boolean = false;
      
      private var var_1069:Boolean = false;
      
      public function class_202(param1:class_197, param2:Vector.<Point>, param3:Vec2, param4:Number = 0)
      {
         this._hands = [];
         this.var_683 = new Vec2();
         this.var_1148 = Vec2.method_65(0,0);
         this.var_1115 = new ColorTransform(1,1,1,1,137,-34,-3,0);
         this.var_1126 = new ColorTransform(1,1,1,1,82,126,-61,0);
         this.var_1132 = new ColorTransform(1,1,1,1,-51,36,119,0);
         this.var_646 = new ColorTransform();
         this.var_340 = new Vector.<Point>();
         this.var_824 = Vec2.method_65();
         this.var_939 = new Point();
         super();
         var _loc5_:Sprite = new Symbol9();
         var_907 = new BitmapData(_loc5_.width,_loc5_.height,true,0);
         var_907.draw(_loc5_);
         this.space = param1;
         this.var_785 = param3;
         this.var_764 = param2;
         class_193.init();
         if(param4)
         {
            this.var_1069 = true;
         }
         if(stage)
         {
            this.method_423();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.method_423);
         }
      }
      
      public final function method_378(param1:Vector.<Point>, param2:Vec2) : void
      {
         this.var_785 = param2;
         this.var_764 = param1;
         var_223.position = this.var_785;
         var _loc3_:int = 0;
         while(_loc3_ < this.var_764.length)
         {
            this.addPoint(this.var_764[_loc3_].x,this.var_764[_loc3_].y,false);
            _loc3_++;
         }
      }
      
      public final function reset() : void
      {
         class_12.method_97(this.var_257);
         this.method_470();
         if(!var_223.space)
         {
            var_223.space = this.space;
         }
         this.method_407(class_2.method_14(-1820302599),1);
         this.var_257.scaleX = 0.74;
         this.var_257.scaleY = 0.74;
         this.var_257.visible = true;
         this.var_257.alpha = 1;
         this.var_700 = false;
         this.var_908 = false;
      }
      
      public final function method_407(param1:String, param2:Number = 0) : void
      {
         this.var_819 = param1;
         this.var_964 = true;
         this.var_759 = param2;
         this.var_1007 = param1;
         var _loc3_:int = 0;
         while(_loc3_ < this._hands.length)
         {
            if(this._hands[_loc3_].color != "")
            {
               if(this._hands[_loc3_].color != this.var_819)
               {
                  this.method_255(this._hands[_loc3_]);
                  SoundAS.group(class_2.method_14(-1820302475)).play(class_2.method_14(-1820302556) + String(class_207.method_179(5,6)),0.7);
               }
            }
            _loc3_++;
         }
      }
      
      private final function method_423(param1:Event = null) : void
      {
         var _loc2_:int = 0;
         class_12.addTween(new Shape(),{class_2.method_14(-1820302640):{
            "_x":20,
            "_y":20
         }});
         this.mouseEnabled = false;
         this.mouseChildren = false;
         removeEventListener(Event.ADDED_TO_STAGE,this.method_423);
         this.var_567 = new Sprite();
         this.var_567.mouseChildren = false;
         this.var_567.mouseEnabled = false;
         addChild(this.var_567);
         var_223 = new Body(class_198.DYNAMIC,Vec2.method_65(this.var_785.x,this.var_785.y));
         var_223.shapes.add(new Circle(20,null,class_199.method_162()));
         var_223.shapes.at(0).name_10.add(class_204.const_18);
         var_223.space = this.space;
         this.var_257 = new JellyCurvedBody();
         addChild(this.var_257);
         this.var_383 = new MC_Eyes();
         this.var_616 = new MC_Eyes2();
         this.var_257.var_548.addChild(this.var_383);
         this.var_257.var_548.addChild(this.var_616);
         this.var_257.scaleX = 0.74;
         this.var_257.scaleY = 0.74;
         this.var_257.mouseEnabled = false;
         this.var_257.mouseChildren = false;
         this.var_383.x = -40.2;
         this.var_383.y = -13.75;
         this.var_383.name = class_2.method_14(-1820302638);
         this.var_616.x = -40.2;
         this.var_616.y = -13.75;
         this.var_616.name = class_2.method_14(-1820302841);
         this.method_420();
         var_223.method_502 = false;
         this.length = 0;
         this.method_407(class_2.method_14(-1820302599),1);
         this.var_1085 = new class_248(class_249.BEGIN,class_221.ANY,class_204.const_18,class_250.ANY_SHAPE,this.method_630);
         this.var_1068 = new class_248(class_249.ONGOING,class_221.ANY,class_204.const_18,class_204.EXIT,this.method_717);
         this.var_1111 = new class_248(class_249.ONGOING,class_221.ANY,class_204.const_22,class_204.const_9,this.method_637);
         this.var_1124 = new class_248(class_249.END,class_221.ANY,class_204.const_22,class_204.const_9,this.method_681);
         this.space.name_15.add(this.var_1085);
         this.space.name_15.add(this.var_1068);
         this.space.name_15.add(this.var_1111);
         this.space.name_15.add(this.var_1124);
         this.method_453();
         this.method_436();
         this.method_378(this.var_764,this.var_785);
         this.var_858 = new CutGraphics();
         this.var_858.visible = false;
         addChild(this.var_858);
         stage.addEventListener(MouseEvent.MOUSE_DOWN,this.method_464);
         stage.addEventListener(MouseEvent.CLICK,this.method_709,true);
         stage.addEventListener(MouseEvent.MOUSE_UP,this.method_278);
         if(this.var_1069)
         {
            this.cacheAsBitmap = true;
            _loc2_ = 0;
            while(_loc2_ < this.numChildren)
            {
               this.getChildAt(_loc2_).cacheAsBitmap = true;
               _loc2_++;
            }
         }
      }
      
      public final function method_436() : void
      {
         this.var_637 = new Body(class_198.KINEMATIC,Vec2.method_65(0,0));
         this.var_637.shapes.add(new Polygon(Polygon.rect(-2,-2,4,4),null,class_204.const_10));
         this.var_637.shapes.at(0).name_10.add(class_204.const_22);
         this.var_637.shapes.at(0).sensorEnabled = true;
         this.var_637.space = this.space;
      }
      
      private final function method_637(param1:class_246) : void
      {
         if(App.cursor.method_484 == class_2.method_14(-1820302404))
         {
            App.cursor.method_259(class_2.method_14(-1820302549));
         }
      }
      
      private final function method_681(param1:class_246) : void
      {
         if(App.cursor.method_484 == class_2.method_14(-1820302549))
         {
            App.cursor.method_259(class_2.method_14(-1820302404));
         }
      }
      
      private final function method_709(param1:MouseEvent) : void
      {
      }
      
      private final function method_278(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         Level.var_576 = true;
         this.var_970 = false;
         this.var_340.length = 0;
         this.var_858.visible = false;
         Level.method_278();
         if(this.var_1010)
         {
            this.var_1010 = false;
            return;
         }
         if(this.var_942)
         {
            this.var_942 = false;
            return;
         }
         if(Point.distance(this.var_939,new Point(mouseX,mouseY)) > 70)
         {
            return;
         }
         if(!Level.stopAll)
         {
            if(!(param1.target.parent is GUI))
            {
               if(!(param1.target.parent is class_181))
               {
                  if(this.var_346)
                  {
                     this.var_346.clear();
                  }
                  this.var_824.method_211(mouseX,mouseY);
                  this.var_346 = this.space.method_187(this.var_824);
                  if(this.var_346.length > 0)
                  {
                     _loc2_ = 0;
                     while(_loc2_ < this.var_346.length)
                     {
                        if(this.var_346.at(_loc2_) == var_223)
                        {
                           this.var_942 = true;
                           return;
                        }
                        if(!(this.var_346.at(_loc2_) == this.var_628 || this.var_346.at(_loc2_) == this.var_637))
                        {
                           _loc3_ = 0;
                           while(_loc3_ < this.var_346.at(_loc2_).shapes.at(0).name_10.length)
                           {
                              if(this.var_346.at(_loc2_).shapes.at(0).name_10.at(_loc3_) == class_204.const_21)
                              {
                                 if(this.var_946)
                                 {
                                    this.method_625(this.var_346.at(_loc2_));
                                    return;
                                 }
                              }
                              if(this.var_346.at(_loc2_).shapes.at(0).name_10.at(_loc3_) == class_204.DISK)
                              {
                                 SoundAS.group(class_2.method_14(-1820302475)).play(class_2.method_14(-1820302556) + String(class_207.method_179(5,6)),0.7);
                                 return;
                              }
                              if(this.var_346.at(_loc2_).shapes.at(0).filter == class_204.const_10)
                              {
                              }
                              _loc3_++;
                           }
                        }
                        _loc2_++;
                     }
                  }
                  this.addPoint();
               }
            }
         }
      }
      
      private final function method_464(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         this.var_939.x = mouseX;
         this.var_939.y = mouseY;
         if(this.var_346)
         {
            this.var_346.clear();
         }
         this.var_824.method_211(mouseX,mouseY);
         this.var_346 = this.space.method_187(this.var_824);
         if(this.var_346.length > 0)
         {
            _loc2_ = 0;
            while(_loc2_ < this.var_346.length)
            {
               if(this.var_346.at(_loc2_) == var_223)
               {
                  this.var_942 = true;
                  return;
               }
               _loc2_++;
            }
         }
         this.var_858.visible = true;
         this.var_970 = true;
      }
      
      private final function method_717(param1:class_246) : void
      {
         Level.method_467(null,"EXIT");
      }
      
      private final function method_630(param1:class_246) : void
      {
         var _loc2_:int = 0;
         if(param1.int2.name_10.length > 1)
         {
            _loc2_ = 0;
            while(_loc2_ < param1.int2.name_10.length)
            {
               if(param1.int2.name_10.at(_loc2_) == class_204.DISK)
               {
                  Level.method_319(null,class_2.method_14(-1820302656));
                  break;
               }
               if(param1.int2.name_10.at(_loc2_) == class_204.KEY)
               {
                  Level.name_76(null,null,param1.int2.method_349);
                  break;
               }
               if(param1.int2.name_10.at(_loc2_) == class_204.STAR)
               {
                  Level.method_491(null,null,param1.int2.method_349);
                  break;
               }
               if(param1.int2.name_10.at(_loc2_) == class_204.const_24)
               {
                  Level.method_265(null,class_2.method_14(-1820302599));
                  break;
               }
               if(param1.int2.name_10.at(_loc2_) == class_204.const_16)
               {
                  Level.method_265(null,class_2.method_14(-1820302634));
                  break;
               }
               if(param1.int2.name_10.at(_loc2_) == class_204.const_20)
               {
                  Level.method_265(null,class_2.method_14(-1820302698));
                  break;
               }
               if(param1.int2.name_10.at(_loc2_) == class_204.const_12)
               {
                  Level.isButton(null,class_2.method_14(-1820302647),param1.int2.method_349);
                  break;
               }
               if(param1.int2.name_10.at(_loc2_) == class_204.const_14)
               {
                  Level.isButton(null,class_2.method_14(-1820302844),param1.int2.method_349);
                  break;
               }
               if(param1.int2.name_10.at(_loc2_) == class_204.EXIT)
               {
                  Level.method_467(null,"EXIT");
                  break;
               }
               if(param1.int2.name_10.at(_loc2_) == class_204.const_13)
               {
                  Level.method_428(null,class_2.method_14(-1820302633));
                  break;
               }
               _loc2_++;
            }
         }
      }
      
      public final function method_450() : void
      {
         if(!this.var_908)
         {
            this.var_908 = true;
            var_223.space = null;
            this.method_470();
            class_12.addTween(this.var_257,{
               class_2.method_14(-1820302664):0,
               "time":1.2,
               "y":this.var_257.y + 100,
               "scaleX":0,
               "scaleY":0,
               "visible":false,
               "rotation":this.var_257.rotation + 1000,
               "alpha":0,
               "transition":"easeInOutBack"
            });
         }
      }
      
      public final function method_616(param1:Point) : void
      {
         if(!this.var_700)
         {
            this.var_700 = true;
            var_223.space = null;
            class_12.addTween(this.var_567,{
               class_2.method_14(-1820302664):0,
               "time":0.3,
               "alpha":0
            });
            class_12.addTween(this.var_257,{
               class_2.method_14(-1820302664):0,
               "time":5,
               "x":param1.x,
               "y":param1.y,
               "scaleX":0,
               "scaleY":0,
               class_2.method_14(-1820302640):[{
                  "x":Level.var_162.x + 20,
                  "y":Level.var_162.y
               },{
                  "x":Level.var_162.x + Level.var_162.width * 0.5,
                  "y":Level.var_162.y + Level.var_162.height * 0.5
               },{
                  "x":Level.var_162.x + Level.var_162.width * 0.5,
                  "y":Level.var_162.y + Level.var_162.height - 80
               },{
                  "x":Level.var_162.x,
                  "y":Level.var_162.y + Level.var_162.height * 0.5
               }],
               "visible":false,
               "rotation":this.var_257.rotation + 1000,
               "transition":"easeOutBack"
            });
         }
      }
      
      private final function method_470() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this._hands.length)
         {
            this.var_567.removeChild(this._hands[_loc1_]);
            this._hands[_loc1_] = null;
            _loc1_++;
         }
         this._hands.length = 0;
      }
      
      private final function method_420() : void
      {
         var _loc1_:Number = Math.random();
         if(!this._timer)
         {
            this._timer = new Timer(10000 * _loc1_,1);
         }
         else
         {
            this._timer.reset();
            this._timer.delay = 10000 * _loc1_;
            this._timer.repeatCount = 1;
         }
         this._timer.addEventListener(TimerEvent.TIMER,this.method_523);
         this._timer.start();
      }
      
      private final function method_523(param1:TimerEvent) : void
      {
         this._timer.stop();
         this._timer.removeEventListener(TimerEvent.TIMER,this.method_523);
         if(Math.random() > 0.5)
         {
            this.var_1060 = true;
            this.var_616.ea1.gotoAndPlay(2);
            this.var_616.ea2.gotoAndPlay(2);
            this.method_420();
         }
         else
         {
            this.var_1060 = false;
            this.var_616.ea1.gotoAndPlay(2);
            this.var_616.ea2.gotoAndPlay(2);
            this.method_420();
         }
      }
      
      public final function method_453() : void
      {
         this.var_628 = new Body(class_198.KINEMATIC,Vec2.method_65(0,0));
         this.var_628.shapes.add(new Polygon(Polygon.rect(-2,-10,4,20),null,class_204.const_10));
         this.var_628.shapes.at(0).name_10.add(class_204.const_31);
         this.var_628.space = this.space;
      }
      
      private final function method_625(param1:Body) : void
      {
         var _loc2_:int = 0;
         if(this._hands.length > 1)
         {
            _loc2_ = 0;
            while(_loc2_ < Level.var_168.length)
            {
               if(param1 == Level.var_168[_loc2_].physics)
               {
                  if(Level.var_168[_loc2_].hand)
                  {
                     if(Level.var_168[_loc2_].hand.isReel)
                     {
                        if(SoundAS.group(class_2.method_14(-1820302475)).getSound(class_2.method_14(-1820302648)).isPlaying)
                        {
                           SoundAS.group(class_2.method_14(-1820302475)).getSound(class_2.method_14(-1820302648)).stop();
                        }
                        this.removePoint(Level.var_168[_loc2_].hand.handID);
                     }
                  }
               }
               _loc2_++;
            }
         }
         else
         {
            SoundAS.group(class_2.method_14(-1820302475)).play(class_2.method_14(-1820302556) + String(class_207.method_179(5,6)),0.7);
         }
      }
      
      public final function addPoint(param1:Number = 0, param2:Number = 0, param3:Boolean = true) : void
      {
         var _loc4_:* = null;
         if(!this.var_700)
         {
            if(this._hands.length <= 10)
            {
               if(Level)
               {
                  Level.var_212["0"] = Level.var_212["0"] + 1;
               }
               if(param3)
               {
                  SoundAS.group(class_2.method_14(-1820302475)).play(class_2.method_14(-1820302532) + String(int(Math.random() * 7) + 1),0.7).pan = SoundManager.method_190(mouseX);
               }
               if(param1 == 0 && param2 == 0)
               {
                  _loc4_ = new class_200(Vec2.method_65(mouseX,mouseY),this._hands.length);
               }
               else
               {
                  _loc4_ = new class_200(Vec2.method_65(param1,param2),this._hands.length);
               }
               this.var_567.addChild(_loc4_);
               this._hands.push(_loc4_);
            }
            else
            {
               SoundAS.group(class_2.method_14(-1820302475)).play(class_2.method_14(-1820302556) + String(class_207.method_179(5,6)),0.7);
            }
         }
      }
      
      public final function removePoint(param1:int) : void
      {
         var hand:class_200 = null;
         var timer:Timer = null;
         var delta:Number = NaN;
         var vec:Vec2 = null;
         var id:int = param1;
         if(this._hands.length - 1 >= id)
         {
            if(this._hands[id].isReel && !this._hands[id].isDel)
            {
               if(Level.var_330)
               {
                  Level.var_330.method_249(false,false,false,false,true);
               }
               Level.var_168[this._hands[id].reelID].run = false;
               Level.var_168[this._hands[id].reelID].enable = true;
               Level.var_168[this._hands[id].reelID].graphicstReelJelly.alpha = 0;
               Level.var_168[this._hands[id].reelID].graphicstReelJelly.visible = false;
               timer = new Timer(500,1);
               timer.addEventListener(TimerEvent.TIMER,function():void
               {
                  Level.name_53 = 0.0166666666666667;
               });
               timer.start();
               delta = 0;
               if(this._hands[id].tension <= 500)
               {
                  delta = 12;
                  Level.name_53 = 0.01;
               }
               else if(this._hands[id].tension > 500 && this._hands[id].tension <= 600)
               {
                  delta = 11;
                  Level.name_53 = 0.00980392156862745;
               }
               else if(this._hands[id].tension > 600 && this._hands[id].tension <= 700)
               {
                  delta = 10;
                  Level.name_53 = 0.00961538461538462;
               }
               else if(this._hands[id].tension > 700 && this._hands[id].tension <= 800)
               {
                  delta = 9;
                  Level.name_53 = 0.00909090909090909;
               }
               else if(this._hands[id].tension > 800 && this._hands[id].tension <= 900)
               {
                  delta = 8;
                  Level.name_53 = 0.00862068965517241;
               }
               else if(this._hands[id].tension > 900 && this._hands[id].tension <= 1000)
               {
                  delta = 7;
                  Level.name_53 = 0.0078125;
               }
               else if(this._hands[id].tension > 1000 && this._hands[id].tension <= 1100)
               {
                  delta = 6.6;
                  Level.name_53 = 0.0078125;
               }
               else if(this._hands[id].tension > 1100 && this._hands[id].tension <= 1200)
               {
                  delta = 6.2;
                  Level.name_53 = 0.0078125;
               }
               else if(this._hands[id].tension > 1200 && this._hands[id].tension <= 1300)
               {
                  delta = 5.8;
                  Level.name_53 = 0.00714285714285714;
               }
               else if(this._hands[id].tension > 1300 && this._hands[id].tension <= 1400)
               {
                  delta = 5.6;
                  Level.name_53 = 0.00714285714285714;
               }
               else if(this._hands[id].tension > 1400 && this._hands[id].tension <= 1500)
               {
                  delta = 5.4;
                  Level.name_53 = 0.00714285714285714;
               }
               else if(this._hands[id].tension > 1500)
               {
                  delta = 5.2;
                  Level.name_53 = 0.00680272108843537;
               }
               SoundAS.group(class_2.method_14(-1820302475)).play(class_2.method_14(-1820302571) + String(int(Math.random() * 3) + 1),0.6).pan = SoundManager.method_190(this._hands[id].segments[0].x);
               if(delta < 6)
               {
                  SoundAS.group(class_2.method_14(-1820302475)).play(class_2.method_14(-1820302469),0.7);
               }
               vec = Vec2.method_65(this._hands[id].segments[1].x - this._hands[id].segments[0].x,this._hands[id].segments[1].y - this._hands[id].segments[0].y);
               var_223.method_715(vec.method_392(this._hands[id].tension / delta));
            }
            this._hands[id].isDel = true;
            hand = this._hands[id];
            class_12.addTween(hand,{
               "time":0.4,
               "alpha":0,
               "onComplete":function():void
               {
                  if(var_567.contains(hand))
                  {
                     var_567.removeChild(hand);
                  }
                  var _loc1_:int = 0;
                  while(_loc1_ < _hands.length)
                  {
                     if(hand == _hands[_loc1_])
                     {
                        _hands[_loc1_] = null;
                        _hands.splice(_loc1_,1);
                     }
                     _loc1_++;
                  }
               }
            });
         }
      }
      
      public final function method_255(param1:class_200 = null, param2:int = -1, param3:Number = 0.3) : void
      {
         var var_1110:Timer = null;
         var var_1055:class_200 = param1;
         var var_1002:int = param2;
         var var_1203:Number = param3;
         var_1110 = new Timer(var_1203 * 1000,1);
         var_1110.addEventListener(TimerEvent.TIMER,this.f = function():*
         {
            var _loc1_:* = undefined;
            if(!var_1055 && var_1002 > -1)
            {
               if(_hands.length - 1 >= var_1002)
               {
                  removePoint(var_1002);
               }
            }
            else if(var_1055)
            {
               _loc1_ = 0;
               while(_loc1_ < _hands.length)
               {
                  if(_hands[_loc1_] == var_1055)
                  {
                     removePoint(_loc1_);
                     break;
                  }
                  _loc1_++;
               }
            }
            var_1110.removeEventListener(TimerEvent.TIMER,f);
         });
         var_1110.start();
      }
      
      private final function method_794(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == 38)
         {
            this._hands[this._hands.length - 1].tension = this._hands[this._hands.length - 1].tension + 100;
         }
         if(param1.keyCode == 40)
         {
            this._hands[this._hands.length - 1].tension = this._hands[this._hands.length - 1].tension - 100;
         }
      }
      
      public final function update() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:Number = NaN;
         var _loc10_:* = NaN;
         var _loc11_:int = 0;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         if(!this.var_700 && !this.var_908)
         {
            if(this.var_628.space)
            {
               this.var_628.position.method_211(mouseX,mouseY);
               this.var_1101 = class_207.angle(var_223.position.x,var_223.position.y,mouseX,mouseY);
               this.var_628.rotation = this.var_1101;
            }
            if(this.var_637.space)
            {
               this.var_637.position.method_211(mouseX,mouseY);
            }
            _loc1_ = 0;
            while(_loc1_ < 1000)
            {
               _loc1_++;
            }
            if(this.var_970)
            {
               if(this.var_340.length > 5)
               {
                  this.var_340.length = 0;
               }
               if(this.var_340.length == 0)
               {
                  this.var_340.push(new Point(mouseX,mouseY),new Point(mouseX,mouseY));
               }
               if(Point.distance(this.var_340[this.var_340.length - 2],new Point(mouseX,mouseY)) > 200)
               {
                  this.var_340[this.var_340.length] = new Point(mouseX,mouseY);
               }
               else
               {
                  this.var_340[this.var_340.length - 1].x = mouseX;
                  this.var_340[this.var_340.length - 1].y = mouseY;
               }
               _loc3_ = 0;
               while(_loc3_ < this._hands.length)
               {
                  _loc4_ = 0;
                  while(_loc4_ < this._hands[_loc3_].segments.length - 1)
                  {
                     _loc7_ = 0;
                     while(_loc7_ < this.var_340.length - 1)
                     {
                        if(class_207.method_595(this.var_340[_loc7_].x,this.var_340[_loc7_].y,this.var_340[_loc7_ + 1].x,this.var_340[_loc7_ + 1].y,this._hands[_loc3_].segments[_loc4_].x,this._hands[_loc3_].segments[_loc4_].y,this._hands[_loc3_].segments[_loc4_ + 1].x,this._hands[_loc3_].segments[_loc4_ + 1].y))
                        {
                           if(this._hands.length > 1)
                           {
                              this._hands[_loc3_].isCut = true;
                              break;
                           }
                           break;
                        }
                        _loc7_++;
                     }
                     _loc4_++;
                  }
                  _loc5_ = 0;
                  _loc6_ = 0;
                  while(_loc6_ < this._hands.length)
                  {
                     if(!this._hands[_loc6_].isCut)
                     {
                        _loc5_++;
                     }
                     _loc6_++;
                  }
                  if(_loc5_ >= 1)
                  {
                     if(this._hands[_loc3_].isCut)
                     {
                        if(!this._hands[_loc3_].isDel)
                        {
                           if(this._hands[_loc3_].isReel)
                           {
                              if(SoundAS.group(class_2.method_14(-1820302475)).getSound(class_2.method_14(-1820302648)).isPlaying)
                              {
                                 SoundAS.group(class_2.method_14(-1820302475)).getSound(class_2.method_14(-1820302648)).stop();
                              }
                           }
                           SoundAS.group(class_2.method_14(-1820302475)).getSound("Scissors").play(0.3 + Math.random() * 0.3).pan = SoundManager.method_190(mouseX);
                           this.var_1010 = true;
                           this.removePoint(_loc3_);
                           _loc3_--;
                        }
                     }
                  }
                  _loc3_++;
               }
            }
            if(this._hands.length == 0)
            {
               Level.restart();
               GUI.method_295();
            }
            this.var_881 = this.var_881 + 1;
            if(this.var_881 >= 60 / this.var_1171)
            {
               this.var_881 = 0;
            }
            if(this.var_1060)
            {
               this.var_383.ea1.res.x = 12.55;
               this.var_383.ea1.res.y = 16.45;
               this.var_383.ea2.res.x = 10.55;
               this.var_383.ea2.res.y = 16.1;
               this.var_383.ea1.res.rotation = -(class_207.method_166(Math.atan2(mouseY - var_223.position.y,mouseX - var_223.position.x)) - this.var_257.rotation - 135);
               this.var_383.ea2.res.rotation = -(class_207.method_166(Math.atan2(mouseY - var_223.position.y,mouseX - var_223.position.x)) - this.var_257.rotation - 135);
            }
            else
            {
               this.var_383.ea1.res.x = 11.55;
               this.var_383.ea1.res.y = 14.4;
               this.var_383.ea2.res.x = 5.55;
               this.var_383.ea2.res.y = 14.4;
               this.var_383.ea1.res.rotation = 0;
               this.var_383.ea2.res.rotation = 0;
            }
            if(this.var_964)
            {
               if(this.var_819 == class_2.method_14(-1820302599))
               {
                  this.var_955 = this.var_1115;
               }
               else if(this.var_819 == class_2.method_14(-1820302634))
               {
                  this.var_955 = this.var_1126;
               }
               else if(this.var_819 == class_2.method_14(-1820302698))
               {
                  this.var_955 = this.var_1132;
               }
               this.var_646 = Color.interpolateTransform(this.var_646,this.var_955,this.var_759);
               this.var_257.var_548.getChildAt(0).transform.colorTransform = this.var_646;
               this.var_257.var_548.getChildAt(2).transform.colorTransform = this.var_646;
               this.var_257.var_538.transform.colorTransform = this.var_646;
               this.var_567.transform.colorTransform = this.var_646;
               if(Level.var_168)
               {
                  _loc8_ = 0;
                  while(_loc8_ < Level.var_168.length)
                  {
                     Level.var_168[_loc8_].graphicstReelJelly.transform.colorTransform = this.var_646;
                     _loc8_++;
                  }
               }
               if(this.var_759 < 1)
               {
                  this.var_759 = this.var_759 + 0.01;
               }
               else
               {
                  this.var_964 = false;
                  this.var_759 = 0;
               }
            }
            this.var_257.x = var_223.position.x;
            this.var_257.y = var_223.position.y;
            _loc2_ = 90 + this.var_510 - this.var_257.rotation;
            if(_loc2_ < 300)
            {
               this.var_257.rotation = this.var_257.rotation + _loc2_ * 0.3;
            }
            else
            {
               this.var_257.rotation = 90 + this.var_510;
            }
            if(this._hands.length > 0)
            {
               this.var_510 = 0;
               _loc9_ = -Infinity;
               _loc10_ = 0;
               this.var_946 = false;
               this.var_1056 = false;
               _loc11_ = 0;
               while(_loc11_ < this._hands.length)
               {
                  if(this._hands[_loc11_].isButton && this._hands[_loc11_].completeMove)
                  {
                     this._hands[_loc11_].isButton = false;
                     this.method_255(this._hands[_loc11_],-1,0);
                  }
                  if(this._hands[_loc11_].corrected && !this._hands[_loc11_].isDel)
                  {
                     if(this._hands[_loc11_].segments[0] != null)
                     {
                        if(!this.var_659)
                        {
                           this.var_659 = Vec2.name_5();
                        }
                        this.var_659.x = this._hands[_loc11_].segments[0].x - this._hands[_loc11_].segments[this._hands[_loc11_].segments.length - 1].x;
                        this.var_659.x = this._hands[_loc11_].segments[0].y - this._hands[_loc11_].segments[this._hands[_loc11_].segments.length - 1].y;
                        if(Math.abs(class_207.method_166(this.var_659.angle)) > _loc9_)
                        {
                           _loc10_ = Number(class_207.method_166(this.var_659.angle));
                           _loc9_ = Math.abs(class_207.method_166(this.var_659.angle));
                        }
                        this.var_510 = this.var_510 + class_207.method_166(Math.abs(this.var_659.angle));
                        if(!this.d)
                        {
                           this.d = Vec2.method_65();
                        }
                        this.d.x = var_223.position.x - this._hands[_loc11_].linkPoint.x;
                        this.d.y = var_223.position.y - this._hands[_loc11_].linkPoint.y;
                        if(!this.name_74)
                        {
                           this.name_74 = Vec2.method_65();
                        }
                        this.name_74.x = this.d.x * (this._hands[_loc11_].tension * (this.d.length - this.length) / this.d.length);
                        this.name_74.y = this.d.y * (this._hands[_loc11_].tension * (this.d.length - this.length) / this.d.length);
                        this.name_74.x = this.name_74.x * -1;
                        this.name_74.y = this.name_74.y * -1;
                        this.var_683.method_282(this.name_74);
                     }
                  }
                  if(this._hands[_loc11_].isCut)
                  {
                     this.var_1056 = true;
                  }
                  if(this._hands[_loc11_].isReel && !this._hands[_loc11_].isDel)
                  {
                     this.var_946 = true;
                  }
                  this._hands[_loc11_].handID = _loc11_;
                  if(this.var_881 == 0)
                  {
                     this._hands[_loc11_].checkTriggers();
                  }
                  this._hands[_loc11_].update();
                  this._hands[_loc11_].draw();
                  _loc11_++;
               }
               if(!this.var_1056)
               {
               }
               this.var_510 = this.var_510 / this._hands.length;
               if(_loc10_ + this.var_510 > 180)
               {
                  this.var_510 = -180 + (this.var_510 - (180 - _loc10_));
               }
               else
               {
                  this.var_510 = _loc10_ + this.var_510;
               }
               this.it++;
               if(this.it > 4)
               {
                  this.it = 1;
               }
               _loc12_ = Number(0.74 - Math.abs(this.var_683.y) / 90000);
               _loc13_ = Number(0.74 - Math.abs(this.var_683.x) / 90000);
               if(_loc12_ < 0.6)
               {
                  _loc12_ = 0.6;
               }
               if(_loc13_ < 0.6)
               {
                  _loc13_ = 0.6;
               }
               this.var_257.scaleX = _loc13_;
               this.var_257.scaleY = _loc12_;
               var_223.name_74 = this.var_683;
               var_223.velocity.x = var_223.velocity.x * this.var_1075;
               var_223.velocity.y = var_223.velocity.y * this.var_1075;
               this.var_683.method_211(0,0);
            }
            else
            {
               this.var_946 = false;
               this.var_683.method_211(0,0);
               var_223.name_74.method_211(0,0);
               this.var_257.rotation = 0;
            }
         }
      }
   }
}
