package zpp_nape.geom
{
   import package_35.class_238;
   import zpp_nape.util.ZNPNode_ZPP_PartitionVertex;
   import zpp_nape.util.ZNPNode_ZPP_PartitionedPoly;
   import zpp_nape.util.class_318;
   import zpp_nape.util.class_327;
   import zpp_nape.util.class_330;
   
   public final class ZPP_PartitionedPoly
   {
      
      public static var var_72:ZPP_PartitionedPoly = null;
      
      public static var var_615:class_327;
      
      public static var var_423:class_318;
       
      
      public var vertices:ZPP_PartitionVertex;
      
      public var next:ZPP_PartitionedPoly;
      
      public function ZPP_PartitionedPoly(param1:ZPP_GeomVert = undefined)
      {
         next = null;
         vertices = null;
         init(param1);
      }
      
      public static function method_841() : class_327
      {
         if(ZPP_PartitionedPoly.var_615 == null)
         {
            ZPP_PartitionedPoly.var_615 = new class_327();
         }
         return ZPP_PartitionedPoly.var_615;
      }
      
      public static function method_734() : class_318
      {
         if(ZPP_PartitionedPoly.var_423 == null)
         {
            ZPP_PartitionedPoly.var_423 = new class_318();
         }
         return ZPP_PartitionedPoly.var_423;
      }
      
      public static function method_129() : void
      {
      }
      
      public static function eq(param1:ZPP_PartitionVertex, param2:ZPP_PartitionVertex) : Boolean
      {
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         _loc3_ = Number(param1.x - param2.x);
         _loc4_ = Number(param1.y - param2.y);
         return Number(_loc3_ * _loc3_ + _loc4_ * _loc4_) < class_238.name_8 * class_238.name_8;
      }
      
      public static function method_507() : void
      {
      }
      
      public static function method_191(param1:ZPP_PartitionVertex, param2:ZPP_PartitionVertex) : void
      {
         param1.var_281.add(param2);
         param2.var_281.add(param1);
         param2.var_154 = true;
         param1.var_154 = true;
      }
      
      public final function remove_collinear_vertices() : Boolean
      {
         var _loc3_:* = null as ZPP_PartitionVertex;
         var _loc4_:* = null as ZPP_PartitionVertex;
         var _loc5_:Boolean = false;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:* = null as ZPP_PartitionVertex;
         var _loc1_:* = vertices;
         var _loc2_:Boolean = true;
         while(_loc2_ || _loc1_ != vertices)
         {
            _loc2_ = false;
            ;
            if(ZPP_PartitionedPoly.eq(_loc1_,_loc1_.next))
            {
               if(_loc1_ == vertices)
               {
                  vertices = _loc1_.next;
                  _loc2_ = true;
               }
               if(_loc1_.var_154)
               {
                  _loc1_.next.var_154 = true;
               }
               if(_loc1_ != null && _loc1_.var_75 == _loc1_)
               {
                  _loc3_ = null;
                  _loc1_.var_75 = _loc3_;
                  _loc1_.next = _loc3_;
                  _loc3_ = _loc1_;
                  _loc3_.var_271 = null;
                  null;
                  _loc3_.next = ZPP_PartitionVertex.var_72;
                  ZPP_PartitionVertex.var_72 = _loc3_;
                  _loc1_ = null;
                  _loc1_ = _loc1_;
               }
               else
               {
                  _loc3_ = _loc1_.next;
                  _loc1_.var_75.next = _loc1_.next;
                  _loc1_.next.var_75 = _loc1_.var_75;
                  _loc4_ = null;
                  _loc1_.var_75 = _loc4_;
                  _loc1_.next = _loc4_;
                  _loc4_ = _loc1_;
                  _loc4_.var_271 = null;
                  null;
                  _loc4_.next = ZPP_PartitionVertex.var_72;
                  ZPP_PartitionVertex.var_72 = _loc4_;
                  _loc1_ = null;
                  _loc1_ = _loc3_;
               }
               if(_loc1_ == null)
               {
                  vertices = null;
                  break;
               }
            }
            else
            {
               _loc1_ = _loc1_.next;
            }
         }
         if(vertices == null)
         {
            return true;
         }
         do
         {
            _loc5_ = false;
            _loc1_ = vertices;
            _loc2_ = true;
            while(_loc2_ || _loc1_ != vertices)
            {
               _loc2_ = false;
               _loc3_ = _loc1_.var_75;
               _loc6_ = 0;
               _loc7_ = 0;
               _loc6_ = Number(_loc1_.x - _loc3_.x);
               _loc7_ = Number(_loc1_.y - _loc3_.y);
               _loc8_ = 0;
               _loc9_ = 0;
               _loc8_ = Number(_loc1_.next.x - _loc1_.x);
               _loc9_ = Number(_loc1_.next.y - _loc1_.y);
               _loc10_ = _loc9_ * _loc6_ - _loc8_ * _loc7_;
               if(_loc10_ * _loc10_ >= class_238.name_8 * class_238.name_8)
               {
                  _loc1_ = _loc1_.next;
               }
               else
               {
                  if(_loc1_ == vertices)
                  {
                     vertices = _loc1_.next;
                     _loc2_ = true;
                  }
                  if(_loc1_ != null && _loc1_.var_75 == _loc1_)
                  {
                     _loc4_ = null;
                     _loc1_.var_75 = _loc4_;
                     _loc1_.next = _loc4_;
                     _loc4_ = _loc1_;
                     _loc4_.var_271 = null;
                     null;
                     _loc4_.next = ZPP_PartitionVertex.var_72;
                     ZPP_PartitionVertex.var_72 = _loc4_;
                     _loc1_ = null;
                     _loc1_ = _loc1_;
                  }
                  else
                  {
                     _loc4_ = _loc1_.next;
                     _loc1_.var_75.next = _loc1_.next;
                     _loc1_.next.var_75 = _loc1_.var_75;
                     _loc11_ = null;
                     _loc1_.var_75 = _loc11_;
                     _loc1_.next = _loc11_;
                     _loc11_ = _loc1_;
                     _loc11_.var_271 = null;
                     null;
                     _loc11_.next = ZPP_PartitionVertex.var_72;
                     ZPP_PartitionVertex.var_72 = _loc11_;
                     _loc1_ = null;
                     _loc1_ = _loc4_;
                  }
                  _loc5_ = true;
                  if(_loc1_ == null)
                  {
                     _loc5_ = false;
                     vertices = null;
                     break;
                  }
               }
            }
         }
         while(_loc5_);
         
         return vertices == null;
      }
      
      public final function pull_partitions(param1:ZPP_PartitionVertex, param2:class_327) : ZPP_PartitionVertex
      {
         var _loc3_:* = null as ZPP_PartitionedPoly;
         var _loc5_:* = null as ZPP_PartitionVertex;
         var _loc6_:* = null as ZPP_PartitionVertex;
         var _loc7_:* = null as class_330;
         var _loc9_:* = null as ZPP_PartitionVertex;
         var _loc10_:* = null as ZPP_PartitionVertex;
         if(ZPP_PartitionedPoly.var_72 == null)
         {
            _loc3_ = new ZPP_PartitionedPoly();
         }
         else
         {
            _loc3_ = ZPP_PartitionedPoly.var_72;
            ZPP_PartitionedPoly.var_72 = _loc3_.next;
            _loc3_.next = null;
         }
         null;
         var _loc4_:ZPP_PartitionVertex = param1;
         do
         {
            if(ZPP_PartitionVertex.var_72 == null)
            {
               _loc6_ = new ZPP_PartitionVertex();
            }
            else
            {
               _loc6_ = ZPP_PartitionVertex.var_72;
               ZPP_PartitionVertex.var_72 = _loc6_.next;
               _loc6_.next = null;
            }
            null;
            _loc6_.x = _loc4_.x;
            _loc6_.y = _loc4_.y;
            _loc6_.var_154 = _loc4_.var_154;
            _loc5_ = _loc6_;
            if(_loc3_.vertices == null)
            {
               _loc6_ = _loc5_;
               _loc5_.next = _loc6_;
               _loc6_ = _loc6_;
               _loc5_.var_75 = _loc6_;
               _loc3_.vertices = _loc6_;
            }
            else
            {
               _loc5_.var_75 = _loc3_.vertices;
               _loc5_.next = _loc3_.vertices.next;
               _loc3_.vertices.next.var_75 = _loc5_;
               _loc3_.vertices.next = _loc5_;
            }
            _loc3_.vertices = _loc5_;
            _loc3_.vertices.var_154 = _loc4_.var_154;
            if(_loc4_.var_281.var_73 != null)
            {
               _loc7_ = _loc4_.var_281;
               _loc6_ = _loc7_.var_73.var_74;
               _loc7_.pop();
               _loc5_ = _loc6_;
               if(_loc5_ == param1)
               {
                  break;
               }
               _loc4_ = pull_partitions(_loc4_,param2);
            }
            else
            {
               _loc4_ = _loc4_.next;
            }
         }
         while(_loc4_ != param1);
         
         var _loc8_:* = 0;
         _loc5_ = _loc3_.vertices;
         _loc6_ = _loc3_.vertices;
         if(_loc5_ != null)
         {
            _loc9_ = _loc5_;
            do
            {
               _loc10_ = _loc9_;
               _loc8_ = Number(Number(_loc8_ + _loc10_.x * (_loc10_.next.y - _loc10_.var_75.y)));
               _loc9_ = _loc9_.next;
            }
            while(_loc9_ != _loc6_);
            
         }
         if(_loc8_ * 0.5 != 0)
         {
            param2.add(_loc3_);
         }
         return _loc4_;
      }
      
      public final function pull(param1:ZPP_PartitionVertex, param2:class_318) : ZPP_PartitionVertex
      {
         var _loc5_:* = null as ZPP_GeomVert;
         var _loc6_:* = null as ZPP_GeomVert;
         var _loc7_:* = null as ZPP_PartitionVertex;
         var _loc8_:* = null as class_330;
         var _loc9_:* = null as ZPP_PartitionVertex;
         var _loc11_:* = NaN;
         var _loc12_:* = null as ZPP_GeomVert;
         var _loc13_:* = null as ZPP_GeomVert;
         var _loc14_:Boolean = false;
         var _loc15_:* = NaN;
         var _loc16_:Boolean = false;
         var _loc17_:* = NaN;
         var _loc18_:* = NaN;
         var _loc19_:Number = NaN;
         var _loc3_:* = null;
         var _loc4_:ZPP_PartitionVertex = param1;
         do
         {
            if(ZPP_GeomVert.var_72 == null)
            {
               _loc6_ = new ZPP_GeomVert();
            }
            else
            {
               _loc6_ = ZPP_GeomVert.var_72;
               ZPP_GeomVert.var_72 = _loc6_.next;
               _loc6_.next = null;
            }
            _loc6_.var_154 = false;
            _loc6_.x = _loc4_.x;
            _loc6_.y = _loc4_.y;
            _loc5_ = _loc6_;
            if(_loc3_ == null)
            {
               _loc6_ = _loc5_;
               _loc5_.next = _loc6_;
               _loc6_ = _loc6_;
               _loc5_.var_75 = _loc6_;
               _loc3_ = _loc6_;
            }
            else
            {
               _loc5_.var_75 = _loc3_;
               _loc5_.next = _loc3_.next;
               _loc3_.next.var_75 = _loc5_;
               _loc3_.next = _loc5_;
            }
            _loc3_ = _loc5_;
            _loc3_.var_154 = _loc4_.var_154;
            if(_loc4_.var_281.var_73 != null)
            {
               _loc8_ = _loc4_.var_281;
               _loc9_ = _loc8_.var_73.var_74;
               _loc8_.pop();
               _loc7_ = _loc9_;
               if(_loc7_ == param1)
               {
                  break;
               }
               _loc4_ = pull(_loc4_,param2);
            }
            else
            {
               _loc4_ = _loc4_.next;
            }
         }
         while(_loc4_ != param1);
         
         _loc11_ = 0;
         _loc5_ = _loc3_;
         _loc6_ = _loc3_;
         if(_loc5_ != null)
         {
            _loc12_ = _loc5_;
            do
            {
               _loc13_ = _loc12_;
               _loc11_ = Number(Number(_loc11_ + _loc13_.x * (_loc13_.next.y - _loc13_.var_75.y)));
               _loc12_ = _loc12_.next;
            }
            while(_loc12_ != _loc6_);
            
         }
         var _loc10_:Number = _loc11_ * 0.5;
         if(_loc10_ * _loc10_ >= class_238.name_8 * class_238.name_8)
         {
            _loc5_ = _loc3_;
            _loc14_ = true;
            while(_loc14_ || _loc5_ != _loc3_)
            {
               _loc14_ = false;
               _loc11_ = 0;
               _loc15_ = 0;
               _loc11_ = Number(_loc5_.x - _loc5_.next.x);
               _loc15_ = Number(_loc5_.y - _loc5_.next.y);
               if(Number(_loc11_ * _loc11_ + _loc15_ * _loc15_) < class_238.name_8 * class_238.name_8)
               {
                  if(_loc5_ == _loc3_)
                  {
                     _loc3_ = _loc5_.next;
                     _loc14_ = true;
                  }
                  if(_loc5_.var_154)
                  {
                     _loc5_.next.var_154 = true;
                  }
                  if(_loc5_ != null && _loc5_.var_75 == _loc5_)
                  {
                     _loc6_ = null;
                     _loc5_.var_75 = _loc6_;
                     _loc5_.next = _loc6_;
                     _loc5_ = null;
                     _loc5_ = _loc5_;
                  }
                  else
                  {
                     _loc6_ = _loc5_.next;
                     _loc5_.var_75.next = _loc5_.next;
                     _loc5_.next.var_75 = _loc5_.var_75;
                     _loc12_ = null;
                     _loc5_.var_75 = _loc12_;
                     _loc5_.next = _loc12_;
                     _loc5_ = null;
                     _loc5_ = _loc6_;
                  }
                  if(_loc5_ == null)
                  {
                     _loc3_ = null;
                     break;
                  }
               }
               else
               {
                  _loc5_ = _loc5_.next;
               }
            }
            if(_loc3_ != null)
            {
               do
               {
                  _loc16_ = false;
                  _loc5_ = _loc3_;
                  _loc14_ = true;
                  while(_loc14_ || _loc5_ != _loc3_)
                  {
                     _loc14_ = false;
                     _loc6_ = _loc5_.var_75;
                     _loc11_ = 0;
                     _loc15_ = 0;
                     _loc11_ = Number(_loc5_.x - _loc6_.x);
                     _loc15_ = Number(_loc5_.y - _loc6_.y);
                     _loc17_ = 0;
                     _loc18_ = 0;
                     _loc17_ = Number(_loc5_.next.x - _loc5_.x);
                     _loc18_ = Number(_loc5_.next.y - _loc5_.y);
                     _loc19_ = _loc18_ * _loc11_ - _loc17_ * _loc15_;
                     if(_loc19_ * _loc19_ >= class_238.name_8 * class_238.name_8)
                     {
                        _loc5_ = _loc5_.next;
                     }
                     else
                     {
                        if(_loc5_ == _loc3_)
                        {
                           _loc3_ = _loc5_.next;
                           _loc14_ = true;
                        }
                        if(_loc5_ != null && _loc5_.var_75 == _loc5_)
                        {
                           _loc12_ = null;
                           _loc5_.var_75 = _loc12_;
                           _loc5_.next = _loc12_;
                           _loc5_ = null;
                           _loc5_ = _loc5_;
                        }
                        else
                        {
                           _loc12_ = _loc5_.next;
                           _loc5_.var_75.next = _loc5_.next;
                           _loc5_.next.var_75 = _loc5_.var_75;
                           _loc13_ = null;
                           _loc5_.var_75 = _loc13_;
                           _loc5_.next = _loc13_;
                           _loc5_ = null;
                           _loc5_ = _loc12_;
                        }
                        _loc16_ = true;
                        if(_loc5_ == null)
                        {
                           _loc16_ = false;
                           _loc3_ = null;
                           break;
                        }
                     }
                  }
               }
               while(_loc16_);
               
            }
            if(_loc3_ != null)
            {
               param2.add(_loc3_);
            }
         }
         return _loc4_;
      }
      
      public final function init(param1:ZPP_GeomVert = undefined) : void
      {
         var _loc6_:* = null as ZPP_GeomVert;
         var _loc7_:* = null as ZPP_GeomVert;
         var _loc8_:* = null as ZPP_PartitionVertex;
         var _loc9_:* = null as ZPP_PartitionVertex;
         if(param1 == null)
         {
            return;
         }
         var _loc3_:* = 0;
         var _loc4_:ZPP_GeomVert = param1;
         var _loc5_:ZPP_GeomVert = param1;
         if(_loc4_ != null)
         {
            _loc6_ = _loc4_;
            do
            {
               _loc7_ = _loc6_;
               _loc3_ = Number(Number(_loc3_ + _loc7_.x * (_loc7_.next.y - _loc7_.var_75.y)));
               _loc6_ = _loc6_.next;
            }
            while(_loc6_ != _loc5_);
            
         }
         var _loc2_:* = _loc3_ * 0.5 > 0;
         _loc4_ = param1;
         do
         {
            if(_loc2_)
            {
               if(ZPP_PartitionVertex.var_72 == null)
               {
                  _loc9_ = new ZPP_PartitionVertex();
               }
               else
               {
                  _loc9_ = ZPP_PartitionVertex.var_72;
                  ZPP_PartitionVertex.var_72 = _loc9_.next;
                  _loc9_.next = null;
               }
               null;
               _loc9_.x = _loc4_.x;
               _loc9_.y = _loc4_.y;
               _loc8_ = _loc9_;
               if(vertices == null)
               {
                  _loc9_ = _loc8_;
                  _loc8_.next = _loc9_;
                  _loc9_ = _loc9_;
                  _loc8_.var_75 = _loc9_;
                  vertices = _loc9_;
               }
               else
               {
                  _loc8_.var_75 = vertices;
                  _loc8_.next = vertices.next;
                  vertices.next.var_75 = _loc8_;
                  vertices.next = _loc8_;
               }
               vertices = _loc8_;
            }
            else
            {
               if(ZPP_PartitionVertex.var_72 == null)
               {
                  _loc9_ = new ZPP_PartitionVertex();
               }
               else
               {
                  _loc9_ = ZPP_PartitionVertex.var_72;
                  ZPP_PartitionVertex.var_72 = _loc9_.next;
                  _loc9_.next = null;
               }
               null;
               _loc9_.x = _loc4_.x;
               _loc9_.y = _loc4_.y;
               _loc8_ = _loc9_;
               if(vertices == null)
               {
                  _loc9_ = _loc8_;
                  _loc8_.next = _loc9_;
                  _loc9_ = _loc9_;
                  _loc8_.var_75 = _loc9_;
                  vertices = _loc9_;
               }
               else
               {
                  _loc8_.next = vertices;
                  _loc8_.var_75 = vertices.var_75;
                  vertices.var_75.next = _loc8_;
                  vertices.var_75 = _loc8_;
               }
               vertices = _loc8_;
            }
            vertices.var_154 = _loc4_.var_154;
            _loc4_ = _loc4_.next;
         }
         while(_loc4_ != param1);
         
         remove_collinear_vertices();
      }
      
      public final function method_480(param1:class_327 = undefined) : class_327
      {
         var _loc2_:* = null as ZPP_PartitionVertex;
         var _loc3_:* = null as ZPP_PartitionVertex;
         var _loc4_:* = null as ZPP_PartitionVertex;
         var _loc5_:* = null as ZPP_PartitionVertex;
         var _loc6_:* = null as ZNPNode_ZPP_PartitionedPoly;
         var _loc7_:* = null as ZNPNode_ZPP_PartitionedPoly;
         var _loc8_:* = null as ZPP_PartitionedPoly;
         if(param1 == null)
         {
            param1 = new class_327();
         }
         if(vertices != null)
         {
            _loc2_ = vertices;
            _loc3_ = vertices;
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
            pull_partitions(vertices,param1);
            while(vertices != null)
            {
               if(vertices != null && vertices.var_75 == vertices)
               {
                  _loc2_ = null;
                  vertices.var_75 = _loc2_;
                  vertices.next = _loc2_;
                  _loc2_ = vertices;
                  _loc2_.var_271 = null;
                  null;
                  _loc2_.next = ZPP_PartitionVertex.var_72;
                  ZPP_PartitionVertex.var_72 = _loc2_;
                  _loc2_ = null;
                  vertices = _loc2_;
                  vertices = _loc2_;
               }
               else
               {
                  _loc2_ = vertices.next;
                  vertices.var_75.next = vertices.next;
                  vertices.next.var_75 = vertices.var_75;
                  _loc3_ = null;
                  vertices.var_75 = _loc3_;
                  vertices.next = _loc3_;
                  _loc3_ = vertices;
                  _loc3_.var_271 = null;
                  null;
                  _loc3_.next = ZPP_PartitionVertex.var_72;
                  ZPP_PartitionVertex.var_72 = _loc3_;
                  vertices = null;
                  vertices = _loc2_;
               }
            }
            _loc6_ = null;
            _loc7_ = param1.var_73;
            while(_loc7_ != null)
            {
               _loc8_ = _loc7_.var_74;
               if(_loc8_.remove_collinear_vertices())
               {
                  param1.erase(_loc6_);
               }
               else
               {
                  _loc6_ = _loc7_;
                  _loc7_ = _loc7_.next;
               }
            }
         }
         return param1;
      }
      
      public final function method_413(param1:class_318 = undefined) : class_318
      {
         var _loc2_:* = null as ZPP_PartitionVertex;
         var _loc3_:* = null as ZPP_PartitionVertex;
         var _loc4_:* = null as ZPP_PartitionVertex;
         var _loc5_:* = null as ZPP_PartitionVertex;
         if(param1 == null)
         {
            param1 = new class_318();
         }
         if(vertices != null)
         {
            _loc2_ = vertices;
            _loc3_ = vertices;
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
            pull(vertices,param1);
            while(vertices != null)
            {
               if(vertices != null && vertices.var_75 == vertices)
               {
                  _loc2_ = null;
                  vertices.var_75 = _loc2_;
                  vertices.next = _loc2_;
                  _loc2_ = vertices;
                  _loc2_.var_271 = null;
                  null;
                  _loc2_.next = ZPP_PartitionVertex.var_72;
                  ZPP_PartitionVertex.var_72 = _loc2_;
                  _loc2_ = null;
                  vertices = _loc2_;
                  vertices = _loc2_;
               }
               else
               {
                  _loc2_ = vertices.next;
                  vertices.var_75.next = vertices.next;
                  vertices.next.var_75 = vertices.var_75;
                  _loc3_ = null;
                  vertices.var_75 = _loc3_;
                  vertices.next = _loc3_;
                  _loc3_ = vertices;
                  _loc3_.var_271 = null;
                  null;
                  _loc3_.next = ZPP_PartitionVertex.var_72;
                  ZPP_PartitionVertex.var_72 = _loc3_;
                  vertices = null;
                  vertices = _loc2_;
               }
            }
         }
         return param1;
      }
   }
}
