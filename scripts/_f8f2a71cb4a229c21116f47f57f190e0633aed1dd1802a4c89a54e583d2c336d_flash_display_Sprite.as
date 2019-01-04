package
{
   import flash.display.Sprite;
   import flash.system.Security;
   
   public class _f8f2a71cb4a229c21116f47f57f190e0633aed1dd1802a4c89a54e583d2c336d_flash_display_Sprite extends Sprite
   {
       
      
      public function _f8f2a71cb4a229c21116f47f57f190e0633aed1dd1802a4c89a54e583d2c336d_flash_display_Sprite()
      {
         super();
      }
      
      public function allowDomainInRSL(... rest) : void
      {
         Security.allowDomain(rest);
      }
      
      public function allowInsecureDomainInRSL(... rest) : void
      {
         Security.allowInsecureDomain(rest);
      }
   }
}
