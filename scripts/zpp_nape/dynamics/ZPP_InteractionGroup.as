package zpp_nape.dynamics
{
   import package_26.InteractionGroup;
   import package_26.class_190;
   import package_29.class_188;
   import zpp_nape.phys.ZPP_Body;
   import zpp_nape.phys.ZPP_Interactor;
   import zpp_nape.shape.ZPP_Shape;
   import zpp_nape.util.ZNPNode_ZPP_InteractionGroup;
   import zpp_nape.util.ZNPNode_ZPP_Interactor;
   import zpp_nape.util.class_212;
   import zpp_nape.util.class_213;
   
   public final class ZPP_InteractionGroup
   {
      
      public static var var_1162:int = 1;
      
      public static var BODY:int = 2;
       
      
      public var var_509:class_188;
      
      public var var_870:class_190;
      
      public var outer:InteractionGroup;
      
      public var name_26:class_213;
      
      public var name_36:Boolean;
      
      public var name_54:class_212;
      
      public var group:ZPP_InteractionGroup;
      
      public var depth:int;
      
      public function ZPP_InteractionGroup()
      {
         depth = 0;
         var_509 = null;
         name_26 = null;
         var_870 = null;
         name_54 = null;
         group = null;
         name_36 = false;
         outer = null;
         depth = 0;
         name_54 = new class_212();
         name_26 = new class_213();
      }
      
      public final function method_362(param1:ZPP_InteractionGroup) : void
      {
         if(group != param1)
         {
            if(group != null)
            {
               group.name_54.remove(this);
               depth = 0;
               group.invalidate(true);
            }
            group = param1;
            if(param1 != null)
            {
               param1.name_54.add(this);
               depth = param1.depth + 1;
               param1.invalidate(true);
            }
            else
            {
               invalidate(true);
            }
         }
      }
      
      public final function invalidate(param1:Boolean = false) : void
      {
         var _loc3_:* = null as ZPP_Interactor;
         var _loc5_:* = null as ZPP_InteractionGroup;
         if(!(param1 || name_36))
         {
            return;
         }
         var _loc2_:ZNPNode_ZPP_Interactor = name_26.var_73;
         while(_loc2_ != null)
         {
            _loc3_ = _loc2_.var_74;
            if(_loc3_.var_182 != null)
            {
               _loc3_.var_182.method_106();
            }
            else if(_loc3_.var_160 != null)
            {
               _loc3_.var_160.body.method_106();
            }
            else
            {
               _loc3_.var_207.method_106();
            }
            _loc2_ = _loc2_.next;
         }
         var _loc4_:ZNPNode_ZPP_InteractionGroup = name_54.var_73;
         while(_loc4_ != null)
         {
            _loc5_ = _loc4_.var_74;
            _loc5_.invalidate(param1);
            _loc4_ = _loc4_.next;
         }
      }
   }
}
