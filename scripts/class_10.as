package
{
   import flash.utils.ByteArray;
   
   public class class_10
   {
       
      
      private var var_4:int = 0;
      
      private var var_14:int = 0;
      
      private var var_9:ByteArray;
      
      private const name_1:uint = 256;
      
      public function class_10(param1:ByteArray = null)
      {
         super();
         this.var_9 = new ByteArray();
         if(param1)
         {
            this.method_17(param1);
         }
      }
      
      public function method_22() : uint
      {
         return this.name_1;
      }
      
      public function method_17(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < 256)
         {
            this.var_9[_loc2_] = _loc2_;
            _loc2_++;
         }
         _loc3_ = 0;
         _loc2_ = 0;
         while(_loc2_ < 256)
         {
            _loc3_ = _loc3_ + this.var_9[_loc2_] + param1[_loc2_ % param1.length] & 255;
            _loc4_ = this.var_9[_loc2_];
            this.var_9[_loc2_] = this.var_9[_loc3_];
            this.var_9[_loc3_] = _loc4_;
            _loc2_++;
         }
         this.var_4 = 0;
         this.var_14 = 0;
      }
      
      public function method_20() : uint
      {
         var _loc1_:int = 0;
         this.var_4 = this.var_4 + 1 & 255;
         this.var_14 = this.var_14 + this.var_9[this.var_4] & 255;
         _loc1_ = this.var_9[this.var_4];
         this.var_9[this.var_4] = this.var_9[this.var_14];
         this.var_9[this.var_14] = _loc1_;
         return this.var_9[_loc1_ + this.var_9[this.var_4] & 255];
      }
      
      public function method_1() : uint
      {
         return 1;
      }
      
      public function method_3(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            param1[_loc2_++] = param1[_loc2_++] ^ this.method_20();
         }
      }
      
      public function method_5(param1:ByteArray) : void
      {
         this.method_3(param1);
      }
      
      public function method_6() : void
      {
         var _loc1_:int = 0;
         if(this.var_9 != null)
         {
            _loc1_ = 0;
            while(_loc1_ < this.var_9.length)
            {
               this.var_9[_loc1_] = Math.random() * 256;
               _loc1_++;
            }
            this.var_9.length = 0;
            this.var_9 = null;
         }
         this.var_4 = 0;
         this.var_14 = 0;
      }
      
      public function method_8() : String
      {
         return "rc4";
      }
   }
}
