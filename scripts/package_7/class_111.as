package package_7
{
   import package_15.class_59;
   import package_16.class_62;
   import package_20.Particle2D;
   import package_6.class_29;
   import package_9.class_38;
   
   public final class class_111 extends class_29
   {
       
      
      private var _x:Number;
      
      private var _y:Number;
      
      private var var_898:class_38;
      
      private var var_897:Boolean;
      
      public function class_111(param1:Number = 0, param2:Number = 0, param3:class_38 = null, param4:Boolean = false)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.method_125 = param3;
         this.method_286 = param4;
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
      
      override public function update(param1:class_59, param2:class_62, param3:Number) : void
      {
         var _loc4_:Particle2D = Particle2D(param2);
         if(this.var_898.contains(_loc4_.x,_loc4_.y))
         {
            if(!this.var_897)
            {
               _loc4_.var_119 = _loc4_.var_119 + this._x * param3;
               _loc4_.var_118 = _loc4_.var_118 + this._y * param3;
            }
         }
         else if(this.var_897)
         {
            _loc4_.var_119 = _loc4_.var_119 + this._x * param3;
            _loc4_.var_118 = _loc4_.var_118 + this._y * param3;
         }
      }
   }
}
