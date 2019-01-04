package nape.geom
{
   import zpp_nape.util.ZPP_GeomPolyList;
   
   public final class class_271
   {
      
      public static var var_72:class_271 = null;
       
      
      public var var_106:class_271;
      
      public var zpp_inner:class_321;
      
      public var var_90:int;
      
      public var var_98:Boolean;
      
      public function class_271()
      {
         var_106 = null;
         var_98 = false;
         var_90 = 0;
         zpp_inner = null;
      }
      
      public static function method_65(param1:class_321) : class_271
      {
         var _loc2_:* = null as class_271;
         var _loc3_:* = null as class_271;
         if(class_271.var_72 == null)
         {
            ZPP_GeomPolyList.var_87 = true;
            _loc3_ = new class_271();
            ZPP_GeomPolyList.var_87 = false;
            _loc2_ = _loc3_;
         }
         else
         {
            _loc3_ = class_271.var_72;
            class_271.var_72 = _loc3_.var_106;
            _loc2_ = _loc3_;
         }
         _loc2_.var_90 = 0;
         _loc2_.zpp_inner = param1;
         _loc2_.var_98 = false;
         return _loc2_;
      }
      
      public final function next() : class_260
      {
         var_98 = false;
         var _loc1_:int = var_90;
         var_90 = var_90 + 1;
         return zpp_inner.at(_loc1_);
      }
      
      public final function hasNext() : Boolean
      {
         zpp_inner.zpp_inner.method_104();
         var _loc2_:class_321 = zpp_inner;
         _loc2_.zpp_inner.method_104();
         if(_loc2_.zpp_inner.var_86)
         {
            _loc2_.zpp_inner.var_86 = false;
            _loc2_.zpp_inner.var_89 = _loc2_.zpp_inner.name_4.length;
         }
         var _loc1_:int = _loc2_.zpp_inner.var_89;
         var_98 = true;
         if(var_90 < _loc1_)
         {
            return true;
         }
         var_106 = class_271.var_72;
         class_271.var_72 = this;
         zpp_inner = null;
         return false;
      }
   }
}
