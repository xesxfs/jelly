package package_16
{
   import flash.geom.ColorTransform;
   import flash.utils.Dictionary;
   
   public class class_62
   {
       
      
      public var color:uint = 4.294967295E9;
      
      private var _colorTransform:ColorTransform = null;
      
      private var var_1100:uint;
      
      public var scale:Number = 1;
      
      public var mass:Number = 1;
      
      public var var_169:Number = 1;
      
      public var image = null;
      
      public var lifetime:Number = 0;
      
      public var var_673:Number = 0;
      
      public var var_358:Number = 1;
      
      public var var_492:Boolean = false;
      
      private var var_602:Dictionary = null;
      
      public function class_62()
      {
         super();
      }
      
      public function get method_151() : Dictionary
      {
         if(this.var_602 == null)
         {
            this.var_602 = new Dictionary(true);
         }
         return this.var_602;
      }
      
      public function initialize() : void
      {
         this.color = 4294967295;
         this.scale = 1;
         this.mass = 1;
         this.var_169 = 1;
         this.lifetime = 0;
         this.var_673 = 0;
         this.var_358 = 1;
         this.var_492 = false;
         this.image = null;
         this.var_602 = null;
         this._colorTransform = null;
      }
      
      public function get colorTransform() : ColorTransform
      {
         if(!this._colorTransform || this.var_1100 != this.color)
         {
            this._colorTransform = new ColorTransform((this.color >>> 16 & 255) / 255,(this.color >>> 8 & 255) / 255,(this.color & 255) / 255,(this.color >>> 24 & 255) / 255,0,0,0,0);
            this.var_1100 = this.color;
         }
         return this._colorTransform;
      }
      
      public function get alpha() : Number
      {
         return ((this.color & 4278190080) >>> 24) / 255;
      }
      
      protected final function method_394(param1:class_62) : class_62
      {
         var _loc2_:* = null;
         param1.color = this.color;
         param1.scale = this.scale;
         param1.mass = this.mass;
         param1.var_169 = this.var_169;
         param1.lifetime = this.lifetime;
         param1.var_673 = this.var_673;
         param1.var_358 = this.var_358;
         param1.var_492 = this.var_492;
         param1.image = this.image;
         if(this.var_602)
         {
            param1.var_602 = new Dictionary(true);
            for(_loc2_ in this.var_602)
            {
               param1.var_602[_loc2_] = this.var_602[_loc2_];
            }
         }
         return param1;
      }
      
      public function clone(param1:class_91 = null) : class_62
      {
         var _loc2_:* = null;
         if(param1)
         {
            _loc2_ = param1.method_258();
         }
         else
         {
            _loc2_ = new class_62();
         }
         return this.method_394(_loc2_);
      }
      
      public final function method_842() : void
      {
         this.lifetime = 0;
         this.var_673 = 0;
         this.var_358 = 1;
         this.var_492 = false;
      }
   }
}
