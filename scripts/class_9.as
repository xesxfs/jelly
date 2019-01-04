package
{
   import flash.utils.ByteArray;
   
   public class class_9
   {
       
      
      private var var_16:uint;
      
      public function class_9(param1:uint = 0)
      {
         super();
         this.var_16 = param1;
      }
      
      public function method_16(param1:ByteArray) : void
      {
         var _loc2_:uint = this.var_16 - param1.length % this.var_16;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1[param1.length] = _loc2_;
            _loc3_++;
         }
      }
      
      public function method_18(param1:ByteArray) : void
      {
         var _loc4_:* = 0;
         var _loc2_:uint = param1.length % this.var_16;
         if(_loc2_ != 0)
         {
            throw new Error("PKCS#5::unpad: ByteArray.length isn\'t a multiple of the blockSize");
         }
         _loc2_ = param1[param1.length - 1];
         var _loc3_:uint = _loc2_;
         while(_loc3_ > 0)
         {
            _loc4_ = uint(param1[param1.length - 1]);
            param1.length--;
            if(_loc2_ != _loc4_)
            {
               throw new Error("PKCS#5:unpad: Invalid padding value. expected [" + _loc2_ + "], found [" + _loc4_ + "]");
            }
            _loc3_--;
         }
      }
      
      public function method_13(param1:uint) : void
      {
         this.var_16 = param1;
      }
   }
}
