package nape.geom
{
   import zpp_nape.util.ZPP_Vec2List;
   
   public final class Vec2Iterator
   {
      
      public static var var_72:Vec2Iterator = null;
       
      
      public var var_106:Vec2Iterator;
      
      public var zpp_inner:Vec2List;
      
      public var var_90:int;
      
      public var var_98:Boolean;
      
      public function Vec2Iterator()
      {
         var_106 = null;
         var_98 = false;
         var_90 = 0;
         zpp_inner = null;
      }
      
      public static function method_65(param1:Vec2List) : Vec2Iterator
      {
         var _loc2_:* = null as Vec2Iterator;
         var _loc3_:* = null as Vec2Iterator;
         if(Vec2Iterator.var_72 == null)
         {
            ZPP_Vec2List.var_87 = true;
            _loc3_ = new Vec2Iterator();
            ZPP_Vec2List.var_87 = false;
            _loc2_ = _loc3_;
         }
         else
         {
            _loc3_ = Vec2Iterator.var_72;
            Vec2Iterator.var_72 = _loc3_.var_106;
            _loc2_ = _loc3_;
         }
         _loc2_.var_90 = 0;
         _loc2_.zpp_inner = param1;
         _loc2_.var_98 = false;
         return _loc2_;
      }
      
      public final function next() : Vec2
      {
         var_98 = false;
         var _loc1_:int = var_90;
         var_90 = var_90 + 1;
         return zpp_inner.at(_loc1_);
      }
      
      public final function hasNext() : Boolean
      {
         zpp_inner.zpp_inner.method_104();
         var _loc1_:int = zpp_inner.method_108();
         var_98 = true;
         if(var_90 < _loc1_)
         {
            return true;
         }
         var_106 = Vec2Iterator.var_72;
         Vec2Iterator.var_72 = this;
         zpp_inner = null;
         return false;
      }
   }
}
