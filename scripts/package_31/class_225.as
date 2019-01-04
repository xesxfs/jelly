package package_31
{
   import zpp_nape.util.class_223;
   
   public final class class_225
   {
       
      
      public function class_225()
      {
      }
      
      public static function get DYNAMIC_AABB_TREE() : class_225
      {
         if(class_223.var_495 == null)
         {
            class_223.var_87 = true;
            class_223.var_495 = new class_225();
            class_223.var_87 = false;
         }
         return class_223.var_495;
      }
      
      public static function get SWEEP_AND_PRUNE() : class_225
      {
         if(class_223.var_506 == null)
         {
            class_223.var_87 = true;
            class_223.var_506 = new class_225();
            class_223.var_87 = false;
         }
         return class_223.var_506;
      }
      
      public final function toString() : String
      {
         §§push(this);
         if(class_223.var_495 == null)
         {
            class_223.var_87 = true;
            class_223.var_495 = new class_225();
            class_223.var_87 = false;
         }
         if(§§pop() == class_223.var_495)
         {
            return "DYNAMIC_AABB_TREE";
         }
         §§push(this);
         if(class_223.var_506 == null)
         {
            class_223.var_87 = true;
            class_223.var_506 = new class_225();
            class_223.var_87 = false;
         }
         if(§§pop() == class_223.var_506)
         {
            return "SWEEP_AND_PRUNE";
         }
         return "";
      }
   }
}
