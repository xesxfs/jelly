package zpp_nape.util
{
   public final class Hashable2_Boolfalse
   {
      
      public static var var_72:Hashable2_Boolfalse = null;
       
      
      public var value:Boolean;
      
      public var next:Hashable2_Boolfalse;
      
      public var id:int;
      
      public var var_305:Hashable2_Boolfalse;
      
      public var var_179:int;
      
      public function Hashable2_Boolfalse()
      {
         var_179 = 0;
         id = 0;
         var_305 = null;
         next = null;
         value = false;
      }
      
      public static function method_65(param1:int, param2:int, param3:Boolean) : Hashable2_Boolfalse
      {
         var _loc5_:* = null as Hashable2_Boolfalse;
         if(Hashable2_Boolfalse.var_72 == null)
         {
            _loc5_ = new Hashable2_Boolfalse();
         }
         else
         {
            _loc5_ = Hashable2_Boolfalse.var_72;
            Hashable2_Boolfalse.var_72 = _loc5_.next;
            _loc5_.next = null;
         }
         null;
         _loc5_.id = param1;
         _loc5_.var_179 = param2;
         var _loc4_:Hashable2_Boolfalse = _loc5_;
         _loc4_.value = param3;
         return _loc4_;
      }
      
      public static function method_852(param1:int, param2:int) : Hashable2_Boolfalse
      {
         var _loc3_:* = null as Hashable2_Boolfalse;
         if(Hashable2_Boolfalse.var_72 == null)
         {
            _loc3_ = new Hashable2_Boolfalse();
         }
         else
         {
            _loc3_ = Hashable2_Boolfalse.var_72;
            Hashable2_Boolfalse.var_72 = _loc3_.next;
            _loc3_.next = null;
         }
         null;
         _loc3_.id = param1;
         _loc3_.var_179 = param2;
         return _loc3_;
      }
      
      public static function method_907(param1:int, param2:int, param3:Boolean) : Hashable2_Boolfalse
      {
         var _loc4_:* = null as Hashable2_Boolfalse;
         var _loc5_:* = null as Hashable2_Boolfalse;
         if(param1 <= param2)
         {
            if(Hashable2_Boolfalse.var_72 == null)
            {
               _loc5_ = new Hashable2_Boolfalse();
            }
            else
            {
               _loc5_ = Hashable2_Boolfalse.var_72;
               Hashable2_Boolfalse.var_72 = _loc5_.next;
               _loc5_.next = null;
            }
            null;
            _loc5_.id = param1;
            _loc5_.var_179 = param2;
            _loc4_ = _loc5_;
            _loc4_.value = param3;
            return _loc4_;
         }
         if(Hashable2_Boolfalse.var_72 == null)
         {
            _loc5_ = new Hashable2_Boolfalse();
         }
         else
         {
            _loc5_ = Hashable2_Boolfalse.var_72;
            Hashable2_Boolfalse.var_72 = _loc5_.next;
            _loc5_.next = null;
         }
         null;
         _loc5_.id = param2;
         _loc5_.var_179 = param1;
         _loc4_ = _loc5_;
         _loc4_.value = param3;
         return _loc4_;
      }
      
      public static function method_755(param1:int, param2:int) : Hashable2_Boolfalse
      {
         var _loc3_:* = null as Hashable2_Boolfalse;
         if(param1 <= param2)
         {
            if(Hashable2_Boolfalse.var_72 == null)
            {
               _loc3_ = new Hashable2_Boolfalse();
            }
            else
            {
               _loc3_ = Hashable2_Boolfalse.var_72;
               Hashable2_Boolfalse.var_72 = _loc3_.next;
               _loc3_.next = null;
            }
            null;
            _loc3_.id = param1;
            _loc3_.var_179 = param2;
            return _loc3_;
         }
         if(Hashable2_Boolfalse.var_72 == null)
         {
            _loc3_ = new Hashable2_Boolfalse();
         }
         else
         {
            _loc3_ = Hashable2_Boolfalse.var_72;
            Hashable2_Boolfalse.var_72 = _loc3_.next;
            _loc3_.next = null;
         }
         null;
         _loc3_.id = param2;
         _loc3_.var_179 = param1;
         return _loc3_;
      }
   }
}
