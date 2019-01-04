package package_8
{
   import org.flintparticles.common.utils.construct;
   
   public final class class_150 extends class_73
   {
       
      
      private var var_924:Class;
      
      private var var_893:Array;
      
      public function class_150(param1:Class = null, param2:Array = null, param3:Boolean = false, param4:uint = 0)
      {
         super(param3);
         this.var_924 = param1;
         this.var_893 = !!param2?param2:[];
         if(param4 > 0)
         {
            this.method_379(param4);
         }
      }
      
      public function get method_724() : Class
      {
         return this.var_924;
      }
      
      public function set method_724(param1:Class) : void
      {
         this.var_924 = param1;
         if(var_417)
         {
            method_153();
         }
      }
      
      public function get parameters() : Array
      {
         return this.var_893;
      }
      
      public function set parameters(param1:Array) : void
      {
         this.var_893 = param1;
         if(var_417)
         {
            method_153();
         }
      }
      
      override public function method_287() : Object
      {
         return construct(this.var_924,this.var_893);
      }
   }
}
