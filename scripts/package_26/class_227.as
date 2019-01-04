package package_26
{
   import zpp_nape.dynamics.ZPP_Arbiter;
   import zpp_nape.util.ZNPNode_ZPP_Arbiter;
   import zpp_nape.util.ZPP_ArbiterList;
   
   public class class_227
   {
       
      
      public var zpp_inner:ZPP_ArbiterList;
      
      public function class_227()
      {
         zpp_inner = null;
         zpp_inner = new ZPP_ArbiterList();
         zpp_inner.outer = this;
      }
      
      public static function method_143(param1:Array) : class_227
      {
         var _loc4_:* = null as class_252;
         var _loc2_:class_227 = new class_227();
         var _loc3_:int = 0;
         while(_loc3_ < int(param1.length))
         {
            _loc4_ = param1[_loc3_];
            _loc3_++;
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      public static function method_147(param1:Vector.<class_252>) : class_227
      {
         var _loc4_:* = null as class_252;
         var _loc2_:class_227 = new class_227();
         var _loc3_:int = 0;
         while(_loc3_ < int(param1.length))
         {
            _loc4_ = param1[_loc3_];
            _loc3_++;
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      public function method_114() : void
      {
         zpp_inner.method_104();
      }
      
      public function method_108() : int
      {
         var _loc1_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc2_:* = null as ZPP_Arbiter;
         zpp_inner.method_104();
         if(zpp_inner.var_86)
         {
            zpp_inner.var_86 = false;
            zpp_inner.var_89 = 0;
            _loc1_ = zpp_inner.name_4.var_73;
            while(_loc1_ != null)
            {
               _loc2_ = _loc1_.var_74;
               if(_loc2_.active)
               {
                  zpp_inner.var_89 = zpp_inner.var_89 + 1;
               }
               _loc1_ = _loc1_.next;
            }
         }
         return zpp_inner.var_89;
      }
      
      public function unshift(param1:class_252) : Boolean
      {
         var _loc2_:Boolean = false;
         zpp_inner;
         ZPP_ArbiterList.method_107();
         method_114();
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
                  if(empty())
                  {
                     zpp_inner.var_101 = null;
                  }
                  else
                  {
                     zpp_inner.var_101 = zpp_inner.name_4.iterator_at(int(method_108()) - 1);
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
         var _loc4_:* = null as class_252;
         var _loc5_:int = 0;
         var _loc3_:class_251 = iterator();
         _loc3_.zpp_inner.zpp_inner.method_104();
         _loc5_ = _loc3_.zpp_inner.method_108();
         _loc3_.var_98 = true;
         if(_loc3_.var_90 < _loc5_)
         {
            §§push(true);
         }
         else
         {
            _loc3_.var_106 = class_251.var_72;
            class_251.var_72 = _loc3_;
            _loc3_.zpp_inner = null;
            §§push(false);
         }
         return "[]";
      }
      
      public function shift() : class_252
      {
         var _loc2_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc3_:* = null as class_252;
         zpp_inner;
         ZPP_ArbiterList.method_107();
         method_114();
         var _loc1_:* = null;
         if(zpp_inner.var_111)
         {
            if(zpp_inner.var_97 != null && zpp_inner.var_97.next == null)
            {
               zpp_inner.var_97 = null;
            }
            if(int(method_108()) == 1)
            {
               _loc2_ = null;
            }
            else
            {
               _loc2_ = zpp_inner.name_4.iterator_at(int(method_108()) - 2);
            }
            if(_loc2_ == null)
            {
               _loc1_ = zpp_inner.name_4.var_73.var_74;
            }
            else
            {
               _loc1_ = _loc2_.next.var_74;
            }
            _loc3_ = _loc1_.method_109();
            if(zpp_inner.var_110 != null)
            {
               zpp_inner.var_110(_loc3_);
            }
            if(!zpp_inner.var_126)
            {
               zpp_inner.name_4.erase(_loc2_);
            }
         }
         else
         {
            _loc1_ = zpp_inner.name_4.var_73.var_74;
            _loc3_ = _loc1_.method_109();
            if(zpp_inner.var_110 != null)
            {
               zpp_inner.var_110(_loc3_);
            }
            if(!zpp_inner.var_126)
            {
               zpp_inner.name_4.pop();
            }
         }
         zpp_inner.invalidate();
         _loc3_ = _loc1_.method_109();
         return _loc3_;
      }
      
      public function remove(param1:class_252) : Boolean
      {
         var _loc4_:* = null as ZPP_Arbiter;
         zpp_inner;
         ZPP_ArbiterList.method_107();
         method_114();
         var _loc2_:Boolean = false;
         var _loc3_:ZNPNode_ZPP_Arbiter = zpp_inner.name_4.var_73;
         while(_loc3_ != null)
         {
            _loc4_ = _loc3_.var_74;
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
      
      public function push(param1:class_252) : Boolean
      {
         var _loc2_:Boolean = false;
         zpp_inner;
         ZPP_ArbiterList.method_107();
         method_114();
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
                  if(empty())
                  {
                     zpp_inner.var_101 = null;
                  }
                  else
                  {
                     zpp_inner.var_101 = zpp_inner.name_4.iterator_at(int(method_108()) - 1);
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
      
      public function pop() : class_252
      {
         var _loc2_:* = null as class_252;
         var _loc3_:* = null as ZNPNode_ZPP_Arbiter;
         zpp_inner;
         ZPP_ArbiterList.method_107();
         method_114();
         var _loc1_:* = null;
         if(zpp_inner.var_111)
         {
            _loc1_ = zpp_inner.name_4.var_73.var_74;
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
            if(int(method_108()) == 1)
            {
               _loc3_ = null;
            }
            else
            {
               _loc3_ = zpp_inner.name_4.iterator_at(int(method_108()) - 2);
            }
            if(_loc3_ == null)
            {
               _loc1_ = zpp_inner.name_4.var_73.var_74;
            }
            else
            {
               _loc1_ = _loc3_.next.var_74;
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
      
      public final function method_150(param1:class_227) : void
      {
         var _loc3_:* = null as class_252;
         var _loc4_:int = 0;
         var _loc2_:class_251 = param1.iterator();
         _loc2_.zpp_inner.zpp_inner.method_104();
         _loc4_ = _loc2_.zpp_inner.method_108();
         _loc2_.var_98 = true;
         if(_loc2_.var_90 < _loc4_)
         {
            §§push(true);
         }
         else
         {
            _loc2_.var_106 = class_251.var_72;
            class_251.var_72 = _loc2_;
            _loc2_.zpp_inner = null;
            §§push(false);
         }
      }
      
      public final function iterator() : class_251
      {
         method_114();
         return class_251.method_65(this);
      }
      
      public final function has(param1:class_252) : Boolean
      {
         method_114();
         return Boolean(zpp_inner.name_4.has(param1.zpp_inner));
      }
      
      public function get length() : int
      {
         return int(method_108());
      }
      
      public final function method_145(param1:Function) : class_227
      {
         var _loc4_:int = 0;
         var _loc3_:class_251 = iterator();
         _loc3_.zpp_inner.zpp_inner.method_104();
         _loc4_ = _loc3_.zpp_inner.method_108();
         _loc3_.var_98 = true;
         if(_loc3_.var_90 < _loc4_)
         {
            §§push(true);
         }
         else
         {
            _loc3_.var_106 = class_251.var_72;
            class_251.var_72 = _loc3_;
            _loc3_.zpp_inner = null;
            §§push(false);
         }
         return this;
      }
      
      public final function filter(param1:Function) : class_227
      {
         var _loc4_:* = null as class_252;
         var _loc3_:int = 0;
      }
      
      public final function empty() : Boolean
      {
         return int(method_108()) == 0;
      }
      
      public final function copy(param1:Boolean = false) : class_227
      {
         var _loc4_:* = null as class_252;
         var _loc5_:int = 0;
         var _loc2_:class_227 = new class_227();
         var _loc3_:class_251 = iterator();
         _loc3_.zpp_inner.zpp_inner.method_104();
         _loc5_ = _loc3_.zpp_inner.method_108();
         _loc3_.var_98 = true;
         if(_loc3_.var_90 < _loc5_)
         {
            §§push(true);
         }
         else
         {
            _loc3_.var_106 = class_251.var_72;
            class_251.var_72 = _loc3_;
            _loc3_.zpp_inner = null;
            §§push(false);
         }
         return _loc2_;
      }
      
      public function clear() : void
      {
         if(zpp_inner.var_111)
         {
            while(!empty())
            {
               pop();
            }
         }
         else
         {
            while(!empty())
            {
               shift();
            }
         }
      }
      
      public function at(param1:int) : class_252
      {
         var _loc2_:* = null as ZPP_Arbiter;
         method_114();
         if(zpp_inner.var_111)
         {
            param1 = int(method_108()) - 1 - param1;
         }
         if(param1 < zpp_inner.var_124 || zpp_inner.var_97 == null)
         {
            zpp_inner.var_124 = 0;
            zpp_inner.var_97 = zpp_inner.name_4.var_73;
            while(true)
            {
               _loc2_ = zpp_inner.var_97.var_74;
               if(_loc2_.active)
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
               _loc2_ = zpp_inner.var_97.var_74;
               if(_loc2_.active)
               {
                  break;
               }
               zpp_inner.var_97 = zpp_inner.var_97.next;
            }
         }
         return zpp_inner.var_97.var_74.method_109();
      }
      
      public final function add(param1:class_252) : Boolean
      {
         if(zpp_inner.var_111)
         {
            return Boolean(push(param1));
         }
         return Boolean(unshift(param1));
      }
   }
}
