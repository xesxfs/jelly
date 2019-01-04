package zpp_nape.dynamics
{
   import package_26.CollisionArbiter;
   import package_26.FluidArbiter;
   import package_26.class_252;
   import zpp_nape.phys.ZPP_Body;
   import zpp_nape.shape.ZPP_Shape;
   import zpp_nape.space.ZPP_AABBPair;
   
   public class ZPP_Arbiter
   {
      
      public static var var_87:Boolean = false;
      
      public static var var_292:int = 1;
      
      public static var FLUID:int = 4;
      
      public static var SENSOR:int = 2;
      
      public static var var_406:Array = null;
       
      
      public var ws2:ZPP_Shape;
      
      public var ws1:ZPP_Shape;
      
      public var var_360:int;
      
      public var type:int;
      
      public var var_114:int;
      
      public var var_129:Boolean;
      
      public var var_669:int;
      
      public var var_624:ZPP_SensorArbiter;
      
      public var var_639:Boolean;
      
      public var var_304:int;
      
      public var var_209:ZPP_AABBPair;
      
      public var outer:class_252;
      
      public var var_329:Boolean;
      
      public var var_361:Boolean;
      
      public var var_181:int;
      
      public var id:int;
      
      public var var_305:ZPP_Arbiter;
      
      public var name_23:Boolean;
      
      public var var_161:ZPP_FluidArbiter;
      
      public var var_784:int;
      
      public var var_179:int;
      
      public var var_371:Boolean;
      
      public var var_128:ZPP_ColArbiter;
      
      public var var_265:Boolean;
      
      public var b2:ZPP_Body;
      
      public var b1:ZPP_Body;
      
      public var active:Boolean;
      
      public function ZPP_Arbiter()
      {
         var_624 = null;
         var_161 = null;
         var_128 = null;
         type = 0;
         var_209 = null;
         ws2 = null;
         ws1 = null;
         b2 = null;
         b1 = null;
         var_329 = false;
         var_181 = 0;
         name_23 = false;
         var_371 = false;
         var_639 = false;
         var_361 = false;
         var_304 = 0;
         var_129 = false;
         var_265 = false;
         active = false;
         var_784 = 0;
         var_669 = 0;
         var_360 = 0;
         var_114 = 0;
         var_179 = 0;
         id = 0;
         var_305 = null;
         outer = null;
      }
      
      public final function method_109() : class_252
      {
         if(outer == null)
         {
            ZPP_Arbiter.var_87 = true;
            if(type == ZPP_Arbiter.var_292)
            {
               var_128.outer_zn = new CollisionArbiter();
               outer = var_128.outer_zn;
            }
            else if(type == ZPP_Arbiter.FLUID)
            {
               var_161.outer_zn = new FluidArbiter();
               outer = var_161.outer_zn;
            }
            else
            {
               outer = new class_252();
            }
            outer.zpp_inner = this;
            ZPP_Arbiter.var_87 = false;
         }
         return outer;
      }
   }
}
