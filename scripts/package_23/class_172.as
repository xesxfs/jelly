package package_23
{
   import flash.utils.getQualifiedClassName;
   import flash.utils.setTimeout;
   
   public final class class_172
   {
      
      protected static var _instance:class_172;
       
      
      public var var_1077:Function = null;
      
      public var var_682:Function = null;
      
      public var var_847:int = 10;
      
      public var var_1167:Boolean = true;
      
      protected var var_526:Array;
      
      protected var var_685:int;
      
      protected var var_644:Object;
      
      public function class_172()
      {
         super();
         if(_instance != null)
         {
            throw new Error(class_2.method_14(-1820302547));
         }
         _instance = this;
         this.var_526 = [];
         this.var_685 = 0;
         this.var_644 = {};
      }
      
      public static function getInstance() : class_172
      {
         return _instance == null?new class_172():_instance;
      }
      
      public final function cacheAnim(param1:Class) : class_176
      {
         var _loc2_:* = null;
         var _loc3_:String = getQualifiedClassName(param1);
         if(!this.var_644[_loc3_] || this.var_1167)
         {
            _loc2_ = new class_176();
            _loc2_.method_679(param1);
            this.var_644[_loc3_] = _loc2_;
         }
         else
         {
            _loc2_ = this.var_644[_loc3_];
         }
         return _loc2_;
      }
      
      public final function method_690(param1:String) : class_176
      {
         if(!this.var_644[param1])
         {
            throw new Error(class_2.method_14(-1820302637) + param1 + class_2.method_14(-1820302793));
         }
         return this.var_644[param1].clone();
      }
      
      public final function method_742(param1:Class) : void
      {
         this.var_526[this.var_526.length] = param1;
      }
      
      public final function method_738(param1:Array) : void
      {
         var _loc2_:int = param1.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_526[this.var_526.length] = param1[_loc3_];
            _loc3_++;
         }
      }
      
      public final function method_631() : void
      {
         this.var_847 = this.var_847 == 1?2:int(this.var_847);
         this.var_685 = 0;
         this.name_53();
      }
      
      protected final function name_53() : void
      {
         var _loc1_:int = this.var_685 + this.var_847;
         _loc1_ = _loc1_ >= this.var_526.length?int(this.var_526.length):int(_loc1_);
         var _loc2_:int = this.var_685;
         while(_loc2_ < _loc1_)
         {
            this.cacheAnim(this.var_526[_loc2_]);
            _loc2_++;
         }
         this.var_685 = _loc1_ - 1;
         if(this.var_1077 != null)
         {
            (this.var_1077 as Function).apply(this,[(this.var_685 + 1) / this.var_526.length]);
         }
         if(this.var_685 == this.var_526.length - 1)
         {
            this.var_526.length = 0;
            if(this.var_682 != null)
            {
               (this.var_682 as Function).apply(this);
            }
         }
         else
         {
            setTimeout(this.name_53,1);
         }
      }
   }
}
