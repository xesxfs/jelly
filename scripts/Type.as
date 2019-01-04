package
{
   import flash.utils.getDefinitionByName;
   import flash.utils.getQualifiedClassName;
   
   public final class Type
   {
       
      
      public function Type()
      {
      }
      
      public static function getClass(param1:Object) : Class
      {
         var _loc2_:String = getQualifiedClassName(param1);
         if(_loc2_ == class_2.method_14(-1820302697) || _loc2_ == class_2.method_14(-1820302522) || _loc2_ == class_2.method_14(-1820302706) || _loc2_ == class_2.method_14(-1820302705) || _loc2_ == class_2.method_14(-1820302768))
         {
            return null;
         }
         if(param1.hasOwnProperty(class_2.method_14(-1820302470)))
         {
            return null;
         }
         var _loc3_:* = getDefinitionByName(_loc2_) as Class;
         if(_loc3_.__isenum)
         {
            return null;
         }
         return _loc3_;
      }
   }
}
