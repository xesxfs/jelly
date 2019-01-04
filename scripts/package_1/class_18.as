package package_1
{
   public final class class_18
   {
       
      
      public var var_41:Boolean;
      
      public var onUpdate:Function;
      
      public var useFrames:Boolean;
      
      public var count:Number;
      
      public var onOverwriteParams:Array;
      
      public var timeStart:Number;
      
      public var timeComplete:Number;
      
      public var onStartParams:Array;
      
      public var onUpdateScope:Object;
      
      public var rounded:Boolean;
      
      public var onUpdateParams:Array;
      
      public var properties:Object;
      
      public var onComplete:Function;
      
      public var transitionParams:Object;
      
      public var var_38:Number;
      
      public var onStart:Function;
      
      public var onOverwriteScope:Object;
      
      public var skipUpdates:Number;
      
      public var onStartScope:Object;
      
      public var scope:Object;
      
      public var var_42:Boolean;
      
      public var timePaused:Number;
      
      public var transition:Function;
      
      public var onCompleteParams:Array;
      
      public var onError:Function;
      
      public var var_36:Number;
      
      public var onErrorScope:Object;
      
      public var onOverwrite:Function;
      
      public var isPaused:Boolean;
      
      public var waitFrames:Boolean;
      
      public var onCompleteScope:Object;
      
      public function class_18(param1:Object, param2:Number, param3:Number, param4:Boolean, param5:Function, param6:Object)
      {
         super();
         scope = param1;
         timeStart = param2;
         timeComplete = param3;
         useFrames = param4;
         transition = param5;
         transitionParams = param6;
         properties = new Object();
         isPaused = false;
         timePaused = undefined;
         var_42 = false;
         var_38 = 0;
         var_36 = 0;
         skipUpdates = 0;
         var_41 = false;
      }
      
      public static function method_41(param1:Object) : Object
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc2_:Object = param1.base;
         if(_loc2_)
         {
            _loc3_ = {};
            if(_loc2_ is Array)
            {
               _loc4_ = [];
               _loc8_ = 0;
               while(_loc8_ < _loc2_.length)
               {
                  _loc4_.push(_loc2_[_loc8_]);
                  _loc8_++;
               }
            }
            else
            {
               _loc4_ = [_loc2_];
            }
            _loc4_.push(param1);
            _loc6_ = _loc4_.length;
            _loc7_ = 0;
            while(_loc7_ < _loc6_)
            {
               if(_loc4_[_loc7_][class_2.method_14(-1820302834)])
               {
                  _loc5_ = class_19.method_57(method_41(_loc4_[_loc7_][class_2.method_14(-1820302834)]),_loc4_[_loc7_]);
               }
               else
               {
                  _loc5_ = _loc4_[_loc7_];
               }
               _loc3_ = class_19.method_57(_loc3_,_loc5_);
               _loc7_++;
            }
            if(_loc3_[class_2.method_14(-1820302834)])
            {
               delete _loc3_[class_2.method_14(-1820302834)];
            }
            return _loc3_;
         }
         return param1;
      }
      
      public final function clone(param1:Boolean) : class_18
      {
         var _loc3_:* = null;
         var _loc2_:class_18 = new class_18(scope,timeStart,timeComplete,useFrames,transition,transitionParams);
         _loc2_.properties = new Array();
         for(_loc3_ in properties)
         {
            _loc2_.properties[_loc3_] = properties[_loc3_].clone();
         }
         _loc2_.skipUpdates = skipUpdates;
         _loc2_.var_38 = var_38;
         if(!param1)
         {
            _loc2_.onStart = onStart;
            _loc2_.onUpdate = onUpdate;
            _loc2_.onComplete = onComplete;
            _loc2_.onOverwrite = onOverwrite;
            _loc2_.onError = onError;
            _loc2_.onStartParams = onStartParams;
            _loc2_.onUpdateParams = onUpdateParams;
            _loc2_.onCompleteParams = onCompleteParams;
            _loc2_.onOverwriteParams = onOverwriteParams;
            _loc2_.onStartScope = onStartScope;
            _loc2_.onUpdateScope = onUpdateScope;
            _loc2_.onCompleteScope = onCompleteScope;
            _loc2_.onOverwriteScope = onOverwriteScope;
            _loc2_.onErrorScope = onErrorScope;
         }
         _loc2_.rounded = rounded;
         _loc2_.isPaused = isPaused;
         _loc2_.timePaused = timePaused;
         _loc2_.var_42 = var_42;
         _loc2_.count = count;
         _loc2_.var_36 = var_36;
         _loc2_.waitFrames = waitFrames;
         _loc2_.var_41 = var_41;
         return _loc2_;
      }
      
      public final function toString() : String
      {
         var _loc3_:* = null;
         var _loc1_:* = class_2.method_14(-1820302796);
         _loc1_ = _loc1_ + (class_2.method_14(-1820302525) + String(scope));
         _loc1_ = _loc1_ + class_2.method_14(-1820302538);
         var _loc2_:Boolean = true;
         for(_loc3_ in properties)
         {
            if(!_loc2_)
            {
               _loc1_ = _loc1_ + ",";
            }
            _loc1_ = _loc1_ + (class_2.method_14(-1820302791) + properties[_loc3_].name);
            _loc1_ = _loc1_ + (class_2.method_14(-1820302473) + properties[_loc3_].valueStart);
            _loc1_ = _loc1_ + (class_2.method_14(-1820302551) + properties[_loc3_].valueComplete);
            _loc1_ = _loc1_ + "]";
            _loc2_ = false;
         }
         _loc1_ = _loc1_ + (class_2.method_14(-1820302729) + String(timeStart));
         _loc1_ = _loc1_ + (class_2.method_14(-1820302667) + String(timeComplete));
         _loc1_ = _loc1_ + (class_2.method_14(-1820302537) + String(useFrames));
         _loc1_ = _loc1_ + (class_2.method_14(-1820302485) + String(transition));
         _loc1_ = _loc1_ + (class_2.method_14(-1820302406) + String(transitionParams));
         if(skipUpdates)
         {
            _loc1_ = _loc1_ + (class_2.method_14(-1820302550) + String(skipUpdates));
         }
         if(var_38)
         {
            _loc1_ = _loc1_ + (class_2.method_14(-1820302567) + String(var_38));
         }
         if(Boolean(onStart))
         {
            _loc1_ = _loc1_ + (class_2.method_14(-1820302642) + String(onStart));
         }
         if(Boolean(onUpdate))
         {
            _loc1_ = _loc1_ + (class_2.method_14(-1820302731) + String(onUpdate));
         }
         if(Boolean(onComplete))
         {
            _loc1_ = _loc1_ + (class_2.method_14(-1820302575) + String(onComplete));
         }
         if(Boolean(onOverwrite))
         {
            _loc1_ = _loc1_ + (class_2.method_14(-1820302777) + String(onOverwrite));
         }
         if(Boolean(onError))
         {
            _loc1_ = _loc1_ + (class_2.method_14(-1820302765) + String(onError));
         }
         if(onStartParams)
         {
            _loc1_ = _loc1_ + (class_2.method_14(-1820302823) + String(onStartParams));
         }
         if(onUpdateParams)
         {
            _loc1_ = _loc1_ + (class_2.method_14(-1820302845) + String(onUpdateParams));
         }
         if(onCompleteParams)
         {
            _loc1_ = _loc1_ + (class_2.method_14(-1820302842) + String(onCompleteParams));
         }
         if(onOverwriteParams)
         {
            _loc1_ = _loc1_ + (class_2.method_14(-1820302644) + String(onOverwriteParams));
         }
         if(onStartScope)
         {
            _loc1_ = _loc1_ + (class_2.method_14(-1820302829) + String(onStartScope));
         }
         if(onUpdateScope)
         {
            _loc1_ = _loc1_ + (class_2.method_14(-1820302590) + String(onUpdateScope));
         }
         if(onCompleteScope)
         {
            _loc1_ = _loc1_ + (class_2.method_14(-1820302788) + String(onCompleteScope));
         }
         if(onOverwriteScope)
         {
            _loc1_ = _loc1_ + (class_2.method_14(-1820302805) + String(onOverwriteScope));
         }
         if(onErrorScope)
         {
            _loc1_ = _loc1_ + (class_2.method_14(-1820302711) + String(onErrorScope));
         }
         if(rounded)
         {
            _loc1_ = _loc1_ + (class_2.method_14(-1820302808) + String(rounded));
         }
         if(isPaused)
         {
            _loc1_ = _loc1_ + (class_2.method_14(-1820302684) + String(isPaused));
         }
         if(timePaused)
         {
            _loc1_ = _loc1_ + (class_2.method_14(-1820302806) + String(timePaused));
         }
         if(var_42)
         {
            _loc1_ = _loc1_ + (class_2.method_14(-1820302712) + String(var_42));
         }
         if(count)
         {
            _loc1_ = _loc1_ + (class_2.method_14(-1820302709) + String(count));
         }
         if(var_36)
         {
            _loc1_ = _loc1_ + (class_2.method_14(-1820302751) + String(var_36));
         }
         if(waitFrames)
         {
            _loc1_ = _loc1_ + (class_2.method_14(-1820302408) + String(waitFrames));
         }
         if(var_41)
         {
            _loc1_ = _loc1_ + (class_2.method_14(-1820302727) + String(var_41));
         }
         _loc1_ = _loc1_ + class_2.method_14(-1820302424);
         return _loc1_;
      }
   }
}
