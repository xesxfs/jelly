package package_7
{
   import package_15.class_59;
   import package_16.class_62;
   import package_20.Particle2D;
   import package_6.class_28;
   import package_6.class_29;
   import package_9.class_38;
   
   public final class class_42 extends class_29
   {
       
      
      private var var_635:class_28;
      
      private var var_898:class_38;
      
      private var var_897:Boolean;
      
      public function class_42(param1:class_28 = null, param2:class_38 = null, param3:Boolean = false)
      {
         super();
         this.action = param1;
         this.method_125 = param2;
         this.method_286 = param3;
      }
      
      public function get action() : class_28
      {
         return this.var_635;
      }
      
      public function set action(param1:class_28) : void
      {
         this.var_635 = param1;
      }
      
      public function get method_125() : class_38
      {
         return this.var_898;
      }
      
      public function set method_125(param1:class_38) : void
      {
         this.var_898 = param1;
      }
      
      public function get method_286() : Boolean
      {
         return this.var_897;
      }
      
      public function set method_286(param1:Boolean) : void
      {
         this.var_897 = param1;
      }
      
      override public function get priority() : int
      {
         return this.var_635.priority;
      }
      
      override public function set priority(param1:int) : void
      {
         this.var_635.priority = param1;
      }
      
      override public function method_126(param1:class_59) : void
      {
         this.var_635.method_126(param1);
      }
      
      override public function method_163(param1:class_59) : void
      {
         this.var_635.method_163(param1);
      }
      
      override public function update(param1:class_59, param2:class_62, param3:Number) : void
      {
         var _loc4_:Particle2D = Particle2D(param2);
         if(this.var_898.contains(_loc4_.x,_loc4_.y))
         {
            if(!this.var_897)
            {
               this.var_635.update(param1,param2,param3);
            }
         }
         else if(this.var_897)
         {
            this.var_635.update(param1,param2,param3);
         }
      }
   }
}
