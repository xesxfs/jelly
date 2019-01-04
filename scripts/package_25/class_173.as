package package_25
{
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flash.ui.MouseCursorData;
   
   public final class class_173 extends Sprite
   {
       
      
      private var var_1183:MouseCursorData;
      
      private var var_337:Array;
      
      private var var_859:String;
      
      private var var_547:String;
      
      private var var_888:Class;
      
      private var var_1044:Boolean = false;
      
      private var _stage;
      
      public function class_173()
      {
         this.var_1183 = new MouseCursorData();
         this.var_337 = [];
         super();
      }
      
      public final function method_509(param1:Class, param2:String = null, param3:Point = null, param4:Number = NaN) : void
      {
         var _loc5_:class_187 = new class_187();
         _loc5_.method_581(param1,param2,param3,param4);
         this.var_337.push(_loc5_);
      }
      
      public final function method_259(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(param1 != null)
         {
            _loc2_ = this.var_337.length;
            _loc3_ = 0;
            while(_loc3_ < _loc2_)
            {
               if(this.var_337[_loc3_].name == param1)
               {
                  Mouse.cursor = param1;
                  break;
               }
               _loc3_++;
            }
         }
      }
      
      public final function method_927(param1:String, param2:String, param3:Stage, param4:Class = null) : void
      {
         this._stage = param3;
         this.var_547 = param1;
         this.var_859 = param2;
         if(param4 == null)
         {
            this.var_888 = SimpleButton;
         }
         else
         {
            this.var_888 = param4;
         }
         if(!this.var_1044)
         {
            this.method_578();
         }
      }
      
      public final function resetButtonCursor() : void
      {
         if(this.var_1044)
         {
            this._stage.removeEventListener(MouseEvent.MOUSE_OVER,this.method_536);
         }
         if(this.var_547 != "")
         {
            this.method_259(this.var_547);
         }
         this.var_547 = "";
         this.var_859 = "";
         this.var_888 = null;
         this._stage = null;
      }
      
      public final function removeCursor(param1:String) : void
      {
         Mouse.unregisterCursor(param1);
         var _loc2_:int = this.var_337.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            if(this.var_337[_loc3_].name == param1)
            {
               this.var_337[_loc3_] == null;
               this.var_337.splice(_loc3_,1);
               break;
            }
            _loc3_++;
         }
         if(param1 == this.var_547)
         {
            this.var_547 = "";
         }
         if(param1 == this.var_859)
         {
            this.resetButtonCursor();
         }
      }
      
      public final function method_761(param1:int) : void
      {
         Mouse.unregisterCursor(this.var_337[param1].name);
         if(this.var_337[param1].name == this.var_547)
         {
            this.var_547 = "";
         }
         if(this.var_337[param1].name == this.var_859)
         {
            this.resetButtonCursor();
         }
         this.var_337[param1] = null;
         this.var_337.splice(param1,1);
      }
      
      public final function removeAllCursors() : void
      {
         var _loc1_:int = this.var_337.length;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            Mouse.unregisterCursor(this.var_337[_loc2_].name);
            this.var_337[_loc2_] == null;
            _loc2_++;
         }
         this.resetButtonCursor();
         MouseCursor.AUTO;
         this.var_337 = null;
         this.var_337 = [];
      }
      
      private final function method_578() : void
      {
         this._stage.addEventListener(MouseEvent.MOUSE_OVER,this.method_536);
         this.var_1044 = true;
      }
      
      private final function method_536(param1:MouseEvent) : void
      {
         if(param1.target is this.var_888)
         {
            this.method_259(this.var_859);
         }
         else if(this.var_547 != "")
         {
            this.method_259(this.var_547);
         }
         else
         {
            Mouse.cursor = "arrow";
         }
      }
      
      public function get method_484() : String
      {
         return Mouse.cursor;
      }
      
      public function get method_901() : int
      {
         return this.var_337.length;
      }
   }
}
