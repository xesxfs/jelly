package treefortress.sound
{
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import package_37.class_280;
   
   public final class class_282
   {
       
      
      public var var_367:SoundManager;
      
      public var type:String;
      
      public var url:String;
      
      public var name_37:Sound;
      
      public var var_253:SoundChannel;
      
      public var var_896:class_280;
      
      public var var_954:int;
      
      public var var_940:Boolean;
      
      public var var_545:Vector.<SoundChannel>;
      
      protected var var_802:int;
      
      protected var var_714:Boolean;
      
      protected var var_688:Number;
      
      protected var var_895:Number;
      
      protected var var_1025:Boolean;
      
      protected var pauseTime:Number;
      
      protected var _isPlaying:Boolean;
      
      protected var var_844:SoundTransform;
      
      var var_1026:class_281;
      
      public function class_282(param1:Sound = null, param2:String = null)
      {
         super();
         this.name_37 = param1;
         this.type = param2;
         this.var_367 = SoundAS;
         this.pauseTime = 0;
         this.var_688 = 1;
         this.var_895 = 0;
         this.var_844 = new SoundTransform();
         this.var_896 = new class_280(class_282);
         this.var_545 = new Vector.<SoundChannel>(0);
      }
      
      public function get method_824() : Boolean
      {
         return this.var_1025;
      }
      
      public final function play(param1:Number = 1, param2:Number = 0, param3:int = 0, param4:Boolean = true, param5:Boolean = false) : class_282
      {
         this.var_954 = param3;
         this.var_1025 = param5;
         param3 = param3 < 0?int(int.MAX_VALUE):int(param3);
         this.var_802 = 0;
         if(param5 == false)
         {
            this.var_802 = param3;
            param3 = 0;
         }
         this.var_940 = param4;
         if(param4)
         {
            if(this.var_253)
            {
               this.var_545.push(this.var_253);
            }
            this.var_253 = this.name_37.play(param2,param3);
         }
         else
         {
            if(this.var_253)
            {
               this.method_227(this.var_253);
            }
            this.var_253 = this.name_37.play(param2,param3);
         }
         if(this.var_253)
         {
            this.var_253.addEventListener(Event.SOUND_COMPLETE,this.method_356);
            this._isPlaying = true;
         }
         this.pauseTime = 0;
         this.volume = param1;
         this.mute = this.mute;
         return this;
      }
      
      public function get method_399() : class_281
      {
         return this.var_1026;
      }
      
      public final function pause() : class_282
      {
         if(!this.var_253)
         {
            return this;
         }
         this._isPlaying = false;
         this.pauseTime = this.var_253.position;
         this.method_227(this.var_253);
         this.method_543();
         return this;
      }
      
      public final function resume(param1:Boolean = false) : class_282
      {
         if(this.isPaused || param1)
         {
            this.play(this.var_688,this.pauseTime,this.var_954,this.var_940);
         }
         return this;
      }
      
      public final function stop() : class_282
      {
         this.pauseTime = 0;
         this.method_227(this.var_253);
         this.var_253 = null;
         this.method_543();
         this._isPlaying = false;
         return this;
      }
      
      public function get mute() : Boolean
      {
         return this.var_714;
      }
      
      public function set mute(param1:Boolean) : void
      {
         this.var_714 = param1;
         if(this.var_253)
         {
            this.var_253.soundTransform = !!this.var_714?new SoundTransform(0):this.soundTransform;
            this.method_324();
         }
      }
      
      public final function fadeTo(param1:Number, param2:Number = 1000, param3:Boolean = true) : class_282
      {
         this.var_1026 = this.var_367.addTween(this.type,-1,param1,param2,param3);
         return this;
      }
      
      public final function fadeFrom(param1:Number, param2:Number, param3:Number = 1000, param4:Boolean = true) : class_282
      {
         this.var_1026 = this.var_367.addTween(this.type,param1,param2,param3,param4);
         return this;
      }
      
      public function get isPlaying() : Boolean
      {
         return this._isPlaying;
      }
      
      public function get method_473() : Number
      {
         return this.var_688 * this.var_367.masterVolume;
      }
      
      public function get isPaused() : Boolean
      {
         return this.var_253 && this.name_37 && this.pauseTime > 0 && this.pauseTime < this.name_37.length;
      }
      
      public function get position() : Number
      {
         return !!this.var_253?Number(this.var_253.position):Number(0);
      }
      
      public function set position(param1:Number) : void
      {
         if(this.var_253)
         {
            this.method_227(this.var_253);
         }
         this.var_253 = this.name_37.play(param1,this.var_954);
         this.var_253.addEventListener(Event.SOUND_COMPLETE,this.method_356);
      }
      
      public function get volume() : Number
      {
         return this.var_688;
      }
      
      public function set volume(param1:Number) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         else if(isNaN(this.volume))
         {
            param1 = 1;
         }
         this.var_688 = param1;
         this.soundTransform.volume = this.method_473;
         if(!this.var_714 && this.var_253)
         {
            this.var_253.soundTransform = this.soundTransform;
            this.method_324();
         }
      }
      
      public function get pan() : Number
      {
         return this.var_895;
      }
      
      public function set pan(param1:Number) : void
      {
         if(param1 < -1)
         {
            param1 = -1;
         }
         else if(param1 > 1 || isNaN(this.volume))
         {
            param1 = 1;
         }
         this.var_895 = this.soundTransform.pan = param1;
         if(!this.var_714 && this.var_253)
         {
            this.var_253.soundTransform = this.soundTransform;
            this.method_324();
         }
      }
      
      public function get masterVolume() : Number
      {
         return this.var_367.masterVolume;
      }
      
      public function set masterVolume(param1:Number) : void
      {
         this.var_367.masterVolume = param1;
      }
      
      public final function clone() : class_282
      {
         var _loc1_:class_282 = new class_282(this.name_37,this.type);
         return _loc1_;
      }
      
      public final function destroy() : void
      {
         this.var_896.removeAll();
         try
         {
            this.name_37.close();
         }
         catch(e:Error)
         {
         }
         this.name_37 = null;
         this.var_844 = null;
         this.method_227(this.var_253);
         this.var_253 = null;
         this.method_399.end(false);
      }
      
      protected final function method_356(param1:Event) : void
      {
         var _loc2_:SoundChannel = param1.target as SoundChannel;
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.method_356);
         if(_loc2_ == this.var_253)
         {
            this.var_253 = null;
            this.pauseTime = 0;
            if(this.var_1025 == false)
            {
               if(this.var_954 == -1)
               {
                  this.play(this.var_688,0,-1,this.var_940);
               }
               else if(this.var_802--)
               {
                  this.play(this.var_688,0,this.var_802,this.var_940);
               }
               else
               {
                  this._isPlaying = false;
                  this.var_896.method_270(this);
               }
            }
            else
            {
               this.var_896.method_270(this);
            }
         }
         var _loc3_:int = this.var_545.length;
         while(_loc3_--)
         {
            if(_loc2_.position == this.name_37.length)
            {
               this.method_227(_loc2_);
               this.var_545.splice(_loc3_,1);
            }
         }
      }
      
      public function get method_800() : int
      {
         return this.var_802;
      }
      
      protected final function method_227(param1:SoundChannel) : void
      {
         if(!param1)
         {
            return;
         }
         param1.removeEventListener(Event.SOUND_COMPLETE,this.method_356);
         try
         {
            param1.stop();
            return;
         }
         catch(e:Error)
         {
            return;
         }
      }
      
      protected final function method_543() : void
      {
         if(!this.var_545.length)
         {
            return;
         }
         var _loc1_:int = this.var_545.length;
         while(_loc1_--)
         {
            this.method_227(this.var_545[_loc1_]);
         }
         this.var_545.length = 0;
      }
      
      protected final function method_324() : void
      {
         if(!this.var_253)
         {
            return;
         }
         var _loc1_:int = this.var_545.length;
         while(_loc1_--)
         {
            this.var_545[_loc1_].soundTransform = this.var_253.soundTransform;
         }
      }
      
      public function get soundTransform() : SoundTransform
      {
         if(!this.var_844)
         {
            this.var_844 = new SoundTransform(this.method_473,this.var_895);
         }
         return this.var_844;
      }
      
      public function set soundTransform(param1:SoundTransform) : void
      {
         if(param1.volume > 0)
         {
            this.var_714 = false;
         }
         else if(param1.volume == 0)
         {
            this.var_714 = true;
         }
         this.var_253.soundTransform = param1;
         this.method_324();
      }
   }
}
