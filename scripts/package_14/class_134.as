package package_14
{
   import org.flintparticles.common.utils.WeightedArray;
   import package_15.class_59;
   import package_16.class_62;
   import package_8.class_32;
   
   public final class class_134 extends class_32
   {
       
      
      private var var_716:WeightedArray;
      
      private var var_665:Array;
      
      private var var_698:Array;
      
      public function class_134(param1:Array = null, param2:Array = null)
      {
         super();
         priority = -10;
         this.var_716 = new WeightedArray();
         if(param1 == null)
         {
            return;
         }
         this.init(param1,param2);
      }
      
      override public function method_126(param1:class_59) : void
      {
         if(this.var_665)
         {
            this.init(this.var_665,this.var_698);
            this.var_665 = null;
            this.var_698 = null;
         }
      }
      
      private final function init(param1:Array = null, param2:Array = null) : void
      {
         var _loc4_:int = 0;
         this.var_716.clear();
         var _loc3_:int = param1.length;
         if(param2 != null && param2.length == _loc3_)
         {
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.var_716.add(param1[_loc4_],param2[_loc4_]);
               _loc4_++;
            }
         }
         else
         {
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.var_716.add(param1[_loc4_],1);
               _loc4_++;
            }
         }
      }
      
      public final function method_585(param1:Number, param2:Number = 1) : void
      {
         this.var_716.add(param1,param2);
      }
      
      public final function method_614(param1:Number) : void
      {
         this.var_716.remove(param1);
      }
      
      public function set method_561(param1:Array) : void
      {
         if(param1.length == 1 && param1[0] is String)
         {
            this.var_665 = String(param1[0]).split(",");
         }
         else
         {
            this.var_665 = param1;
         }
         this.method_433();
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
      }
      
      private final function method_433() : void
      {
         if(this.var_665 && this.var_698)
         {
            this.init(this.var_665,this.var_698);
            this.var_665 = null;
            this.var_698 = null;
         }
      }
      
      override public function initialize(param1:class_59, param2:class_62) : void
      {
         var _loc3_:Number = NaN;
         _loc3_ = this.var_716.method_192();
         param2.scale = _loc3_;
         param2.mass = param2.mass * (_loc3_ * _loc3_);
         param2.var_169 = param2.var_169 * _loc3_;
      }
   }
}
