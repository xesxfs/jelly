package package_15
{
   import flash.events.EventDispatcher;
   import org.flintparticles.common.utils.class_70;
   import package_11.class_64;
   import package_12.class_160;
   import package_12.class_170;
   import package_12.class_50;
   import package_16.class_62;
   import package_16.class_91;
   import package_2.class_21;
   import package_2.class_71;
   import package_5.class_27;
   import package_6.class_28;
   import package_8.class_31;
   
   public class class_59 extends EventDispatcher
   {
       
      
      protected var var_621:class_91;
      
      protected var var_341:Vector.<class_31>;
      
      protected var _actions:Vector.<class_28>;
      
      protected var var_368:Vector.<class_64>;
      
      protected var var_279:Array;
      
      protected var var_651:class_21;
      
      protected var var_750:Boolean = true;
      
      protected var var_959:Number = 0;
      
      protected var var_761:Boolean = false;
      
      protected var var_1017:Boolean = false;
      
      protected var var_918:Boolean = false;
      
      protected var var_687:Number = 0.1;
      
      protected var var_1046:Boolean = false;
      
      protected var var_1049:Boolean = false;
      
      public function class_59()
      {
         super();
         this.var_279 = [];
         this._actions = new Vector.<class_28>();
         this.var_341 = new Vector.<class_31>();
         this.var_368 = new Vector.<class_64>();
         this.var_651 = new class_71();
      }
      
      public function get method_598() : Number
      {
         return this.var_687;
      }
      
      public function set method_598(param1:Number) : void
      {
         this.var_687 = param1;
      }
      
      public function get method_328() : Vector.<class_31>
      {
         return this.var_341;
      }
      
      public function set method_328(param1:Vector.<class_31>) : void
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_341)
         {
            _loc2_.method_163(this);
         }
         this.var_341 = param1.slice();
         this.var_341.sort(this.method_412);
         for each(_loc2_ in param1)
         {
            _loc2_.method_126(this);
         }
      }
      
      public final function addInitializer(param1:class_31) : void
      {
         var _loc2_:uint = this.var_341.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            if(this.var_341[_loc3_].priority < param1.priority)
            {
               break;
            }
            _loc3_++;
         }
         this.var_341.splice(_loc3_,0,param1);
         param1.method_126(this);
      }
      
      public final function method_314(param1:class_31) : void
      {
         var _loc2_:int = this.var_341.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.var_341.splice(_loc2_,1);
            param1.method_163(this);
         }
      }
      
      public final function method_471(param1:class_31) : Boolean
      {
         return this.var_341.indexOf(param1) != -1;
      }
      
      public final function method_859(param1:Class) : Boolean
      {
         var _loc2_:uint = this.var_341.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            if(this.var_341[_loc3_] is param1)
            {
               return true;
            }
            _loc3_++;
         }
         return false;
      }
      
      public function get actions() : Vector.<class_28>
      {
         return this._actions;
      }
      
      public function set actions(param1:Vector.<class_28>) : void
      {
         var _loc2_:* = null;
         for each(_loc2_ in this._actions)
         {
            _loc2_.method_163(this);
         }
         this._actions = param1.slice();
         this._actions.sort(this.method_412);
         for each(_loc2_ in param1)
         {
            _loc2_.method_126(this);
         }
      }
      
      public final function method_232(param1:class_28) : void
      {
         var _loc2_:uint = this._actions.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            if(this._actions[_loc3_].priority < param1.priority)
            {
               break;
            }
            _loc3_++;
         }
         this._actions.splice(_loc3_,0,param1);
         param1.method_126(this);
      }
      
      public final function method_908(param1:class_28) : void
      {
         var _loc2_:int = this._actions.indexOf(param1);
         if(_loc2_ != -1)
         {
            this._actions.splice(_loc2_,1);
            param1.method_163(this);
         }
      }
      
      public final function method_849(param1:class_28) : Boolean
      {
         return this._actions.indexOf(param1) != -1;
      }
      
      public final function method_870(param1:Class) : Boolean
      {
         var _loc2_:uint = this._actions.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            if(this._actions[_loc3_] is param1)
            {
               return true;
            }
            _loc3_++;
         }
         return false;
      }
      
      public function get method_657() : Vector.<class_64>
      {
         return this.var_368;
      }
      
      public function set method_657(param1:Vector.<class_64>) : void
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_368)
         {
            _loc2_.method_163(this);
         }
         this.var_368 = param1.slice();
         this.var_368.sort(this.method_412);
         for each(_loc2_ in this.var_368)
         {
            _loc2_.method_126(this);
         }
      }
      
      public final function method_462(param1:class_64) : void
      {
         var _loc2_:uint = this.var_368.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            if(this.var_368[_loc3_].priority < param1.priority)
            {
               break;
            }
            _loc3_++;
         }
         this.var_368.splice(_loc3_,0,param1);
         param1.method_126(this);
      }
      
      public final function method_532(param1:class_64) : void
      {
         var _loc2_:int = this.var_368.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.var_368.splice(_loc2_,1);
            param1.method_163(this);
         }
      }
      
      public final function method_914(param1:class_64) : Boolean
      {
         return this.var_368.indexOf(param1) != -1;
      }
      
      public final function method_892(param1:Class) : Boolean
      {
         var _loc2_:uint = this.var_368.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            if(this.var_368[_loc3_] is param1)
            {
               return true;
            }
            _loc3_++;
         }
         return false;
      }
      
      public function get counter() : class_21
      {
         return this.var_651;
      }
      
      public function set counter(param1:class_21) : void
      {
         this.var_651 = param1;
         if(this.running)
         {
            this.var_651.method_199(this);
         }
      }
      
      public final function method_521() : void
      {
         this.var_1046 = true;
      }
      
      public function get method_720() : Boolean
      {
         return this.var_750;
      }
      
      public function set method_720(param1:Boolean) : void
      {
         if(this.var_750 != param1)
         {
            this.var_750 = param1;
            if(this.var_1017)
            {
               if(this.var_750)
               {
                  class_70.instance.addEventListener(class_160.UPDATE,this.method_341,false,0,true);
               }
               else
               {
                  class_70.instance.removeEventListener(class_160.UPDATE,this.method_341);
               }
            }
         }
      }
      
      public function get method_600() : Number
      {
         return this.var_959;
      }
      
      public function set method_600(param1:Number) : void
      {
         this.var_959 = param1;
      }
      
      public function get running() : Boolean
      {
         return this.var_761;
      }
      
      public function get method_731() : class_91
      {
         return this.var_621;
      }
      
      public function set method_731(param1:class_91) : void
      {
         this.var_621 = param1;
      }
      
      public function get name_34() : Vector.<class_62>
      {
         return Vector.<class_62>(this.var_279);
      }
      
      public function set name_34(param1:Vector.<class_62>) : void
      {
         this.killAllParticles();
         this.addParticles(param1,false);
      }
      
      public function get particlesArray() : Array
      {
         return this.var_279;
      }
      
      protected final function method_258() : class_62
      {
         var _loc1_:class_62 = this.var_621.method_258();
         var _loc2_:int = this.var_341.length;
         this.method_730(_loc1_);
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            class_31(this.var_341[_loc3_]).initialize(this,_loc1_);
            _loc3_++;
         }
         this.var_279.push(_loc1_);
         if(hasEventListener(class_50.var_562))
         {
            dispatchEvent(new class_50(class_50.var_562,_loc1_));
         }
         return _loc1_;
      }
      
      protected function method_730(param1:class_62) : void
      {
      }
      
      public final function method_384(param1:class_62, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param2)
         {
            _loc3_ = this.var_341.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.var_341[_loc4_].initialize(this,param1);
               _loc4_++;
            }
         }
         this.var_279.push(param1);
         if(hasEventListener(class_50.var_490))
         {
            dispatchEvent(new class_50(class_50.var_490,param1));
         }
      }
      
      public final function addParticles(param1:Vector.<class_62>, param2:Boolean = false) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc3_:int = param1.length;
         if(param2)
         {
            _loc5_ = this.var_341.length;
            _loc6_ = 0;
            while(_loc6_ < _loc5_)
            {
               _loc4_ = 0;
               while(_loc4_ < _loc3_)
               {
                  this.var_341[_loc6_].initialize(this,param1[_loc4_]);
                  _loc4_++;
               }
               _loc6_++;
            }
         }
         if(hasEventListener(class_50.var_490))
         {
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.var_279.push(param1[_loc4_]);
               dispatchEvent(new class_50(class_50.var_490,param1[_loc4_]));
               _loc4_++;
            }
         }
         else
         {
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.var_279.push(param1[_loc4_]);
               _loc4_++;
            }
         }
      }
      
      public final function removeParticle(param1:class_62) : Boolean
      {
         var particle:class_62 = param1;
         var index:int = this.var_279.indexOf(particle);
         if(index != -1)
         {
            if(this.var_918)
            {
               addEventListener(class_170.var_441,function(param1:class_170):void
               {
                  removeEventListener(class_170.var_441,arguments.callee);
                  removeParticle(particle);
               });
            }
            else
            {
               this.var_279.splice(index,1);
               dispatchEvent(new class_50(class_50.var_565,particle));
            }
            return true;
         }
         return false;
      }
      
      public final function removeParticles(param1:Vector.<class_62>) : void
      {
         var i:int = 0;
         var len:int = 0;
         var index:int = 0;
         var particles:Vector.<class_62> = param1;
         if(this.var_918)
         {
            addEventListener(class_170.var_441,function(param1:class_170):void
            {
               removeEventListener(class_170.var_441,arguments.callee);
               removeParticles(particles);
            });
         }
         else
         {
            i = 0;
            len = particles.length;
            while(i < len)
            {
               index = this.var_279.indexOf(particles[i]);
               if(index != -1)
               {
                  this.var_279.splice(index,1);
                  dispatchEvent(new class_50(class_50.var_565,particles[i]));
               }
               i++;
            }
         }
      }
      
      public final function killAllParticles() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = this.var_279.length;
         if(hasEventListener(class_50.var_364))
         {
            _loc2_ = 0;
            while(_loc2_ < _loc1_)
            {
               dispatchEvent(new class_50(class_50.var_364,this.var_279[_loc2_]));
               this.var_621.method_351(this.var_279[_loc2_]);
               _loc2_++;
            }
         }
         else
         {
            _loc2_ = 0;
            while(_loc2_ < _loc1_)
            {
               this.var_621.method_351(this.var_279[_loc2_]);
               _loc2_++;
            }
         }
         this.var_279.length = 0;
      }
      
      public final function start() : void
      {
         if(this.var_750)
         {
            class_70.instance.addEventListener(class_160.UPDATE,this.method_341,false,0,true);
         }
         this.var_1017 = true;
         this.var_761 = true;
         var _loc1_:int = this.var_368.length;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            class_64(this.var_368[_loc2_]).initialize(this);
            _loc2_++;
         }
         _loc1_ = this.var_651.method_199(this);
         _loc2_ = 0;
         while(_loc2_ < _loc1_)
         {
            this.method_258();
            _loc2_++;
         }
      }
      
      private final function method_341(param1:class_160) : void
      {
         if(this.var_959)
         {
            this.update(this.var_959);
         }
         else
         {
            this.update(param1.time);
         }
      }
      
      public final function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(!this.var_761)
         {
            return;
         }
         if(param1 > this.var_687)
         {
            param1 = this.var_687;
         }
         this.var_918 = true;
         var _loc4_:int = this.var_651.method_209(this,param1);
         _loc2_ = 0;
         while(_loc2_ < _loc4_)
         {
            this.method_258();
            _loc2_++;
         }
         this.method_611();
         _loc4_ = this.var_368.length;
         _loc2_ = 0;
         while(_loc2_ < _loc4_)
         {
            class_64(this.var_368[_loc2_]).update(this,param1);
            _loc2_++;
         }
         if(this.var_279.length > 0)
         {
            _loc4_ = this._actions.length;
            _loc6_ = this.var_279.length;
            if(this.var_1049)
            {
               _loc7_ = 0;
               while(_loc7_ < _loc4_)
               {
                  _loc5_ = this._actions[_loc7_];
                  _loc2_ = _loc6_ - 1;
                  while(_loc2_ >= 0)
                  {
                     _loc3_ = this.var_279[_loc2_];
                     _loc5_.update(this,_loc3_,param1);
                     _loc2_--;
                  }
                  _loc7_++;
               }
            }
            else
            {
               _loc7_ = 0;
               while(_loc7_ < _loc4_)
               {
                  _loc5_ = this._actions[_loc7_];
                  _loc2_ = 0;
                  while(_loc2_ < _loc6_)
                  {
                     _loc3_ = this.var_279[_loc2_];
                     _loc5_.update(this,_loc3_,param1);
                     _loc2_++;
                  }
                  _loc7_++;
               }
            }
            this.var_1049 = !this.var_1049;
            if(hasEventListener(class_50.var_364))
            {
               _loc2_ = _loc6_;
               while(_loc2_--)
               {
                  _loc3_ = this.var_279[_loc2_];
                  if(_loc3_.var_492)
                  {
                     this.var_279.splice(_loc2_,1);
                     dispatchEvent(new class_50(class_50.var_364,_loc3_));
                     if(_loc3_.var_492)
                     {
                        this.var_621.method_351(_loc3_);
                     }
                  }
               }
            }
            else
            {
               _loc2_ = _loc6_;
               while(_loc2_--)
               {
                  _loc3_ = this.var_279[_loc2_];
                  if(_loc3_.var_492)
                  {
                     this.var_279.splice(_loc2_,1);
                     this.var_621.method_351(_loc3_);
                  }
               }
            }
         }
         else if(hasEventListener(class_170.var_952))
         {
            dispatchEvent(new class_170(class_170.var_952));
         }
         this.var_918 = false;
         if(hasEventListener(class_170.var_441))
         {
            dispatchEvent(new class_170(class_170.var_441));
         }
         if(this.var_1046)
         {
            this.var_1046 = false;
            if(hasEventListener(class_170.var_953))
            {
               dispatchEvent(new class_170(class_170.var_953));
            }
         }
      }
      
      protected function method_611() : void
      {
      }
      
      public final function pause() : void
      {
         this.var_761 = false;
      }
      
      public final function resume() : void
      {
         this.var_761 = true;
      }
      
      public final function stop() : void
      {
         if(this.var_750)
         {
            class_70.instance.removeEventListener(class_160.UPDATE,this.method_341);
         }
         this.var_1017 = false;
         this.var_761 = false;
         this.killAllParticles();
      }
      
      public final function method_432(param1:Number, param2:Number = 10) : void
      {
         var _loc3_:Number = this.var_687;
         var _loc4_:Number = 1 / param2;
         this.var_687 = _loc4_;
         while(param1 > 0)
         {
            param1 = param1 - _loc4_;
            this.update(_loc4_);
         }
         this.var_687 = _loc3_;
      }
      
      private final function method_412(param1:class_27, param2:class_27) : Number
      {
         return param1.priority - param2.priority;
      }
   }
}
