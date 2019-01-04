package package_26
{
   import zpp_nape.dynamics.ZPP_Contact;
   import zpp_nape.util.ZPP_ContactList;
   
   public final class class_266
   {
      
      public static var var_72:class_266 = null;
       
      
      public var var_106:class_266;
      
      public var zpp_inner:class_328;
      
      public var var_90:int;
      
      public var var_98:Boolean;
      
      public function class_266()
      {
         var_106 = null;
         var_98 = false;
         var_90 = 0;
         zpp_inner = null;
      }
      
      public static function method_65(param1:class_328) : class_266
      {
         var _loc2_:* = null as class_266;
         var _loc3_:* = null as class_266;
         if(class_266.var_72 == null)
         {
            ZPP_ContactList.var_87 = true;
            _loc3_ = new class_266();
            ZPP_ContactList.var_87 = false;
            _loc2_ = _loc3_;
         }
         else
         {
            _loc3_ = class_266.var_72;
            class_266.var_72 = _loc3_.var_106;
            _loc2_ = _loc3_;
         }
         _loc2_.var_90 = 0;
         _loc2_.zpp_inner = param1;
         _loc2_.var_98 = false;
         return _loc2_;
      }
      
      public final function next() : class_329
      {
         var_98 = false;
         var _loc1_:int = var_90;
         var_90 = var_90 + 1;
         return zpp_inner.at(_loc1_);
      }
      
      public final function hasNext() : Boolean
      {
         var _loc3_:* = null as ZPP_Contact;
         var _loc4_:* = null as ZPP_Contact;
         zpp_inner.zpp_inner.method_104();
         var _loc2_:class_328 = zpp_inner;
         _loc2_.zpp_inner.method_104();
         if(_loc2_.zpp_inner.var_86)
         {
            _loc2_.zpp_inner.var_86 = false;
            _loc2_.zpp_inner.var_89 = 0;
            _loc3_ = _loc2_.zpp_inner.name_4.next;
            while(_loc3_ != null)
            {
               _loc4_ = _loc3_;
               if(!!_loc4_.active && _loc4_.name_20.active)
               {
                  _loc2_.zpp_inner.var_89 = _loc2_.zpp_inner.var_89 + 1;
               }
               _loc3_ = _loc3_.next;
            }
         }
         var _loc1_:int = _loc2_.zpp_inner.var_89;
         var_98 = true;
         if(var_90 < _loc1_)
         {
            return true;
         }
         var_106 = class_266.var_72;
         class_266.var_72 = this;
         zpp_inner = null;
         return false;
      }
   }
}
