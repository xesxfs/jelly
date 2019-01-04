package nape.geom
{
   import zpp_nape.util.class_223;
   
   public final class class_295
   {
       
      
      public function class_295()
      {
      }
      
      public static function get UNDEFINED() : class_295
      {
         if(class_223.Winding_UNDEFINED == null)
         {
            class_223.var_87 = true;
            class_223.Winding_UNDEFINED = new class_295();
            class_223.var_87 = false;
         }
         return class_223.Winding_UNDEFINED;
      }
      
      public static function get CLOCKWISE() : class_295
      {
         if(class_223.var_405 == null)
         {
            class_223.var_87 = true;
            class_223.var_405 = new class_295();
            class_223.var_87 = false;
         }
         return class_223.var_405;
      }
      
      public static function get ANTICLOCKWISE() : class_295
      {
         if(class_223.Winding_ANTICLOCKWISE == null)
         {
            class_223.var_87 = true;
            class_223.Winding_ANTICLOCKWISE = new class_295();
            class_223.var_87 = false;
         }
         return class_223.Winding_ANTICLOCKWISE;
      }
      
      public final function toString() : String
      {
         §§push(this);
         if(class_223.Winding_UNDEFINED == null)
         {
            class_223.var_87 = true;
            class_223.Winding_UNDEFINED = new class_295();
            class_223.var_87 = false;
         }
         if(§§pop() == class_223.Winding_UNDEFINED)
         {
            return "UNDEFINED";
         }
         §§push(this);
         if(class_223.var_405 == null)
         {
            class_223.var_87 = true;
            class_223.var_405 = new class_295();
            class_223.var_87 = false;
         }
         if(§§pop() == class_223.var_405)
         {
            return "CLOCKWISE";
         }
         §§push(this);
         if(class_223.Winding_ANTICLOCKWISE == null)
         {
            class_223.var_87 = true;
            class_223.Winding_ANTICLOCKWISE = new class_295();
            class_223.var_87 = false;
         }
         if(§§pop() == class_223.Winding_ANTICLOCKWISE)
         {
            return "ANTICLOCKWISE";
         }
         return "";
      }
   }
}
