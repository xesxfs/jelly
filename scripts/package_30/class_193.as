package package_30
{
   import package_1.class_12;
   
   public final class class_193
   {
       
      
      public function class_193()
      {
         super();
         trace(class_2.method_14(-1820302679));
      }
      
      public static function init() : void
      {
         class_12.method_96(class_2.method_14(-1820302640),method_558,method_739);
      }
      
      public static function method_739(param1:Number, param2:Number, param3:Number, param4:Array) : Number
      {
         var _loc5_:* = 0;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(param4.length == 1)
         {
            return param1 + param3 * (2 * (1 - param3) * (param4[0] - param1) + param3 * (param2 - param1));
         }
         _loc5_ = uint(Math.floor(param3 * param4.length));
         _loc6_ = (param3 - _loc5_ * (1 / param4.length)) * param4.length;
         if(_loc5_ == 0)
         {
            _loc7_ = param1;
            _loc8_ = (param4[0] + param4[1]) / 2;
         }
         else if(_loc5_ == param4.length - 1)
         {
            _loc7_ = (param4[_loc5_ - 1] + param4[_loc5_]) / 2;
            _loc8_ = param2;
         }
         else
         {
            _loc7_ = (param4[_loc5_ - 1] + param4[_loc5_]) / 2;
            _loc8_ = (param4[_loc5_] + param4[_loc5_ + 1]) / 2;
         }
         return _loc7_ + _loc6_ * (2 * (1 - _loc6_) * (param4[_loc5_] - _loc7_) + _loc6_ * (_loc8_ - _loc7_));
      }
      
      public static function method_558(param1:*) : Array
      {
         var _loc3_:* = null;
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc2_:* = [];
         if(param1 is Array)
         {
            _loc3_ = param1;
         }
         else
         {
            _loc3_ = [param1];
         }
         var _loc6_:* = {};
         _loc4_ = 0;
         while(_loc4_ < _loc3_.length)
         {
            for(_loc5_ in _loc3_[_loc4_])
            {
               if(_loc6_[_loc5_] == undefined)
               {
                  _loc6_[_loc5_] = [];
               }
               _loc6_[_loc5_].push(_loc3_[_loc4_][_loc5_]);
            }
            _loc4_++;
         }
         for(_loc5_ in _loc6_)
         {
            _loc2_.push({
               "name":_loc5_,
               "parameters":_loc6_[_loc5_]
            });
         }
         return _loc2_;
      }
   }
}
