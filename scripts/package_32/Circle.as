package package_32
{
   import nape.geom.Vec2;
   import package_26.class_222;
   import package_29.class_199;
   import zpp_nape.callbacks.ZPP_CbType;
   import zpp_nape.dynamics.ZPP_InteractionFilter;
   import zpp_nape.geom.ZPP_Vec2;
   import zpp_nape.phys.class_244;
   import zpp_nape.shape.ZPP_Circle;
   import zpp_nape.util.class_219;
   
   public final class Circle extends Shape
   {
       
      
      public var var_85:ZPP_Circle;
      
      public function Circle(param1:Number, param2:Vec2 = undefined, param3:class_199 = undefined, param4:class_222 = undefined)
      {
         var _loc5_:* = null as ZPP_Vec2;
         var _loc6_:* = null as Vec2;
         var _loc7_:* = null as ZPP_Vec2;
         var_85 = null;
         super();
         var_85 = new ZPP_Circle();
         var_85.outer = this;
         var_85.outer_zn = this;
         zpp_inner = var_85;
         var_150 = zpp_inner;
         var_150.var_307 = this;
         zpp_inner.method_112(class_2.method_14(-1820302721));
         if(param1 != var_85.radius)
         {
            var_85.radius = param1;
            var_85.method_250();
         }
         var_85.radius;
         if(param2 == null)
         {
            zpp_inner.var_82 = 0;
            zpp_inner.var_81 = 0;
         }
         else
         {
            _loc5_ = param2.zpp_inner;
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            zpp_inner.var_82 = param2.zpp_inner.x;
            _loc5_ = param2.zpp_inner;
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            zpp_inner.var_81 = param2.zpp_inner.y;
            if(param2.zpp_inner.name_5)
            {
               _loc5_ = param2.zpp_inner;
               param2.zpp_inner.outer = null;
               param2.zpp_inner = null;
               _loc6_ = param2;
               _loc6_.var_72 = class_219.poolVec2;
               class_219.poolVec2 = _loc6_;
               _loc7_ = _loc5_;
               if(_loc7_.outer != null)
               {
                  _loc7_.outer.zpp_inner = null;
                  _loc7_.outer = null;
               }
               _loc7_.var_103 = null;
               _loc7_._validate = null;
               _loc7_._invalidate = null;
               _loc7_.next = ZPP_Vec2.var_72;
               ZPP_Vec2.var_72 = _loc7_;
            }
            else
            {
               false;
            }
         }
         if(param3 == null)
         {
            if(class_244.var_72 == null)
            {
               zpp_inner.material = new class_244();
            }
            else
            {
               zpp_inner.material = class_244.var_72;
               class_244.var_72 = zpp_inner.material.next;
               zpp_inner.material.next = null;
            }
            null;
         }
         else
         {
            zpp_inner.method_112(class_2.method_14(-1820302416));
            zpp_inner.method_323(param3.zpp_inner);
            zpp_inner.material.method_109();
         }
         if(param4 == null)
         {
            if(ZPP_InteractionFilter.var_72 == null)
            {
               zpp_inner.filter = new ZPP_InteractionFilter();
            }
            else
            {
               zpp_inner.filter = ZPP_InteractionFilter.var_72;
               ZPP_InteractionFilter.var_72 = zpp_inner.filter.next;
               zpp_inner.filter.next = null;
            }
            null;
         }
         else
         {
            zpp_inner.method_112(class_2.method_14(-1820302682));
            zpp_inner.method_330(param4.zpp_inner);
            zpp_inner.filter.method_109();
         }
         var_150.method_175(ZPP_CbType.ANY_SHAPE.zpp_inner);
      }
      
      public function set radius(param1:Number) : Number
      {
         zpp_inner.method_112("Circle::radius");
         if(param1 != var_85.radius)
         {
            var_85.radius = param1;
            var_85.method_250();
         }
         return var_85.radius;
      }
      
      public function get radius() : Number
      {
         return var_85.radius;
      }
   }
}
