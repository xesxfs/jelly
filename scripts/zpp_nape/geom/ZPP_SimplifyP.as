package zpp_nape.geom
{
   public final class ZPP_SimplifyP
   {
      
      public static var var_72:ZPP_SimplifyP = null;
       
      
      public var next:ZPP_SimplifyP;
      
      public var min:class_274;
      
      public var max:class_274;
      
      public function ZPP_SimplifyP()
      {
         max = null;
         min = null;
         next = null;
      }
      
      public static function method_65(param1:class_274, param2:class_274) : ZPP_SimplifyP
      {
         var _loc3_:* = null as ZPP_SimplifyP;
         if(ZPP_SimplifyP.var_72 == null)
         {
            _loc3_ = new ZPP_SimplifyP();
         }
         else
         {
            _loc3_ = ZPP_SimplifyP.var_72;
            ZPP_SimplifyP.var_72 = _loc3_.next;
            _loc3_.next = null;
         }
         null;
         _loc3_.min = param1;
         _loc3_.max = param2;
         return _loc3_;
      }
   }
}
