package package_8
{
   import package_12.class_50;
   import package_15.class_59;
   import package_16.class_62;
   
   public class class_73 extends class_32
   {
       
      
      protected var var_417:Boolean;
      
      protected var var_707:Array;
      
      protected var var_620:Array;
      
      public function class_73(param1:Boolean = false, param2:uint = 0)
      {
         super();
         this.var_417 = param1;
         this.var_620 = new Array();
         if(this.var_417)
         {
            this.method_153();
            if(param2)
            {
               this.method_379(param2);
            }
         }
      }
      
      public final function method_153() : void
      {
         this.var_707 = new Array();
      }
      
      override public function method_126(param1:class_59) : void
      {
         this.var_620.push(param1);
         if(this.var_417)
         {
            param1.addEventListener(class_50.var_364,this.method_306,false,-1000,true);
         }
      }
      
      private final function method_306(param1:class_50) : void
      {
         if(param1.var_438.var_492 && param1.var_438.method_151["[object class_73]"])
         {
            this.var_707.push(param1.var_438.image);
            delete param1.var_438.method_151["[object class_73]"];
         }
      }
      
      override public function method_163(param1:class_59) : void
      {
         param1.removeEventListener(class_50.var_364,this.method_306);
         var _loc2_:int = this.var_620.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.var_620.splice(_loc2_,1);
         }
      }
      
      public final function method_379(param1:uint) : void
      {
         if(!this.var_417)
         {
            return;
         }
         if(this.var_707.length > 0)
         {
            this.var_707 = new Array(param1);
         }
         var _loc2_:int = 0;
         while(_loc2_ < param1)
         {
            this.var_707[_loc2_] = this.method_287();
            _loc2_++;
         }
      }
      
      public function get method_587() : Boolean
      {
         return this.var_417;
      }
      
      public function set method_587(param1:Boolean) : void
      {
         var _loc2_:* = null;
         if(this.var_417 != param1)
         {
            this.var_417 = param1;
            if(this.var_417)
            {
               for each(_loc2_ in this.var_620)
               {
                  _loc2_.addEventListener(class_50.var_364,this.method_306,false,-1000,true);
               }
            }
            else
            {
               for each(_loc2_ in this.var_620)
               {
                  _loc2_.removeEventListener(class_50.var_364,this.method_306);
               }
            }
         }
      }
      
      public function method_287() : Object
      {
         throw new Error(class_2.method_14(-1820302554));
      }
      
      override public function initialize(param1:class_59, param2:class_62) : void
      {
         if(this.var_417)
         {
            if(this.var_707.length > 0)
            {
               param2.image = this.var_707.shift();
            }
            else
            {
               param2.image = this.method_287();
            }
            param2.method_151["[object class_73]"] = true;
         }
         else
         {
            param2.image = this.method_287();
         }
      }
   }
}
