package nape.geom
{
   import zpp_nape.geom.class_285;
   
   public final class class_217
   {
       
      
      public var zpp_inner:class_285;
      
      public function class_217(param1:int, param2:int)
      {
         zpp_inner = null;
         zpp_inner = new class_285(param1,param2);
         zpp_inner.outer = this;
      }
      
      public final function x(param1:int, param2:int) : Number
      {
         return Number(zpp_inner.x[param1 * zpp_inner.var_324 + param2]);
      }
      
      public final function method_697() : class_217
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc1_:class_217 = new class_217(zpp_inner.var_324,zpp_inner.var_564);
         var _loc2_:int = 0;
         var _loc3_:int = zpp_inner.var_564;
         while(_loc2_ < _loc3_)
         {
            _loc2_++;
            _loc4_ = _loc2_;
            _loc5_ = 0;
            _loc6_ = zpp_inner.var_324;
            while(_loc5_ < _loc6_)
            {
               _loc5_++;
               _loc7_ = _loc5_;
               _loc1_.zpp_inner.x[_loc7_ * _loc1_.zpp_inner.var_324 + _loc4_] = Number(zpp_inner.x[_loc4_ * zpp_inner.var_324 + _loc7_]);
            }
         }
         return _loc1_;
      }
      
      public final function toString() : String
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc1_:String = class_2.method_14(-1820302422);
         var _loc2_:Boolean = true;
         var _loc3_:int = 0;
         var _loc4_:int = zpp_inner.var_564;
         while(_loc3_ < _loc4_)
         {
            _loc3_++;
            _loc5_ = _loc3_;
            if(!_loc2_)
            {
               _loc1_ = _loc1_ + class_2.method_14(-1820302510);
            }
            _loc2_ = false;
            _loc6_ = 0;
            _loc7_ = zpp_inner.var_324;
            while(_loc6_ < _loc7_)
            {
               _loc6_++;
               _loc8_ = _loc6_;
               _loc1_ = _loc1_ + (Number(zpp_inner.x[_loc5_ * zpp_inner.var_324 + _loc8_]) + " ");
            }
         }
         _loc1_ = _loc1_ + "}";
         return _loc1_;
      }
      
      public final function method_857(param1:int, param2:int, param3:Number) : Number
      {
         var _loc4_:Number = param3;
         zpp_inner.x[param1 * zpp_inner.var_324 + param2] = _loc4_;
         return _loc4_;
      }
      
      public final function method_392(param1:class_217) : class_217
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:* = NaN;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc2_:class_217 = param1;
         var _loc3_:class_217 = new class_217(zpp_inner.var_564,_loc2_.zpp_inner.var_324);
         var _loc4_:int = 0;
         var _loc5_:int = zpp_inner.var_564;
         while(_loc4_ < _loc5_)
         {
            _loc4_++;
            _loc6_ = _loc4_;
            _loc7_ = 0;
            _loc8_ = _loc2_.zpp_inner.var_324;
            while(_loc7_ < _loc8_)
            {
               _loc7_++;
               _loc9_ = _loc7_;
               _loc10_ = 0;
               _loc11_ = 0;
               _loc12_ = zpp_inner.var_324;
               while(_loc11_ < _loc12_)
               {
                  _loc11_++;
                  _loc13_ = _loc11_;
                  _loc10_ = Number(Number(_loc10_ + zpp_inner.x[_loc6_ * zpp_inner.var_324 + _loc13_] * _loc2_.zpp_inner.x[_loc13_ * _loc2_.zpp_inner.var_324 + _loc9_]));
               }
               _loc3_.zpp_inner.x[_loc6_ * _loc3_.zpp_inner.var_324 + _loc9_] = _loc10_;
            }
         }
         return _loc3_;
      }
      
      public function get method_891() : int
      {
         return zpp_inner.var_564;
      }
      
      public function get method_893() : int
      {
         return zpp_inner.var_324;
      }
   }
}
