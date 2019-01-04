package nape.geom
{
   import zpp_nape.geom.ZPP_Vec2;
   import zpp_nape.util.ZNPNode_ZPP_Vec2;
   import zpp_nape.util.ZPP_Vec2List;
   import zpp_nape.util.class_219;
   
   public class Vec2List
   {
       
      
      public var zpp_inner:ZPP_Vec2List;
      
      public function Vec2List()
      {
         zpp_inner = null;
         zpp_inner = new ZPP_Vec2List();
         zpp_inner.outer = this;
      }
      
      public static function method_143(param1:Array) : Vec2List
      {
         var _loc4_:* = null as Vec2;
         var _loc2_:Vec2List = new Vec2List();
         var _loc3_:int = 0;
         while(_loc3_ < int(param1.length))
         {
            _loc4_ = param1[_loc3_];
            _loc3_++;
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      public static function method_147(param1:Vector.<Vec2>) : Vec2List
      {
         var _loc4_:* = null as Vec2;
         var _loc2_:Vec2List = new Vec2List();
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
         zpp_inner.method_104();
         if(zpp_inner.var_86)
         {
            zpp_inner.var_86 = false;
            zpp_inner.var_89 = zpp_inner.name_4.length;
         }
         return zpp_inner.var_89;
      }
      
      public function unshift(param1:Vec2) : Boolean
      {
         var _loc2_:Boolean = false;
         zpp_inner;
         ZPP_Vec2List.method_107();
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
         var _loc4_:* = null as Vec2;
         var _loc5_:int = 0;
         var _loc3_:Vec2Iterator = iterator();
         _loc3_.zpp_inner.zpp_inner.method_104();
         _loc5_ = _loc3_.zpp_inner.method_108();
         _loc3_.var_98 = true;
         if(_loc3_.var_90 < _loc5_)
         {
            §§push(true);
         }
         else
         {
            _loc3_.var_106 = Vec2Iterator.var_72;
            Vec2Iterator.var_72 = _loc3_;
            _loc3_.zpp_inner = null;
            §§push(false);
         }
         return "[]";
      }
      
      public function shift() : Vec2
      {
         var _loc2_:* = null as ZNPNode_ZPP_Vec2;
         var _loc3_:* = null as Vec2;
         var _loc4_:* = null as ZPP_Vec2;
         zpp_inner;
         ZPP_Vec2List.method_107();
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
            if(_loc1_.outer == null)
            {
               _loc1_.outer = new Vec2();
               _loc4_ = _loc1_.outer.zpp_inner;
               if(_loc4_.outer != null)
               {
                  _loc4_.outer.zpp_inner = null;
                  _loc4_.outer = null;
               }
               _loc4_.var_103 = null;
               _loc4_._validate = null;
               _loc4_._invalidate = null;
               _loc4_.next = ZPP_Vec2.var_72;
               ZPP_Vec2.var_72 = _loc4_;
               _loc1_.outer.zpp_inner = _loc1_;
            }
            _loc3_ = _loc1_.outer;
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
            if(_loc1_.outer == null)
            {
               _loc1_.outer = new Vec2();
               _loc4_ = _loc1_.outer.zpp_inner;
               if(_loc4_.outer != null)
               {
                  _loc4_.outer.zpp_inner = null;
                  _loc4_.outer = null;
               }
               _loc4_.var_103 = null;
               _loc4_._validate = null;
               _loc4_._invalidate = null;
               _loc4_.next = ZPP_Vec2.var_72;
               ZPP_Vec2.var_72 = _loc4_;
               _loc1_.outer.zpp_inner = _loc1_;
            }
            _loc3_ = _loc1_.outer;
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
         if(_loc1_.outer == null)
         {
            _loc1_.outer = new Vec2();
            _loc4_ = _loc1_.outer.zpp_inner;
            if(_loc4_.outer != null)
            {
               _loc4_.outer.zpp_inner = null;
               _loc4_.outer = null;
            }
            _loc4_.var_103 = null;
            _loc4_._validate = null;
            _loc4_._invalidate = null;
            _loc4_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc4_;
            _loc1_.outer.zpp_inner = _loc1_;
         }
         _loc3_ = _loc1_.outer;
         return _loc3_;
      }
      
      public function remove(param1:Vec2) : Boolean
      {
         var _loc4_:* = null as ZPP_Vec2;
         zpp_inner;
         ZPP_Vec2List.method_107();
         method_114();
         var _loc2_:Boolean = false;
         var _loc3_:ZNPNode_ZPP_Vec2 = zpp_inner.name_4.var_73;
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
      
      public function push(param1:Vec2) : Boolean
      {
         var _loc2_:Boolean = false;
         zpp_inner;
         ZPP_Vec2List.method_107();
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
      
      public function pop() : Vec2
      {
         var _loc2_:* = null as Vec2;
         var _loc3_:* = null as ZPP_Vec2;
         var _loc4_:* = null as ZNPNode_ZPP_Vec2;
         zpp_inner;
         ZPP_Vec2List.method_107();
         method_114();
         var _loc1_:* = null;
         if(zpp_inner.var_111)
         {
            _loc1_ = zpp_inner.name_4.var_73.var_74;
            if(_loc1_.outer == null)
            {
               _loc1_.outer = new Vec2();
               _loc3_ = _loc1_.outer.zpp_inner;
               if(_loc3_.outer != null)
               {
                  _loc3_.outer.zpp_inner = null;
                  _loc3_.outer = null;
               }
               _loc3_.var_103 = null;
               _loc3_._validate = null;
               _loc3_._invalidate = null;
               _loc3_.next = ZPP_Vec2.var_72;
               ZPP_Vec2.var_72 = _loc3_;
               _loc1_.outer.zpp_inner = _loc1_;
            }
            _loc2_ = _loc1_.outer;
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
               _loc4_ = null;
            }
            else
            {
               _loc4_ = zpp_inner.name_4.iterator_at(int(method_108()) - 2);
            }
            if(_loc4_ == null)
            {
               _loc1_ = zpp_inner.name_4.var_73.var_74;
            }
            else
            {
               _loc1_ = _loc4_.next.var_74;
            }
            if(_loc1_.outer == null)
            {
               _loc1_.outer = new Vec2();
               _loc3_ = _loc1_.outer.zpp_inner;
               if(_loc3_.outer != null)
               {
                  _loc3_.outer.zpp_inner = null;
                  _loc3_.outer = null;
               }
               _loc3_.var_103 = null;
               _loc3_._validate = null;
               _loc3_._invalidate = null;
               _loc3_.next = ZPP_Vec2.var_72;
               ZPP_Vec2.var_72 = _loc3_;
               _loc1_.outer.zpp_inner = _loc1_;
            }
            _loc2_ = _loc1_.outer;
            if(zpp_inner.var_110 != null)
            {
               zpp_inner.var_110(_loc2_);
            }
            if(!zpp_inner.var_126)
            {
               zpp_inner.name_4.erase(_loc4_);
            }
         }
         zpp_inner.invalidate();
         if(_loc1_.outer == null)
         {
            _loc1_.outer = new Vec2();
            _loc3_ = _loc1_.outer.zpp_inner;
            if(_loc3_.outer != null)
            {
               _loc3_.outer.zpp_inner = null;
               _loc3_.outer = null;
            }
            _loc3_.var_103 = null;
            _loc3_._validate = null;
            _loc3_._invalidate = null;
            _loc3_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc3_;
            _loc1_.outer.zpp_inner = _loc1_;
         }
         _loc2_ = _loc1_.outer;
         return _loc2_;
      }
      
      public final function method_150(param1:Vec2List) : void
      {
         var _loc3_:* = null as Vec2;
         var _loc4_:int = 0;
         var _loc2_:Vec2Iterator = param1.iterator();
         _loc2_.zpp_inner.zpp_inner.method_104();
         _loc4_ = _loc2_.zpp_inner.method_108();
         _loc2_.var_98 = true;
         if(_loc2_.var_90 < _loc4_)
         {
            §§push(true);
         }
         else
         {
            _loc2_.var_106 = Vec2Iterator.var_72;
            Vec2Iterator.var_72 = _loc2_;
            _loc2_.zpp_inner = null;
            §§push(false);
         }
      }
      
      public final function iterator() : Vec2Iterator
      {
         method_114();
         return Vec2Iterator.method_65(this);
      }
      
      public final function has(param1:Vec2) : Boolean
      {
         method_114();
         return Boolean(zpp_inner.name_4.has(param1.zpp_inner));
      }
      
      public function get length() : int
      {
         return int(method_108());
      }
      
      public final function method_145(param1:Function) : Vec2List
      {
         var _loc4_:int = 0;
         var _loc3_:Vec2Iterator = iterator();
         _loc3_.zpp_inner.zpp_inner.method_104();
         _loc4_ = _loc3_.zpp_inner.method_108();
         _loc3_.var_98 = true;
         if(_loc3_.var_90 < _loc4_)
         {
            §§push(true);
         }
         else
         {
            _loc3_.var_106 = Vec2Iterator.var_72;
            Vec2Iterator.var_72 = _loc3_;
            _loc3_.zpp_inner = null;
            §§push(false);
         }
         return this;
      }
      
      public final function filter(param1:Function) : Vec2List
      {
         var _loc4_:* = null as Vec2;
         var _loc3_:int = 0;
      }
      
      public final function empty() : Boolean
      {
         return int(method_108()) == 0;
      }
      
      public final function copy(param1:Boolean = false) : Vec2List
      {
         var _loc4_:* = null as Vec2;
         var _loc5_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:* = null as ZPP_Vec2;
         var _loc9_:Number = NaN;
         var _loc10_:* = null as Vec2;
         var _loc2_:Vec2List = new Vec2List();
         var _loc3_:Vec2Iterator = iterator();
         _loc3_.zpp_inner.zpp_inner.method_104();
         _loc5_ = _loc3_.zpp_inner.method_108();
         _loc3_.var_98 = true;
         if(_loc3_.var_90 < _loc5_)
         {
            §§push(true);
         }
         else
         {
            _loc3_.var_106 = Vec2Iterator.var_72;
            Vec2Iterator.var_72 = _loc3_;
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
      
      public function at(param1:int) : Vec2
      {
         var _loc3_:* = null as ZPP_Vec2;
         method_114();
         if(zpp_inner.var_111)
         {
            param1 = int(method_108()) - 1 - param1;
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
         var _loc2_:ZPP_Vec2 = zpp_inner.var_97.var_74;
         if(_loc2_.outer == null)
         {
            _loc2_.outer = new Vec2();
            _loc3_ = _loc2_.outer.zpp_inner;
            if(_loc3_.outer != null)
            {
               _loc3_.outer.zpp_inner = null;
               _loc3_.outer = null;
            }
            _loc3_.var_103 = null;
            _loc3_._validate = null;
            _loc3_._invalidate = null;
            _loc3_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc3_;
            _loc2_.outer.zpp_inner = _loc2_;
         }
         return _loc2_.outer;
      }
      
      public final function add(param1:Vec2) : Boolean
      {
         if(zpp_inner.var_111)
         {
            return Boolean(push(param1));
         }
         return Boolean(unshift(param1));
      }
   }
}
