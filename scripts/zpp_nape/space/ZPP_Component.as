package zpp_nape.space
{
   import zpp_nape.constraint.ZPP_Constraint;
   import zpp_nape.phys.ZPP_Body;
   
   public final class ZPP_Component
   {
      
      public static var var_72:ZPP_Component = null;
       
      
      public var var_443:Boolean;
      
      public var var_211:int;
      
      public var var_129:Boolean;
      
      public var var_158:int;
      
      public var parent:ZPP_Component;
      
      public var next:ZPP_Component;
      
      public var var_224:ZPP_Island;
      
      public var name_75:Boolean;
      
      public var name_44:ZPP_Constraint;
      
      public var body:ZPP_Body;
      
      public function ZPP_Component()
      {
         var_443 = false;
         var_211 = 0;
         var_129 = false;
         var_224 = null;
         name_44 = null;
         body = null;
         name_75 = false;
         var_158 = 0;
         parent = null;
         next = null;
         var_129 = false;
         var_224 = null;
         parent = this;
         var_158 = 0;
         var_443 = false;
      }
   }
}
