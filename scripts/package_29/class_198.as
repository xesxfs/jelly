package package_29
{
   import zpp_nape.util.class_223;
   
   public final class class_198
   {
       
      
      public function class_198()
      {
      }
      
      public static function get STATIC() : class_198
      {
         if(class_223.var_352 == null)
         {
            class_223.var_87 = true;
            class_223.var_352 = new class_198();
            class_223.var_87 = false;
         }
         return class_223.var_352;
      }
      
      public static function get DYNAMIC() : class_198
      {
         if(class_223.var_357 == null)
         {
            class_223.var_87 = true;
            class_223.var_357 = new class_198();
            class_223.var_87 = false;
         }
         return class_223.var_357;
      }
      
      public static function get KINEMATIC() : class_198
      {
         if(class_223.var_404 == null)
         {
            class_223.var_87 = true;
            class_223.var_404 = new class_198();
            class_223.var_87 = false;
         }
         return class_223.var_404;
      }
      
      public final function toString() : String
      {
         §§push(this);
         if(class_223.var_352 == null)
         {
            class_223.var_87 = true;
            class_223.var_352 = new class_198();
            class_223.var_87 = false;
         }
         if(§§pop() == class_223.var_352)
         {
            return "STATIC";
         }
         §§push(this);
         if(class_223.var_357 == null)
         {
            class_223.var_87 = true;
            class_223.var_357 = new class_198();
            class_223.var_87 = false;
         }
         if(§§pop() == class_223.var_357)
         {
            return "DYNAMIC";
         }
         §§push(this);
         if(class_223.var_404 == null)
         {
            class_223.var_87 = true;
            class_223.var_404 = new class_198();
            class_223.var_87 = false;
         }
         if(§§pop() == class_223.var_404)
         {
            return "KINEMATIC";
         }
         return "";
      }
   }
}
