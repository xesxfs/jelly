package package_10
{
   import flash.display.Shape;
   
   public final class class_154 extends Shape
   {
       
      
      private var var_515:Number;
      
      private var _color:uint;
      
      public function class_154(param1:Number = 1, param2:uint = 16777215, param3:String = "normal")
      {
         super();
         this.var_515 = param1;
         this._color = param2;
         this.draw();
         blendMode = param3;
      }
      
      private final function draw() : void
      {
         graphics.clear();
         graphics.beginFill(this._color);
         graphics.drawCircle(0,0,this.var_515);
         graphics.endFill();
      }
      
      public function get radius() : Number
      {
         return this.var_515;
      }
      
      public function set radius(param1:Number) : void
      {
         this.var_515 = param1;
         this.draw();
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function set color(param1:uint) : void
      {
         this._color = param1;
         this.draw();
      }
   }
}
