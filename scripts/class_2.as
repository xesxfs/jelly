package
{
   import flash.display.Sprite;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class class_2 extends Sprite
   {
      
      private static var var_24:Class = class_4;
      
      private static var var_19:Class = class_7;
      
      private static var var_23:Class = class_3;
      
      private static var var_20:Array = new Array();
      
      private static var var_17:Array = new Array();
      
      private static var var_15:Boolean = false;
      
      private static var var_26:int;
       
      
      public function class_2()
      {
         super();
      }
      
      private static function method_9() : void
      {
         var _loc1_:ByteArray = new var_24() as ByteArray;
         var _loc2_:ByteArray = new var_19() as ByteArray;
         var _loc3_:ByteArray = new var_23() as ByteArray;
         _loc3_.endian = Endian.LITTLE_ENDIAN;
         var_26 = _loc3_.readInt();
         var _loc4_:int = _loc2_.readByte();
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            method_7(_loc2_);
            _loc5_++;
         }
         _loc4_ = _loc1_.readInt();
         var _loc6_:int = 0;
         while(_loc6_ < _loc4_)
         {
            method_11(_loc1_,var_17[_loc6_ % var_17.length]);
            _loc6_++;
         }
         var_15 = true;
      }
      
      private static function method_11(param1:ByteArray, param2:ByteArray) : void
      {
         var _loc3_:int = param1.readInt();
         var _loc4_:ByteArray = new ByteArray();
         param1.readBytes(_loc4_,0,_loc3_);
         var _loc5_:class_6 = new class_6(new class_5(param2));
         _loc5_.method_5(_loc4_);
         _loc4_.position = 0;
         var_20.push(_loc4_.readUTFBytes(_loc4_.length));
      }
      
      private static function method_7(param1:ByteArray) : void
      {
         var _loc2_:ByteArray = new ByteArray();
         param1.readBytes(_loc2_,0,16);
         _loc2_.position = 0;
         var_17.push(_loc2_);
      }
      
      public static function method_14(param1:int) : String
      {
         if(!var_15)
         {
            method_9();
         }
         return var_20[param1 ^ var_26];
      }
   }
}
