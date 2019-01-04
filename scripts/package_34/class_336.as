package package_34
{
   import zpp_nape.callbacks.ZPP_BodyListener;
   import zpp_nape.callbacks.ZPP_OptionType;
   import zpp_nape.util.class_223;
   
   public final class class_336 extends class_247
   {
       
      
      public var var_85:ZPP_BodyListener;
      
      public function class_336(param1:class_249, param2:*, param3:Function, param4:int = 0)
      {
         var_85 = null;
         super();
         var _loc5_:int = -1;
         §§push(param1);
         if(class_223.var_350 == null)
         {
            class_223.var_87 = true;
            class_223.var_350 = new class_249();
            class_223.var_87 = false;
         }
         if(§§pop() == class_223.var_350)
         {
            _loc5_ = class_223.var_450;
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
               _loc5_ = class_223.var_677;
            }
         }
         var_85 = new ZPP_BodyListener(ZPP_OptionType.argument(param2),_loc5_,param3);
         zpp_inner = var_85;
         zpp_inner.outer = this;
         var_85.outer_zn = this;
         zpp_inner.name_17 = param4;
      }
      
      public function set name_32(param1:class_313) : class_313
      {
         var_85.name_32.name_40(param1.zpp_inner);
         return var_85.name_32.outer;
      }
      
      public function set handler(param1:Function) : Function
      {
         var_85.handler = param1;
         return var_85.handler;
      }
      
      public function get name_32() : class_313
      {
         return var_85.name_32.outer;
      }
      
      public function get handler() : Function
      {
         return var_85.handler;
      }
   }
}
