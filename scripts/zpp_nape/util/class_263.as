package zpp_nape.util
{
   import zpp_nape.geom.ZPP_SimpleEvent;
   
   public final class class_263
   {
      
      public static var var_72:class_263 = null;
       
      
      public var name_9:Function;
      
      public var var_75:class_263;
      
      public var parent:class_263;
      
      public var next:class_263;
      
      public var lt:Function;
      
      public var data:ZPP_SimpleEvent;
      
      public var colour:int;
      
      public function class_263()
      {
         colour = 0;
         parent = null;
         next = null;
         var_75 = null;
         data = null;
         name_9 = null;
         lt = null;
      }
      
      public static function method_237(param1:class_263, param2:Function) : class_263
      {
         param2(param1.data);
         var _loc3_:class_263 = param1.parent;
         if(_loc3_ != null)
         {
            if(param1 == _loc3_.var_75)
            {
               _loc3_.var_75 = null;
            }
            else
            {
               _loc3_.next = null;
            }
            param1.parent = null;
         }
         var _loc4_:class_263 = param1;
         _loc4_.data = null;
         _loc4_.lt = null;
         _loc4_.name_9 = null;
         _loc4_.next = class_263.var_72;
         class_263.var_72 = _loc4_;
         return _loc3_;
      }
      
      public final function method_235() : Boolean
      {
         var _loc1_:* = null as class_263;
         var _loc2_:* = null as ZPP_SimpleEvent;
         var _loc3_:Boolean = false;
         var _loc4_:* = null as class_263;
         var _loc5_:* = null as ZPP_SimpleEvent;
         if(!empty())
         {
            _loc1_ = parent;
            while(_loc1_.var_75 != null)
            {
               _loc1_ = _loc1_.var_75;
            }
            while(_loc1_ != null)
            {
               _loc2_ = _loc1_.data;
               _loc3_ = true;
               if(!empty())
               {
                  _loc4_ = parent;
                  while(_loc4_.var_75 != null)
                  {
                     _loc4_ = _loc4_.var_75;
                  }
                  while(_loc4_ != null)
                  {
                     _loc5_ = _loc4_.data;
                     if(!_loc3_)
                     {
                        if(!lt(_loc2_,_loc5_) && lt(_loc5_,_loc2_))
                        {
                           return false;
                        }
                     }
                     else if(_loc2_ == _loc5_)
                     {
                        _loc3_ = false;
                     }
                     else if(!lt(_loc5_,_loc2_) && lt(_loc2_,_loc5_))
                     {
                        return false;
                     }
                     if(_loc4_.next != null)
                     {
                        _loc4_ = _loc4_.next;
                        while(_loc4_.var_75 != null)
                        {
                           _loc4_ = _loc4_.var_75;
                        }
                     }
                     else
                     {
                        while(_loc4_.parent != null && _loc4_ == _loc4_.parent.next)
                        {
                           _loc4_ = _loc4_.parent;
                        }
                        _loc4_ = _loc4_.parent;
                     }
                  }
               }
               if(_loc1_.next != null)
               {
                  _loc1_ = _loc1_.next;
                  while(_loc1_.var_75 != null)
                  {
                     _loc1_ = _loc1_.var_75;
                  }
               }
               else
               {
                  while(_loc1_.parent != null && _loc1_ == _loc1_.parent.next)
                  {
                     _loc1_ = _loc1_.parent;
                  }
                  _loc1_ = _loc1_.parent;
               }
            }
         }
         return true;
      }
      
      public final function method_189(param1:ZPP_SimpleEvent) : Boolean
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(parent == null)
         {
            if(class_263.var_72 == null)
            {
               _loc2_ = new class_263();
            }
            else
            {
               _loc2_ = class_263.var_72;
               class_263.var_72 = _loc2_.next;
               _loc2_.next = null;
            }
            null;
            _loc2_.data = param1;
            parent = _loc2_;
         }
         else
         {
            _loc3_ = parent;
            while(true)
            {
               if(lt(param1,_loc3_.data))
               {
                  if(_loc3_.var_75 == null)
                  {
                     if(class_263.var_72 == null)
                     {
                        _loc2_ = new class_263();
                     }
                     else
                     {
                        _loc2_ = class_263.var_72;
                        class_263.var_72 = _loc2_.next;
                        _loc2_.next = null;
                     }
                     null;
                     _loc2_.data = param1;
                     _loc3_.var_75 = _loc2_;
                     _loc2_.parent = _loc3_;
                     break;
                  }
                  _loc3_ = _loc3_.var_75;
                  continue;
               }
               if(lt(_loc3_.data,param1))
               {
                  if(_loc3_.next == null)
                  {
                     if(class_263.var_72 == null)
                     {
                        _loc2_ = new class_263();
                     }
                     else
                     {
                        _loc2_ = class_263.var_72;
                        class_263.var_72 = _loc2_.next;
                        _loc2_.next = null;
                     }
                     null;
                     _loc2_.data = param1;
                     _loc3_.next = _loc2_;
                     _loc2_.parent = _loc3_;
                     break;
                  }
                  _loc3_ = _loc3_.next;
                  continue;
               }
               break;
            }
         }
         if(_loc2_ == null)
         {
            return false;
         }
         if(_loc2_.parent == null)
         {
            _loc2_.colour = 1;
         }
         else
         {
            _loc2_.colour = 0;
            if(_loc2_.parent.colour == 0)
            {
               __fix_dbl_red(_loc2_);
            }
         }
         return true;
      }
      
      public final function method_127(param1:ZPP_SimpleEvent) : class_263
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(parent == null)
         {
            if(class_263.var_72 == null)
            {
               _loc2_ = new class_263();
            }
            else
            {
               _loc2_ = class_263.var_72;
               class_263.var_72 = _loc2_.next;
               _loc2_.next = null;
            }
            null;
            _loc2_.data = param1;
            parent = _loc2_;
         }
         else
         {
            _loc3_ = parent;
            while(true)
            {
               if(lt(param1,_loc3_.data))
               {
                  if(_loc3_.var_75 == null)
                  {
                     if(class_263.var_72 == null)
                     {
                        _loc2_ = new class_263();
                     }
                     else
                     {
                        _loc2_ = class_263.var_72;
                        class_263.var_72 = _loc2_.next;
                        _loc2_.next = null;
                     }
                     null;
                     _loc2_.data = param1;
                     _loc3_.var_75 = _loc2_;
                     _loc2_.parent = _loc3_;
                     break;
                  }
                  _loc3_ = _loc3_.var_75;
                  continue;
               }
               if(lt(_loc3_.data,param1))
               {
                  if(_loc3_.next == null)
                  {
                     if(class_263.var_72 == null)
                     {
                        _loc2_ = new class_263();
                     }
                     else
                     {
                        _loc2_ = class_263.var_72;
                        class_263.var_72 = _loc2_.next;
                        _loc2_.next = null;
                     }
                     null;
                     _loc2_.data = param1;
                     _loc3_.next = _loc2_;
                     _loc2_.parent = _loc3_;
                     break;
                  }
                  _loc3_ = _loc3_.next;
                  continue;
               }
               break;
            }
         }
         if(_loc2_ == null)
         {
            return _loc3_;
         }
         if(_loc2_.parent == null)
         {
            _loc2_.colour = 1;
         }
         else
         {
            _loc2_.colour = 0;
            if(_loc2_.parent.colour == 0)
            {
               __fix_dbl_red(_loc2_);
            }
         }
         return _loc2_;
      }
      
      public final function successor_node(param1:class_263) : class_263
      {
         var _loc2_:* = null as class_263;
         if(param1.next != null)
         {
            param1 = param1.next;
            while(param1.var_75 != null)
            {
               param1 = param1.var_75;
            }
         }
         else
         {
            _loc2_ = param1;
            param1 = param1.parent;
            while(param1 != null && param1.var_75 != _loc2_)
            {
               _loc2_ = param1;
               param1 = param1.parent;
            }
         }
         return param1;
      }
      
      public final function method_217(param1:ZPP_SimpleEvent) : ZPP_SimpleEvent
      {
         var _loc2_:class_263 = successor_node(find(param1));
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.data;
      }
      
      public final function size() : int
      {
         var _loc2_:* = null as class_263;
         var _loc3_:* = null as ZPP_SimpleEvent;
         var _loc1_:int = 0;
         if(!empty())
         {
            _loc2_ = parent;
            while(_loc2_.var_75 != null)
            {
               _loc2_ = _loc2_.var_75;
            }
            while(_loc2_ != null)
            {
               _loc3_ = _loc2_.data;
               _loc1_++;
               if(_loc2_.next != null)
               {
                  _loc2_ = _loc2_.next;
                  while(_loc2_.var_75 != null)
                  {
                     _loc2_ = _loc2_.var_75;
                  }
               }
               else
               {
                  while(_loc2_.parent != null && _loc2_ == _loc2_.parent.next)
                  {
                     _loc2_ = _loc2_.parent;
                  }
                  _loc2_ = _loc2_.parent;
               }
            }
         }
         return _loc1_;
      }
      
      public final function singular() : Boolean
      {
         return parent != null && parent.var_75 == null && parent.next == null;
      }
      
      public final function remove_node(param1:class_263) : void
      {
         var _loc2_:* = null as class_263;
         var _loc3_:* = null as ZPP_SimpleEvent;
         var _loc4_:* = null as class_263;
         var _loc5_:* = null as class_263;
         if(param1.next != null && param1.var_75 != null)
         {
            _loc2_ = param1.next;
            while(_loc2_.var_75 != null)
            {
               _loc2_ = _loc2_.var_75;
            }
            _loc3_ = param1.data;
            param1.data = _loc2_.data;
            _loc2_.data = _loc3_;
            if(name_9 != null)
            {
               name_9(param1.data,_loc2_.data);
            }
            param1 = _loc2_;
         }
         if(param1.var_75 == null)
         {
            _loc2_ = param1.next;
         }
         else
         {
            _loc2_ = param1.var_75;
         }
         if(param1.colour == 1)
         {
            if(param1.var_75 != null || param1.next != null)
            {
               _loc2_.colour = 1;
            }
            else if(param1.parent != null)
            {
               _loc4_ = param1.parent;
               while(true)
               {
                  _loc4_.colour = _loc4_.colour + 1;
                  _loc4_.var_75.colour = _loc4_.var_75.colour - 1;
                  _loc4_.next.colour = _loc4_.next.colour - 1;
                  _loc5_ = _loc4_.var_75;
                  if(_loc5_.colour == -1)
                  {
                     __fix_neg_red(_loc5_);
                     break;
                  }
                  if(_loc5_.colour == 0)
                  {
                     if(_loc5_.var_75 != null && _loc5_.var_75.colour == 0)
                     {
                        __fix_dbl_red(_loc5_.var_75);
                        break;
                     }
                     if(_loc5_.next != null && _loc5_.next.colour == 0)
                     {
                        __fix_dbl_red(_loc5_.next);
                        break;
                     }
                  }
                  _loc5_ = _loc4_.next;
                  if(_loc5_.colour == -1)
                  {
                     __fix_neg_red(_loc5_);
                     break;
                  }
                  if(_loc5_.colour == 0)
                  {
                     if(_loc5_.var_75 != null && _loc5_.var_75.colour == 0)
                     {
                        __fix_dbl_red(_loc5_.var_75);
                        break;
                     }
                     if(_loc5_.next != null && _loc5_.next.colour == 0)
                     {
                        __fix_dbl_red(_loc5_.next);
                        break;
                     }
                  }
                  if(_loc4_.colour == 2)
                  {
                     if(_loc4_.parent == null)
                     {
                        _loc4_.colour = 1;
                        break;
                     }
                     _loc4_ = _loc4_.parent;
                     continue;
                  }
                  break;
               }
            }
         }
         _loc4_ = param1.parent;
         if(_loc4_ == null)
         {
            parent = _loc2_;
         }
         else if(_loc4_.var_75 == param1)
         {
            _loc4_.var_75 = _loc2_;
         }
         else
         {
            _loc4_.next = _loc2_;
         }
         if(_loc2_ != null)
         {
            _loc2_.parent = _loc4_;
         }
         _loc4_ = null;
         param1.next = _loc4_;
         _loc4_ = _loc4_;
         param1.var_75 = _loc4_;
         param1.parent = _loc4_;
         _loc4_ = param1;
         _loc4_.data = null;
         _loc4_.lt = null;
         _loc4_.name_9 = null;
         _loc4_.next = class_263.var_72;
         class_263.var_72 = _loc4_;
      }
      
      public final function remove(param1:ZPP_SimpleEvent) : void
      {
         var _loc2_:class_263 = find(param1);
         remove_node(_loc2_);
      }
      
      public final function predecessor_node(param1:class_263) : class_263
      {
         var _loc2_:* = null as class_263;
         if(param1.var_75 != null)
         {
            param1 = param1.var_75;
            while(param1.next != null)
            {
               param1 = param1.next;
            }
         }
         else
         {
            _loc2_ = param1;
            param1 = param1.parent;
            while(param1 != null && param1.next != _loc2_)
            {
               _loc2_ = param1;
               param1 = param1.parent;
            }
         }
         return param1;
      }
      
      public final function method_243(param1:ZPP_SimpleEvent) : ZPP_SimpleEvent
      {
         var _loc2_:class_263 = predecessor_node(find(param1));
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.data;
      }
      
      public final function method_208() : ZPP_SimpleEvent
      {
         var _loc1_:class_263 = parent;
         while(_loc1_.var_75 != null)
         {
            _loc1_ = _loc1_.var_75;
         }
         var _loc2_:ZPP_SimpleEvent = _loc1_.data;
         remove_node(_loc1_);
         return _loc2_;
      }
      
      public final function method_240(param1:ZPP_SimpleEvent) : ZPP_SimpleEvent
      {
         var _loc3_:* = null as class_263;
         var _loc4_:* = null as ZPP_SimpleEvent;
         var _loc2_:* = null;
         if(!empty())
         {
            _loc3_ = parent;
            while(_loc3_.var_75 != null)
            {
               _loc3_ = _loc3_.var_75;
            }
            while(_loc3_ != null)
            {
               _loc4_ = _loc3_.data;
               if(!lt(_loc4_,param1))
               {
                  _loc2_ = _loc4_;
                  break;
               }
               if(_loc3_.next != null)
               {
                  _loc3_ = _loc3_.next;
                  while(_loc3_.var_75 != null)
                  {
                     _loc3_ = _loc3_.var_75;
                  }
               }
               else
               {
                  while(_loc3_.parent != null && _loc3_ == _loc3_.parent.next)
                  {
                     _loc3_ = _loc3_.parent;
                  }
                  _loc3_ = _loc3_.parent;
               }
            }
         }
         return _loc2_;
      }
      
      public final function insert(param1:ZPP_SimpleEvent) : class_263
      {
         var _loc2_:* = null as class_263;
         var _loc3_:* = null as class_263;
         if(class_263.var_72 == null)
         {
            _loc2_ = new class_263();
         }
         else
         {
            _loc2_ = class_263.var_72;
            class_263.var_72 = _loc2_.next;
            _loc2_.next = null;
         }
         null;
         _loc2_.data = param1;
         if(parent == null)
         {
            parent = _loc2_;
         }
         else
         {
            _loc3_ = parent;
            while(true)
            {
               if(lt(_loc2_.data,_loc3_.data))
               {
                  if(_loc3_.var_75 == null)
                  {
                     _loc3_.var_75 = _loc2_;
                     _loc2_.parent = _loc3_;
                     break;
                  }
                  _loc3_ = _loc3_.var_75;
               }
               else
               {
                  if(_loc3_.next == null)
                  {
                     _loc3_.next = _loc2_;
                     _loc2_.parent = _loc3_;
                     break;
                  }
                  _loc3_ = _loc3_.next;
               }
            }
         }
         if(_loc2_.parent == null)
         {
            _loc2_.colour = 1;
         }
         else
         {
            _loc2_.colour = 0;
            if(_loc2_.parent.colour == 0)
            {
               __fix_dbl_red(_loc2_);
            }
         }
         return _loc2_;
      }
      
      public final function method_218(param1:ZPP_SimpleEvent) : Boolean
      {
         return find_weak(param1) != null;
      }
      
      public final function has(param1:ZPP_SimpleEvent) : Boolean
      {
         return find(param1) != null;
      }
      
      public final function name_41() : ZPP_SimpleEvent
      {
         var _loc1_:class_263 = parent;
         while(_loc1_.var_75 != null)
         {
            _loc1_ = _loc1_.var_75;
         }
         return _loc1_.data;
      }
      
      public final function find_weak(param1:ZPP_SimpleEvent) : class_263
      {
         var _loc2_:class_263 = parent;
         while(_loc2_ != null)
         {
            if(lt(param1,_loc2_.data))
            {
               _loc2_ = _loc2_.var_75;
               continue;
            }
            if(lt(_loc2_.data,param1))
            {
               _loc2_ = _loc2_.next;
               continue;
            }
            break;
         }
         return _loc2_;
      }
      
      public final function find(param1:ZPP_SimpleEvent) : class_263
      {
         var _loc2_:class_263 = parent;
         while(_loc2_ != null && _loc2_.data != param1)
         {
            if(lt(param1,_loc2_.data))
            {
               _loc2_ = _loc2_.var_75;
            }
            else
            {
               _loc2_ = _loc2_.next;
            }
         }
         return _loc2_;
      }
      
      public final function empty() : Boolean
      {
         return parent == null;
      }
      
      public final function method_241(param1:Function) : void
      {
         var _loc2_:* = null as class_263;
         var _loc3_:* = null as class_263;
         var _loc4_:* = null as class_263;
         if(parent == null)
         {
            return;
         }
         _loc2_ = parent;
         while(_loc2_ != null)
         {
            if(_loc2_.var_75 != null)
            {
               _loc2_ = _loc2_.var_75;
            }
            else if(_loc2_.next != null)
            {
               _loc2_ = _loc2_.next;
            }
            else
            {
               param1(_loc2_.data);
               _loc3_ = _loc2_.parent;
               if(_loc3_ != null)
               {
                  if(_loc2_ == _loc3_.var_75)
                  {
                     _loc3_.var_75 = null;
                  }
                  else
                  {
                     _loc3_.next = null;
                  }
                  _loc2_.parent = null;
               }
               _loc4_ = _loc2_;
               _loc4_.data = null;
               _loc4_.lt = null;
               _loc4_.name_9 = null;
               _loc4_.next = class_263.var_72;
               class_263.var_72 = _loc4_;
               _loc2_ = _loc3_;
            }
         }
         parent = null;
      }
      
      public final function clear() : void
      {
         var _loc1_:* = null as class_263;
         var _loc2_:* = null as class_263;
         var _loc3_:* = null as class_263;
         if(parent == null)
         {
            null;
         }
         else
         {
            _loc1_ = parent;
            while(_loc1_ != null)
            {
               if(_loc1_.var_75 != null)
               {
                  _loc1_ = _loc1_.var_75;
               }
               else if(_loc1_.next != null)
               {
                  _loc1_ = _loc1_.next;
               }
               else
               {
                  _loc2_ = _loc1_.parent;
                  if(_loc2_ != null)
                  {
                     if(_loc1_ == _loc2_.var_75)
                     {
                        _loc2_.var_75 = null;
                     }
                     else
                     {
                        _loc2_.next = null;
                     }
                     _loc1_.parent = null;
                  }
                  _loc3_ = _loc1_;
                  _loc3_.data = null;
                  _loc3_.lt = null;
                  _loc3_.name_9 = null;
                  _loc3_.next = class_263.var_72;
                  class_263.var_72 = _loc3_;
                  _loc1_ = _loc2_;
               }
            }
            parent = null;
         }
      }
      
      public final function __fix_neg_red(param1:class_263) : void
      {
         var _loc3_:* = null as class_263;
         var _loc4_:* = null as class_263;
         var _loc5_:* = null as class_263;
         var _loc6_:* = null as class_263;
         var _loc7_:* = null as class_263;
         var _loc8_:int = 0;
         var _loc9_:* = null as ZPP_SimpleEvent;
         var _loc2_:class_263 = param1.parent;
         if(_loc2_.var_75 == param1)
         {
            _loc4_ = param1.var_75;
            _loc5_ = param1.next;
            _loc6_ = _loc5_.var_75;
            _loc7_ = _loc5_.next;
            _loc4_.colour = 0;
            _loc8_ = 1;
            _loc2_.colour = _loc8_;
            param1.colour = _loc8_;
            param1.next = _loc6_;
            if(_loc6_ != null)
            {
               _loc6_.parent = param1;
            }
            _loc9_ = _loc2_.data;
            _loc2_.data = _loc5_.data;
            _loc5_.data = _loc9_;
            if(name_9 != null)
            {
               name_9(_loc2_.data,_loc5_.data);
            }
            _loc5_.var_75 = _loc7_;
            if(_loc7_ != null)
            {
               _loc7_.parent = _loc5_;
            }
            _loc5_.next = _loc2_.next;
            if(_loc2_.next != null)
            {
               _loc2_.next.parent = _loc5_;
            }
            _loc2_.next = _loc5_;
            if(_loc5_ != null)
            {
               _loc5_.parent = _loc2_;
            }
            _loc3_ = _loc4_;
         }
         else
         {
            _loc4_ = param1.next;
            _loc5_ = param1.var_75;
            _loc6_ = _loc5_.next;
            _loc7_ = _loc5_.var_75;
            _loc4_.colour = 0;
            _loc8_ = 1;
            _loc2_.colour = _loc8_;
            param1.colour = _loc8_;
            param1.var_75 = _loc6_;
            if(_loc6_ != null)
            {
               _loc6_.parent = param1;
            }
            _loc9_ = _loc2_.data;
            _loc2_.data = _loc5_.data;
            _loc5_.data = _loc9_;
            if(name_9 != null)
            {
               name_9(_loc2_.data,_loc5_.data);
            }
            _loc5_.next = _loc7_;
            if(_loc7_ != null)
            {
               _loc7_.parent = _loc5_;
            }
            _loc5_.var_75 = _loc2_.var_75;
            if(_loc2_.var_75 != null)
            {
               _loc2_.var_75.parent = _loc5_;
            }
            _loc2_.var_75 = _loc5_;
            if(_loc5_ != null)
            {
               _loc5_.parent = _loc2_;
            }
            _loc3_ = _loc4_;
         }
         if(_loc3_.var_75 != null && _loc3_.var_75.colour == 0)
         {
            __fix_dbl_red(_loc3_.var_75);
         }
         else if(_loc3_.next != null && _loc3_.next.colour == 0)
         {
            __fix_dbl_red(_loc3_.next);
         }
      }
      
      public final function __fix_dbl_red(param1:class_263) : void
      {
         var _loc2_:* = null as class_263;
         var _loc3_:* = null as class_263;
         var _loc4_:* = null as class_263;
         var _loc5_:* = null as class_263;
         var _loc6_:* = null as class_263;
         var _loc7_:* = null as class_263;
         var _loc8_:* = null as class_263;
         var _loc9_:* = null as class_263;
         var _loc10_:* = null as class_263;
         var _loc11_:* = null as class_263;
         while(true)
         {
            _loc2_ = param1.parent;
            _loc3_ = _loc2_.parent;
            if(_loc3_ == null)
            {
               _loc2_.colour = 1;
               break;
            }
            if(_loc2_ == _loc3_.var_75)
            {
               _loc6_ = _loc3_;
               _loc10_ = _loc3_.next;
               if(param1 == _loc2_.var_75)
               {
                  _loc4_ = param1;
                  _loc5_ = _loc2_;
                  _loc7_ = param1.var_75;
                  _loc8_ = param1.next;
                  _loc9_ = _loc2_.next;
               }
               else
               {
                  _loc4_ = _loc2_;
                  _loc5_ = param1;
                  _loc7_ = _loc2_.var_75;
                  _loc8_ = param1.var_75;
                  _loc9_ = param1.next;
               }
            }
            else
            {
               _loc4_ = _loc3_;
               _loc7_ = _loc3_.var_75;
               if(param1 == _loc2_.var_75)
               {
                  _loc5_ = param1;
                  _loc6_ = _loc2_;
                  _loc8_ = param1.var_75;
                  _loc9_ = param1.next;
                  _loc10_ = _loc2_.next;
               }
               else
               {
                  _loc5_ = _loc2_;
                  _loc6_ = param1;
                  _loc8_ = _loc2_.var_75;
                  _loc9_ = param1.var_75;
                  _loc10_ = param1.next;
               }
            }
            _loc11_ = _loc3_.parent;
            if(_loc11_ == null)
            {
               parent = _loc5_;
            }
            else if(_loc11_.var_75 == _loc3_)
            {
               _loc11_.var_75 = _loc5_;
            }
            else
            {
               _loc11_.next = _loc5_;
            }
            if(_loc5_ != null)
            {
               _loc5_.parent = _loc11_;
            }
            _loc4_.var_75 = _loc7_;
            if(_loc7_ != null)
            {
               _loc7_.parent = _loc4_;
            }
            _loc4_.next = _loc8_;
            if(_loc8_ != null)
            {
               _loc8_.parent = _loc4_;
            }
            _loc5_.var_75 = _loc4_;
            if(_loc4_ != null)
            {
               _loc4_.parent = _loc5_;
            }
            _loc5_.next = _loc6_;
            if(_loc6_ != null)
            {
               _loc6_.parent = _loc5_;
            }
            _loc6_.var_75 = _loc9_;
            if(_loc9_ != null)
            {
               _loc9_.parent = _loc6_;
            }
            _loc6_.next = _loc10_;
            if(_loc10_ != null)
            {
               _loc10_.parent = _loc6_;
            }
            _loc5_.colour = _loc3_.colour - 1;
            _loc4_.colour = 1;
            _loc6_.colour = 1;
            if(_loc5_ == parent)
            {
               parent.colour = 1;
               break;
            }
            if(_loc5_.colour == 0 && _loc5_.parent.colour == 0)
            {
               param1 = _loc5_;
               continue;
            }
            break;
         }
      }
   }
}
