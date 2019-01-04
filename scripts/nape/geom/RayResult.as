package nape.geom
{
   import package_32.Shape;
   import zpp_nape.geom.class_297;
   
   public final class RayResult
   {
       
      
      public var zpp_inner:class_297;
      
      public function RayResult()
      {
         zpp_inner = null;
      }
      
      public final function toString() : String
      {
         return class_2.method_14(-1820302615) + Std.string(zpp_inner.name_7) + class_2.method_14(-1820302792) + zpp_inner.var_285 + class_2.method_14(-1820302614) + Std.string(zpp_inner.name_4) + class_2.method_14(-1820302790);
      }
      
      public function get name_7() : Shape
      {
         return zpp_inner.name_7;
      }
      
      public function get normal() : Vec2
      {
         return zpp_inner.normal;
      }
      
      public function get name_4() : Boolean
      {
         return zpp_inner.name_4;
      }
      
      public function get distance() : Number
      {
         return zpp_inner.var_285;
      }
      
      public final function dispose() : void
      {
         zpp_inner.method_129();
      }
   }
}
