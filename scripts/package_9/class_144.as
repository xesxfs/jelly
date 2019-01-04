package package_9
{
   import flash.display.DisplayObject;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import package_20.Particle2D;
   
   public final class class_144 implements class_38
   {
       
      
      private var var_531:DisplayObject;
      
      private var var_630:DisplayObject;
      
      private var var_892:Number;
      
      public function class_144(param1:DisplayObject = null, param2:DisplayObject = null)
      {
         super();
         this.var_531 = param1;
         this.var_630 = param2;
         this.method_487();
      }
      
      private final function method_487() : void
      {
         var _loc5_:int = 0;
         if(!this.var_531)
         {
            return;
         }
         var _loc1_:Rectangle = this.var_531.getBounds(this.var_531.stage);
         this.var_892 = 0;
         var _loc2_:Number = _loc1_.right;
         var _loc3_:Number = _loc1_.bottom;
         var _loc4_:int = _loc1_.left;
         while(_loc4_ <= _loc2_)
         {
            _loc5_ = _loc1_.top;
            while(_loc5_ <= _loc3_)
            {
               if(this.var_531.hitTestPoint(_loc4_,_loc5_,true))
               {
                  this.var_892++;
               }
               _loc5_++;
            }
            _loc4_++;
         }
      }
      
      public function get displayObject() : DisplayObject
      {
         return this.var_531;
      }
      
      public function set displayObject(param1:DisplayObject) : void
      {
         this.var_531 = param1;
         this.method_487();
      }
      
      public function get method_140() : DisplayObject
      {
         return this.var_630;
      }
      
      public function set method_140(param1:DisplayObject) : void
      {
         this.var_630 = param1;
      }
      
      public function contains(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Point = new Point(param1,param2);
         _loc3_ = this.var_630.localToGlobal(_loc3_);
         return this.var_531.hitTestPoint(_loc3_.x,_loc3_.y,true);
      }
      
      public function getLocation() : Point
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc1_:Rectangle = this.var_531.getBounds(this.var_531.root);
         do
         {
            _loc3_ = _loc1_.left + Math.random() * _loc1_.width;
            _loc4_ = _loc1_.top + Math.random() * _loc1_.height;
         }
         while(!this.var_531.hitTestPoint(_loc3_,_loc4_,true));
         
         var _loc2_:Point = new Point(_loc3_,_loc4_);
         _loc2_ = this.var_630.globalToLocal(this.displayObject.root.localToGlobal(_loc2_));
         return _loc2_;
      }
      
      public function method_198() : Number
      {
         return this.var_892;
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
