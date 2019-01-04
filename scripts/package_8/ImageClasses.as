package package_8
{
   import org.flintparticles.common.utils.WeightedArray;
   import org.flintparticles.common.utils.construct;
   import package_15.class_59;
   
   public final class ImageClasses extends class_73
   {
       
      
      private var var_724:WeightedArray;
      
      private var var_699:Array;
      
      private var var_698:Array;
      
      public function ImageClasses(param1:Array = null, param2:Array = null, param3:Boolean = false, param4:uint = 0)
      {
         super(param3);
         this.var_724 = new WeightedArray();
         if(param1 == null)
         {
            return;
         }
         this.init(param1,param2);
         if(param4 > 0)
         {
            this.method_379(param4);
         }
      }
      
      override public function method_126(param1:class_59) : void
      {
         super.method_126(param1);
         if(this.var_699)
         {
            this.init(this.var_699,this.var_698);
            this.var_699 = null;
            this.var_698 = null;
         }
      }
      
      private final function init(param1:Array = null, param2:Array = null) : void
      {
         var _loc4_:int = 0;
         this.var_724.clear();
         var _loc3_:int = param1.length;
         if(param2 != null && param2.length == _loc3_)
         {
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.addImage(param1[_loc4_],param2[_loc4_]);
               _loc4_++;
            }
         }
         else
         {
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.addImage(param1[_loc4_],1);
               _loc4_++;
            }
         }
      }
      
      public final function addImage(param1:*, param2:Number = 1) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(param1 is Array)
         {
            _loc3_ = (param1 as Array).concat();
            _loc4_ = _loc3_.shift();
            this.var_724.add(new Pair_495(_loc4_,_loc3_),param2);
         }
         else
         {
            this.var_724.add(new Pair_495(param1,[]),param2);
         }
         if(var_417)
         {
            method_153();
         }
      }
      
      public final function method_701(param1:*) : void
      {
         this.var_724.remove(param1);
         if(var_417)
         {
            method_153();
         }
      }
      
      public function set method_553(param1:Array) : void
      {
         this.var_699 = param1;
         this.method_433();
         if(var_417)
         {
            method_153();
         }
      }
      
      public function set method_294(param1:Array) : void
      {
         if(param1.length == 1 && param1[0] is String)
         {
            this.var_698 = String(param1[0]).split(",");
         }
         else
         {
            this.var_698 = param1;
         }
         this.method_433();
         if(var_417)
         {
            method_153();
         }
      }
      
      private final function method_433() : void
      {
         if(this.var_699 && this.var_698)
         {
            this.init(this.var_699,this.var_698);
            this.var_699 = null;
            this.var_698 = null;
         }
      }
      
      override public function method_287() : Object
      {
         var _loc1_:Pair_495 = this.var_724.method_192();
         return construct(_loc1_.image,_loc1_.parameters);
      }
   }
}

class Pair_495
{
    
   
   private var image:Class;
   
   private var parameters:Array;
   
   function Pair_495(param1:Class, param2:Array)
   {
      super();
      this.image = param1;
      this.parameters = param2;
   }
}
