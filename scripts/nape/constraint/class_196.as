package nape.constraint
{
   import nape.geom.Vec2;
   import nape.geom.Vec3;
   import nape.geom.class_217;
   import package_29.Body;
   import package_31.class_197;
   import zpp_nape.constraint.ZPP_Constraint;
   import zpp_nape.constraint.class_220;
   import zpp_nape.geom.ZPP_Vec2;
   import zpp_nape.phys.ZPP_Body;
   import zpp_nape.space.ZPP_Space;
   import zpp_nape.util.class_219;
   
   public final class class_196 extends Constraint
   {
       
      
      public var var_85:class_220;
      
      public function class_196(param1:Body, param2:Body, param3:Vec2, param4:Vec2)
      {
         var _loc5_:* = null as ZPP_Body;
         var _loc9_:* = null as ZPP_Vec2;
         var _loc11_:* = null as Vec2;
         var _loc12_:* = null as ZPP_Vec2;
         var_85 = null;
         var_85 = new class_220();
         zpp_inner = var_85;
         zpp_inner.outer = this;
         var_85.outer_zn = this;
         super();
         zpp_inner;
         ZPP_Constraint.method_112(class_2.method_14(-1820302443) + "body1");
         if(param1 == null)
         {
            _loc5_ = null;
         }
         else
         {
            _loc5_ = param1.zpp_inner;
         }
         if(_loc5_ != var_85.b1)
         {
            if(var_85.b1 != null)
            {
               if(false)
               {
                  if(var_85.b1 != null)
                  {
                     var_85.b1.name_19.remove(zpp_inner);
                  }
               }
               §§push(false);
            }
            var_85.b1 = _loc5_;
            if(false && var_85.b2 != _loc5_)
            {
               if(_loc5_ != null)
               {
                  _loc5_.name_19.add(zpp_inner);
               }
            }
            §§push(false);
         }
         if(var_85.b1 == null)
         {
            null;
         }
         else
         {
            var_85.b1.outer;
         }
         zpp_inner;
         ZPP_Constraint.method_112(class_2.method_14(-1820302443) + "body2");
         if(param2 == null)
         {
            _loc5_ = null;
         }
         else
         {
            _loc5_ = param2.zpp_inner;
         }
         if(_loc5_ != var_85.b2)
         {
            if(var_85.b2 != null)
            {
               if(false)
               {
                  if(var_85.b2 != null)
                  {
                     var_85.b2.name_19.remove(zpp_inner);
                  }
               }
               §§push(false);
            }
            var_85.b2 = _loc5_;
            if(false && var_85.b1 != _loc5_)
            {
               if(_loc5_ != null)
               {
                  _loc5_.name_19.add(zpp_inner);
               }
            }
            §§push(false);
         }
         if(var_85.b2 == null)
         {
            null;
         }
         else
         {
            var_85.b2.outer;
         }
         if(var_85.wrap_a1 == null)
         {
            var_85.setup_a1();
         }
         var _loc6_:Vec2 = var_85.wrap_a1;
         _loc9_ = param3.zpp_inner;
         if(_loc9_._validate != null)
         {
            _loc9_._validate();
         }
         var _loc8_:Number = param3.zpp_inner.x;
         _loc9_ = param3.zpp_inner;
         if(_loc9_._validate != null)
         {
            _loc9_._validate();
         }
         var _loc10_:Number = param3.zpp_inner.y;
         _loc9_ = _loc6_.zpp_inner;
         §§push(false);
         if(_loc9_._validate != null)
         {
            _loc9_._validate();
         }
         if(_loc6_.zpp_inner.x == _loc8_)
         {
            §§pop();
            _loc9_ = _loc6_.zpp_inner;
            if(_loc9_._validate != null)
            {
               _loc9_._validate();
            }
            §§push(_loc6_.zpp_inner.y == _loc10_);
         }
         if(!§§pop())
         {
            _loc6_.zpp_inner.x = _loc8_;
            _loc6_.zpp_inner.y = _loc10_;
            _loc9_ = _loc6_.zpp_inner;
            if(_loc9_._invalidate != null)
            {
               _loc9_._invalidate(_loc9_);
            }
         }
         var _loc7_:Vec2 = _loc6_;
         if(param3.zpp_inner.name_5)
         {
            _loc9_ = param3.zpp_inner;
            param3.zpp_inner.outer = null;
            param3.zpp_inner = null;
            _loc11_ = param3;
            _loc11_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc11_;
            _loc12_ = _loc9_;
            if(_loc12_.outer != null)
            {
               _loc12_.outer.zpp_inner = null;
               _loc12_.outer = null;
            }
            _loc12_.var_103 = null;
            _loc12_._validate = null;
            _loc12_._invalidate = null;
            _loc12_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc12_;
         }
         else
         {
            false;
         }
         _loc7_;
         if(var_85.wrap_a1 == null)
         {
            var_85.setup_a1();
         }
         var_85.wrap_a1;
         if(var_85.wrap_a2 == null)
         {
            var_85.setup_a2();
         }
         _loc6_ = var_85.wrap_a2;
         _loc9_ = param4.zpp_inner;
         if(_loc9_._validate != null)
         {
            _loc9_._validate();
         }
         _loc8_ = param4.zpp_inner.x;
         _loc9_ = param4.zpp_inner;
         if(_loc9_._validate != null)
         {
            _loc9_._validate();
         }
         _loc10_ = param4.zpp_inner.y;
         _loc9_ = _loc6_.zpp_inner;
         §§push(false);
         if(_loc9_._validate != null)
         {
            _loc9_._validate();
         }
         if(_loc6_.zpp_inner.x == _loc8_)
         {
            §§pop();
            _loc9_ = _loc6_.zpp_inner;
            if(_loc9_._validate != null)
            {
               _loc9_._validate();
            }
            §§push(_loc6_.zpp_inner.y == _loc10_);
         }
         if(!§§pop())
         {
            _loc6_.zpp_inner.x = _loc8_;
            _loc6_.zpp_inner.y = _loc10_;
            _loc9_ = _loc6_.zpp_inner;
            if(_loc9_._invalidate != null)
            {
               _loc9_._invalidate(_loc9_);
            }
         }
         _loc7_ = _loc6_;
         if(param4.zpp_inner.name_5)
         {
            _loc9_ = param4.zpp_inner;
            param4.zpp_inner.outer = null;
            param4.zpp_inner = null;
            _loc11_ = param4;
            _loc11_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc11_;
            _loc12_ = _loc9_;
            if(_loc12_.outer != null)
            {
               _loc12_.outer.zpp_inner = null;
               _loc12_.outer = null;
            }
            _loc12_.var_103 = null;
            _loc12_._validate = null;
            _loc12_._invalidate = null;
            _loc12_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc12_;
         }
         else
         {
            false;
         }
         _loc7_;
         if(var_85.wrap_a2 == null)
         {
            var_85.setup_a2();
         }
         var_85.wrap_a2;
      }
      
      override public function method_161(param1:Function) : void
      {
         if(false)
         {
            param1(var_85.b2 == null?null:var_85.b2.outer);
         }
      }
      
      public function set body2(param1:Body) : Body
      {
         var _loc2_:* = null as ZPP_Body;
         zpp_inner;
         ZPP_Constraint.method_112("Constraint::body2");
         if(param1 == null)
         {
            _loc2_ = null;
         }
         else
         {
            _loc2_ = param1.zpp_inner;
         }
         if(_loc2_ != var_85.b2)
         {
            if(var_85.b2 != null)
            {
               if(false)
               {
                  if(var_85.b2 != null)
                  {
                     var_85.b2.name_19.remove(zpp_inner);
                  }
               }
               §§push(false);
            }
            var_85.b2 = _loc2_;
            if(false && var_85.b1 != _loc2_)
            {
               if(_loc2_ != null)
               {
                  _loc2_.name_19.add(zpp_inner);
               }
            }
            §§push(false);
         }
         if(var_85.b2 == null)
         {
            return null;
         }
         return var_85.b2.outer;
      }
      
      public function set body1(param1:Body) : Body
      {
         var _loc2_:* = null as ZPP_Body;
         zpp_inner;
         ZPP_Constraint.method_112("Constraint::body1");
         if(param1 == null)
         {
            _loc2_ = null;
         }
         else
         {
            _loc2_ = param1.zpp_inner;
         }
         if(_loc2_ != var_85.b1)
         {
            if(var_85.b1 != null)
            {
               if(false)
               {
                  if(var_85.b1 != null)
                  {
                     var_85.b1.name_19.remove(zpp_inner);
                  }
               }
               §§push(false);
            }
            var_85.b1 = _loc2_;
            if(false && var_85.b2 != _loc2_)
            {
               if(_loc2_ != null)
               {
                  _loc2_.name_19.add(zpp_inner);
               }
            }
            §§push(false);
         }
         if(var_85.b1 == null)
         {
            return null;
         }
         return var_85.b1.outer;
      }
      
      public function set anchor2(param1:Vec2) : Vec2
      {
         var _loc5_:* = null as ZPP_Vec2;
         var _loc7_:* = null as Vec2;
         var _loc8_:* = null as ZPP_Vec2;
         if(var_85.wrap_a2 == null)
         {
            var_85.setup_a2();
         }
         var _loc2_:Vec2 = var_85.wrap_a2;
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
         if(var_85.wrap_a2 == null)
         {
            var_85.setup_a2();
         }
         return var_85.wrap_a2;
      }
      
      public function set anchor1(param1:Vec2) : Vec2
      {
         var _loc5_:* = null as ZPP_Vec2;
         var _loc7_:* = null as Vec2;
         var _loc8_:* = null as ZPP_Vec2;
         if(var_85.wrap_a1 == null)
         {
            var_85.setup_a1();
         }
         var _loc2_:Vec2 = var_85.wrap_a1;
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
         if(var_85.wrap_a1 == null)
         {
            var_85.setup_a1();
         }
         return var_85.wrap_a1;
      }
      
      override public function method_659() : class_217
      {
         var _loc1_:class_217 = new class_217(2,1);
         _loc1_.zpp_inner.x[0 * _loc1_.zpp_inner.var_324] = var_85.var_198;
         _loc1_.zpp_inner.x[_loc1_.zpp_inner.var_324] = var_85.var_196;
         return _loc1_;
      }
      
      public function get body2() : Body
      {
         if(var_85.b2 == null)
         {
            return null;
         }
         return var_85.b2.outer;
      }
      
      public function get body1() : Body
      {
         if(var_85.b1 == null)
         {
            return null;
         }
         return var_85.b1.outer;
      }
      
      public function get anchor2() : Vec2
      {
         if(var_85.wrap_a2 == null)
         {
            var_85.setup_a2();
         }
         return var_85.wrap_a2;
      }
      
      public function get anchor1() : Vec2
      {
         if(var_85.wrap_a1 == null)
         {
            var_85.setup_a1();
         }
         return var_85.wrap_a1;
      }
      
      override public function method_262(param1:Body) : Vec3
      {
         if(!zpp_inner.active)
         {
            return Vec3.method_65();
         }
         return var_85.method_262(param1.zpp_inner);
      }
   }
}
