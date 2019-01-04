package package_34
{
   import zpp_nape.callbacks.ZPP_Listener;
   import zpp_nape.callbacks.class_273;
   
   public class class_245
   {
       
      
      public var zpp_inner:class_273;
      
      public function class_245()
      {
         zpp_inner = null;
      }
      
      public function toString() : String
      {
         return "";
      }
      
      public function get listener() : class_247
      {
         return zpp_inner.listener.outer;
      }
      
      public function get event() : class_249
      {
         return ZPP_Listener.events[zpp_inner.event];
      }
   }
}
