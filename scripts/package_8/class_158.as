package package_8
{
   import package_15.class_59;
   import package_16.class_62;
   
   public final class class_158 extends class_32
   {
       
      
      private var _properties:Object;
      
      public function class_158(param1:Object)
      {
         super();
         var_921 = -10;
         this._properties = param1;
      }
      
      public function get properties() : Object
      {
         return this._properties;
      }
      
      public function set properties(param1:Object) : void
      {
         this._properties = param1;
      }
      
      override public function initialize(param1:class_59, param2:class_62) : void
      {
         var _loc4_:* = null;
         if(!param2.image)
         {
            throw new Error(class_2.method_14(-1820302476));
         }
         var _loc3_:Object = param2.image;
         for(_loc4_ in this._properties)
         {
            if(_loc3_.hasOwnProperty(_loc4_))
            {
               _loc3_[_loc4_] = this._properties[_loc4_];
            }
         }
      }
   }
}
