package treefortress.sound
{
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.media.Sound;
   import flash.media.SoundLoaderContext;
   import flash.media.SoundTransform;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import package_37.class_280;
   
   public final class SoundManager
   {
       
      
      protected var var_259:Vector.<class_282>;
      
      protected var var_874:Dictionary;
      
      protected var var_653:Object;
      
      protected var var_790:Object;
      
      public var name_54:Vector.<SoundManager>;
      
      protected var activeTweens:Vector.<class_281>;
      
      protected var var_902:Sprite;
      
      protected var var_887:Boolean;
      
      protected var var_915:Boolean;
      
      protected var var_688:Number;
      
      protected var var_895:Number;
      
      protected var var_926:Number;
      
      protected var var_721:class_281;
      
      private var var_1063:Boolean;
      
      public var var_992:class_280;
      
      public var var_973:class_280;
      
      public var parent:SoundManager;
      
      public function SoundManager()
      {
         super();
         this.init();
      }
      
      public final function play(param1:String, param2:Number = 1, param3:Number = 0, param4:int = 0, param5:Boolean = false, param6:Boolean = true, param7:Boolean = false) : class_282
      {
         var _loc8_:class_282 = this.getSound(param1);
         if(this.var_259.indexOf(_loc8_) == -1)
         {
         }
         if(!param6 && _loc8_.isPlaying)
         {
            _loc8_.volume = param2;
         }
         else
         {
            _loc8_.play(param2,param3,param4,param5,param7);
         }
         return _loc8_;
      }
      
      public final function playLoop(param1:String, param2:Number = 1, param3:Number = 0, param4:Boolean = true) : class_282
      {
         return this.play(param1,param2,param3,-1,false,true,param4);
      }
      
      public final function playFx(param1:String, param2:Number = 1, param3:Number = 0, param4:int = 0) : class_282
      {
         return this.play(param1,param2,param3,0,true);
      }
      
      public final function stopAll() : void
      {
         var _loc1_:int = this.var_259.length;
         while(_loc1_--)
         {
            this.var_259[_loc1_].stop();
         }
      }
      
      public final function resume(param1:String) : class_282
      {
         return this.getSound(param1).resume();
      }
      
      public final function method_904() : void
      {
         var _loc1_:int = this.var_259.length;
         while(_loc1_--)
         {
            this.var_259[_loc1_].resume();
         }
      }
      
      public final function pause(param1:String) : class_282
      {
         return this.getSound(param1).pause();
      }
      
      public final function method_740() : void
      {
         var _loc1_:int = this.var_259.length;
         while(_loc1_--)
         {
            this.var_259[_loc1_].pause();
         }
      }
      
      public final function fadeTo(param1:String, param2:Number = 1, param3:Number = 1000, param4:Boolean = true) : class_282
      {
         return this.getSound(param1).fadeTo(param2,param3,param4);
      }
      
      public final function fadeAllTo(param1:Number = 1, param2:Number = 1000, param3:Boolean = true) : void
      {
         var _loc4_:int = this.var_259.length;
         while(_loc4_--)
         {
            this.var_259[_loc4_].fadeTo(param1,param2,param3);
         }
      }
      
      public final function method_928(param1:Number = 1, param2:Number = 1000, param3:Boolean = true) : void
      {
         this.method_459(this.var_926,param1,param2,param3);
      }
      
      public final function fadeFrom(param1:String, param2:Number = 0, param3:Number = 1, param4:Number = 1000, param5:Boolean = true) : class_282
      {
         return this.getSound(param1).fadeFrom(param2,param3,param4,param5);
      }
      
      public final function method_868(param1:Number = 0, param2:Number = 1, param3:Number = 1000, param4:Boolean = true) : void
      {
         var _loc5_:int = this.var_259.length;
         while(_loc5_--)
         {
            this.var_259[_loc5_].fadeFrom(param1,param2,param3,param4);
         }
      }
      
      public final function method_797(param1:Number = 0, param2:Number = 1, param3:Number = 1000, param4:Boolean = true) : void
      {
         this.method_459(param1,param2,param3,param4);
      }
      
      public function get mute() : Boolean
      {
         return this.var_915;
      }
      
      public function set mute(param1:Boolean) : void
      {
         this.var_915 = param1;
         var _loc2_:int = this.var_259.length;
         while(_loc2_--)
         {
            this.var_259[_loc2_].mute = this.var_915;
         }
      }
      
      public function get volume() : Number
      {
         return this.var_688;
      }
      
      public function set volume(param1:Number) : void
      {
         this.var_688 = param1;
         var _loc2_:int = this.var_259.length;
         while(_loc2_--)
         {
            this.var_259[_loc2_].volume = this.var_688;
         }
      }
      
      public function get pan() : Number
      {
         return this.var_895;
      }
      
      public function set pan(param1:Number) : void
      {
         this.var_895 = param1;
         var _loc2_:int = this.var_259.length;
         while(_loc2_--)
         {
            this.var_259[_loc2_].pan = this.var_895;
         }
      }
      
      public function set soundTransform(param1:SoundTransform) : void
      {
         var _loc2_:int = this.var_259.length;
         while(_loc2_--)
         {
            this.var_259[_loc2_].soundTransform = param1;
         }
      }
      
      public final function getSound(param1:String, param2:Boolean = false) : class_282
      {
         var si:class_282 = null;
         var i:int = 0;
         var type:String = param1;
         var forceNew:Boolean = param2;
         if(this.var_1063)
         {
            return null;
         }
         try
         {
            this.var_1063 = true;
            if(type == null)
            {
               §§push(0);
            }
            else
            {
               si = this.var_653[type];
               if(!si)
               {
                  if(!si && this.parent)
                  {
                     si = this.parent.getSound(type);
                  }
                  if(!si && this.name_54)
                  {
                     i = this.name_54.length;
                     while(i--)
                     {
                        si = this.name_54[i].getSound(type);
                        if(si)
                        {
                           break;
                        }
                     }
                  }
                  if(si && this.var_259.indexOf(si) == -1)
                  {
                     this.method_397(si);
                  }
               }
               if(!si)
               {
                  throw new Error(class_2.method_14(-1820302505) + type + class_2.method_14(-1820302730));
               }
               if(forceNew)
               {
                  si = si.clone();
               }
            }
            while(true)
            {
               this.var_1063 = false;
               switch(§§pop())
               {
                  case 0:
                     return null;
                  case 1:
                     throw undefined;
               }
            }
            return si;
         }
         catch(:*)
         {
            while(true)
            {
               throw §§pop();
            }
         }
         this.var_1063 = false;
         switch(-1)
         {
            case 0:
               return null;
            case 1:
               throw undefined;
         }
      }
      
      public final function method_877(param1:String, param2:String, param3:int = 100) : void
      {
         var _loc4_:class_282 = this.var_653[param2];
         if(_loc4_ && _loc4_.url == param1)
         {
            return;
         }
         _loc4_ = new class_282(null,param2);
         _loc4_.url = param1;
         _loc4_.name_37 = new Sound(new URLRequest(param1),new SoundLoaderContext(param3,false));
         _loc4_.name_37.addEventListener(IOErrorEvent.IO_ERROR,this.method_562,false,0,true);
         _loc4_.name_37.addEventListener(Event.COMPLETE,this.method_707,false,0,true);
         this.method_397(_loc4_);
      }
      
      public final function addSound(param1:String, param2:Sound) : void
      {
         var _loc3_:* = null;
         if(this.var_653[param1])
         {
            _loc3_ = this.var_653[param1];
            _loc3_.name_37 = param2;
         }
         else
         {
            _loc3_ = new class_282(param2,param1);
         }
         this.method_397(_loc3_);
      }
      
      public final function method_865(param1:String) : void
      {
         if(this.var_653[param1] == null)
         {
            return;
         }
         var _loc2_:int = this.var_259.length;
         while(_loc2_--)
         {
            if(this.var_259[_loc2_].type == param1)
            {
               this.var_874[this.var_259[_loc2_].name_37] = null;
               this.var_259[_loc2_].destroy();
               this.var_259.splice(_loc2_,1);
            }
         }
         this.var_653[param1] = null;
      }
      
      public final function removeAll() : void
      {
         var _loc1_:int = this.var_259.length;
         while(_loc1_--)
         {
            this.var_259[_loc1_].destroy();
         }
         if(this.name_54)
         {
            _loc1_ = this.name_54.length;
            while(_loc1_--)
            {
               this.name_54[_loc1_].removeAll();
            }
            this.name_54.length = 0;
         }
         this.init();
      }
      
      public function get masterVolume() : Number
      {
         return this.var_926;
      }
      
      public function set masterVolume(param1:Number) : void
      {
         var _loc2_:* = null;
         this.var_926 = param1;
         var _loc3_:int = this.var_259.length;
         while(_loc3_--)
         {
            _loc2_ = this.var_259[_loc3_];
            _loc2_.volume = _loc2_.volume;
         }
      }
      
      public final function group(param1:String) : SoundManager
      {
         if(!this.var_790[param1])
         {
            this.var_790[param1] = new SoundManager();
            (this.var_790[param1] as SoundManager).parent = this;
            if(!this.name_54)
            {
               this.name_54 = new Vector.<SoundManager>(0);
            }
            this.name_54.push(this.var_790[param1]);
         }
         return this.var_790[param1];
      }
      
      protected final function init() : void
      {
         if(!this.var_992)
         {
            this.var_992 = new class_280(class_282);
         }
         if(!this.var_973)
         {
            this.var_973 = new class_280(class_282);
         }
         this.var_688 = 1;
         this.var_895 = 0;
         this.var_926 = 1;
         this.var_259 = new Vector.<class_282>(0);
         this.var_874 = new Dictionary(true);
         this.var_653 = {};
         this.var_790 = {};
         this.activeTweens = new Vector.<class_281>();
      }
      
      final function method_459(param1:Number, param2:Number, param3:Number, param4:Boolean) : void
      {
         if(!this.var_721)
         {
            this.var_721 = new class_281(null,0,0,true);
         }
         this.var_721.init(param1,param2,param3);
         this.var_721.var_1039 = param4;
         this.var_721.update(0);
         if(this.activeTweens.indexOf(this.var_721) == -1)
         {
            this.activeTweens.push(this.var_721);
         }
         this.method_308 = true;
      }
      
      final function addTween(param1:String, param2:Number, param3:Number, param4:Number, param5:Boolean) : class_281
      {
         var _loc6_:class_282 = this.getSound(param1);
         if(param2 >= 0)
         {
            _loc6_.volume = param2;
         }
         if(_loc6_.method_399)
         {
            _loc6_.method_399.method_597();
         }
         var _loc7_:class_281 = new class_281(_loc6_,param3,param4);
         _loc7_.var_1039 = param5;
         _loc7_.update(_loc7_.startTime);
         this.activeTweens.push(_loc7_);
         this.method_308 = true;
         return _loc7_;
      }
      
      protected final function method_535(param1:Event) : void
      {
         var _loc2_:int = getTimer();
         var _loc3_:int = this.activeTweens.length;
         while(_loc3_--)
         {
            if(this.activeTweens[_loc3_].update(_loc2_))
            {
               this.activeTweens[_loc3_].end();
               this.activeTweens.splice(_loc3_,1);
            }
         }
         this.method_308 = this.activeTweens.length > 0;
      }
      
      protected final function method_397(param1:class_282) : void
      {
         param1.mute = this.var_915;
         param1.var_367 = this;
         if(this.var_259.indexOf(param1) == -1)
         {
            this.var_259.push(param1);
         }
         this.var_874[param1.name_37] = param1;
         this.var_653[param1.type] = param1;
      }
      
      protected final function method_707(param1:Event) : void
      {
         var _loc2_:Sound = param1.target as Sound;
         this.var_992.method_270(this.var_874[_loc2_]);
      }
      
      protected final function method_745(param1:ProgressEvent) : void
      {
      }
      
      protected final function method_562(param1:IOErrorEvent) : void
      {
         var _loc2_:class_282 = this.var_874[param1.target as Sound];
         this.var_973.method_270(_loc2_);
      }
      
      protected function get method_308() : Boolean
      {
         return this.var_887;
      }
      
      protected function set method_308(param1:Boolean) : void
      {
         if(param1 == this.var_887)
         {
            return;
         }
         this.var_887 = param1;
         if(this.var_887)
         {
            if(!this.var_902)
            {
               this.var_902 = new Sprite();
            }
            this.var_902.addEventListener(Event.ENTER_FRAME,this.method_535);
         }
         else
         {
            this.var_902.removeEventListener(Event.ENTER_FRAME,this.method_535);
         }
      }
   }
}
