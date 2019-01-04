package package_9
{
   import flash.display.BitmapData;
   import flash.geom.Point;
   import org.flintparticles.common.utils.FastWeightedArray;
   import package_20.Particle2D;
   
   public final class class_39 implements class_38
   {
       
      
      private var var_322:BitmapData;
      
      private var var_729:Number;
      
      private var var_709:Number;
      
      private var _scaleX:Number;
      
      private var _scaleY:Number;
      
      private var var_894:FastWeightedArray;
      
      public function class_39(param1:BitmapData = null, param2:Number = 0, param3:Number = 0, param4:Number = 1, param5:Number = 1)
      {
         super();
         this.var_322 = param1;
         this.var_729 = param2;
         this.var_709 = param3;
         this._scaleX = param4;
         this._scaleY = param5;
         this.invalidate();
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.var_322;
      }
      
      public function set bitmapData(param1:BitmapData) : void
      {
         this.var_322 = param1;
         this.invalidate();
      }
      
      public function get name_72() : Number
      {
         return this.var_729;
      }
      
      public function set name_72(param1:Number) : void
      {
         this.var_729 = param1;
      }
      
      public function get name_73() : Number
      {
         return this.var_709;
      }
      
      public function set name_73(param1:Number) : void
      {
         this.var_709 = param1;
      }
      
      public function get scaleX() : Number
      {
         return this._scaleX;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this._scaleX = param1;
      }
      
      public function get scaleY() : Number
      {
         return this._scaleY;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this._scaleY = param1;
      }
      
      public final function invalidate() : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = 0;
         var _loc4_:Number = NaN;
         if(!this.var_322)
         {
            return;
         }
         this.var_894 = new FastWeightedArray();
         var _loc1_:int = 0;
         while(_loc1_ < this.bitmapData.width)
         {
            _loc2_ = 0;
            while(_loc2_ < this.bitmapData.height)
            {
               _loc3_ = uint(this.var_322.getPixel32(_loc1_,_loc2_));
               _loc4_ = 0.11 * (_loc3_ & 255) + 0.59 * (_loc3_ >>> 8 & 255) + 0.3 * (_loc3_ >>> 16 & 255);
               if(_loc4_ != 0)
               {
                  this.var_894.add(new Point(_loc1_,_loc2_),_loc4_ / 255);
               }
               _loc2_++;
            }
            _loc1_++;
         }
      }
      
      public function contains(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:* = 0;
         if(param1 >= this.var_729 && param1 <= this.var_729 + this.var_322.width * this.scaleX && param2 >= this.var_709 && param2 <= this.var_709 + this.var_322.height * this.scaleY)
         {
            _loc3_ = uint(this.var_322.getPixel32(Math.round((param1 - this.var_729) / this._scaleX),Math.round((param2 - this.var_709) / this._scaleY)));
            return (_loc3_ & 16777215) != 0;
         }
         return false;
      }
      
      public function getLocation() : Point
      {
         var _loc1_:Point = Point(this.var_894.method_192()).clone();
         _loc1_.x = _loc1_.x * this._scaleX + this.var_729;
         _loc1_.y = _loc1_.y * this._scaleY + this.var_709;
         return _loc1_;
      }
      
      public function method_198() : Number
      {
         return this.var_894.method_455 * this._scaleX * this._scaleY;
      }
      
      public function method_203(param1:Particle2D, param2:Number = 1) : Boolean
      {
         if(this.contains(param1.x,param1.y) != this.contains(param1.var_243,param1.var_248))
         {
            param1.x = param1.var_243;
            param1.y = param1.var_248;
            param1.var_119 = -param2 * param1.var_119;
            param1.var_118 = -param2 * param1.var_118;
            return true;
         }
         return false;
      }
   }
}
