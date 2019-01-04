package zpp_nape.geom
{
   import package_36.class_284;
   import zpp_nape.util.ZPP_Set_ZPP_SimpleVert;
   
   public final class ZPP_SimpleVert
   {
      
      public static var var_72:ZPP_SimpleVert = null;
       
      
      public var y:Number;
      
      public var x:Number;
      
      public var var_138:ZPP_Set_ZPP_SimpleVert;
      
      public var next:ZPP_SimpleVert;
      
      public var var_180:ZPP_Set_ZPP_SimpleVert;
      
      public var id:int;
      
      public var var_154:Boolean;
      
      public function ZPP_SimpleVert()
      {
         var_138 = null;
         next = null;
         id = 0;
         var_180 = null;
         y = 0;
         x = 0;
         var_154 = false;
         id = int(class_284.ZPP_SimpleVert());
         if(ZPP_Set_ZPP_SimpleVert.var_72 == null)
         {
            var_180 = new ZPP_Set_ZPP_SimpleVert();
         }
         else
         {
            var_180 = ZPP_Set_ZPP_SimpleVert.var_72;
            ZPP_Set_ZPP_SimpleVert.var_72 = var_180.next;
            var_180.next = null;
         }
         null;
         var_180.lt = ZPP_SimpleVert.less_xy;
      }
      
      public static function less_xy(param1:ZPP_SimpleVert, param2:ZPP_SimpleVert) : Boolean
      {
         return param1.y < param2.y || param1.y == param2.y && param1.x < param2.x;
      }
      
      public static function swap_nodes(param1:ZPP_SimpleVert, param2:ZPP_SimpleVert) : void
      {
         var _loc3_:ZPP_Set_ZPP_SimpleVert = param1.var_138;
         param1.var_138 = param2.var_138;
         param2.var_138 = _loc3_;
      }
      
      public static function method_65(param1:Number, param2:Number) : ZPP_SimpleVert
      {
         var _loc3_:* = null as ZPP_SimpleVert;
         if(ZPP_SimpleVert.var_72 == null)
         {
            _loc3_ = new ZPP_SimpleVert();
         }
         else
         {
            _loc3_ = ZPP_SimpleVert.var_72;
            ZPP_SimpleVert.var_72 = _loc3_.next;
            _loc3_.next = null;
         }
         null;
         _loc3_.x = param1;
         _loc3_.y = param2;
         return _loc3_;
      }
   }
}
