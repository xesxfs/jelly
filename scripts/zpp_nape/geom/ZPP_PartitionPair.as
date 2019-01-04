package zpp_nape.geom
{
   import zpp_nape.util.ZPP_Set_ZPP_PartitionPair;
   
   public final class ZPP_PartitionPair
   {
      
      public static var var_72:ZPP_PartitionPair = null;
       
      
      public var var_76:Boolean;
      
      public var var_138:ZPP_Set_ZPP_PartitionPair;
      
      public var next:ZPP_PartitionPair;
      
      public var name_2:Boolean;
      
      public var length:int;
      
      public var id:int;
      
      public var var_179:int;
      
      public var b:ZPP_PartitionVertex;
      
      public var a:ZPP_PartitionVertex;
      
      public var var_120:Boolean;
      
      public function ZPP_PartitionPair()
      {
         var_138 = null;
         var_179 = 0;
         id = 0;
         b = null;
         a = null;
         length = 0;
         var_76 = false;
         name_2 = false;
         var_120 = false;
         next = null;
      }
      
      public static function method_65(param1:ZPP_PartitionVertex, param2:ZPP_PartitionVertex) : ZPP_PartitionPair
      {
         var _loc3_:* = null as ZPP_PartitionPair;
         if(ZPP_PartitionPair.var_72 == null)
         {
            _loc3_ = new ZPP_PartitionPair();
         }
         else
         {
            _loc3_ = ZPP_PartitionPair.var_72;
            ZPP_PartitionPair.var_72 = _loc3_.next;
            _loc3_.next = null;
         }
         null;
         _loc3_.a = param1;
         _loc3_.b = param2;
         if(param1.id < param2.id)
         {
            _loc3_.id = param1.id;
            _loc3_.var_179 = param2.id;
         }
         else
         {
            _loc3_.id = param2.id;
            _loc3_.var_179 = param1.id;
         }
         return _loc3_;
      }
      
      public static function method_389(param1:ZPP_PartitionPair, param2:ZPP_PartitionPair) : void
      {
         var _loc3_:ZPP_Set_ZPP_PartitionPair = param1.var_138;
         param1.var_138 = param2.var_138;
         param2.var_138 = _loc3_;
      }
      
      public static function edge_lt(param1:ZPP_PartitionPair, param2:ZPP_PartitionPair) : Boolean
      {
         return param1.id < param2.id || param1.id == param2.id && param1.var_179 < param2.var_179;
      }
      
      public static function clear() : void
      {
      }
      
      public final function method_118(param1:ZPP_PartitionPair) : Boolean
      {
         var _loc2_:* = null;
         var _loc3_:ZPP_PartitionPair = next;
         var _loc4_:Boolean = false;
         while(_loc3_ != null)
         {
            if(_loc3_ == param1)
            {
               erase(_loc2_);
               _loc4_ = true;
               break;
            }
            _loc2_ = _loc3_;
            _loc3_ = _loc3_.next;
         }
         return _loc4_;
      }
      
      public final function splice(param1:ZPP_PartitionPair, param2:int) : ZPP_PartitionPair
      {
         while(true)
         {
            param2--;
            if(!(param2 > 0 && param1.next != null))
            {
               break;
            }
            erase(param1);
         }
         return param1.next;
      }
      
      public final function reverse() : void
      {
         var _loc3_:* = null as ZPP_PartitionPair;
         var _loc1_:ZPP_PartitionPair = next;
         var _loc2_:* = null;
         while(_loc1_ != null)
         {
            _loc3_ = _loc1_.next;
            _loc1_.next = _loc2_;
            next = _loc1_;
            _loc2_ = _loc1_;
            _loc1_ = _loc3_;
         }
         name_2 = true;
         var_76 = true;
      }
      
      public final function remove(param1:ZPP_PartitionPair) : void
      {
         var _loc5_:* = null as ZPP_PartitionPair;
         var _loc6_:* = null as ZPP_PartitionPair;
         var _loc2_:* = null;
         var _loc3_:ZPP_PartitionPair = next;
         var _loc4_:Boolean = false;
         while(_loc3_ != null)
         {
            if(_loc3_ == param1)
            {
               if(_loc2_ == null)
               {
                  _loc5_ = next;
                  _loc6_ = _loc5_.next;
                  next = _loc6_;
                  if(next == null)
                  {
                     var_76 = true;
                  }
               }
               else
               {
                  _loc5_ = _loc2_.next;
                  _loc6_ = _loc5_.next;
                  _loc2_.next = _loc6_;
                  if(_loc6_ == null)
                  {
                     var_76 = true;
                  }
               }
               _loc5_.var_120 = false;
               name_2 = true;
               length = length - 1;
               var_76 = true;
               _loc6_;
               _loc4_ = true;
               break;
            }
            _loc2_ = _loc3_;
            _loc3_ = _loc3_.next;
         }
         _loc4_;
      }
      
      public final function method_105() : ZPP_PartitionPair
      {
         var _loc1_:ZPP_PartitionPair = next;
         pop();
         return _loc1_;
      }
      
      public final function pop() : void
      {
         var _loc1_:ZPP_PartitionPair = next;
         next = _loc1_.next;
         _loc1_.var_120 = false;
         if(next == null)
         {
            var_76 = true;
         }
         name_2 = true;
         length = length - 1;
      }
      
      public final function iterator_at(param1:int) : ZPP_PartitionPair
      {
         var _loc2_:ZPP_PartitionPair = next;
         while(true)
         {
            param1--;
            if(!(param1 > 0 && _loc2_ != null))
            {
               break;
            }
            _loc2_ = _loc2_.next;
         }
         return _loc2_;
      }
      
      public final function insert(param1:ZPP_PartitionPair, param2:ZPP_PartitionPair) : ZPP_PartitionPair
      {
         param2.var_120 = true;
         var _loc3_:ZPP_PartitionPair = param2;
         if(param1 == null)
         {
            _loc3_.next = next;
            next = _loc3_;
         }
         else
         {
            _loc3_.next = param1.next;
            param1.next = _loc3_;
         }
         name_2 = true;
         var_76 = true;
         length = length + 1;
         return _loc3_;
      }
      
      public final function has(param1:ZPP_PartitionPair) : Boolean
      {
         var _loc4_:* = null as ZPP_PartitionPair;
         var _loc2_:Boolean = false;
         var _loc3_:ZPP_PartitionPair = next;
         while(_loc3_ != null)
         {
            _loc4_ = _loc3_;
            if(_loc4_ == param1)
            {
               _loc2_ = true;
               break;
            }
            _loc3_ = _loc3_.next;
         }
         return _loc2_;
      }
      
      public final function erase(param1:ZPP_PartitionPair) : ZPP_PartitionPair
      {
         var _loc2_:* = null as ZPP_PartitionPair;
         var _loc3_:* = null as ZPP_PartitionPair;
         if(param1 == null)
         {
            _loc2_ = next;
            _loc3_ = _loc2_.next;
            next = _loc3_;
            if(next == null)
            {
               var_76 = true;
            }
         }
         else
         {
            _loc2_ = param1.next;
            _loc3_ = _loc2_.next;
            param1.next = _loc3_;
            if(_loc3_ == null)
            {
               var_76 = true;
            }
         }
         _loc2_.var_120 = false;
         name_2 = true;
         length = length - 1;
         var_76 = true;
         return _loc3_;
      }
      
      public final function method_119() : ZPP_PartitionPair
      {
         var _loc1_:ZPP_PartitionPair = next;
         var _loc2_:ZPP_PartitionPair = _loc1_;
         while(_loc2_ != null)
         {
            _loc1_ = _loc2_;
            _loc2_ = _loc2_.next;
         }
         return _loc1_;
      }
      
      public final function at(param1:int) : ZPP_PartitionPair
      {
         var _loc2_:ZPP_PartitionPair = iterator_at(param1);
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         return null;
      }
      
      public final function name_35(param1:ZPP_PartitionPair) : void
      {
         var _loc3_:* = null as ZPP_PartitionPair;
         var _loc2_:ZPP_PartitionPair = param1.next;
         while(_loc2_ != null)
         {
            _loc3_ = _loc2_;
            add(_loc3_);
            _loc2_ = _loc2_.next;
         }
      }
      
      public final function add(param1:ZPP_PartitionPair) : ZPP_PartitionPair
      {
         param1.var_120 = true;
         var _loc2_:ZPP_PartitionPair = param1;
         _loc2_.next = next;
         next = _loc2_;
         name_2 = true;
         length = length + 1;
         return param1;
      }
   }
}
