package nape.geom
{
   import zpp_nape.geom.ZPP_Vec2;
   import zpp_nape.geom.ZPP_Vec3;
   import zpp_nape.util.class_219;
   
   public final class Vec3
   {
       
      
      public var var_72:Vec3;
      
      public var zpp_inner:ZPP_Vec3;
      
      public function Vec3(param1:Number = 0, param2:Number = 0, param3:Number = 0)
      {
         var_72 = null;
         zpp_inner = null;
         zpp_inner = new ZPP_Vec3();
         zpp_inner.outer = this;
         zpp_inner.x = param1;
         var _loc4_:ZPP_Vec3 = zpp_inner;
         if(_loc4_._validate != null)
         {
            _loc4_._validate();
         }
         zpp_inner.x;
         zpp_inner.y = param2;
         _loc4_ = zpp_inner;
         if(_loc4_._validate != null)
         {
            _loc4_._validate();
         }
         zpp_inner.y;
         zpp_inner.z = param3;
         _loc4_ = zpp_inner;
         if(_loc4_._validate != null)
         {
            _loc4_._validate();
         }
         zpp_inner.z;
      }
      
      public static function method_65(param1:Number = 0, param2:Number = 0, param3:Number = 0) : Vec3
      {
         var _loc4_:* = null as Vec3;
         if(class_219.poolVec3 == null)
         {
            _loc4_ = new Vec3();
         }
         else
         {
            _loc4_ = class_219.poolVec3;
            class_219.poolVec3 = _loc4_.var_72;
            _loc4_.var_72 = null;
         }
         _loc4_.setxyz(param1,param2,param3);
         _loc4_.zpp_inner.var_164 = false;
         _loc4_.zpp_inner._validate = null;
         return _loc4_;
      }
      
      public final function method_446(param1:Boolean = false) : Vec2
      {
         var _loc5_:* = null as Vec2;
         var _loc6_:Boolean = false;
         var _loc7_:* = null as ZPP_Vec2;
         var _loc3_:ZPP_Vec3 = zpp_inner;
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         var _loc2_:Number = zpp_inner.x;
         _loc3_ = zpp_inner;
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         var _loc4_:Number = zpp_inner.y;
         if(class_219.poolVec2 == null)
         {
            _loc5_ = new Vec2();
         }
         else
         {
            _loc5_ = class_219.poolVec2;
            class_219.poolVec2 = _loc5_.var_72;
            _loc5_.var_72 = null;
         }
         if(_loc5_.zpp_inner == null)
         {
            _loc6_ = false;
            if(ZPP_Vec2.var_72 == null)
            {
               _loc7_ = new ZPP_Vec2();
            }
            else
            {
               _loc7_ = ZPP_Vec2.var_72;
               ZPP_Vec2.var_72 = _loc7_.next;
               _loc7_.next = null;
            }
            _loc7_.name_5 = false;
            _loc7_.var_109 = _loc6_;
            _loc7_.x = _loc2_;
            _loc7_.y = _loc4_;
            _loc5_.zpp_inner = _loc7_;
            _loc5_.zpp_inner.outer = _loc5_;
         }
         else
         {
            _loc7_ = _loc5_.zpp_inner;
            §§push(false);
            if(_loc7_._validate != null)
            {
               _loc7_._validate();
            }
            if(_loc5_.zpp_inner.x == _loc2_)
            {
               §§pop();
               _loc7_ = _loc5_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               §§push(_loc5_.zpp_inner.y == _loc4_);
            }
            if(!§§pop())
            {
               _loc5_.zpp_inner.x = _loc2_;
               _loc5_.zpp_inner.y = _loc4_;
               _loc7_ = _loc5_.zpp_inner;
               if(_loc7_._invalidate != null)
               {
                  _loc7_._invalidate(_loc7_);
               }
            }
            _loc5_;
         }
         _loc5_.zpp_inner.name_5 = param1;
         return _loc5_;
      }
      
      public final function toString() : String
      {
         var _loc1_:ZPP_Vec3 = zpp_inner;
         §§push(class_2.method_14(-1820302616));
         if(_loc1_._validate != null)
         {
            _loc1_._validate();
         }
         _loc1_ = zpp_inner;
         §§push(§§pop() + zpp_inner.x + class_2.method_14(-1820302784));
         if(_loc1_._validate != null)
         {
            _loc1_._validate();
         }
         _loc1_ = zpp_inner;
         §§push(§§pop() + zpp_inner.y + class_2.method_14(-1820302693));
         if(_loc1_._validate != null)
         {
            _loc1_._validate();
         }
         return §§pop() + zpp_inner.z + class_2.method_14(-1820302790);
      }
      
      public final function setxyz(param1:Number, param2:Number, param3:Number) : Vec3
      {
         zpp_inner.x = param1;
         var _loc4_:ZPP_Vec3 = zpp_inner;
         if(_loc4_._validate != null)
         {
            _loc4_._validate();
         }
         zpp_inner.x;
         zpp_inner.y = param2;
         _loc4_ = zpp_inner;
         if(_loc4_._validate != null)
         {
            _loc4_._validate();
         }
         zpp_inner.y;
         zpp_inner.z = param3;
         _loc4_ = zpp_inner;
         if(_loc4_._validate != null)
         {
            _loc4_._validate();
         }
         zpp_inner.z;
         return this;
      }
      
      public function set z(param1:Number) : Number
      {
         zpp_inner.z = param1;
         var _loc2_:ZPP_Vec3 = zpp_inner;
         if(_loc2_._validate != null)
         {
            _loc2_._validate();
         }
         return zpp_inner.z;
      }
      
      public function set y(param1:Number) : Number
      {
         zpp_inner.y = param1;
         var _loc2_:ZPP_Vec3 = zpp_inner;
         if(_loc2_._validate != null)
         {
            _loc2_._validate();
         }
         return zpp_inner.y;
      }
      
      public function set x(param1:Number) : Number
      {
         zpp_inner.x = param1;
         var _loc2_:ZPP_Vec3 = zpp_inner;
         if(_loc2_._validate != null)
         {
            _loc2_._validate();
         }
         return zpp_inner.x;
      }
      
      public function set length(param1:Number) : Number
      {
         var _loc3_:ZPP_Vec3 = zpp_inner;
         §§push(param1);
         §§push(Math);
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         _loc3_ = zpp_inner;
         §§push(zpp_inner.x);
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         _loc3_ = zpp_inner;
         §§push(§§pop() * zpp_inner.x);
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         _loc3_ = zpp_inner;
         §§push(zpp_inner.y);
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         _loc3_ = zpp_inner;
         §§push(Number(§§pop() + §§pop() * zpp_inner.y));
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         _loc3_ = zpp_inner;
         §§push(zpp_inner.z);
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         var _loc2_:Number = §§pop() / §§pop().sqrt(Number(§§pop() + §§pop() * zpp_inner.z));
         var _loc4_:Number = _loc2_;
         var _loc5_:Vec3 = this;
         _loc3_ = _loc5_.zpp_inner;
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         var _loc6_:Number = _loc5_.zpp_inner.x * _loc4_;
         _loc5_.zpp_inner.x = _loc6_;
         _loc3_ = _loc5_.zpp_inner;
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         _loc5_.zpp_inner.x;
         _loc5_ = this;
         _loc3_ = _loc5_.zpp_inner;
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         _loc6_ = _loc5_.zpp_inner.y * _loc4_;
         _loc5_.zpp_inner.y = _loc6_;
         _loc3_ = _loc5_.zpp_inner;
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         _loc5_.zpp_inner.y;
         _loc5_ = this;
         _loc3_ = _loc5_.zpp_inner;
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         _loc4_ = _loc5_.zpp_inner.z * _loc2_;
         _loc5_.zpp_inner.z = _loc4_;
         _loc3_ = _loc5_.zpp_inner;
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         _loc5_.zpp_inner.z;
         _loc3_ = zpp_inner;
         §§push(Math);
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         _loc3_ = zpp_inner;
         §§push(zpp_inner.x);
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         _loc3_ = zpp_inner;
         §§push(§§pop() * zpp_inner.x);
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         _loc3_ = zpp_inner;
         §§push(zpp_inner.y);
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         _loc3_ = zpp_inner;
         §§push(Number(§§pop() + §§pop() * zpp_inner.y));
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         _loc3_ = zpp_inner;
         §§push(zpp_inner.z);
         if(_loc3_._validate != null)
         {
            _loc3_._validate();
         }
         return Number(§§pop().sqrt(Number(§§pop() + §§pop() * zpp_inner.z)));
      }
      
      public final function name_40(param1:Vec3) : Vec3
      {
         var _loc2_:ZPP_Vec3 = param1.zpp_inner;
         §§push();
         if(_loc2_._validate != null)
         {
            _loc2_._validate();
         }
         _loc2_ = param1.zpp_inner;
         §§push(param1.zpp_inner.x);
         if(_loc2_._validate != null)
         {
            _loc2_._validate();
         }
         _loc2_ = param1.zpp_inner;
         §§push(param1.zpp_inner.y);
         if(_loc2_._validate != null)
         {
            _loc2_._validate();
         }
         return §§pop().setxyz(§§pop(),§§pop(),param1.zpp_inner.z);
      }
      
      public final function method_437() : Number
      {
         var _loc1_:ZPP_Vec3 = zpp_inner;
         if(_loc1_._validate != null)
         {
            _loc1_._validate();
         }
         _loc1_ = zpp_inner;
         §§push(zpp_inner.x);
         if(_loc1_._validate != null)
         {
            _loc1_._validate();
         }
         _loc1_ = zpp_inner;
         §§push(§§pop() * zpp_inner.x);
         if(_loc1_._validate != null)
         {
            _loc1_._validate();
         }
         _loc1_ = zpp_inner;
         §§push(zpp_inner.y);
         if(_loc1_._validate != null)
         {
            _loc1_._validate();
         }
         _loc1_ = zpp_inner;
         §§push(Number(§§pop() + §§pop() * zpp_inner.y));
         if(_loc1_._validate != null)
         {
            _loc1_._validate();
         }
         _loc1_ = zpp_inner;
         §§push(zpp_inner.z);
         if(_loc1_._validate != null)
         {
            _loc1_._validate();
         }
         return Number(§§pop() + §§pop() * zpp_inner.z);
      }
      
      public function get z() : Number
      {
         var _loc1_:ZPP_Vec3 = zpp_inner;
         if(_loc1_._validate != null)
         {
            _loc1_._validate();
         }
         return zpp_inner.z;
      }
      
      public function get y() : Number
      {
         var _loc1_:ZPP_Vec3 = zpp_inner;
         if(_loc1_._validate != null)
         {
            _loc1_._validate();
         }
         return zpp_inner.y;
      }
      
      public function get x() : Number
      {
         var _loc1_:ZPP_Vec3 = zpp_inner;
         if(_loc1_._validate != null)
         {
            _loc1_._validate();
         }
         return zpp_inner.x;
      }
      
      public function get length() : Number
      {
         var _loc1_:ZPP_Vec3 = zpp_inner;
         §§push(Math);
         if(_loc1_._validate != null)
         {
            _loc1_._validate();
         }
         _loc1_ = zpp_inner;
         §§push(zpp_inner.x);
         if(_loc1_._validate != null)
         {
            _loc1_._validate();
         }
         _loc1_ = zpp_inner;
         §§push(§§pop() * zpp_inner.x);
         if(_loc1_._validate != null)
         {
            _loc1_._validate();
         }
         _loc1_ = zpp_inner;
         §§push(zpp_inner.y);
         if(_loc1_._validate != null)
         {
            _loc1_._validate();
         }
         _loc1_ = zpp_inner;
         §§push(Number(§§pop() + §§pop() * zpp_inner.y));
         if(_loc1_._validate != null)
         {
            _loc1_._validate();
         }
         _loc1_ = zpp_inner;
         §§push(zpp_inner.z);
         if(_loc1_._validate != null)
         {
            _loc1_._validate();
         }
         return Number(§§pop().sqrt(Number(§§pop() + §§pop() * zpp_inner.z)));
      }
      
      public final function dispose() : void
      {
         var _loc1_:Vec3 = this;
         _loc1_.var_72 = class_219.poolVec3;
         class_219.poolVec3 = _loc1_;
      }
   }
}
