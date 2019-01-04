package org.flintparticles.common.utils
{
   import flash.display.DisplayObject;
   
   public final class class_85
   {
       
      
      public function class_85()
      {
         super();
      }
      
      public static function method_522(param1:DisplayObject, param2:Number) : Number
      {
         var _loc3_:Number = param2 + param1.rotation;
         var _loc4_:DisplayObject = param1.parent;
         while(_loc4_ && _loc4_ != param1.stage)
         {
            _loc3_ = _loc3_ + _loc4_.rotation;
            _loc4_ = _loc4_.parent;
         }
         return _loc3_;
      }
      
      public static function method_512(param1:DisplayObject, param2:Number) : Number
      {
         var _loc3_:Number = param2 - param1.rotation;
         var _loc4_:DisplayObject = param1.parent;
         while(_loc4_ && _loc4_ != param1.stage)
         {
            _loc3_ = _loc3_ - _loc4_.rotation;
            _loc4_ = _loc4_.parent;
         }
         return _loc3_;
      }
   }
}
