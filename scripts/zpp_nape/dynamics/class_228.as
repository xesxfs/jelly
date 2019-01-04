package zpp_nape.dynamics
{
   import package_26.class_227;
   import package_26.class_252;
   import zpp_nape.space.ZPP_Space;
   import zpp_nape.util.ZNPNode_ZPP_ColArbiter;
   import zpp_nape.util.ZNPNode_ZPP_FluidArbiter;
   import zpp_nape.util.ZNPNode_ZPP_SensorArbiter;
   
   public final class class_228 extends class_227
   {
       
      
      public var var_86:Boolean;
      
      public var space:ZPP_Space;
      
      public var var_266:Array;
      
      public var ite_3:ZNPNode_ZPP_SensorArbiter;
      
      public var ite_2:ZNPNode_ZPP_FluidArbiter;
      
      public var ite_1:ZNPNode_ZPP_ColArbiter;
      
      public var ite_0:ZNPNode_ZPP_ColArbiter;
      
      public var at_index_3:int;
      
      public var at_index_2:int;
      
      public var at_index_1:int;
      
      public var at_index_0:int;
      
      public var var_218:int;
      
      public function class_228()
      {
         var _loc2_:int = 0;
         at_index_3 = 0;
         at_index_2 = 0;
         at_index_1 = 0;
         at_index_0 = 0;
         ite_3 = null;
         ite_2 = null;
         ite_1 = null;
         ite_0 = null;
         var_266 = null;
         var_86 = false;
         var_218 = 0;
         space = null;
         super();
         at_index_0 = 0;
         at_index_1 = 0;
         at_index_2 = 0;
         at_index_3 = 0;
         var_86 = true;
         var_218 = 0;
         var_266 = [];
         var _loc1_:int = 0;
         while(_loc1_ < 4)
         {
            _loc1_++;
            _loc2_ = _loc1_;
            var_266.push(0);
         }
      }
      
      override public function method_114() : void
      {
         var _loc1_:Boolean = false;
         if(space.var_228.name_2)
         {
            _loc1_ = true;
            space.var_228.name_2 = false;
         }
         if(space.var_175.name_2)
         {
            _loc1_ = true;
            space.var_175.name_2 = false;
         }
         if(space.var_217.name_2)
         {
            _loc1_ = true;
            space.var_217.name_2 = false;
         }
         if(space.var_288.name_2)
         {
            _loc1_ = true;
            space.var_288.name_2 = false;
         }
         if(_loc1_)
         {
            var_86 = true;
            var_218 = 0;
            ite_0 = null;
            ite_1 = null;
            ite_2 = null;
            ite_3 = null;
         }
      }
      
      override public function method_108() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:* = null as ZNPNode_ZPP_ColArbiter;
         var _loc4_:* = null as ZPP_ColArbiter;
         var _loc5_:* = null as ZNPNode_ZPP_FluidArbiter;
         var _loc6_:* = null as ZPP_FluidArbiter;
         var _loc7_:* = null as ZNPNode_ZPP_SensorArbiter;
         var _loc8_:* = null as ZPP_SensorArbiter;
         method_114();
         if(var_86)
         {
            var_218 = 0;
            _loc1_ = 0;
            _loc2_ = 0;
            _loc3_ = space.var_228.var_73;
            while(_loc3_ != null)
            {
               _loc4_ = _loc3_.var_74;
               if(_loc4_.active)
               {
                  _loc2_++;
               }
               _loc3_ = _loc3_.next;
            }
            _loc1_++;
            var_266[_loc1_] = _loc2_;
            var_218 = var_218 + _loc2_;
            _loc2_ = 0;
            _loc3_ = space.var_175.var_73;
            while(_loc3_ != null)
            {
               _loc4_ = _loc3_.var_74;
               if(_loc4_.active)
               {
                  _loc2_++;
               }
               _loc3_ = _loc3_.next;
            }
            _loc1_++;
            var_266[_loc1_] = _loc2_;
            var_218 = var_218 + _loc2_;
            _loc2_ = 0;
            _loc5_ = space.var_217.var_73;
            while(_loc5_ != null)
            {
               _loc6_ = _loc5_.var_74;
               if(_loc6_.active)
               {
                  _loc2_++;
               }
               _loc5_ = _loc5_.next;
            }
            _loc1_++;
            var_266[_loc1_] = _loc2_;
            var_218 = var_218 + _loc2_;
            _loc2_ = 0;
            _loc7_ = space.var_288.var_73;
            while(_loc7_ != null)
            {
               _loc8_ = _loc7_.var_74;
               if(_loc8_.active)
               {
                  _loc2_++;
               }
               _loc7_ = _loc7_.next;
            }
            _loc1_++;
            var_266[_loc1_] = _loc2_;
            var_218 = var_218 + _loc2_;
            var_86 = false;
         }
         return var_218;
      }
      
      override public function unshift(param1:class_252) : Boolean
      {
         return false;
      }
      
      override public function shift() : class_252
      {
         return null;
      }
      
      override public function remove(param1:class_252) : Boolean
      {
         return false;
      }
      
      override public function push(param1:class_252) : Boolean
      {
         return false;
      }
      
      override public function pop() : class_252
      {
         return null;
      }
      
      override public function clear() : void
      {
      }
      
      override public function at(param1:int) : class_252
      {
         var _loc4_:* = 0;
         var _loc5_:* = null as ZPP_ColArbiter;
         var _loc6_:* = null as ZPP_FluidArbiter;
         var _loc7_:* = null as ZPP_SensorArbiter;
         method_114();
         var _loc2_:* = null;
         var _loc3_:* = 0;
         if(_loc2_ == null)
         {
            if(param1 < _loc3_ + int(var_266[0]))
            {
               _loc4_ = param1 - _loc3_;
               if(_loc4_ < at_index_0 || ite_0 == null)
               {
                  at_index_0 = 0;
                  ite_0 = space.var_228.var_73;
                  while(true)
                  {
                     _loc5_ = ite_0.var_74;
                     if(_loc5_.active)
                     {
                        break;
                     }
                     ite_0 = ite_0.next;
                  }
               }
               while(at_index_0 != _loc4_)
               {
                  at_index_0 = at_index_0 + 1;
                  ite_0 = ite_0.next;
                  while(true)
                  {
                     _loc5_ = ite_0.var_74;
                     if(_loc5_.active)
                     {
                        break;
                     }
                     ite_0 = ite_0.next;
                  }
               }
               _loc2_ = ite_0.var_74.method_109();
            }
            else
            {
               _loc3_ = _loc3_ + int(var_266[0]);
            }
         }
         if(_loc2_ == null)
         {
            if(param1 < _loc3_ + int(var_266[1]))
            {
               _loc4_ = param1 - _loc3_;
               if(_loc4_ < at_index_1 || ite_1 == null)
               {
                  at_index_1 = 0;
                  ite_1 = space.var_175.var_73;
                  while(true)
                  {
                     _loc5_ = ite_1.var_74;
                     if(_loc5_.active)
                     {
                        break;
                     }
                     ite_1 = ite_1.next;
                  }
               }
               while(at_index_1 != _loc4_)
               {
                  at_index_1 = at_index_1 + 1;
                  ite_1 = ite_1.next;
                  while(true)
                  {
                     _loc5_ = ite_1.var_74;
                     if(_loc5_.active)
                     {
                        break;
                     }
                     ite_1 = ite_1.next;
                  }
               }
               _loc2_ = ite_1.var_74.method_109();
            }
            else
            {
               _loc3_ = _loc3_ + int(var_266[1]);
            }
         }
         if(_loc2_ == null)
         {
            if(param1 < _loc3_ + int(var_266[2]))
            {
               _loc4_ = param1 - _loc3_;
               if(_loc4_ < at_index_2 || ite_2 == null)
               {
                  at_index_2 = 0;
                  ite_2 = space.var_217.var_73;
                  while(true)
                  {
                     _loc6_ = ite_2.var_74;
                     if(_loc6_.active)
                     {
                        break;
                     }
                     ite_2 = ite_2.next;
                  }
               }
               while(at_index_2 != _loc4_)
               {
                  at_index_2 = at_index_2 + 1;
                  ite_2 = ite_2.next;
                  while(true)
                  {
                     _loc6_ = ite_2.var_74;
                     if(_loc6_.active)
                     {
                        break;
                     }
                     ite_2 = ite_2.next;
                  }
               }
               _loc2_ = ite_2.var_74.method_109();
            }
            else
            {
               _loc3_ = _loc3_ + int(var_266[2]);
            }
         }
         if(_loc2_ == null)
         {
            if(param1 < _loc3_ + int(var_266[3]))
            {
               _loc4_ = param1 - _loc3_;
               if(_loc4_ < at_index_3 || ite_3 == null)
               {
                  at_index_3 = 0;
                  ite_3 = space.var_288.var_73;
                  while(true)
                  {
                     _loc7_ = ite_3.var_74;
                     if(_loc7_.active)
                     {
                        break;
                     }
                     ite_3 = ite_3.next;
                  }
               }
               while(at_index_3 != _loc4_)
               {
                  at_index_3 = at_index_3 + 1;
                  ite_3 = ite_3.next;
                  while(true)
                  {
                     _loc7_ = ite_3.var_74;
                     if(_loc7_.active)
                     {
                        break;
                     }
                     ite_3 = ite_3.next;
                  }
               }
               _loc2_ = ite_3.var_74.method_109();
            }
            else
            {
               _loc3_ = _loc3_ + int(var_266[3]);
            }
         }
         return _loc2_;
      }
   }
}
