package package_7
{
   import package_15.class_59;
   import package_16.class_62;
   import package_20.Particle2D;
   import package_6.class_29;
   import package_9.class_38;
   
   public final class class_169 extends class_29
   {
       
      
      private var var_898:class_38;
      
      private var var_1033:Boolean;
      
      private var p:Particle2D;
      
      private var var_1037:Boolean;
      
      public function class_169(param1:class_38 = null, param2:Boolean = false)
      {
         super();
         priority = -20;
         this.method_125 = param1;
         this.method_447 = param2;
      }
      
      public function get method_125() : class_38
      {
         return this.var_898;
      }
      
      public function set method_125(param1:class_38) : void
      {
         this.var_898 = param1;
      }
      
      public function get method_447() : Boolean
      {
         return this.var_1033;
      }
      
      public function set method_447(param1:Boolean) : void
      {
         this.var_1033 = param1;
      }
      
      override public function update(param1:class_59, param2:class_62, param3:Number) : void
      {
         this.p = Particle2D(param2);
         this.var_1037 = this.var_898.contains(this.p.x,this.p.y);
         if(this.var_1033)
         {
            if(!this.var_1037)
            {
               this.p.var_492 = true;
            }
         }
         else if(this.var_1037)
         {
            this.p.var_492 = true;
         }
      }
   }
}
