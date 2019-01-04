package package_23
{
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class class_178 extends Sprite
   {
       
      
      public var repeat:Boolean;
      
      public var reverse:Boolean;
      
      public var var_904:Number;
      
      public var var_682:Function = null;
      
      protected var var_458:Bitmap;
      
      protected var var_828:Boolean;
      
      protected var _isPlaying:Boolean;
      
      public var var_644:Array;
      
      protected var var_278:Number;
      
      protected var var_523:class_176;
      
      protected var var_911:String;
      
      public function class_178()
      {
         super();
         this.repeat = true;
         this.reverse = false;
         this.var_904 = 1;
         this.var_458 = new Bitmap();
         addChild(this.var_458);
         this.var_828 = false;
         this._isPlaying = false;
         this.var_644 = [];
         this.var_523 = null;
         this.var_278 = 1;
         this.var_911 = class_2.method_14(-1820302589);
      }
      
      public final function method_129() : void
      {
         this.stop();
         if(this.var_458 != null)
         {
            removeChild(this.var_458);
            this.var_458.bitmapData = null;
            this.var_458 = null;
         }
         if(this.var_644 != null)
         {
            this.var_644.length = 0;
            this.var_644 = null;
         }
         this.var_523 = null;
         if(parent != null)
         {
            parent.removeChild(this);
         }
         this.var_682 = null;
      }
      
      public final function method_838(param1:class_176, param2:String = null, param3:Boolean = false) : void
      {
         var _loc4_:String = param2 == null?param1.name:param2;
         this.var_644[_loc4_] = param1;
         if(param3 || this.var_523 == null)
         {
            this.method_174(_loc4_);
         }
      }
      
      public final function method_111(param1:String, param2:String = null, param3:Boolean = false) : void
      {
         var _loc4_:String = param2 == null?param1:param2;
         this.var_644[_loc4_] = class_172.getInstance().method_690(param1);
         if(param3 || this.var_523 == null)
         {
            this.method_174(_loc4_);
         }
      }
      
      public final function method_174(param1:String) : void
      {
         if(this.var_911 == param1)
         {
            return;
         }
         if(this.var_644[param1] != null)
         {
            this.var_523 = this.var_644[param1];
            this.var_458.x = this.var_523.name_72;
            this.var_458.y = this.var_523.name_73;
            this.var_278 = 1;
            this.method_280(this.var_278);
            this.var_911 = param1;
            return;
         }
         throw new Error(class_2.method_14(-1820302723) + param1 + class_2.method_14(-1820302665));
      }
      
      public final function play() : void
      {
         if(!this._isPlaying)
         {
            addEventListener(Event.ENTER_FRAME,this.enterFrameHandler,false,0,true);
            this._isPlaying = true;
         }
      }
      
      public final function stop() : void
      {
         if(this._isPlaying)
         {
            removeEventListener(Event.ENTER_FRAME,this.enterFrameHandler);
            this._isPlaying = false;
         }
      }
      
      public final function gotoAndStop(param1:Number) : void
      {
         this.var_278 = param1 <= 0?1:param1 > this.totalFrames?Number(this.totalFrames):Number(param1);
         this.method_280(this.var_278);
         this.stop();
      }
      
      public final function gotoAndPlay(param1:Number) : void
      {
         this.var_278 = param1 <= 0?1:param1 > this.totalFrames?Number(this.totalFrames):Number(param1);
         this.method_280(this.var_278);
         this.play();
      }
      
      public final function method_812() : void
      {
         this.gotoAndPlay(Math.ceil(Math.random() * this.totalFrames));
      }
      
      public final function nextFrame(param1:Boolean = false) : void
      {
         if(param1)
         {
            this.var_278 = this.var_278 + this.var_904;
         }
         else
         {
            this.var_278++;
         }
         this.method_280(this.var_278);
      }
      
      public final function prevFrame(param1:Boolean = false) : void
      {
         if(param1)
         {
            this.var_278 = this.var_278 - this.var_904;
         }
         else
         {
            this.var_278--;
         }
         this.method_280(this.var_278);
      }
      
      protected final function enterFrameHandler(param1:Event) : void
      {
         if(this.var_523 != null)
         {
            if(this.reverse)
            {
               this.var_278 = this.var_278 <= 1?Number(this.totalFrames):Number(this.var_278);
               this.prevFrame(true);
               if(Math.floor(this.var_278) <= 1)
               {
                  this.var_278 = 1;
                  this.method_529();
               }
            }
            else
            {
               this.var_278 = this.var_278 >= this.totalFrames?0:Number(this.var_278);
               this.nextFrame(true);
               if(Math.floor(this.var_278) >= this.totalFrames)
               {
                  this.var_278 = this.totalFrames;
                  this.method_529();
               }
            }
         }
         else
         {
            this.stop();
         }
      }
      
      protected final function method_529() : void
      {
         if(!this.repeat)
         {
            this.stop();
         }
         dispatchEvent(new Event(Event.COMPLETE));
         if(this.var_682 != null)
         {
            (this.var_682 as Function).apply(this);
         }
      }
      
      protected final function method_280(param1:Number) : void
      {
         var _loc2_:int = Math.floor(param1 - 1);
         _loc2_ = _loc2_ <= 0?0:_loc2_ >= this.totalFrames - 1?int(this.totalFrames - 1):int(_loc2_);
         this.var_458.bitmapData = this.var_523.frames[_loc2_];
         this.var_458.smoothing = this.var_828;
      }
      
      public function get totalFrames() : int
      {
         return this.var_523 != null?int(this.var_523.frames.length):0;
      }
      
      public function get currentFrame() : int
      {
         return Math.floor(this.var_278);
      }
      
      public function get method_593() : Boolean
      {
         return this._isPlaying;
      }
      
      public function set smoothing(param1:Boolean) : void
      {
         this.var_828 = param1;
         this.var_458.smoothing = this.var_828;
      }
      
      public function get smoothing() : Boolean
      {
         return this.var_828;
      }
      
      public function get method_457() : String
      {
         return this.var_911;
      }
   }
}
