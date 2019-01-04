package package_6
{
   import org.flintparticles.common.utils.interpolateColors;
   import package_15.class_59;
   import package_16.class_62;
   
   public final class class_41 extends class_29
   {
       
      
      private var var_931:uint;
      
      private var var_928:uint;
      
      public function class_41(param1:uint = 16777215, param2:uint = 16777215)
      {
         super();
         this.var_931 = param1;
         this.var_928 = param2;
      }
      
      public function get method_662() : uint
      {
         return this.var_931;
      }
      
      public function set method_662(param1:uint) : void
      {
         this.var_931 = param1;
      }
      
      public function get method_654() : uint
      {
         return this.var_928;
      }
      
      public function set method_654(param1:uint) : void
      {
         this.var_928 = param1;
      }
      
      override public function update(param1:class_59, param2:class_62, param3:Number) : void
      {
         param2.color = interpolateColors(this.var_931,this.var_928,param2.var_358);
      }
   }
}
