package zpp_nape.geom
{
   import package_36.class_284;
   import zpp_nape.util.ZPP_Set_ZPP_SimpleSeg;
   import zpp_nape.util.ZPP_Set_ZPP_SimpleVert;
   
   public final class ZPP_SimpleSeg
   {
      
      public static var var_72:ZPP_SimpleSeg = null;
       
      
      public var vertices:ZPP_Set_ZPP_SimpleVert;
      
      public var right:ZPP_SimpleVert;
      
      public var var_75:ZPP_SimpleSeg;
      
      public var var_138:ZPP_Set_ZPP_SimpleSeg;
      
      public var next:ZPP_SimpleSeg;
      
      public var left:ZPP_SimpleVert;
      
      public var id:int;
      
      public function ZPP_SimpleSeg()
      {
         var_138 = null;
         var_75 = null;
         next = null;
         id = 0;
         vertices = null;
         right = null;
         left = null;
         id = int(class_284.ZPP_SimpleSeg());
         if(ZPP_Set_ZPP_SimpleVert.var_72 == null)
         {
            vertices = new ZPP_Set_ZPP_SimpleVert();
         }
         else
         {
            vertices = ZPP_Set_ZPP_SimpleVert.var_72;
            ZPP_Set_ZPP_SimpleVert.var_72 = vertices.next;
            vertices.next = null;
         }
         null;
         ;
         vertices.lt = ZPP_SimpleSeg.less_xy;
      }
      
      public static function method_65(param1:ZPP_SimpleVert, param2:ZPP_SimpleVert) : ZPP_SimpleSeg
      {
         var _loc3_:* = null as ZPP_SimpleSeg;
         if(ZPP_SimpleSeg.var_72 == null)
         {
            _loc3_ = new ZPP_SimpleSeg();
         }
         else
         {
            _loc3_ = ZPP_SimpleSeg.var_72;
            ZPP_SimpleSeg.var_72 = _loc3_.next;
            _loc3_.next = null;
         }
         null;
         _loc3_.left = param1;
         _loc3_.right = param2;
         _loc3_.vertices.insert(param1);
         _loc3_.vertices.insert(param2);
         return _loc3_;
      }
      
      public static function less_xy(param1:ZPP_SimpleVert, param2:ZPP_SimpleVert) : Boolean
      {
         return param1.x < param2.x || param1.x == param2.x && param1.y < param2.y;
      }
   }
}
