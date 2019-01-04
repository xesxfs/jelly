package zpp_nape.geom
{
   public final class ZPP_CutVert
   {
      
      public static var var_72:ZPP_CutVert = null;
       
      
      public var var_308:ZPP_GeomVert;
      
      public var value:Number;
      
      public var used:Boolean;
      
      public var var_158:int;
      
      public var var_75:ZPP_CutVert;
      
      public var var_96:Number;
      
      public var var_95:Number;
      
      public var var_610:Boolean;
      
      public var parent:ZPP_CutVert;
      
      public var next:ZPP_CutVert;
      
      public function ZPP_CutVert()
      {
         used = false;
         var_158 = 0;
         parent = null;
         var_610 = false;
         value = 0;
         var_308 = null;
         var_96 = 0;
         var_95 = 0;
         next = null;
         var_75 = null;
      }
      
      public static function path(param1:ZPP_GeomVert) : ZPP_CutVert
      {
         var _loc2_:* = null as ZPP_CutVert;
         if(ZPP_CutVert.var_72 == null)
         {
            _loc2_ = new ZPP_CutVert();
         }
         else
         {
            _loc2_ = ZPP_CutVert.var_72;
            ZPP_CutVert.var_72 = _loc2_.next;
            _loc2_.next = null;
         }
         null;
         _loc2_.var_308 = param1;
         _loc2_.parent = _loc2_;
         _loc2_.var_158 = 0;
         _loc2_.used = false;
         return _loc2_;
      }
   }
}
