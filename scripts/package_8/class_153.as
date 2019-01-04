package package_8
{
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import package_12.class_50;
   import package_15.class_59;
   import package_16.class_62;
   
   public final class class_153 extends class_32
   {
       
      
      private var var_813:Function;
      
      private var var_749:Function;
      
      private var var_797:Function;
      
      private var var_773:Function;
      
      private var var_778:Function;
      
      public function class_153()
      {
         super();
      }
      
      public function get method_548() : Function
      {
         return this.var_813;
      }
      
      public function set method_548(param1:Function) : void
      {
         this.var_813 = param1;
      }
      
      public function get method_721() : Function
      {
         return this.var_749;
      }
      
      public function set method_721(param1:Function) : void
      {
         this.var_749 = param1;
      }
      
      public function get method_652() : Function
      {
         return this.var_797;
      }
      
      public function set method_652(param1:Function) : void
      {
         this.var_797 = param1;
      }
      
      public function get method_566() : Function
      {
         return this.var_773;
      }
      
      public function set method_566(param1:Function) : void
      {
         this.var_773 = param1;
      }
      
      public function get method_569() : Function
      {
         return this.var_778;
      }
      
      public function set method_569(param1:Function) : void
      {
         this.var_778 = param1;
      }
      
      override public function method_126(param1:class_59) : void
      {
         param1.addEventListener(class_50.var_364,this.method_538,false,0,true);
      }
      
      override public function method_163(param1:class_59) : void
      {
         param1.removeEventListener(class_50.var_364,this.method_538);
      }
      
      private final function method_538(param1:class_50) : void
      {
         var _loc2_:* = null;
         if(param1.var_438.image is IEventDispatcher)
         {
            _loc2_ = IEventDispatcher(param1.var_438.image);
            if(this.var_813 != null)
            {
               _loc2_.removeEventListener(MouseEvent.MOUSE_OVER,this.var_813);
            }
            if(this.var_749 != null)
            {
               _loc2_.removeEventListener(MouseEvent.MOUSE_OVER,this.var_749);
            }
            if(this.var_797 != null)
            {
               _loc2_.removeEventListener(MouseEvent.MOUSE_OVER,this.var_797);
            }
            if(this.var_773 != null)
            {
               _loc2_.removeEventListener(MouseEvent.MOUSE_OVER,this.var_773);
            }
            if(this.var_778 != null)
            {
               _loc2_.removeEventListener(MouseEvent.MOUSE_OVER,this.var_778);
            }
         }
      }
      
      override public function initialize(param1:class_59, param2:class_62) : void
      {
         var _loc3_:* = null;
         if(param2.image is IEventDispatcher)
         {
            _loc3_ = IEventDispatcher(param2.image);
            if(this.var_813 != null)
            {
               _loc3_.addEventListener(MouseEvent.MOUSE_OVER,this.var_813,false,0,true);
            }
            if(this.var_749 != null)
            {
               _loc3_.addEventListener(MouseEvent.MOUSE_OVER,this.var_749,false,0,true);
            }
            if(this.var_797 != null)
            {
               _loc3_.addEventListener(MouseEvent.MOUSE_OVER,this.var_797,false,0,true);
            }
            if(this.var_773 != null)
            {
               _loc3_.addEventListener(MouseEvent.MOUSE_OVER,this.var_773,false,0,true);
            }
            if(this.var_778 != null)
            {
               _loc3_.addEventListener(MouseEvent.MOUSE_OVER,this.var_778,false,0,true);
            }
         }
      }
   }
}
