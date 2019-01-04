package package_26
{
   import zpp_nape.util.class_223;
   
   public final class class_294
   {
       
      
      public function class_294()
      {
      }
      
      public static function get COLLISION() : class_294
      {
         if(class_223.var_592 == null)
         {
            class_223.var_87 = true;
            class_223.var_592 = new class_294();
            class_223.var_87 = false;
         }
         return class_223.var_592;
      }
      
      public static function get SENSOR() : class_294
      {
         if(class_223.var_618 == null)
         {
            class_223.var_87 = true;
            class_223.var_618 = new class_294();
            class_223.var_87 = false;
         }
         return class_223.var_618;
      }
      
      public static function get FLUID() : class_294
      {
         if(class_223.var_574 == null)
         {
            class_223.var_87 = true;
            class_223.var_574 = new class_294();
            class_223.var_87 = false;
         }
         return class_223.var_574;
      }
      
      public final function toString() : String
      {
         §§push(this);
         if(class_223.var_592 == null)
         {
            class_223.var_87 = true;
            class_223.var_592 = new class_294();
            class_223.var_87 = false;
         }
         if(§§pop() == class_223.var_592)
         {
            return "COLLISION";
         }
         §§push(this);
         if(class_223.var_618 == null)
         {
            class_223.var_87 = true;
            class_223.var_618 = new class_294();
            class_223.var_87 = false;
         }
         if(§§pop() == class_223.var_618)
         {
            return "SENSOR";
         }
         §§push(this);
         if(class_223.var_574 == null)
         {
            class_223.var_87 = true;
            class_223.var_574 = new class_294();
            class_223.var_87 = false;
         }
         if(§§pop() == class_223.var_574)
         {
            return "FLUID";
         }
         return "";
      }
   }
}
