package zpp_nape.util
{
   import zpp_nape.callbacks.ZPP_CbType;
   
   public final class ZNPList_ZPP_CbType
   {
       
      
      public var var_76:Boolean;
      
      public var name_2:Boolean;
      
      public var length:int;
      
      public var var_73:ZNPNode_ZPP_CbType;
      
      public function ZNPList_ZPP_CbType()
      {
         length = 0;
         var_76 = false;
         name_2 = false;
         var_73 = null;
      }
      
      public final function method_118(param1:ZPP_CbType) : Boolean
      {
         var _loc2_:* = null;
         var _loc3_:ZNPNode_ZPP_CbType = var_73;
         var _loc4_:Boolean = false;
         while(_loc3_ != null)
         {
            if(_loc3_.var_74 == param1)
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
      
      public final function splice(param1:ZNPNode_ZPP_CbType, param2:int) : ZNPNode_ZPP_CbType
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
         var _loc3_:* = null as ZNPNode_ZPP_CbType;
         var _loc1_:ZNPNode_ZPP_CbType = var_73;
         var _loc2_:* = null;
         while(_loc1_ != null)
         {
            _loc3_ = _loc1_.next;
            _loc1_.next = _loc2_;
            var_73 = _loc1_;
            _loc2_ = _loc1_;
            _loc1_ = _loc3_;
         }
         name_2 = true;
         var_76 = true;
      }
      
      public final function remove(param1:ZPP_CbType) : void
      {
         var _loc5_:* = null as ZNPNode_ZPP_CbType;
         var _loc6_:* = null as ZNPNode_ZPP_CbType;
         var _loc7_:* = null as ZNPNode_ZPP_CbType;
         var _loc2_:* = null;
         var _loc3_:ZNPNode_ZPP_CbType = var_73;
         var _loc4_:Boolean = false;
         while(_loc3_ != null)
         {
            if(_loc3_.var_74 == param1)
            {
               if(_loc2_ == null)
               {
                  _loc5_ = var_73;
                  _loc6_ = _loc5_.next;
                  var_73 = _loc6_;
                  if(var_73 == null)
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
               _loc7_ = _loc5_;
               _loc7_.var_74 = null;
               _loc7_.next = ZNPNode_ZPP_CbType.var_72;
               ZNPNode_ZPP_CbType.var_72 = _loc7_;
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
      
      public final function method_105() : ZPP_CbType
      {
         var _loc1_:ZPP_CbType = var_73.var_74;
         pop();
         return _loc1_;
      }
      
      public final function pop() : void
      {
         var _loc1_:ZNPNode_ZPP_CbType = var_73;
         var_73 = _loc1_.next;
         var _loc2_:ZNPNode_ZPP_CbType = _loc1_;
         _loc2_.var_74 = null;
         _loc2_.next = ZNPNode_ZPP_CbType.var_72;
         ZNPNode_ZPP_CbType.var_72 = _loc2_;
         if(var_73 == null)
         {
            var_76 = true;
         }
         name_2 = true;
         length = length - 1;
      }
      
      public final function iterator_at(param1:int) : ZNPNode_ZPP_CbType
      {
         var _loc2_:ZNPNode_ZPP_CbType = var_73;
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
      
      public final function insert(param1:ZNPNode_ZPP_CbType, param2:ZPP_CbType) : ZNPNode_ZPP_CbType
      {
         var _loc4_:* = null as ZNPNode_ZPP_CbType;
         if(ZNPNode_ZPP_CbType.var_72 == null)
         {
            _loc4_ = new ZNPNode_ZPP_CbType();
         }
         else
         {
            _loc4_ = ZNPNode_ZPP_CbType.var_72;
            ZNPNode_ZPP_CbType.var_72 = _loc4_.next;
            _loc4_.next = null;
         }
         null;
         _loc4_.var_74 = param2;
         var _loc3_:ZNPNode_ZPP_CbType = _loc4_;
         if(param1 == null)
         {
            _loc3_.next = var_73;
            var_73 = _loc3_;
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
      
      public final function has(param1:ZPP_CbType) : Boolean
      {
         var _loc4_:* = null as ZPP_CbType;
         var _loc2_:Boolean = false;
         var _loc3_:ZNPNode_ZPP_CbType = var_73;
         while(_loc3_ != null)
         {
            _loc4_ = _loc3_.var_74;
            if(_loc4_ == param1)
            {
               _loc2_ = true;
               break;
            }
            _loc3_ = _loc3_.next;
         }
         return _loc2_;
      }
      
      public final function erase(param1:ZNPNode_ZPP_CbType) : ZNPNode_ZPP_CbType
      {
         var _loc2_:* = null as ZNPNode_ZPP_CbType;
         var _loc3_:* = null as ZNPNode_ZPP_CbType;
         if(param1 == null)
         {
            _loc2_ = var_73;
            _loc3_ = _loc2_.next;
            var_73 = _loc3_;
            if(var_73 == null)
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
         var _loc4_:ZNPNode_ZPP_CbType = _loc2_;
         _loc4_.var_74 = null;
         _loc4_.next = ZNPNode_ZPP_CbType.var_72;
         ZNPNode_ZPP_CbType.var_72 = _loc4_;
         name_2 = true;
         length = length - 1;
         var_76 = true;
         return _loc3_;
      }
      
      public final function clear() : void
      {
         var _loc1_:* = null as ZNPNode_ZPP_CbType;
         var _loc2_:* = null as ZNPNode_ZPP_CbType;
         while(var_73 != null)
         {
            _loc1_ = var_73;
            var_73 = _loc1_.next;
            _loc2_ = _loc1_;
            _loc2_.var_74 = null;
            _loc2_.next = ZNPNode_ZPP_CbType.var_72;
            ZNPNode_ZPP_CbType.var_72 = _loc2_;
            if(var_73 == null)
            {
               var_76 = true;
            }
            name_2 = true;
            length = length - 1;
         }
         var_76 = true;
      }
      
      public final function method_119() : ZPP_CbType
      {
         var _loc1_:ZNPNode_ZPP_CbType = var_73;
         var _loc2_:ZNPNode_ZPP_CbType = _loc1_;
         while(_loc2_ != null)
         {
            _loc1_ = _loc2_;
            _loc2_ = _loc2_.next;
         }
         return _loc1_.var_74;
      }
      
      public final function at(param1:int) : ZPP_CbType
      {
         var _loc2_:ZNPNode_ZPP_CbType = iterator_at(param1);
         if(_loc2_ != null)
         {
            return _loc2_.var_74;
         }
         return null;
      }
      
      public final function name_35(param1:ZNPList_ZPP_CbType) : void
      {
         var _loc3_:* = null as ZPP_CbType;
         var _loc2_:ZNPNode_ZPP_CbType = param1.var_73;
         while(_loc2_ != null)
         {
            _loc3_ = _loc2_.var_74;
            add(_loc3_);
            _loc2_ = _loc2_.next;
         }
      }
      
      public final function add(param1:ZPP_CbType) : ZPP_CbType
      {
         var _loc3_:* = null as ZNPNode_ZPP_CbType;
         if(ZNPNode_ZPP_CbType.var_72 == null)
         {
            _loc3_ = new ZNPNode_ZPP_CbType();
         }
         else
         {
            _loc3_ = ZNPNode_ZPP_CbType.var_72;
            ZNPNode_ZPP_CbType.var_72 = _loc3_.next;
            _loc3_.next = null;
         }
         null;
         _loc3_.var_74 = param1;
         var _loc2_:ZNPNode_ZPP_CbType = _loc3_;
         _loc2_.next = var_73;
         var_73 = _loc2_;
         name_2 = true;
         length = length + 1;
         return param1;
      }
   }
}
