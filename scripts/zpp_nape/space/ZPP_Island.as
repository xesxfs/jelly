package zpp_nape.space
{
   import zpp_nape.util.class_300;
   
   public final class ZPP_Island
   {
      
      public static var var_72:ZPP_Island = null;
       
      
      public var var_211:int;
      
      public var var_751:Boolean;
      
      public var var_76:Boolean;
      
      public var next:ZPP_Island;
      
      public var name_2:Boolean;
      
      public var length:int;
      
      public var var_345:class_300;
      
      public var var_120:Boolean;
      
      public function ZPP_Island()
      {
         var_211 = 0;
         var_751 = false;
         var_345 = null;
         length = 0;
         var_76 = false;
         name_2 = false;
         var_120 = false;
         next = null;
         var_345 = new class_300();
      }
      
      public static function clear() : void
      {
      }
      
      public final function method_118(param1:ZPP_Island) : Boolean
      {
         var _loc2_:* = null;
         var _loc3_:ZPP_Island = next;
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
      
      public final function splice(param1:ZPP_Island, param2:int) : ZPP_Island
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
         var _loc3_:* = null as ZPP_Island;
         var _loc1_:ZPP_Island = next;
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
      
      public final function remove(param1:ZPP_Island) : void
      {
         var _loc5_:* = null as ZPP_Island;
         var _loc6_:* = null as ZPP_Island;
         var _loc2_:* = null;
         var _loc3_:ZPP_Island = next;
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
      
      public final function method_105() : ZPP_Island
      {
         var _loc1_:ZPP_Island = next;
         pop();
         return _loc1_;
      }
      
      public final function pop() : void
      {
         var _loc1_:ZPP_Island = next;
         next = _loc1_.next;
         _loc1_.var_120 = false;
         if(next == null)
         {
            var_76 = true;
         }
         name_2 = true;
         length = length - 1;
      }
      
      public final function iterator_at(param1:int) : ZPP_Island
      {
         var _loc2_:ZPP_Island = next;
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
      
      public final function insert(param1:ZPP_Island, param2:ZPP_Island) : ZPP_Island
      {
         param2.var_120 = true;
         var _loc3_:ZPP_Island = param2;
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
      
      public final function has(param1:ZPP_Island) : Boolean
      {
         var _loc4_:* = null as ZPP_Island;
         var _loc2_:Boolean = false;
         var _loc3_:ZPP_Island = next;
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
      
      public final function erase(param1:ZPP_Island) : ZPP_Island
      {
         var _loc2_:* = null as ZPP_Island;
         var _loc3_:* = null as ZPP_Island;
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
      
      public final function method_119() : ZPP_Island
      {
         var _loc1_:ZPP_Island = next;
         var _loc2_:ZPP_Island = _loc1_;
         while(_loc2_ != null)
         {
            _loc1_ = _loc2_;
            _loc2_ = _loc2_.next;
         }
         return _loc1_;
      }
      
      public final function at(param1:int) : ZPP_Island
      {
         var _loc2_:ZPP_Island = iterator_at(param1);
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         return null;
      }
      
      public final function name_35(param1:ZPP_Island) : void
      {
         var _loc3_:* = null as ZPP_Island;
         var _loc2_:ZPP_Island = param1.next;
         while(_loc2_ != null)
         {
            _loc3_ = _loc2_;
            add(_loc3_);
            _loc2_ = _loc2_.next;
         }
      }
      
      public final function add(param1:ZPP_Island) : ZPP_Island
      {
         param1.var_120 = true;
         var _loc2_:ZPP_Island = param1;
         _loc2_.next = next;
         next = _loc2_;
         name_2 = true;
         length = length + 1;
         return param1;
      }
   }
}
