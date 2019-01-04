package package_10
{
   import flash.display.Shape;
   
   public final class class_89 extends Shape
   {
       
      
      private var var_504:Number;
      
      private var var_464:Number;
      
      private var _color:uint;
      
      public function class_89(param1:Number = 1, param2:Number = 2, param3:uint = 16777215, param4:String = "normal")
      {
         super();
         this.var_504 = param2;
         this.var_464 = param1;
         this._color = param3;
         this.draw();
         blendMode = param4;
      }
      
      private final function draw() : void
      {
         graphics.clear();
         graphics.beginFill(this._color);
         graphics.drawCircle(0,0,this.var_504);
         graphics.drawCircle(0,0,this.var_464);
         graphics.endFill();
      }
      
      public function get method_274() : Number
      {
         return this.var_504;
      }
      
      public function set method_274(param1:Number) : void
      {
         this.var_504 = param1;
         this.draw();
      }
      
      public function get method_216() : Number
      {
         return this.var_464;
      }
      
      public function set method_216(param1:Number) : void
      {
         this.var_464 = param1;
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
