package zpp_nape.callbacks
{
   import nape.constraint.class_218;
   import package_29.class_188;
   import package_34.class_250;
   import package_36.class_284;
   import zpp_nape.util.ZNPList_ZPP_CbSet;
   import zpp_nape.util.class_213;
   import zpp_nape.util.class_287;
   import zpp_nape.util.class_288;
   import zpp_nape.util.class_289;
   import zpp_nape.util.class_290;
   
   public final class ZPP_CbType
   {
      
      public static var ANY_SHAPE:class_250 = new class_250();
      
      public static var ANY_BODY:class_250 = new class_250();
      
      public static var ANY_COMPOUND:class_250 = new class_250();
      
      public static var ANY_CONSTRAINT:class_250 = new class_250();
       
      
      public var var_509:class_188;
      
      public var var_185:class_218;
      
      public var name_21;
      
      public var outer:class_250;
      
      public var name_15:class_289;
      
      public var name_26:class_213;
      
      public var id:int;
      
      public var name_19:class_287;
      
      public var var_283:class_290;
      
      public var var_148:ZNPList_ZPP_CbSet;
      
      public var var_293:class_288;
      
      public function ZPP_CbType()
      {
         var_283 = null;
         var_293 = null;
         name_15 = null;
         var_148 = null;
         id = 0;
         name_21 = null;
         outer = null;
         id = int(class_284.class_250());
         name_15 = new class_289();
         var_293 = new class_288();
         var_283 = new class_290();
         name_19 = new class_287();
         name_26 = new class_213();
         var_148 = new ZNPList_ZPP_CbSet();
      }
      
      public static function method_117(param1:ZPP_CbType, param2:ZPP_CbType) : Boolean
      {
         return param1.id < param2.id;
      }
   }
}
