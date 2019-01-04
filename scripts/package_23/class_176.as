package package_23
{
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   
   public final class class_176
   {
       
      
      public var name:String;
      
      public var frames:Array;
      
      public var name_72:Number;
      
      public var name_73:Number;
      
      private var bw:Boolean = false;
      
      public function class_176()
      {
         super();
         this.name = class_2.method_14(-1820302589);
         this.frames = [];
         this.name_72 = 0;
         this.name_73 = 0;
      }
      
      public final function method_679(param1:Class) : void
      {
         this.name = getQualifiedClassName(param1);
         if(this.name == "Hero_main" || this.name == "Hero_hand_end")
         {
            this.bw = true;
         }
         this.cacheFromClip(new param1());
      }
      
      public final function cacheFromClip(param1:MovieClip) : void
      {
         var _loc2_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         if(param1["e_bounds"])
         {
            _loc6_ = param1["e_bounds"] as Sprite;
            _loc2_ = new Rectangle(_loc6_.x,_loc6_.y,_loc6_.width,_loc6_.height);
            _loc6_.visible = false;
         }
         else
         {
            _loc2_ = this.method_560(param1);
         }
         if(Math.ceil(_loc2_.width) == 0 || Math.ceil(_loc2_.height) == 0)
         {
            throw new Error(class_2.method_14(-1820302611) + this.name + class_2.method_14(-1820302649));
         }
         var _loc3_:Matrix = new Matrix();
         var _loc4_:int = param1.totalFrames;
         var _loc5_:int = 1;
         while(_loc5_ <= _loc4_)
         {
            param1.gotoAndStop(_loc5_);
            this.method_424(param1,_loc5_);
            _loc7_ = new BitmapData(Math.ceil(_loc2_.width),Math.ceil(_loc2_.height),true,0);
            _loc3_.identity();
            _loc3_.translate(-_loc2_.x,-_loc2_.y);
            _loc3_.scale(param1.scaleX,param1.scaleY);
            _loc7_.draw(param1,_loc3_);
            if(this.bw)
            {
               _loc8_ = [0.3,0.6,0.1,0,0,0.3,0.6,0.1,0,0,0.3,0.6,0.1,0,0,0,0,0,1,0];
               _loc9_ = new ColorMatrixFilter(_loc8_);
               _loc7_.applyFilter(_loc7_,new Rectangle(0,0,_loc7_.width,_loc7_.height),new Point(0,0),_loc9_);
            }
            this.frames[this.frames.length] = _loc7_;
            _loc5_++;
         }
         this.name_72 = _loc2_.x;
         this.name_73 = _loc2_.y;
      }
      
      public final function clone() : class_176
      {
         var _loc1_:class_176 = new class_176();
         _loc1_.name = this.name;
         _loc1_.frames = this.frames;
         _loc1_.name_72 = this.name_72;
         _loc1_.name_73 = this.name_73;
         return _loc1_;
      }
      
      protected final function method_560(param1:MovieClip) : Rectangle
      {
         var _loc4_:* = null;
         var _loc2_:Point = new Point();
         var _loc3_:Point = new Point();
         var _loc5_:int = param1.totalFrames;
         var _loc6_:int = 1;
         while(_loc6_ <= _loc5_)
         {
            param1.gotoAndStop(_loc6_);
            this.method_424(param1,_loc6_);
            _loc4_ = param1.getBounds(param1);
            _loc2_.x = Math.min(_loc4_.topLeft.x,_loc2_.x);
            _loc2_.y = Math.min(_loc4_.topLeft.y,_loc2_.y);
            _loc3_.x = Math.max(_loc4_.bottomRight.x,_loc3_.x);
            _loc3_.y = Math.max(_loc4_.bottomRight.y,_loc3_.y);
            _loc6_++;
         }
         param1.gotoAndStop(1);
         return new Rectangle(_loc2_.x,_loc2_.y,_loc3_.x - _loc2_.x,_loc3_.y - _loc2_.y);
      }
      
      protected final function method_424(param1:MovieClip, param2:int) : void
      {
         var _loc3_:* = null;
         var _loc4_:int = param1.numChildren;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc3_ = param1.getChildAt(_loc5_);
            if(_loc3_ is MovieClip)
            {
               this.method_424(_loc3_ as MovieClip,param2);
               _loc3_.gotoAndStop(param2);
            }
            _loc5_++;
         }
      }
   }
}
