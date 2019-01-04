package package_34
{
   import zpp_nape.util.class_223;
   
   public final class class_296
   {
       
      
      public function class_296()
      {
      }
      
      public static function get ACCEPT() : class_296
      {
         if(class_223.var_320 == null)
         {
            class_223.var_87 = true;
            class_223.var_320 = new class_296();
            class_223.var_87 = false;
         }
         return class_223.var_320;
      }
      
      public static function get IGNORE() : class_296
      {
         if(class_223.var_325 == null)
         {
            class_223.var_87 = true;
            class_223.var_325 = new class_296();
            class_223.var_87 = false;
         }
         return class_223.var_325;
      }
      
      public static function get ACCEPT_ONCE() : class_296
      {
         if(class_223.var_321 == null)
         {
            class_223.var_87 = true;
            class_223.var_321 = new class_296();
            class_223.var_87 = false;
         }
         return class_223.var_321;
      }
      
      public static function get IGNORE_ONCE() : class_296
      {
         if(class_223.var_514 == null)
         {
            class_223.var_87 = true;
            class_223.var_514 = new class_296();
            class_223.var_87 = false;
         }
         return class_223.var_514;
      }
      
      public final function toString() : String
      {
         §§push(this);
         if(class_223.var_320 == null)
         {
            class_223.var_87 = true;
            class_223.var_320 = new class_296();
            class_223.var_87 = false;
         }
         if(§§pop() == class_223.var_320)
         {
            return "ACCEPT";
         }
         §§push(this);
         if(class_223.var_325 == null)
         {
            class_223.var_87 = true;
            class_223.var_325 = new class_296();
            class_223.var_87 = false;
         }
         if(§§pop() == class_223.var_325)
         {
            return "IGNORE";
         }
         §§push(this);
         if(class_223.var_321 == null)
         {
            class_223.var_87 = true;
            class_223.var_321 = new class_296();
            class_223.var_87 = false;
         }
         if(§§pop() == class_223.var_321)
         {
            return "ACCEPT_ONCE";
         }
         §§push(this);
         if(class_223.var_514 == null)
         {
            class_223.var_87 = true;
            class_223.var_514 = new class_296();
            class_223.var_87 = false;
         }
         if(§§pop() == class_223.var_514)
         {
            return "IGNORE_ONCE";
         }
         return "";
      }
   }
}
