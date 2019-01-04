package package_34
{
   import package_31.class_197;
   import zpp_nape.callbacks.ZPP_BodyListener;
   import zpp_nape.callbacks.ZPP_ConstraintListener;
   import zpp_nape.callbacks.ZPP_InteractionListener;
   import zpp_nape.callbacks.ZPP_Listener;
   import zpp_nape.space.ZPP_Space;
   import zpp_nape.util.class_223;
   
   public class class_247
   {
       
      
      public var zpp_inner:ZPP_Listener;
      
      public function class_247()
      {
         zpp_inner = null;
      }
      
      public final function toString() : String
      {
         var _loc2_:* = null as ZPP_BodyListener;
         var _loc3_:* = null as ZPP_ConstraintListener;
         var _loc4_:* = null as ZPP_InteractionListener;
         var _loc5_:* = null as String;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc1_:String = ["BEGIN","END","WAKE","SLEEP","BREAK","PRE","ONGOING"][zpp_inner.event];
         if(zpp_inner.type == class_223.var_905)
         {
            _loc2_ = zpp_inner.body;
            return class_2.method_14(-1820302736) + _loc1_ + class_2.method_14(-1820302508) + Std.string(_loc2_.outer_zn.var_85.name_32.outer) + "}";
         }
         if(zpp_inner.type == class_223.var_948)
         {
            _loc3_ = zpp_inner.name_44;
            return class_2.method_14(-1820302520) + _loc1_ + class_2.method_14(-1820302508) + Std.string(_loc3_.outer_zn.var_85.name_32.outer) + "}";
         }
         _loc4_ = zpp_inner.var_656;
         _loc6_ = int(_loc4_.var_249);
         _loc7_ = int(int(_loc4_.var_249));
         if(int(int(_loc4_.var_249)) == class_223.var_389)
         {
            _loc5_ = "COLLISION";
         }
         else if(_loc7_ == class_223.var_378)
         {
            _loc5_ = "SENSOR";
         }
         else if(_loc7_ == class_223.var_386)
         {
            _loc5_ = "FLUID";
         }
         else
         {
            _loc5_ = class_2.method_14(-1820302402);
         }
         return (zpp_inner.type == class_223.var_900?class_2.method_14(-1820302623) + _loc1_ + "#" + _loc5_ + class_2.method_14(-1820302508) + Std.string(_loc4_.var_885.var_85.options1.outer) + ":" + Std.string(_loc4_.var_885.var_85.options2.outer) + "}":class_2.method_14(-1820302745) + _loc5_ + class_2.method_14(-1820302508) + Std.string(_loc4_.var_837.var_85.options1.outer) + ":" + Std.string(_loc4_.var_837.var_85.options2.outer) + "}") + class_2.method_14(-1820302625) + zpp_inner.name_17;
      }
      
      public function set space(param1:class_197) : class_197
      {
         var _loc2_:* = null as class_224;
         if((zpp_inner.space == null?null:zpp_inner.space.outer) != param1)
         {
            if(zpp_inner.space != null)
            {
               zpp_inner.space.outer.zpp_inner.var_503.remove(this);
            }
            if(param1 != null)
            {
               _loc2_ = param1.zpp_inner.var_503;
               if(_loc2_.zpp_inner.var_111)
               {
                  _loc2_.push(this);
               }
               else
               {
                  _loc2_.unshift(this);
               }
            }
            else
            {
               zpp_inner.space = null;
            }
         }
         if(zpp_inner.space == null)
         {
            return null;
         }
         return zpp_inner.space.outer;
      }
      
      public function set name_17(param1:int) : int
      {
         if(zpp_inner.name_17 != param1)
         {
            zpp_inner.name_17 = param1;
            zpp_inner.method_331();
         }
         return zpp_inner.name_17;
      }
      
      public function set event(param1:class_249) : class_249
      {
         var _loc2_:int = 0;
         if(ZPP_Listener.events[zpp_inner.event] != param1)
         {
            §§push(param1);
            if(class_223.var_430 == null)
            {
               class_223.var_87 = true;
               class_223.var_430 = new class_249();
               class_223.var_87 = false;
            }
            if(§§pop() == class_223.var_430)
            {
               _loc2_ = class_223.var_831;
            }
            else
            {
               §§push(param1);
               if(class_223.var_419 == null)
               {
                  class_223.var_87 = true;
                  class_223.var_419 = new class_249();
                  class_223.var_87 = false;
               }
               if(§§pop() == class_223.var_419)
               {
                  _loc2_ = class_223.var_861;
               }
               else
               {
                  §§push(param1);
                  if(class_223.var_413 == null)
                  {
                     class_223.var_87 = true;
                     class_223.var_413 = new class_249();
                     class_223.var_87 = false;
                  }
                  if(§§pop() == class_223.var_413)
                  {
                     _loc2_ = class_223.var_712;
                  }
                  else
                  {
                     §§push(param1);
                     if(class_223.var_363 == null)
                     {
                        class_223.var_87 = true;
                        class_223.var_363 = new class_249();
                        class_223.var_87 = false;
                     }
                     if(§§pop() == class_223.var_363)
                     {
                        _loc2_ = class_223.var_677;
                     }
                     else
                     {
                        §§push(param1);
                        if(class_223.var_350 == null)
                        {
                           class_223.var_87 = true;
                           class_223.var_350 = new class_249();
                           class_223.var_87 = false;
                        }
                        if(§§pop() == class_223.var_350)
                        {
                           _loc2_ = class_223.var_450;
                        }
                        else
                        {
                           §§push(param1);
                           if(class_223.var_491 == null)
                           {
                              class_223.var_87 = true;
                              class_223.var_491 = new class_249();
                              class_223.var_87 = false;
                           }
                           if(§§pop() == class_223.var_491)
                           {
                              _loc2_ = class_223.var_796;
                           }
                           else
                           {
                              _loc2_ = class_223.var_860;
                           }
                        }
                     }
                  }
               }
            }
            zpp_inner.method_353(_loc2_);
         }
         return ZPP_Listener.events[zpp_inner.event];
      }
      
      public function get type() : class_293
      {
         return ZPP_Listener.var_406[zpp_inner.type];
      }
      
      public function get space() : class_197
      {
         if(zpp_inner.space == null)
         {
            return null;
         }
         return zpp_inner.space.outer;
      }
      
      public function get name_17() : int
      {
         return zpp_inner.name_17;
      }
      
      public function get event() : class_249
      {
         return ZPP_Listener.events[zpp_inner.event];
      }
   }
}
