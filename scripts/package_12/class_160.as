package package_12
{
   import flash.events.Event;
   
   public final class class_160 extends Event
   {
      
      public static var UPDATE:String = "update";
       
      
      public var time:Number;
      
      public function class_160(param1:String, param2:Number = NaN, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.time = param2;
      }
      
      override public function clone() : Event
      {
         return new class_160(type,this.time,bubbles,cancelable);
      }
   }
}
