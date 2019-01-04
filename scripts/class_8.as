package
{
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.text.Font;
   import flash.utils.ByteArray;
   import flash.utils.getTimer;
   
   public class class_8
   {
       
      
      private var var_1:class_11;
      
      private var var_28:Boolean = false;
      
      private var var_12:ByteArray;
      
      private var name_1:int;
      
      private var var_11:int;
      
      private var var_27:Boolean = false;
      
      public function class_8(param1:Class = null)
      {
         var _loc2_:* = 0;
         super();
         if(param1 == null)
         {
            param1 = class_10;
         }
         this.var_1 = new param1() as class_11;
         this.name_1 = this.var_1.method_22();
         this.var_12 = new ByteArray();
         this.var_11 = 0;
         while(this.var_11 < this.name_1)
         {
            _loc2_ = uint(65536 * Math.random());
            this.var_12[this.var_11++] = _loc2_ >>> 8;
            this.var_12[this.var_11++] = _loc2_ & 255;
         }
         this.var_11 = 0;
         this.method_10();
      }
      
      public function method_10(param1:int = 0) : void
      {
         if(param1 == 0)
         {
            param1 = new Date().getTime();
         }
         var _loc2_:* = this.var_11++;
         this.var_12[_loc2_] = this.var_12[_loc2_] ^ param1 & 255;
         this.var_12[this.var_11++] = this.var_12[_loc3_] ^ param1 >> 8 & 255;
         this.var_12[this.var_11++] = this.var_12[this.var_11++] ^ param1 >> 16 & 255;
         this.var_12[this.var_11++] = this.var_12[this.var_11++] ^ param1 >> 24 & 255;
         this.var_11 = this.var_11 % this.name_1;
         this.var_27 = true;
      }
      
      public function method_19() : void
      {
         var _loc3_:* = null;
         var _loc1_:ByteArray = new ByteArray();
         _loc1_.writeUnsignedInt(System.totalMemory);
         _loc1_.writeUTF(Capabilities.serverString);
         _loc1_.writeUnsignedInt(getTimer());
         _loc1_.writeUnsignedInt(new Date().getTime());
         var _loc2_:Array = Font.enumerateFonts(true);
         for each(_loc3_ in _loc2_)
         {
            _loc1_.writeUTF(_loc3_.fontName);
            _loc1_.writeUTF(_loc3_.fontStyle);
            _loc1_.writeUTF(_loc3_.fontType);
         }
         _loc1_.position = 0;
         while(_loc1_.bytesAvailable >= 4)
         {
            this.method_10(_loc1_.readUnsignedInt());
         }
      }
      
      public function method_25(param1:ByteArray, param2:int) : void
      {
         while(param2--)
         {
            param1.writeByte(this.method_2());
         }
      }
      
      public function method_2() : int
      {
         if(!this.var_28)
         {
            if(!this.var_27)
            {
               this.method_19();
            }
            this.var_1.method_17(this.var_12);
            this.var_12.length = 0;
            this.var_11 = 0;
            this.var_28 = true;
         }
         return this.var_1.method_20();
      }
      
      public function method_8() : String
      {
         return "random-" + this.var_1.method_8();
      }
   }
}
