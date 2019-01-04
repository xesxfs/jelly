package package_4
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.filters.BitmapFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import org.flintparticles.common.renderers.class_24;
   import package_20.Particle2D;
   
   public class class_25 extends class_24
   {
      
      protected static var var_863:Point = new Point(0,0);
       
      
      protected var var_458:Bitmap;
      
      protected var var_322:BitmapData;
      
      protected var var_571:Array;
      
      protected var var_573:Array;
      
      protected var var_521:Array;
      
      protected var var_828:Boolean;
      
      protected var var_317:Rectangle;
      
      protected var var_758:Boolean;
      
      private var var_804:Boolean = true;
      
      public function class_25(param1:Rectangle = null, param2:Boolean = false)
      {
         super();
         mouseEnabled = false;
         mouseChildren = false;
         this.var_828 = param2;
         this.var_758 = true;
         this.var_571 = new Array();
         this.var_573 = new Array();
         if(param1 == null)
         {
            this.var_317 = new Rectangle(0,0,0,0);
         }
         else
         {
            this.var_317 = param1;
         }
         this.method_451();
      }
      
      public final function addFilter(param1:BitmapFilter, param2:Boolean = false) : void
      {
         if(param2)
         {
            this.var_573.push(param1);
         }
         else
         {
            this.var_571.push(param1);
         }
      }
      
      public final function removeFilter(param1:BitmapFilter) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.var_571.length)
         {
            if(this.var_571[_loc2_] == param1)
            {
               this.var_571.splice(_loc2_,1);
               return;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.var_573.length)
         {
            if(this.var_573[_loc2_] == param1)
            {
               this.var_573.splice(_loc2_,1);
               return;
            }
            _loc2_++;
         }
      }
      
      public function get method_426() : Array
      {
         return this.var_571.slice();
      }
      
      public function set method_426(param1:Array) : void
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_571)
         {
            this.removeFilter(_loc2_);
         }
         for each(_loc2_ in param1)
         {
            this.addFilter(_loc2_,false);
         }
      }
      
      public function get method_363() : Array
      {
         return this.var_573.slice();
      }
      
      public function set method_363(param1:Array) : void
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_573)
         {
            this.removeFilter(_loc2_);
         }
         for each(_loc2_ in param1)
         {
            this.addFilter(_loc2_,true);
         }
      }
      
      public function get method_377() : Boolean
      {
         return this.var_758;
      }
      
      public function set method_377(param1:Boolean) : void
      {
         this.var_758 = param1;
      }
      
      public final function method_736(param1:Array = null, param2:Array = null, param3:Array = null, param4:Array = null) : void
      {
         this.var_521 = new Array(4);
         this.var_521[0] = param4;
         this.var_521[1] = param1;
         this.var_521[2] = param2;
         this.var_521[3] = param3;
      }
      
      public final function method_694() : void
      {
         this.var_521 = null;
      }
      
      protected final function method_451() : void
      {
         if(this.var_458 && this.var_322)
         {
            this.var_322.dispose();
            this.var_322 = null;
         }
         if(this.var_458)
         {
            removeChild(this.var_458);
            this.var_458 = null;
         }
         if(!this.var_317 || this.var_317.width == 0 || this.var_317.height == 0)
         {
            return;
         }
         this.var_458 = new Bitmap(null,"auto",this.var_828);
         this.var_322 = new BitmapData(Math.ceil(this.var_317.width),Math.ceil(this.var_317.height),true,0);
         this.var_458.bitmapData = this.var_322;
         addChild(this.var_458);
         this.var_458.x = this.var_317.x;
         this.var_458.y = this.var_317.y;
      }
      
      public function get method_405() : Rectangle
      {
         return this.var_317;
      }
      
      public function set method_405(param1:Rectangle) : void
      {
         this.var_317 = param1;
         this.var_804 = true;
         invalidateDisplayList();
      }
      
      public function get method_636() : Number
      {
         return this.var_317.x;
      }
      
      public function set method_636(param1:Number) : void
      {
         this.var_317.x = param1;
         this.var_804 = true;
         invalidateDisplayList();
      }
      
      public function get method_627() : Number
      {
         return this.var_317.y;
      }
      
      public function set method_627(param1:Number) : void
      {
         this.var_317.y = param1;
         this.var_804 = true;
         invalidateDisplayList();
      }
      
      override public function set width(param1:Number) : void
      {
         super.width = param1;
         this.var_317.width = param1;
         this.var_804 = true;
         invalidateDisplayList();
      }
      
      override public function set height(param1:Number) : void
      {
         super.height = param1;
         this.var_317.height = param1;
         this.var_804 = true;
         invalidateDisplayList();
      }
      
      public function get smoothing() : Boolean
      {
         return this.var_828;
      }
      
      public function set smoothing(param1:Boolean) : void
      {
         this.var_828 = param1;
         if(this.var_458)
         {
            this.var_458.smoothing = param1;
         }
      }
      
      override protected function method_449(param1:Array) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(!this.var_458)
         {
            return;
         }
         this.var_322.lock();
         _loc3_ = this.var_571.length;
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_322.applyFilter(this.var_322,this.var_322.rect,class_25.var_863,this.var_571[_loc2_]);
            _loc2_++;
         }
         if(this.var_758 && _loc3_ == 0)
         {
            this.var_322.fillRect(this.var_458.bitmapData.rect,0);
         }
         _loc3_ = param1.length;
         if(_loc3_)
         {
            _loc2_ = _loc3_;
            while(_loc2_--)
            {
               this.method_672(Particle2D(param1[_loc2_]));
            }
         }
         _loc3_ = this.var_573.length;
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_322.applyFilter(this.var_322,this.var_322.rect,class_25.var_863,this.var_573[_loc2_]);
            _loc2_++;
         }
         if(this.var_521)
         {
            this.var_322.paletteMap(this.var_322,this.var_322.rect,var_863,this.var_521[1],this.var_521[2],this.var_521[3],this.var_521[0]);
         }
         this.var_322.unlock();
      }
      
      protected function method_672(param1:Particle2D) : void
      {
         var _loc2_:* = null;
         _loc2_ = param1.method_244;
         _loc2_.translate(-this.var_317.x,-this.var_317.y);
         this.var_322.draw(param1.image,_loc2_,param1.colorTransform,DisplayObject(param1.image).blendMode,null,this.var_828);
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.var_322;
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         super.updateDisplayList(param1,param2);
         if(this.var_804)
         {
            this.method_451();
         }
      }
   }
}
