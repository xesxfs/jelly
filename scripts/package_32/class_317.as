package package_32
{
   import nape.geom.Vec2;
   import zpp_nape.geom.ZPP_Vec2;
   import zpp_nape.phys.ZPP_Body;
   import zpp_nape.shape.ZPP_Edge;
   import zpp_nape.shape.ZPP_Polygon;
   import zpp_nape.util.ZNPNode_ZPP_Edge;
   
   public final class class_317
   {
       
      
      public var zpp_inner:ZPP_Edge;
      
      public function class_317()
      {
         zpp_inner = null;
      }
      
      public final function toString() : String
      {
         var _loc1_:* = null as ZPP_Polygon;
         var _loc2_:* = null as ZPP_Body;
         var _loc3_:* = null as ZPP_Vec2;
         var _loc4_:* = null as ZPP_Vec2;
         var _loc5_:* = null as ZPP_Vec2;
         var _loc6_:* = null as ZPP_Vec2;
         var _loc7_:* = null as ZNPNode_ZPP_Edge;
         var _loc8_:* = null as ZPP_Edge;
         if(zpp_inner.name_6 == null)
         {
            return class_2.method_14(-1820302602);
         }
         if(zpp_inner.name_6.body == null)
         {
            zpp_inner.name_6.method_124();
            return class_2.method_14(-1820302653) + (class_2.method_14(-1820302616) + zpp_inner.var_122 + class_2.method_14(-1820302784) + zpp_inner.var_121 + class_2.method_14(-1820302790)) + class_2.method_14(-1820302790);
         }
         _loc1_ = zpp_inner.name_6;
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
         return class_2.method_14(-1820302653) + (class_2.method_14(-1820302616) + zpp_inner.var_122 + class_2.method_14(-1820302784) + zpp_inner.var_121 + class_2.method_14(-1820302790)) + class_2.method_14(-1820302426) + (class_2.method_14(-1820302616) + zpp_inner.var_92 + class_2.method_14(-1820302784) + zpp_inner.var_91 + class_2.method_14(-1820302790)) + class_2.method_14(-1820302790);
      }
      
      public function get worldVertex2() : Vec2
      {
         var _loc2_:* = null as ZPP_Body;
         var _loc3_:* = null as ZPP_Vec2;
         var _loc4_:* = null as ZPP_Vec2;
         var _loc5_:* = null as ZPP_Vec2;
         var _loc6_:* = null as ZPP_Vec2;
         var _loc7_:* = null as ZNPNode_ZPP_Edge;
         var _loc8_:* = null as ZPP_Edge;
         var _loc1_:ZPP_Polygon = zpp_inner.name_6;
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
         _loc3_ = zpp_inner.gp1;
         if(_loc3_.outer == null)
         {
            _loc3_.outer = new Vec2();
            _loc4_ = _loc3_.outer.zpp_inner;
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
            _loc3_.outer.zpp_inner = _loc3_;
         }
         return _loc3_.outer;
      }
      
      public function get worldVertex1() : Vec2
      {
         var _loc2_:* = null as ZPP_Body;
         var _loc3_:* = null as ZPP_Vec2;
         var _loc4_:* = null as ZPP_Vec2;
         var _loc5_:* = null as ZPP_Vec2;
         var _loc6_:* = null as ZPP_Vec2;
         var _loc7_:* = null as ZNPNode_ZPP_Edge;
         var _loc8_:* = null as ZPP_Edge;
         var _loc1_:ZPP_Polygon = zpp_inner.name_6;
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
         _loc3_ = zpp_inner.gp0;
         if(_loc3_.outer == null)
         {
            _loc3_.outer = new Vec2();
            _loc4_ = _loc3_.outer.zpp_inner;
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
            _loc3_.outer.zpp_inner = _loc3_;
         }
         return _loc3_.outer;
      }
      
      public function get method_783() : Number
      {
         var _loc2_:* = null as ZPP_Body;
         var _loc3_:* = null as ZPP_Vec2;
         var _loc4_:* = null as ZPP_Vec2;
         var _loc5_:* = null as ZPP_Vec2;
         var _loc6_:* = null as ZPP_Vec2;
         var _loc7_:* = null as ZNPNode_ZPP_Edge;
         var _loc8_:* = null as ZPP_Edge;
         var _loc1_:ZPP_Polygon = zpp_inner.name_6;
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
         return zpp_inner.gprojection;
      }
      
      public function get method_827() : Vec2
      {
         if(zpp_inner.wrap_gnorm == null)
         {
            zpp_inner.method_674();
         }
         return zpp_inner.wrap_gnorm;
      }
      
      public function get name_6() : Polygon
      {
         return zpp_inner.name_6.outer_zn;
      }
      
      public function get localVertex2() : Vec2
      {
         var _loc2_:* = null as ZPP_Vec2;
         zpp_inner.name_6.method_124();
         var _loc1_:ZPP_Vec2 = zpp_inner.lp1;
         if(_loc1_.outer == null)
         {
            _loc1_.outer = new Vec2();
            _loc2_ = _loc1_.outer.zpp_inner;
            if(_loc2_.outer != null)
            {
               _loc2_.outer.zpp_inner = null;
               _loc2_.outer = null;
            }
            _loc2_.var_103 = null;
            _loc2_._validate = null;
            _loc2_._invalidate = null;
            _loc2_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc2_;
            _loc1_.outer.zpp_inner = _loc1_;
         }
         return _loc1_.outer;
      }
      
      public function get localVertex1() : Vec2
      {
         var _loc2_:* = null as ZPP_Vec2;
         zpp_inner.name_6.method_124();
         var _loc1_:ZPP_Vec2 = zpp_inner.lp0;
         if(_loc1_.outer == null)
         {
            _loc1_.outer = new Vec2();
            _loc2_ = _loc1_.outer.zpp_inner;
            if(_loc2_.outer != null)
            {
               _loc2_.outer.zpp_inner = null;
               _loc2_.outer = null;
            }
            _loc2_.var_103 = null;
            _loc2_._validate = null;
            _loc2_._invalidate = null;
            _loc2_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc2_;
            _loc1_.outer.zpp_inner = _loc1_;
         }
         return _loc1_.outer;
      }
      
      public function get method_874() : Number
      {
         zpp_inner.name_6.method_124();
         return zpp_inner.var_165;
      }
      
      public function get method_816() : Vec2
      {
         if(zpp_inner.var_335 == null)
         {
            zpp_inner.method_713();
         }
         return zpp_inner.var_335;
      }
      
      public function get length() : Number
      {
         zpp_inner.name_6.method_124();
         return zpp_inner.length;
      }
   }
}
