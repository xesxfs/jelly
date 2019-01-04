package package_1
{
   public final class class_17
   {
       
      
      public function class_17()
      {
         super();
         trace(class_2.method_14(-1820302666));
      }
      
      public static function method_30(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         param1 = param1 / param4;
         if(_loc6_ < 0.363636363636364)
         {
            return param3 * (7.5625 * param1 * param1) + param2;
         }
         if(param1 < 0.727272727272727)
         {
            param1 = param1 - 0.545454545454545;
            return param3 * (7.5625 * _loc6_ * param1 + 0.75) + param2;
         }
         if(param1 < 0.909090909090909)
         {
            param1 = param1 - 0.818181818181818;
            return param3 * (7.5625 * _loc6_ * param1 + 0.9375) + param2;
         }
         return param3 * (7.5625 * (param1 = param1 - 0.954545454545455) * param1 + 0.984375) + param2;
      }
      
      public static function method_84(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         var _loc7_:Number = NaN;
         if(param1 == 0)
         {
            return param2;
         }
         param1 = param1 / (param4 / 2);
         if(_loc9_ == 2)
         {
            return param2 + param3;
         }
         var _loc6_:Number = !Boolean(param5) || isNaN(param5.period)?Number(param4 * 0.45):Number(param5.period);
         var _loc8_:Number = !Boolean(param5) || isNaN(param5.amplitude)?0:Number(param5.amplitude);
         if(!Boolean(_loc8_) || _loc8_ < Math.abs(param3))
         {
            _loc8_ = param3;
            _loc7_ = _loc6_ / 4;
         }
         else
         {
            _loc7_ = _loc6_ / (2 * Math.PI) * Math.asin(param3 / _loc8_);
         }
         if(param1 < 1)
         {
            return -0.5 * (_loc8_ * Math.pow(2,10 * param1--) * Math.sin((param1 * param4 - _loc7_) * (2 * Math.PI) / _loc6_)) + param2;
         }
         return _loc8_ * Math.pow(2,-10 * param1--) * Math.sin((param1 * param4 - _loc7_) * (2 * Math.PI) / _loc6_) * 0.5 + param3 + param2;
      }
      
      public static function method_81(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         param1 = param1 / (param4 / 2);
         if(_loc6_ < 1)
         {
            return param3 / 2 * param1 * param1 + param2;
         }
         return -param3 / 2 * (--param1 * (param1 - 2) - 1) + param2;
      }
      
      public static function method_86(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         if(param1 < param4 / 2)
         {
            return method_34(param1 * 2,0,param3,param4) * 0.5 + param2;
         }
         return method_30(param1 * 2 - param4,0,param3,param4) * 0.5 + param3 * 0.5 + param2;
      }
      
      public static function easeInOutBack(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         var _loc6_:Number = !Boolean(param5) || isNaN(param5.overshoot)?1.70158:Number(param5.overshoot);
         param1 = param1 / (param4 / 2);
         if(_loc7_ < 1)
         {
            _loc6_ = _loc6_ * 1.525;
            return param3 / 2 * (param1 * param1 * ((_loc7_ + 1) * param1 - _loc6_)) + param2;
         }
         param1 = param1 - 2;
         _loc6_ = _loc6_ * 1.525;
         return param3 / 2 * (_loc7_ * param1 * ((_loc7_ + 1) * param1 + _loc6_) + 2) + param2;
      }
      
      public static function method_79(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         if(param1 < param4 / 2)
         {
            return method_45(param1 * 2,param2,param3 / 2,param4,param5);
         }
         return method_40(param1 * 2 - param4,param2 + param3 / 2,param3 / 2,param4,param5);
      }
      
      public static function method_56(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         return param3 * param1 / param4 + param2;
      }
      
      public static function easeOutBack(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         var _loc6_:Number = !Boolean(param5) || isNaN(param5.overshoot)?1.70158:Number(param5.overshoot);
         param1 = param1 / param4 - 1;
         return param3 * (_loc7_ * param1 * ((_loc6_ + 1) * param1 + _loc6_) + 1) + param2;
      }
      
      public static function method_70(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         return -param3 / 2 * (Math.cos(Math.PI * param1 / param4) - 1) + param2;
      }
      
      public static function easeInBack(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         var _loc6_:Number = !Boolean(param5) || isNaN(param5.overshoot)?1.70158:Number(param5.overshoot);
         param1 = param1 / param4;
         return param3 * _loc7_ * param1 * ((_loc6_ + 1) * param1 - _loc6_) + param2;
      }
      
      public static function easeInQuart(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         return param3 * (param1 = param1 / param4) * param1 * param1 * param1 + param2;
      }
      
      public static function method_68(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         if(param1 < param4 / 2)
         {
            return method_38(param1 * 2,param2,param3 / 2,param4,param5);
         }
         return method_46(param1 * 2 - param4,param2 + param3 / 2,param3 / 2,param4,param5);
      }
      
      public static function method_83(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         if(param1 < param4 / 2)
         {
            return method_30(param1 * 2,param2,param3 / 2,param4,param5);
         }
         return method_34(param1 * 2 - param4,param2 + param3 / 2,param3 / 2,param4,param5);
      }
      
      public static function init() : void
      {
         class_12.method_26(class_2.method_14(-1820302420),method_56);
         class_12.method_26("linear",method_56);
         class_12.method_26(class_2.method_14(-1820302583),method_53);
         class_12.method_26(class_2.method_14(-1820302566),method_49);
         class_12.method_26(class_2.method_14(-1820302478),method_81);
         class_12.method_26(class_2.method_14(-1820302677),method_72);
         class_12.method_26(class_2.method_14(-1820302715),method_40);
         class_12.method_26(class_2.method_14(-1820302620),method_45);
         class_12.method_26(class_2.method_14(-1820302837),method_74);
         class_12.method_26(class_2.method_14(-1820302612),method_79);
         class_12.method_26(class_2.method_14(-1820302830),easeInQuart);
         class_12.method_26(class_2.method_14(-1820302657),method_48);
         class_12.method_26(class_2.method_14(-1820302511),method_66);
         class_12.method_26(class_2.method_14(-1820302724),method_71);
         class_12.method_26(class_2.method_14(-1820302827),method_46);
         class_12.method_26(class_2.method_14(-1820302783),method_38);
         class_12.method_26(class_2.method_14(-1820302517),method_69);
         class_12.method_26(class_2.method_14(-1820302701),method_68);
         class_12.method_26(class_2.method_14(-1820302423),easeInSine);
         class_12.method_26(class_2.method_14(-1820302588),method_50);
         class_12.method_26(class_2.method_14(-1820302739),method_70);
         class_12.method_26(class_2.method_14(-1820302552),method_77);
         class_12.method_26(class_2.method_14(-1820302734),method_39);
         class_12.method_26(class_2.method_14(-1820302726),method_44);
         class_12.method_26(class_2.method_14(-1820302797),easeInOutCirc);
         class_12.method_26(class_2.method_14(-1820302835),method_82);
         class_12.method_26(class_2.method_14(-1820302434),method_42);
         class_12.method_26(class_2.method_14(-1820302713),method_43);
         class_12.method_26(class_2.method_14(-1820302576),easeInOutExpo);
         class_12.method_26(class_2.method_14(-1820302609),method_80);
         class_12.method_26(class_2.method_14(-1820302401),method_37);
         class_12.method_26(class_2.method_14(-1820302781),easeOutElastic);
         class_12.method_26(class_2.method_14(-1820302564),method_84);
         class_12.method_26(class_2.method_14(-1820302691),method_78);
         class_12.method_26(class_2.method_14(-1820302433),easeInBack);
         class_12.method_26(class_2.method_14(-1820302573),easeOutBack);
         class_12.method_26(class_2.method_14(-1820302555),easeInOutBack);
         class_12.method_26(class_2.method_14(-1820302696),method_67);
         class_12.method_26(class_2.method_14(-1820302738),method_34);
         class_12.method_26(class_2.method_14(-1820302429),method_30);
         class_12.method_26(class_2.method_14(-1820302735),method_86);
         class_12.method_26(class_2.method_14(-1820302527),method_83);
      }
      
      public static function method_43(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         return param1 == param4?Number(param2 + param3):Number(param3 * 1.001 * (-Math.pow(2,-10 * param1 / param4) + 1) + param2);
      }
      
      public static function method_67(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         if(param1 < param4 / 2)
         {
            return easeOutBack(param1 * 2,param2,param3 / 2,param4,param5);
         }
         return easeInBack(param1 * 2 - param4,param2 + param3 / 2,param3 / 2,param4,param5);
      }
      
      public static function method_42(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         return param1 == 0?Number(param2):Number(param3 * Math.pow(2,10 * (param1 / param4 - 1)) + param2 - param3 * 0.001);
      }
      
      public static function method_40(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         return param3 * (param1 = param1 / param4) * param1 * param1 + param2;
      }
      
      public static function method_46(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         return param3 * (param1 = param1 / param4) * param1 * param1 * param1 * param1 + param2;
      }
      
      public static function easeInOutCirc(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         param1 = param1 / (param4 / 2);
         if(_loc6_ < 1)
         {
            return -param3 / 2 * (Math.sqrt(1 - param1 * param1) - 1) + param2;
         }
         return param3 / 2 * (Math.sqrt(1 - (param1 = Number(param1 - 2)) * param1) + 1) + param2;
      }
      
      public static function method_53(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         return param3 * (param1 = param1 / param4) * param1 + param2;
      }
      
      public static function method_34(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         return param3 - method_30(param4 - param1,0,param3,param4) + param2;
      }
      
      public static function method_80(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         if(param1 < param4 / 2)
         {
            return method_43(param1 * 2,param2,param3 / 2,param4,param5);
         }
         return method_42(param1 * 2 - param4,param2 + param3 / 2,param3 / 2,param4,param5);
      }
      
      public static function method_48(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         param1 = param1 / param4 - 1;
         return -param3 * (_loc6_ * param1 * param1 * param1 - 1) + param2;
      }
      
      public static function easeInSine(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         return -param3 * Math.cos(param1 / param4 * (Math.PI / 2)) + param3 + param2;
      }
      
      public static function method_66(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         param1 = param1 / (param4 / 2);
         if(_loc6_ < 1)
         {
            return param3 / 2 * param1 * param1 * param1 * param1 + param2;
         }
         param1 = param1 - 2;
         return -param3 / 2 * (_loc6_ * param1 * param1 * param1 - 2) + param2;
      }
      
      public static function method_49(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         return -param3 * (param1 = param1 / param4) * (param1 - 2) + param2;
      }
      
      public static function method_78(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         if(param1 < param4 / 2)
         {
            return easeOutElastic(param1 * 2,param2,param3 / 2,param4,param5);
         }
         return method_37(param1 * 2 - param4,param2 + param3 / 2,param3 / 2,param4,param5);
      }
      
      public static function method_37(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         var _loc7_:Number = NaN;
         if(param1 == 0)
         {
            return param2;
         }
         param1 = param1 / param4;
         if(_loc9_ == 1)
         {
            return param2 + param3;
         }
         var _loc6_:Number = !Boolean(param5) || isNaN(param5.period)?Number(param4 * 0.3):Number(param5.period);
         var _loc8_:Number = !Boolean(param5) || isNaN(param5.amplitude)?0:Number(param5.amplitude);
         if(!Boolean(_loc8_) || _loc8_ < Math.abs(param3))
         {
            _loc8_ = param3;
            _loc7_ = _loc6_ / 4;
         }
         else
         {
            _loc7_ = _loc6_ / (2 * Math.PI) * Math.asin(param3 / _loc8_);
         }
         return -(_loc8_ * Math.pow(2,10 * param1--) * Math.sin((param1 * param4 - _loc7_) * (2 * Math.PI) / _loc6_)) + param2;
      }
      
      public static function method_45(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         param1 = param1 / param4 - 1;
         return param3 * (_loc6_ * param1 * param1 + 1) + param2;
      }
      
      public static function method_38(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         param1 = param1 / param4 - 1;
         return param3 * (_loc6_ * param1 * param1 * param1 * param1 + 1) + param2;
      }
      
      public static function method_72(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         if(param1 < param4 / 2)
         {
            return method_49(param1 * 2,param2,param3 / 2,param4,param5);
         }
         return method_53(param1 * 2 - param4,param2 + param3 / 2,param3 / 2,param4,param5);
      }
      
      public static function method_50(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         return param3 * Math.sin(param1 / param4 * (Math.PI / 2)) + param2;
      }
      
      public static function method_74(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         param1 = param1 / (param4 / 2);
         if(_loc6_ < 1)
         {
            return param3 / 2 * param1 * param1 * param1 + param2;
         }
         param1 = param1 - 2;
         return param3 / 2 * (_loc6_ * param1 * param1 + 2) + param2;
      }
      
      public static function method_69(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         param1 = param1 / (param4 / 2);
         if(_loc6_ < 1)
         {
            return param3 / 2 * param1 * param1 * param1 * param1 * param1 + param2;
         }
         param1 = param1 - 2;
         return param3 / 2 * (_loc6_ * param1 * param1 * param1 * param1 + 2) + param2;
      }
      
      public static function method_39(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         return -param3 * (Math.sqrt(1 - (param1 = Number(param1 / param4)) * param1) - 1) + param2;
      }
      
      public static function method_77(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         if(param1 < param4 / 2)
         {
            return method_50(param1 * 2,param2,param3 / 2,param4,param5);
         }
         return easeInSine(param1 * 2 - param4,param2 + param3 / 2,param3 / 2,param4,param5);
      }
      
      public static function easeInOutExpo(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         if(param1 == 0)
         {
            return param2;
         }
         if(param1 == param4)
         {
            return param2 + param3;
         }
         param1 = param1 / (param4 / 2);
         if(_loc6_ < 1)
         {
            return param3 / 2 * Math.pow(2,10 * (param1 - 1)) + param2 - param3 * 0.0005;
         }
         return param3 / 2 * 1.0005 * (-Math.pow(2,-10 * --param1) + 2) + param2;
      }
      
      public static function easeOutElastic(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         var _loc7_:Number = NaN;
         if(param1 == 0)
         {
            return param2;
         }
         param1 = param1 / param4;
         if(_loc9_ == 1)
         {
            return param2 + param3;
         }
         var _loc6_:Number = !Boolean(param5) || isNaN(param5.period)?Number(param4 * 0.3):Number(param5.period);
         var _loc8_:Number = !Boolean(param5) || isNaN(param5.amplitude)?0:Number(param5.amplitude);
         if(!Boolean(_loc8_) || _loc8_ < Math.abs(param3))
         {
            _loc8_ = param3;
            _loc7_ = _loc6_ / 4;
         }
         else
         {
            _loc7_ = _loc6_ / (2 * Math.PI) * Math.asin(param3 / _loc8_);
         }
         return _loc8_ * Math.pow(2,-10 * param1) * Math.sin((param1 * param4 - _loc7_) * (2 * Math.PI) / _loc6_) + param3 + param2;
      }
      
      public static function method_44(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         return param3 * Math.sqrt(1 - (param1 = Number(param1 / param4 - 1)) * param1) + param2;
      }
      
      public static function method_71(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         if(param1 < param4 / 2)
         {
            return method_48(param1 * 2,param2,param3 / 2,param4,param5);
         }
         return easeInQuart(param1 * 2 - param4,param2 + param3 / 2,param3 / 2,param4,param5);
      }
      
      public static function method_82(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         if(param1 < param4 / 2)
         {
            return method_44(param1 * 2,param2,param3 / 2,param4,param5);
         }
         return method_39(param1 * 2 - param4,param2 + param3 / 2,param3 / 2,param4,param5);
      }
   }
}
