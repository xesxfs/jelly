package package_20
{
   import package_16.class_62;
   import package_16.class_91;
   import package_22.class_166;
   
   public final class class_92 implements class_91
   {
       
      
      private var var_279:Vector.<class_62>;
      
      public function class_92()
      {
         super();
         this.var_279 = new Vector.<class_62>();
      }
      
      public function method_258() : class_62
      {
         class_166.name_70++;
         if(this.var_279.length)
         {
            return this.var_279.pop();
         }
         return new Particle2D();
      }
      
      public function method_351(param1:class_62) : void
      {
         class_166.name_70--;
         if(param1 is Particle2D)
         {
            param1.initialize();
            this.var_279.push(param1);
         }
      }
      
      public function method_803() : void
      {
         this.var_279 = new Vector.<class_62>();
      }
   }
}
