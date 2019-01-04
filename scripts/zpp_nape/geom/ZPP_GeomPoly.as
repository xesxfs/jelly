package zpp_nape.geom
{
   import nape.geom.class_260;
   
   public final class ZPP_GeomPoly
   {
       
      
      public var vertices:ZPP_GeomVert;
      
      public var outer:class_260;
      
      public function ZPP_GeomPoly(param1:class_260)
      {
         vertices = null;
         outer = null;
         outer = param1;
      }
   }
}
