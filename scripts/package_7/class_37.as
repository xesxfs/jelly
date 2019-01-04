package package_7
{
   import package_15.class_59;
   import package_16.class_62;
   import package_20.Particle2D;
   import package_6.class_29;
   
   public final class class_37 extends class_29
   {
       
      
      private var _x:Number;
      
      private var _y:Number;
      
      public function class_37(param1:Number = 0, param2:Number = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         this._x = param1;
      }
      
      public function get y() : Number
      {
         return this._y;
      }
      
      public function set y(param1:Number) : void
      {
         this._y = param1;
      }
      
      override public function update(param1:class_59, param2:class_62, param3:Number) : void
      {
         var _loc4_:* = null;
         _loc4_ = Particle2D(param2);
         _loc4_.var_119 = _loc4_.var_119 + this._x * param3;
         _loc4_.var_118 = _loc4_.var_118 + this._y * param3;
      }
   }
}
