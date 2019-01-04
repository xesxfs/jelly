package package_34
{
   import zpp_nape.util.class_223;
   
   public final class class_249
   {
       
      
      public function class_249()
      {
      }
      
      public static function get BEGIN() : class_249
      {
         if(class_223.var_430 == null)
         {
            class_223.var_87 = true;
            class_223.var_430 = new class_249();
            class_223.var_87 = false;
         }
         return class_223.var_430;
      }
      
      public static function get ONGOING() : class_249
      {
         if(class_223.var_419 == null)
         {
            class_223.var_87 = true;
            class_223.var_419 = new class_249();
            class_223.var_87 = false;
         }
         return class_223.var_419;
      }
      
      public static function get END() : class_249
      {
         if(class_223.var_413 == null)
         {
            class_223.var_87 = true;
            class_223.var_413 = new class_249();
            class_223.var_87 = false;
         }
         return class_223.var_413;
      }
      
      public static function get WAKE() : class_249
      {
         if(class_223.var_350 == null)
         {
            class_223.var_87 = true;
            class_223.var_350 = new class_249();
            class_223.var_87 = false;
         }
         return class_223.var_350;
      }
      
      public static function get SLEEP() : class_249
      {
         if(class_223.var_363 == null)
         {
            class_223.var_87 = true;
            class_223.var_363 = new class_249();
            class_223.var_87 = false;
         }
         return class_223.var_363;
      }
      
      public static function get BREAK() : class_249
      {
         if(class_223.var_485 == null)
         {
            class_223.var_87 = true;
            class_223.var_485 = new class_249();
            class_223.var_87 = false;
         }
         return class_223.var_485;
      }
      
      public static function get PRE() : class_249
      {
         if(class_223.var_491 == null)
         {
            class_223.var_87 = true;
            class_223.var_491 = new class_249();
            class_223.var_87 = false;
         }
         return class_223.var_491;
      }
      
      public final function toString() : String
      {
         §§push(this);
         if(class_223.var_491 == null)
         {
            class_223.var_87 = true;
            class_223.var_491 = new class_249();
            class_223.var_87 = false;
         }
         if(§§pop() == class_223.var_491)
         {
            return "PRE";
         }
         §§push(this);
         if(class_223.var_430 == null)
         {
            class_223.var_87 = true;
            class_223.var_430 = new class_249();
            class_223.var_87 = false;
         }
         if(§§pop() == class_223.var_430)
         {
            return "BEGIN";
         }
         §§push(this);
         if(class_223.var_419 == null)
         {
            class_223.var_87 = true;
            class_223.var_419 = new class_249();
            class_223.var_87 = false;
         }
         if(§§pop() == class_223.var_419)
         {
            return "ONGOING";
         }
         §§push(this);
         if(class_223.var_413 == null)
         {
            class_223.var_87 = true;
            class_223.var_413 = new class_249();
            class_223.var_87 = false;
         }
         if(§§pop() == class_223.var_413)
         {
            return "END";
         }
         §§push(this);
         if(class_223.var_350 == null)
         {
            class_223.var_87 = true;
            class_223.var_350 = new class_249();
            class_223.var_87 = false;
         }
         if(§§pop() == class_223.var_350)
         {
            return "WAKE";
         }
         §§push(this);
         if(class_223.var_363 == null)
         {
            class_223.var_87 = true;
            class_223.var_363 = new class_249();
            class_223.var_87 = false;
         }
         if(§§pop() == class_223.var_363)
         {
            return "SLEEP";
         }
         §§push(this);
         if(class_223.var_485 == null)
         {
            class_223.var_87 = true;
            class_223.var_485 = new class_249();
            class_223.var_87 = false;
         }
         if(§§pop() == class_223.var_485)
         {
            return "BREAK";
         }
         return "";
      }
   }
}
