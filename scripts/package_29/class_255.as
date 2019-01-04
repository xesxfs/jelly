package package_29
{
   import zpp_nape.util.class_223;
   
   public final class class_255
   {
       
      
      public function class_255()
      {
      }
      
      public static function get DEFAULT() : class_255
      {
         if(class_223.var_508 == null)
         {
            class_223.var_87 = true;
            class_223.var_508 = new class_255();
            class_223.var_87 = false;
         }
         return class_223.var_508;
      }
      
      public static function get FIXED() : class_255
      {
         if(class_223.var_414 == null)
         {
            class_223.var_87 = true;
            class_223.var_414 = new class_255();
            class_223.var_87 = false;
         }
         return class_223.var_414;
      }
      
      public final function toString() : String
      {
         §§push(this);
         if(class_223.var_508 == null)
         {
            class_223.var_87 = true;
            class_223.var_508 = new class_255();
            class_223.var_87 = false;
         }
         if(§§pop() == class_223.var_508)
         {
            return "DEFAULT";
         }
         §§push(this);
         if(class_223.var_414 == null)
         {
            class_223.var_87 = true;
            class_223.var_414 = new class_255();
            class_223.var_87 = false;
         }
         if(§§pop() == class_223.var_414)
         {
            return "FIXED";
         }
         return "";
      }
   }
}
