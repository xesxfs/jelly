package package_37
{
   import flash.errors.IllegalOperationError;
   import flash.utils.Dictionary;
   import flash.utils.getQualifiedClassName;
   
   public final class class_280 implements class_279, class_277
   {
       
      
      protected var var_539:Array;
      
      protected var name_15:Array;
      
      protected var var_577:Dictionary;
      
      protected var var_789:Boolean = false;
      
      public function class_280(... rest)
      {
         super();
         this.name_15 = [];
         this.var_577 = new Dictionary();
         if(rest.length == 1 && rest[0] is Array)
         {
            rest = rest[0];
         }
         this.method_466 = rest;
      }
      
      public function get method_466() : Array
      {
         return this.var_539;
      }
      
      public function set method_466(param1:Array) : void
      {
         this.var_539 = !!param1?param1.slice():[];
         var _loc2_:int = this.var_539.length;
         while(_loc2_--)
         {
            if(!(this.var_539[_loc2_] is Class))
            {
               throw new ArgumentError("Invalid valueClasses argument: item at index " + _loc2_ + " should be a Class but was:<" + this.var_539[_loc2_] + ">." + getQualifiedClassName(this.var_539[_loc2_]));
            }
         }
      }
      
      public function get method_768() : uint
      {
         return this.name_15.length;
      }
      
      public function add(param1:Function) : Function
      {
         this.method_448(param1);
         return param1;
      }
      
      public function method_771(param1:Function) : Function
      {
         this.method_448(param1,true);
         return param1;
      }
      
      public function remove(param1:Function) : Function
      {
         var _loc2_:int = this.name_15.indexOf(param1);
         if(_loc2_ == -1)
         {
            return param1;
         }
         if(this.var_789)
         {
            this.name_15 = this.name_15.slice();
            this.var_789 = false;
         }
         this.name_15.splice(_loc2_,1);
         delete this.var_577[param1];
         return param1;
      }
      
      public function removeAll() : void
      {
         var _loc1_:uint = this.name_15.length;
         while(_loc1_--)
         {
            this.remove(this.name_15[_loc1_] as Function);
         }
      }
      
      public final function method_270(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc6_:* = null;
         var _loc4_:int = this.var_539.length;
         if(rest.length < _loc4_)
         {
            throw new ArgumentError(class_2.method_14(-1820302498) + _loc4_ + class_2.method_14(-1820302746) + rest.length + ".");
         }
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if((_loc2_ = rest[_loc5_]) === null || _loc2_ is (_loc3_ = this.var_539[_loc5_]))
            {
               _loc5_++;
               continue;
            }
            throw new ArgumentError(class_2.method_14(-1820302778) + _loc2_ + class_2.method_14(-1820302578) + _loc3_ + class_2.method_14(-1820302428));
         }
         if(!this.name_15.length)
         {
            return;
         }
         this.var_789 = true;
         switch(rest.length)
         {
            case 0:
               for each(_loc6_ in this.name_15)
               {
                  if(this.var_577[_loc6_])
                  {
                     this.remove(_loc6_);
                  }
                  _loc6_();
               }
               break;
            case 1:
               for each(_loc6_ in this.name_15)
               {
                  if(this.var_577[_loc6_])
                  {
                     this.remove(_loc6_);
                  }
                  _loc6_(rest[0]);
               }
               break;
            default:
               for each(_loc6_ in this.name_15)
               {
                  if(this.var_577[_loc6_])
                  {
                     this.remove(_loc6_);
                  }
                  _loc6_.apply(null,rest);
               }
         }
         this.var_789 = false;
      }
      
      protected final function method_448(param1:Function, param2:Boolean = false) : void
      {
         var _loc3_:* = null;
         if(param1.length < this.var_539.length)
         {
            _loc3_ = param1.length == 1?"argument":class_2.method_14(-1820302531);
            throw new ArgumentError(class_2.method_14(-1820302732) + param1.length + " " + _loc3_ + class_2.method_14(-1820302515) + this.var_539.length + class_2.method_14(-1820302474));
         }
         if(!this.name_15.length)
         {
            this.name_15[0] = param1;
            if(param2)
            {
               this.var_577[param1] = true;
            }
            return;
         }
         if(this.name_15.indexOf(param1) >= 0)
         {
            if(this.var_577[param1] && !param2)
            {
               throw new IllegalOperationError(class_2.method_14(-1820302414));
            }
            if(!this.var_577[param1] && param2)
            {
               throw new IllegalOperationError(class_2.method_14(-1820302563));
            }
            return;
         }
         if(this.var_789)
         {
            this.name_15 = this.name_15.slice();
            this.var_789 = false;
         }
         this.name_15[this.name_15.length] = param1;
         if(param2)
         {
            this.var_577[param1] = true;
         }
      }
   }
}
