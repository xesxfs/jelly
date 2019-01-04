package package_7
{
   import package_12.class_50;
   import package_15.class_59;
   import package_16.class_62;
   import package_20.Particle2D;
   import package_6.class_29;
   import package_9.class_38;
   
   public final class class_167 extends class_29
   {
       
      
      private var var_803:Number;
      
      private var var_898:class_38;
      
      public function class_167(param1:class_38 = null, param2:Number = 1)
      {
         super();
         priority = -30;
         this.name_39 = param2;
         this.method_125 = param1;
      }
      
      public function get method_125() : class_38
      {
         return this.var_898;
      }
      
      public function set method_125(param1:class_38) : void
      {
         this.var_898 = param1;
      }
      
      public function get name_39() : Number
      {
         return this.var_803;
      }
      
      public function set name_39(param1:Number) : void
      {
         this.var_803 = param1;
      }
      
      override public function update(param1:class_59, param2:class_62, param3:Number) : void
      {
         var _loc5_:* = null;
         var _loc4_:Boolean = this.var_898.method_203(Particle2D(param2),this.var_803);
         if(_loc4_ && param1.hasEventListener(class_50.var_925))
         {
            _loc5_ = new class_50(class_50.var_925,param2);
            _loc5_.var_937 = this.var_898;
            param1.dispatchEvent(_loc5_);
         }
      }
   }
}
