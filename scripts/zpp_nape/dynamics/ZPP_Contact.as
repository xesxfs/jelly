package zpp_nape.dynamics
{
   import nape.geom.Vec2;
   import package_26.class_329;
   import zpp_nape.geom.ZPP_Vec2;
   import zpp_nape.util.class_219;
   
   public final class ZPP_Contact
   {
      
      public static var var_87:Boolean = false;
      
      public static var var_72:ZPP_Contact = null;
       
      
      public var var_157:Vec2;
      
      public var var_114:int;
      
      public var var_348:Number;
      
      public var var_344:Number;
      
      public var var_76:Boolean;
      
      public var var_300:Boolean;
      
      public var outer:class_329;
      
      public var next:ZPP_Contact;
      
      public var name_2:Boolean;
      
      public var length:int;
      
      public var name_4:ZPP_IContact;
      
      public var hash:int;
      
      public var name_23:Boolean;
      
      public var name_16:Number;
      
      public var var_334:Number;
      
      public var name_20:ZPP_Arbiter;
      
      public var active:Boolean;
      
      public var var_120:Boolean;
      
      public function ZPP_Contact()
      {
         length = 0;
         var_76 = false;
         name_2 = false;
         var_120 = false;
         next = null;
         name_16 = 0;
         var_334 = 0;
         name_23 = false;
         hash = 0;
         var_114 = 0;
         var_300 = false;
         active = false;
         name_4 = null;
         name_20 = null;
         var_157 = null;
         var_348 = 0;
         var_344 = 0;
         outer = null;
         name_4 = new ZPP_IContact();
      }
      
      public static function clear() : void
      {
      }
      
      public final function method_109() : class_329
      {
         if(outer == null)
         {
            ZPP_Contact.var_87 = true;
            outer = new class_329();
            ZPP_Contact.var_87 = false;
            outer.zpp_inner = this;
         }
         return outer;
      }
      
      public final function method_118(param1:ZPP_Contact) : Boolean
      {
         var _loc2_:* = null;
         var _loc3_:ZPP_Contact = next;
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
      
      public final function splice(param1:ZPP_Contact, param2:int) : ZPP_Contact
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
         var _loc3_:* = null as ZPP_Contact;
         var _loc1_:ZPP_Contact = next;
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
      
      public final function remove(param1:ZPP_Contact) : void
      {
         var _loc5_:* = null as ZPP_Contact;
         var _loc6_:* = null as ZPP_Contact;
         var _loc2_:* = null;
         var _loc3_:ZPP_Contact = next;
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
      
      public final function position_validate() : void
      {
         var_157.zpp_inner.x = var_344;
         var_157.zpp_inner.y = var_348;
      }
      
      public final function method_105() : ZPP_Contact
      {
         var _loc1_:ZPP_Contact = next;
         pop();
         return _loc1_;
      }
      
      public final function pop() : void
      {
         var _loc1_:ZPP_Contact = next;
         next = _loc1_.next;
         _loc1_.var_120 = false;
         if(next == null)
         {
            var_76 = true;
         }
         name_2 = true;
         length = length - 1;
      }
      
      public final function iterator_at(param1:int) : ZPP_Contact
      {
         var _loc2_:ZPP_Contact = next;
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
      
      public final function insert(param1:ZPP_Contact, param2:ZPP_Contact) : ZPP_Contact
      {
         param2.var_120 = true;
         var _loc3_:ZPP_Contact = param2;
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
      
      public final function method_846() : Boolean
      {
         return !(!!active && name_20 != null && !!name_20.active);
      }
      
      public final function has(param1:ZPP_Contact) : Boolean
      {
         var _loc4_:* = null as ZPP_Contact;
         var _loc2_:Boolean = false;
         var _loc3_:ZPP_Contact = next;
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
      
      public final function method_123() : void
      {
         var _loc5_:* = null as Vec2;
         var _loc6_:Boolean = false;
         var _loc7_:* = null as ZPP_Vec2;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         if(class_219.poolVec2 == null)
         {
            _loc5_ = new Vec2();
         }
         else
         {
            _loc5_ = class_219.poolVec2;
            class_219.poolVec2 = _loc5_.var_72;
            _loc5_.var_72 = null;
         }
         if(_loc5_.zpp_inner == null)
         {
            _loc6_ = false;
            if(ZPP_Vec2.var_72 == null)
            {
               _loc7_ = new ZPP_Vec2();
            }
            else
            {
               _loc7_ = ZPP_Vec2.var_72;
               ZPP_Vec2.var_72 = _loc7_.next;
               _loc7_.next = null;
            }
            _loc7_.name_5 = false;
            _loc7_.var_109 = _loc6_;
            _loc7_.x = _loc2_;
            _loc7_.y = _loc3_;
            _loc5_.zpp_inner = _loc7_;
            _loc5_.zpp_inner.outer = _loc5_;
         }
         else
         {
            _loc7_ = _loc5_.zpp_inner;
            §§push(false);
            if(_loc7_._validate != null)
            {
               _loc7_._validate();
            }
            if(_loc5_.zpp_inner.x == _loc2_)
            {
               §§pop();
               _loc7_ = _loc5_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               §§push(_loc5_.zpp_inner.y == _loc3_);
            }
            if(!§§pop())
            {
               _loc5_.zpp_inner.x = _loc2_;
               _loc5_.zpp_inner.y = _loc3_;
               _loc7_ = _loc5_.zpp_inner;
               if(_loc7_._invalidate != null)
               {
                  _loc7_._invalidate(_loc7_);
               }
            }
            _loc5_;
         }
         _loc5_.zpp_inner.name_5 = false;
         var_157 = _loc5_;
         var_157.zpp_inner.var_120 = true;
         var_157.zpp_inner.var_109 = true;
         var_157.zpp_inner._validate = position_validate;
      }
      
      public final function erase(param1:ZPP_Contact) : ZPP_Contact
      {
         var _loc2_:* = null as ZPP_Contact;
         var _loc3_:* = null as ZPP_Contact;
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
      
      public final function method_119() : ZPP_Contact
      {
         var _loc1_:ZPP_Contact = next;
         var _loc2_:ZPP_Contact = _loc1_;
         while(_loc2_ != null)
         {
            _loc1_ = _loc2_;
            _loc2_ = _loc2_.next;
         }
         return _loc1_;
      }
      
      public final function at(param1:int) : ZPP_Contact
      {
         var _loc2_:ZPP_Contact = iterator_at(param1);
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         return null;
      }
      
      public final function name_35(param1:ZPP_Contact) : void
      {
         var _loc3_:* = null as ZPP_Contact;
         var _loc2_:ZPP_Contact = param1.next;
         while(_loc2_ != null)
         {
            _loc3_ = _loc2_;
            add(_loc3_);
            _loc2_ = _loc2_.next;
         }
      }
      
      public final function add(param1:ZPP_Contact) : ZPP_Contact
      {
         param1.var_120 = true;
         var _loc2_:ZPP_Contact = param1;
         _loc2_.next = next;
         next = _loc2_;
         name_2 = true;
         length = length + 1;
         return param1;
      }
   }
}
