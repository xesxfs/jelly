package package_7
{
   import flash.geom.Point;
   import package_15.class_59;
   import package_16.class_62;
   import package_20.Particle2D;
   import package_6.class_29;
   import package_8.class_31;
   import package_9.class_38;
   
   public final class TweenToCurrentPosition extends class_29 implements class_31
   {
       
      
      private var var_898:class_38;
      
      public function TweenToCurrentPosition(param1:class_38)
      {
         super();
         this.var_898 = param1;
         priority = -10;
      }
      
      public function get method_125() : class_38
      {
         return this.var_898;
      }
      
      public function set method_125(param1:class_38) : void
      {
         this.var_898 = param1;
      }
      
      override public function method_126(param1:class_59) : void
      {
         if(!param1.method_471(this))
         {
            param1.addInitializer(this);
         }
      }
      
      override public function method_163(param1:class_59) : void
      {
         param1.method_314(this);
      }
      
      public function initialize(param1:class_59, param2:class_62) : void
      {
         var _loc3_:Particle2D = Particle2D(param2);
         var _loc4_:Point = this.var_898.getLocation();
         var _loc5_:TweenToPositionData = new TweenToPositionData(_loc4_.x,_loc4_.y,_loc3_.x,_loc3_.y);
         _loc3_.method_151["[object TweenToCurrentPosition]"] = _loc5_;
      }
      
      override public function update(param1:class_59, param2:class_62, param3:Number) : void
      {
         var _loc5_:* = null;
         var _loc4_:Particle2D = Particle2D(param2);
         if(!_loc4_.method_151["[object TweenToCurrentPosition]"])
         {
            this.initialize(param1,param2);
         }
         _loc5_ = _loc4_.method_151["[object TweenToCurrentPosition]"];
         _loc4_.x = _loc5_.endX + _loc5_.diffX * _loc4_.var_358;
         _loc4_.y = _loc5_.endY + _loc5_.diffY * _loc4_.var_358;
      }
   }
}

class TweenToPositionData
{
    
   
   public var diffX:Number;
   
   public var diffY:Number;
   
   public var endX:Number;
   
   public var endY:Number;
   
   function TweenToPositionData(param1:Number, param2:Number, param3:Number, param4:Number)
   {
      super();
      this.diffX = param1 - param3;
      this.diffY = param2 - param4;
      this.endX = param3;
      this.endY = param4;
   }
}
