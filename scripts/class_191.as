package
{
   import mx.resources.ResourceBundle;
   
   public class class_191 extends ResourceBundle
   {
       
      
      public function class_191()
      {
         super("en_US","effects");
      }
      
      override protected function getContent() : Object
      {
         var _loc1_:* = {
            "incorrectSource":"Source property must be a Class or String.",
            "incorrectTrigger":"The Zoom effect can not be triggered by a moveEffect trigger."
         };
         return _loc1_;
      }
   }
}
