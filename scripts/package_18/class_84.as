package package_18
{
   import org.flintparticles.common.utils.class_108;
   import package_15.class_59;
   import package_16.class_62;
   import package_16.class_91;
   import package_20.Particle2D;
   import package_20.class_92;
   
   public class class_84 extends class_59
   {
      
      protected static var var_906:class_92 = new class_92();
       
      
      protected var _x:Number = 0;
      
      protected var _y:Number = 0;
      
      protected var var_849:Number = 0;
      
      public var spaceSort:Boolean = false;
      
      public function class_84()
      {
         super();
         var_621 = var_906;
      }
      
      public static function get method_818() : class_91
      {
         return var_906;
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
      
      public function get rotation() : Number
      {
         return class_108.method_716(this.var_849);
      }
      
      public function set rotation(param1:Number) : void
      {
         this.var_849 = class_108.method_419(param1);
      }
      
      public function get method_403() : Number
      {
         return this.var_849;
      }
      
      public function set method_403(param1:Number) : void
      {
         this.var_849 = param1;
      }
      
      override protected function method_730(param1:class_62) : void
      {
         var _loc2_:Particle2D = Particle2D(param1);
         _loc2_.x = this._x;
         _loc2_.y = this._y;
         _loc2_.var_243 = this._x;
         _loc2_.var_248 = this._y;
         _loc2_.rotation = this.var_849;
      }
      
      override protected function method_611() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(this.spaceSort)
         {
            var_279.sortOn("x",Array.NUMERIC);
            _loc1_ = var_279.length;
            _loc2_ = 0;
            while(_loc2_ < _loc1_)
            {
               Particle2D(var_279[_loc2_]).sortID = _loc2_;
               _loc2_++;
            }
         }
      }
   }
}
