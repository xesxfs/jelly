package package_17
{
   import package_11.class_65;
   import package_15.class_59;
   import package_18.class_84;
   
   public final class class_81 extends class_65
   {
       
      
      private var var_1001:Number;
      
      private var var_1030:Number;
      
      public function class_81(param1:Number = 0, param2:Number = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
      }
      
      public function get x() : Number
      {
         return this.var_1001;
      }
      
      public function set x(param1:Number) : void
      {
         this.var_1001 = param1;
      }
      
      public function get y() : Number
      {
         return this.var_1030;
      }
      
      public function set y(param1:Number) : void
      {
         this.var_1030 = param1;
      }
      
      override public function update(param1:class_59, param2:Number) : void
      {
         var _loc3_:class_84 = class_84(param1);
         _loc3_.x = _loc3_.x + this.var_1001 * param2;
         _loc3_.y = _loc3_.y + this.var_1030 * param2;
      }
   }
}
