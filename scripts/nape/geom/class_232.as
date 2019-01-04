package nape.geom
{
   import zpp_nape.geom.ZPP_AABB;
   import zpp_nape.geom.ZPP_Vec2;
   import zpp_nape.geom.class_311;
   import zpp_nape.util.class_219;
   
   public final class class_232
   {
       
      
      public var zpp_inner:class_311;
      
      public function class_232(param1:Vec2, param2:Vec2)
      {
         var _loc6_:* = null as ZPP_Vec2;
         var _loc8_:* = null as Vec2;
         var _loc9_:* = null as ZPP_Vec2;
         zpp_inner = null;
         zpp_inner = new class_311();
         var _loc3_:Vec2 = zpp_inner.name_55;
         _loc6_ = param1.zpp_inner;
         if(_loc6_._validate != null)
         {
            _loc6_._validate();
         }
         var _loc5_:Number = param1.zpp_inner.x;
         _loc6_ = param1.zpp_inner;
         if(_loc6_._validate != null)
         {
            _loc6_._validate();
         }
         var _loc7_:Number = param1.zpp_inner.y;
         _loc6_ = _loc3_.zpp_inner;
         §§push(false);
         if(_loc6_._validate != null)
         {
            _loc6_._validate();
         }
         if(_loc3_.zpp_inner.x == _loc5_)
         {
            §§pop();
            _loc6_ = _loc3_.zpp_inner;
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            §§push(_loc3_.zpp_inner.y == _loc7_);
         }
         if(!§§pop())
         {
            _loc3_.zpp_inner.x = _loc5_;
            _loc3_.zpp_inner.y = _loc7_;
            _loc6_ = _loc3_.zpp_inner;
            if(_loc6_._invalidate != null)
            {
               _loc6_._invalidate(_loc6_);
            }
         }
         var _loc4_:Vec2 = _loc3_;
         if(param1.zpp_inner.name_5)
         {
            _loc6_ = param1.zpp_inner;
            param1.zpp_inner.outer = null;
            param1.zpp_inner = null;
            _loc8_ = param1;
            _loc8_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc8_;
            _loc9_ = _loc6_;
            if(_loc9_.outer != null)
            {
               _loc9_.outer.zpp_inner = null;
               _loc9_.outer = null;
            }
            _loc9_.var_103 = null;
            _loc9_._validate = null;
            _loc9_._invalidate = null;
            _loc9_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc9_;
         }
         else
         {
            false;
         }
         _loc4_;
         zpp_inner.name_55;
         _loc3_ = zpp_inner.direction;
         _loc6_ = param2.zpp_inner;
         if(_loc6_._validate != null)
         {
            _loc6_._validate();
         }
         _loc5_ = param2.zpp_inner.x;
         _loc6_ = param2.zpp_inner;
         if(_loc6_._validate != null)
         {
            _loc6_._validate();
         }
         _loc7_ = param2.zpp_inner.y;
         _loc6_ = _loc3_.zpp_inner;
         §§push(false);
         if(_loc6_._validate != null)
         {
            _loc6_._validate();
         }
         if(_loc3_.zpp_inner.x == _loc5_)
         {
            §§pop();
            _loc6_ = _loc3_.zpp_inner;
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            §§push(_loc3_.zpp_inner.y == _loc7_);
         }
         if(!§§pop())
         {
            _loc3_.zpp_inner.x = _loc5_;
            _loc3_.zpp_inner.y = _loc7_;
            _loc6_ = _loc3_.zpp_inner;
            if(_loc6_._invalidate != null)
            {
               _loc6_._invalidate(_loc6_);
            }
         }
         _loc4_ = _loc3_;
         if(param2.zpp_inner.name_5)
         {
            _loc6_ = param2.zpp_inner;
            param2.zpp_inner.outer = null;
            param2.zpp_inner = null;
            _loc8_ = param2;
            _loc8_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc8_;
            _loc9_ = _loc6_;
            if(_loc9_.outer != null)
            {
               _loc9_.outer.zpp_inner = null;
               _loc9_.outer = null;
            }
            _loc9_.var_103 = null;
            _loc9_._validate = null;
            _loc9_._invalidate = null;
            _loc9_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc9_;
         }
         else
         {
            false;
         }
         _loc4_;
         zpp_inner.var_487 = true;
         zpp_inner.direction;
         zpp_inner.maxdist = 1.79e308;
      }
      
      public static function method_866(param1:Vec2, param2:Vec2) : class_232
      {
         var _loc7_:* = null as ZPP_Vec2;
         var _loc13_:* = null as Vec2;
         var _loc14_:* = null as ZPP_Vec2;
         var _loc3_:Vec2 = param2.method_302(param1,true);
         var _loc4_:class_232 = new class_232(param1,_loc3_);
         _loc7_ = param1.zpp_inner;
         §§push(Math);
         if(_loc7_._validate != null)
         {
            _loc7_._validate();
         }
         var _loc6_:Number = param1.zpp_inner.x;
         _loc7_ = param1.zpp_inner;
         if(_loc7_._validate != null)
         {
            _loc7_._validate();
         }
         var _loc8_:Number = param1.zpp_inner.y;
         _loc7_ = param2.zpp_inner;
         if(_loc7_._validate != null)
         {
            _loc7_._validate();
         }
         var _loc9_:Number = param2.zpp_inner.x;
         _loc7_ = param2.zpp_inner;
         if(_loc7_._validate != null)
         {
            _loc7_._validate();
         }
         var _loc10_:Number = param2.zpp_inner.y;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         _loc11_ = Number(_loc6_ - _loc9_);
         _loc12_ = Number(_loc8_ - _loc10_);
         var _loc5_:Number = Number(§§pop().sqrt(Number(_loc11_ * _loc11_ + _loc12_ * _loc12_)));
         _loc4_.zpp_inner.maxdist = _loc5_;
         _loc4_.zpp_inner.maxdist;
         if(param1.zpp_inner.name_5)
         {
            _loc7_ = param1.zpp_inner;
            param1.zpp_inner.outer = null;
            param1.zpp_inner = null;
            _loc13_ = param1;
            _loc13_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc13_;
            _loc14_ = _loc7_;
            if(_loc14_.outer != null)
            {
               _loc14_.outer.zpp_inner = null;
               _loc14_.outer = null;
            }
            _loc14_.var_103 = null;
            _loc14_._validate = null;
            _loc14_._invalidate = null;
            _loc14_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc14_;
            true;
         }
         else
         {
            false;
         }
         if(param2.zpp_inner.name_5)
         {
            _loc7_ = param2.zpp_inner;
            param2.zpp_inner.outer = null;
            param2.zpp_inner = null;
            _loc13_ = param2;
            _loc13_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc13_;
            _loc14_ = _loc7_;
            if(_loc14_.outer != null)
            {
               _loc14_.outer.zpp_inner = null;
               _loc14_.outer = null;
            }
            _loc14_.var_103 = null;
            _loc14_._validate = null;
            _loc14_._invalidate = null;
            _loc14_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc14_;
         }
         else
         {
            false;
         }
         return _loc4_;
      }
      
      public function set name_55(param1:Vec2) : Vec2
      {
         var _loc5_:* = null as ZPP_Vec2;
         var _loc7_:* = null as Vec2;
         var _loc8_:* = null as ZPP_Vec2;
         var _loc2_:Vec2 = zpp_inner.name_55;
         _loc5_ = param1.zpp_inner;
         if(_loc5_._validate != null)
         {
            _loc5_._validate();
         }
         var _loc4_:Number = param1.zpp_inner.x;
         _loc5_ = param1.zpp_inner;
         if(_loc5_._validate != null)
         {
            _loc5_._validate();
         }
         var _loc6_:Number = param1.zpp_inner.y;
         _loc5_ = _loc2_.zpp_inner;
         §§push(false);
         if(_loc5_._validate != null)
         {
            _loc5_._validate();
         }
         if(_loc2_.zpp_inner.x == _loc4_)
         {
            §§pop();
            _loc5_ = _loc2_.zpp_inner;
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            §§push(_loc2_.zpp_inner.y == _loc6_);
         }
         if(!§§pop())
         {
            _loc2_.zpp_inner.x = _loc4_;
            _loc2_.zpp_inner.y = _loc6_;
            _loc5_ = _loc2_.zpp_inner;
            if(_loc5_._invalidate != null)
            {
               _loc5_._invalidate(_loc5_);
            }
         }
         var _loc3_:Vec2 = _loc2_;
         if(param1.zpp_inner.name_5)
         {
            _loc5_ = param1.zpp_inner;
            param1.zpp_inner.outer = null;
            param1.zpp_inner = null;
            _loc7_ = param1;
            _loc7_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc7_;
            _loc8_ = _loc5_;
            if(_loc8_.outer != null)
            {
               _loc8_.outer.zpp_inner = null;
               _loc8_.outer = null;
            }
            _loc8_.var_103 = null;
            _loc8_._validate = null;
            _loc8_._invalidate = null;
            _loc8_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc8_;
         }
         _loc3_;
         return zpp_inner.name_55;
      }
      
      public function set method_134(param1:Number) : Number
      {
         zpp_inner.maxdist = param1;
         return zpp_inner.maxdist;
      }
      
      public function set direction(param1:Vec2) : Vec2
      {
         var _loc5_:* = null as ZPP_Vec2;
         var _loc7_:* = null as Vec2;
         var _loc8_:* = null as ZPP_Vec2;
         var _loc2_:Vec2 = zpp_inner.direction;
         _loc5_ = param1.zpp_inner;
         if(_loc5_._validate != null)
         {
            _loc5_._validate();
         }
         var _loc4_:Number = param1.zpp_inner.x;
         _loc5_ = param1.zpp_inner;
         if(_loc5_._validate != null)
         {
            _loc5_._validate();
         }
         var _loc6_:Number = param1.zpp_inner.y;
         _loc5_ = _loc2_.zpp_inner;
         §§push(false);
         if(_loc5_._validate != null)
         {
            _loc5_._validate();
         }
         if(_loc2_.zpp_inner.x == _loc4_)
         {
            §§pop();
            _loc5_ = _loc2_.zpp_inner;
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            §§push(_loc2_.zpp_inner.y == _loc6_);
         }
         if(!§§pop())
         {
            _loc2_.zpp_inner.x = _loc4_;
            _loc2_.zpp_inner.y = _loc6_;
            _loc5_ = _loc2_.zpp_inner;
            if(_loc5_._invalidate != null)
            {
               _loc5_._invalidate(_loc5_);
            }
         }
         var _loc3_:Vec2 = _loc2_;
         if(param1.zpp_inner.name_5)
         {
            _loc5_ = param1.zpp_inner;
            param1.zpp_inner.outer = null;
            param1.zpp_inner = null;
            _loc7_ = param1;
            _loc7_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc7_;
            _loc8_ = _loc5_;
            if(_loc8_.outer != null)
            {
               _loc8_.outer.zpp_inner = null;
               _loc8_.outer = null;
            }
            _loc8_.var_103 = null;
            _loc8_._validate = null;
            _loc8_._invalidate = null;
            _loc8_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc8_;
         }
         _loc3_;
         zpp_inner.var_487 = true;
         return zpp_inner.direction;
      }
      
      public function get name_21() : *
      {
         if(zpp_inner.name_21 == null)
         {
            zpp_inner.name_21 = {};
         }
         return zpp_inner.name_21;
      }
      
      public function get name_55() : Vec2
      {
         return zpp_inner.name_55;
      }
      
      public function get method_134() : Number
      {
         return zpp_inner.maxdist;
      }
      
      public function get direction() : Vec2
      {
         return zpp_inner.direction;
      }
      
      public final function copy() : class_232
      {
         var _loc1_:class_232 = new class_232(zpp_inner.name_55,zpp_inner.direction);
         _loc1_.zpp_inner.maxdist = zpp_inner.maxdist;
         _loc1_.zpp_inner.maxdist;
         return _loc1_;
      }
      
      public final function at(param1:Number, param2:Boolean = false) : Vec2
      {
         var _loc4_:* = null as Vec2;
         var _loc5_:* = null as ZPP_Vec2;
         var _loc7_:Boolean = false;
         zpp_inner.method_292();
         _loc4_ = zpp_inner.name_55;
         _loc5_ = _loc4_.zpp_inner;
         if(_loc5_._validate != null)
         {
            _loc5_._validate();
         }
         var _loc3_:Number = Number(_loc4_.zpp_inner.x + param1 * zpp_inner.var_146);
         _loc4_ = zpp_inner.name_55;
         _loc5_ = _loc4_.zpp_inner;
         if(_loc5_._validate != null)
         {
            _loc5_._validate();
         }
         var _loc6_:Number = Number(_loc4_.zpp_inner.y + param1 * zpp_inner.var_147);
         if(class_219.poolVec2 == null)
         {
            _loc4_ = new Vec2();
         }
         else
         {
            _loc4_ = class_219.poolVec2;
            class_219.poolVec2 = _loc4_.var_72;
            _loc4_.var_72 = null;
         }
         if(_loc4_.zpp_inner == null)
         {
            _loc7_ = false;
            if(ZPP_Vec2.var_72 == null)
            {
               _loc5_ = new ZPP_Vec2();
            }
            else
            {
               _loc5_ = ZPP_Vec2.var_72;
               ZPP_Vec2.var_72 = _loc5_.next;
               _loc5_.next = null;
            }
            _loc5_.name_5 = false;
            _loc5_.var_109 = _loc7_;
            _loc5_.x = _loc3_;
            _loc5_.y = _loc6_;
            _loc4_.zpp_inner = _loc5_;
            _loc4_.zpp_inner.outer = _loc4_;
         }
         else
         {
            _loc5_ = _loc4_.zpp_inner;
            §§push(false);
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            if(_loc4_.zpp_inner.x == _loc3_)
            {
               §§pop();
               _loc5_ = _loc4_.zpp_inner;
               if(_loc5_._validate != null)
               {
                  _loc5_._validate();
               }
               §§push(_loc4_.zpp_inner.y == _loc6_);
            }
            if(!§§pop())
            {
               _loc4_.zpp_inner.x = _loc3_;
               _loc4_.zpp_inner.y = _loc6_;
               _loc5_ = _loc4_.zpp_inner;
               if(_loc5_._invalidate != null)
               {
                  _loc5_._invalidate(_loc5_);
               }
            }
            _loc4_;
         }
         _loc4_.zpp_inner.name_5 = param2;
         return _loc4_;
      }
      
      public final function name_3() : class_237
      {
         return zpp_inner.method_364().method_109();
      }
   }
}
