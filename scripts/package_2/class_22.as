package package_2
{
   import flash.display.Stage;
   import flash.events.KeyboardEvent;
   import package_15.class_59;
   
   public final class class_22 implements class_21
   {
       
      
      private var var_651:class_21;
      
      private var var_845:uint;
      
      private var var_830:Boolean;
      
      private var var_875:Boolean;
      
      private var _stage:Stage;
      
      public function class_22(param1:class_21 = null, param2:uint = 0, param3:Stage = null)
      {
         super();
         this.var_875 = false;
         this.var_651 = param1;
         this.var_845 = param2;
         this.var_830 = false;
         this._stage = param3;
         this.method_469();
      }
      
      private final function method_469() : void
      {
         if(this.stage)
         {
            this.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.method_613,false,0,true);
            this.stage.addEventListener(KeyboardEvent.KEY_UP,this.method_692,false,0,true);
         }
      }
      
      private final function method_613(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == this.var_845)
         {
            this.var_830 = true;
         }
      }
      
      private final function method_692(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == this.var_845)
         {
            this.var_830 = false;
         }
      }
      
      public function get counter() : class_21
      {
         return this.var_651;
      }
      
      public function set counter(param1:class_21) : void
      {
         this.var_651 = param1;
      }
      
      public function get keyCode() : uint
      {
         return this.var_845;
      }
      
      public function set keyCode(param1:uint) : void
      {
         this.var_845 = param1;
      }
      
      public function get stage() : Stage
      {
         return this._stage;
      }
      
      public function set stage(param1:Stage) : void
      {
         this._stage = param1;
         this.method_469();
      }
      
      public function method_199(param1:class_59) : uint
      {
         if(this.var_830 && !this.var_875)
         {
            return this.var_651.method_199(param1);
         }
         this.var_651.method_199(param1);
         return 0;
      }
      
      public function method_209(param1:class_59, param2:Number) : uint
      {
         if(this.var_830 && !this.var_875)
         {
            return this.var_651.method_209(param1,param2);
         }
         return 0;
      }
      
      public function stop() : void
      {
         this.var_875 = true;
      }
      
      public function resume() : void
      {
         this.var_875 = false;
      }
      
      public function get complete() : Boolean
      {
         return this.var_651.complete;
      }
      
      public function get running() : Boolean
      {
         return this.var_651.running;
      }
   }
}
