package zpp_nape.shape
{
   import nape.geom.Vec2;
   import package_32.class_317;
   import zpp_nape.geom.ZPP_Vec2;
   import zpp_nape.phys.ZPP_Body;
   import zpp_nape.util.ZNPNode_ZPP_Edge;
   import zpp_nape.util.class_219;
   
   public final class ZPP_Edge
   {
      
      public static var var_72:ZPP_Edge = null;
      
      public static var var_87:Boolean = false;
       
      
      public var var_335:Vec2;
      
      public var wrap_gnorm:Vec2;
      
      public var tp1:Number;
      
      public var tp0:Number;
      
      public var name_6:ZPP_Polygon;
      
      public var outer:class_317;
      
      public var next:ZPP_Edge;
      
      public var var_165:Number;
      
      public var lp1:ZPP_Vec2;
      
      public var lp0:ZPP_Vec2;
      
      public var var_121:Number;
      
      public var var_122:Number;
      
      public var length:Number;
      
      public var gprojection:Number;
      
      public var gp1:ZPP_Vec2;
      
      public var gp0:ZPP_Vec2;
      
      public var var_91:Number;
      
      public var var_92:Number;
      
      public function ZPP_Edge()
      {
         tp1 = 0;
         tp0 = 0;
         gp1 = null;
         lp1 = null;
         gp0 = null;
         lp0 = null;
         gprojection = 0;
         var_165 = 0;
         length = 0;
         wrap_gnorm = null;
         var_91 = 0;
         var_92 = 0;
         var_335 = null;
         var_121 = 0;
         var_122 = 0;
         outer = null;
         name_6 = null;
         next = null;
         var_122 = 0;
         var_121 = 0;
         var_92 = 0;
         var_91 = 0;
         length = 0;
         var_165 = 0;
         gprojection = 0;
      }
      
      public final function method_109() : class_317
      {
         if(outer == null)
         {
            ZPP_Edge.var_87 = true;
            outer = new class_317();
            ZPP_Edge.var_87 = false;
            outer.zpp_inner = this;
         }
         return outer;
      }
      
      public final function lnorm_validate() : void
      {
         name_6.method_124();
         var_335.zpp_inner.x = var_122;
         var_335.zpp_inner.y = var_121;
      }
      
      public final function gnorm_validate() : void
      {
         var _loc2_:* = null as ZPP_Body;
         var _loc3_:* = null as ZPP_Vec2;
         var _loc4_:* = null as ZPP_Vec2;
         var _loc5_:* = null as ZPP_Vec2;
         var _loc6_:* = null as ZPP_Vec2;
         var _loc7_:* = null as ZNPNode_ZPP_Edge;
         var _loc8_:* = null as ZPP_Edge;
         var _loc1_:ZPP_Polygon = name_6;
         if(_loc1_.var_247)
         {
            if(_loc1_.body != null)
            {
               _loc1_.var_247 = false;
               _loc1_.method_124();
               _loc2_ = _loc1_.body;
               if(_loc2_.var_113)
               {
                  _loc2_.var_113 = false;
                  _loc2_.var_84 = Number(Math.sin(_loc2_.var_93));
                  _loc2_.var_83 = Number(Math.cos(_loc2_.var_93));
                  null;
               }
               if(_loc1_.var_153)
               {
                  if(_loc1_.body != null)
                  {
                     _loc1_.var_153 = false;
                     _loc1_.method_116();
                     _loc2_ = _loc1_.body;
                     if(_loc2_.var_113)
                     {
                        _loc2_.var_113 = false;
                        _loc2_.var_84 = Number(Math.sin(_loc2_.var_93));
                        _loc2_.var_83 = Number(Math.cos(_loc2_.var_93));
                        null;
                     }
                     _loc3_ = _loc1_.var_88.next;
                     _loc4_ = _loc1_.var_107.next;
                     while(_loc4_ != null)
                     {
                        _loc5_ = _loc4_;
                        _loc6_ = _loc3_;
                        _loc3_ = _loc3_.next;
                        _loc5_.x = Number(_loc1_.body.var_95 + (_loc1_.body.var_83 * _loc6_.x - _loc1_.body.var_84 * _loc6_.y));
                        _loc5_.y = Number(_loc1_.body.var_96 + (Number(_loc6_.x * _loc1_.body.var_84 + _loc6_.y * _loc1_.body.var_83)));
                        _loc4_ = _loc4_.next;
                     }
                  }
               }
               _loc7_ = _loc1_.name_11.var_73;
               _loc3_ = _loc1_.var_107.next;
               _loc4_ = _loc3_;
               _loc3_ = _loc3_.next;
               while(_loc3_ != null)
               {
                  _loc5_ = _loc3_;
                  _loc8_ = _loc7_.var_74;
                  _loc7_ = _loc7_.next;
                  _loc8_.gp0 = _loc4_;
                  _loc8_.gp1 = _loc5_;
                  _loc8_.var_92 = _loc1_.body.var_83 * _loc8_.var_122 - _loc1_.body.var_84 * _loc8_.var_121;
                  _loc8_.var_91 = Number(_loc8_.var_122 * _loc1_.body.var_84 + _loc8_.var_121 * _loc1_.body.var_83);
                  _loc8_.gprojection = Number(Number(_loc1_.body.var_95 * _loc8_.var_92 + _loc1_.body.var_96 * _loc8_.var_91) + _loc8_.var_165);
                  if(_loc8_.wrap_gnorm != null)
                  {
                     _loc8_.wrap_gnorm.zpp_inner.x = _loc8_.var_92;
                     _loc8_.wrap_gnorm.zpp_inner.y = _loc8_.var_91;
                  }
                  _loc8_.tp0 = _loc8_.gp0.y * _loc8_.var_92 - _loc8_.gp0.x * _loc8_.var_91;
                  _loc8_.tp1 = _loc8_.gp1.y * _loc8_.var_92 - _loc8_.gp1.x * _loc8_.var_91;
                  _loc4_ = _loc5_;
                  _loc3_ = _loc3_.next;
               }
               _loc5_ = _loc1_.var_107.next;
               _loc8_ = _loc7_.var_74;
               _loc7_ = _loc7_.next;
               _loc8_.gp0 = _loc4_;
               _loc8_.gp1 = _loc5_;
               _loc8_.var_92 = _loc1_.body.var_83 * _loc8_.var_122 - _loc1_.body.var_84 * _loc8_.var_121;
               _loc8_.var_91 = Number(_loc8_.var_122 * _loc1_.body.var_84 + _loc8_.var_121 * _loc1_.body.var_83);
               _loc8_.gprojection = Number(Number(_loc1_.body.var_95 * _loc8_.var_92 + _loc1_.body.var_96 * _loc8_.var_91) + _loc8_.var_165);
               if(_loc8_.wrap_gnorm != null)
               {
                  _loc8_.wrap_gnorm.zpp_inner.x = _loc8_.var_92;
                  _loc8_.wrap_gnorm.zpp_inner.y = _loc8_.var_91;
               }
               _loc8_.tp0 = _loc8_.gp0.y * _loc8_.var_92 - _loc8_.gp0.x * _loc8_.var_91;
               _loc8_.tp1 = _loc8_.gp1.y * _loc8_.var_92 - _loc8_.gp1.x * _loc8_.var_91;
            }
         }
         wrap_gnorm.zpp_inner.x = var_92;
         wrap_gnorm.zpp_inner.y = var_91;
      }
      
      public final function method_713() : void
      {
         var _loc4_:* = null as Vec2;
         var _loc5_:Boolean = false;
         var _loc6_:* = null as ZPP_Vec2;
         var _loc1_:Number = var_122;
         var _loc2_:Number = var_121;
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
         _loc4_.zpp_inner.name_5 = false;
         var_335 = _loc4_;
         var_335.zpp_inner.var_109 = true;
         var_335.zpp_inner._validate = lnorm_validate;
      }
      
      public final function method_674() : void
      {
         var _loc4_:* = null as Vec2;
         var _loc5_:Boolean = false;
         var _loc6_:* = null as ZPP_Vec2;
         var _loc1_:Number = var_92;
         var _loc2_:Number = var_91;
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
         _loc4_.zpp_inner.name_5 = false;
         wrap_gnorm = _loc4_;
         wrap_gnorm.zpp_inner.var_109 = true;
         wrap_gnorm.zpp_inner._validate = gnorm_validate;
      }
   }
}
