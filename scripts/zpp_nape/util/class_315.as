package zpp_nape.util
{
   import nape.geom.Vec2;
   import nape.geom.Vec2List;
   import zpp_nape.geom.ZPP_Vec2;
   
   public final class class_315 extends Vec2List
   {
       
      
      public var var_86:Boolean;
      
      public var name_4:ZPP_Vec2;
      
      public var var_97:ZPP_Vec2;
      
      public var var_124:int;
      
      public var var_218:int;
      
      public function class_315()
      {
         var_124 = 0;
         var_97 = null;
         var_86 = false;
         var_218 = 0;
         name_4 = null;
         super();
         var_97 = null;
         var_124 = 0;
         var_86 = true;
         var_218 = 0;
      }
      
      public static function method_65(param1:ZPP_Vec2, param2:Boolean = false) : class_315
      {
         var _loc3_:class_315 = new class_315();
         _loc3_.name_4 = param1;
         _loc3_.zpp_inner.var_164 = param2;
         return _loc3_;
      }
      
      override public function method_114() : void
      {
         zpp_inner.validate();
         if(name_4.name_2)
         {
            var_86 = true;
            var_218 = 0;
            var_97 = null;
         }
      }
      
      override public function method_108() : int
      {
         var _loc1_:* = null as ZPP_Vec2;
         var _loc2_:* = null as ZPP_Vec2;
         method_114();
         if(var_86)
         {
            var_218 = 0;
            _loc1_ = name_4.next;
            while(_loc1_ != null)
            {
               _loc2_ = _loc1_;
               var_218 = var_218 + 1;
               _loc1_ = _loc1_.next;
            }
            var_86 = false;
         }
         return var_218;
      }
      
      override public function unshift(param1:Vec2) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:* = null as ZPP_Vec2;
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
               _loc3_ = name_4.iterator_at(int(method_108()) - 1);
               name_4.insert(_loc3_,param1.zpp_inner);
            }
            else
            {
               name_4.add(param1.zpp_inner);
            }
            zpp_inner.invalidate();
            if(zpp_inner.var_137 != null)
            {
               zpp_inner.var_137(param1);
            }
         }
         return _loc2_;
      }
      
      override public function shift() : Vec2
      {
         var _loc2_:* = null as ZPP_Vec2;
         var _loc3_:* = null as Vec2;
         var _loc4_:* = null as ZPP_Vec2;
         zpp_inner;
         ZPP_Vec2List.method_107();
         method_114();
         var _loc1_:* = null;
         if(zpp_inner.var_111)
         {
            if(var_97 != null && var_97.next == null)
            {
               var_97 = null;
            }
            if(int(method_108()) == 1)
            {
               _loc2_ = null;
            }
            else
            {
               _loc2_ = name_4.iterator_at(int(method_108()) - 2);
            }
            if(_loc2_ == null)
            {
               _loc1_ = name_4.next;
            }
            else
            {
               _loc1_ = _loc2_.next;
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
               name_4.erase(_loc2_);
            }
         }
         else
         {
            _loc1_ = name_4.next;
            if(_loc1_.outer == null)
            {
               _loc1_.outer = new Vec2();
               _loc2_ = _loc1_.outer.zpp_inner;
               if(_loc2_.outer != null)
               {
                  _loc2_.outer.zpp_inner = null;
                  _loc2_.outer = null;
               }
               _loc2_.var_103 = null;
               _loc2_._validate = null;
               _loc2_._invalidate = null;
               _loc2_.next = ZPP_Vec2.var_72;
               ZPP_Vec2.var_72 = _loc2_;
               _loc1_.outer.zpp_inner = _loc1_;
            }
            _loc3_ = _loc1_.outer;
            if(zpp_inner.var_110 != null)
            {
               zpp_inner.var_110(_loc3_);
            }
            if(!zpp_inner.var_126)
            {
               name_4.pop();
            }
         }
         zpp_inner.invalidate();
         if(_loc1_.outer == null)
         {
            _loc1_.outer = new Vec2();
            _loc2_ = _loc1_.outer.zpp_inner;
            if(_loc2_.outer != null)
            {
               _loc2_.outer.zpp_inner = null;
               _loc2_.outer = null;
            }
            _loc2_.var_103 = null;
            _loc2_._validate = null;
            _loc2_._invalidate = null;
            _loc2_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc2_;
            _loc1_.outer.zpp_inner = _loc1_;
         }
         _loc3_ = _loc1_.outer;
         return _loc3_;
      }
      
      override public function remove(param1:Vec2) : Boolean
      {
         var _loc4_:* = null as ZPP_Vec2;
         zpp_inner;
         ZPP_Vec2List.method_107();
         method_114();
         var _loc2_:Boolean = false;
         var _loc3_:ZPP_Vec2 = name_4.next;
         while(_loc3_ != null)
         {
            _loc4_ = _loc3_;
            if(param1.zpp_inner == _loc4_)
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
               name_4.remove(param1.zpp_inner);
            }
            zpp_inner.invalidate();
         }
         return _loc2_;
      }
      
      override public function push(param1:Vec2) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:* = null as ZPP_Vec2;
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
               name_4.add(param1.zpp_inner);
            }
            else
            {
               _loc3_ = name_4.iterator_at(int(method_108()) - 1);
               name_4.insert(_loc3_,param1.zpp_inner);
            }
            zpp_inner.invalidate();
            if(zpp_inner.var_137 != null)
            {
               zpp_inner.var_137(param1);
            }
         }
         return _loc2_;
      }
      
      override public function pop() : Vec2
      {
         var _loc2_:* = null as Vec2;
         var _loc3_:* = null as ZPP_Vec2;
         var _loc4_:* = null as ZPP_Vec2;
         zpp_inner;
         ZPP_Vec2List.method_107();
         method_114();
         var _loc1_:* = null;
         if(zpp_inner.var_111)
         {
            _loc1_ = name_4.next;
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
               name_4.pop();
            }
         }
         else
         {
            if(var_97 != null && var_97.next == null)
            {
               var_97 = null;
            }
            if(int(method_108()) == 1)
            {
               _loc3_ = null;
            }
            else
            {
               _loc3_ = name_4.iterator_at(int(method_108()) - 2);
            }
            if(_loc3_ == null)
            {
               _loc1_ = name_4.next;
            }
            else
            {
               _loc1_ = _loc3_.next;
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
            _loc2_ = _loc1_.outer;
            if(zpp_inner.var_110 != null)
            {
               zpp_inner.var_110(_loc2_);
            }
            if(!zpp_inner.var_126)
            {
               name_4.erase(_loc3_);
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
      
      override public function clear() : void
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
      
      override public function at(param1:int) : Vec2
      {
         var _loc2_:* = null as ZPP_Vec2;
         var _loc3_:* = null as ZPP_Vec2;
         method_114();
         if(zpp_inner.var_111)
         {
            param1 = int(method_108()) - 1 - param1;
         }
         if(param1 < var_124 || var_97 == null)
         {
            var_124 = 0;
            var_97 = name_4.next;
            _loc2_ = var_97;
         }
         while(var_124 != param1)
         {
            var_124 = var_124 + 1;
            var_97 = var_97.next;
            _loc2_ = var_97;
         }
         _loc2_ = var_97;
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
   }
}
