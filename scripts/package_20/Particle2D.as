package package_20
{
   import flash.geom.Matrix;
   import package_16.class_62;
   import package_16.class_91;
   
   public final class Particle2D extends class_62
   {
       
      
      public var x:Number = 0;
      
      public var y:Number = 0;
      
      public var var_243:Number = 0;
      
      public var var_248:Number = 0;
      
      public var var_119:Number = 0;
      
      public var var_118:Number = 0;
      
      public var rotation:Number = 0;
      
      public var name_38:Number = 0;
      
      private var var_1120:Number;
      
      private var var_1104:Number;
      
      private var var_1103:Number;
      
      public var sortID:int = -1;
      
      public function Particle2D()
      {
         super();
      }
      
      public function get inertia() : Number
      {
         if(mass != this.var_1120 || var_169 != this.var_1104)
         {
            this.var_1103 = mass * var_169 * var_169 * 0.5;
            this.var_1120 = mass;
            this.var_1104 = var_169;
         }
         return this.var_1103;
      }
      
      override public function initialize() : void
      {
         super.initialize();
         this.x = 0;
         this.y = 0;
         this.var_243 = 0;
         this.var_248 = 0;
         this.var_119 = 0;
         this.var_118 = 0;
         this.rotation = 0;
         this.name_38 = 0;
         this.sortID = -1;
      }
      
      public function get method_244() : Matrix
      {
         var _loc1_:Number = scale * Math.cos(this.rotation);
         var _loc2_:Number = scale * Math.sin(this.rotation);
         return new Matrix(_loc1_,_loc2_,-_loc2_,_loc1_,this.x,this.y);
      }
      
      override public function clone(param1:class_91 = null) : class_62
      {
         var _loc2_:* = null;
         if(param1)
         {
            _loc2_ = param1.method_258() as Particle2D;
         }
         else
         {
            _loc2_ = new Particle2D();
         }
         method_394(_loc2_);
         _loc2_.x = this.x;
         _loc2_.y = this.y;
         _loc2_.var_119 = this.var_119;
         _loc2_.var_118 = this.var_118;
         _loc2_.rotation = this.rotation;
         _loc2_.name_38 = this.name_38;
         return _loc2_;
      }
   }
}
