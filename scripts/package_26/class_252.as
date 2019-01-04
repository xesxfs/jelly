package package_26
{
   import nape.geom.Vec3;
   import package_29.Body;
   import package_32.Shape;
   import package_34.class_296;
   import zpp_nape.dynamics.ZPP_Arbiter;
   import zpp_nape.util.class_223;
   
   public class class_252
   {
       
      
      public var zpp_inner:ZPP_Arbiter;
      
      public function class_252()
      {
         zpp_inner = null;
         if(ZPP_Arbiter.var_87)
         {
         }
      }
      
      public function method_172(param1:Body = undefined, param2:Boolean = false) : Vec3
      {
         return Vec3.method_65(0,0,0);
      }
      
      public final function toString() : String
      {
         var _loc1_:* = null as String;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:* = 0;
         if(zpp_inner.type == ZPP_Arbiter.var_292)
         {
            _loc1_ = "CollisionArbiter";
         }
         else if(zpp_inner.type == ZPP_Arbiter.FLUID)
         {
            _loc1_ = "FluidArbiter";
         }
         else
         {
            _loc1_ = class_2.method_14(-1820302496);
         }
         if(zpp_inner.var_265)
         {
            return _loc1_ + class_2.method_14(-1820302582);
         }
         _loc2_ = zpp_inner.var_181;
         _loc3_ = _loc2_;
         §§push(_loc1_ + "(" + (zpp_inner.ws1.id > zpp_inner.ws2.id?zpp_inner.ws2.outer:zpp_inner.ws1.outer).toString() + "|" + (zpp_inner.ws1.id > zpp_inner.ws2.id?zpp_inner.ws1.outer:zpp_inner.ws2.outer).toString() + ")" + (zpp_inner.type == ZPP_Arbiter.var_292?"[" + [class_2.method_14(-1820302579),class_2.method_14(-1820302810)][!!zpp_inner.var_128.var_622?0:1] + "]":"") + class_2.method_14(-1820302465));
         if(_loc3_ == (class_223.var_267 | class_223.id_ImmState_ALWAYS))
         {
            if(class_223.var_320 == null)
            {
               class_223.var_87 = true;
               class_223.var_320 = new class_296();
               class_223.var_87 = false;
            }
            §§push(class_223.var_320);
         }
         else
         {
            _loc4_ = _loc2_;
            _loc5_ = int(_loc2_);
            if(int(_loc2_) == class_223.var_267)
            {
               if(class_223.var_321 == null)
               {
                  class_223.var_87 = true;
                  class_223.var_321 = new class_296();
                  class_223.var_87 = false;
               }
               §§push(class_223.var_321);
            }
            else if(_loc4_ == (class_223.var_613 | class_223.id_ImmState_ALWAYS))
            {
               if(class_223.var_325 == null)
               {
                  class_223.var_87 = true;
                  class_223.var_325 = new class_296();
                  class_223.var_87 = false;
               }
               §§push(class_223.var_325);
            }
            else
            {
               if(class_223.var_514 == null)
               {
                  class_223.var_87 = true;
                  class_223.var_514 = new class_296();
                  class_223.var_87 = false;
               }
               §§push(class_223.var_514);
            }
         }
         return §§pop() + §§pop().toString();
      }
      
      public final function method_885() : Boolean
      {
         return zpp_inner.type == ZPP_Arbiter.SENSOR;
      }
      
      public final function method_921() : Boolean
      {
         return zpp_inner.type == ZPP_Arbiter.FLUID;
      }
      
      public final function method_888() : Boolean
      {
         return zpp_inner.type == ZPP_Arbiter.var_292;
      }
      
      public function get type() : class_294
      {
         return ZPP_Arbiter.var_406[zpp_inner.type];
      }
      
      public function get method_821() : class_296
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = zpp_inner.var_181;
         var _loc2_:int = _loc1_;
         if(_loc2_ == (class_223.var_267 | class_223.id_ImmState_ALWAYS))
         {
            if(class_223.var_320 == null)
            {
               class_223.var_87 = true;
               class_223.var_320 = new class_296();
               class_223.var_87 = false;
            }
            return class_223.var_320;
         }
         _loc3_ = _loc1_;
         _loc4_ = _loc1_;
         if(_loc4_ == class_223.var_267)
         {
            if(class_223.var_321 == null)
            {
               class_223.var_87 = true;
               class_223.var_321 = new class_296();
               class_223.var_87 = false;
            }
            return class_223.var_321;
         }
         if(_loc3_ == (class_223.var_613 | class_223.id_ImmState_ALWAYS))
         {
            if(class_223.var_325 == null)
            {
               class_223.var_87 = true;
               class_223.var_325 = new class_296();
               class_223.var_87 = false;
            }
            return class_223.var_325;
         }
         if(class_223.var_514 == null)
         {
            class_223.var_87 = true;
            class_223.var_514 = new class_296();
            class_223.var_87 = false;
         }
         return class_223.var_514;
      }
      
      public function get shape2() : Shape
      {
         if(zpp_inner.ws1.id > zpp_inner.ws2.id)
         {
            return zpp_inner.ws1.outer;
         }
         return zpp_inner.ws2.outer;
      }
      
      public function get shape1() : Shape
      {
         if(zpp_inner.ws1.id > zpp_inner.ws2.id)
         {
            return zpp_inner.ws2.outer;
         }
         return zpp_inner.ws1.outer;
      }
      
      public function get method_510() : Boolean
      {
         return zpp_inner.var_129;
      }
      
      public function get method_880() : FluidArbiter
      {
         if(zpp_inner.type == ZPP_Arbiter.FLUID)
         {
            return zpp_inner.var_161.outer_zn;
         }
         return null;
      }
      
      public function get method_770() : CollisionArbiter
      {
         if(zpp_inner.type == ZPP_Arbiter.var_292)
         {
            return zpp_inner.var_128.outer_zn;
         }
         return null;
      }
      
      public function get body2() : Body
      {
         if(zpp_inner.ws1.id > zpp_inner.ws2.id)
         {
            return zpp_inner.b1.outer;
         }
         return zpp_inner.b2.outer;
      }
      
      public function get body1() : Body
      {
         if(zpp_inner.ws1.id > zpp_inner.ws2.id)
         {
            return zpp_inner.b2.outer;
         }
         return zpp_inner.b1.outer;
      }
   }
}
