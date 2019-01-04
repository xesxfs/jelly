package package_8
{
   import org.flintparticles.common.utils.interpolateColors;
   import package_15.class_59;
   import package_16.class_62;
   
   public final class class_117 extends class_32
   {
       
      
      private var var_469:uint;
      
      private var var_579:uint;
      
      public function class_117(param1:uint = 16777215, param2:uint = 16777215)
      {
         super();
         this.var_469 = param1;
         this.var_579 = param2;
      }
      
      public function get method_621() : uint
      {
         return this.var_469;
      }
      
      public function set method_621(param1:uint) : void
      {
         this.var_469 = param1;
      }
      
      public function get method_568() : uint
      {
         return this.var_579;
      }
      
      public function set method_568(param1:uint) : void
      {
         this.var_579 = param1;
      }
      
      public function get color() : uint
      {
         return this.var_469 == this.var_579?uint(this.var_469):uint(interpolateColors(this.var_579,this.var_469,0.5));
      }
      
      public function set color(param1:uint) : void
      {
         this.var_579 = this.var_469 = param1;
      }
      
      override public function initialize(param1:class_59, param2:class_62) : void
      {
         if(this.var_579 == this.var_469)
         {
            param2.color = this.var_469;
         }
         else
         {
            param2.color = interpolateColors(this.var_469,this.var_579,Math.random());
         }
      }
   }
}
