package package_34
{
   import nape.constraint.class_218;
   import package_29.class_188;
   import zpp_nape.callbacks.ZPP_CbType;
   import zpp_nape.util.ZPP_ConstraintList;
   import zpp_nape.util.ZPP_InteractorList;
   
   public final class class_250
   {
       
      
      public var zpp_inner:ZPP_CbType;
      
      public function class_250()
      {
         zpp_inner = null;
         zpp_inner = new ZPP_CbType();
         zpp_inner.outer = this;
      }
      
      public static function get ANY_BODY() : class_250
      {
         return ZPP_CbType.ANY_BODY;
      }
      
      public static function get ANY_CONSTRAINT() : class_250
      {
         return ZPP_CbType.ANY_CONSTRAINT;
      }
      
      public static function get ANY_SHAPE() : class_250
      {
         return ZPP_CbType.ANY_SHAPE;
      }
      
      public static function get ANY_COMPOUND() : class_250
      {
         return ZPP_CbType.ANY_COMPOUND;
      }
      
      public final function toString() : String
      {
         if(this == ZPP_CbType.ANY_BODY)
         {
            return "ANY_BODY";
         }
         if(this == ZPP_CbType.ANY_SHAPE)
         {
            return "ANY_SHAPE";
         }
         if(this == ZPP_CbType.ANY_COMPOUND)
         {
            return "ANY_COMPOUND";
         }
         if(this == ZPP_CbType.ANY_CONSTRAINT)
         {
            return "ANY_CONSTRAINT";
         }
         return class_2.method_14(-1820302528) + zpp_inner.id;
      }
      
      public final function method_288(param1:*) : class_313
      {
         return new class_313(this).method_288(param1);
      }
      
      public function get name_21() : *
      {
         if(zpp_inner.name_21 == null)
         {
            zpp_inner.name_21 = {};
         }
         return zpp_inner.name_21;
      }
      
      public function get name_26() : class_188
      {
         if(zpp_inner.var_509 == null)
         {
            zpp_inner.var_509 = ZPP_InteractorList.method_65(zpp_inner.name_26,true);
         }
         return zpp_inner.var_509;
      }
      
      public function get id() : int
      {
         return zpp_inner.id;
      }
      
      public function get name_19() : class_218
      {
         if(zpp_inner.var_185 == null)
         {
            zpp_inner.var_185 = ZPP_ConstraintList.method_65(zpp_inner.name_19,true);
         }
         return zpp_inner.var_185;
      }
      
      public final function method_332(param1:*) : class_313
      {
         return new class_313(this).method_332(param1);
      }
   }
}
