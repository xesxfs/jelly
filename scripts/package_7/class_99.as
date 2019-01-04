package package_7
{
   import flash.display.DisplayObject;
   
   public final class class_99 extends class_98
   {
       
      
      public function class_99(param1:Number = 0, param2:DisplayObject = null, param3:Number = 1)
      {
         super(param1,param2,param3);
      }
      
      override public function get power() : Number
      {
         return -super.power;
      }
      
      override public function set power(param1:Number) : void
      {
         super.power = -param1;
      }
   }
}
