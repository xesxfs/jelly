package package_2
{
   import package_15.class_59;
   
   public final class class_53 implements class_21
   {
       
      
      private var var_944:uint;
      
      private var var_1117:Boolean = false;
      
      public function class_53(param1:uint = 0)
      {
         super();
         this.var_944 = param1;
      }
      
      public function get method_668() : Number
      {
         return this.var_944;
      }
      
      public function set method_668(param1:Number) : void
      {
         this.var_944 = param1;
      }
      
      public function stop() : void
      {
      }
      
      public function resume() : void
      {
      }
      
      public function method_199(param1:class_59) : uint
      {
         this.var_1117 = true;
         param1.method_521();
         return this.var_944;
      }
      
      public function method_209(param1:class_59, param2:Number) : uint
      {
         return 0;
      }
      
      public function get complete() : Boolean
      {
         return this.var_1117;
      }
      
      public function get running() : Boolean
      {
         return false;
      }
   }
}
