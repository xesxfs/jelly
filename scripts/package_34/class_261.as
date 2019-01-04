package package_34
{
   import zpp_nape.util.ZPP_ListenerList;
   
   public final class class_261
   {
      
      public static var var_72:class_261 = null;
       
      
      public var var_106:class_261;
      
      public var zpp_inner:class_224;
      
      public var var_90:int;
      
      public var var_98:Boolean;
      
      public function class_261()
      {
         var_106 = null;
         var_98 = false;
         var_90 = 0;
         zpp_inner = null;
      }
      
      public static function method_65(param1:class_224) : class_261
      {
         var _loc2_:* = null as class_261;
         var _loc3_:* = null as class_261;
         if(class_261.var_72 == null)
         {
            ZPP_ListenerList.var_87 = true;
            _loc3_ = new class_261();
            ZPP_ListenerList.var_87 = false;
            _loc2_ = _loc3_;
         }
         else
         {
            _loc3_ = class_261.var_72;
            class_261.var_72 = _loc3_.var_106;
            _loc2_ = _loc3_;
         }
         _loc2_.var_90 = 0;
         _loc2_.zpp_inner = param1;
         _loc2_.var_98 = false;
         return _loc2_;
      }
      
      public final function next() : class_247
      {
         var_98 = false;
         var _loc1_:int = var_90;
         var_90 = var_90 + 1;
         return zpp_inner.at(_loc1_);
      }
      
      public final function hasNext() : Boolean
      {
         zpp_inner.zpp_inner.method_104();
         var _loc2_:class_224 = zpp_inner;
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
         var_106 = class_261.var_72;
         class_261.var_72 = this;
         zpp_inner = null;
         return false;
      }
   }
}
