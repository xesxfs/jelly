package package_34
{
   import zpp_nape.callbacks.ZPP_InteractionListener;
   import zpp_nape.callbacks.ZPP_OptionType;
   import zpp_nape.util.class_223;
   
   public final class class_248 extends class_247
   {
       
      
      public var var_85:ZPP_InteractionListener;
      
      public function class_248(param1:class_249, param2:class_221, param3:*, param4:*, param5:Function, param6:int = 0)
      {
         var _loc8_:* = 0;
         var_85 = null;
         super();
         var _loc7_:int = -1;
         §§push(param1);
         if(class_223.var_430 == null)
         {
            class_223.var_87 = true;
            class_223.var_430 = new class_249();
            class_223.var_87 = false;
         }
         if(§§pop() == class_223.var_430)
         {
            _loc7_ = class_223.var_831;
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
               _loc7_ = class_223.var_712;
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
                  _loc7_ = class_223.var_861;
               }
            }
         }
         var_85 = new ZPP_InteractionListener(ZPP_OptionType.argument(param3),ZPP_OptionType.argument(param4),_loc7_,class_223.var_900);
         zpp_inner = var_85;
         zpp_inner.outer = this;
         var_85.var_885 = this;
         zpp_inner.name_17 = param6;
         var_85.handleri = param5;
         _loc8_ = int(var_85.var_249);
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
         else if(_loc8_ == class_223.var_378)
         {
            if(class_223.var_187 == null)
            {
               class_223.var_87 = true;
               class_223.var_187 = new class_221();
               class_223.var_87 = false;
            }
            §§push(class_223.var_187);
         }
         else if(_loc8_ == class_223.var_386)
         {
            if(class_223.var_193 == null)
            {
               class_223.var_87 = true;
               class_223.var_193 = new class_221();
               class_223.var_87 = false;
            }
            §§push(class_223.var_193);
         }
         else if(_loc8_ == class_223.var_319)
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
         if(§§pop() != param2)
         {
            §§push(param2);
            if(class_223.var_189 == null)
            {
               class_223.var_87 = true;
               class_223.var_189 = new class_221();
               class_223.var_87 = false;
            }
            if(§§pop() == class_223.var_189)
            {
               _loc8_ = int(class_223.var_389);
            }
            else
            {
               §§push(param2);
               if(class_223.var_187 == null)
               {
                  class_223.var_87 = true;
                  class_223.var_187 = new class_221();
                  class_223.var_87 = false;
               }
               if(§§pop() == class_223.var_187)
               {
                  _loc8_ = int(class_223.var_378);
               }
               else
               {
                  §§push(param2);
                  if(class_223.var_193 == null)
                  {
                     class_223.var_87 = true;
                     class_223.var_193 = new class_221();
                     class_223.var_87 = false;
                  }
                  if(§§pop() == class_223.var_193)
                  {
                     _loc8_ = int(class_223.var_386);
                  }
                  else
                  {
                     _loc8_ = int(class_223.var_319);
                  }
               }
            }
            var_85.var_249 = _loc8_;
         }
         _loc8_ = int(var_85.var_249);
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
         else if(_loc8_ == class_223.var_378)
         {
            if(class_223.var_187 == null)
            {
               class_223.var_87 = true;
               class_223.var_187 = new class_221();
               class_223.var_87 = false;
            }
            class_223.var_187;
         }
         else if(_loc8_ == class_223.var_386)
         {
            if(class_223.var_193 == null)
            {
               class_223.var_87 = true;
               class_223.var_193 = new class_221();
               class_223.var_87 = false;
            }
            class_223.var_193;
         }
         else if(_loc8_ == class_223.var_319)
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
         var_85.handleri = param1;
         return var_85.handleri;
      }
      
      public function set name_68(param1:Boolean) : Boolean
      {
         var_85.name_68 = param1;
         return var_85.name_68;
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
         return var_85.handleri;
      }
      
      public function get name_68() : Boolean
      {
         return var_85.name_68;
      }
   }
}
