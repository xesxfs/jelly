package package_28
{
   import flash.events.Event;
   
   public final class class_208 extends Event
   {
       
      
      public var var_1133:String;
      
      public function class_208(param1:String, param2:String)
      {
         this.var_1133 = param2;
         super(param1,false,false);
      }
      
      public function get msg() : String
      {
         return this.var_1133;
      }
   }
}
