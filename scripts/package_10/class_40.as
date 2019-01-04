package package_10
{
   import flash.display.Shape;
   
   public final class class_40 extends Shape
   {
       
      
      private var var_218:Number;
      
      private var _color:uint;
      
      public function class_40(param1:Number = 1, param2:uint = 16777215, param3:String = "normal")
      {
         super();
         this.var_218 = param1;
         this._color = param2;
         this.draw();
         blendMode = param3;
      }
      
      private final function draw() : void
      {
         graphics.clear();
         graphics.lineStyle(1,this._color);
         graphics.moveTo(-this.var_218 * 0.5,0);
         graphics.lineTo(this.var_218 * 0.5,0);
      }
      
      public function get length() : Number
      {
         return this.var_218;
      }
      
      public function set length(param1:Number) : void
      {
         this.var_218 = param1;
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
