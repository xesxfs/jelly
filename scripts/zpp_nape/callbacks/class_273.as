package zpp_nape.callbacks
{
   import package_26.class_227;
   import package_34.class_246;
   import package_34.class_332;
   import package_34.class_333;
   import zpp_nape.constraint.ZPP_Constraint;
   import zpp_nape.dynamics.ZPP_Arbiter;
   import zpp_nape.phys.ZPP_Body;
   import zpp_nape.phys.ZPP_Interactor;
   import zpp_nape.space.ZPP_CallbackSet;
   import zpp_nape.space.ZPP_Space;
   import zpp_nape.util.ZNPNode_ZPP_Arbiter;
   import zpp_nape.util.ZPP_ArbiterList;
   
   public final class class_273
   {
      
      public static var var_72:class_273 = null;
       
      
      public var var_174:class_227;
      
      public var space:ZPP_Space;
      
      public var name_40:ZPP_CallbackSet;
      
      public var var_75:class_273;
      
      public var var_807:Boolean;
      
      public var var_680:ZPP_Arbiter;
      
      public var var_554:class_246;
      
      public var var_569:class_332;
      
      public var var_557:class_333;
      
      public var next:class_273;
      
      public var listener:ZPP_Listener;
      
      public var length:int;
      
      public var int2:ZPP_Interactor;
      
      public var int1:ZPP_Interactor;
      
      public var var_1094:int;
      
      public var event:int;
      
      public var name_44:ZPP_Constraint;
      
      public var body:ZPP_Body;
      
      public function class_273()
      {
         name_44 = null;
         body = null;
         var_807 = false;
         var_680 = null;
         var_174 = null;
         name_40 = null;
         int2 = null;
         int1 = null;
         length = 0;
         var_75 = null;
         next = null;
         var_1094 = 0;
         space = null;
         listener = null;
         event = 0;
         var_554 = null;
         var_569 = null;
         var_557 = null;
         length = 0;
      }
      
      public final function method_622() : class_246
      {
         if(var_554 == null)
         {
            var_554 = new class_246();
            var_554.zpp_inner = this;
         }
         if(var_174 == null)
         {
            var_174 = ZPP_ArbiterList.method_65(name_40.name_12,true);
         }
         else
         {
            var_174.zpp_inner.name_4 = name_40.name_12;
         }
         var_174.zpp_inner.var_86 = true;
         var_174.zpp_inner.var_97 = null;
         return var_554;
      }
      
      public final function method_618() : class_332
      {
         if(var_569 == null)
         {
            var_569 = new class_332();
            var_569.zpp_inner = this;
         }
         return var_569;
      }
      
      public final function method_712() : class_333
      {
         if(var_557 == null)
         {
            var_557 = new class_333();
            var_557.zpp_inner = this;
         }
         return var_557;
      }
      
      public final function splice(param1:class_273) : class_273
      {
         var _loc2_:class_273 = param1.next;
         if(param1.var_75 == null)
         {
            next = param1.next;
            if(next != null)
            {
               next.var_75 = null;
            }
            else
            {
               var_75 = null;
            }
         }
         else
         {
            param1.var_75.next = param1.next;
            if(param1.next != null)
            {
               param1.next.var_75 = param1.var_75;
            }
            else
            {
               var_75 = param1.var_75;
            }
         }
         length = length - 1;
         return _loc2_;
      }
      
      public final function method_789() : void
      {
         push_rev(pop_rev());
      }
      
      public final function method_894() : void
      {
         push(pop());
      }
      
      public final function method_917(param1:int) : class_273
      {
         var _loc2_:class_273 = var_75;
         while(true)
         {
            param1--;
            if(param1 == 0)
            {
               break;
            }
            _loc2_ = _loc2_.var_75;
         }
         return _loc2_;
      }
      
      public final function push_rev(param1:class_273) : void
      {
         if(next != null)
         {
            next.var_75 = param1;
         }
         else
         {
            var_75 = param1;
         }
         param1.next = next;
         param1.var_75 = null;
         next = param1;
         length = length + 1;
      }
      
      public final function push(param1:class_273) : void
      {
         if(var_75 != null)
         {
            var_75.next = param1;
         }
         else
         {
            next = param1;
         }
         param1.var_75 = var_75;
         param1.next = null;
         var_75 = param1;
         length = length + 1;
      }
      
      public final function pop_rev() : class_273
      {
         var _loc1_:class_273 = var_75;
         var_75 = _loc1_.var_75;
         if(var_75 == null)
         {
            next = null;
         }
         else
         {
            var_75.next = null;
         }
         length = length - 1;
         return _loc1_;
      }
      
      public final function pop() : class_273
      {
         var _loc1_:class_273 = next;
         next = _loc1_.next;
         if(next == null)
         {
            var_75 = null;
         }
         else
         {
            next.var_75 = null;
         }
         length = length - 1;
         return _loc1_;
      }
      
      public final function empty() : Boolean
      {
         return next == null;
      }
      
      public final function method_906(param1:class_273) : class_273
      {
         if(param1.var_75 == null)
         {
            return var_75;
         }
         return param1.var_75;
      }
      
      public final function method_820(param1:class_273) : class_273
      {
         if(param1.next == null)
         {
            return next;
         }
         return param1.next;
      }
      
      public final function clear() : void
      {
         while(!empty())
         {
            pop();
         }
      }
      
      public final function at(param1:int) : class_273
      {
         var _loc2_:class_273 = next;
         while(true)
         {
            param1--;
            if(param1 == 0)
            {
               break;
            }
            _loc2_ = _loc2_.next;
         }
         return _loc2_;
      }
   }
}
