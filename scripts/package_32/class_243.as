package package_32
{
   import zpp_nape.util.class_223;
   
   public final class class_243
   {
       
      
      public function class_243()
      {
      }
      
      public static function get CIRCLE() : class_243
      {
         if(class_223.var_589 == null)
         {
            class_223.var_87 = true;
            class_223.var_589 = new class_243();
            class_223.var_87 = false;
         }
         return class_223.var_589;
      }
      
      public static function get POLYGON() : class_243
      {
         if(class_223.var_612 == null)
         {
            class_223.var_87 = true;
            class_223.var_612 = new class_243();
            class_223.var_87 = false;
         }
         return class_223.var_612;
      }
      
      public final function toString() : String
      {
         §§push(this);
         if(class_223.var_589 == null)
         {
            class_223.var_87 = true;
            class_223.var_589 = new class_243();
            class_223.var_87 = false;
         }
         if(§§pop() == class_223.var_589)
         {
            return "CIRCLE";
         }
         §§push(this);
         if(class_223.var_612 == null)
         {
            class_223.var_87 = true;
            class_223.var_612 = new class_243();
            class_223.var_87 = false;
         }
         if(§§pop() == class_223.var_612)
         {
            return "POLYGON";
         }
         return "";
      }
   }
}
