package zpp_nape.geom
{
   import zpp_nape.dynamics.ZPP_ColArbiter;
   import zpp_nape.shape.ZPP_Shape;
   
   public final class ZPP_ToiEvent
   {
      
      public static var var_72:ZPP_ToiEvent = null;
       
      
      public var name_51:Number;
      
      public var var_647:Boolean;
      
      public var s2:ZPP_Shape;
      
      public var s1:ZPP_Shape;
      
      public var next:ZPP_ToiEvent;
      
      public var kinematic:Boolean;
      
      public var frozen2:Boolean;
      
      public var frozen1:Boolean;
      
      public var var_143:Boolean;
      
      public var c2:ZPP_Vec2;
      
      public var c1:ZPP_Vec2;
      
      public var var_561:ZPP_Vec2;
      
      public var name_20:ZPP_ColArbiter;
      
      public function ZPP_ToiEvent()
      {
         kinematic = false;
         var_143 = false;
         var_647 = false;
         var_561 = null;
         c2 = null;
         c1 = null;
         frozen2 = false;
         frozen1 = false;
         name_20 = null;
         s2 = null;
         s1 = null;
         name_51 = 0;
         next = null;
         c1 = new ZPP_Vec2();
         c2 = new ZPP_Vec2();
         var_561 = new ZPP_Vec2();
      }
   }
}
