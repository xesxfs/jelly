package package_29
{
   import package_26.InteractionGroup;
   import package_32.Shape;
   import package_34.class_216;
   import zpp_nape.dynamics.ZPP_InteractionGroup;
   import zpp_nape.phys.ZPP_Body;
   import zpp_nape.phys.ZPP_Compound;
   import zpp_nape.phys.ZPP_Interactor;
   import zpp_nape.shape.ZPP_Shape;
   
   public class Interactor
   {
       
      
      public var var_150:ZPP_Interactor;
      
      public function Interactor()
      {
         var_150 = null;
      }
      
      public function toString() : String
      {
         return "";
      }
      
      public function set group(param1:InteractionGroup) : InteractionGroup
      {
         var_150.method_112("Interactor::group");
         var_150.method_362(param1 == null?null:param1.zpp_inner);
         if(var_150.group == null)
         {
            return null;
         }
         return var_150.group.outer;
      }
      
      public final function method_919() : Boolean
      {
         return var_150.var_160 != null;
      }
      
      public final function method_750() : Boolean
      {
         return var_150.var_207 != null;
      }
      
      public final function name_75() : Boolean
      {
         return var_150.var_182 != null;
      }
      
      public function get name_21() : *
      {
         if(var_150.name_21 == null)
         {
            var_150.name_21 = {};
         }
         return var_150.name_21;
      }
      
      public function get id() : int
      {
         return var_150.id;
      }
      
      public function get group() : InteractionGroup
      {
         if(var_150.group == null)
         {
            return null;
         }
         return var_150.group.outer;
      }
      
      public function get name_10() : class_216
      {
         if(var_150.var_251 == null)
         {
            var_150.method_236();
         }
         return var_150.var_251;
      }
      
      public function get method_349() : Shape
      {
         if(var_150.var_160 != null)
         {
            return var_150.var_160.outer;
         }
         return null;
      }
      
      public function get method_822() : Compound
      {
         if(var_150.var_207 != null)
         {
            return var_150.var_207.outer;
         }
         return null;
      }
      
      public function get method_847() : Body
      {
         if(var_150.var_182 != null)
         {
            return var_150.var_182.outer;
         }
         return null;
      }
   }
}
