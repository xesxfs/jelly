package package_8
{
   import package_15.class_59;
   import package_16.class_62;
   
   public final class class_135 extends class_32
   {
       
      
      private var var_341:Vector.<class_31>;
      
      private var var_534:class_59;
      
      public function class_135(... rest)
      {
         var _loc2_:* = null;
         super();
         this.var_341 = new Vector.<class_31>();
         for each(_loc2_ in rest)
         {
            this.addInitializer(_loc2_);
         }
      }
      
      public function get method_328() : Vector.<class_31>
      {
         return this.var_341;
      }
      
      public function set method_328(param1:Vector.<class_31>) : void
      {
         var _loc2_:* = null;
         if(this.var_534)
         {
            for each(_loc2_ in this.var_341)
            {
               _loc2_.method_163(this.var_534);
            }
         }
         this.var_341 = param1.slice();
         this.var_341.sort(this.method_412);
         if(this.var_534)
         {
            for each(_loc2_ in this.var_341)
            {
               _loc2_.method_126(this.var_534);
            }
         }
      }
      
      public final function addInitializer(param1:class_31) : void
      {
         var _loc2_:uint = this.var_341.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            if(this.var_341[_loc3_].priority < param1.priority)
            {
               break;
            }
            _loc3_++;
         }
         this.var_341.splice(_loc3_,0,param1);
         if(this.var_534)
         {
            param1.method_126(this.var_534);
         }
      }
      
      public final function method_314(param1:class_31) : void
      {
         var _loc2_:int = this.var_341.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.var_341.splice(_loc2_,1);
            if(this.var_534)
            {
               param1.method_163(this.var_534);
            }
         }
      }
      
      override public function method_126(param1:class_59) : void
      {
         this.var_534 = param1;
         var _loc2_:uint = this.var_341.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_341[_loc3_].method_126(param1);
            _loc3_++;
         }
      }
      
      override public function method_163(param1:class_59) : void
      {
         var _loc2_:uint = this.var_341.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_341[_loc3_].method_163(param1);
            _loc3_++;
         }
         this.var_534 = null;
      }
      
      override public function initialize(param1:class_59, param2:class_62) : void
      {
         var _loc3_:uint = this.var_341.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_341[_loc4_].initialize(param1,param2);
            _loc4_++;
         }
      }
      
      private final function method_412(param1:class_31, param2:class_31) : Number
      {
         return param1.priority - param2.priority;
      }
   }
}
