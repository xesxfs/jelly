package zpp_nape.geom
{
   import zpp_nape.util.ZNPNode_ZPP_PartitionVertex;
   
   public final class class_326
   {
       
      
      public function class_326()
      {
      }
      
      public static function method_525(param1:ZPP_PartitionVertex, param2:ZPP_PartitionVertex, param3:ZPP_PartitionVertex) : Boolean
      {
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         _loc4_ = Number(param1.x - param2.x);
         _loc5_ = Number(param1.y - param2.y);
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         _loc6_ = Number(param3.x - param2.x);
         _loc7_ = Number(param3.y - param2.y);
         return _loc7_ * _loc4_ - _loc6_ * _loc5_ >= 0;
      }
      
      public static function method_343(param1:ZPP_PartitionedPoly) : void
      {
         var _loc4_:* = null as ZPP_PartitionVertex;
         var _loc5_:* = null as ZPP_PartitionVertex;
         var _loc6_:* = null as ZPP_PartitionVertex;
         var _loc7_:* = null as ZNPNode_ZPP_PartitionVertex;
         var _loc8_:* = null as ZNPNode_ZPP_PartitionVertex;
         var _loc9_:* = null as ZPP_PartitionVertex;
         var _loc10_:* = null as ZPP_PartitionVertex;
         var _loc11_:Boolean = false;
         var _loc12_:* = null as ZPP_PartitionVertex;
         var _loc13_:* = null as ZPP_PartitionVertex;
         var _loc14_:* = null as ZNPNode_ZPP_PartitionVertex;
         var _loc15_:* = null as ZNPNode_ZPP_PartitionVertex;
         var _loc16_:* = null as ZPP_PartitionVertex;
         var _loc17_:* = null as ZPP_PartitionVertex;
         var _loc2_:ZPP_PartitionVertex = param1.vertices;
         var _loc3_:ZPP_PartitionVertex = param1.vertices;
         if(_loc2_ != null)
         {
            _loc4_ = _loc2_;
            do
            {
               _loc5_ = _loc4_;
               _loc5_.sort();
               _loc4_ = _loc4_.next;
            }
            while(_loc4_ != _loc3_);
            
         }
         _loc2_ = param1.vertices;
         _loc3_ = param1.vertices;
         if(_loc2_ != null)
         {
            _loc4_ = _loc2_;
            do
            {
               _loc5_ = _loc4_;
               _loc6_ = _loc5_.var_75;
               _loc7_ = null;
               _loc8_ = _loc5_.var_281.var_73;
               while(_loc8_ != null)
               {
                  _loc9_ = _loc8_.var_74;
                  if(_loc8_.next == null)
                  {
                     _loc10_ = _loc5_.next;
                  }
                  else
                  {
                     _loc10_ = _loc8_.next.var_74;
                  }
                  if(!class_326.method_525(_loc10_,_loc5_,_loc6_))
                  {
                     _loc7_ = _loc8_;
                     _loc6_ = _loc9_;
                     _loc8_ = _loc8_.next;
                  }
                  else
                  {
                     _loc11_ = true;
                     _loc12_ = _loc9_;
                     _loc13_ = _loc12_.var_75;
                     _loc14_ = null;
                     _loc15_ = _loc12_.var_281.var_73;
                     while(_loc15_ != null)
                     {
                        _loc16_ = _loc15_.var_74;
                        if(_loc16_ == _loc5_)
                        {
                           if(_loc15_.next == null)
                           {
                              _loc17_ = _loc12_.next;
                           }
                           else
                           {
                              _loc17_ = _loc15_.next.var_74;
                           }
                           _loc11_ = class_326.method_525(_loc17_,_loc12_,_loc13_);
                           break;
                        }
                        _loc13_ = _loc16_;
                        _loc14_ = _loc15_;
                        _loc15_ = _loc15_.next;
                     }
                     if(_loc11_)
                     {
                        _loc8_ = _loc5_.var_281.erase(_loc7_);
                        _loc12_.var_281.erase(_loc14_);
                     }
                     else
                     {
                        _loc6_ = _loc9_;
                        _loc7_ = _loc8_;
                        _loc8_ = _loc8_.next;
                     }
                  }
               }
               _loc4_ = _loc4_.next;
            }
            while(_loc4_ != _loc3_);
            
         }
      }
   }
}
