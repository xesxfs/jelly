package zpp_nape.geom
{
   import zpp_nape.util.class_263;
   
   public final class ZPP_SimpleEvent
   {
      
      public static var var_72:ZPP_SimpleEvent = null;
       
      
      public var vertex:ZPP_SimpleVert;
      
      public var type:int;
      
      public var segment2:ZPP_SimpleSeg;
      
      public var var_260:ZPP_SimpleSeg;
      
      public var var_138:class_263;
      
      public var next:ZPP_SimpleEvent;
      
      public function ZPP_SimpleEvent()
      {
         next = null;
         var_138 = null;
         segment2 = null;
         var_260 = null;
         vertex = null;
         type = 0;
      }
      
      public static function swap_nodes(param1:ZPP_SimpleEvent, param2:ZPP_SimpleEvent) : void
      {
         var _loc3_:class_263 = param1.var_138;
         param1.var_138 = param2.var_138;
         param2.var_138 = _loc3_;
      }
      
      public static function less_xy(param1:ZPP_SimpleEvent, param2:ZPP_SimpleEvent) : Boolean
      {
         if(param1.vertex.x < param2.vertex.x)
         {
            return true;
         }
         if(param1.vertex.x > param2.vertex.x)
         {
            return false;
         }
         if(param1.vertex.y < param2.vertex.y)
         {
            return true;
         }
         if(param1.vertex.y > param2.vertex.y)
         {
            return false;
         }
         return param1.type < param2.type;
      }
      
      public static function method_65(param1:ZPP_SimpleVert) : ZPP_SimpleEvent
      {
         var _loc2_:* = null as ZPP_SimpleEvent;
         if(ZPP_SimpleEvent.var_72 == null)
         {
            _loc2_ = new ZPP_SimpleEvent();
         }
         else
         {
            _loc2_ = ZPP_SimpleEvent.var_72;
            ZPP_SimpleEvent.var_72 = _loc2_.next;
            _loc2_.next = null;
         }
         null;
         _loc2_.vertex = param1;
         return _loc2_;
      }
   }
}
