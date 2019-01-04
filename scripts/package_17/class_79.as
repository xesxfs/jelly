package package_17
{
   import package_11.class_65;
   import package_15.class_59;
   import package_18.class_84;
   
   public final class class_79 extends class_65
   {
       
      
      private var var_1035:Number;
      
      public function class_79(param1:Number = 0)
      {
         super();
         this.method_503 = param1;
      }
      
      public function get method_503() : Number
      {
         return this.var_1035;
      }
      
      public function set method_503(param1:Number) : void
      {
         this.var_1035 = param1;
      }
      
      override public function update(param1:class_59, param2:Number) : void
      {
         var _loc3_:class_84 = class_84(param1);
         _loc3_.method_403 = _loc3_.method_403 + this.var_1035 * param2;
      }
   }
}
