package zpp_nape.geom
{
   public final class ZPP_CutInt
   {
      
      public static var var_72:ZPP_CutInt = null;
       
      
      public var var_467:Boolean;
      
      public var vertex:Boolean;
      
      public var time:Number;
      
      public var start:ZPP_GeomVert;
      
      public var path1:ZPP_CutVert;
      
      public var path0:ZPP_CutVert;
      
      public var next:ZPP_CutInt;
      
      public var end:ZPP_GeomVert;
      
      public function ZPP_CutInt()
      {
         path1 = null;
         start = null;
         end = null;
         path0 = null;
         vertex = false;
         var_467 = false;
         time = 0;
         next = null;
      }
      
      public static function method_65(param1:Number, param2:ZPP_GeomVert = undefined, param3:ZPP_GeomVert = undefined, param4:ZPP_CutVert = undefined, param5:ZPP_CutVert = undefined, param6:Boolean = false, param7:Boolean = false) : ZPP_CutInt
      {
         var _loc8_:* = null as ZPP_CutInt;
         if(ZPP_CutInt.var_72 == null)
         {
            _loc8_ = new ZPP_CutInt();
         }
         else
         {
            _loc8_ = ZPP_CutInt.var_72;
            ZPP_CutInt.var_72 = _loc8_.next;
            _loc8_.next = null;
         }
         null;
         _loc8_.var_467 = param6;
         _loc8_.end = param2;
         _loc8_.start = param3;
         _loc8_.path0 = param4;
         _loc8_.path1 = param5;
         _loc8_.time = param1;
         _loc8_.vertex = param7;
         return _loc8_;
      }
   }
}
