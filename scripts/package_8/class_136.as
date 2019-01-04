package package_8
{
   import package_15.class_59;
   import package_16.class_62;
   
   public final class class_136 extends class_32
   {
       
      
      private var var_814;
      
      public function class_136(param1:*)
      {
         super();
         this.var_814 = param1;
      }
      
      public function get method_592() : *
      {
         return this.var_814;
      }
      
      public function set method_592(param1:*) : void
      {
         this.var_814 = param1;
      }
      
      override public function initialize(param1:class_59, param2:class_62) : void
      {
         var _loc3_:* = undefined;
         if(!this.var_814)
         {
            return;
         }
         for(_loc3_ in this.var_814)
         {
            param2.method_151[_loc3_] = this.var_814[_loc3_];
         }
      }
   }
}
