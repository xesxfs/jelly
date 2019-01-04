package zpp_nape.phys
{
   import package_29.class_199;
   import package_32.class_230;
   import zpp_nape.shape.ZPP_Shape;
   import zpp_nape.util.ZNPNode_ZPP_Shape;
   import zpp_nape.util.class_292;
   
   public final class class_244
   {
      
      public static var var_72:class_244 = null;
      
      public static var WAKE:int = 1;
      
      public static var var_951:int = 2;
      
      public static var var_914:int = 4;
      
      public static var var_566:int = 8;
       
      
      public var var_222:class_230;
      
      public var name_21;
      
      public var name_33:Number;
      
      public var shapes:class_292;
      
      public var name_31:Number;
      
      public var outer:class_199;
      
      public var next:class_244;
      
      public var name_16:Number;
      
      public var name_28:Number;
      
      public var name_25:Number;
      
      public function class_244()
      {
         name_31 = 0;
         name_16 = 0;
         name_25 = 0;
         name_33 = 0;
         name_28 = 0;
         var_222 = null;
         shapes = null;
         outer = null;
         name_21 = null;
         next = null;
         shapes = new class_292();
         name_16 = 0;
         name_28 = 1;
         name_33 = 2;
         name_25 = 0.001;
         name_31 = 0.01;
      }
      
      public final function method_109() : class_199
      {
         var _loc1_:* = null as class_244;
         if(outer == null)
         {
            outer = new class_199();
            _loc1_ = outer.zpp_inner;
            _loc1_.outer = null;
            _loc1_.next = class_244.var_72;
            class_244.var_72 = _loc1_;
            outer.zpp_inner = this;
         }
         return outer;
      }
      
      public final function name_40(param1:class_244) : void
      {
         name_28 = param1.name_28;
         name_33 = param1.name_33;
         name_25 = param1.name_25;
         name_16 = param1.name_16;
         name_31 = param1.name_31;
      }
      
      public final function invalidate(param1:int) : void
      {
         var _loc3_:* = null as ZPP_Shape;
         var _loc2_:ZNPNode_ZPP_Shape = shapes.var_73;
         while(_loc2_ != null)
         {
            _loc3_ = _loc2_.var_74;
            _loc3_.method_699(param1);
            _loc2_ = _loc2_.next;
         }
      }
      
      public final function copy() : class_244
      {
         var _loc1_:class_244 = new class_244();
         _loc1_.name_28 = name_28;
         _loc1_.name_33 = name_33;
         _loc1_.name_25 = name_25;
         _loc1_.name_16 = name_16;
         _loc1_.name_31 = name_31;
         return _loc1_;
      }
   }
}
