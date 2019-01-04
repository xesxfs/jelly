package zpp_nape.util
{
   public final class class_344
   {
       
      
      public var var_280:Vector.<Hashable2_Boolfalse>;
      
      public var var_394:int;
      
      public function class_344()
      {
         var_394 = 0;
         var_280 = null;
         var_394 = 0;
         var_280 = new Vector.<Hashable2_Boolfalse>(1048576,true);
      }
      
      public final function remove(param1:Hashable2_Boolfalse) : void
      {
         var _loc4_:* = null as Hashable2_Boolfalse;
         var _loc2_:* = param1.id * 106039 + param1.var_179 & 1048575;
         var _loc3_:Hashable2_Boolfalse = var_280[_loc2_];
         if(_loc3_ == param1)
         {
            var_280[_loc2_] = _loc3_.var_305;
         }
         else if(_loc3_ != null)
         {
            do
            {
               _loc4_ = _loc3_;
               _loc3_ = _loc3_.var_305;
            }
            while(_loc3_ != null && _loc3_ != param1);
            
            _loc4_.var_305 = _loc3_.var_305;
         }
         param1.var_305 = null;
         var_394 = var_394 - 1;
      }
      
      public final function method_903(param1:Hashable2_Boolfalse) : void
      {
         var _loc2_:* = param1.id * 106039 + param1.var_179 & 1048575;
         var _loc3_:Hashable2_Boolfalse = var_280[_loc2_];
         if(_loc3_ == null)
         {
            var_280[_loc2_] = param1;
            param1.var_305 = null;
         }
         else
         {
            param1.var_305 = _loc3_.var_305;
            _loc3_.var_305 = param1;
         }
         var_394 = var_394 + 1;
      }
      
      public final function has(param1:int, param2:int) : Boolean
      {
         var _loc3_:Hashable2_Boolfalse = var_280[param1 * 106039 + param2 & 1048575];
         if(_loc3_ == null)
         {
            return false;
         }
         if(_loc3_.id == param1 && _loc3_.var_179 == param2)
         {
            return true;
         }
         do
         {
            _loc3_ = _loc3_.var_305;
         }
         while(_loc3_ != null && (_loc3_.id != param1 || _loc3_.var_179 != param2));
         
         return _loc3_ != null;
      }
      
      public final function clear() : void
      {
         var _loc3_:int = 0;
         var _loc4_:* = null as Hashable2_Boolfalse;
         var _loc5_:* = null as Hashable2_Boolfalse;
         var _loc1_:int = 0;
         var _loc2_:int = var_280.length;
         while(_loc1_ < _loc2_)
         {
            _loc1_++;
            _loc3_ = _loc1_;
            _loc4_ = var_280[_loc3_];
            if(_loc4_ != null)
            {
               while(_loc4_ != null)
               {
                  _loc5_ = _loc4_.var_305;
                  _loc4_.var_305 = null;
                  _loc4_;
                  _loc4_ = _loc5_;
               }
               var_280[_loc3_] = null;
            }
         }
      }
      
      public final function add(param1:Hashable2_Boolfalse) : void
      {
         var _loc2_:* = param1.id * 106039 + param1.var_179 & 1048575;
         var _loc3_:Hashable2_Boolfalse = var_280[_loc2_];
         if(_loc3_ == null)
         {
            var_280[_loc2_] = param1;
            param1.var_305 = null;
         }
         else
         {
            param1.var_305 = _loc3_.var_305;
            _loc3_.var_305 = param1;
         }
         var_394 = var_394 + 1;
      }
   }
}
