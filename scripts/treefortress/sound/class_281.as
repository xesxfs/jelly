package treefortress.sound
{
   import flash.utils.getTimer;
   import package_37.class_280;
   
   public final class class_281
   {
       
      
      public var startTime:int;
      
      public var var_713:Number;
      
      public var var_652:Number;
      
      public var duration:Number;
      
      protected var var_995:Boolean;
      
      protected var var_1129:class_282;
      
      protected var var_606:Boolean;
      
      public var var_958:class_280;
      
      public var var_1039:Boolean;
      
      public function class_281(param1:class_282, param2:Number, param3:Number, param4:Boolean = false)
      {
         super();
         if(param1)
         {
            this.name_37 = param1;
            this.var_713 = this.name_37.volume;
         }
         this.var_958 = new class_280(class_282);
         this.var_995 = param4;
         this.init(this.var_713,param2,param3);
      }
      
      protected static function method_49(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         return -param3 * (param1 = param1 / param4) * (param1 - 2) + param2;
      }
      
      protected static function method_81(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         param1 = param1 / (param4 / 2);
         if(_loc5_ < 1)
         {
            return param3 / 2 * param1 * param1 + param2;
         }
         return -param3 / 2 * (--param1 * (param1 - 2) - 1) + param2;
      }
      
      public final function update(param1:int) : Boolean
      {
         if(this.var_606)
         {
            return this.var_606;
         }
         if(this.var_995)
         {
            if(param1 - this.startTime < this.duration)
            {
               SoundAS.masterVolume = method_49(param1 - this.startTime,this.var_713,this.var_652 - this.var_713,this.duration);
            }
            else
            {
               SoundAS.masterVolume = this.var_652;
            }
            this.var_606 = SoundAS.masterVolume == this.var_652;
         }
         else
         {
            if(param1 - this.startTime < this.duration)
            {
               this.name_37.volume = method_49(param1 - this.startTime,this.var_713,this.var_652 - this.var_713,this.duration);
            }
            else
            {
               this.name_37.volume = this.var_652;
            }
            this.var_606 = this.name_37.volume == this.var_652;
         }
         return this.var_606;
      }
      
      public final function init(param1:Number, param2:Number, param3:Number) : void
      {
         this.startTime = getTimer();
         this.var_713 = param1;
         this.var_652 = param2;
         this.duration = param3;
         this.var_606 = false;
      }
      
      public final function end(param1:Boolean = false) : void
      {
         this.var_606 = true;
         if(!this.var_995)
         {
            if(param1)
            {
               this.name_37.volume = this.var_652;
            }
            if(this.var_1039 && this.name_37.volume == 0)
            {
               this.name_37.stop();
            }
         }
         this.var_958.method_270(this.name_37);
         this.var_958.removeAll();
      }
      
      public final function method_597() : void
      {
         this.var_606 = true;
         this.var_958.removeAll();
      }
      
      public function get name_69() : Boolean
      {
         return this.var_606;
      }
      
      public function get name_37() : class_282
      {
         return this.var_1129;
      }
      
      public function set name_37(param1:class_282) : void
      {
         this.var_1129 = param1;
         if(this.name_37)
         {
         }
      }
   }
}
