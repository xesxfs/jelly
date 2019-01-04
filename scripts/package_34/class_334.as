package package_34
{
   import zpp_nape.callbacks.ZPP_InteractionListener;
   import zpp_nape.callbacks.ZPP_OptionType;
   import zpp_nape.util.class_223;
   
   public final class class_334 extends class_247
   {
       
      
      public var var_85:ZPP_InteractionListener;
      
      public function class_334(param1:class_221, param2:*, param3:*, param4:Function, param5:int = 0, param6:Boolean = false)
      {
         var _loc7_:* = 0;
         var_85 = null;
         super();
         var_85 = new ZPP_InteractionListener(ZPP_OptionType.argument(param2),ZPP_OptionType.argument(param3),class_223.var_796,class_223.var_868);
         zpp_inner = var_85;
         zpp_inner.outer = this;
         var_85.var_837 = this;
         zpp_inner.name_17 = param5;
         var_85.name_67 = param6;
         var_85.handlerp = param4;
         _loc7_ = int(var_85.var_249);
         if(int(var_85.var_249) == class_223.var_389)
         {
            if(class_223.var_189 == null)
            {
               class_223.var_87 = true;
               class_223.var_189 = new class_221();
               class_223.var_87 = false;
            }
            §§push(class_223.var_189);
         }
         else if(_loc7_ == class_223.var_378)
         {
            if(class_223.var_187 == null)
            {
               class_223.var_87 = true;
               class_223.var_187 = new class_221();
               class_223.var_87 = false;
            }
            §§push(class_223.var_187);
         }
         else if(_loc7_ == class_223.var_386)
         {
            if(class_223.var_193 == null)
            {
               class_223.var_87 = true;
               class_223.var_193 = new class_221();
               class_223.var_87 = false;
            }
            §§push(class_223.var_193);
         }
         else if(_loc7_ == class_223.var_319)
         {
            if(class_223.InteractionType_ANY == null)
            {
               class_223.var_87 = true;
               class_223.InteractionType_ANY = new class_221();
               class_223.var_87 = false;
            }
            §§push(class_223.InteractionType_ANY);
         }
         else
         {
            §§push(null);
         }
         if(§§pop() != param1)
         {
            §§push(param1);
            if(class_223.var_189 == null)
            {
               class_223.var_87 = true;
               class_223.var_189 = new class_221();
               class_223.var_87 = false;
            }
            if(§§pop() == class_223.var_189)
            {
               _loc7_ = int(class_223.var_389);
            }
            else
            {
               §§push(param1);
               if(class_223.var_187 == null)
               {
                  class_223.var_87 = true;
                  class_223.var_187 = new class_221();
                  class_223.var_87 = false;
               }
               if(§§pop() == class_223.var_187)
               {
                  _loc7_ = int(class_223.var_378);
               }
               else
               {
                  §§push(param1);
                  if(class_223.var_193 == null)
                  {
                     class_223.var_87 = true;
                     class_223.var_193 = new class_221();
                     class_223.var_87 = false;
                  }
                  if(§§pop() == class_223.var_193)
                  {
                     _loc7_ = int(class_223.var_386);
                  }
                  else
                  {
                     _loc7_ = int(class_223.var_319);
                  }
               }
            }
            var_85.var_249 = _loc7_;
         }
         _loc7_ = int(var_85.var_249);
         if(int(var_85.var_249) == class_223.var_389)
         {
            if(class_223.var_189 == null)
            {
               class_223.var_87 = true;
               class_223.var_189 = new class_221();
               class_223.var_87 = false;
            }
            class_223.var_189;
         }
         else if(_loc7_ == class_223.var_378)
         {
            if(class_223.var_187 == null)
            {
               class_223.var_87 = true;
               class_223.var_187 = new class_221();
               class_223.var_87 = false;
            }
            class_223.var_187;
         }
         else if(_loc7_ == class_223.var_386)
         {
            if(class_223.var_193 == null)
            {
               class_223.var_87 = true;
               class_223.var_193 = new class_221();
               class_223.var_87 = false;
            }
            class_223.var_193;
         }
         else if(_loc7_ == class_223.var_319)
         {
            if(class_223.InteractionType_ANY == null)
            {
               class_223.var_87 = true;
               class_223.InteractionType_ANY = new class_221();
               class_223.var_87 = false;
            }
            class_223.InteractionType_ANY;
         }
         else
         {
            null;
         }
      }
      
      public function set name_67(param1:Boolean) : Boolean
      {
         if(!param1)
         {
            var_85.method_106();
         }
         var_85.name_67 = param1;
         return var_85.name_67;
      }
      
      public function set options2(param1:class_313) : class_313
      {
         var_85.options2.name_40(param1.zpp_inner);
         return var_85.options2.outer;
      }
      
      public function set options1(param1:class_313) : class_313
      {
         var_85.options1.name_40(param1.zpp_inner);
         return var_85.options1.outer;
      }
      
      public function set method_321(param1:class_221) : class_221
      {
         var _loc2_:int = 0;
         _loc2_ = var_85.var_249;
         if(_loc2_ == class_223.var_389)
         {
            if(class_223.var_189 == null)
            {
               class_223.var_87 = true;
               class_223.var_189 = new class_221();
               class_223.var_87 = false;
            }
            §§push(class_223.var_189);
         }
         else if(_loc2_ == class_223.var_378)
         {
            if(class_223.var_187 == null)
            {
               class_223.var_87 = true;
               class_223.var_187 = new class_221();
               class_223.var_87 = false;
            }
            §§push(class_223.var_187);
         }
         else if(_loc2_ == class_223.var_386)
         {
            if(class_223.var_193 == null)
            {
               class_223.var_87 = true;
               class_223.var_193 = new class_221();
               class_223.var_87 = false;
            }
            §§push(class_223.var_193);
         }
         else if(_loc2_ == class_223.var_319)
         {
            if(class_223.InteractionType_ANY == null)
            {
               class_223.var_87 = true;
               class_223.InteractionType_ANY = new class_221();
               class_223.var_87 = false;
            }
            §§push(class_223.InteractionType_ANY);
         }
         else
         {
            §§push(null);
         }
         if(§§pop() != param1)
         {
            §§push(param1);
            if(class_223.var_189 == null)
            {
               class_223.var_87 = true;
               class_223.var_189 = new class_221();
               class_223.var_87 = false;
            }
            if(§§pop() == class_223.var_189)
            {
               _loc2_ = class_223.var_389;
            }
            else
            {
               §§push(param1);
               if(class_223.var_187 == null)
               {
                  class_223.var_87 = true;
                  class_223.var_187 = new class_221();
                  class_223.var_87 = false;
               }
               if(§§pop() == class_223.var_187)
               {
                  _loc2_ = class_223.var_378;
               }
               else
               {
                  §§push(param1);
                  if(class_223.var_193 == null)
                  {
                     class_223.var_87 = true;
                     class_223.var_193 = new class_221();
                     class_223.var_87 = false;
                  }
                  if(§§pop() == class_223.var_193)
                  {
                     _loc2_ = class_223.var_386;
                  }
                  else
                  {
                     _loc2_ = class_223.var_319;
                  }
               }
            }
            var_85.var_249 = _loc2_;
         }
         _loc2_ = var_85.var_249;
         if(_loc2_ == class_223.var_389)
         {
            if(class_223.var_189 == null)
            {
               class_223.var_87 = true;
               class_223.var_189 = new class_221();
               class_223.var_87 = false;
            }
            return class_223.var_189;
         }
         if(_loc2_ == class_223.var_378)
         {
            if(class_223.var_187 == null)
            {
               class_223.var_87 = true;
               class_223.var_187 = new class_221();
               class_223.var_87 = false;
            }
            return class_223.var_187;
         }
         if(_loc2_ == class_223.var_386)
         {
            if(class_223.var_193 == null)
            {
               class_223.var_87 = true;
               class_223.var_193 = new class_221();
               class_223.var_87 = false;
            }
            return class_223.var_193;
         }
         if(_loc2_ == class_223.var_319)
         {
            if(class_223.InteractionType_ANY == null)
            {
               class_223.var_87 = true;
               class_223.InteractionType_ANY = new class_221();
               class_223.var_87 = false;
            }
            return class_223.InteractionType_ANY;
         }
         return null;
      }
      
      public function set handler(param1:Function) : Function
      {
         var_85.handlerp = param1;
         var_85.method_106();
         return var_85.handlerp;
      }
      
      public function get name_67() : Boolean
      {
         return var_85.name_67;
      }
      
      public function get options2() : class_313
      {
         return var_85.options2.outer;
      }
      
      public function get options1() : class_313
      {
         return var_85.options1.outer;
      }
      
      public function get method_321() : class_221
      {
         var _loc1_:int = var_85.var_249;
         if(_loc1_ == class_223.var_389)
         {
            if(class_223.var_189 == null)
            {
               class_223.var_87 = true;
               class_223.var_189 = new class_221();
               class_223.var_87 = false;
            }
            return class_223.var_189;
         }
         if(_loc1_ == class_223.var_378)
         {
            if(class_223.var_187 == null)
            {
               class_223.var_87 = true;
               class_223.var_187 = new class_221();
               class_223.var_87 = false;
            }
            return class_223.var_187;
         }
         if(_loc1_ == class_223.var_386)
         {
            if(class_223.var_193 == null)
            {
               class_223.var_87 = true;
               class_223.var_193 = new class_221();
               class_223.var_87 = false;
            }
            return class_223.var_193;
         }
         if(_loc1_ == class_223.var_319)
         {
            if(class_223.InteractionType_ANY == null)
            {
               class_223.var_87 = true;
               class_223.InteractionType_ANY = new class_221();
               class_223.var_87 = false;
            }
            return class_223.InteractionType_ANY;
         }
         return null;
      }
      
      public function get handler() : Function
      {
         return var_85.handlerp;
      }
   }
}
