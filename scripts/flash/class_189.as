package flash
{
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.getQualifiedClassName;
   import flash.utils.setTimeout;
   
   public dynamic class class_189 extends MovieClip
   {
      
      public static var var_359:TextField;
      
      public static var var_583:Array;
      
      public static var var_771:Error;
      
      public static var var_1151:Boolean = false;
       
      
      public function class_189()
      {
         super();
      }
      
      public static function method_784(param1:Object) : String
      {
         var _loc5_:* = null;
         if(param1.params == null)
         {
            return param1.tag;
         }
         var _loc2_:* = [];
         var _loc3_:int = 0;
         var _loc4_:Array = param1.params;
         while(_loc3_ < int(_loc4_.length))
         {
            _loc5_ = _loc4_[_loc3_];
            _loc3_++;
            _loc2_.push(class_189.method_254(_loc5_,""));
         }
         return param1.tag + "(" + _loc2_.join(",") + ")";
      }
      
      public static function method_817(param1:*, param2:*) : Boolean
      {
         try
         {
            if(param2 == Dynamic)
            {
               return true;
            }
            return param1 is param2;
         }
         catch(_loc4_:*)
         {
         }
         return false;
      }
      
      public static function method_751() : void
      {
         if(class_189.var_359 == null)
         {
            return;
         }
         class_189.var_359.parent.removeChild(class_189.var_359);
         class_189.var_359 = null;
         class_189.var_583 = null;
      }
      
      public static function method_744(param1:uint) : void
      {
         var _loc2_:TextField = class_189.method_524();
         _loc2_.textColor = param1;
         _loc2_.filters = [];
      }
      
      public static function method_524() : TextField
      {
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         var _loc4_:* = null as TextFormat;
         var _loc1_:MovieClip = class_211.current;
         if(class_189.var_359 == null)
         {
            class_189.var_359 = new TextField();
            _loc2_ = 16777215;
            _loc3_ = 0;
            if(_loc1_.stage != null)
            {
               _loc3_ = _loc1_.stage.color;
               _loc2_ = 16777215 - _loc3_;
            }
            class_189.var_359.textColor = _loc2_;
            class_189.var_359.filters = [new GlowFilter(_loc3_,1,2,2,20)];
            _loc4_ = class_189.var_359.getTextFormat();
            _loc4_.font = class_2.method_14(-1820302722);
            class_189.var_359.defaultTextFormat = _loc4_;
            class_189.var_359.selectable = false;
            if(_loc1_.stage == null)
            {
               class_189.var_359.width = 800;
            }
            else
            {
               class_189.var_359.width = _loc1_.stage.stageWidth;
            }
            class_189.var_359.autoSize = TextFieldAutoSize.LEFT;
            class_189.var_359.mouseEnabled = false;
         }
         if(_loc1_.stage == null)
         {
            _loc1_.addChild(class_189.var_359);
         }
         else
         {
            _loc1_.stage.addChild(class_189.var_359);
         }
         return class_189.var_359;
      }
      
      public static function method_884(param1:*, param2:Object) : void
      {
         var _loc4_:* = null as String;
         var _loc6_:int = 0;
         var _loc7_:* = null as Array;
         var _loc8_:* = null;
         var _loc3_:TextField = class_189.method_524();
         if(param2 == null)
         {
            _loc4_ = class_2.method_14(-1820302565);
         }
         else
         {
            _loc4_ = param2.fileName + ":" + int(param2.lineNumber);
         }
         if(class_189.var_583 == null)
         {
            class_189.var_583 = [];
         }
         var _loc5_:String = _loc4_ + class_2.method_14(-1820302503) + class_189.method_254(param1,"");
         if(param2 != null && param2.customParams != null)
         {
            _loc6_ = 0;
            _loc7_ = param2.customParams;
            while(_loc6_ < int(_loc7_.length))
            {
               _loc8_ = _loc7_[_loc6_];
               _loc6_++;
               _loc5_ = _loc5_ + ("," + class_189.method_254(_loc8_,""));
            }
         }
         class_189.var_583 = class_189.var_583.concat(_loc5_.split("\n"));
         _loc3_.text = class_189.var_583.join("\n");
         var _loc9_:Stage = class_211.current.stage;
         if(_loc9_ == null)
         {
            return;
         }
         while(int(class_189.var_583.length) > 1 && _loc3_.height > _loc9_.stageHeight)
         {
            class_189.var_583.shift();
            _loc3_.text = class_189.var_583.join("\n");
         }
      }
      
      public static function method_254(param1:*, param2:String) : String
      {
         var _loc5_:* = null as String;
         var _loc6_:* = null as Array;
         var _loc7_:* = null as Array;
         var _loc8_:int = 0;
         var _loc10_:* = null as String;
         var _loc11_:Boolean = false;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:* = null as String;
         var _loc4_:String = getQualifiedClassName(param1);
         _loc5_ = _loc4_;
         if(_loc4_ == class_2.method_14(-1820302522))
         {
            _loc8_ = 0;
            _loc7_ = [];
            addr90:
            if(§§hasnext(param1,_loc8_))
            {
               _loc7_.push(§§nextname(_loc8_,_loc9_));
               §§goto(addr90);
            }
            _loc6_ = _loc7_;
            _loc10_ = "{";
            _loc11_ = true;
            _loc8_ = 0;
            _loc12_ = _loc6_.length;
            addr253:
            if(_loc8_ < _loc12_)
            {
               _loc8_++;
               _loc13_ = _loc8_;
               _loc14_ = _loc6_[_loc13_];
               if(_loc6_[_loc13_] == "toString")
               {
                  try
                  {
                     return param1.toString();
                  }
                  catch(_loc9_:*)
                  {
                  }
               }
               if(_loc11_)
               {
                  _loc11_ = false;
                  addr203:
                  _loc10_ = _loc10_ + (" " + _loc14_ + class_2.method_14(-1820302818) + class_189.method_254(param1[_loc14_],param2));
                  §§goto(addr253);
               }
               _loc10_ = _loc10_ + ",";
               §§goto(addr203);
            }
            if(!_loc11_)
            {
               _loc10_ = _loc10_ + " ";
            }
            _loc10_ = _loc10_ + "}";
            return _loc10_;
         }
         if(_loc5_ == class_2.method_14(-1820302635))
         {
            if(param1 == Array)
            {
               return class_2.method_14(-1820302407);
            }
            _loc10_ = "[";
            _loc11_ = true;
            _loc6_ = param1;
            _loc8_ = 0;
            _loc12_ = _loc6_.length;
            addr422:
            if(_loc8_ < _loc12_)
            {
               _loc8_++;
               _loc13_ = _loc8_;
               if(_loc11_)
               {
                  _loc11_ = false;
                  addr404:
                  _loc10_ = _loc10_ + class_189.method_254(_loc6_[_loc13_],param2);
                  §§goto(addr422);
               }
               _loc10_ = _loc10_ + ",";
               §§goto(addr404);
            }
            return _loc10_ + "]";
         }
         _loc5_ = typeof param1;
         _loc10_ = typeof param1;
         if(typeof param1 == class_2.method_14(-1820302411))
         {
            return class_2.method_14(-1820302803);
         }
         if(_loc10_ == class_2.method_14(-1820302589))
         {
            return class_2.method_14(-1820302697);
         }
         return new String(param1);
      }
      
      public static function method_777(param1:String) : String
      {
         return param1;
      }
      
      public function start() : void
      {
         var _loc2_:MovieClip = class_211.current;
         try
         {
            if(_loc2_ == this && _loc2_.stage != null && _loc2_.stage.align == "")
            {
               _loc2_.stage.align = class_2.method_14(-1820302786);
            }
         }
         catch(_loc3_:*)
         {
         }
         if(_loc2_.stage == null)
         {
            _loc2_.addEventListener(Event.ADDED_TO_STAGE,method_329);
         }
         else if(_loc2_.stage.stageWidth == 0 || _loc2_.stage.stageHeight == 0)
         {
            setTimeout(start,1);
         }
         else
         {
            init();
         }
      }
      
      public function init() : void
      {
         class_189.var_771 = new Error();
         throw class_2.method_14(-1820302536);
      }
      
      public function method_329(param1:*) : void
      {
         class_211.current.removeEventListener(Event.ADDED_TO_STAGE,method_329);
         start();
      }
   }
}
