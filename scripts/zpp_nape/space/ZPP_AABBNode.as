package zpp_nape.space
{
   import zpp_nape.geom.ZPP_AABB;
   import zpp_nape.shape.ZPP_Shape;
   
   public final class ZPP_AABBNode
   {
      
      public static var var_72:ZPP_AABBNode = null;
       
      
      public var var_426:Boolean;
      
      public var var_275:ZPP_AABBNode;
      
      public var name_7:ZPP_Shape;
      
      public var var_418:Number;
      
      public var parent:ZPP_AABBNode;
      
      public var next:ZPP_AABBNode;
      
      public var var_407:Boolean;
      
      public var var_294:ZPP_AABBNode;
      
      public var height:int;
      
      public var var_374:Boolean;
      
      public var var_451:Boolean;
      
      public var child2:ZPP_AABBNode;
      
      public var child1:ZPP_AABBNode;
      
      public var name_3:ZPP_AABB;
      
      public function ZPP_AABBNode()
      {
         var_374 = false;
         var_426 = false;
         var_275 = null;
         var_407 = false;
         var_294 = null;
         next = null;
         var_418 = 0;
         height = 0;
         child2 = null;
         child1 = null;
         parent = null;
         var_451 = false;
         name_7 = null;
         name_3 = null;
         height = -1;
      }
   }
}
