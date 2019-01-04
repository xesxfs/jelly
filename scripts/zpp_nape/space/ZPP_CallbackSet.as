package zpp_nape.space
{
   import zpp_nape.dynamics.ZPP_Arbiter;
   import zpp_nape.phys.ZPP_Interactor;
   import zpp_nape.util.ZNPNode_ZPP_Arbiter;
   import zpp_nape.util.class_223;
   import zpp_nape.util.class_254;
   
   public final class ZPP_CallbackSet
   {
      
      public static var var_72:ZPP_CallbackSet = null;
       
      
      public var var_76:Boolean;
      
      public var next:ZPP_CallbackSet;
      
      public var name_2:Boolean;
      
      public var length:int;
      
      public var var_903:Boolean;
      
      public var int2:ZPP_Interactor;
      
      public var int1:ZPP_Interactor;
      
      public var id:int;
      
      public var var_852:Boolean;
      
      public var var_179:int;
      
      public var name_12:class_254;
      
      public var var_120:Boolean;
      
      public var var_710:int;
      
      public var var_816:int;
      
      public var var_747:int;
      
      public var var_763:int;
      
      public var var_701:int;
      
      public var var_782:int;
      
      public function ZPP_CallbackSet()
      {
         var_903 = false;
         var_852 = false;
         length = 0;
         var_76 = false;
         name_2 = false;
         var_120 = false;
         next = null;
         int2 = null;
         int1 = null;
         var_179 = 0;
         id = 0;
         name_12 = new class_254();
      }
      
      public static function method_65(param1:ZPP_Interactor, param2:ZPP_Interactor) : ZPP_CallbackSet
      {
         var _loc3_:* = null as ZPP_CallbackSet;
         if(ZPP_CallbackSet.var_72 == null)
         {
            _loc3_ = new ZPP_CallbackSet();
         }
         else
         {
            _loc3_ = ZPP_CallbackSet.var_72;
            ZPP_CallbackSet.var_72 = _loc3_.next;
            _loc3_.next = null;
         }
         _loc3_.var_852 = false;
         _loc3_.var_903 = false;
         _loc3_.var_701 = class_223.var_941;
         _loc3_.var_782 = 0;
         _loc3_.var_710 = class_223.var_941;
         _loc3_.var_816 = 0;
         _loc3_.var_747 = class_223.var_941;
         _loc3_.var_763 = 0;
         if(param1.id < param2.id)
         {
            _loc3_.int1 = param1;
            _loc3_.int2 = param2;
         }
         else
         {
            _loc3_.int1 = param2;
            _loc3_.int2 = param1;
         }
         _loc3_.id = _loc3_.int1.id;
         _loc3_.var_179 = _loc3_.int2.id;
         return _loc3_;
      }
      
      public static function clear() : void
      {
      }
      
      public final function method_785(param1:ZPP_Arbiter) : Boolean
      {
         var _loc6_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc7_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc8_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc2_:class_254 = name_12;
         var _loc3_:* = null;
         var _loc4_:ZNPNode_ZPP_Arbiter = _loc2_.var_73;
         var _loc5_:Boolean = false;
         while(_loc4_ != null)
         {
            if(_loc4_.var_74 == param1)
            {
               if(_loc3_ == null)
               {
                  _loc6_ = _loc2_.var_73;
                  _loc7_ = _loc6_.next;
                  _loc2_.var_73 = _loc7_;
                  if(_loc2_.var_73 == null)
                  {
                     _loc2_.var_76 = true;
                  }
               }
               else
               {
                  _loc6_ = _loc3_.next;
                  _loc7_ = _loc6_.next;
                  _loc3_.next = _loc7_;
                  if(_loc7_ == null)
                  {
                     _loc2_.var_76 = true;
                  }
               }
               _loc8_ = _loc6_;
               _loc8_.var_74 = null;
               _loc8_.next = ZNPNode_ZPP_Arbiter.var_72;
               ZNPNode_ZPP_Arbiter.var_72 = _loc8_;
               _loc2_.name_2 = true;
               _loc2_.length = _loc2_.length - 1;
               _loc2_.var_76 = true;
               _loc7_;
               _loc5_ = true;
               break;
            }
            _loc3_ = _loc4_;
            _loc4_ = _loc4_.next;
         }
         return _loc5_;
      }
      
      public final function method_118(param1:ZPP_CallbackSet) : Boolean
      {
         var _loc2_:* = null;
         var _loc3_:ZPP_CallbackSet = next;
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
      
      public final function splice(param1:ZPP_CallbackSet, param2:int) : ZPP_CallbackSet
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
         var _loc3_:* = null as ZPP_CallbackSet;
         var _loc1_:ZPP_CallbackSet = next;
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
      
      public final function method_404(param1:ZPP_Arbiter) : void
      {
         var _loc6_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc7_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc8_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc2_:class_254 = name_12;
         var _loc3_:* = null;
         var _loc4_:ZNPNode_ZPP_Arbiter = _loc2_.var_73;
         var _loc5_:Boolean = false;
         while(_loc4_ != null)
         {
            if(_loc4_.var_74 == param1)
            {
               if(_loc3_ == null)
               {
                  _loc6_ = _loc2_.var_73;
                  _loc7_ = _loc6_.next;
                  _loc2_.var_73 = _loc7_;
                  if(_loc2_.var_73 == null)
                  {
                     _loc2_.var_76 = true;
                  }
               }
               else
               {
                  _loc6_ = _loc3_.next;
                  _loc7_ = _loc6_.next;
                  _loc3_.next = _loc7_;
                  if(_loc7_ == null)
                  {
                     _loc2_.var_76 = true;
                  }
               }
               _loc8_ = _loc6_;
               _loc8_.var_74 = null;
               _loc8_.next = ZNPNode_ZPP_Arbiter.var_72;
               ZNPNode_ZPP_Arbiter.var_72 = _loc8_;
               _loc2_.name_2 = true;
               _loc2_.length = _loc2_.length - 1;
               _loc2_.var_76 = true;
               _loc7_;
               _loc5_ = true;
               break;
            }
            _loc3_ = _loc4_;
            _loc4_ = _loc4_.next;
         }
         _loc5_;
      }
      
      public final function remove(param1:ZPP_CallbackSet) : void
      {
         var _loc5_:* = null as ZPP_CallbackSet;
         var _loc6_:* = null as ZPP_CallbackSet;
         var _loc2_:* = null;
         var _loc3_:ZPP_CallbackSet = next;
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
      
      public final function method_105() : ZPP_CallbackSet
      {
         var _loc1_:ZPP_CallbackSet = next;
         pop();
         return _loc1_;
      }
      
      public final function pop() : void
      {
         var _loc1_:ZPP_CallbackSet = next;
         next = _loc1_.next;
         _loc1_.var_120 = false;
         if(next == null)
         {
            var_76 = true;
         }
         name_2 = true;
         length = length - 1;
      }
      
      public final function iterator_at(param1:int) : ZPP_CallbackSet
      {
         var _loc2_:ZPP_CallbackSet = next;
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
      
      public final function insert(param1:ZPP_CallbackSet, param2:ZPP_CallbackSet) : ZPP_CallbackSet
      {
         param2.var_120 = true;
         var _loc3_:ZPP_CallbackSet = param2;
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
      
      public final function has(param1:ZPP_CallbackSet) : Boolean
      {
         var _loc4_:* = null as ZPP_CallbackSet;
         var _loc2_:Boolean = false;
         var _loc3_:ZPP_CallbackSet = next;
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
      
      public final function erase(param1:ZPP_CallbackSet) : ZPP_CallbackSet
      {
         var _loc2_:* = null as ZPP_CallbackSet;
         var _loc3_:* = null as ZPP_CallbackSet;
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
      
      public final function method_352(param1:int) : Boolean
      {
         var _loc4_:* = null as ZPP_Arbiter;
         var _loc2_:Boolean = true;
         var _loc3_:ZNPNode_ZPP_Arbiter = name_12.var_73;
         while(_loc3_ != null)
         {
            _loc4_ = _loc3_.var_74;
            if((_loc4_.type & param1) == 0)
            {
               _loc3_ = _loc3_.next;
               continue;
            }
            _loc2_ = false;
            break;
         }
         return _loc2_;
      }
      
      public final function method_119() : ZPP_CallbackSet
      {
         var _loc1_:ZPP_CallbackSet = next;
         var _loc2_:ZPP_CallbackSet = _loc1_;
         while(_loc2_ != null)
         {
            _loc1_ = _loc2_;
            _loc2_ = _loc2_.next;
         }
         return _loc1_;
      }
      
      public final function at(param1:int) : ZPP_CallbackSet
      {
         var _loc2_:ZPP_CallbackSet = iterator_at(param1);
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         return null;
      }
      
      public final function method_840(param1:ZPP_Arbiter) : Boolean
      {
         var _loc3_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc4_:* = null as ZPP_Arbiter;
         var _loc5_:* = null as class_254;
         var _loc6_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc2_:Boolean = false;
         _loc3_ = name_12.var_73;
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
         if(!_loc2_)
         {
            _loc5_ = name_12;
            if(ZNPNode_ZPP_Arbiter.var_72 == null)
            {
               _loc6_ = new ZNPNode_ZPP_Arbiter();
            }
            else
            {
               _loc6_ = ZNPNode_ZPP_Arbiter.var_72;
               ZNPNode_ZPP_Arbiter.var_72 = _loc6_.next;
               _loc6_.next = null;
            }
            null;
            _loc6_.var_74 = param1;
            _loc3_ = _loc6_;
            _loc3_.next = _loc5_.var_73;
            _loc5_.var_73 = _loc3_;
            _loc5_.name_2 = true;
            _loc5_.length = _loc5_.length + 1;
            param1;
            return true;
         }
         return false;
      }
      
      public final function name_35(param1:ZPP_CallbackSet) : void
      {
         var _loc3_:* = null as ZPP_CallbackSet;
         var _loc2_:ZPP_CallbackSet = param1.next;
         while(_loc2_ != null)
         {
            _loc3_ = _loc2_;
            add(_loc3_);
            _loc2_ = _loc2_.next;
         }
      }
      
      public final function add(param1:ZPP_CallbackSet) : ZPP_CallbackSet
      {
         param1.var_120 = true;
         var _loc2_:ZPP_CallbackSet = param1;
         _loc2_.next = next;
         next = _loc2_;
         name_2 = true;
         length = length + 1;
         return param1;
      }
   }
}
