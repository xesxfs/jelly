package package_29
{
   import package_32.class_230;
   import zpp_nape.phys.class_244;
   import zpp_nape.util.ZPP_ShapeList;
   
   public final class class_199
   {
       
      
      public var zpp_inner:class_244;
      
      public function class_199(param1:Number = 0.0, param2:Number = 1.0, param3:Number = 2.0, param4:Number = 1, param5:Number = 0.001)
      {
         zpp_inner = null;
         if(class_244.var_72 == null)
         {
            zpp_inner = new class_244();
         }
         else
         {
            zpp_inner = class_244.var_72;
            class_244.var_72 = zpp_inner.next;
            zpp_inner.next = null;
         }
         null;
         zpp_inner.outer = this;
         if(param1 != zpp_inner.name_16)
         {
            zpp_inner.name_16 = param1 / 1;
            zpp_inner.invalidate(class_244.WAKE | class_244.var_566);
         }
         zpp_inner.name_16;
         if(param2 != zpp_inner.name_28)
         {
            zpp_inner.name_28 = param2 / 1;
            zpp_inner.invalidate(class_244.WAKE | class_244.var_914 | class_244.var_566);
         }
         zpp_inner.name_28;
         if(param3 != zpp_inner.name_33)
         {
            zpp_inner.name_33 = param3 / 1;
            zpp_inner.invalidate(class_244.WAKE | class_244.var_566);
         }
         zpp_inner.name_33;
         if(param4 != zpp_inner.name_25 * 1000)
         {
            zpp_inner.name_25 = param4 / 1000;
            zpp_inner.invalidate(class_244.WAKE | class_244.var_951);
         }
         zpp_inner.name_25 * 1000;
         if(param5 != zpp_inner.name_31)
         {
            zpp_inner.name_31 = param5 / 1;
            zpp_inner.invalidate(class_244.WAKE | class_244.var_566);
         }
         zpp_inner.name_31;
      }
      
      public static function method_918() : class_199
      {
         return new class_199(0.4,0.2,0.38,0.7,0.005);
      }
      
      public static function method_897() : class_199
      {
         return new class_199(0.2,0.57,0.74,7.8,0.001);
      }
      
      public static function method_162() : class_199
      {
         return new class_199(0.3,0.03,0.1,0.9,0.0001);
      }
      
      public static function method_762() : class_199
      {
         return new class_199(0.8,1,1.4,1.5,0.01);
      }
      
      public static function method_854() : class_199
      {
         return new class_199(0.4,0.4,0.94,2.6,0.002);
      }
      
      public static function method_787() : class_199
      {
         return new class_199(-1,0.45,0.6,1.6,16);
      }
      
      public final function toString() : String
      {
         return class_2.method_14(-1820302645) + zpp_inner.name_16 + class_2.method_14(-1820302683) + zpp_inner.name_28 + class_2.method_14(-1820302820) + zpp_inner.name_33 + class_2.method_14(-1820302572) + zpp_inner.name_25 * 1000 + class_2.method_14(-1820302559) + zpp_inner.name_31 + class_2.method_14(-1820302790);
      }
      
      public function set name_33(param1:Number) : Number
      {
         if(param1 != zpp_inner.name_33)
         {
            zpp_inner.name_33 = param1 / 1;
            zpp_inner.invalidate(class_244.WAKE | class_244.var_566);
         }
         return zpp_inner.name_33;
      }
      
      public function set name_31(param1:Number) : Number
      {
         if(param1 != zpp_inner.name_31)
         {
            zpp_inner.name_31 = param1 / 1;
            zpp_inner.invalidate(class_244.WAKE | class_244.var_566);
         }
         return zpp_inner.name_31;
      }
      
      public function set name_16(param1:Number) : Number
      {
         if(param1 != zpp_inner.name_16)
         {
            zpp_inner.name_16 = param1 / 1;
            zpp_inner.invalidate(class_244.WAKE | class_244.var_566);
         }
         return zpp_inner.name_16;
      }
      
      public function set name_28(param1:Number) : Number
      {
         if(param1 != zpp_inner.name_28)
         {
            zpp_inner.name_28 = param1 / 1;
            zpp_inner.invalidate(class_244.WAKE | class_244.var_914 | class_244.var_566);
         }
         return zpp_inner.name_28;
      }
      
      public function set name_25(param1:Number) : Number
      {
         if(param1 != zpp_inner.name_25 * 1000)
         {
            zpp_inner.name_25 = param1 / 1000;
            zpp_inner.invalidate(class_244.WAKE | class_244.var_951);
         }
         return zpp_inner.name_25 * 1000;
      }
      
      public function get name_21() : *
      {
         if(zpp_inner.name_21 == null)
         {
            zpp_inner.name_21 = {};
         }
         return zpp_inner.name_21;
      }
      
      public function get name_33() : Number
      {
         return zpp_inner.name_33;
      }
      
      public function get shapes() : class_230
      {
         if(zpp_inner.var_222 == null)
         {
            zpp_inner.var_222 = ZPP_ShapeList.method_65(zpp_inner.shapes,true);
         }
         return zpp_inner.var_222;
      }
      
      public function get name_31() : Number
      {
         return zpp_inner.name_31;
      }
      
      public function get name_16() : Number
      {
         return zpp_inner.name_16;
      }
      
      public function get name_28() : Number
      {
         return zpp_inner.name_28;
      }
      
      public function get name_25() : Number
      {
         return zpp_inner.name_25 * 1000;
      }
      
      public final function copy() : class_199
      {
         var _loc1_:class_199 = new class_199(zpp_inner.name_16,zpp_inner.name_28,zpp_inner.name_33,zpp_inner.name_25 * 1000,zpp_inner.name_31);
         if(zpp_inner.name_21 != null)
         {
            _loc1_.zpp_inner.name_21 = Reflect.copy(zpp_inner.name_21);
         }
         return _loc1_;
      }
   }
}
