package package_10
{
   import flash.display.Shape;
   
   public final class class_104 extends Shape
   {
       
      
      private var var_877:Number;
      
      private var var_834:Number;
      
      private var _color:uint;
      
      public function class_104(param1:Number = 1, param2:Number = 1, param3:uint = 16777215, param4:String = "normal")
      {
         super();
         this.var_877 = param1;
         this.var_834 = param2;
         this._color = param3;
         this.draw();
         blendMode = param4;
      }
      
      private final function draw() : void
      {
         if(this.var_877 > 0 && this.var_834 > 0)
         {
            graphics.clear();
            graphics.beginFill(this._color);
            graphics.drawEllipse(0,0,this.var_877,this.var_834);
            graphics.endFill();
         }
      }
      
      public function get method_551() : Number
      {
         return this.var_877;
      }
      
      public function set method_551(param1:Number) : void
      {
         this.var_877 = param1;
         this.draw();
      }
      
      public function get method_673() : Number
      {
         return this.var_834;
      }
      
      public function set method_673(param1:Number) : void
      {
         this.var_834 = param1;
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
