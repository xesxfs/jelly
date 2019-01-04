package package_29
{
   import nape.geom.Vec2;
   import package_32.class_230;
   import zpp_nape.geom.ZPP_Vec2;
   import zpp_nape.phys.class_265;
   import zpp_nape.util.ZPP_ShapeList;
   import zpp_nape.util.class_219;
   
   public final class class_240
   {
       
      
      public var zpp_inner:class_265;
      
      public function class_240(param1:Number = 1, param2:Number = 1)
      {
         zpp_inner = null;
         if(class_265.var_72 == null)
         {
            zpp_inner = new class_265();
         }
         else
         {
            zpp_inner = class_265.var_72;
            class_265.var_72 = zpp_inner.next;
            zpp_inner.next = null;
         }
         null;
         zpp_inner.outer = this;
         if(param1 != zpp_inner.name_25 * 1000)
         {
            zpp_inner.name_25 = param1 / 1000;
            zpp_inner.invalidate();
         }
         zpp_inner.name_25 * 1000;
         if(param2 != zpp_inner.name_49)
         {
            zpp_inner.name_49 = param2 / 1;
            zpp_inner.invalidate();
         }
         zpp_inner.name_49;
      }
      
      public final function toString() : String
      {
         return class_2.method_14(-1820302787) + zpp_inner.name_25 * 1000 + class_2.method_14(-1820302441) + zpp_inner.name_49 + class_2.method_14(-1820302562) + Std.string(zpp_inner.var_184) + class_2.method_14(-1820302790);
      }
      
      public function set name_49(param1:Number) : Number
      {
         if(param1 != zpp_inner.name_49)
         {
            zpp_inner.name_49 = param1 / 1;
            zpp_inner.invalidate();
         }
         return zpp_inner.name_49;
      }
      
      public function set method_409(param1:Vec2) : Vec2
      {
         var _loc2_:* = null as Vec2;
         var _loc3_:* = null as ZPP_Vec2;
         var _loc4_:* = null as Vec2;
         var _loc5_:* = null as ZPP_Vec2;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:* = null as Vec2;
         if(param1 == null)
         {
            if(zpp_inner.var_184 != null)
            {
               zpp_inner.var_184.zpp_inner.var_120 = false;
               _loc2_ = zpp_inner.var_184;
               _loc3_ = _loc2_.zpp_inner;
               _loc2_.zpp_inner.outer = null;
               _loc2_.zpp_inner = null;
               _loc4_ = _loc2_;
               _loc4_.var_72 = class_219.poolVec2;
               class_219.poolVec2 = _loc4_;
               _loc5_ = _loc3_;
               if(_loc5_.outer != null)
               {
                  _loc5_.outer.zpp_inner = null;
                  _loc5_.outer = null;
               }
               _loc5_.var_103 = null;
               _loc5_._validate = null;
               _loc5_._invalidate = null;
               _loc5_.next = ZPP_Vec2.var_72;
               ZPP_Vec2.var_72 = _loc5_;
               zpp_inner.var_184 = null;
            }
         }
         else
         {
            if(zpp_inner.var_184 == null)
            {
               zpp_inner.method_266();
            }
            _loc2_ = zpp_inner.var_184;
            _loc3_ = param1.zpp_inner;
            if(_loc3_._validate != null)
            {
               _loc3_._validate();
            }
            _loc6_ = param1.zpp_inner.x;
            _loc3_ = param1.zpp_inner;
            if(_loc3_._validate != null)
            {
               _loc3_._validate();
            }
            _loc7_ = param1.zpp_inner.y;
            _loc3_ = _loc2_.zpp_inner;
            §§push(false);
            if(_loc3_._validate != null)
            {
               _loc3_._validate();
            }
            if(_loc2_.zpp_inner.x == _loc6_)
            {
               §§pop();
               _loc3_ = _loc2_.zpp_inner;
               if(_loc3_._validate != null)
               {
                  _loc3_._validate();
               }
               §§push(_loc2_.zpp_inner.y == _loc7_);
            }
            if(!§§pop())
            {
               _loc2_.zpp_inner.x = _loc6_;
               _loc2_.zpp_inner.y = _loc7_;
               _loc3_ = _loc2_.zpp_inner;
               if(_loc3_._invalidate != null)
               {
                  _loc3_._invalidate(_loc3_);
               }
            }
            _loc4_ = _loc2_;
            if(param1.zpp_inner.name_5)
            {
               _loc3_ = param1.zpp_inner;
               param1.zpp_inner.outer = null;
               param1.zpp_inner = null;
               _loc8_ = param1;
               _loc8_.var_72 = class_219.poolVec2;
               class_219.poolVec2 = _loc8_;
               _loc5_ = _loc3_;
               if(_loc5_.outer != null)
               {
                  _loc5_.outer.zpp_inner = null;
                  _loc5_.outer = null;
               }
               _loc5_.var_103 = null;
               _loc5_._validate = null;
               _loc5_._invalidate = null;
               _loc5_.next = ZPP_Vec2.var_72;
               ZPP_Vec2.var_72 = _loc5_;
            }
            _loc4_;
         }
         return zpp_inner.var_184;
      }
      
      public function set name_25(param1:Number) : Number
      {
         if(param1 != zpp_inner.name_25 * 1000)
         {
            zpp_inner.name_25 = param1 / 1000;
            zpp_inner.invalidate();
         }
         return zpp_inner.name_25 * 1000;
      }
      
      public function get name_49() : Number
      {
         return zpp_inner.name_49;
      }
      
      public function get name_21() : *
      {
         if(zpp_inner.name_21 == null)
         {
            zpp_inner.name_21 = {};
         }
         return zpp_inner.name_21;
      }
      
      public function get shapes() : class_230
      {
         if(zpp_inner.var_222 == null)
         {
            zpp_inner.var_222 = ZPP_ShapeList.method_65(zpp_inner.shapes,true);
         }
         return zpp_inner.var_222;
      }
      
      public function get method_409() : Vec2
      {
         return zpp_inner.var_184;
      }
      
      public function get name_25() : Number
      {
         return zpp_inner.name_25 * 1000;
      }
      
      public final function copy() : class_240
      {
         var _loc3_:* = null as Vec2;
         var _loc4_:* = null as ZPP_Vec2;
         var _loc5_:* = null as Vec2;
         var _loc6_:* = null as ZPP_Vec2;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:* = null as Vec2;
         var _loc1_:class_240 = new class_240(zpp_inner.name_25 * 1000,zpp_inner.name_49);
         if(zpp_inner.name_21 != null)
         {
            _loc1_.zpp_inner.name_21 = Reflect.copy(zpp_inner.name_21);
         }
         var _loc2_:Vec2 = zpp_inner.var_184;
         if(_loc2_ == null)
         {
            if(_loc1_.zpp_inner.var_184 != null)
            {
               _loc1_.zpp_inner.var_184.zpp_inner.var_120 = false;
               _loc3_ = _loc1_.zpp_inner.var_184;
               _loc4_ = _loc3_.zpp_inner;
               _loc3_.zpp_inner.outer = null;
               _loc3_.zpp_inner = null;
               _loc5_ = _loc3_;
               _loc5_.var_72 = class_219.poolVec2;
               class_219.poolVec2 = _loc5_;
               _loc6_ = _loc4_;
               if(_loc6_.outer != null)
               {
                  _loc6_.outer.zpp_inner = null;
                  _loc6_.outer = null;
               }
               _loc6_.var_103 = null;
               _loc6_._validate = null;
               _loc6_._invalidate = null;
               _loc6_.next = ZPP_Vec2.var_72;
               ZPP_Vec2.var_72 = _loc6_;
               _loc1_.zpp_inner.var_184 = null;
            }
         }
         else
         {
            if(_loc1_.zpp_inner.var_184 == null)
            {
               _loc1_.zpp_inner.method_266();
            }
            _loc3_ = _loc1_.zpp_inner.var_184;
            _loc4_ = _loc2_.zpp_inner;
            if(_loc4_._validate != null)
            {
               _loc4_._validate();
            }
            _loc7_ = _loc2_.zpp_inner.x;
            _loc4_ = _loc2_.zpp_inner;
            if(_loc4_._validate != null)
            {
               _loc4_._validate();
            }
            _loc8_ = _loc2_.zpp_inner.y;
            _loc4_ = _loc3_.zpp_inner;
            §§push(false);
            if(_loc4_._validate != null)
            {
               _loc4_._validate();
            }
            if(_loc3_.zpp_inner.x == _loc7_)
            {
               §§pop();
               _loc4_ = _loc3_.zpp_inner;
               if(_loc4_._validate != null)
               {
                  _loc4_._validate();
               }
               §§push(_loc3_.zpp_inner.y == _loc8_);
            }
            if(!§§pop())
            {
               _loc3_.zpp_inner.x = _loc7_;
               _loc3_.zpp_inner.y = _loc8_;
               _loc4_ = _loc3_.zpp_inner;
               if(_loc4_._invalidate != null)
               {
                  _loc4_._invalidate(_loc4_);
               }
            }
            _loc5_ = _loc3_;
            if(_loc2_.zpp_inner.name_5)
            {
               _loc4_ = _loc2_.zpp_inner;
               _loc2_.zpp_inner.outer = null;
               _loc2_.zpp_inner = null;
               _loc9_ = _loc2_;
               _loc9_.var_72 = class_219.poolVec2;
               class_219.poolVec2 = _loc9_;
               _loc6_ = _loc4_;
               if(_loc6_.outer != null)
               {
                  _loc6_.outer.zpp_inner = null;
                  _loc6_.outer = null;
               }
               _loc6_.var_103 = null;
               _loc6_._validate = null;
               _loc6_._invalidate = null;
               _loc6_.next = ZPP_Vec2.var_72;
               ZPP_Vec2.var_72 = _loc6_;
            }
            else
            {
               false;
            }
            _loc5_;
         }
         _loc1_.zpp_inner.var_184;
         return _loc1_;
      }
   }
}
