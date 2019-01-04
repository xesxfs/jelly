package package_6
{
   import flash.display.Stage;
   import flash.events.KeyboardEvent;
   import package_15.class_59;
   import package_16.class_62;
   
   public final class class_34 extends class_29
   {
       
      
      private var var_635:class_28;
      
      private var var_845:uint;
      
      private var var_830:Boolean;
      
      private var _stage:Stage;
      
      public function class_34(param1:class_28 = null, param2:uint = 0, param3:Stage = null)
      {
         super();
         this.var_635 = param1;
         this.var_845 = param2;
         this.var_830 = false;
         this._stage = param3;
         this.method_469();
      }
      
      private final function method_469() : void
      {
         if(this._stage)
         {
            this._stage.addEventListener(KeyboardEvent.KEY_DOWN,this.method_613,false,0,true);
            this._stage.addEventListener(KeyboardEvent.KEY_UP,this.method_692,false,0,true);
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
      
      public function get stage() : Stage
      {
         return this._stage;
      }
      
      public function set stage(param1:Stage) : void
      {
         this._stage = param1;
         this.method_469();
      }
      
      public function get action() : class_28
      {
         return this.var_635;
      }
      
      public function set action(param1:class_28) : void
      {
         this.var_635 = param1;
      }
      
      public function get keyCode() : uint
      {
         return this.var_845;
      }
      
      public function set keyCode(param1:uint) : void
      {
         this.var_845 = param1;
      }
      
      override public function get priority() : int
      {
         return this.var_635.priority;
      }
      
      override public function set priority(param1:int) : void
      {
         this.var_635.priority = param1;
      }
      
      override public function method_126(param1:class_59) : void
      {
         this.var_635.method_126(param1);
      }
      
      override public function method_163(param1:class_59) : void
      {
         this.var_635.method_163(param1);
      }
      
      override public function update(param1:class_59, param2:class_62, param3:Number) : void
      {
         if(this.var_830)
         {
            this.var_635.update(param1,param2,param3);
         }
      }
   }
}
