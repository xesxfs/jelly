package zpp_nape.util
{
   import nape.constraint.class_218;
   
   public final class ZPP_ConstraintList
   {
      
      public static var var_87:Boolean = false;
       
      
      public var var_86:Boolean;
      
      public var var_89:int;
      
      public var var_110:Function;
      
      public var var_111:Boolean;
      
      public var var_101:ZNPNode_ZPP_Constraint;
      
      public var var_137:Function;
      
      public var outer:class_218;
      
      public var name_4:class_287;
      
      public var var_164:Boolean;
      
      public var var_126:Boolean;
      
      public var var_97:ZNPNode_ZPP_Constraint;
      
      public var var_124:int;
      
      public var var_130:Function;
      
      public var _validate:Function;
      
      public var var_213:Function;
      
      public var var_117:Boolean;
      
      public var _invalidate:Function;
      
      public function ZPP_ConstraintList()
      {
         var_89 = 0;
         var_86 = false;
         var_101 = null;
         var_97 = null;
         var_124 = 0;
         var_111 = false;
         var_126 = false;
         var_110 = null;
         var_137 = null;
         var_130 = null;
         var_213 = null;
         _validate = null;
         _invalidate = null;
         var_117 = false;
         var_164 = false;
         name_4 = null;
         outer = null;
         name_4 = new class_287();
         var_117 = true;
      }
      
      public static function method_65(param1:class_287, param2:Boolean = false) : class_218
      {
         var _loc3_:class_218 = new class_218();
         _loc3_.zpp_inner.name_4 = param1;
         if(param2)
         {
            _loc3_.zpp_inner.var_164 = true;
         }
         _loc3_.zpp_inner.var_86 = true;
         return _loc3_;
      }
      
      public static function method_107() : void
      {
      }
      
      public final function method_104() : void
      {
         validate();
         if(name_4.name_2)
         {
            if(name_4.var_76)
            {
               var_101 = null;
            }
            var_97 = null;
            name_4.name_2 = false;
            name_4.var_76 = false;
            var_86 = true;
         }
      }
      
      public final function validate() : void
      {
         if(var_117)
         {
            var_117 = false;
            if(_validate != null)
            {
               _validate();
            }
         }
      }
      
      public final function name_2() : void
      {
         var_86 = true;
         var_97 = null;
         var_101 = null;
      }
      
      public final function invalidate() : void
      {
         var_117 = true;
         if(_invalidate != null)
         {
            _invalidate(this);
         }
      }
   }
}
