package nape.geom
{
   import zpp_nape.util.ZNPNode_RayResult;
   import zpp_nape.util.ZPP_RayResultList;
   
   public final class class_233
   {
       
      
      public var zpp_inner:ZPP_RayResultList;
      
      public function class_233()
      {
         zpp_inner = null;
         zpp_inner = new ZPP_RayResultList();
         zpp_inner.outer = this;
      }
      
      public static function method_143(param1:Array) : class_233
      {
         var _loc4_:* = null as RayResult;
         var _loc2_:class_233 = new class_233();
         var _loc3_:int = 0;
         while(_loc3_ < int(param1.length))
         {
            _loc4_ = param1[_loc3_];
            _loc3_++;
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      public static function method_147(param1:Vector.<RayResult>) : class_233
      {
         var _loc4_:* = null as RayResult;
         var _loc2_:class_233 = new class_233();
         var _loc3_:int = 0;
         while(_loc3_ < int(param1.length))
         {
            _loc4_ = param1[_loc3_];
            _loc3_++;
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      public final function unshift(param1:RayResult) : Boolean
      {
         var _loc2_:Boolean = false;
         zpp_inner;
         ZPP_RayResultList.method_107();
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
                  if(zpp_inner.name_4.var_73 == null)
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
                        zpp_inner.var_89 = zpp_inner.name_4.length;
                     }
                     §§pop().var_101 = §§pop().iterator_at(zpp_inner.var_89 - 1);
                  }
               }
               zpp_inner.var_101 = zpp_inner.name_4.insert(zpp_inner.var_101,param1);
            }
            else
            {
               zpp_inner.name_4.add(param1);
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
         var _loc4_:* = null as RayResult;
         var _loc5_:int = 0;
         var _loc6_:* = null as class_233;
         zpp_inner.method_104();
         var _loc3_:class_269 = class_269.method_65(this);
         _loc3_.zpp_inner.zpp_inner.method_104();
         _loc6_ = _loc3_.zpp_inner;
         _loc6_.zpp_inner.method_104();
         if(_loc6_.zpp_inner.var_86)
         {
            _loc6_.zpp_inner.var_86 = false;
            _loc6_.zpp_inner.var_89 = _loc6_.zpp_inner.name_4.length;
         }
         _loc5_ = _loc6_.zpp_inner.var_89;
         _loc3_.var_98 = true;
         if(_loc3_.var_90 < _loc5_)
         {
            §§push(true);
         }
         else
         {
            _loc3_.var_106 = class_269.var_72;
            class_269.var_72 = _loc3_;
            _loc3_.zpp_inner = null;
            §§push(false);
         }
         return "[]";
      }
      
      public final function shift() : RayResult
      {
         var _loc2_:* = null as ZNPNode_RayResult;
         var _loc3_:* = null as RayResult;
         zpp_inner;
         ZPP_RayResultList.method_107();
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
               zpp_inner.var_89 = zpp_inner.name_4.length;
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
                  zpp_inner.var_89 = zpp_inner.name_4.length;
               }
               _loc2_ = §§pop().iterator_at(zpp_inner.var_89 - 2);
            }
            if(_loc2_ == null)
            {
               _loc1_ = zpp_inner.name_4.var_73.var_74;
            }
            else
            {
               _loc1_ = _loc2_.next.var_74;
            }
            _loc3_ = _loc1_;
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
            _loc3_ = _loc1_;
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
         _loc3_ = _loc1_;
         return _loc3_;
      }
      
      public final function remove(param1:RayResult) : Boolean
      {
         var _loc4_:* = null as RayResult;
         zpp_inner;
         ZPP_RayResultList.method_107();
         zpp_inner.method_104();
         var _loc2_:Boolean = false;
         var _loc3_:ZNPNode_RayResult = zpp_inner.name_4.var_73;
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
         if(_loc2_)
         {
            if(zpp_inner.var_110 != null)
            {
               zpp_inner.var_110(param1);
            }
            if(!zpp_inner.var_126)
            {
               zpp_inner.name_4.remove(param1);
            }
            zpp_inner.invalidate();
         }
         return _loc2_;
      }
      
      public final function push(param1:RayResult) : Boolean
      {
         var _loc2_:Boolean = false;
         zpp_inner;
         ZPP_RayResultList.method_107();
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
               zpp_inner.name_4.add(param1);
            }
            else
            {
               if(zpp_inner.var_101 == null)
               {
                  if(zpp_inner.name_4.var_73 == null)
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
                        zpp_inner.var_89 = zpp_inner.name_4.length;
                     }
                     §§pop().var_101 = §§pop().iterator_at(zpp_inner.var_89 - 1);
                  }
               }
               zpp_inner.var_101 = zpp_inner.name_4.insert(zpp_inner.var_101,param1);
            }
            zpp_inner.invalidate();
            if(zpp_inner.var_137 != null)
            {
               zpp_inner.var_137(param1);
            }
         }
         return _loc2_;
      }
      
      public final function pop() : RayResult
      {
         var _loc2_:* = null as RayResult;
         var _loc3_:* = null as ZNPNode_RayResult;
         zpp_inner;
         ZPP_RayResultList.method_107();
         zpp_inner.method_104();
         var _loc1_:* = null;
         if(zpp_inner.var_111)
         {
            _loc1_ = zpp_inner.name_4.var_73.var_74;
            _loc2_ = _loc1_;
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
               zpp_inner.var_89 = zpp_inner.name_4.length;
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
                  zpp_inner.var_89 = zpp_inner.name_4.length;
               }
               _loc3_ = §§pop().iterator_at(zpp_inner.var_89 - 2);
            }
            if(_loc3_ == null)
            {
               _loc1_ = zpp_inner.name_4.var_73.var_74;
            }
            else
            {
               _loc1_ = _loc3_.next.var_74;
            }
            _loc2_ = _loc1_;
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
         _loc2_ = _loc1_;
         return _loc2_;
      }
      
      public final function method_150(param1:class_233) : void
      {
         var _loc3_:* = null as RayResult;
         var _loc4_:int = 0;
         var _loc5_:* = null as class_233;
         param1.zpp_inner.method_104();
         var _loc2_:class_269 = class_269.method_65(param1);
         _loc2_.zpp_inner.zpp_inner.method_104();
         _loc5_ = _loc2_.zpp_inner;
         _loc5_.zpp_inner.method_104();
         if(_loc5_.zpp_inner.var_86)
         {
            _loc5_.zpp_inner.var_86 = false;
            _loc5_.zpp_inner.var_89 = _loc5_.zpp_inner.name_4.length;
         }
         _loc4_ = _loc5_.zpp_inner.var_89;
         _loc2_.var_98 = true;
         if(_loc2_.var_90 < _loc4_)
         {
            §§push(true);
         }
         else
         {
            _loc2_.var_106 = class_269.var_72;
            class_269.var_72 = _loc2_;
            _loc2_.zpp_inner = null;
            §§push(false);
         }
      }
      
      public final function iterator() : class_269
      {
         zpp_inner.method_104();
         return class_269.method_65(this);
      }
      
      public final function has(param1:RayResult) : Boolean
      {
         zpp_inner.method_104();
         return Boolean(zpp_inner.name_4.has(param1));
      }
      
      public function get length() : int
      {
         zpp_inner.method_104();
         if(zpp_inner.var_86)
         {
            zpp_inner.var_86 = false;
            zpp_inner.var_89 = zpp_inner.name_4.length;
         }
         return zpp_inner.var_89;
      }
      
      public final function method_145(param1:Function) : class_233
      {
         var _loc4_:int = 0;
         var _loc6_:* = null as class_233;
         zpp_inner.method_104();
         var _loc3_:class_269 = class_269.method_65(this);
         _loc3_.zpp_inner.zpp_inner.method_104();
         _loc6_ = _loc3_.zpp_inner;
         _loc6_.zpp_inner.method_104();
         if(_loc6_.zpp_inner.var_86)
         {
            _loc6_.zpp_inner.var_86 = false;
            _loc6_.zpp_inner.var_89 = _loc6_.zpp_inner.name_4.length;
         }
         _loc4_ = _loc6_.zpp_inner.var_89;
         _loc3_.var_98 = true;
         if(_loc3_.var_90 < _loc4_)
         {
            §§push(true);
         }
         else
         {
            _loc3_.var_106 = class_269.var_72;
            class_269.var_72 = _loc3_;
            _loc3_.zpp_inner = null;
            §§push(false);
         }
         return this;
      }
      
      public final function filter(param1:Function) : class_233
      {
         var _loc4_:* = null as RayResult;
         var _loc3_:int = 0;
      }
      
      public final function empty() : Boolean
      {
         return zpp_inner.name_4.var_73 == null;
      }
      
      public final function copy(param1:Boolean = false) : class_233
      {
         var _loc4_:* = null as RayResult;
         var _loc5_:int = 0;
         var _loc6_:* = null as class_233;
         var _loc2_:class_233 = new class_233();
         zpp_inner.method_104();
         var _loc3_:class_269 = class_269.method_65(this);
         _loc3_.zpp_inner.zpp_inner.method_104();
         _loc6_ = _loc3_.zpp_inner;
         _loc6_.zpp_inner.method_104();
         if(_loc6_.zpp_inner.var_86)
         {
            _loc6_.zpp_inner.var_86 = false;
            _loc6_.zpp_inner.var_89 = _loc6_.zpp_inner.name_4.length;
         }
         _loc5_ = _loc6_.zpp_inner.var_89;
         _loc3_.var_98 = true;
         if(_loc3_.var_90 < _loc5_)
         {
            §§push(true);
         }
         else
         {
            _loc3_.var_106 = class_269.var_72;
            class_269.var_72 = _loc3_;
            _loc3_.zpp_inner = null;
            §§push(false);
         }
         return _loc2_;
      }
      
      public final function clear() : void
      {
         if(zpp_inner.var_111)
         {
            while(zpp_inner.name_4.var_73 != null)
            {
               pop();
            }
         }
         else
         {
            while(zpp_inner.name_4.var_73 != null)
            {
               shift();
            }
         }
      }
      
      public final function at(param1:int) : RayResult
      {
         zpp_inner.method_104();
         if(zpp_inner.var_111)
         {
            zpp_inner.method_104();
            if(zpp_inner.var_86)
            {
               zpp_inner.var_86 = false;
               zpp_inner.var_89 = zpp_inner.name_4.length;
            }
            param1 = zpp_inner.var_89 - 1 - param1;
         }
         if(param1 < zpp_inner.var_124 || zpp_inner.var_97 == null)
         {
            zpp_inner.var_124 = param1;
            zpp_inner.var_97 = zpp_inner.name_4.iterator_at(param1);
         }
         else
         {
            while(zpp_inner.var_124 != param1)
            {
               zpp_inner.var_124 = zpp_inner.var_124 + 1;
               zpp_inner.var_97 = zpp_inner.var_97.next;
            }
         }
         return zpp_inner.var_97.var_74;
      }
      
      public final function add(param1:RayResult) : Boolean
      {
         if(zpp_inner.var_111)
         {
            return Boolean(push(param1));
         }
         return Boolean(unshift(param1));
      }
   }
}
