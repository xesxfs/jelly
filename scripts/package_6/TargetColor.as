package package_6
{
   import package_15.class_59;
   import package_16.class_62;
   
   public final class TargetColor extends class_29
   {
       
      
      private var _red:uint;
      
      private var var_909:uint;
      
      private var _blue:uint;
      
      private var _alpha:uint;
      
      private var var_787:Number;
      
      public function TargetColor(param1:uint = 16777215, param2:Number = 0.1)
      {
         super();
         this._red = param1 >>> 16 & 255;
         this.var_909 = param1 >>> 8 & 255;
         this._blue = param1 & 255;
         this._alpha = param1 >>> 24 & 255;
         this.var_787 = param2;
      }
      
      public function get method_564() : Number
      {
         return this._alpha << 24 | this._red << 16 | this.var_909 << 8 | this._blue;
      }
      
      public function set method_564(param1:Number) : void
      {
         this._red = param1 >>> 16 & 255;
         this.var_909 = param1 >>> 8 & 255;
         this._blue = param1 & 255;
         this._alpha = param1 >>> 24 & 255;
      }
      
      public function get method_158() : Number
      {
         return this.var_787;
      }
      
      public function set method_158(param1:Number) : void
      {
         this.var_787 = param1;
      }
      
      override public function update(param1:class_59, param2:class_62, param3:Number) : void
      {
         if(!param2.method_151["[object TargetColor]"])
         {
            param2.method_151["[object TargetColor]"] = new ColorFloat(param2.color);
         }
         var _loc4_:ColorFloat = ColorFloat(param2.method_151["[object TargetColor]"]);
         var _loc5_:* = Number(this.var_787 * param3);
         if(_loc5_ > 1)
         {
            _loc5_ = 1;
         }
         var _loc6_:Number = 1 - _loc5_;
         _loc4_.red = _loc4_.red * _loc6_ + this._red * _loc5_;
         _loc4_.green = _loc4_.green * _loc6_ + this.var_909 * _loc5_;
         _loc4_.blue = _loc4_.blue * _loc6_ + this._blue * _loc5_;
         _loc4_.alpha = _loc4_.alpha * _loc6_ + this._alpha * _loc5_;
         param2.color = _loc4_.getColor();
      }
   }
}

class ColorFloat
{
    
   
   public var red:Number;
   
   public var green:Number;
   
   public var blue:Number;
   
   public var alpha:Number;
   
   function ColorFloat(param1:uint)
   {
      super();
      this.red = param1 >>> 16 & 255;
      this.green = param1 >>> 8 & 255;
      this.blue = param1 & 255;
      this.alpha = param1 >>> 24 & 255;
   }
   
   public function getColor() : uint
   {
      return Math.round(this.alpha) << 24 | Math.round(this.red) << 16 | Math.round(this.green) << 8 | Math.round(this.blue);
   }
}
