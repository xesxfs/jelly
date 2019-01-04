package zpp_nape.geom
{
   import nape.geom.ConvexResult;
   import nape.geom.RayResult;
   import nape.geom.Vec2;
   import package_32.Shape;
   import zpp_nape.util.class_219;
   
   public final class class_297
   {
      
      public static var var_728:class_297 = null;
      
      public static var var_708:class_297 = null;
      
      public static var var_87:Boolean = false;
       
      
      public var var_285:Number;
      
      public var name_7:Shape;
      
      public var var_242:RayResult;
      
      public var position:Vec2;
      
      public var normal:Vec2;
      
      public var next:class_297;
      
      public var name_4:Boolean;
      
      public var var_776:ConvexResult;
      
      public function class_297()
      {
         var_285 = 0;
         next = null;
         name_4 = false;
         var_242 = null;
         position = null;
         var_776 = null;
         name_7 = null;
         normal = null;
      }
      
      public static function method_193(param1:Vec2, param2:Number, param3:Boolean, param4:Shape) : RayResult
      {
         var _loc5_:* = null as RayResult;
         if(class_297.var_708 == null)
         {
            class_297.var_87 = true;
            _loc5_ = new RayResult();
            _loc5_.zpp_inner = new class_297();
            _loc5_.zpp_inner.var_242 = _loc5_;
            class_297.var_87 = false;
         }
         else
         {
            _loc5_ = class_297.var_708.var_242;
            class_297.var_708 = class_297.var_708.next;
            _loc5_.zpp_inner.next = null;
         }
         var _loc6_:class_297 = _loc5_.zpp_inner;
         _loc6_.normal = param1;
         param1.zpp_inner.var_109 = true;
         _loc6_.var_285 = param2;
         _loc6_.name_4 = param3;
         _loc6_.name_7 = param4;
         return _loc5_;
      }
      
      public static function method_478(param1:Vec2, param2:Vec2, param3:Number, param4:Shape) : ConvexResult
      {
         var _loc5_:* = null as ConvexResult;
         if(class_297.var_728 == null)
         {
            class_297.var_87 = true;
            _loc5_ = new ConvexResult();
            _loc5_.zpp_inner = new class_297();
            _loc5_.zpp_inner.var_776 = _loc5_;
            class_297.var_87 = false;
         }
         else
         {
            _loc5_ = class_297.var_728.var_776;
            class_297.var_728 = class_297.var_728.next;
            _loc5_.zpp_inner.next = null;
         }
         var _loc6_:class_297 = _loc5_.zpp_inner;
         _loc6_.normal = param1;
         _loc6_.position = param2;
         param1.zpp_inner.var_109 = true;
         param2.zpp_inner.var_109 = true;
         _loc6_.var_285 = param3;
         _loc6_.name_7 = param4;
         return _loc5_;
      }
      
      public final function method_129() : void
      {
         var _loc1_:* = null as Vec2;
         var _loc2_:* = null as ZPP_Vec2;
         var _loc3_:* = null as Vec2;
         var _loc4_:* = null as ZPP_Vec2;
         normal.zpp_inner.var_109 = false;
         _loc1_ = normal;
         _loc2_ = _loc1_.zpp_inner;
         _loc1_.zpp_inner.outer = null;
         _loc1_.zpp_inner = null;
         _loc3_ = _loc1_;
         _loc3_.var_72 = class_219.poolVec2;
         class_219.poolVec2 = _loc3_;
         _loc4_ = _loc2_;
         if(_loc4_.outer != null)
         {
            _loc4_.outer.zpp_inner = null;
            _loc4_.outer = null;
         }
         _loc4_.var_103 = null;
         _loc4_._validate = null;
         _loc4_._invalidate = null;
         _loc4_.next = ZPP_Vec2.var_72;
         ZPP_Vec2.var_72 = _loc4_;
         if(position != null)
         {
            position.zpp_inner.var_109 = false;
            _loc1_ = position;
            _loc2_ = _loc1_.zpp_inner;
            _loc1_.zpp_inner.outer = null;
            _loc1_.zpp_inner = null;
            _loc3_ = _loc1_;
            _loc3_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc3_;
            _loc4_ = _loc2_;
            if(_loc4_.outer != null)
            {
               _loc4_.outer.zpp_inner = null;
               _loc4_.outer = null;
            }
            _loc4_.var_103 = null;
            _loc4_._validate = null;
            _loc4_._invalidate = null;
            _loc4_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc4_;
         }
         name_7 = null;
         var_285 = 0;
         if(var_776 != null)
         {
            next = class_297.var_728;
            class_297.var_728 = this;
         }
         else
         {
            next = class_297.var_708;
            class_297.var_708 = this;
         }
      }
   }
}
