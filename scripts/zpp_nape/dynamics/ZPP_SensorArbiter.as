package zpp_nape.dynamics
{
   public final class ZPP_SensorArbiter extends ZPP_Arbiter
   {
      
      public static var var_72:ZPP_SensorArbiter = null;
       
      
      public var next:ZPP_SensorArbiter;
      
      public function ZPP_SensorArbiter()
      {
         next = null;
         super();
         type = ZPP_Arbiter.SENSOR;
         var_624 = this;
      }
   }
}
