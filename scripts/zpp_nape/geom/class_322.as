package zpp_nape.geom
{
   import zpp_nape.util.ZNPNode_ZPP_PartitionVertex;
   import zpp_nape.util.ZPP_Set_ZPP_PartitionPair;
   import zpp_nape.util.class_330;
   
   public final class class_322
   {
      
      public static var var_178:class_330 = null;
      
      public static var var_230:class_330 = null;
      
      public static var var_549:ZPP_Set_ZPP_PartitionPair = null;
       
      
      public function class_322()
      {
      }
      
      public static function lt(param1:ZPP_PartitionVertex, param2:ZPP_PartitionVertex) : Boolean
      {
         return param1.y < param2.y || param1.y == param2.y && param1.x < param2.x;
      }
      
      public static function method_855(param1:ZPP_PartitionVertex, param2:ZPP_PartitionVertex, param3:ZPP_PartitionVertex) : Number
      {
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         _loc4_ = Number(param3.x - param2.x);
         _loc5_ = Number(param3.y - param2.y);
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         _loc6_ = Number(param2.x - param1.x);
         _loc7_ = Number(param2.y - param1.y);
         return _loc7_ * _loc4_ - _loc6_ * _loc5_;
      }
      
      public static function method_642(param1:ZPP_PartitionVertex, param2:ZPP_PartitionVertex, param3:ZPP_PartitionVertex, param4:ZPP_PartitionVertex) : Boolean
      {
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         _loc5_ = Number(param3.x - param2.x);
         _loc6_ = Number(param3.y - param2.y);
         _loc7_ = Number(param2.x - param1.x);
         _loc8_ = Number(param2.y - param1.y);
         if(_loc8_ * _loc5_ - _loc7_ * _loc6_ >= 0 || _loc8_ * _loc5_ - _loc7_ * _loc6_ >= 0 || _loc8_ * _loc5_ - _loc7_ * _loc6_ >= 0 || _loc8_ * _loc5_ - _loc7_ * _loc6_ >= 0)
         {
            return true;
         }
         return Number(Number(param2.x * (param3.y * param4.var_215 - param3.var_215 * param4.y) - param3.x * (param2.y * param4.var_215 - param2.var_215 * param4.y) + param4.x * (param2.y * param3.var_215 - param2.var_215 * param3.y)) - (Number(param1.x * (param3.y * param4.var_215 - param3.var_215 * param4.y) - param3.x * (param1.y * param4.var_215 - param1.var_215 * param4.y) + param4.x * (param1.y * param3.var_215 - param1.var_215 * param3.y))) + (Number(param1.x * (param2.y * param4.var_215 - param2.var_215 * param4.y) - param2.x * (param1.y * param4.var_215 - param1.var_215 * param4.y) + param4.x * (param1.y * param2.var_215 - param1.var_215 * param2.y)))) - (Number(param1.x * (param2.y * param3.var_215 - param2.var_215 * param3.y) - param2.x * (param1.y * param3.var_215 - param1.var_215 * param3.y) + param3.x * (param1.y * param2.var_215 - param1.var_215 * param2.y))) > 0;
      }
      
      public static function method_343(param1:ZPP_PartitionedPoly) : void
      {
         var _loc2_:* = null as ZPP_PartitionVertex;
         var _loc3_:* = null as ZPP_PartitionVertex;
         var _loc4_:* = null as ZPP_PartitionVertex;
         var _loc5_:* = null as ZPP_PartitionVertex;
         var _loc6_:* = null as ZPP_PartitionPair;
         var _loc7_:* = null as ZPP_PartitionVertex;
         var _loc8_:* = null as ZNPNode_ZPP_PartitionVertex;
         var _loc9_:* = null as ZPP_PartitionVertex;
         var _loc10_:* = null as ZPP_PartitionVertex;
         var _loc11_:* = null as ZPP_PartitionPair;
         var _loc12_:* = null as ZPP_PartitionPair;
         _loc2_ = param1.vertices;
         _loc3_ = param1.vertices;
         if(_loc2_ != null)
         {
            _loc4_ = _loc2_;
            do
            {
               _loc5_ = _loc4_;
               _loc5_.sort();
               _loc5_.var_215 = Number(_loc5_.x * _loc5_.x + _loc5_.y * _loc5_.y);
               _loc4_ = _loc4_.next;
            }
            while(_loc4_ != _loc3_);
            
         }
         if(class_322.var_549 == null)
         {
            if(ZPP_Set_ZPP_PartitionPair.var_72 == null)
            {
               class_322.var_549 = new ZPP_Set_ZPP_PartitionPair();
            }
            else
            {
               class_322.var_549 = ZPP_Set_ZPP_PartitionPair.var_72;
               ZPP_Set_ZPP_PartitionPair.var_72 = class_322.var_549.next;
               class_322.var_549.next = null;
            }
            null;
            class_322.var_549.lt = ZPP_PartitionPair.edge_lt;
            class_322.var_549.name_9 = ZPP_PartitionPair.method_389;
         }
         if(ZPP_PartitionPair.var_72 == null)
         {
            _loc6_ = new ZPP_PartitionPair();
         }
         else
         {
            _loc6_ = ZPP_PartitionPair.var_72;
            ZPP_PartitionPair.var_72 = _loc6_.next;
            _loc6_.next = null;
         }
         null;
         _loc2_ = param1.vertices;
         _loc3_ = param1.vertices;
         if(_loc2_ != null)
         {
            _loc4_ = _loc2_;
            do
            {
               _loc5_ = _loc4_;
               _loc7_ = _loc5_.next;
               _loc5_.var_281.reverse();
               _loc8_ = _loc5_.var_281.var_73;
               while(_loc8_ != null)
               {
                  _loc9_ = _loc8_.var_74;
                  if(_loc9_.id < _loc5_.id)
                  {
                     _loc7_ = _loc9_;
                     _loc8_ = _loc8_.next;
                  }
                  else
                  {
                     if(_loc8_.next == null)
                     {
                        _loc10_ = _loc5_.var_75;
                     }
                     else
                     {
                        _loc10_ = _loc8_.next.var_74;
                     }
                     if(!class_322.method_642(_loc5_,_loc7_,_loc9_,_loc10_))
                     {
                        if(ZPP_PartitionPair.var_72 == null)
                        {
                           _loc12_ = new ZPP_PartitionPair();
                        }
                        else
                        {
                           _loc12_ = ZPP_PartitionPair.var_72;
                           ZPP_PartitionPair.var_72 = _loc12_.next;
                           _loc12_.next = null;
                        }
                        null;
                        _loc12_.a = _loc5_;
                        _loc12_.b = _loc9_;
                        if(_loc5_.id < _loc9_.id)
                        {
                           _loc12_.id = _loc5_.id;
                           _loc12_.var_179 = _loc9_.id;
                        }
                        else
                        {
                           _loc12_.id = _loc9_.id;
                           _loc12_.var_179 = _loc5_.id;
                        }
                        _loc11_ = _loc12_;
                        _loc6_.add(_loc11_);
                        _loc11_.var_138 = class_322.var_549.insert(_loc11_);
                     }
                     _loc7_ = _loc9_;
                     _loc8_ = _loc8_.next;
                  }
               }
               _loc4_ = _loc4_.next;
            }
            while(_loc4_ != _loc3_);
            
         }
         while(_loc6_.next != null)
         {
            _loc11_ = _loc6_.method_105();
            _loc2_ = _loc11_.a;
            _loc3_ = _loc11_.b;
            _loc4_ = _loc2_.next;
            _loc5_ = null;
            _loc8_ = _loc2_.var_281.var_73;
            while(_loc8_ != null)
            {
               _loc7_ = _loc8_.var_74;
               if(_loc7_ == _loc3_)
               {
                  _loc8_ = _loc8_.next;
                  if(_loc8_ == null)
                  {
                     _loc5_ = _loc2_.var_75;
                     break;
                  }
                  _loc5_ = _loc8_.var_74;
                  break;
               }
               _loc4_ = _loc7_;
               _loc8_ = _loc8_.next;
            }
            _loc2_.var_281.remove(_loc3_);
            _loc3_.var_281.remove(_loc2_);
            if(_loc3_ == _loc4_.next)
            {
               _loc4_.var_281.add(_loc5_);
            }
            else
            {
               _loc8_ = _loc4_.var_281.var_73;
               while(_loc8_ != null)
               {
                  _loc7_ = _loc8_.var_74;
                  if(_loc7_ == _loc3_)
                  {
                     _loc4_.var_281.insert(_loc8_,_loc5_);
                     break;
                  }
                  _loc8_ = _loc8_.next;
               }
            }
            if(_loc2_ == _loc5_.next)
            {
               _loc5_.var_281.add(_loc4_);
            }
            else
            {
               _loc8_ = _loc5_.var_281.var_73;
               while(_loc8_ != null)
               {
                  _loc7_ = _loc8_.var_74;
                  if(_loc7_ == _loc2_)
                  {
                     _loc5_.var_281.insert(_loc8_,_loc4_);
                     break;
                  }
                  _loc8_ = _loc8_.next;
               }
            }
            class_322.var_549.remove_node(_loc11_.var_138);
            _loc12_ = _loc11_;
            _loc7_ = null;
            _loc12_.b = _loc7_;
            _loc12_.a = _loc7_;
            _loc12_.var_138 = null;
            _loc12_.next = ZPP_PartitionPair.var_72;
            ZPP_PartitionPair.var_72 = _loc12_;
         }
         _loc11_ = _loc6_;
         _loc2_ = null;
         _loc11_.b = _loc2_;
         _loc11_.a = _loc2_;
         _loc11_.var_138 = null;
         _loc11_.next = ZPP_PartitionPair.var_72;
         ZPP_PartitionPair.var_72 = _loc11_;
      }
      
      public static function method_541(param1:ZPP_PartitionedPoly) : ZPP_PartitionedPoly
      {
         var _loc6_:* = null as ZPP_PartitionVertex;
         var _loc7_:* = null as ZPP_PartitionVertex;
         var _loc8_:* = null as ZPP_PartitionVertex;
         var _loc9_:* = null as ZPP_PartitionVertex;
         var _loc10_:Number = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc2_:ZPP_PartitionVertex = param1.vertices;
         var _loc3_:ZPP_PartitionVertex = param1.vertices;
         var _loc4_:ZPP_PartitionVertex = param1.vertices.next;
         var _loc5_:ZPP_PartitionVertex = param1.vertices;
         if(_loc4_ != null)
         {
            _loc6_ = _loc4_;
            do
            {
               _loc7_ = _loc6_;
               if(_loc7_.y < _loc2_.y || _loc7_.y == _loc2_.y && _loc7_.x < _loc2_.x)
               {
                  _loc2_ = _loc7_;
               }
               if(_loc3_.y < _loc7_.y || _loc3_.y == _loc7_.y && _loc3_.x < _loc7_.x)
               {
                  _loc3_ = _loc7_;
               }
               _loc6_ = _loc6_.next;
            }
            while(_loc6_ != _loc5_);
            
         }
         if(class_322.var_178 == null)
         {
            class_322.var_178 = new class_330();
         }
         _loc4_ = _loc3_.var_75;
         _loc5_ = _loc3_.next;
         class_322.var_178.add(_loc3_);
         while(_loc4_ != _loc2_ || _loc5_ != _loc2_)
         {
            if(_loc4_ == _loc2_ || _loc5_ != _loc2_ && (_loc4_.y < _loc5_.y || _loc4_.y == _loc5_.y && _loc4_.x < _loc5_.x))
            {
               class_322.var_178.add(_loc5_);
               _loc5_.var_671 = false;
               _loc5_ = _loc5_.next;
            }
            else
            {
               class_322.var_178.add(_loc4_);
               _loc4_.var_671 = true;
               _loc4_ = _loc4_.var_75;
            }
         }
         class_322.var_178.add(_loc2_);
         if(class_322.var_230 == null)
         {
            class_322.var_230 = new class_330();
         }
         class_322.var_230.add(class_322.var_178.method_105());
         _loc6_ = class_322.var_178.method_105();
         class_322.var_230.add(_loc6_);
         while(true)
         {
            _loc7_ = class_322.var_178.method_105();
            if(class_322.var_178.var_73 == null)
            {
               break;
            }
            if(_loc7_.var_671 != class_322.var_230.var_73.var_74.var_671)
            {
               while(true)
               {
                  _loc8_ = class_322.var_230.method_105();
                  if(class_322.var_230.var_73 == null)
                  {
                     break;
                  }
                  param1;
                  ZPP_PartitionedPoly.method_191(_loc8_,_loc7_);
               }
               class_322.var_230.add(_loc6_);
            }
            else
            {
               _loc8_ = class_322.var_230.method_105();
               while(class_322.var_230.var_73 != null)
               {
                  _loc9_ = class_322.var_230.var_73.var_74;
                  _loc11_ = 0;
                  _loc12_ = 0;
                  _loc11_ = Number(_loc7_.x - _loc8_.x);
                  _loc12_ = Number(_loc7_.y - _loc8_.y);
                  _loc13_ = 0;
                  _loc14_ = 0;
                  _loc13_ = Number(_loc8_.x - _loc9_.x);
                  _loc14_ = Number(_loc8_.y - _loc9_.y);
                  _loc10_ = _loc14_ * _loc11_ - _loc13_ * _loc12_;
                  if(!!_loc7_.var_671 && _loc10_ >= 0 || !_loc7_.var_671 && _loc10_ <= 0)
                  {
                     break;
                  }
                  param1;
                  ZPP_PartitionedPoly.method_191(_loc9_,_loc7_);
                  _loc8_ = _loc9_;
                  class_322.var_230.pop();
               }
               class_322.var_230.add(_loc8_);
            }
            class_322.var_230.add(_loc7_);
            _loc6_ = _loc7_;
         }
         if(class_322.var_230.var_73 != null)
         {
            class_322.var_230.pop();
            while(class_322.var_230.var_73 != null)
            {
               _loc7_ = class_322.var_230.method_105();
               if(class_322.var_230.var_73 == null)
               {
                  break;
               }
               param1;
               ZPP_PartitionedPoly.method_191(_loc3_,_loc7_);
            }
         }
         return param1;
      }
   }
}
