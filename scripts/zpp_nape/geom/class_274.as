package zpp_nape.geom
{
   public final class class_274
   {
      
      public static var var_72:class_274 = null;
       
      
      public var y:Number;
      
      public var x:Number;
      
      public var var_75:class_274;
      
      public var next:class_274;
      
      public var var_154:Boolean;
      
      public var var_466:Boolean;
      
      public function class_274()
      {
         var_154 = false;
         var_466 = false;
         var_75 = null;
         next = null;
         y = 0;
         x = 0;
      }
      
      public static function method_65(param1:ZPP_GeomVert) : class_274
      {
         var _loc2_:* = null as class_274;
         if(class_274.var_72 == null)
         {
            _loc2_ = new class_274();
         }
         else
         {
            _loc2_ = class_274.var_72;
            class_274.var_72 = _loc2_.next;
            _loc2_.next = null;
         }
         null;
         _loc2_.x = param1.x;
         _loc2_.y = param1.y;
         _loc2_.var_466 = false;
         return _loc2_;
      }
   }
}
