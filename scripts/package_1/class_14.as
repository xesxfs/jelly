package package_1
{
   public final class class_14
   {
       
      
      public var modifierParameters:Array;
      
      public var isSpecialProperty:Boolean;
      
      public var valueComplete:Number;
      
      public var modifierFunction:Function;
      
      public var extra:Object;
      
      public var valueStart:Number;
      
      public var hasModifier:Boolean;
      
      public var arrayIndex:Number;
      
      public var originalValueComplete:Object;
      
      public function class_14(param1:Number, param2:Number, param3:Object, param4:Number, param5:Object, param6:Boolean, param7:Function, param8:Array)
      {
         super();
         valueStart = param1;
         valueComplete = param2;
         originalValueComplete = param3;
         arrayIndex = param4;
         extra = param5;
         isSpecialProperty = param6;
         hasModifier = Boolean(param7);
         modifierFunction = param7;
         modifierParameters = param8;
      }
      
      public final function toString() : String
      {
         var _loc1_:* = class_2.method_14(-1820302557);
         _loc1_ = _loc1_ + (class_2.method_14(-1820302445) + String(valueStart));
         _loc1_ = _loc1_ + class_2.method_14(-1820302668);
         _loc1_ = _loc1_ + (class_2.method_14(-1820302747) + String(valueComplete));
         _loc1_ = _loc1_ + class_2.method_14(-1820302668);
         _loc1_ = _loc1_ + (class_2.method_14(-1820302512) + String(originalValueComplete));
         _loc1_ = _loc1_ + class_2.method_14(-1820302668);
         _loc1_ = _loc1_ + (class_2.method_14(-1820302744) + String(arrayIndex));
         _loc1_ = _loc1_ + class_2.method_14(-1820302668);
         _loc1_ = _loc1_ + (class_2.method_14(-1820302699) + String(extra));
         _loc1_ = _loc1_ + class_2.method_14(-1820302668);
         _loc1_ = _loc1_ + (class_2.method_14(-1820302417) + String(isSpecialProperty));
         _loc1_ = _loc1_ + class_2.method_14(-1820302668);
         _loc1_ = _loc1_ + (class_2.method_14(-1820302847) + String(hasModifier));
         _loc1_ = _loc1_ + class_2.method_14(-1820302668);
         _loc1_ = _loc1_ + (class_2.method_14(-1820302828) + String(modifierFunction));
         _loc1_ = _loc1_ + class_2.method_14(-1820302668);
         _loc1_ = _loc1_ + (class_2.method_14(-1820302593) + String(modifierParameters));
         _loc1_ = _loc1_ + class_2.method_14(-1820302424);
         return _loc1_;
      }
      
      public final function clone() : class_14
      {
         var _loc1_:class_14 = new class_14(valueStart,valueComplete,originalValueComplete,arrayIndex,extra,isSpecialProperty,modifierFunction,modifierParameters);
         return _loc1_;
      }
   }
}
