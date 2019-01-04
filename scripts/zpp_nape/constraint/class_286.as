package zpp_nape.constraint
{
   import package_29.Body;
   
   public final class class_286
   {
       
      
      public var id:int;
      
      public var var_923:Function;
      
      public var var_781:Body;
      
      public function class_286()
      {
         var_923 = null;
         var_781 = null;
         id = 0;
      }
      
      public static function method_638(param1:int, param2:Body) : class_286
      {
         var _loc3_:class_286 = new class_286();
         _loc3_.id = param1;
         _loc3_.var_781 = param2;
         return _loc3_;
      }
      
      public static function method_500(param1:int, param2:Function) : class_286
      {
         var _loc3_:class_286 = new class_286();
         _loc3_.id = param1;
         _loc3_.var_923 = param2;
         return _loc3_;
      }
   }
}
