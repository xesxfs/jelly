package zpp_nape.geom
{
   import nape.geom.Vec2;
   import zpp_nape.util.class_219;
   
   public final class ZPP_GeomVert
   {
      
      public static var var_72:ZPP_GeomVert = null;
       
      
      public var y:Number;
      
      public var x:Number;
      
      public var var_127:Vec2;
      
      public var var_75:ZPP_GeomVert;
      
      public var next:ZPP_GeomVert;
      
      public var var_154:Boolean;
      
      public function ZPP_GeomVert()
      {
         var_154 = false;
         var_127 = null;
         next = null;
         var_75 = null;
         y = 0;
         x = 0;
      }
      
      public static function method_65(param1:Number, param2:Number) : ZPP_GeomVert
      {
         var _loc3_:* = null as ZPP_GeomVert;
         if(ZPP_GeomVert.var_72 == null)
         {
            _loc3_ = new ZPP_GeomVert();
         }
         else
         {
            _loc3_ = ZPP_GeomVert.var_72;
            ZPP_GeomVert.var_72 = _loc3_.next;
            _loc3_.next = null;
         }
         _loc3_.var_154 = false;
         _loc3_.x = param1;
         _loc3_.y = param2;
         return _loc3_;
      }
      
      public final function method_109() : Vec2
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Boolean = false;
         var _loc4_:* = null as Vec2;
         var _loc5_:Boolean = false;
         var _loc6_:* = null as ZPP_Vec2;
         if(var_127 == null)
         {
            _loc1_ = x;
            _loc2_ = y;
            _loc3_ = false;
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
               _loc5_ = false;
               if(ZPP_Vec2.var_72 == null)
               {
                  _loc6_ = new ZPP_Vec2();
               }
               else
               {
                  _loc6_ = ZPP_Vec2.var_72;
                  ZPP_Vec2.var_72 = _loc6_.next;
                  _loc6_.next = null;
               }
               _loc6_.name_5 = false;
               _loc6_.var_109 = _loc5_;
               _loc6_.x = _loc1_;
               _loc6_.y = _loc2_;
               _loc4_.zpp_inner = _loc6_;
               _loc4_.zpp_inner.outer = _loc4_;
            }
            else
            {
               _loc6_ = _loc4_.zpp_inner;
               §§push(false);
               if(_loc6_._validate != null)
               {
                  _loc6_._validate();
               }
               if(_loc4_.zpp_inner.x == _loc1_)
               {
                  §§pop();
                  _loc6_ = _loc4_.zpp_inner;
                  if(_loc6_._validate != null)
                  {
                     _loc6_._validate();
                  }
                  §§push(_loc4_.zpp_inner.y == _loc2_);
               }
               if(!§§pop())
               {
                  _loc4_.zpp_inner.x = _loc1_;
                  _loc4_.zpp_inner.y = _loc2_;
                  _loc6_ = _loc4_.zpp_inner;
                  if(_loc6_._invalidate != null)
                  {
                     _loc6_._invalidate(_loc6_);
                  }
               }
               _loc4_;
            }
            _loc4_.zpp_inner.name_5 = _loc3_;
            var_127 = _loc4_;
            var_127.zpp_inner.var_120 = true;
            var_127.zpp_inner._invalidate = method_195;
            var_127.zpp_inner._validate = method_213;
         }
         return var_127;
      }
      
      public final function method_195(param1:ZPP_Vec2) : void
      {
         x = param1.x;
         y = param1.y;
      }
      
      public final function method_213() : void
      {
         var_127.zpp_inner.x = x;
         var_127.zpp_inner.y = y;
      }
      
      public final function method_129() : void
      {
         var _loc1_:* = null as Vec2;
         var _loc2_:* = null as ZPP_Vec2;
         var _loc3_:* = null as Vec2;
         var _loc4_:* = null as ZPP_Vec2;
         if(var_127 != null)
         {
            var_127.zpp_inner.var_120 = false;
            _loc1_ = var_127;
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
            var_127 = null;
         }
         next = null;
         var_75 = null;
      }
      
      public final function method_507() : void
      {
         var_154 = false;
      }
   }
}
