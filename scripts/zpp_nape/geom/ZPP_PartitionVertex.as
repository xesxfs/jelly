package zpp_nape.geom
{
   import zpp_nape.util.ZNPNode_ZPP_PartitionVertex;
   import zpp_nape.util.ZPP_Set_ZPP_PartitionVertex;
   import zpp_nape.util.class_330;
   
   public final class ZPP_PartitionVertex
   {
      
      public static var var_1036:int = 0;
      
      public static var var_72:ZPP_PartitionVertex = null;
       
      
      public var y:Number;
      
      public var x:Number;
      
      public var type:int;
      
      public var var_671:Boolean;
      
      public var var_75:ZPP_PartitionVertex;
      
      public var var_138:ZPP_Set_ZPP_PartitionVertex;
      
      public var next:ZPP_PartitionVertex;
      
      public var var_215:Number;
      
      public var id:int;
      
      public var var_271:ZPP_PartitionVertex;
      
      public var var_154:Boolean;
      
      public var var_281:class_330;
      
      public function ZPP_PartitionVertex()
      {
         var_138 = null;
         var_75 = null;
         next = null;
         var_671 = false;
         var_271 = null;
         type = 0;
         var_281 = null;
         var_154 = false;
         y = 0;
         x = 0;
         var_215 = 0;
         id = 0;
         var _loc1_:int = ZPP_PartitionVertex.var_1036;
         ZPP_PartitionVertex.var_1036 = ZPP_PartitionVertex.var_1036 + 1;
         id = _loc1_;
         var_281 = new class_330();
      }
      
      public static function method_65(param1:ZPP_GeomVert) : ZPP_PartitionVertex
      {
         var _loc2_:* = null as ZPP_PartitionVertex;
         if(ZPP_PartitionVertex.var_72 == null)
         {
            _loc2_ = new ZPP_PartitionVertex();
         }
         else
         {
            _loc2_ = ZPP_PartitionVertex.var_72;
            ZPP_PartitionVertex.var_72 = _loc2_.next;
            _loc2_.next = null;
         }
         null;
         _loc2_.x = param1.x;
         _loc2_.y = param1.y;
         return _loc2_;
      }
      
      public static function rightdistance(param1:ZPP_PartitionVertex, param2:ZPP_PartitionVertex) : Number
      {
         var _loc3_:* = param1.next.y > param1.y;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         _loc4_ = Number(param1.next.x - param1.x);
         _loc5_ = Number(param1.next.y - param1.y);
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         _loc6_ = Number(param2.x - param1.x);
         _loc7_ = Number(param2.y - param1.y);
         return (!!_loc3_?-1:1) * (_loc7_ * _loc4_ - _loc6_ * _loc5_);
      }
      
      public static function method_289(param1:ZPP_PartitionVertex, param2:ZPP_PartitionVertex) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(param2 == param1 || param2 == param1.next)
         {
            return true;
         }
         if(param1.y == param1.next.y)
         {
            _loc3_ = param1.x;
            _loc4_ = param1.next.x;
            return (_loc3_ < _loc4_?_loc3_:_loc4_) <= param2.x;
         }
         return Number(ZPP_PartitionVertex.rightdistance(param1,param2)) <= 0;
      }
      
      public static function method_389(param1:ZPP_PartitionVertex, param2:ZPP_PartitionVertex) : void
      {
         var _loc3_:ZPP_Set_ZPP_PartitionVertex = param1.var_138;
         param1.var_138 = param2.var_138;
         param2.var_138 = _loc3_;
      }
      
      public static function edge_lt(param1:ZPP_PartitionVertex, param2:ZPP_PartitionVertex) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(param1 == param2 && param1.next == param2.next)
         {
            return false;
         }
         if(param1 == param2.next)
         {
            return !ZPP_PartitionVertex.method_289(param1,param2);
         }
         if(param2 == param1.next)
         {
            return Boolean(ZPP_PartitionVertex.method_289(param2,param1));
         }
         if(param1.y == param1.next.y)
         {
            if(param2.y == param2.next.y)
            {
               _loc3_ = param1.x;
               _loc4_ = param1.next.x;
               _loc3_ = param2.x;
               _loc4_ = param2.next.x;
               return (_loc3_ > _loc4_?_loc3_:_loc4_) > (_loc3_ > _loc4_?_loc3_:_loc4_);
            }
            return Number(ZPP_PartitionVertex.rightdistance(param2,param1)) > 0 || Number(ZPP_PartitionVertex.rightdistance(param2,param1.next)) > 0;
         }
         _loc3_ = Number(ZPP_PartitionVertex.rightdistance(param1,param2));
         _loc4_ = Number(ZPP_PartitionVertex.rightdistance(param1,param2.next));
         if(_loc3_ == 0 && _loc4_ == 0)
         {
            _loc5_ = param1.x;
            _loc6_ = param1.next.x;
            _loc5_ = param2.x;
            _loc6_ = param2.next.x;
            return (_loc5_ > _loc6_?_loc5_:_loc6_) > (_loc5_ > _loc6_?_loc5_:_loc6_);
         }
         if(_loc3_ * _loc4_ >= 0)
         {
            return _loc3_ < 0 || _loc4_ < 0;
         }
         _loc5_ = Number(ZPP_PartitionVertex.rightdistance(param2,param1));
         _loc6_ = Number(ZPP_PartitionVertex.rightdistance(param2,param1.next));
         if(_loc5_ * _loc6_ >= 0)
         {
            return _loc5_ > 0 || _loc6_ > 0;
         }
         return false;
      }
      
      public static function method_507() : void
      {
      }
      
      public final function sort() : void
      {
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc8_:* = null as ZNPNode_ZPP_PartitionVertex;
         var _loc9_:* = null as ZNPNode_ZPP_PartitionVertex;
         var _loc10_:* = null as ZNPNode_ZPP_PartitionVertex;
         var _loc11_:* = null as ZNPNode_ZPP_PartitionVertex;
         var _loc12_:* = null as ZNPNode_ZPP_PartitionVertex;
         var _loc13_:* = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         var _loc19_:Number = NaN;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         _loc1_ = Number(var_75.x - x);
         _loc2_ = Number(var_75.y - y);
         _loc3_ = Number(next.x - x);
         _loc4_ = Number(next.y - y);
         _loc6_ = _loc4_ * _loc1_ - _loc3_ * _loc2_;
         if(_loc6_ > 0)
         {
            _loc5_ = -1;
         }
         else if(_loc6_ == 0)
         {
            _loc5_ = 0;
         }
         else
         {
            _loc5_ = 1;
         }
         var _loc7_:class_330 = var_281;
         if(_loc7_.var_73 != null && _loc7_.var_73.next != null)
         {
            _loc8_ = _loc7_.var_73;
            _loc9_ = null;
            _loc10_ = null;
            _loc11_ = null;
            _loc12_ = null;
            _loc13_ = 1;
            do
            {
               _loc14_ = 0;
               _loc10_ = _loc8_;
               _loc8_ = null;
               _loc9_ = _loc8_;
               while(_loc10_ != null)
               {
                  _loc14_++;
                  _loc11_ = _loc10_;
                  _loc15_ = 0;
                  _loc16_ = _loc13_;
                  while(_loc11_ != null && _loc15_ < _loc13_)
                  {
                     _loc15_++;
                     _loc11_ = _loc11_.next;
                  }
                  while(_loc15_ > 0 || _loc16_ > 0 && _loc11_ != null)
                  {
                     if(_loc15_ == 0)
                     {
                        _loc12_ = _loc11_;
                        _loc11_ = _loc11_.next;
                        _loc16_--;
                     }
                     else if(_loc16_ == 0 || _loc11_ == null)
                     {
                        _loc12_ = _loc10_;
                        _loc10_ = _loc10_.next;
                        _loc15_--;
                     }
                     else
                     {
                        if(_loc5_ == 1)
                        {
                           _loc1_ = Number(_loc10_.var_74.x - x);
                           _loc2_ = Number(_loc10_.var_74.y - y);
                           _loc3_ = Number(_loc11_.var_74.x - x);
                           _loc4_ = Number(_loc11_.var_74.y - y);
                           _loc6_ = _loc4_ * _loc1_ - _loc3_ * _loc2_;
                           §§push((_loc6_ > 0?-1:_loc6_ == 0?0:1) == 1);
                        }
                        else
                        {
                           _loc1_ = Number(var_75.x - x);
                           _loc2_ = Number(var_75.y - y);
                           _loc3_ = Number(_loc10_.var_74.x - x);
                           _loc4_ = Number(_loc10_.var_74.y - y);
                           _loc6_ = _loc4_ * _loc1_ - _loc3_ * _loc2_;
                           if(_loc6_ > 0)
                           {
                              _loc17_ = -1;
                           }
                           else if(_loc6_ == 0)
                           {
                              _loc17_ = 0;
                           }
                           else
                           {
                              _loc17_ = 1;
                           }
                           _loc1_ = Number(var_75.x - x);
                           _loc2_ = Number(var_75.y - y);
                           _loc3_ = Number(_loc11_.var_74.x - x);
                           _loc4_ = Number(_loc11_.var_74.y - y);
                           _loc6_ = _loc4_ * _loc1_ - _loc3_ * _loc2_;
                           if(_loc6_ > 0)
                           {
                              _loc18_ = -1;
                           }
                           else if(_loc6_ == 0)
                           {
                              _loc18_ = 0;
                           }
                           else
                           {
                              _loc18_ = 1;
                           }
                           if(_loc17_ * _loc18_ == 1 || _loc17_ * _loc18_ == 0 && (_loc17_ == 1 || _loc18_ == 1))
                           {
                              _loc1_ = Number(_loc10_.var_74.x - x);
                              _loc2_ = Number(_loc10_.var_74.y - y);
                              _loc3_ = Number(_loc11_.var_74.x - x);
                              _loc4_ = Number(_loc11_.var_74.y - y);
                              _loc6_ = _loc4_ * _loc1_ - _loc3_ * _loc2_;
                              §§push((_loc6_ > 0?-1:_loc6_ == 0?0:1) == 1);
                           }
                           else if(_loc17_ == -1 || _loc18_ == -1)
                           {
                              §§push(_loc18_ == -1);
                           }
                           else if(_loc17_ == 0 && _loc18_ == 0)
                           {
                              _loc1_ = Number(x - var_75.x);
                              _loc2_ = Number(y - var_75.y);
                              _loc3_ = Number(_loc10_.var_74.x - x);
                              _loc4_ = Number(_loc10_.var_74.y - y);
                              _loc6_ = Number(_loc1_ * _loc3_ + _loc2_ * _loc4_);
                              _loc3_ = Number(_loc11_.var_74.x - x);
                              _loc4_ = Number(_loc11_.var_74.y - y);
                              _loc19_ = Number(_loc1_ * _loc3_ + _loc2_ * _loc4_);
                              §§push(_loc6_ < 0 && _loc19_ > 0?true:_loc19_ < 0 && _loc6_ > 0?false:true);
                           }
                           else
                           {
                              §§push(true);
                           }
                        }
                        _loc12_ = _loc10_;
                        _loc10_ = _loc10_.next;
                        _loc15_--;
                     }
                     if(_loc9_ != null)
                     {
                        _loc9_.next = _loc12_;
                     }
                     else
                     {
                        _loc8_ = _loc12_;
                     }
                     _loc9_ = _loc12_;
                  }
                  _loc10_ = _loc11_;
               }
               _loc9_.next = null;
               _loc13_ = _loc13_ << 1;
            }
            while(_loc14_ > 1);
            
            _loc7_.var_73 = _loc8_;
            _loc7_.name_2 = true;
            _loc7_.var_76 = true;
         }
      }
      
      public final function method_129() : void
      {
         var_271 = null;
      }
      
      public final function copy() : ZPP_PartitionVertex
      {
         var _loc1_:* = null as ZPP_PartitionVertex;
         if(ZPP_PartitionVertex.var_72 == null)
         {
            _loc1_ = new ZPP_PartitionVertex();
         }
         else
         {
            _loc1_ = ZPP_PartitionVertex.var_72;
            ZPP_PartitionVertex.var_72 = _loc1_.next;
            _loc1_.next = null;
         }
         null;
         _loc1_.x = x;
         _loc1_.y = y;
         _loc1_.var_154 = var_154;
         return _loc1_;
      }
   }
}
