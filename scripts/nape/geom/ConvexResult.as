package nape.geom
{
   import package_32.Shape;
   import zpp_nape.geom.class_297;
   
   public final class ConvexResult
   {
       
      
      public var zpp_inner:class_297;
      
      public function ConvexResult()
      {
         zpp_inner = null;
      }
      
      public final function toString() : String
      {
         return class_2.method_14(-1820302615) + Std.string(zpp_inner.name_7) + class_2.method_14(-1820302663) + zpp_inner.var_285 + class_2.method_14(-1820302790);
      }
      
      public function get name_51() : Number
      {
         return zpp_inner.var_285;
      }
      
      public function get name_7() : Shape
      {
         return zpp_inner.name_7;
      }
      
      public function get position() : Vec2
      {
         return zpp_inner.position;
      }
      
      public function get normal() : Vec2
      {
         return zpp_inner.normal;
      }
      
      public final function dispose() : void
      {
         zpp_inner.method_129();
      }
   }
}
