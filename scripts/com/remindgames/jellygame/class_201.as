package com.remindgames.jellygame
{
   import nape.geom.Vec2;
   import package_29.Body;
   import package_29.class_198;
   import package_31.class_197;
   import package_32.Polygon;
   import package_32.Shape;
   
   public final class class_201
   {
       
      
      public function class_201()
      {
         super();
      }
      
      public static function create(param1:class_197, param2:int = 5, param3:Number = 5, param4:Number = 5, param5:Number = 5, param6:Number = 5) : void
      {
         var _loc7_:Body = new Body(class_198.STATIC,new Vec2(0,0));
         var _loc8_:Shape = new Polygon(Polygon.rect(0,0,param2,App.const_8));
         _loc8_.name_10.add(class_204.const_9);
         _loc7_.shapes.add(_loc8_);
         _loc7_.space = param1;
         var _loc9_:Body = new Body(class_198.STATIC,new Vec2(App.const_7 - param2,0));
         var _loc10_:Shape = new Polygon(Polygon.rect(0,0,param2,App.const_8));
         _loc10_.name_10.add(class_204.const_9);
         _loc9_.shapes.add(_loc10_);
         _loc9_.space = param1;
         var _loc11_:Body = new Body(class_198.STATIC,new Vec2(0,0));
         var _loc12_:Shape = new Polygon(Polygon.rect(0,0,App.const_7,param2));
         _loc12_.name_10.add(class_204.const_9);
         _loc11_.shapes.add(_loc12_);
         _loc11_.space = param1;
         var _loc13_:Body = new Body(class_198.STATIC,new Vec2(0,App.const_8 - param2));
         var _loc14_:Shape = new Polygon(Polygon.rect(0,0,App.const_7,param2));
         _loc14_.name_10.add(class_204.const_9);
         _loc13_.shapes.add(_loc14_);
         _loc13_.space = param1;
      }
   }
}
