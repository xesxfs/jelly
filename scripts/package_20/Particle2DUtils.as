package package_20
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import org.flintparticles.common.utils.class_108;
   import org.flintparticles.common.utils.class_85;
   import package_16.class_62;
   import package_16.class_91;
   
   public final class Particle2DUtils
   {
       
      
      public function Particle2DUtils()
      {
         super();
      }
      
      public static function method_863(param1:Array, param2:DisplayObject = null, param3:class_91 = null) : Vector.<class_62>
      {
         var _loc4_:Vector.<class_62> = new Vector.<class_62>();
         var _loc5_:* = 0;
         while(_loc5_ < param1.length)
         {
            _loc4_.push(method_479(param1[_loc5_],param2,param3));
            _loc5_++;
         }
         return _loc4_;
      }
      
      public static function method_479(param1:DisplayObject, param2:DisplayObject = null, param3:class_91 = null) : Particle2D
      {
         var _loc4_:* = null;
         var _loc6_:* = null;
         var _loc7_:Number = NaN;
         if(param3)
         {
            _loc4_ = Particle2D(param3.method_258());
         }
         else
         {
            _loc4_ = new Particle2D();
         }
         if(param1.parent && param2)
         {
            _loc6_ = param2.globalToLocal(param1.localToGlobal(new Point(0,0)));
            _loc4_.x = _loc6_.x;
            _loc4_.y = _loc6_.y;
            _loc7_ = class_85.method_512(param2,class_85.method_522(param1,0));
            _loc4_.rotation = class_108.method_419(_loc7_);
            param1.parent.removeChild(param1);
         }
         else
         {
            _loc4_.x = param1.x;
            _loc4_.y = param1.y;
            _loc4_.rotation = class_108.method_419(param1.rotation);
         }
         _loc4_.image = param1;
         var _loc5_:Number = (param1.width + param1.height) / 4;
         if(_loc5_ != 0)
         {
            _loc4_.var_169 = _loc5_;
         }
         return _loc4_;
      }
      
      public static function method_780(param1:BitmapData, param2:class_91 = null, param3:Number = 0, param4:Number = 0) : Vector.<class_62>
      {
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:* = null;
         var _loc11_:* = 0;
         var _loc5_:Vector.<class_62> = new Vector.<class_62>();
         var _loc6_:int = param1.width;
         var _loc7_:int = param1.height;
         if(param2)
         {
            _loc8_ = 0;
            while(_loc8_ < _loc7_)
            {
               _loc9_ = 0;
               while(_loc9_ < _loc6_)
               {
                  _loc11_ = uint(param1.getPixel32(_loc9_,_loc8_));
                  if(_loc11_ >>> 24 > 0)
                  {
                     _loc10_ = Particle2D(param2.method_258());
                     _loc10_.x = _loc9_ + param3;
                     _loc10_.y = _loc8_ + param4;
                     _loc10_.color = _loc11_;
                     _loc5_.push(_loc10_);
                  }
                  _loc9_++;
               }
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc7_)
            {
               _loc9_ = 0;
               while(_loc9_ < _loc6_)
               {
                  _loc11_ = uint(param1.getPixel32(_loc9_,_loc8_));
                  if(_loc11_ >>> 24 > 0)
                  {
                     _loc10_ = new Particle2D();
                     _loc10_.x = _loc9_ + param3;
                     _loc10_.y = _loc8_ + param4;
                     _loc10_.color = _loc11_;
                     _loc5_.push(_loc10_);
                  }
                  _loc9_++;
               }
               _loc8_++;
            }
         }
         return _loc5_;
      }
      
      public static function method_896(param1:BitmapData, param2:uint, param3:class_91 = null, param4:Number = 0, param5:Number = 0) : Vector.<class_62>
      {
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc12_:* = null;
         var _loc13_:* = null;
         var _loc14_:* = null;
         var _loc15_:* = null;
         var _loc6_:Vector.<class_62> = new Vector.<class_62>();
         var _loc7_:int = param1.width;
         var _loc8_:int = param1.height;
         var _loc11_:Number = param2 * 0.5;
         param4 = param4 + _loc11_;
         param5 = param5 + _loc11_;
         var _loc16_:Point = new Point(0,0);
         if(param3)
         {
            _loc9_ = 0;
            while(_loc9_ < _loc8_)
            {
               _loc10_ = 0;
               while(_loc10_ < _loc7_)
               {
                  _loc12_ = Particle2D(param3.method_258());
                  _loc12_.x = _loc10_ + param4;
                  _loc12_.y = _loc9_ + param5;
                  _loc13_ = new BitmapData(param2,param2,true,0);
                  _loc13_.copyPixels(param1,new Rectangle(_loc10_,_loc9_,param2,param2),_loc16_);
                  _loc14_ = new Bitmap(_loc13_);
                  _loc14_.x = -_loc11_;
                  _loc14_.y = -_loc11_;
                  _loc15_ = new Sprite();
                  _loc15_.addChild(_loc14_);
                  _loc12_.image = _loc15_;
                  _loc12_.var_169 = _loc11_;
                  _loc6_.push(_loc12_);
                  _loc10_ = _loc10_ + param2;
               }
               _loc9_ = _loc9_ + param2;
            }
         }
         else
         {
            _loc9_ = 0;
            while(_loc9_ < _loc8_)
            {
               _loc10_ = 0;
               while(_loc10_ < _loc7_)
               {
                  _loc12_ = new Particle2D();
                  _loc12_.x = _loc10_ + param4;
                  _loc12_.y = _loc9_ + param5;
                  _loc13_ = new BitmapData(param2,param2,true,0);
                  _loc13_.copyPixels(param1,new Rectangle(_loc10_,_loc9_,param2,param2),_loc16_);
                  _loc14_ = new Bitmap(_loc13_);
                  _loc14_.x = -_loc11_;
                  _loc14_.y = -_loc11_;
                  _loc15_ = new Sprite();
                  _loc15_.addChild(_loc14_);
                  _loc12_.image = _loc15_;
                  _loc12_.var_169 = _loc11_;
                  _loc6_.push(_loc12_);
                  _loc10_++;
               }
               _loc9_++;
            }
         }
         return _loc6_;
      }
   }
}
