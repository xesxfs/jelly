package package_12
{
   import flash.events.Event;
   import package_16.class_62;
   
   public final class class_50 extends Event
   {
      
      public static var var_562:String = class_2.method_14(-1820302764);
      
      public static var var_364:String = class_2.method_14(-1820302650);
      
      public static var var_490:String = "particleAdded";
      
      public static var var_565:String = "particleRemoved";
      
      public static var var_935:String = class_2.method_14(-1820302507);
      
      public static var var_925:String = class_2.method_14(-1820302753);
      
      public static var var_558:String = class_2.method_14(-1820302839);
       
      
      public var var_438:class_62;
      
      public var var_937;
      
      public function class_50(param1:String, param2:class_62 = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.var_438 = param2;
      }
      
      override public function clone() : Event
      {
         var _loc1_:class_50 = new class_50(type,this.var_438,bubbles,cancelable);
         _loc1_.var_937 = this.var_937;
         return _loc1_;
      }
   }
}
