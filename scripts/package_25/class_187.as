package package_25
{
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.ui.Mouse;
   import flash.ui.MouseCursorData;
   import flash.utils.getQualifiedClassName;
   import flash.utils.getQualifiedSuperclassName;
   
   public final class class_187
   {
       
      
      public var name:String;
      
      private var fps:Number;
      
      private var hotSpot:Point;
      
      private var data:Vector.<BitmapData>;
      
      public function class_187()
      {
         super();
         this.data = new Vector.<BitmapData>();
         this.name = "";
      }
      
      public final function method_581(param1:Class, param2:String = null, param3:Point = null, param4:Number = NaN) : void
      {
         if(param2 == null)
         {
            this.name = getQualifiedClassName(param1);
         }
         else
         {
            this.name = param2;
         }
         if(param3 != null)
         {
            this.hotSpot = param3;
         }
         if(param4 != NaN)
         {
            this.fps = param4;
         }
         if(getQualifiedSuperclassName(param1) == class_2.method_14(-1820302652))
         {
            this.method_660(new param1());
         }
         else
         {
            this.method_651(new param1());
         }
      }
      
      private final function method_660(param1:MovieClip) : void
      {
         var _loc2_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         if(param1[class_2.method_14(-1820302773)])
         {
            _loc5_ = param1[class_2.method_14(-1820302773)] as Sprite;
            _loc2_ = new Rectangle(_loc5_.x,_loc5_.y,_loc5_.width,_loc5_.height);
            _loc5_.visible = false;
         }
         else
         {
            _loc2_ = this.method_560(param1);
         }
         if(_loc2_.width > 32 || _loc2_.height > 32)
         {
            throw new Error(class_2.method_14(-1820302755) + this.name + class_2.method_14(-1820302519));
         }
         if(_loc2_.width == 0 || _loc2_.height == 0)
         {
            throw new Error(class_2.method_14(-1820302755) + this.name + class_2.method_14(-1820302750));
         }
         var _loc3_:int = param1.totalFrames;
         var _loc4_:int = 1;
         while(_loc4_ < _loc3_ + 1)
         {
            param1.gotoAndStop(_loc4_);
            this.method_408(param1,_loc4_);
            _loc6_ = new BitmapData(Math.ceil(_loc2_.width),_loc2_.height,true,0);
            _loc6_.draw(param1,new Matrix(1,0,0,1,-_loc2_.x,-_loc2_.y));
            this.data[this.data.length] = _loc6_;
            _loc4_++;
         }
         this.method_490();
      }
      
      private final function method_651(param1:*) : void
      {
         var _loc2_:BitmapData = new BitmapData(32,32,true,0);
         _loc2_.draw(param1);
         this.data[this.data.length] = _loc2_;
         this.method_490();
      }
      
      private final function method_490() : void
      {
         var _loc1_:MouseCursorData = new MouseCursorData();
         _loc1_.data = this.data;
         if(this.hotSpot != null)
         {
            _loc1_.hotSpot = this.hotSpot;
         }
         if(this.fps != NaN)
         {
            _loc1_.frameRate = this.fps;
         }
         Mouse.registerCursor(this.name,_loc1_);
      }
      
      private final function method_560(param1:MovieClip) : Rectangle
      {
         var _loc6_:* = null;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc7_:int = 1;
         while(_loc7_ < param1.totalFrames + 1)
         {
            param1.gotoAndStop(_loc7_);
            this.method_408(param1,_loc7_);
            _loc6_ = param1.getBounds(param1);
            _loc2_ = Number(Math.min(_loc2_,_loc6_.topLeft.x));
            _loc4_ = Number(Math.min(_loc4_,_loc6_.topLeft.y));
            _loc3_ = Number(Math.max(_loc3_,_loc6_.bottomRight.x));
            _loc5_ = Number(Math.max(_loc5_,_loc6_.bottomRight.y));
            _loc7_++;
         }
         param1.gotoAndStop(1);
         return new Rectangle(_loc2_,_loc4_,_loc3_ - _loc2_,_loc5_ - _loc4_);
      }
      
      private final function method_408(param1:MovieClip, param2:int) : void
      {
         var _loc3_:int = param1.numChildren;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(param1.getChildAt(_loc4_) is MovieClip)
            {
               this.method_408(param1.getChildAt(_loc4_) as MovieClip,param2);
               (param1.getChildAt(_loc4_) as MovieClip).gotoAndStop(param2);
            }
            _loc4_++;
         }
      }
   }
}
