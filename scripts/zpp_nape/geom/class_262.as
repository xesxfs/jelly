package zpp_nape.geom
{
   import nape.geom.class_323;
   
   public final class class_262
   {
      
      public static var var_72:class_262 = null;
       
      
      public var start:ZPP_GeomVert;
      
      public var var_559:ZPP_GeomVert;
      
      public var outer:class_323;
      
      public var next:class_262;
      
      public var var_922:Boolean;
      
      public var name_41:Boolean;
      
      public function class_262()
      {
         next = null;
         outer = null;
         var_922 = false;
         name_41 = false;
         start = null;
         var_559 = null;
         outer = new class_323();
      }
      
      public static function method_65(param1:ZPP_GeomVert, param2:Boolean) : class_323
      {
         var _loc3_:* = null as class_262;
         if(class_262.var_72 == null)
         {
            _loc3_ = new class_262();
         }
         else
         {
            _loc3_ = class_262.var_72;
            class_262.var_72 = _loc3_.next;
            _loc3_.next = null;
         }
         null;
         _loc3_.outer.zpp_inner = _loc3_;
         _loc3_.var_559 = param1;
         _loc3_.var_922 = param2;
         _loc3_.start = param1;
         _loc3_.name_41 = param1 != null;
         return _loc3_.outer;
      }
   }
}
