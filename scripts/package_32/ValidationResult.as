package package_32
{
   import zpp_nape.util.class_223;
   
   public final class ValidationResult
   {
       
      
      public function ValidationResult()
      {
      }
      
      public static function get VALID() : ValidationResult
      {
         if(class_223.var_597 == null)
         {
            class_223.var_87 = true;
            class_223.var_597 = new ValidationResult();
            class_223.var_87 = false;
         }
         return class_223.var_597;
      }
      
      public static function get DEGENERATE() : ValidationResult
      {
         if(class_223.var_501 == null)
         {
            class_223.var_87 = true;
            class_223.var_501 = new ValidationResult();
            class_223.var_87 = false;
         }
         return class_223.var_501;
      }
      
      public static function get CONCAVE() : ValidationResult
      {
         if(class_223.var_623 == null)
         {
            class_223.var_87 = true;
            class_223.var_623 = new ValidationResult();
            class_223.var_87 = false;
         }
         return class_223.var_623;
      }
      
      public static function get SELF_INTERSECTING() : ValidationResult
      {
         if(class_223.var_590 == null)
         {
            class_223.var_87 = true;
            class_223.var_590 = new ValidationResult();
            class_223.var_87 = false;
         }
         return class_223.var_590;
      }
      
      public final function toString() : String
      {
         §§push(this);
         if(class_223.var_597 == null)
         {
            class_223.var_87 = true;
            class_223.var_597 = new ValidationResult();
            class_223.var_87 = false;
         }
         if(§§pop() == class_223.var_597)
         {
            return "VALID";
         }
         §§push(this);
         if(class_223.var_501 == null)
         {
            class_223.var_87 = true;
            class_223.var_501 = new ValidationResult();
            class_223.var_87 = false;
         }
         if(§§pop() == class_223.var_501)
         {
            return "DEGENERATE";
         }
         §§push(this);
         if(class_223.var_623 == null)
         {
            class_223.var_87 = true;
            class_223.var_623 = new ValidationResult();
            class_223.var_87 = false;
         }
         if(§§pop() == class_223.var_623)
         {
            return "CONCAVE";
         }
         §§push(this);
         if(class_223.var_590 == null)
         {
            class_223.var_87 = true;
            class_223.var_590 = new ValidationResult();
            class_223.var_87 = false;
         }
         if(§§pop() == class_223.var_590)
         {
            return "SELF_INTERSECTING";
         }
         return "";
      }
   }
}
