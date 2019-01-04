package package_34
{
   import zpp_nape.util.class_223;
   
   public final class class_293
   {
       
      
      public function class_293()
      {
      }
      
      public static function get BODY() : class_293
      {
         if(class_223.var_609 == null)
         {
            class_223.var_87 = true;
            class_223.var_609 = new class_293();
            class_223.var_87 = false;
         }
         return class_223.var_609;
      }
      
      public static function get CONSTRAINT() : class_293
      {
         if(class_223.var_607 == null)
         {
            class_223.var_87 = true;
            class_223.var_607 = new class_293();
            class_223.var_87 = false;
         }
         return class_223.var_607;
      }
      
      public static function get INTERACTION() : class_293
      {
         if(class_223.var_587 == null)
         {
            class_223.var_87 = true;
            class_223.var_587 = new class_293();
            class_223.var_87 = false;
         }
         return class_223.var_587;
      }
      
      public static function get PRE() : class_293
      {
         if(class_223.var_599 == null)
         {
            class_223.var_87 = true;
            class_223.var_599 = new class_293();
            class_223.var_87 = false;
         }
         return class_223.var_599;
      }
      
      public final function toString() : String
      {
         §§push(this);
         if(class_223.var_609 == null)
         {
            class_223.var_87 = true;
            class_223.var_609 = new class_293();
            class_223.var_87 = false;
         }
         if(§§pop() == class_223.var_609)
         {
            return "BODY";
         }
         §§push(this);
         if(class_223.var_607 == null)
         {
            class_223.var_87 = true;
            class_223.var_607 = new class_293();
            class_223.var_87 = false;
         }
         if(§§pop() == class_223.var_607)
         {
            return "CONSTRAINT";
         }
         §§push(this);
         if(class_223.var_587 == null)
         {
            class_223.var_87 = true;
            class_223.var_587 = new class_293();
            class_223.var_87 = false;
         }
         if(§§pop() == class_223.var_587)
         {
            return "INTERACTION";
         }
         §§push(this);
         if(class_223.var_599 == null)
         {
            class_223.var_87 = true;
            class_223.var_599 = new class_293();
            class_223.var_87 = false;
         }
         if(§§pop() == class_223.var_599)
         {
            return "PRE";
         }
         return "";
      }
   }
}
