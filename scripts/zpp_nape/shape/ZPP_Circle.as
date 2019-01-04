package zpp_nape.shape
{
   import nape.geom.Vec2;
   import nape.geom.class_242;
   import package_32.Circle;
   import package_35.class_238;
   import zpp_nape.geom.ZPP_Vec2;
   import zpp_nape.phys.ZPP_Body;
   import zpp_nape.util.class_219;
   import zpp_nape.util.class_223;
   
   public final class ZPP_Circle extends ZPP_Shape
   {
       
      
      public var radius:Number;
      
      public var outer_zn:Circle;
      
      public function ZPP_Circle()
      {
         radius = 0;
         outer_zn = null;
         super(class_223.var_131);
         var_102 = this;
         var_140 = false;
      }
      
      public static function method_417() : void
      {
      }
      
      public final function method_128() : void
      {
         var _loc5_:* = null as Vec2;
         var _loc6_:Boolean = false;
         var _loc7_:* = null as ZPP_Vec2;
         var _loc2_:Number = var_82;
         var _loc3_:Number = var_81;
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
            _loc7_.y = _loc3_;
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
               §§push(_loc5_.zpp_inner.y == _loc3_);
            }
            if(!§§pop())
            {
               _loc5_.zpp_inner.x = _loc2_;
               _loc5_.zpp_inner.y = _loc3_;
               _loc7_ = _loc5_.zpp_inner;
               if(_loc7_._invalidate != null)
               {
                  _loc7_._invalidate(_loc7_);
               }
            }
            _loc5_;
         }
         _loc5_.zpp_inner.name_5 = false;
         var_115 = _loc5_;
         var_115.zpp_inner.var_120 = true;
         var_115.zpp_inner._validate = localCOM_validate;
         var_115.zpp_inner._invalidate = localCOM_invalidate;
      }
      
      public final function localCOM_validate() : void
      {
         var_115.zpp_inner.x = var_82;
         var_115.zpp_inner.y = var_81;
      }
      
      public final function localCOM_invalidate(param1:ZPP_Vec2) : void
      {
         var_82 = param1.x;
         var_81 = param1.y;
         method_159();
         if(body != null)
         {
            body.method_106();
         }
      }
      
      public final function method_250() : void
      {
         method_238();
         method_183();
         var_149 = true;
         if(body != null)
         {
            body.var_149 = true;
         }
         if(body != null)
         {
            body.method_106();
         }
      }
      
      public final function method_425() : void
      {
         var_366 = Number(Math.sqrt(Number(var_82 * var_82 + var_81 * var_81)));
         var_258 = Number(var_366 + radius);
      }
      
      public final function method_422() : void
      {
         var _loc1_:Number = radius * radius;
         area = _loc1_ * Math.PI;
         inertia = Number(_loc1_ * 0.5 + (Number(var_82 * var_82 + var_81 * var_81)));
      }
      
      public final function method_369() : void
      {
         var _loc1_:Number = Number(var_82 * var_82 + var_81 * var_81);
         var _loc2_:Number = radius * radius;
         var _loc3_:Number = material.name_28 * class_238.var_956;
         name_59 = Number((_loc1_ + 2 * _loc2_) * _loc3_ + 0.5 * class_238.var_755 * (1 + class_238.var_766) * _loc1_);
         name_59 = name_59 / (2 * (_loc1_ + 0.5 * _loc2_));
      }
      
      public final function method_429(param1:Number, param2:Number) : void
      {
         var_82 = Number(var_82 + param1 * 1);
         var_81 = Number(var_81 + param2 * 1);
         method_159();
      }
      
      public final function method_388(param1:class_242) : void
      {
         var _loc2_:Number = param1.zpp_inner.a * param1.zpp_inner.d - param1.zpp_inner.b * param1.zpp_inner.c;
         if(_loc2_ < 0)
         {
            _loc2_ = -_loc2_;
         }
         radius = radius * Math.sqrt(_loc2_);
         var _loc3_:Number = Number(Number(param1.zpp_inner.a * var_82 + param1.zpp_inner.b * var_81) + param1.zpp_inner.tx);
         var_81 = Number(Number(param1.zpp_inner.c * var_82 + param1.zpp_inner.d * var_81) + param1.zpp_inner.ty);
         var_82 = _loc3_;
         method_250();
         method_159();
      }
      
      public final function method_421(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = ((param1 < 0?-param1:param1) + (param2 < 0?-param2:param2)) / 2;
         if(_loc3_ < 0)
         {
            radius = radius * -_loc3_;
         }
         else
         {
            radius = radius * _loc3_;
         }
         method_250();
         if(Number(var_82 * var_82 + var_81 * var_81) > 0)
         {
            var_82 = var_82 * param1;
            var_81 = var_81 * param2;
            method_159();
         }
      }
      
      public final function method_410(param1:Number, param2:Number) : void
      {
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         if(Number(var_82 * var_82 + var_81 * var_81) > 0)
         {
            _loc3_ = 0;
            _loc4_ = 0;
            _loc3_ = Number(param2 * var_82 - param1 * var_81);
            _loc4_ = Number(Number(var_82 * param1 + var_81 * param2));
            var_82 = _loc3_;
            var_81 = _loc4_;
            method_159();
         }
      }
      
      public final function method_398() : ZPP_Circle
      {
         var _loc1_:ZPP_Circle = new Circle(radius).var_85;
         _loc1_.var_82 = var_82;
         _loc1_.var_81 = var_81;
         _loc1_.var_140 = false;
         return _loc1_;
      }
   }
}
