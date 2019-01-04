package package_28
{
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.external.ExternalInterface;
   import flash.net.NetConnection;
   import flash.net.Responder;
   import flash.utils.Timer;
   
   public final class class_184 extends EventDispatcher
   {
      
      public static const const_39:String = "gametracker_server_error";
      
      public static const const_29:String = "gametracker_coding_error";
      
      private static var _instance:class_184 = null;
      
      private static const const_41:int = 15000;
       
      
      private var var_513:Number;
      
      private var var_477:String;
      
      private var var_1121:String = "";
      
      private var var_1123:Number = 0;
      
      private var _timer:Timer = null;
      
      private var var_1021:int = 0;
      
      private var var_1066:int = 0;
      
      private var var_795:Boolean = false;
      
      private var var_855:Boolean = false;
      
      private var var_822:Array;
      
      private var var_1019:NetConnection = null;
      
      private var var_1125:Responder = null;
      
      private var var_1108:uint;
      
      private var _isEnabled:Boolean = false;
      
      private var var_1013:int = 0;
      
      private var var_1082:int = 0;
      
      private var var_1054:String = "";
      
      private var var_967:String = "";
      
      private var var_1018:String = "";
      
      public function class_184()
      {
         this.var_822 = new Array();
         super();
         if(_instance == null)
         {
            _instance = this;
            this.method_693();
            if(this._isEnabled)
            {
               this.var_1125 = new Responder(this.method_735,this.method_670);
               this.var_1019 = new NetConnection();
               this.var_1019.connect(this.var_1054);
               this._timer = new Timer(const_41);
               this._timer.addEventListener("timer",this.method_706);
               this._timer.start();
               this.var_1108 = Math.floor(new Date().getTime() / 1000);
               this.method_196("begin_app",null,0,null,null);
            }
            return;
         }
      }
      
      public static function get method_911() : class_184
      {
         if(_instance == null)
         {
            return null;
         }
         return _instance;
      }
      
      public final function isEnabled() : Boolean
      {
         return this._isEnabled;
      }
      
      public final function method_916() : Number
      {
         return this.var_513;
      }
      
      public final function method_746() : String
      {
         return this.var_477;
      }
      
      public final function method_606(param1:Number = NaN, param2:String = null, param3:String = null) : void
      {
         this.method_220(param1,param2);
         if(this.var_795)
         {
            this.endGame(this.var_513,this.var_477,"AUTO:(this game automatically ended when new game was started)");
         }
         this.var_1021++;
         this.var_795 = true;
         this.method_196("begin_game",null,this.var_513,this.var_477,param3);
      }
      
      public final function endGame(param1:Number = NaN, param2:String = null, param3:String = null) : void
      {
         this.method_220(param1,param2);
         if(!this.var_795)
         {
            dispatchEvent(new class_208(const_29,"endGame() called before beginGame() was called!"));
         }
         else
         {
            if(this.var_855)
            {
               this.method_402(this.var_513,this.var_477,"AUTO:(this level automatically ended when game ended)");
            }
            this.method_196("end_game",null,this.var_513,this.var_477,param3);
            this.var_795 = false;
            this.method_374();
         }
      }
      
      public final function method_723(param1:int, param2:Number = NaN, param3:String = null, param4:String = null) : void
      {
         this.method_220(param2,param3);
         if(!this.var_795)
         {
            dispatchEvent(new class_208(const_29,"beginLevel() called before beginGame() was called!"));
         }
         else
         {
            if(this.var_855)
            {
               this.method_402(this.var_513,this.var_477,"AUTO:(this level automatically ended when new level was started)");
            }
            this.var_1066 = param1;
            this.var_855 = true;
            this.method_196("begin_level",null,this.var_513,this.var_477,param4);
         }
      }
      
      public final function method_402(param1:Number = NaN, param2:String = null, param3:String = null) : void
      {
         this.method_220(param1,param2);
         if(!this.var_855)
         {
            dispatchEvent(new class_208(const_29,"endLevel() called before beginLevel() was called!"));
         }
         else
         {
            this.var_855 = false;
            this.method_196("end_level",null,this.var_513,this.var_477,param3);
         }
      }
      
      public final function checkpoint(param1:Number = NaN, param2:String = null, param3:String = null) : void
      {
         this.method_220(param1,param2);
         if(!this.var_795)
         {
            dispatchEvent(new class_208(const_29,"checkpoint() called before startGame() was called!"));
         }
         else
         {
            this.method_196("checkpoint",null,this.var_513,this.var_477,param3);
         }
      }
      
      public final function alert(param1:String = null, param2:Number = NaN, param3:String = null) : void
      {
         this.method_220(param2,param3);
         this.method_196("alert",null,this.var_513,this.var_477,param1);
         this.method_374();
      }
      
      public final function method_828(param1:String = null, param2:String = "custom", param3:Number = NaN, param4:String = null) : void
      {
         this.method_220(param3,param4);
         this.method_196("custom",param2,this.var_513,this.var_477,param1);
      }
      
      private final function method_196(param1:String, param2:String, param3:Number, param4:String, param5:String) : void
      {
         var _loc6_:* = null;
         if(this._isEnabled)
         {
            _loc6_ = new Object();
            _loc6_["action"] = param1;
            _loc6_["custom_action"] = param2;
            _loc6_["session_id"] = this.var_1108;
            _loc6_["game_idx"] = this.var_1021;
            _loc6_["level"] = this.var_1066;
            _loc6_["score"] = param3;
            _loc6_["game_state"] = param4;
            _loc6_["time"] = Math.floor(new Date().getTime() / 1000);
            _loc6_["msg"] = param5;
            this.var_822.push(_loc6_);
         }
      }
      
      private final function method_374() : void
      {
         var _loc1_:* = null;
         if(this._isEnabled && this.var_822.length > 0)
         {
            _loc1_ = new Object();
            _loc1_["actions"] = this.var_822;
            _loc1_["identifier"] = this.var_1018;
            this.var_1019.call(this.var_967,this.var_1125,_loc1_);
            this.var_822 = new Array();
         }
      }
      
      private final function method_220(param1:Number, param2:String) : void
      {
         if(isNaN(param1))
         {
            param1 = this.var_1123;
         }
         else
         {
            this.var_1123 = param1;
         }
         this.var_513 = param1;
         if(param2 != null)
         {
            this.var_1121 = "lastState : " + param2;
         }
         else
         {
            param2 = this.var_1121;
         }
         this.var_477 = param2;
      }
      
      private final function method_693() : void
      {
         var _loc1_:* = null;
         this._isEnabled = false;
         this.var_1013 = 0;
         this.var_1082 = 0;
         this.var_1054 = "";
         this.var_967 = "";
         this.var_1018 = "";
         try
         {
            if(ExternalInterface.available)
            {
               _loc1_ = ExternalInterface.call("get_gametracker_info");
               this.var_1013 = _loc1_[0];
               this.var_1082 = _loc1_[1];
               this.var_1054 = _loc1_[2];
               this.var_967 = _loc1_[3];
               this.var_1018 = _loc1_[4];
               this._isEnabled = this.var_1013 == 1;
            }
            return;
         }
         catch(e:*)
         {
            return;
         }
      }
      
      private final function method_735(param1:*) : void
      {
         if(param1.toString() != "")
         {
            dispatchEvent(new class_208(const_39,param1.toString()));
         }
      }
      
      private final function method_670(param1:*) : void
      {
         dispatchEvent(new class_208(const_39,"Networking error"));
      }
      
      private final function method_706(param1:TimerEvent) : void
      {
         this.method_374();
      }
   }
}
