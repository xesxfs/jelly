package zpp_nape.geom
{
   import zpp_nape.util.ZPP_Set_ZPP_SimpleSeg;
   
   public final class ZPP_SimpleSweep
   {
       
      
      public var var_276:ZPP_Set_ZPP_SimpleSeg;
      
      public var var_402:Number;
      
      public function ZPP_SimpleSweep()
      {
         var_276 = null;
         var_402 = 0;
         if(ZPP_Set_ZPP_SimpleSeg.var_72 == null)
         {
            var_276 = new ZPP_Set_ZPP_SimpleSeg();
         }
         else
         {
            var_276 = ZPP_Set_ZPP_SimpleSeg.var_72;
            ZPP_Set_ZPP_SimpleSeg.var_72 = var_276.next;
            var_276.next = null;
         }
         null;
         var_276.lt = edge_lt;
         ;
         var_276.name_9 = ZPP_SimpleSweep.swap_nodes;
      }
      
      public static function swap_nodes(param1:ZPP_SimpleSeg, param2:ZPP_SimpleSeg) : void
      {
         var _loc3_:ZPP_Set_ZPP_SimpleSeg = param1.var_138;
         param1.var_138 = param2.var_138;
         param2.var_138 = _loc3_;
      }
      
      public static function intersection(param1:ZPP_SimpleSeg, param2:ZPP_SimpleSeg) : ZPP_SimpleEvent
      {
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:* = null as ZPP_SimpleVert;
         var _loc13_:* = null as ZPP_SimpleVert;
         var _loc14_:* = null as ZPP_SimpleEvent;
         var _loc15_:* = null as ZPP_SimpleEvent;
         if(param1 == null || param2 == null)
         {
            return null;
         }
         if(param1.left == param2.left || param1.left == param2.right || param1.right == param2.left || param1.right == param2.right)
         {
            return null;
         }
         _loc3_ = 0;
         _loc4_ = 0;
         _loc3_ = Number(param1.right.x - param1.left.x);
         _loc4_ = Number(param1.right.y - param1.left.y);
         _loc5_ = 0;
         _loc6_ = 0;
         _loc5_ = Number(param2.right.x - param2.left.x);
         _loc6_ = Number(param2.right.y - param2.left.y);
         _loc7_ = _loc6_ * _loc3_ - _loc5_ * _loc4_;
         if(_loc7_ == 0)
         {
            return null;
         }
         _loc7_ = 1 / _loc7_;
         _loc8_ = 0;
         _loc9_ = 0;
         _loc8_ = Number(param2.left.x - param1.left.x);
         _loc9_ = Number(param2.left.y - param1.left.y);
         _loc10_ = (_loc6_ * _loc8_ - _loc5_ * _loc9_) * _loc7_;
         if(_loc10_ < 0 || _loc10_ > 1)
         {
            return null;
         }
         _loc11_ = (_loc4_ * _loc8_ - _loc3_ * _loc9_) * _loc7_;
         if(_loc11_ < 0 || _loc11_ > 1)
         {
            return null;
         }
         if(_loc11_ == 0 || _loc11_ == 1 || _loc10_ == 0 || _loc10_ == 1)
         {
            if(_loc11_ == 0)
            {
               _loc12_ = param2.left;
            }
            else if(_loc11_ == 1)
            {
               _loc12_ = param2.right;
            }
            else if(_loc10_ == 0)
            {
               _loc12_ = param1.left;
            }
            else
            {
               _loc12_ = param1.right;
            }
         }
         else
         {
            if(ZPP_SimpleVert.var_72 == null)
            {
               _loc13_ = new ZPP_SimpleVert();
            }
            else
            {
               _loc13_ = ZPP_SimpleVert.var_72;
               ZPP_SimpleVert.var_72 = _loc13_.next;
               _loc13_.next = null;
            }
            null;
            _loc13_.x = 0.5 * (Number(Number(param1.left.x + _loc3_ * _loc10_) + param2.left.x) + _loc5_ * _loc11_);
            _loc13_.y = 0.5 * (Number(Number(param1.left.y + _loc4_ * _loc10_) + param2.left.y) + _loc6_ * _loc11_);
            _loc12_ = _loc13_;
         }
         if(ZPP_SimpleEvent.var_72 == null)
         {
            _loc15_ = new ZPP_SimpleEvent();
         }
         else
         {
            _loc15_ = ZPP_SimpleEvent.var_72;
            ZPP_SimpleEvent.var_72 = _loc15_.next;
            _loc15_.next = null;
         }
         null;
         _loc15_.vertex = _loc12_;
         _loc14_ = _loc15_;
         _loc14_.type = 0;
         _loc14_.var_260 = param1;
         _loc14_.segment2 = param2;
         return _loc14_;
      }
      
      public static function method_373(param1:ZPP_SimpleSeg, param2:ZPP_SimpleSeg) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(param1 == null || param2 == null)
         {
            return false;
         }
         if(param1.left == param2.left || param1.left == param2.right || param1.right == param2.left || param1.right == param2.right)
         {
            return false;
         }
         _loc3_ = (param2.left.x - param1.left.x) * (param1.right.y - param1.left.y) - (param1.right.x - param1.left.x) * (param2.left.y - param1.left.y);
         _loc4_ = (param2.right.x - param1.left.x) * (param1.right.y - param1.left.y) - (param1.right.x - param1.left.x) * (param2.right.y - param1.left.y);
         if(_loc3_ * _loc4_ > 0)
         {
            return false;
         }
         _loc5_ = (param1.left.x - param2.left.x) * (param2.right.y - param2.left.y) - (param2.right.x - param2.left.x) * (param1.left.y - param2.left.y);
         _loc6_ = (param1.right.x - param2.left.x) * (param2.right.y - param2.left.y) - (param2.right.x - param2.left.x) * (param1.right.y - param2.left.y);
         if(_loc5_ * _loc6_ > 0)
         {
            return false;
         }
         if(_loc3_ * _loc4_ >= 0 && _loc5_ * _loc6_ >= 0)
         {
            return true;
         }
         return true;
      }
      
      public final function remove(param1:ZPP_SimpleSeg) : void
      {
         var_276;
         var _loc2_:ZPP_Set_ZPP_SimpleSeg = ZPP_Set_ZPP_SimpleSeg.successor_node(param1.var_138);
         var_276;
         var _loc3_:ZPP_Set_ZPP_SimpleSeg = ZPP_Set_ZPP_SimpleSeg.predecessor_node(param1.var_138);
         if(_loc2_ != null)
         {
            _loc2_.data.var_75 = param1.var_75;
         }
         if(_loc3_ != null)
         {
            _loc3_.data.next = param1.next;
         }
         var_276.remove_node(param1.var_138);
         param1.var_138 = null;
      }
      
      public final function edge_lt(param1:ZPP_SimpleSeg, param2:ZPP_SimpleSeg) : Boolean
      {
         var _loc7_:* = false;
         var _loc8_:* = null as ZPP_SimpleVert;
         var _loc9_:* = null as ZPP_SimpleVert;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:* = false;
         var _loc13_:* = false;
         var _loc14_:* = false;
         var _loc15_:* = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         if(param1.left == param2.left && param1.right == param2.right)
         {
            return false;
         }
         if(param1.left == param2.right)
         {
            if(param1.left.x == param1.right.x)
            {
               if(param1.left.y < param1.right.y)
               {
                  return param1.left.y > param2.left.y;
               }
               return param1.right.y > param2.left.y;
            }
            _loc7_ = param1.right.x < param1.left.x;
            _loc3_ = Number(param1.right.x - param1.left.x);
            _loc4_ = Number(param1.right.y - param1.left.y);
            _loc5_ = Number(param2.left.x - param1.left.x);
            _loc6_ = Number(param2.left.y - param1.left.y);
            return (!!_loc7_?_loc4_ * _loc5_ - _loc3_ * _loc6_:_loc6_ * _loc3_ - _loc5_ * _loc4_) < 0;
         }
         if(param1.right == param2.left)
         {
            if(param2.left.x == param2.right.x)
            {
               §§push(param2.left.y < param2.right.y?param2.left.y > param1.left.y:param2.right.y > param1.left.y);
            }
            else
            {
               _loc7_ = param2.right.x < param2.left.x;
               _loc3_ = Number(param2.right.x - param2.left.x);
               _loc4_ = Number(param2.right.y - param2.left.y);
               _loc5_ = Number(param1.left.x - param2.left.x);
               _loc6_ = Number(param1.left.y - param2.left.y);
               §§push((!!_loc7_?_loc4_ * _loc5_ - _loc3_ * _loc6_:_loc6_ * _loc3_ - _loc5_ * _loc4_) < 0);
            }
            return !§§pop();
         }
         if(param1.left == param2.left)
         {
            if(param1.left.x == param1.right.x)
            {
               if(param1.left.y < param1.right.y)
               {
                  return param1.left.y > param2.right.y;
               }
               return param1.right.y > param2.right.y;
            }
            _loc7_ = param1.right.x < param1.left.x;
            _loc3_ = Number(param1.right.x - param1.left.x);
            _loc4_ = Number(param1.right.y - param1.left.y);
            _loc5_ = Number(param2.right.x - param1.left.x);
            _loc6_ = Number(param2.right.y - param1.left.y);
            return (!!_loc7_?_loc4_ * _loc5_ - _loc3_ * _loc6_:_loc6_ * _loc3_ - _loc5_ * _loc4_) < 0;
         }
         if(param1.right == param2.right)
         {
            if(param1.left.x == param1.right.x)
            {
               if(param1.left.y < param1.right.y)
               {
                  return param1.left.y > param2.left.y;
               }
               return param1.right.y > param2.left.y;
            }
            _loc7_ = param1.right.x < param1.left.x;
            _loc3_ = Number(param1.right.x - param1.left.x);
            _loc4_ = Number(param1.right.y - param1.left.y);
            _loc5_ = Number(param2.left.x - param1.left.x);
            _loc6_ = Number(param2.left.y - param1.left.y);
            return (!!_loc7_?_loc4_ * _loc5_ - _loc3_ * _loc6_:_loc6_ * _loc3_ - _loc5_ * _loc4_) < 0;
         }
         if(param1.left.x == param1.right.x)
         {
            if(param2.left.x == param2.right.x)
            {
               if(param1.left.y < param1.right.y)
               {
                  _loc8_ = param1.right;
               }
               else
               {
                  _loc8_ = param1.left;
               }
               if(param2.left.y < param2.right.y)
               {
                  _loc9_ = param2.right;
               }
               else
               {
                  _loc9_ = param2.left;
               }
               return _loc8_.y > _loc9_.y;
            }
            _loc7_ = param2.right.x < param2.left.x;
            _loc3_ = Number(param2.right.x - param2.left.x);
            _loc4_ = Number(param2.right.y - param2.left.y);
            _loc5_ = Number(param1.left.x - param2.left.x);
            _loc6_ = Number(param1.left.y - param2.left.y);
            if(_loc7_)
            {
               _loc10_ = _loc4_ * _loc5_ - _loc3_ * _loc6_;
            }
            else
            {
               _loc10_ = _loc6_ * _loc3_ - _loc5_ * _loc4_;
            }
            _loc7_ = param2.right.x < param2.left.x;
            _loc3_ = Number(param2.right.x - param2.left.x);
            _loc4_ = Number(param2.right.y - param2.left.y);
            _loc5_ = Number(param1.right.x - param2.left.x);
            _loc6_ = Number(param1.right.y - param2.left.y);
            if(_loc7_)
            {
               _loc11_ = _loc4_ * _loc5_ - _loc3_ * _loc6_;
            }
            else
            {
               _loc11_ = _loc6_ * _loc3_ - _loc5_ * _loc4_;
            }
            if(_loc10_ * _loc11_ >= 0)
            {
               return _loc10_ >= 0;
            }
            return var_402 >= param1.left.x;
         }
         if(param2.left.x == param2.right.x)
         {
            _loc7_ = param1.right.x < param1.left.x;
            _loc3_ = Number(param1.right.x - param1.left.x);
            _loc4_ = Number(param1.right.y - param1.left.y);
            _loc5_ = Number(param2.left.x - param1.left.x);
            _loc6_ = Number(param2.left.y - param1.left.y);
            if(_loc7_)
            {
               _loc10_ = _loc4_ * _loc5_ - _loc3_ * _loc6_;
            }
            else
            {
               _loc10_ = _loc6_ * _loc3_ - _loc5_ * _loc4_;
            }
            _loc7_ = param1.right.x < param1.left.x;
            _loc3_ = Number(param1.right.x - param1.left.x);
            _loc4_ = Number(param1.right.y - param1.left.y);
            _loc5_ = Number(param2.right.x - param1.left.x);
            _loc6_ = Number(param2.right.y - param1.left.y);
            if(_loc7_)
            {
               _loc11_ = _loc4_ * _loc5_ - _loc3_ * _loc6_;
            }
            else
            {
               _loc11_ = _loc6_ * _loc3_ - _loc5_ * _loc4_;
            }
            if(_loc10_ * _loc11_ >= 0)
            {
               return _loc10_ < 0;
            }
            return var_402 < param2.left.x;
         }
         _loc7_ = param1.right.x < param1.left.x;
         _loc3_ = Number(param1.right.x - param1.left.x);
         _loc4_ = Number(param1.right.y - param1.left.y);
         _loc5_ = Number(param2.left.x - param1.left.x);
         _loc6_ = Number(param2.left.y - param1.left.y);
         _loc12_ = (!!_loc7_?_loc4_ * _loc5_ - _loc3_ * _loc6_:_loc6_ * _loc3_ - _loc5_ * _loc4_) < 0;
         _loc7_ = param1.right.x < param1.left.x;
         _loc3_ = Number(param1.right.x - param1.left.x);
         _loc4_ = Number(param1.right.y - param1.left.y);
         _loc5_ = Number(param2.right.x - param1.left.x);
         _loc6_ = Number(param2.right.y - param1.left.y);
         _loc13_ = (!!_loc7_?_loc4_ * _loc5_ - _loc3_ * _loc6_:_loc6_ * _loc3_ - _loc5_ * _loc4_) < 0;
         if(_loc12_ == _loc13_)
         {
            return _loc12_;
         }
         _loc7_ = param2.right.x < param2.left.x;
         _loc3_ = Number(param2.right.x - param2.left.x);
         _loc4_ = Number(param2.right.y - param2.left.y);
         _loc5_ = Number(param1.left.x - param2.left.x);
         _loc6_ = Number(param1.left.y - param2.left.y);
         _loc14_ = (!!_loc7_?_loc4_ * _loc5_ - _loc3_ * _loc6_:_loc6_ * _loc3_ - _loc5_ * _loc4_) >= 0;
         _loc7_ = param2.right.x < param2.left.x;
         _loc3_ = Number(param2.right.x - param2.left.x);
         _loc4_ = Number(param2.right.y - param2.left.y);
         _loc5_ = Number(param1.right.x - param2.left.x);
         _loc6_ = Number(param1.right.y - param2.left.y);
         _loc15_ = (!!_loc7_?_loc4_ * _loc5_ - _loc3_ * _loc6_:_loc6_ * _loc3_ - _loc5_ * _loc4_) >= 0;
         if(_loc14_ == _loc15_)
         {
            return _loc14_;
         }
         _loc10_ = Number((var_402 - param1.left.x) / (param1.right.x - param1.left.x) * (param1.right.y - param1.left.y) + param1.left.y);
         _loc11_ = Number((var_402 - param2.left.x) / (param2.right.x - param2.left.x) * (param2.right.y - param2.left.y) + param2.left.y);
         return _loc10_ > _loc11_;
      }
      
      public final function clear() : void
      {
         var_276.clear();
      }
      
      public final function add(param1:ZPP_SimpleSeg) : ZPP_SimpleSeg
      {
         param1.var_138 = var_276.insert(param1);
         var_276;
         var _loc2_:ZPP_Set_ZPP_SimpleSeg = ZPP_Set_ZPP_SimpleSeg.successor_node(param1.var_138);
         var_276;
         var _loc3_:ZPP_Set_ZPP_SimpleSeg = ZPP_Set_ZPP_SimpleSeg.predecessor_node(param1.var_138);
         if(_loc2_ != null)
         {
            param1.next = _loc2_.data;
            _loc2_.data.var_75 = param1;
         }
         if(_loc3_ != null)
         {
            param1.var_75 = _loc3_.data;
            _loc3_.data.next = param1;
         }
         return param1;
      }
   }
}
