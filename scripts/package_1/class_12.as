package package_1
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.getTimer;
   
   public final class class_12
   {
      
      private static var var_32:Number = 1;
      
      private static var var_33:Number;
      
      private static var var_35:Object;
      
      public static var var_45:Boolean = true;
      
      private static var var_39:Boolean = false;
      
      private static var _currentTime:Number;
      
      private static var var_29:Array;
      
      private static var var_44:Object;
      
      private static var var_34:Object;
      
      private static var var_43:Object;
      
      private static var var_37:Boolean = false;
      
      private static var var_40:MovieClip;
       
      
      public function class_12()
      {
         super();
         trace(class_2.method_14(-1820302486));
      }
      
      public static function method_96(param1:String, param2:Function, param3:Function) : void
      {
         if(!var_37)
         {
            init();
         }
         var _loc4_:class_16 = new class_16(param2,param3);
         var_44[param1] = _loc4_;
      }
      
      public static function method_88(param1:String, param2:Function, param3:Function, param4:Array = null, param5:Function = null) : void
      {
         if(!var_37)
         {
            init();
         }
         var _loc6_:class_15 = new class_15(param2,param3,param4,param5);
         var_34[param1] = _loc6_;
      }
      
      public static function init(... rest) : void
      {
         var_37 = true;
         var_43 = new Object();
         class_17.init();
         var_34 = new Object();
         var_44 = new Object();
         var_35 = new Object();
      }
      
      private static function method_55() : Boolean
      {
         var _loc1_:int = 0;
         if(var_29.length == 0)
         {
            return false;
         }
         _loc1_ = 0;
         while(_loc1_ < var_29.length)
         {
            if(var_29[_loc1_] == undefined || !var_29[_loc1_].isPaused)
            {
               if(!method_32(_loc1_))
               {
                  method_27(_loc1_);
               }
               if(var_29[_loc1_] == null)
               {
                  method_27(_loc1_,true);
                  _loc1_--;
               }
            }
            _loc1_++;
         }
         return true;
      }
      
      public static function method_90(param1:Object = null, param2:Object = null) : Boolean
      {
         var _loc3_:* = NaN;
         var _loc4_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:Number = NaN;
         var _loc11_:* = null;
         if(!Boolean(param1))
         {
            return false;
         }
         if(param1 is Array)
         {
            _loc4_ = param1.concat();
         }
         else
         {
            _loc4_ = [param1];
         }
         var _loc5_:Object = param2;
         if(!var_37)
         {
            init();
         }
         if(!var_39 || !Boolean(var_40))
         {
            method_35();
         }
         var _loc6_:Number = !!isNaN(_loc5_.time)?0:Number(_loc5_.time);
         var _loc7_:Number = !!isNaN(_loc5_.delay)?0:Number(_loc5_.delay);
         if(typeof _loc5_.transition == "string")
         {
            _loc11_ = _loc5_.transition.toLowerCase();
            _loc8_ = var_43[_loc11_];
         }
         else
         {
            _loc8_ = _loc5_.transition;
         }
         if(!Boolean(_loc8_))
         {
            _loc8_ = var_43[class_2.method_14(-1820302713)];
         }
         _loc3_ = 0;
         while(_loc3_ < _loc4_.length)
         {
            if(_loc5_.useFrames == true)
            {
               _loc9_ = new class_18(_loc4_[_loc3_],var_33 + _loc7_ / var_32,var_33 + (_loc7_ + _loc6_) / var_32,true,_loc8_,_loc5_.transitionParams);
            }
            else
            {
               _loc9_ = new class_18(_loc4_[_loc3_],_currentTime + _loc7_ * 1000 / var_32,_currentTime + (_loc7_ * 1000 + _loc6_ * 1000) / var_32,false,_loc8_,_loc5_.transitionParams);
            }
            _loc9_.properties = null;
            _loc9_.onStart = _loc5_.onStart;
            _loc9_.onUpdate = _loc5_.onUpdate;
            _loc9_.onComplete = _loc5_.onComplete;
            _loc9_.onOverwrite = _loc5_.onOverwrite;
            _loc9_.onStartParams = _loc5_.onStartParams;
            _loc9_.onUpdateParams = _loc5_.onUpdateParams;
            _loc9_.onCompleteParams = _loc5_.onCompleteParams;
            _loc9_.onOverwriteParams = _loc5_.onOverwriteParams;
            _loc9_.onStartScope = _loc5_.onStartScope;
            _loc9_.onUpdateScope = _loc5_.onUpdateScope;
            _loc9_.onCompleteScope = _loc5_.onCompleteScope;
            _loc9_.onOverwriteScope = _loc5_.onOverwriteScope;
            _loc9_.onErrorScope = _loc5_.onErrorScope;
            _loc9_.var_42 = true;
            _loc9_.count = _loc5_.count;
            _loc9_.waitFrames = _loc5_.waitFrames;
            var_29.push(_loc9_);
            if(_loc6_ == 0 && _loc7_ == 0)
            {
               _loc10_ = var_29.length - 1;
               method_32(_loc10_);
               method_27(_loc10_);
            }
            _loc3_++;
         }
         return true;
      }
      
      public static function method_95() : Boolean
      {
         var _loc2_:int = 0;
         if(!Boolean(var_29))
         {
            return false;
         }
         var _loc1_:Boolean = false;
         _loc2_ = 0;
         while(_loc2_ < var_29.length)
         {
            method_51(_loc2_);
            _loc1_ = true;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public static function method_97(param1:Object, ... rest) : Boolean
      {
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:int = 0;
         var _loc3_:Array = new Array();
         _loc4_ = 0;
         while(_loc4_ < rest.length)
         {
            if(typeof rest[_loc4_] == "string" && _loc3_.indexOf(rest[_loc4_]) == -1)
            {
               if(var_35[rest[_loc4_]])
               {
                  _loc5_ = var_35[rest[_loc4_]];
                  _loc6_ = _loc5_.splitValues(param1,null);
                  _loc7_ = 0;
                  while(_loc7_ < _loc6_.length)
                  {
                     _loc3_.push(_loc6_[_loc7_].name);
                     _loc7_++;
                  }
               }
               else
               {
                  _loc3_.push(rest[_loc4_]);
               }
            }
            _loc4_++;
         }
         return method_33(method_27,param1,_loc3_);
      }
      
      public static function method_60() : void
      {
         var_33++;
      }
      
      public static function method_59(param1:Number, param2:Array) : uint
      {
         var _loc5_:int = 0;
         var _loc6_:* = null;
         var _loc7_:Boolean = false;
         var _loc3_:class_18 = var_29[param1];
         var _loc4_:class_18 = _loc3_.clone(false);
         _loc5_ = 0;
         while(_loc5_ < param2.length)
         {
            _loc6_ = param2[_loc5_];
            if(Boolean(_loc3_.properties[_loc6_]))
            {
               _loc3_.properties[_loc6_] = undefined;
               delete _loc3_.properties[_loc6_];
            }
            _loc5_++;
         }
         for(_loc6_ in _loc4_.properties)
         {
            _loc7_ = false;
            _loc5_ = 0;
            while(_loc5_ < param2.length)
            {
               if(param2[_loc5_] == _loc6_)
               {
                  _loc7_ = true;
                  break;
               }
               _loc5_++;
            }
            if(!_loc7_)
            {
               _loc4_.properties[_loc6_] = undefined;
               delete _loc4_.properties[_loc6_];
            }
         }
         var_29.push(_loc4_);
         return var_29.length - 1;
      }
      
      public static function method_47(param1:Number) : Boolean
      {
         var _loc2_:class_18 = var_29[param1];
         if(_loc2_ == null || !_loc2_.isPaused)
         {
            return false;
         }
         var _loc3_:Number = method_29(_loc2_);
         _loc2_.timeStart = _loc2_.timeStart + (_loc3_ - _loc2_.timePaused);
         _loc2_.timeComplete = _loc2_.timeComplete + (_loc3_ - _loc2_.timePaused);
         _loc2_.timePaused = undefined;
         _loc2_.isPaused = false;
         return true;
      }
      
      public static function getVersion() : String
      {
         return class_2.method_14(-1820302801);
      }
      
      public static function method_54(param1:Event) : void
      {
         method_36();
         method_60();
         var _loc2_:Boolean = false;
         _loc2_ = method_55();
         if(!_loc2_)
         {
            method_58();
         }
      }
      
      public static function method_36() : void
      {
         _currentTime = getTimer();
      }
      
      private static function method_32(param1:Number) : Boolean
      {
         var var_60:class_18 = null;
         var var_51:Boolean = false;
         var var_67:Number = NaN;
         var var_62:Number = NaN;
         var var_56:Number = NaN;
         var var_58:Number = NaN;
         var var_66:Number = NaN;
         var var_48:String = null;
         var var_46:Object = null;
         var var_59:Object = null;
         var var_68:Object = null;
         var var_57:Number = NaN;
         var var_49:Number = param1;
         var_60 = var_29[var_49];
         if(var_60 == null || !Boolean(var_60.scope))
         {
            return false;
         }
         var var_70:Boolean = false;
         var var_65:Number = method_29(var_60);
         if(var_65 >= var_60.timeStart)
         {
            var_59 = var_60.scope;
            if(var_60.var_42)
            {
               do
               {
                  var_62 = (var_60.timeComplete - var_60.timeStart) / var_60.count * (var_60.var_36 + 1);
                  var_56 = var_60.timeStart;
                  var_58 = var_60.timeComplete - var_60.timeStart;
                  var_66 = var_60.timeComplete - var_60.timeStart;
                  var_67 = var_60.transition(var_62,var_56,var_58,var_66);
                  if(var_65 >= var_67)
                  {
                     if(Boolean(var_60.onUpdate))
                     {
                        var_46 = !!Boolean(var_60.onUpdateScope)?var_60.onUpdateScope:var_59;
                        try
                        {
                           var_60.onUpdate.apply(var_46,var_60.onUpdateParams);
                        }
                        catch(e1:Error)
                        {
                           method_28(var_60,e1,"onUpdate");
                        }
                     }
                     var_60.var_36++;
                     if(var_60.var_36 >= var_60.count)
                     {
                        var_70 = true;
                     }
                     else if(!var_60.waitFrames)
                     {
                     }
                  }
               }
               while(var_65 >= var_67);
               
            }
            else
            {
               var_51 = var_60.skipUpdates < 1 || !var_60.skipUpdates || var_60.var_38 >= var_60.skipUpdates;
               if(var_65 >= var_60.timeComplete)
               {
                  var_70 = true;
                  var_51 = true;
               }
               if(!var_60.var_41)
               {
                  if(Boolean(var_60.onStart))
                  {
                     var_46 = !!Boolean(var_60.onStartScope)?var_60.onStartScope:var_59;
                     try
                     {
                        var_60.onStart.apply(var_46,var_60.onStartParams);
                     }
                     catch(e2:Error)
                     {
                        method_28(var_60,e2,"onStart");
                     }
                  }
                  for(var_48 in var_60.properties)
                  {
                     if(var_60.properties[var_48].isSpecialProperty)
                     {
                        if(Boolean(var_34[var_48].preProcess))
                        {
                           var_60.properties[var_48].valueComplete = var_34[var_48].preProcess(var_59,var_34[var_48].parameters,var_60.properties[var_48].originalValueComplete,var_60.properties[var_48].extra);
                        }
                        var_57 = var_34[var_48].getValue(var_59,var_34[var_48].parameters,var_60.properties[var_48].extra);
                     }
                     else
                     {
                        var_57 = var_59[var_48];
                     }
                     var_60.properties[var_48].valueStart = !!isNaN(var_57)?var_60.properties[var_48].valueComplete:var_57;
                  }
                  var_51 = true;
                  var_60.var_41 = true;
               }
               if(var_51)
               {
                  for(var_48 in var_60.properties)
                  {
                     var_68 = var_60.properties[var_48];
                     if(var_70)
                     {
                        var_67 = var_68.valueComplete;
                     }
                     else if(var_68.hasModifier)
                     {
                        var_62 = var_65 - var_60.timeStart;
                        var_66 = var_60.timeComplete - var_60.timeStart;
                        var_67 = var_60.transition(var_62,0,1,var_66,var_60.transitionParams);
                        var_67 = var_68.modifierFunction(var_68.valueStart,var_68.valueComplete,var_67,var_68.modifierParameters);
                     }
                     else
                     {
                        var_62 = var_65 - var_60.timeStart;
                        var_56 = var_68.valueStart;
                        var_58 = var_68.valueComplete - var_68.valueStart;
                        var_66 = var_60.timeComplete - var_60.timeStart;
                        var_67 = var_60.transition(var_62,var_56,var_58,var_66,var_60.transitionParams);
                     }
                     if(var_60.rounded)
                     {
                        var_67 = Math.round(var_67);
                     }
                     if(var_68.isSpecialProperty)
                     {
                        var_34[var_48].setValue(var_59,var_67,var_34[var_48].parameters,var_60.properties[var_48].extra);
                     }
                     else
                     {
                        var_59[var_48] = var_67;
                     }
                  }
                  var_60.var_38 = 0;
                  if(Boolean(var_60.onUpdate))
                  {
                     var_46 = !!Boolean(var_60.onUpdateScope)?var_60.onUpdateScope:var_59;
                     try
                     {
                        var_60.onUpdate.apply(var_46,var_60.onUpdateParams);
                     }
                     catch(e3:Error)
                     {
                        method_28(var_60,e3,"onUpdate");
                     }
                  }
               }
               else
               {
                  var_60.var_38++;
               }
            }
            if(var_70 && Boolean(var_60.onComplete))
            {
               var_46 = !!Boolean(var_60.onCompleteScope)?var_60.onCompleteScope:var_59;
               try
               {
                  var_60.onComplete.apply(var_46,var_60.onCompleteParams);
               }
               catch(e4:Error)
               {
                  method_28(var_60,e4,"onComplete");
               }
            }
            return !var_70;
         }
         return true;
      }
      
      public static function method_93(param1:Number) : void
      {
         var _loc2_:* = NaN;
         var _loc3_:Number = NaN;
         if(isNaN(param1))
         {
            param1 = 1;
         }
         if(param1 < 0.00001)
         {
            param1 = 0.00001;
         }
         if(param1 != var_32)
         {
            if(var_29 != null)
            {
               _loc2_ = 0;
               while(_loc2_ < var_29.length)
               {
                  _loc3_ = method_29(var_29[_loc2_]);
                  var_29[_loc2_].timeStart = _loc3_ - (_loc3_ - var_29[_loc2_].timeStart) * var_32 / param1;
                  var_29[_loc2_].timeComplete = _loc3_ - (_loc3_ - var_29[_loc2_].timeComplete) * var_32 / param1;
                  if(var_29[_loc2_].timePaused != undefined)
                  {
                     var_29[_loc2_].timePaused = _loc3_ - (_loc3_ - var_29[_loc2_].timePaused) * var_32 / param1;
                  }
                  _loc2_++;
               }
            }
            var_32 = param1;
         }
      }
      
      public static function method_92() : Boolean
      {
         var _loc2_:int = 0;
         if(!Boolean(var_29))
         {
            return false;
         }
         var _loc1_:Boolean = false;
         _loc2_ = 0;
         while(_loc2_ < var_29.length)
         {
            method_47(_loc2_);
            _loc1_ = true;
            _loc2_++;
         }
         return _loc1_;
      }
      
      private static function method_28(param1:class_18, param2:Error, param3:String) : void
      {
         var var_46:Object = null;
         var var_71:class_18 = param1;
         var var_50:Error = param2;
         var var_52:String = param3;
         if(Boolean(var_71.onError) && var_71.onError is Function)
         {
            var_46 = !!Boolean(var_71.onErrorScope)?var_71.onErrorScope:var_71.scope;
            try
            {
               var_71.onError.apply(var_46,[var_71.scope,var_50]);
               return;
            }
            catch(metaError:Error)
            {
               method_31(String(var_71.scope) + class_2.method_14(-1820302761) + var_50.getStackTrace() + class_2.method_14(-1820302741) + metaError.getStackTrace());
               return;
            }
         }
         else if(!Boolean(var_71.onError))
         {
            method_31(String(var_71.scope) + class_2.method_14(-1820302825) + var_52 + class_2.method_14(-1820302542) + var_50.getStackTrace());
         }
      }
      
      private static function method_35() : void
      {
         var_39 = true;
         var_29 = new Array();
         var_40 = new MovieClip();
         var_40.addEventListener(Event.ENTER_FRAME,class_12.method_54);
         var_33 = 0;
         method_36();
      }
      
      public static function method_94() : Boolean
      {
         var _loc2_:int = 0;
         if(!Boolean(var_29))
         {
            return false;
         }
         var _loc1_:Boolean = false;
         _loc2_ = 0;
         while(_loc2_ < var_29.length)
         {
            method_27(_loc2_);
            _loc1_ = true;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public static function addTween(param1:Object = null, param2:Object = null) : Boolean
      {
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc13_:* = null;
         var _loc14_:* = null;
         var _loc15_:* = null;
         var _loc16_:Number = NaN;
         var _loc17_:* = null;
         var _loc18_:* = null;
         var _loc19_:* = null;
         var _loc20_:* = null;
         if(!Boolean(param1))
         {
            return false;
         }
         if(param1 is Array)
         {
            _loc6_ = param1.concat();
         }
         else
         {
            _loc6_ = [param1];
         }
         var _loc7_:Object = class_18.method_41(param2);
         if(!var_37)
         {
            init();
         }
         if(!var_39 || !Boolean(var_40))
         {
            method_35();
         }
         var _loc8_:Number = !!isNaN(_loc7_.time)?0:Number(_loc7_.time);
         var _loc9_:Number = !!isNaN(_loc7_.delay)?0:Number(_loc7_.delay);
         var _loc10_:Array = new Array();
         var _loc11_:Object = {
            class_2.method_14(-1820302756):true,
            "time":true,
            class_2.method_14(-1820302664):true,
            "useFrames":true,
            "skipUpdates":true,
            "transition":true,
            "transitionParams":true,
            "onStart":true,
            "onUpdate":true,
            "onComplete":true,
            "onOverwrite":true,
            "onError":true,
            "rounded":true,
            "onStartParams":true,
            "onUpdateParams":true,
            "onCompleteParams":true,
            "onOverwriteParams":true,
            "onStartScope":true,
            "onUpdateScope":true,
            "onCompleteScope":true,
            "onOverwriteScope":true,
            "onErrorScope":true
         };
         var _loc12_:Object = new Object();
         for(_loc5_ in _loc7_)
         {
            if(!_loc11_[_loc5_])
            {
               if(var_35[_loc5_])
               {
                  _loc17_ = var_35[_loc5_].splitValues(_loc7_[_loc5_],var_35[_loc5_].parameters);
                  _loc3_ = 0;
                  while(_loc3_ < _loc17_.length)
                  {
                     if(var_35[_loc17_[_loc3_].name])
                     {
                        _loc18_ = var_35[_loc17_[_loc3_].name].splitValues(_loc17_[_loc3_].value,var_35[_loc17_[_loc3_].name].parameters);
                        _loc4_ = 0;
                        while(_loc4_ < _loc18_.length)
                        {
                           _loc10_[_loc18_[_loc4_].name] = {
                              "valueStart":undefined,
                              "valueComplete":_loc18_[_loc4_].value,
                              "arrayIndex":_loc18_[_loc4_].arrayIndex,
                              "isSpecialProperty":false
                           };
                           _loc4_++;
                        }
                     }
                     else
                     {
                        _loc10_[_loc17_[_loc3_].name] = {
                           "valueStart":undefined,
                           "valueComplete":_loc17_[_loc3_].value,
                           "arrayIndex":_loc17_[_loc3_].arrayIndex,
                           "isSpecialProperty":false
                        };
                     }
                     _loc3_++;
                  }
               }
               else if(var_44[_loc5_] != undefined)
               {
                  _loc19_ = var_44[_loc5_].modifyValues(_loc7_[_loc5_]);
                  _loc3_ = 0;
                  while(_loc3_ < _loc19_.length)
                  {
                     _loc12_[_loc19_[_loc3_].name] = {
                        "modifierParameters":_loc19_[_loc3_].parameters,
                        "modifierFunction":var_44[_loc5_].getValue
                     };
                     _loc3_++;
                  }
               }
               else
               {
                  _loc10_[_loc5_] = {
                     "valueStart":undefined,
                     "valueComplete":_loc7_[_loc5_]
                  };
               }
            }
         }
         for(_loc5_ in _loc10_)
         {
            if(var_34[_loc5_] != undefined)
            {
               _loc10_[_loc5_].isSpecialProperty = true;
            }
            else if(_loc6_[0][_loc5_] == undefined)
            {
               method_31(class_2.method_14(-1820302771) + _loc5_ + class_2.method_14(-1820302610) + String(_loc6_[0]) + class_2.method_14(-1820302487));
            }
         }
         for(_loc5_ in _loc12_)
         {
            if(_loc10_[_loc5_] != undefined)
            {
               _loc10_[_loc5_].modifierParameters = _loc12_[_loc5_].modifierParameters;
               _loc10_[_loc5_].modifierFunction = _loc12_[_loc5_].modifierFunction;
            }
         }
         if(typeof _loc7_.transition == "string")
         {
            _loc20_ = _loc7_.transition.toLowerCase();
            _loc13_ = var_43[_loc20_];
         }
         else
         {
            _loc13_ = _loc7_.transition;
         }
         if(!Boolean(_loc13_))
         {
            _loc13_ = var_43[class_2.method_14(-1820302713)];
         }
         _loc3_ = 0;
         while(_loc3_ < _loc6_.length)
         {
            _loc14_ = new Object();
            for(_loc5_ in _loc10_)
            {
               _loc14_[_loc5_] = new class_14(_loc10_[_loc5_].valueStart,_loc10_[_loc5_].valueComplete,_loc10_[_loc5_].valueComplete,_loc10_[_loc5_].arrayIndex,{},_loc10_[_loc5_].isSpecialProperty,_loc10_[_loc5_].modifierFunction,_loc10_[_loc5_].modifierParameters);
            }
            if(_loc7_.useFrames == true)
            {
               _loc15_ = new class_18(_loc6_[_loc3_],var_33 + _loc9_ / var_32,var_33 + (_loc9_ + _loc8_) / var_32,true,_loc13_,_loc7_.transitionParams);
            }
            else
            {
               _loc15_ = new class_18(_loc6_[_loc3_],_currentTime + _loc9_ * 1000 / var_32,_currentTime + (_loc9_ * 1000 + _loc8_ * 1000) / var_32,false,_loc13_,_loc7_.transitionParams);
            }
            _loc15_.properties = _loc14_;
            _loc15_.onStart = _loc7_.onStart;
            _loc15_.onUpdate = _loc7_.onUpdate;
            _loc15_.onComplete = _loc7_.onComplete;
            _loc15_.onOverwrite = _loc7_.onOverwrite;
            _loc15_.onError = _loc7_.onError;
            _loc15_.onStartParams = _loc7_.onStartParams;
            _loc15_.onUpdateParams = _loc7_.onUpdateParams;
            _loc15_.onCompleteParams = _loc7_.onCompleteParams;
            _loc15_.onOverwriteParams = _loc7_.onOverwriteParams;
            _loc15_.onStartScope = _loc7_.onStartScope;
            _loc15_.onUpdateScope = _loc7_.onUpdateScope;
            _loc15_.onCompleteScope = _loc7_.onCompleteScope;
            _loc15_.onOverwriteScope = _loc7_.onOverwriteScope;
            _loc15_.onErrorScope = _loc7_.onErrorScope;
            _loc15_.rounded = _loc7_.rounded;
            _loc15_.skipUpdates = _loc7_.skipUpdates;
            if(_loc7_.overwrite == undefined?Boolean(var_45):Boolean(_loc7_.overwrite))
            {
               method_61(_loc15_.scope,_loc15_.properties,_loc15_.timeStart,_loc15_.timeComplete);
            }
            var_29.push(_loc15_);
            if(_loc8_ == 0 && _loc9_ == 0)
            {
               _loc16_ = var_29.length - 1;
               method_32(_loc16_);
               method_27(_loc16_);
            }
            _loc3_++;
         }
         return true;
      }
      
      public static function method_26(param1:String, param2:Function) : void
      {
         if(!var_37)
         {
            init();
         }
         var_43[param1] = param2;
      }
      
      public static function method_31(param1:String) : void
      {
         trace(class_2.method_14(-1820302836) + param1);
      }
      
      private static function method_33(param1:Function, param2:Object, param3:Array) : Boolean
      {
         var _loc5_:int = 0;
         var _loc6_:* = null;
         var _loc7_:int = 0;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc4_:Boolean = false;
         if(!Boolean(var_29))
         {
            return false;
         }
         _loc5_ = 0;
         while(_loc5_ < var_29.length)
         {
            if(var_29[_loc5_] && var_29[_loc5_].scope == param2)
            {
               if(param3.length == 0)
               {
                  param1(_loc5_);
                  _loc4_ = true;
               }
               else
               {
                  _loc6_ = new Array();
                  _loc7_ = 0;
                  while(_loc7_ < param3.length)
                  {
                     if(Boolean(var_29[_loc5_].properties[param3[_loc7_]]))
                     {
                        _loc6_.push(param3[_loc7_]);
                     }
                     _loc7_++;
                  }
                  if(_loc6_.length > 0)
                  {
                     _loc8_ = uint(class_19.method_52(var_29[_loc5_].properties));
                     if(_loc8_ == _loc6_.length)
                     {
                        param1(_loc5_);
                        _loc4_ = true;
                     }
                     else
                     {
                        _loc9_ = uint(method_59(_loc5_,_loc6_));
                        param1(_loc9_);
                        _loc4_ = true;
                     }
                  }
               }
            }
            _loc5_++;
         }
         return _loc4_;
      }
      
      public static function method_87(param1:Object) : Array
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         if(!Boolean(var_29))
         {
            return [];
         }
         var _loc4_:Array = new Array();
         _loc2_ = 0;
         while(_loc2_ < var_29.length)
         {
            if(Boolean(var_29[_loc2_]) && var_29[_loc2_].scope == param1)
            {
               for(_loc3_ in var_29[_loc2_].properties)
               {
                  _loc4_.push(_loc3_);
               }
            }
            _loc2_++;
         }
         return _loc4_;
      }
      
      public static function method_91(param1:Object) : Boolean
      {
         var _loc2_:int = 0;
         if(!Boolean(var_29))
         {
            return false;
         }
         _loc2_ = 0;
         while(_loc2_ < var_29.length)
         {
            if(Boolean(var_29[_loc2_]) && var_29[_loc2_].scope == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public static function method_51(param1:Number) : Boolean
      {
         var _loc2_:class_18 = var_29[param1];
         if(_loc2_ == null || _loc2_.isPaused)
         {
            return false;
         }
         _loc2_.timePaused = method_29(_loc2_);
         _loc2_.isPaused = true;
         return true;
      }
      
      public static function method_29(param1:Object) : Number
      {
         return !!param1.useFrames?Number(var_33):Number(_currentTime);
      }
      
      public static function method_99(param1:Object) : Number
      {
         var _loc2_:int = 0;
         if(!Boolean(var_29))
         {
            return 0;
         }
         var _loc3_:* = 0;
         _loc2_ = 0;
         while(_loc2_ < var_29.length)
         {
            if(Boolean(var_29[_loc2_]) && var_29[_loc2_].scope == param1)
            {
               _loc3_ = Number(_loc3_ + class_19.method_52(var_29[_loc2_].properties));
            }
            _loc2_++;
         }
         return _loc3_;
      }
      
      private static function method_58() : void
      {
         var_39 = false;
         var_29 = null;
         _currentTime = 0;
         var_33 = 0;
         var_40.removeEventListener(Event.ENTER_FRAME,class_12.method_54);
         var_40 = null;
      }
      
      public static function method_61(param1:Object, param2:Object, param3:Number, param4:Number) : Boolean
      {
         var var_54:Boolean = false;
         var var_49:uint = 0;
         var var_48:String = null;
         var var_46:Object = null;
         var var_61:Object = param1;
         var var_63:Object = param2;
         var var_53:Number = param3;
         var var_69:Number = param4;
         var var_55:Boolean = false;
         var var_64:uint = var_29.length;
         var_49 = 0;
         while(var_49 < var_64)
         {
            if(Boolean(var_29[var_49]) && var_61 == var_29[var_49].scope)
            {
               if(var_69 > var_29[var_49].timeStart && var_53 < var_29[var_49].timeComplete)
               {
                  var_54 = false;
                  for(var_48 in var_29[var_49].properties)
                  {
                     if(Boolean(var_63[var_48]))
                     {
                        if(Boolean(var_29[var_49].onOverwrite))
                        {
                           var_46 = !!Boolean(var_29[var_49].onOverwriteScope)?var_29[var_49].onOverwriteScope:var_29[var_49].scope;
                           try
                           {
                              var_29[var_49].onOverwrite.apply(var_46,var_29[var_49].onOverwriteParams);
                           }
                           catch(e:Error)
                           {
                              method_28(var_29[var_49],e,"onOverwrite");
                           }
                        }
                        var_29[var_49].properties[var_48] = undefined;
                        delete var_29[var_49].properties[var_48];
                        var_54 = true;
                        var_55 = true;
                     }
                  }
                  if(var_54)
                  {
                     if(class_19.method_52(var_29[var_49].properties) == 0)
                     {
                        method_27(var_49);
                     }
                  }
               }
            }
            var_49++;
         }
         return var_55;
      }
      
      public static function method_98(param1:String, param2:Function, param3:Array = null) : void
      {
         if(!var_37)
         {
            init();
         }
         var _loc4_:class_20 = new class_20(param2,param3);
         var_35[param1] = _loc4_;
      }
      
      public static function method_27(param1:Number, param2:Boolean = false) : Boolean
      {
         var_29[param1] = null;
         if(param2)
         {
            var_29.splice(param1,1);
         }
         return true;
      }
      
      public static function method_89(param1:Object, ... rest) : Boolean
      {
         var _loc4_:int = 0;
         var _loc3_:Array = new Array();
         _loc4_ = 0;
         while(_loc4_ < rest.length)
         {
            if(typeof rest[_loc4_] == "string" && _loc3_.indexOf(rest[_loc4_]) == -1)
            {
               _loc3_.push(rest[_loc4_]);
            }
            _loc4_++;
         }
         return method_33(method_47,param1,_loc3_);
      }
      
      public static function method_101(param1:Object, ... rest) : Boolean
      {
         var _loc4_:int = 0;
         var _loc3_:Array = new Array();
         _loc4_ = 0;
         while(_loc4_ < rest.length)
         {
            if(typeof rest[_loc4_] == "string" && _loc3_.indexOf(rest[_loc4_]) == -1)
            {
               _loc3_.push(rest[_loc4_]);
            }
            _loc4_++;
         }
         return method_33(method_51,param1,_loc3_);
      }
   }
}
