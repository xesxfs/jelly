package
{
   import flash.utils.ByteArray;
   
   public class class_6
   {
       
      
      private var var_5:class_5;
      
      private var var_18:class_9;
      
      public function class_6(param1:class_5, param2:class_9 = null)
      {
         super();
         this.var_5 = param1;
         if(param2 == null)
         {
            param2 = new class_9(param1.method_1());
         }
         else
         {
            param2.method_13(param1.method_1());
         }
         this.var_18 = param2;
      }
      
      public function method_1() : uint
      {
         return this.var_5.method_1();
      }
      
      public function method_3(param1:ByteArray) : void
      {
         this.var_18.method_16(param1);
         param1.position = 0;
         var _loc2_:uint = this.var_5.method_1();
         var _loc3_:ByteArray = new ByteArray();
         var _loc4_:ByteArray = new ByteArray();
         var _loc5_:* = 0;
         while(_loc5_ < param1.length)
         {
            _loc3_.length = 0;
            param1.readBytes(_loc3_,0,_loc2_);
            this.var_5.method_3(_loc3_);
            _loc4_.writeBytes(_loc3_);
            _loc5_ = uint(_loc5_ + _loc2_);
         }
         param1.length = 0;
         param1.writeBytes(_loc4_);
      }
      
      public function method_5(param1:ByteArray) : void
      {
         param1.position = 0;
         var _loc2_:uint = this.var_5.method_1();
         if(param1.length % _loc2_ != 0)
         {
            throw new Error("ECB " + _loc2_);
         }
         var _loc3_:ByteArray = new ByteArray();
         var _loc4_:ByteArray = new ByteArray();
         var _loc5_:* = 0;
         while(_loc5_ < param1.length)
         {
            _loc3_.length = 0;
            param1.readBytes(_loc3_,0,_loc2_);
            this.var_5.method_5(_loc3_);
            _loc4_.writeBytes(_loc3_);
            _loc5_ = uint(_loc5_ + _loc2_);
         }
         this.var_18.method_18(_loc4_);
         param1.length = 0;
         param1.writeBytes(_loc4_);
      }
      
      public function method_6() : void
      {
         this.var_5.method_6();
         this.var_5 = null;
         this.var_18 = null;
      }
   }
}
