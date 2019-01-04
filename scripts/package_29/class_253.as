package package_29
{
   import zpp_nape.util.class_223;
   
   public final class class_253
   {
       
      
      public function class_253()
      {
      }
      
      public static function get DEFAULT() : class_253
      {
         if(class_223.var_411 == null)
         {
            class_223.var_87 = true;
            class_223.var_411 = new class_253();
            class_223.var_87 = false;
         }
         return class_223.var_411;
      }
      
      public static function get FIXED() : class_253
      {
         if(class_223.var_500 == null)
         {
            class_223.var_87 = true;
            class_223.var_500 = new class_253();
            class_223.var_87 = false;
         }
         return class_223.var_500;
      }
      
      public static function get SCALED() : class_253
      {
         if(class_223.var_422 == null)
         {
            class_223.var_87 = true;
            class_223.var_422 = new class_253();
            class_223.var_87 = false;
         }
         return class_223.var_422;
      }
      
      public final function toString() : String
      {
         §§push(this);
         if(class_223.var_411 == null)
         {
            class_223.var_87 = true;
            class_223.var_411 = new class_253();
            class_223.var_87 = false;
         }
         if(§§pop() == class_223.var_411)
         {
            return "DEFAULT";
         }
         §§push(this);
         if(class_223.var_500 == null)
         {
            class_223.var_87 = true;
            class_223.var_500 = new class_253();
            class_223.var_87 = false;
         }
         if(§§pop() == class_223.var_500)
         {
            return "FIXED";
         }
         §§push(this);
         if(class_223.var_422 == null)
         {
            class_223.var_87 = true;
            class_223.var_422 = new class_253();
            class_223.var_87 = false;
         }
         if(§§pop() == class_223.var_422)
         {
            return "SCALED";
         }
         return "";
      }
   }
}
