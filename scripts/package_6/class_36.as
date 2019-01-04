package package_6
{
   import package_13.class_77;
   import package_15.class_59;
   import package_16.class_62;
   
   public final class class_36 extends class_29
   {
       
      
      private var var_821:Function;
      
      public function class_36(param1:Function = null)
      {
         super();
         if(param1 == null)
         {
            this.var_821 = class_77.method_56;
         }
         else
         {
            this.var_821 = param1;
         }
      }
      
      public function get method_385() : Function
      {
         return this.var_821;
      }
      
      public function set method_385(param1:Function) : void
      {
         this.var_821 = param1;
      }
      
      override public function update(param1:class_59, param2:class_62, param3:Number) : void
      {
         param2.var_673 = param2.var_673 + param3;
         if(param2.var_673 >= param2.lifetime)
         {
            param2.var_358 = 0;
            param2.var_492 = true;
         }
         else
         {
            param2.var_358 = this.var_821(param2.var_673,1,-1,param2.lifetime);
         }
      }
   }
}
