package zpp_nape.geom
{
   import nape.geom.class_242;
   
   public final class ZPP_Mat23
   {
      
      public static var var_72:ZPP_Mat23 = null;
       
      
      public var ty:Number;
      
      public var tx:Number;
      
      public var outer:class_242;
      
      public var next:ZPP_Mat23;
      
      public var d:Number;
      
      public var c:Number;
      
      public var b:Number;
      
      public var a:Number;
      
      public var _invalidate:Object;
      
      public function ZPP_Mat23()
      {
         next = null;
         _invalidate = null;
         ty = 0;
         tx = 0;
         d = 0;
         c = 0;
         b = 0;
         a = 0;
         outer = null;
      }
      
      public static function method_65() : ZPP_Mat23
      {
         var _loc1_:* = null as ZPP_Mat23;
         if(ZPP_Mat23.var_72 == null)
         {
            _loc1_ = new ZPP_Mat23();
         }
         else
         {
            _loc1_ = ZPP_Mat23.var_72;
            ZPP_Mat23.var_72 = _loc1_.next;
            _loc1_.next = null;
         }
         null;
         return _loc1_;
      }
      
      public static function identity() : ZPP_Mat23
      {
         var _loc1_:ZPP_Mat23 = ZPP_Mat23.method_65();
         _loc1_.method_370(1,0,0,1,0,0);
         return _loc1_;
      }
      
      public final function method_109() : class_242
      {
         var _loc1_:* = null as ZPP_Mat23;
         if(outer == null)
         {
            outer = new class_242();
            _loc1_ = outer.zpp_inner;
            _loc1_.next = ZPP_Mat23.var_72;
            ZPP_Mat23.var_72 = _loc1_;
            outer.zpp_inner = this;
         }
         return outer;
      }
      
      public final function method_370(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         tx = param5;
         ty = param6;
         a = param1;
         b = param2;
         c = param3;
         d = param4;
      }
   }
}
