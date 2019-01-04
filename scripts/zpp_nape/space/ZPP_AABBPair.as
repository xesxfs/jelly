package zpp_nape.space
{
   import zpp_nape.dynamics.ZPP_Arbiter;
   
   public final class ZPP_AABBPair
   {
      
      public static var var_72:ZPP_AABBPair = null;
       
      
      public var var_129:Boolean;
      
      public var next:ZPP_AABBPair;
      
      public var n2:ZPP_AABBNode;
      
      public var n1:ZPP_AABBNode;
      
      public var id:int;
      
      public var name_41:Boolean;
      
      public var var_179:int;
      
      public var var_246:ZPP_Arbiter;
      
      public function ZPP_AABBPair()
      {
         next = null;
         var_246 = null;
         var_179 = 0;
         id = 0;
         var_129 = false;
         name_41 = false;
         n2 = null;
         n1 = null;
      }
   }
}
