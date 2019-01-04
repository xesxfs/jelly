package zpp_nape.callbacks
{
   import package_34.class_247;
   import package_36.class_284;
   import zpp_nape.space.ZPP_Space;
   
   public class ZPP_Listener
   {
      
      public static var var_406:Array = null;
      
      public static var events:Array = null;
       
      
      public var type:int;
      
      public var space:ZPP_Space;
      
      public var name_17:int;
      
      public var outer:class_247;
      
      public var var_656:ZPP_InteractionListener;
      
      public var id:int;
      
      public var event:int;
      
      public var name_44:ZPP_ConstraintListener;
      
      public var body:ZPP_BodyListener;
      
      public function ZPP_Listener()
      {
         space = null;
         var_656 = null;
         name_44 = null;
         body = null;
         name_17 = 0;
         event = 0;
         type = 0;
         id = 0;
         outer = null;
         id = int(class_284.class_247());
      }
      
      public static function method_117(param1:ZPP_Listener, param2:ZPP_Listener) : Boolean
      {
         return param1.name_17 > param2.name_17 || param1.name_17 == param2.name_17 && param1.id > param2.id;
      }
      
      public function method_353(param1:int) : void
      {
      }
      
      public function method_120() : void
      {
      }
      
      public function method_331() : void
      {
      }
      
      public function method_121() : void
      {
      }
   }
}
