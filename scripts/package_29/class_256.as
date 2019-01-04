package package_29
{
   import zpp_nape.util.class_223;
   
   public final class class_256
   {
       
      
      public function class_256()
      {
      }
      
      public static function get DEFAULT() : class_256
      {
         if(class_223.var_410 == null)
         {
            class_223.var_87 = true;
            class_223.var_410 = new class_256();
            class_223.var_87 = false;
         }
         return class_223.var_410;
      }
      
      public static function get FIXED() : class_256
      {
         if(class_223.var_471 == null)
         {
            class_223.var_87 = true;
            class_223.var_471 = new class_256();
            class_223.var_87 = false;
         }
         return class_223.var_471;
      }
      
      public final function toString() : String
      {
         §§push(this);
         if(class_223.var_410 == null)
         {
            class_223.var_87 = true;
            class_223.var_410 = new class_256();
            class_223.var_87 = false;
         }
         if(§§pop() == class_223.var_410)
         {
            return "DEFAULT";
         }
         §§push(this);
         if(class_223.var_471 == null)
         {
            class_223.var_87 = true;
            class_223.var_471 = new class_256();
            class_223.var_87 = false;
         }
         if(§§pop() == class_223.var_471)
         {
            return "FIXED";
         }
         return "";
      }
   }
}
