package zpp_nape.space
{
   import zpp_nape.geom.ZPP_AABB;
   import zpp_nape.shape.ZPP_Shape;
   
   public final class ZPP_SweepData
   {
      
      public static var var_72:ZPP_SweepData = null;
       
      
      public var name_7:ZPP_Shape;
      
      public var var_75:ZPP_SweepData;
      
      public var next:ZPP_SweepData;
      
      public var name_3:ZPP_AABB;
      
      public function ZPP_SweepData()
      {
         name_3 = null;
         name_7 = null;
         var_75 = null;
         next = null;
      }
   }
}
