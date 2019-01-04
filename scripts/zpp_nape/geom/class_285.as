package zpp_nape.geom
{
   import nape.geom.class_217;
   
   public final class class_285
   {
       
      
      public var x:Vector.<Number>;
      
      public var outer:class_217;
      
      public var var_324:int;
      
      public var var_564:int;
      
      public function class_285(param1:int, param2:int)
      {
         x = null;
         var_324 = 0;
         var_564 = 0;
         outer = null;
         var_564 = param1;
         var_324 = param2;
         x = new Vector.<Number>(param1 * param2,true);
      }
   }
}
