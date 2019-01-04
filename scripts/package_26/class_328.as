package package_26
{
   import zpp_nape.dynamics.ZPP_Contact;
   import zpp_nape.util.ZPP_ContactList;
   
   public final class class_328
   {
       
      
      public var zpp_inner:ZPP_ContactList;
      
      public function class_328()
      {
         zpp_inner = null;
         zpp_inner = new ZPP_ContactList();
         zpp_inner.outer = this;
      }
      
      public static function method_143(param1:Array) : class_328
      {
         var _loc4_:* = null as class_329;
         var _loc2_:class_328 = new class_328();
         var _loc3_:int = 0;
         while(_loc3_ < int(param1.length))
         {
            _loc4_ = param1[_loc3_];
            _loc3_++;
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      public static function method_147(param1:Vector.<class_329>) : class_328
      {
         var _loc4_:* = null as class_329;
         var _loc2_:class_328 = new class_328();
         var _loc3_:int = 0;
         while(_loc3_ < int(param1.length))
         {
            _loc4_ = param1[_loc3_];
            _loc3_++;
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      public final function unshift(param1:class_329) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:* = null as ZPP_Contact;
         var _loc4_:* = null as ZPP_Contact;
         zpp_inner;
         ZPP_ContactList.method_107();
         zpp_inner.method_104();
         if(zpp_inner.var_130 != null)
         {
            _loc2_ = zpp_inner.var_130(param1);
         }
         else
         {
            _loc2_ = true;
         }
         if(_loc2_)
         {
            if(zpp_inner.var_111)
            {
               if(zpp_inner.var_101 == null)
               {
                  zpp_inner.method_104();
                  if(zpp_inner.var_86)
                  {
                     zpp_inner.var_86 = false;
                     zpp_inner.var_89 = 0;
                     _loc3_ = zpp_inner.name_4.next;
                     while(_loc3_ != null)
                     {
                        _loc4_ = _loc3_;
                        if(!!_loc4_.active && _loc4_.name_20.active)
                        {
                           zpp_inner.var_89 = zpp_inner.var_89 + 1;
                        }
                        _loc3_ = _loc3_.next;
                     }
                  }
                  if(zpp_inner.var_89 == 0)
                  {
                     zpp_inner.var_101 = null;
                  }
                  else
                  {
                     zpp_inner.method_104();
                     §§push(zpp_inner);
                     §§push(zpp_inner.name_4);
                     if(zpp_inner.var_86)
                     {
                        zpp_inner.var_86 = false;
                        zpp_inner.var_89 = 0;
                        _loc3_ = zpp_inner.name_4.next;
                        while(_loc3_ != null)
                        {
                           _loc4_ = _loc3_;
                           if(!!_loc4_.active && _loc4_.name_20.active)
                           {
                              zpp_inner.var_89 = zpp_inner.var_89 + 1;
                           }
                           _loc3_ = _loc3_.next;
                        }
                     }
                     §§pop().var_101 = §§pop().iterator_at(zpp_inner.var_89 - 1);
                  }
               }
               zpp_inner.var_101 = zpp_inner.name_4.insert(zpp_inner.var_101,param1.zpp_inner);
            }
            else
            {
               zpp_inner.name_4.add(param1.zpp_inner);
            }
            zpp_inner.invalidate();
            if(zpp_inner.var_137 != null)
            {
               zpp_inner.var_137(param1);
            }
         }
         return _loc2_;
      }
      
      public final function toString() : String
      {
         var _loc4_:* = null as class_329;
         var _loc5_:int = 0;
         var _loc6_:* = null as class_328;
         var _loc7_:* = null as ZPP_Contact;
         var _loc8_:* = null as ZPP_Contact;
         zpp_inner.method_104();
         var _loc3_:class_266 = class_266.method_65(this);
         _loc3_.zpp_inner.zpp_inner.method_104();
         _loc6_ = _loc3_.zpp_inner;
         _loc6_.zpp_inner.method_104();
         if(_loc6_.zpp_inner.var_86)
         {
            _loc6_.zpp_inner.var_86 = false;
            _loc6_.zpp_inner.var_89 = 0;
            _loc7_ = _loc6_.zpp_inner.name_4.next;
            while(_loc7_ != null)
            {
               _loc8_ = _loc7_;
               if(!!_loc8_.active && _loc8_.name_20.active)
               {
                  _loc6_.zpp_inner.var_89 = _loc6_.zpp_inner.var_89 + 1;
               }
               _loc7_ = _loc7_.next;
            }
         }
         _loc5_ = _loc6_.zpp_inner.var_89;
         _loc3_.var_98 = true;
         if(_loc3_.var_90 < _loc5_)
         {
            §§push(true);
         }
         else
         {
            _loc3_.var_106 = class_266.var_72;
            class_266.var_72 = _loc3_;
            _loc3_.zpp_inner = null;
            §§push(false);
         }
         return "[]";
      }
      
      public final function shift() : class_329
      {
         var _loc2_:* = null as ZPP_Contact;
         var _loc3_:* = null as ZPP_Contact;
         var _loc4_:* = null as ZPP_Contact;
         var _loc5_:* = null as class_329;
         zpp_inner;
         ZPP_ContactList.method_107();
         zpp_inner.method_104();
         var _loc1_:* = null;
         if(zpp_inner.var_111)
         {
            if(zpp_inner.var_97 != null && zpp_inner.var_97.next == null)
            {
               zpp_inner.var_97 = null;
            }
            zpp_inner.method_104();
            if(zpp_inner.var_86)
            {
               zpp_inner.var_86 = false;
               zpp_inner.var_89 = 0;
               _loc3_ = zpp_inner.name_4.next;
               while(_loc3_ != null)
               {
                  _loc4_ = _loc3_;
                  if(!!_loc4_.active && _loc4_.name_20.active)
                  {
                     zpp_inner.var_89 = zpp_inner.var_89 + 1;
                  }
                  _loc3_ = _loc3_.next;
               }
            }
            if(zpp_inner.var_89 == 1)
            {
               _loc2_ = null;
            }
            else
            {
               zpp_inner.method_104();
               §§push(zpp_inner.name_4);
               if(zpp_inner.var_86)
               {
                  zpp_inner.var_86 = false;
                  zpp_inner.var_89 = 0;
                  _loc3_ = zpp_inner.name_4.next;
                  while(_loc3_ != null)
                  {
                     _loc4_ = _loc3_;
                     if(!!_loc4_.active && _loc4_.name_20.active)
                     {
                        zpp_inner.var_89 = zpp_inner.var_89 + 1;
                     }
                     _loc3_ = _loc3_.next;
                  }
               }
               _loc2_ = §§pop().iterator_at(zpp_inner.var_89 - 2);
            }
            if(_loc2_ == null)
            {
               _loc1_ = zpp_inner.name_4.next;
            }
            else
            {
               _loc1_ = _loc2_.next;
            }
            _loc5_ = _loc1_.method_109();
            if(zpp_inner.var_110 != null)
            {
               zpp_inner.var_110(_loc5_);
            }
            if(!zpp_inner.var_126)
            {
               zpp_inner.name_4.erase(_loc2_);
            }
         }
         else
         {
            _loc1_ = zpp_inner.name_4.next;
            _loc5_ = _loc1_.method_109();
            if(zpp_inner.var_110 != null)
            {
               zpp_inner.var_110(_loc5_);
            }
            if(!zpp_inner.var_126)
            {
               zpp_inner.name_4.pop();
            }
         }
         zpp_inner.invalidate();
         _loc5_ = _loc1_.method_109();
         return _loc5_;
      }
      
      public final function remove(param1:class_329) : Boolean
      {
         var _loc4_:* = null as ZPP_Contact;
         zpp_inner;
         ZPP_ContactList.method_107();
         zpp_inner.method_104();
         var _loc2_:Boolean = false;
         var _loc3_:ZPP_Contact = zpp_inner.name_4.next;
         while(_loc3_ != null)
         {
            _loc4_ = _loc3_;
            if(_loc4_ == param1.zpp_inner)
            {
               _loc2_ = true;
               break;
            }
            _loc3_ = _loc3_.next;
         }
         if(_loc2_)
         {
            if(zpp_inner.var_110 != null)
            {
               zpp_inner.var_110(param1);
            }
            if(!zpp_inner.var_126)
            {
               zpp_inner.name_4.remove(param1.zpp_inner);
            }
            zpp_inner.invalidate();
         }
         return _loc2_;
      }
      
      public final function push(param1:class_329) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:* = null as ZPP_Contact;
         var _loc4_:* = null as ZPP_Contact;
         zpp_inner;
         ZPP_ContactList.method_107();
         zpp_inner.method_104();
         if(zpp_inner.var_130 != null)
         {
            _loc2_ = zpp_inner.var_130(param1);
         }
         else
         {
            _loc2_ = true;
         }
         if(_loc2_)
         {
            if(zpp_inner.var_111)
            {
               zpp_inner.name_4.add(param1.zpp_inner);
            }
            else
            {
               if(zpp_inner.var_101 == null)
               {
                  zpp_inner.method_104();
                  if(zpp_inner.var_86)
                  {
                     zpp_inner.var_86 = false;
                     zpp_inner.var_89 = 0;
                     _loc3_ = zpp_inner.name_4.next;
                     while(_loc3_ != null)
                     {
                        _loc4_ = _loc3_;
                        if(!!_loc4_.active && _loc4_.name_20.active)
                        {
                           zpp_inner.var_89 = zpp_inner.var_89 + 1;
                        }
                        _loc3_ = _loc3_.next;
                     }
                  }
                  if(zpp_inner.var_89 == 0)
                  {
                     zpp_inner.var_101 = null;
                  }
                  else
                  {
                     zpp_inner.method_104();
                     §§push(zpp_inner);
                     §§push(zpp_inner.name_4);
                     if(zpp_inner.var_86)
                     {
                        zpp_inner.var_86 = false;
                        zpp_inner.var_89 = 0;
                        _loc3_ = zpp_inner.name_4.next;
                        while(_loc3_ != null)
                        {
                           _loc4_ = _loc3_;
                           if(!!_loc4_.active && _loc4_.name_20.active)
                           {
                              zpp_inner.var_89 = zpp_inner.var_89 + 1;
                           }
                           _loc3_ = _loc3_.next;
                        }
                     }
                     §§pop().var_101 = §§pop().iterator_at(zpp_inner.var_89 - 1);
                  }
               }
               zpp_inner.var_101 = zpp_inner.name_4.insert(zpp_inner.var_101,param1.zpp_inner);
            }
            zpp_inner.invalidate();
            if(zpp_inner.var_137 != null)
            {
               zpp_inner.var_137(param1);
            }
         }
         return _loc2_;
      }
      
      public final function pop() : class_329
      {
         var _loc2_:* = null as class_329;
         var _loc3_:* = null as ZPP_Contact;
         var _loc4_:* = null as ZPP_Contact;
         var _loc5_:* = null as ZPP_Contact;
         zpp_inner;
         ZPP_ContactList.method_107();
         zpp_inner.method_104();
         var _loc1_:* = null;
         if(zpp_inner.var_111)
         {
            _loc1_ = zpp_inner.name_4.next;
            _loc2_ = _loc1_.method_109();
            if(zpp_inner.var_110 != null)
            {
               zpp_inner.var_110(_loc2_);
            }
            if(!zpp_inner.var_126)
            {
               zpp_inner.name_4.pop();
            }
         }
         else
         {
            if(zpp_inner.var_97 != null && zpp_inner.var_97.next == null)
            {
               zpp_inner.var_97 = null;
            }
            zpp_inner.method_104();
            if(zpp_inner.var_86)
            {
               zpp_inner.var_86 = false;
               zpp_inner.var_89 = 0;
               _loc4_ = zpp_inner.name_4.next;
               while(_loc4_ != null)
               {
                  _loc5_ = _loc4_;
                  if(!!_loc5_.active && _loc5_.name_20.active)
                  {
                     zpp_inner.var_89 = zpp_inner.var_89 + 1;
                  }
                  _loc4_ = _loc4_.next;
               }
            }
            if(zpp_inner.var_89 == 1)
            {
               _loc3_ = null;
            }
            else
            {
               zpp_inner.method_104();
               §§push(zpp_inner.name_4);
               if(zpp_inner.var_86)
               {
                  zpp_inner.var_86 = false;
                  zpp_inner.var_89 = 0;
                  _loc4_ = zpp_inner.name_4.next;
                  while(_loc4_ != null)
                  {
                     _loc5_ = _loc4_;
                     if(!!_loc5_.active && _loc5_.name_20.active)
                     {
                        zpp_inner.var_89 = zpp_inner.var_89 + 1;
                     }
                     _loc4_ = _loc4_.next;
                  }
               }
               _loc3_ = §§pop().iterator_at(zpp_inner.var_89 - 2);
            }
            if(_loc3_ == null)
            {
               _loc1_ = zpp_inner.name_4.next;
            }
            else
            {
               _loc1_ = _loc3_.next;
            }
            _loc2_ = _loc1_.method_109();
            if(zpp_inner.var_110 != null)
            {
               zpp_inner.var_110(_loc2_);
            }
            if(!zpp_inner.var_126)
            {
               zpp_inner.name_4.erase(_loc3_);
            }
         }
         zpp_inner.invalidate();
         _loc2_ = _loc1_.method_109();
         return _loc2_;
      }
      
      public final function method_150(param1:class_328) : void
      {
         var _loc3_:* = null as class_329;
         var _loc4_:int = 0;
         var _loc5_:* = null as class_328;
         var _loc6_:* = null as ZPP_Contact;
         var _loc7_:* = null as ZPP_Contact;
         param1.zpp_inner.method_104();
         var _loc2_:class_266 = class_266.method_65(param1);
         _loc2_.zpp_inner.zpp_inner.method_104();
         _loc5_ = _loc2_.zpp_inner;
         _loc5_.zpp_inner.method_104();
         if(_loc5_.zpp_inner.var_86)
         {
            _loc5_.zpp_inner.var_86 = false;
            _loc5_.zpp_inner.var_89 = 0;
            _loc6_ = _loc5_.zpp_inner.name_4.next;
            while(_loc6_ != null)
            {
               _loc7_ = _loc6_;
               if(!!_loc7_.active && _loc7_.name_20.active)
               {
                  _loc5_.zpp_inner.var_89 = _loc5_.zpp_inner.var_89 + 1;
               }
               _loc6_ = _loc6_.next;
            }
         }
         _loc4_ = _loc5_.zpp_inner.var_89;
         _loc2_.var_98 = true;
         if(_loc2_.var_90 < _loc4_)
         {
            §§push(true);
         }
         else
         {
            _loc2_.var_106 = class_266.var_72;
            class_266.var_72 = _loc2_;
            _loc2_.zpp_inner = null;
            §§push(false);
         }
      }
      
      public final function iterator() : class_266
      {
         zpp_inner.method_104();
         return class_266.method_65(this);
      }
      
      public final function has(param1:class_329) : Boolean
      {
         zpp_inner.method_104();
         return Boolean(zpp_inner.name_4.has(param1.zpp_inner));
      }
      
      public function get length() : int
      {
         var _loc1_:* = null as ZPP_Contact;
         var _loc2_:* = null as ZPP_Contact;
         zpp_inner.method_104();
         if(zpp_inner.var_86)
         {
            zpp_inner.var_86 = false;
            zpp_inner.var_89 = 0;
            _loc1_ = zpp_inner.name_4.next;
            while(_loc1_ != null)
            {
               _loc2_ = _loc1_;
               if(!!_loc2_.active && _loc2_.name_20.active)
               {
                  zpp_inner.var_89 = zpp_inner.var_89 + 1;
               }
               _loc1_ = _loc1_.next;
            }
         }
         return zpp_inner.var_89;
      }
      
      public final function method_145(param1:Function) : class_328
      {
         var _loc4_:int = 0;
         var _loc6_:* = null as class_328;
         var _loc7_:* = null as ZPP_Contact;
         var _loc8_:* = null as ZPP_Contact;
         zpp_inner.method_104();
         var _loc3_:class_266 = class_266.method_65(this);
         _loc3_.zpp_inner.zpp_inner.method_104();
         _loc6_ = _loc3_.zpp_inner;
         _loc6_.zpp_inner.method_104();
         if(_loc6_.zpp_inner.var_86)
         {
            _loc6_.zpp_inner.var_86 = false;
            _loc6_.zpp_inner.var_89 = 0;
            _loc7_ = _loc6_.zpp_inner.name_4.next;
            while(_loc7_ != null)
            {
               _loc8_ = _loc7_;
               if(!!_loc8_.active && _loc8_.name_20.active)
               {
                  _loc6_.zpp_inner.var_89 = _loc6_.zpp_inner.var_89 + 1;
               }
               _loc7_ = _loc7_.next;
            }
         }
         _loc4_ = _loc6_.zpp_inner.var_89;
         _loc3_.var_98 = true;
         if(_loc3_.var_90 < _loc4_)
         {
            §§push(true);
         }
         else
         {
            _loc3_.var_106 = class_266.var_72;
            class_266.var_72 = _loc3_;
            _loc3_.zpp_inner = null;
            §§push(false);
         }
         return this;
      }
      
      public final function filter(param1:Function) : class_328
      {
         var _loc4_:* = null as class_329;
         var _loc6_:* = null as ZPP_Contact;
         var _loc7_:* = null as ZPP_Contact;
         var _loc3_:int = 0;
      }
      
      public final function empty() : Boolean
      {
         var _loc1_:* = null as ZPP_Contact;
         var _loc2_:* = null as ZPP_Contact;
         zpp_inner.method_104();
         if(zpp_inner.var_86)
         {
            zpp_inner.var_86 = false;
            zpp_inner.var_89 = 0;
            _loc1_ = zpp_inner.name_4.next;
            while(_loc1_ != null)
            {
               _loc2_ = _loc1_;
               if(!!_loc2_.active && _loc2_.name_20.active)
               {
                  zpp_inner.var_89 = zpp_inner.var_89 + 1;
               }
               _loc1_ = _loc1_.next;
            }
         }
         return zpp_inner.var_89 == 0;
      }
      
      public final function copy(param1:Boolean = false) : class_328
      {
         var _loc4_:* = null as class_329;
         var _loc5_:int = 0;
         var _loc6_:* = null as class_328;
         var _loc7_:* = null as ZPP_Contact;
         var _loc8_:* = null as ZPP_Contact;
         var _loc2_:class_328 = new class_328();
         zpp_inner.method_104();
         var _loc3_:class_266 = class_266.method_65(this);
         _loc3_.zpp_inner.zpp_inner.method_104();
         _loc6_ = _loc3_.zpp_inner;
         _loc6_.zpp_inner.method_104();
         if(_loc6_.zpp_inner.var_86)
         {
            _loc6_.zpp_inner.var_86 = false;
            _loc6_.zpp_inner.var_89 = 0;
            _loc7_ = _loc6_.zpp_inner.name_4.next;
            while(_loc7_ != null)
            {
               _loc8_ = _loc7_;
               if(!!_loc8_.active && _loc8_.name_20.active)
               {
                  _loc6_.zpp_inner.var_89 = _loc6_.zpp_inner.var_89 + 1;
               }
               _loc7_ = _loc7_.next;
            }
         }
         _loc5_ = _loc6_.zpp_inner.var_89;
         _loc3_.var_98 = true;
         if(_loc3_.var_90 < _loc5_)
         {
            §§push(true);
         }
         else
         {
            _loc3_.var_106 = class_266.var_72;
            class_266.var_72 = _loc3_;
            _loc3_.zpp_inner = null;
            §§push(false);
         }
         return _loc2_;
      }
      
      public final function clear() : void
      {
         var _loc1_:* = null as ZPP_Contact;
         var _loc2_:* = null as ZPP_Contact;
         if(zpp_inner.var_111)
         {
            while(true)
            {
               zpp_inner.method_104();
               if(zpp_inner.var_86)
               {
                  zpp_inner.var_86 = false;
                  zpp_inner.var_89 = 0;
                  _loc1_ = zpp_inner.name_4.next;
                  while(_loc1_ != null)
                  {
                     _loc2_ = _loc1_;
                     if(!!_loc2_.active && _loc2_.name_20.active)
                     {
                        zpp_inner.var_89 = zpp_inner.var_89 + 1;
                     }
                     _loc1_ = _loc1_.next;
                  }
               }
               if(zpp_inner.var_89 == 0)
               {
                  break;
               }
               pop();
            }
         }
         else
         {
            while(true)
            {
               zpp_inner.method_104();
               if(zpp_inner.var_86)
               {
                  zpp_inner.var_86 = false;
                  zpp_inner.var_89 = 0;
                  _loc1_ = zpp_inner.name_4.next;
                  while(_loc1_ != null)
                  {
                     _loc2_ = _loc1_;
                     if(!!_loc2_.active && _loc2_.name_20.active)
                     {
                        zpp_inner.var_89 = zpp_inner.var_89 + 1;
                     }
                     _loc1_ = _loc1_.next;
                  }
               }
               if(zpp_inner.var_89 == 0)
               {
                  break;
               }
               shift();
            }
         }
      }
      
      public final function at(param1:int) : class_329
      {
         var _loc2_:* = null as ZPP_Contact;
         var _loc3_:* = null as ZPP_Contact;
         zpp_inner.method_104();
         if(zpp_inner.var_111)
         {
            zpp_inner.method_104();
            if(zpp_inner.var_86)
            {
               zpp_inner.var_86 = false;
               zpp_inner.var_89 = 0;
               _loc2_ = zpp_inner.name_4.next;
               while(_loc2_ != null)
               {
                  _loc3_ = _loc2_;
                  if(!!_loc3_.active && _loc3_.name_20.active)
                  {
                     zpp_inner.var_89 = zpp_inner.var_89 + 1;
                  }
                  _loc2_ = _loc2_.next;
               }
            }
            param1 = zpp_inner.var_89 - 1 - param1;
         }
         if(param1 < zpp_inner.var_124 || zpp_inner.var_97 == null)
         {
            zpp_inner.var_124 = 0;
            zpp_inner.var_97 = zpp_inner.name_4.next;
            while(true)
            {
               _loc2_ = zpp_inner.var_97;
               if(!!_loc2_.active && _loc2_.name_20.active)
               {
                  break;
               }
               zpp_inner.var_97 = zpp_inner.var_97.next;
            }
         }
         while(zpp_inner.var_124 != param1)
         {
            zpp_inner.var_124 = zpp_inner.var_124 + 1;
            zpp_inner.var_97 = zpp_inner.var_97.next;
            while(true)
            {
               _loc2_ = zpp_inner.var_97;
               if(!!_loc2_.active && _loc2_.name_20.active)
               {
                  break;
               }
               zpp_inner.var_97 = zpp_inner.var_97.next;
            }
         }
         return zpp_inner.var_97.method_109();
      }
      
      public final function add(param1:class_329) : Boolean
      {
         if(zpp_inner.var_111)
         {
            return Boolean(push(param1));
         }
         return Boolean(unshift(param1));
      }
   }
}
