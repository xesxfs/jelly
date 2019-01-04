package package_34
{
   import zpp_nape.util.class_223;
   
   public final class class_221
   {
       
      
      public function class_221()
      {
      }
      
      public static function get COLLISION() : class_221
      {
         if(class_223.var_189 == null)
         {
            class_223.var_87 = true;
            class_223.var_189 = new class_221();
            class_223.var_87 = false;
         }
         return class_223.var_189;
      }
      
      public static function get SENSOR() : class_221
      {
         if(class_223.var_187 == null)
         {
            class_223.var_87 = true;
            class_223.var_187 = new class_221();
            class_223.var_87 = false;
         }
         return class_223.var_187;
      }
      
      public static function get FLUID() : class_221
      {
         if(class_223.var_193 == null)
         {
            class_223.var_87 = true;
            class_223.var_193 = new class_221();
            class_223.var_87 = false;
         }
         return class_223.var_193;
      }
      
      public static function get ANY() : class_221
      {
         if(class_223.InteractionType_ANY == null)
         {
            class_223.var_87 = true;
            class_223.InteractionType_ANY = new class_221();
            class_223.var_87 = false;
         }
         return class_223.InteractionType_ANY;
      }
      
      public final function toString() : String
      {
         §§push(this);
         if(class_223.var_189 == null)
         {
            class_223.var_87 = true;
            class_223.var_189 = new class_221();
            class_223.var_87 = false;
         }
         if(§§pop() == class_223.var_189)
         {
            return "COLLISION";
         }
         §§push(this);
         if(class_223.var_187 == null)
         {
            class_223.var_87 = true;
            class_223.var_187 = new class_221();
            class_223.var_87 = false;
         }
         if(§§pop() == class_223.var_187)
         {
            return "SENSOR";
         }
         §§push(this);
         if(class_223.var_193 == null)
         {
            class_223.var_87 = true;
            class_223.var_193 = new class_221();
            class_223.var_87 = false;
         }
         if(§§pop() == class_223.var_193)
         {
            return "FLUID";
         }
         §§push(this);
         if(class_223.InteractionType_ANY == null)
         {
            class_223.var_87 = true;
            class_223.InteractionType_ANY = new class_221();
            class_223.var_87 = false;
         }
         if(§§pop() == class_223.InteractionType_ANY)
         {
            return "ANY";
         }
         return "";
      }
   }
}
