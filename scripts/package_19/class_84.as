package package_19
{
   import mx.core.IMXMLObject;
   
   public final class class_84 extends package_18.class_84 implements IMXMLObject
   {
       
      
      public var var_1083:Number = 0;
      
      public var var_1153:Number = 10;
      
      public var var_1150:Boolean = true;
      
      public function class_84()
      {
         super();
      }
      
      public function initialized(param1:Object, param2:String) : void
      {
         if(this.var_1150)
         {
            start();
         }
         if(this.var_1083)
         {
            method_432(this.var_1083,this.var_1153);
         }
      }
   }
}
