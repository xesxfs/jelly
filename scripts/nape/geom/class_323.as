package nape.geom
{
   import zpp_nape.geom.ZPP_GeomVert;
   import zpp_nape.geom.ZPP_Vec2;
   import zpp_nape.geom.class_262;
   import zpp_nape.util.class_219;
   
   public final class class_323
   {
       
      
      public var zpp_inner:class_262;
      
      public function class_323()
      {
      }
      
      public final function next() : Vec2
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Boolean = false;
         var _loc6_:* = null as Vec2;
         var _loc7_:Boolean = false;
         var _loc8_:* = null as ZPP_Vec2;
         var _loc2_:ZPP_GeomVert = zpp_inner.var_559;
         if(_loc2_.var_127 == null)
         {
            _loc3_ = _loc2_.x;
            _loc4_ = _loc2_.y;
            _loc5_ = false;
            if(class_219.poolVec2 == null)
            {
               _loc6_ = new Vec2();
            }
            else
            {
               _loc6_ = class_219.poolVec2;
               class_219.poolVec2 = _loc6_.var_72;
               _loc6_.var_72 = null;
            }
            if(_loc6_.zpp_inner == null)
            {
               _loc7_ = false;
               if(ZPP_Vec2.var_72 == null)
               {
                  _loc8_ = new ZPP_Vec2();
               }
               else
               {
                  _loc8_ = ZPP_Vec2.var_72;
                  ZPP_Vec2.var_72 = _loc8_.next;
                  _loc8_.next = null;
               }
               _loc8_.name_5 = false;
               _loc8_.var_109 = _loc7_;
               _loc8_.x = _loc3_;
               _loc8_.y = _loc4_;
               _loc6_.zpp_inner = _loc8_;
               _loc6_.zpp_inner.outer = _loc6_;
            }
            else
            {
               _loc8_ = _loc6_.zpp_inner;
               §§push(false);
               if(_loc8_._validate != null)
               {
                  _loc8_._validate();
               }
               if(_loc6_.zpp_inner.x == _loc3_)
               {
                  §§pop();
                  _loc8_ = _loc6_.zpp_inner;
                  if(_loc8_._validate != null)
                  {
                     _loc8_._validate();
                  }
                  §§push(_loc6_.zpp_inner.y == _loc4_);
               }
               if(!§§pop())
               {
                  _loc6_.zpp_inner.x = _loc3_;
                  _loc6_.zpp_inner.y = _loc4_;
                  _loc8_ = _loc6_.zpp_inner;
                  if(_loc8_._invalidate != null)
                  {
                     _loc8_._invalidate(_loc8_);
                  }
               }
               _loc6_;
            }
            _loc6_.zpp_inner.name_5 = _loc5_;
            _loc2_.var_127 = _loc6_;
            _loc2_.var_127.zpp_inner.var_120 = true;
            _loc2_.var_127.zpp_inner._invalidate = _loc2_.method_195;
            _loc2_.var_127.zpp_inner._validate = _loc2_.method_213;
         }
         var _loc1_:Vec2 = _loc2_.var_127;
         if(zpp_inner.var_922)
         {
            zpp_inner.var_559 = zpp_inner.var_559.next;
         }
         else
         {
            zpp_inner.var_559 = zpp_inner.var_559.var_75;
         }
         return _loc1_;
      }
      
      public final function hasNext() : Boolean
      {
         var _loc2_:* = null as class_262;
         var _loc3_:* = null as ZPP_GeomVert;
         var _loc1_:Boolean = zpp_inner.var_559 != zpp_inner.start || zpp_inner.name_41;
         zpp_inner.name_41 = false;
         if(!_loc1_)
         {
            _loc2_ = zpp_inner;
            _loc2_.outer.zpp_inner = null;
            _loc3_ = null;
            _loc2_.start = _loc3_;
            _loc2_.var_559 = _loc3_;
            _loc2_.next = class_262.var_72;
            class_262.var_72 = _loc2_;
         }
         return _loc1_;
      }
   }
}
