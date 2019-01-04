package zpp_nape.phys
{
   import nape.constraint.class_218;
   import nape.geom.Vec2;
   import nape.geom.Vec3;
   import package_26.class_227;
   import package_29.Body;
   import package_29.class_198;
   import package_29.class_205;
   import package_32.Shape;
   import package_32.class_230;
   import package_35.class_238;
   import zpp_nape.constraint.ZPP_Constraint;
   import zpp_nape.dynamics.ZPP_Arbiter;
   import zpp_nape.geom.ZPP_AABB;
   import zpp_nape.geom.ZPP_Vec2;
   import zpp_nape.shape.ZPP_Circle;
   import zpp_nape.shape.ZPP_Polygon;
   import zpp_nape.shape.ZPP_Shape;
   import zpp_nape.space.ZPP_AABBPair;
   import zpp_nape.space.ZPP_Component;
   import zpp_nape.space.ZPP_Space;
   import zpp_nape.util.ZNPNode_ZPP_Arbiter;
   import zpp_nape.util.ZNPNode_ZPP_Body;
   import zpp_nape.util.ZNPNode_ZPP_Constraint;
   import zpp_nape.util.ZNPNode_ZPP_Shape;
   import zpp_nape.util.ZPP_Set_ZPP_Body;
   import zpp_nape.util.ZPP_ShapeList;
   import zpp_nape.util.class_219;
   import zpp_nape.util.class_223;
   import zpp_nape.util.class_254;
   import zpp_nape.util.class_287;
   import zpp_nape.util.class_291;
   import zpp_nape.util.class_292;
   
   public final class ZPP_Body extends ZPP_Interactor
   {
      
      public static var var_406:Array = null;
      
      public static var var_494:class_291 = null;
      
      public static var var_397:ZPP_Set_ZPP_Body = null;
      
      public static var var_975:int = 0;
       
      
      public var var_139:Boolean;
      
      public var var_437:Boolean;
      
      public var var_140:Boolean;
      
      public var var_553:Boolean;
      
      public var var_486:Boolean;
      
      public var var_555:Boolean;
      
      public var var_113:Boolean;
      
      public var var_149:Boolean;
      
      public var var_393:Vec3;
      
      public var var_116:Vec2;
      
      public var var_303:Vec2;
      
      public var var_313:Vec2;
      
      public var var_222:class_230;
      
      public var var_245:Vec2;
      
      public var var_115:Vec2;
      
      public var var_316:Vec2;
      
      public var var_312:Vec2;
      
      public var var_185:class_218;
      
      public var var_174:class_227;
      
      public var var_100:Number;
      
      public var var_99:Number;
      
      public var name_29:Boolean;
      
      public var var_105:Number;
      
      public var var_104:Number;
      
      public var type:int;
      
      public var name_63:Number;
      
      public var var_191:Number;
      
      public var var_176:Number;
      
      public var var_258:Number;
      
      public var var_273:Boolean;
      
      public var var_388:Number;
      
      public var var_375:Number;
      
      public var space:ZPP_Space;
      
      public var var_264:Number;
      
      public var var_194:Number;
      
      public var shapes:class_292;
      
      public var var_93:Number;
      
      public var var_448:Number;
      
      public var var_315:Number;
      
      public var var_306:Number;
      
      public var var_96:Number;
      
      public var var_95:Number;
      
      public var outer:Body;
      
      public var var_408:Boolean;
      
      public var var_424:Boolean;
      
      public var massMode:int;
      
      public var mass:Number;
      
      public var var_81:Number;
      
      public var var_82:Number;
      
      public var var_274:Number;
      
      public var var_272:Number;
      
      public var var_261:Boolean;
      
      public var var_237:Number;
      
      public var inertiaMode:int;
      
      public var inertia:Number;
      
      public var var_123:Number;
      
      public var var_136:Number;
      
      public var gravMassScale:Number;
      
      public var gravMassMode:int;
      
      public var gravMass:Number;
      
      public var var_474:int;
      
      public var var_396:Number;
      
      public var var_400:Number;
      
      public var name_64:Boolean;
      
      public var name_19:class_287;
      
      public var compound:ZPP_Compound;
      
      public var var_112:ZPP_Component;
      
      public var var_263:Number;
      
      public var var_384:Number;
      
      public var var_478:Boolean;
      
      public var bullet:Boolean;
      
      public var var_83:Number;
      
      public var var_84:Number;
      
      public var name_12:class_254;
      
      public var var_94:Number;
      
      public var name_3:ZPP_AABB;
      
      public function ZPP_Body()
      {
         var _loc3_:* = null as ZPP_AABB;
         var_116 = null;
         var_115 = null;
         var_139 = false;
         var_100 = 0;
         var_99 = 0;
         var_140 = false;
         var_81 = 0;
         var_82 = 0;
         var_149 = false;
         name_3 = null;
         var_408 = false;
         var_194 = 0;
         var_136 = 0;
         var_384 = 0;
         var_553 = false;
         inertia = 0;
         inertiaMode = 0;
         var_486 = false;
         gravMassScale = 0;
         gravMassMode = 0;
         var_555 = false;
         gravMass = 0;
         var_424 = false;
         var_263 = 0;
         var_264 = 0;
         var_123 = 0;
         massMode = 0;
         var_437 = false;
         mass = 0;
         var_113 = false;
         var_83 = 0;
         var_84 = 0;
         var_93 = 0;
         var_448 = 0;
         var_237 = 0;
         name_63 = 0;
         var_94 = 0;
         var_393 = null;
         var_313 = null;
         var_388 = 0;
         var_375 = 0;
         var_316 = null;
         var_274 = 0;
         var_272 = 0;
         var_312 = null;
         var_396 = 0;
         var_400 = 0;
         var_303 = null;
         var_105 = 0;
         var_104 = 0;
         var_245 = null;
         var_96 = 0;
         var_95 = 0;
         var_315 = 0;
         var_306 = 0;
         name_64 = false;
         var_478 = false;
         bullet = false;
         var_258 = 0;
         var_273 = false;
         var_191 = 0;
         var_176 = 0;
         var_474 = 0;
         var_112 = null;
         var_185 = null;
         name_19 = null;
         var_174 = null;
         name_12 = null;
         space = null;
         var_222 = null;
         shapes = null;
         compound = null;
         type = 0;
         name_29 = false;
         outer = null;
         super();
         var_182 = this;
         name_29 = false;
         var_478 = false;
         var_176 = 0;
         var_191 = 0;
         var_424 = false;
         var_408 = false;
         name_64 = false;
         var_95 = 0;
         var_96 = 0;
         var_93 = 0;
         var_84 = 0;
         var_83 = 1;
         var_375 = 0;
         var_388 = 0;
         var_104 = 0;
         var_105 = 0;
         var_272 = 0;
         var_274 = 0;
         var_400 = 0;
         var_396 = 0;
         var _loc2_:* = 0;
         var_237 = _loc2_;
         _loc2_ = Number(_loc2_);
         var_94 = _loc2_;
         name_63 = _loc2_;
         var_306 = 1.79e308;
         var_315 = 1.79e308;
         var_448 = 1.79e308;
         var_82 = 0;
         var_81 = 0;
         var_99 = 0;
         var_100 = 0;
         var_149 = true;
         if(ZPP_AABB.var_72 == null)
         {
            _loc3_ = new ZPP_AABB();
         }
         else
         {
            _loc3_ = ZPP_AABB.var_72;
            ZPP_AABB.var_72 = _loc3_.next;
            _loc3_.next = null;
         }
         null;
         _loc3_.var_77 = 0;
         _loc3_.var_78 = 0;
         _loc3_.var_79 = 0;
         _loc3_.var_80 = 0;
         name_3 = _loc3_;
         name_3.var_109 = true;
         name_3._validate = aabb_validate;
         massMode = class_223.var_703;
         gravMassMode = class_223.var_769;
         gravMassScale = 1;
         inertiaMode = class_223.var_800;
         name_12 = new class_254();
         name_19 = new class_287();
         shapes = new class_292();
         var_222 = ZPP_ShapeList.method_65(shapes);
         var_222.zpp_inner.var_130 = shapes_adder;
         var_222.zpp_inner.var_110 = shapes_subber;
         var_222.zpp_inner._invalidate = shapes_invalidate;
         var_261 = false;
      }
      
      public static function method_359(param1:ZPP_Body, param2:ZPP_Body) : Boolean
      {
         return param1.id < param2.id;
      }
      
      public static function name_71() : Body
      {
         §§push();
         if(class_223.var_352 == null)
         {
            class_223.var_87 = true;
            class_223.var_352 = new class_198();
            class_223.var_87 = false;
         }
         var _loc1_:Body = new §§pop().Body(class_223.var_352);
         var _loc2_:ZPP_Body = _loc1_.zpp_inner;
         _loc2_.name_29 = true;
         _loc2_.var_222.zpp_inner.var_164 = true;
         var _loc3_:* = 0;
         _loc2_.gravMass = _loc3_;
         _loc3_ = Number(_loc3_);
         _loc2_.mass = _loc3_;
         _loc3_ = Number(_loc3_);
         _loc2_.var_263 = _loc3_;
         _loc3_ = Number(_loc3_);
         _loc2_.var_123 = _loc3_;
         _loc2_.var_264 = _loc3_;
         _loc3_ = 0;
         _loc2_.inertia = _loc3_;
         _loc3_ = Number(_loc3_);
         _loc2_.var_384 = _loc3_;
         _loc3_ = Number(_loc3_);
         _loc2_.var_136 = _loc3_;
         _loc2_.var_194 = _loc3_;
         _loc2_.name_10.clear();
         return _loc1_;
      }
      
      public static function method_845() : void
      {
         if(ZPP_Body.var_397 == null)
         {
            ZPP_Body.var_397 = new ZPP_Set_ZPP_Body();
            ZPP_Body.var_397.lt = ZPP_Body.method_359;
            ZPP_Body.var_494 = new class_291();
         }
      }
      
      public static function connectedBodies_cont(param1:Body) : void
      {
         if(ZPP_Body.var_397.method_189(param1.zpp_inner))
         {
            ZPP_Body.var_494.add(param1.zpp_inner);
            param1.zpp_inner.var_474 = ZPP_Body.var_975 + 1;
         }
      }
      
      public final function vel_validate() : void
      {
         var_303.zpp_inner.x = var_104;
         var_303.zpp_inner.y = var_105;
      }
      
      public final function vel_invalidate(param1:ZPP_Vec2) : void
      {
         var_104 = param1.x;
         var_105 = param1.y;
         method_106();
      }
      
      public final function method_263() : void
      {
         if(var_139)
         {
            var_139 = false;
            method_299();
            if(var_113)
            {
               var_113 = false;
               var_84 = Number(Math.sin(var_93));
               var_83 = Number(Math.cos(var_93));
               null;
            }
            var_99 = Number(var_95 + (var_83 * var_82 - var_84 * var_81));
            var_100 = Number(var_96 + (Number(var_82 * var_84 + var_81 * var_83)));
            if(var_116 != null)
            {
               var_116.zpp_inner.x = var_99;
               var_116.zpp_inner.y = var_100;
            }
         }
      }
      
      public final function method_136() : void
      {
         var _loc2_:* = null as ZNPNode_ZPP_Shape;
         var _loc3_:* = null as ZPP_Shape;
         var _loc4_:Number = NaN;
      }
      
      public final function method_299() : void
      {
         var _loc1_:* = NaN;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = null as ZNPNode_ZPP_Shape;
         var _loc5_:* = null as ZPP_Shape;
         var _loc6_:* = null as ZPP_Polygon;
         var _loc7_:* = NaN;
         var _loc8_:* = null as ZPP_Vec2;
         var _loc9_:* = null as ZPP_Vec2;
         var _loc10_:* = null as ZPP_Vec2;
         var _loc11_:* = null as ZPP_Vec2;
         var _loc12_:Number = NaN;
         var _loc13_:* = null as ZPP_Vec2;
         if(var_140)
         {
            var_140 = false;
            _loc1_ = 0;
            _loc2_ = 0;
            _loc3_ = 0;
            _loc4_ = shapes.var_73;
            while(_loc4_ != null)
            {
               _loc5_ = _loc4_.var_74;
               if(_loc5_.var_140)
               {
                  _loc5_.var_140 = false;
                  if(_loc5_.type == class_223.var_155)
                  {
                     _loc6_ = _loc5_.name_6;
                     if(_loc6_.var_88.next.next == null)
                     {
                        _loc6_.var_82 = _loc6_.var_88.next.x;
                        _loc6_.var_81 = _loc6_.var_88.next.y;
                        null;
                     }
                     else if(_loc6_.var_88.next.next.next == null)
                     {
                        _loc6_.var_82 = _loc6_.var_88.next.x;
                        _loc6_.var_81 = _loc6_.var_88.next.y;
                        _loc7_ = 1;
                        _loc6_.var_82 = Number(_loc6_.var_82 + _loc6_.var_88.next.next.x * _loc7_);
                        _loc6_.var_81 = Number(_loc6_.var_81 + _loc6_.var_88.next.next.y * _loc7_);
                        _loc7_ = 0.5;
                        _loc6_.var_82 = _loc6_.var_82 * _loc7_;
                        _loc6_.var_81 = _loc6_.var_81 * _loc7_;
                     }
                     else
                     {
                        _loc6_.var_82 = 0;
                        _loc6_.var_81 = 0;
                        _loc7_ = 0;
                        _loc8_ = _loc6_.var_88.next;
                        _loc9_ = _loc8_;
                        _loc8_ = _loc8_.next;
                        _loc10_ = _loc8_;
                        _loc8_ = _loc8_.next;
                        while(_loc8_ != null)
                        {
                           _loc11_ = _loc8_;
                           _loc7_ = Number(Number(_loc7_ + _loc10_.x * (_loc11_.y - _loc9_.y)));
                           _loc12_ = _loc11_.y * _loc10_.x - _loc11_.x * _loc10_.y;
                           _loc6_.var_82 = Number(_loc6_.var_82 + (_loc10_.x + _loc11_.x) * _loc12_);
                           _loc6_.var_81 = Number(_loc6_.var_81 + (_loc10_.y + _loc11_.y) * _loc12_);
                           _loc9_ = _loc10_;
                           _loc10_ = _loc11_;
                           _loc8_ = _loc8_.next;
                        }
                        _loc8_ = _loc6_.var_88.next;
                        _loc11_ = _loc8_;
                        _loc7_ = Number(Number(_loc7_ + _loc10_.x * (_loc11_.y - _loc9_.y)));
                        _loc12_ = _loc11_.y * _loc10_.x - _loc11_.x * _loc10_.y;
                        _loc6_.var_82 = Number(_loc6_.var_82 + (_loc10_.x + _loc11_.x) * _loc12_);
                        _loc6_.var_81 = Number(_loc6_.var_81 + (_loc10_.y + _loc11_.y) * _loc12_);
                        _loc9_ = _loc10_;
                        _loc10_ = _loc11_;
                        _loc8_ = _loc8_.next;
                        _loc13_ = _loc8_;
                        _loc7_ = Number(Number(_loc7_ + _loc10_.x * (_loc13_.y - _loc9_.y)));
                        _loc12_ = _loc13_.y * _loc10_.x - _loc13_.x * _loc10_.y;
                        _loc6_.var_82 = Number(_loc6_.var_82 + (_loc10_.x + _loc13_.x) * _loc12_);
                        _loc6_.var_81 = Number(_loc6_.var_81 + (_loc10_.y + _loc13_.y) * _loc12_);
                        _loc7_ = Number(1 / (3 * _loc7_));
                        _loc12_ = _loc7_;
                        _loc6_.var_82 = _loc6_.var_82 * _loc12_;
                        _loc6_.var_81 = _loc6_.var_81 * _loc12_;
                     }
                  }
                  if(_loc5_.var_115 != null)
                  {
                     _loc5_.var_115.zpp_inner.x = _loc5_.var_82;
                     _loc5_.var_115.zpp_inner.y = _loc5_.var_81;
                  }
               }
               _loc5_.method_164();
               _loc7_ = Number(_loc5_.area * _loc5_.material.name_25);
               _loc1_ = Number(Number(_loc1_ + _loc5_.var_82 * _loc7_));
               _loc2_ = Number(Number(_loc2_ + _loc5_.var_81 * _loc7_));
               _loc3_ = Number(Number(_loc3_ + _loc5_.area * _loc5_.material.name_25));
               _loc4_ = _loc4_.next;
            }
            if(_loc3_ != 0)
            {
               _loc7_ = Number(1 / _loc3_);
               var_82 = _loc1_ * _loc7_;
               var_81 = _loc2_ * _loc7_;
            }
            if(var_115 != null)
            {
               var_115.zpp_inner.x = var_82;
               var_115.zpp_inner.y = var_81;
            }
            if(!!var_437 && massMode == class_223.var_703)
            {
               var_437 = false;
               var_263 = _loc3_;
               if(type == class_223.var_188)
               {
                  mass = var_263;
                  _loc7_ = Number(1 / mass);
                  var_264 = _loc7_;
                  var_123 = _loc7_;
               }
               else
               {
                  mass = 1.79e308;
                  _loc7_ = 0;
                  var_264 = _loc7_;
                  var_123 = _loc7_;
               }
            }
         }
      }
      
      public final function method_204() : void
      {
         var _loc2_:* = null as ZNPNode_ZPP_Shape;
         var _loc3_:* = null as ZPP_Shape;
         var _loc4_:Number = NaN;
      }
      
      public final function method_545() : void
      {
         if(var_486)
         {
            var_486 = false;
            if(gravMassMode == class_223.var_769)
            {
               gravMassScale = 1;
            }
            else if(gravMassMode == class_223.var_836)
            {
               method_136();
               gravMassScale = gravMass / var_263;
            }
         }
      }
      
      public final function method_354() : void
      {
         if(var_555)
         {
            var_555 = false;
            method_136();
            if(gravMassMode == class_223.var_769)
            {
               method_136();
               gravMass = var_263;
            }
            else if(gravMassMode == class_223.var_753)
            {
               method_136();
               gravMass = var_263 * gravMassScale;
            }
         }
      }
      
      public final function method_844() : void
      {
         if(var_113)
         {
            var_113 = false;
            var_84 = Number(Math.sin(var_93));
            var_83 = Number(Math.cos(var_93));
            null;
         }
      }
      
      public final function method_920() : void
      {
         var _loc1_:* = null as ZNPNode_ZPP_Shape;
         var _loc2_:* = null as ZPP_Shape;
         var _loc3_:* = null as ZPP_Circle;
         var _loc4_:* = null as ZPP_Polygon;
         var _loc5_:* = NaN;
         var _loc6_:* = null as ZPP_Vec2;
         var _loc7_:* = null as ZPP_Vec2;
         var _loc8_:* = null as ZPP_Vec2;
         var _loc9_:* = null as ZPP_Vec2;
         var _loc10_:Number = NaN;
         var _loc11_:* = null as ZPP_Vec2;
         var _loc12_:* = null as ZPP_Body;
         var _loc13_:* = null as ZPP_AABB;
         var _loc14_:* = null as ZPP_AABB;
         if(var_149)
         {
            var_149 = false;
            name_3.var_77 = 1.79e308;
            name_3.var_78 = 1.79e308;
            name_3.var_79 = -1.79e308;
            name_3.var_80 = -1.79e308;
            _loc1_ = shapes.var_73;
            while(_loc1_ != null)
            {
               _loc2_ = _loc1_.var_74;
               if(_loc2_.var_149)
               {
                  if(_loc2_.body != null)
                  {
                     _loc2_.var_149 = false;
                     if(_loc2_.type == class_223.var_131)
                     {
                        _loc3_ = _loc2_.var_102;
                        if(_loc3_.var_139)
                        {
                           if(_loc3_.body != null)
                           {
                              _loc3_.var_139 = false;
                              if(_loc3_.var_140)
                              {
                                 _loc3_.var_140 = false;
                                 if(_loc3_.type == class_223.var_155)
                                 {
                                    _loc4_ = _loc3_.name_6;
                                    if(_loc4_.var_88.next.next == null)
                                    {
                                       _loc4_.var_82 = _loc4_.var_88.next.x;
                                       _loc4_.var_81 = _loc4_.var_88.next.y;
                                       null;
                                    }
                                    else if(_loc4_.var_88.next.next.next == null)
                                    {
                                       _loc4_.var_82 = _loc4_.var_88.next.x;
                                       _loc4_.var_81 = _loc4_.var_88.next.y;
                                       _loc5_ = 1;
                                       _loc4_.var_82 = Number(_loc4_.var_82 + _loc4_.var_88.next.next.x * _loc5_);
                                       _loc4_.var_81 = Number(_loc4_.var_81 + _loc4_.var_88.next.next.y * _loc5_);
                                       _loc5_ = 0.5;
                                       _loc4_.var_82 = _loc4_.var_82 * _loc5_;
                                       _loc4_.var_81 = _loc4_.var_81 * _loc5_;
                                    }
                                    else
                                    {
                                       _loc4_.var_82 = 0;
                                       _loc4_.var_81 = 0;
                                       _loc5_ = 0;
                                       _loc6_ = _loc4_.var_88.next;
                                       _loc7_ = _loc6_;
                                       _loc6_ = _loc6_.next;
                                       _loc8_ = _loc6_;
                                       _loc6_ = _loc6_.next;
                                       while(_loc6_ != null)
                                       {
                                          _loc9_ = _loc6_;
                                          _loc5_ = Number(Number(_loc5_ + _loc8_.x * (_loc9_.y - _loc7_.y)));
                                          _loc10_ = _loc9_.y * _loc8_.x - _loc9_.x * _loc8_.y;
                                          _loc4_.var_82 = Number(_loc4_.var_82 + (_loc8_.x + _loc9_.x) * _loc10_);
                                          _loc4_.var_81 = Number(_loc4_.var_81 + (_loc8_.y + _loc9_.y) * _loc10_);
                                          _loc7_ = _loc8_;
                                          _loc8_ = _loc9_;
                                          _loc6_ = _loc6_.next;
                                       }
                                       _loc6_ = _loc4_.var_88.next;
                                       _loc9_ = _loc6_;
                                       _loc5_ = Number(Number(_loc5_ + _loc8_.x * (_loc9_.y - _loc7_.y)));
                                       _loc10_ = _loc9_.y * _loc8_.x - _loc9_.x * _loc8_.y;
                                       _loc4_.var_82 = Number(_loc4_.var_82 + (_loc8_.x + _loc9_.x) * _loc10_);
                                       _loc4_.var_81 = Number(_loc4_.var_81 + (_loc8_.y + _loc9_.y) * _loc10_);
                                       _loc7_ = _loc8_;
                                       _loc8_ = _loc9_;
                                       _loc6_ = _loc6_.next;
                                       _loc11_ = _loc6_;
                                       _loc5_ = Number(Number(_loc5_ + _loc8_.x * (_loc11_.y - _loc7_.y)));
                                       _loc10_ = _loc11_.y * _loc8_.x - _loc11_.x * _loc8_.y;
                                       _loc4_.var_82 = Number(_loc4_.var_82 + (_loc8_.x + _loc11_.x) * _loc10_);
                                       _loc4_.var_81 = Number(_loc4_.var_81 + (_loc8_.y + _loc11_.y) * _loc10_);
                                       _loc5_ = Number(1 / (3 * _loc5_));
                                       _loc10_ = _loc5_;
                                       _loc4_.var_82 = _loc4_.var_82 * _loc10_;
                                       _loc4_.var_81 = _loc4_.var_81 * _loc10_;
                                    }
                                 }
                                 if(_loc3_.var_115 != null)
                                 {
                                    _loc3_.var_115.zpp_inner.x = _loc3_.var_82;
                                    _loc3_.var_115.zpp_inner.y = _loc3_.var_81;
                                 }
                              }
                              _loc12_ = _loc3_.body;
                              if(_loc12_.var_113)
                              {
                                 _loc12_.var_113 = false;
                                 _loc12_.var_84 = Number(Math.sin(_loc12_.var_93));
                                 _loc12_.var_83 = Number(Math.cos(_loc12_.var_93));
                                 null;
                              }
                              _loc3_.var_99 = Number(_loc3_.body.var_95 + (_loc3_.body.var_83 * _loc3_.var_82 - _loc3_.body.var_84 * _loc3_.var_81));
                              _loc3_.var_100 = Number(_loc3_.body.var_96 + (Number(_loc3_.var_82 * _loc3_.body.var_84 + _loc3_.var_81 * _loc3_.body.var_83)));
                           }
                        }
                        _loc5_ = Number(_loc3_.radius);
                        _loc10_ = _loc3_.radius;
                        _loc3_.name_3.var_77 = _loc3_.var_99 - _loc5_;
                        _loc3_.name_3.var_78 = _loc3_.var_100 - _loc10_;
                        _loc3_.name_3.var_79 = Number(_loc3_.var_99 + _loc5_);
                        _loc3_.name_3.var_80 = Number(_loc3_.var_100 + _loc10_);
                     }
                     else
                     {
                        _loc4_ = _loc2_.name_6;
                        if(_loc4_.var_153)
                        {
                           if(_loc4_.body != null)
                           {
                              _loc4_.var_153 = false;
                              _loc4_.method_116();
                              _loc12_ = _loc4_.body;
                              if(_loc12_.var_113)
                              {
                                 _loc12_.var_113 = false;
                                 _loc12_.var_84 = Number(Math.sin(_loc12_.var_93));
                                 _loc12_.var_83 = Number(Math.cos(_loc12_.var_93));
                                 null;
                              }
                              _loc6_ = _loc4_.var_88.next;
                              _loc7_ = _loc4_.var_107.next;
                              while(_loc7_ != null)
                              {
                                 _loc8_ = _loc7_;
                                 _loc9_ = _loc6_;
                                 _loc6_ = _loc6_.next;
                                 _loc8_.x = Number(_loc4_.body.var_95 + (_loc4_.body.var_83 * _loc9_.x - _loc4_.body.var_84 * _loc9_.y));
                                 _loc8_.y = Number(_loc4_.body.var_96 + (Number(_loc9_.x * _loc4_.body.var_84 + _loc9_.y * _loc4_.body.var_83)));
                                 _loc7_ = _loc7_.next;
                              }
                           }
                        }
                        _loc6_ = _loc4_.var_107.next;
                        _loc4_.name_3.var_77 = _loc6_.x;
                        _loc4_.name_3.var_78 = _loc6_.y;
                        _loc4_.name_3.var_79 = _loc6_.x;
                        _loc4_.name_3.var_80 = _loc6_.y;
                        _loc7_ = _loc4_.var_107.next.next;
                        while(_loc7_ != null)
                        {
                           _loc8_ = _loc7_;
                           if(_loc8_.x < _loc4_.name_3.var_77)
                           {
                              _loc4_.name_3.var_77 = _loc8_.x;
                           }
                           if(_loc8_.x > _loc4_.name_3.var_79)
                           {
                              _loc4_.name_3.var_79 = _loc8_.x;
                           }
                           if(_loc8_.y < _loc4_.name_3.var_78)
                           {
                              _loc4_.name_3.var_78 = _loc8_.y;
                           }
                           if(_loc8_.y > _loc4_.name_3.var_80)
                           {
                              _loc4_.name_3.var_80 = _loc8_.y;
                           }
                           _loc7_ = _loc7_.next;
                        }
                     }
                  }
               }
               _loc13_ = name_3;
               _loc14_ = _loc2_.name_3;
               if(_loc14_.var_77 < _loc13_.var_77)
               {
                  _loc13_.var_77 = _loc14_.var_77;
               }
               if(_loc14_.var_79 > _loc13_.var_79)
               {
                  _loc13_.var_79 = _loc14_.var_79;
               }
               if(_loc14_.var_78 < _loc13_.var_78)
               {
                  _loc13_.var_78 = _loc14_.var_78;
               }
               if(_loc14_.var_80 > _loc13_.var_80)
               {
                  _loc13_.var_80 = _loc14_.var_80;
               }
               _loc1_ = _loc1_.next;
            }
         }
      }
      
      public final function svel_validate() : void
      {
         var_313.zpp_inner.x = var_375;
         var_313.zpp_inner.y = var_388;
      }
      
      public final function svel_invalidate(param1:ZPP_Vec2) : void
      {
         var_375 = param1.x;
         var_388 = param1.y;
         method_106();
      }
      
      public final function shapes_subber(param1:Shape) : void
      {
         if(space != null)
         {
            space.method_418(param1.zpp_inner);
         }
         param1.zpp_inner.body = null;
         param1.zpp_inner;
         ZPP_Shape.method_516();
      }
      
      public final function shapes_invalidate(param1:ZPP_ShapeList) : void
      {
         invalidate_shapes();
      }
      
      public final function shapes_adder(param1:Shape) : Boolean
      {
         var _loc2_:* = null as ZPP_Space;
         var _loc3_:* = null as ZPP_Shape;
         var _loc4_:Boolean = false;
         var _loc5_:* = null as ZPP_Body;
         if(param1.zpp_inner.body != this)
         {
            if(param1.zpp_inner.body != null)
            {
               param1.zpp_inner.body.var_222.remove(param1);
            }
            param1.zpp_inner.body = this;
            param1.zpp_inner.method_555();
            if(space != null)
            {
               _loc2_ = space;
               _loc3_ = param1.zpp_inner;
               _loc4_ = false;
               if(!_loc4_)
               {
                  _loc5_ = _loc3_.body;
                  if(!_loc5_.name_29)
                  {
                     _loc5_.var_112.var_211 = _loc2_.var_114 + (!!_loc2_.var_156?0:1);
                     if(_loc5_.type == class_223.var_216)
                     {
                        _loc5_.var_261 = true;
                     }
                     if(_loc5_.var_112.var_129)
                     {
                        _loc2_.method_115(_loc5_,false);
                     }
                  }
               }
               _loc2_.var_166.insert(_loc3_);
               _loc3_.method_121();
            }
            if(param1.zpp_inner.type == class_223.var_155)
            {
               param1.zpp_inner.name_6.method_141();
               param1.zpp_inner.name_6.method_142();
            }
            return true;
         }
         return false;
      }
      
      public final function method_416() : void
      {
         var _loc4_:* = null as Vec2;
         var _loc5_:Boolean = false;
         var _loc6_:* = null as ZPP_Vec2;
         var _loc1_:Number = var_375;
         var _loc2_:Number = var_388;
         if(class_219.poolVec2 == null)
         {
            _loc4_ = new Vec2();
         }
         else
         {
            _loc4_ = class_219.poolVec2;
            class_219.poolVec2 = _loc4_.var_72;
            _loc4_.var_72 = null;
         }
         if(_loc4_.zpp_inner == null)
         {
            _loc5_ = false;
            if(ZPP_Vec2.var_72 == null)
            {
               _loc6_ = new ZPP_Vec2();
            }
            else
            {
               _loc6_ = ZPP_Vec2.var_72;
               ZPP_Vec2.var_72 = _loc6_.next;
               _loc6_.next = null;
            }
            _loc6_.name_5 = false;
            _loc6_.var_109 = _loc5_;
            _loc6_.x = _loc1_;
            _loc6_.y = _loc2_;
            _loc4_.zpp_inner = _loc6_;
            _loc4_.zpp_inner.outer = _loc4_;
         }
         else
         {
            _loc6_ = _loc4_.zpp_inner;
            §§push(false);
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            if(_loc4_.zpp_inner.x == _loc1_)
            {
               §§pop();
               _loc6_ = _loc4_.zpp_inner;
               if(_loc6_._validate != null)
               {
                  _loc6_._validate();
               }
               §§push(_loc4_.zpp_inner.y == _loc2_);
            }
            if(!§§pop())
            {
               _loc4_.zpp_inner.x = _loc1_;
               _loc4_.zpp_inner.y = _loc2_;
               _loc6_ = _loc4_.zpp_inner;
               if(_loc6_._invalidate != null)
               {
                  _loc6_._invalidate(_loc6_);
               }
            }
            _loc4_;
         }
         _loc4_.zpp_inner.name_5 = false;
         var_313 = _loc4_;
         var_313.zpp_inner.var_120 = true;
         if(name_29)
         {
            var_313.zpp_inner.var_109 = true;
         }
         else
         {
            var_313.zpp_inner._invalidate = svel_invalidate;
            var_313.zpp_inner._validate = svel_validate;
         }
      }
      
      public final function method_361() : void
      {
         var _loc4_:* = null as Vec2;
         var _loc5_:Boolean = false;
         var _loc6_:* = null as ZPP_Vec2;
         var _loc1_:Number = var_272;
         var _loc2_:Number = var_274;
         if(class_219.poolVec2 == null)
         {
            _loc4_ = new Vec2();
         }
         else
         {
            _loc4_ = class_219.poolVec2;
            class_219.poolVec2 = _loc4_.var_72;
            _loc4_.var_72 = null;
         }
         if(_loc4_.zpp_inner == null)
         {
            _loc5_ = false;
            if(ZPP_Vec2.var_72 == null)
            {
               _loc6_ = new ZPP_Vec2();
            }
            else
            {
               _loc6_ = ZPP_Vec2.var_72;
               ZPP_Vec2.var_72 = _loc6_.next;
               _loc6_.next = null;
            }
            _loc6_.name_5 = false;
            _loc6_.var_109 = _loc5_;
            _loc6_.x = _loc1_;
            _loc6_.y = _loc2_;
            _loc4_.zpp_inner = _loc6_;
            _loc4_.zpp_inner.outer = _loc4_;
         }
         else
         {
            _loc6_ = _loc4_.zpp_inner;
            §§push(false);
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            if(_loc4_.zpp_inner.x == _loc1_)
            {
               §§pop();
               _loc6_ = _loc4_.zpp_inner;
               if(_loc6_._validate != null)
               {
                  _loc6_._validate();
               }
               §§push(_loc4_.zpp_inner.y == _loc2_);
            }
            if(!§§pop())
            {
               _loc4_.zpp_inner.x = _loc1_;
               _loc4_.zpp_inner.y = _loc2_;
               _loc6_ = _loc4_.zpp_inner;
               if(_loc6_._invalidate != null)
               {
                  _loc6_._invalidate(_loc6_);
               }
            }
            _loc4_;
         }
         _loc4_.zpp_inner.name_5 = false;
         var_316 = _loc4_;
         var_316.zpp_inner.var_120 = true;
         if(name_29)
         {
            var_316.zpp_inner.var_109 = true;
         }
         else
         {
            var_316.zpp_inner._invalidate = kinvel_invalidate;
            var_316.zpp_inner._validate = kinvel_validate;
         }
      }
      
      public final function method_639() : void
      {
         var_393 = Vec3.method_65();
         var_393.zpp_inner.var_164 = true;
         var_393.zpp_inner._validate = cvel_validate;
      }
      
      public final function method_335() : void
      {
         var _loc4_:* = null as Vec2;
         var _loc5_:Boolean = false;
         var _loc6_:* = null as ZPP_Vec2;
         var _loc1_:Number = var_104;
         var _loc2_:Number = var_105;
         if(class_219.poolVec2 == null)
         {
            _loc4_ = new Vec2();
         }
         else
         {
            _loc4_ = class_219.poolVec2;
            class_219.poolVec2 = _loc4_.var_72;
            _loc4_.var_72 = null;
         }
         if(_loc4_.zpp_inner == null)
         {
            _loc5_ = false;
            if(ZPP_Vec2.var_72 == null)
            {
               _loc6_ = new ZPP_Vec2();
            }
            else
            {
               _loc6_ = ZPP_Vec2.var_72;
               ZPP_Vec2.var_72 = _loc6_.next;
               _loc6_.next = null;
            }
            _loc6_.name_5 = false;
            _loc6_.var_109 = _loc5_;
            _loc6_.x = _loc1_;
            _loc6_.y = _loc2_;
            _loc4_.zpp_inner = _loc6_;
            _loc4_.zpp_inner.outer = _loc4_;
         }
         else
         {
            _loc6_ = _loc4_.zpp_inner;
            §§push(false);
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            if(_loc4_.zpp_inner.x == _loc1_)
            {
               §§pop();
               _loc6_ = _loc4_.zpp_inner;
               if(_loc6_._validate != null)
               {
                  _loc6_._validate();
               }
               §§push(_loc4_.zpp_inner.y == _loc2_);
            }
            if(!§§pop())
            {
               _loc4_.zpp_inner.x = _loc1_;
               _loc4_.zpp_inner.y = _loc2_;
               _loc6_ = _loc4_.zpp_inner;
               if(_loc6_._invalidate != null)
               {
                  _loc6_._invalidate(_loc6_);
               }
            }
            _loc4_;
         }
         _loc4_.zpp_inner.name_5 = false;
         var_303 = _loc4_;
         var_303.zpp_inner.var_120 = true;
         if(name_29)
         {
            var_303.zpp_inner.var_109 = true;
         }
         else
         {
            var_303.zpp_inner._invalidate = vel_invalidate;
            var_303.zpp_inner._validate = vel_validate;
         }
      }
      
      public final function method_185() : void
      {
         var _loc4_:* = null as Vec2;
         var _loc5_:Boolean = false;
         var _loc6_:* = null as ZPP_Vec2;
         var _loc1_:Number = var_95;
         var _loc2_:Number = var_96;
         if(class_219.poolVec2 == null)
         {
            _loc4_ = new Vec2();
         }
         else
         {
            _loc4_ = class_219.poolVec2;
            class_219.poolVec2 = _loc4_.var_72;
            _loc4_.var_72 = null;
         }
         if(_loc4_.zpp_inner == null)
         {
            _loc5_ = false;
            if(ZPP_Vec2.var_72 == null)
            {
               _loc6_ = new ZPP_Vec2();
            }
            else
            {
               _loc6_ = ZPP_Vec2.var_72;
               ZPP_Vec2.var_72 = _loc6_.next;
               _loc6_.next = null;
            }
            _loc6_.name_5 = false;
            _loc6_.var_109 = _loc5_;
            _loc6_.x = _loc1_;
            _loc6_.y = _loc2_;
            _loc4_.zpp_inner = _loc6_;
            _loc4_.zpp_inner.outer = _loc4_;
         }
         else
         {
            _loc6_ = _loc4_.zpp_inner;
            §§push(false);
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            if(_loc4_.zpp_inner.x == _loc1_)
            {
               §§pop();
               _loc6_ = _loc4_.zpp_inner;
               if(_loc6_._validate != null)
               {
                  _loc6_._validate();
               }
               §§push(_loc4_.zpp_inner.y == _loc2_);
            }
            if(!§§pop())
            {
               _loc4_.zpp_inner.x = _loc1_;
               _loc4_.zpp_inner.y = _loc2_;
               _loc6_ = _loc4_.zpp_inner;
               if(_loc6_._invalidate != null)
               {
                  _loc6_._invalidate(_loc6_);
               }
            }
            _loc4_;
         }
         _loc4_.zpp_inner.name_5 = false;
         var_245 = _loc4_;
         var_245.zpp_inner.var_120 = true;
         if(name_29)
         {
            var_245.zpp_inner.var_109 = true;
         }
         else
         {
            var_245.zpp_inner._invalidate = pos_invalidate;
            var_245.zpp_inner._validate = pos_validate;
         }
      }
      
      public final function method_427() : void
      {
         var _loc4_:* = null as Vec2;
         var _loc5_:Boolean = false;
         var _loc6_:* = null as ZPP_Vec2;
         var _loc1_:Number = var_400;
         var _loc2_:Number = var_396;
         if(class_219.poolVec2 == null)
         {
            _loc4_ = new Vec2();
         }
         else
         {
            _loc4_ = class_219.poolVec2;
            class_219.poolVec2 = _loc4_.var_72;
            _loc4_.var_72 = null;
         }
         if(_loc4_.zpp_inner == null)
         {
            _loc5_ = false;
            if(ZPP_Vec2.var_72 == null)
            {
               _loc6_ = new ZPP_Vec2();
            }
            else
            {
               _loc6_ = ZPP_Vec2.var_72;
               ZPP_Vec2.var_72 = _loc6_.next;
               _loc6_.next = null;
            }
            _loc6_.name_5 = false;
            _loc6_.var_109 = _loc5_;
            _loc6_.x = _loc1_;
            _loc6_.y = _loc2_;
            _loc4_.zpp_inner = _loc6_;
            _loc4_.zpp_inner.outer = _loc4_;
         }
         else
         {
            _loc6_ = _loc4_.zpp_inner;
            §§push(false);
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            if(_loc4_.zpp_inner.x == _loc1_)
            {
               §§pop();
               _loc6_ = _loc4_.zpp_inner;
               if(_loc6_._validate != null)
               {
                  _loc6_._validate();
               }
               §§push(_loc4_.zpp_inner.y == _loc2_);
            }
            if(!§§pop())
            {
               _loc4_.zpp_inner.x = _loc1_;
               _loc4_.zpp_inner.y = _loc2_;
               _loc6_ = _loc4_.zpp_inner;
               if(_loc6_._invalidate != null)
               {
                  _loc6_._invalidate(_loc6_);
               }
            }
            _loc4_;
         }
         _loc4_.zpp_inner.name_5 = false;
         var_312 = _loc4_;
         var_312.zpp_inner.var_120 = true;
         if(name_29)
         {
            var_312.zpp_inner.var_109 = true;
         }
         else
         {
            var_312.zpp_inner._invalidate = force_invalidate;
            var_312.zpp_inner._validate = force_validate;
         }
      }
      
      public final function method_120() : void
      {
         var _loc1_:* = null as ZPP_Arbiter;
         var _loc2_:* = null as class_254;
         var _loc3_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc4_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc5_:Boolean = false;
         var _loc6_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc7_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc8_:* = null as ZNPNode_ZPP_Arbiter;
         while(name_12.var_73 != null)
         {
            _loc1_ = name_12.method_105();
            _loc1_.var_265 = true;
            if(_loc1_.b2 == this)
            {
               _loc2_ = _loc1_.b1.name_12;
               _loc3_ = null;
               _loc4_ = _loc2_.var_73;
               _loc5_ = false;
               while(_loc4_ != null)
               {
                  if(_loc4_.var_74 == _loc1_)
                  {
                     if(_loc3_ == null)
                     {
                        _loc6_ = _loc2_.var_73;
                        _loc7_ = _loc6_.next;
                        _loc2_.var_73 = _loc7_;
                        if(_loc2_.var_73 == null)
                        {
                           _loc2_.var_76 = true;
                        }
                     }
                     else
                     {
                        _loc6_ = _loc3_.next;
                        _loc7_ = _loc6_.next;
                        _loc3_.next = _loc7_;
                        if(_loc7_ == null)
                        {
                           _loc2_.var_76 = true;
                        }
                     }
                     _loc8_ = _loc6_;
                     _loc8_.var_74 = null;
                     _loc8_.next = ZNPNode_ZPP_Arbiter.var_72;
                     ZNPNode_ZPP_Arbiter.var_72 = _loc8_;
                     _loc2_.name_2 = true;
                     _loc2_.length = _loc2_.length - 1;
                     _loc2_.var_76 = true;
                     _loc7_;
                     _loc5_ = true;
                     break;
                  }
                  _loc3_ = _loc4_;
                  _loc4_ = _loc4_.next;
               }
               _loc5_;
            }
            if(_loc1_.b1 == this)
            {
               _loc2_ = _loc1_.b2.name_12;
               _loc3_ = null;
               _loc4_ = _loc2_.var_73;
               _loc5_ = false;
               while(_loc4_ != null)
               {
                  if(_loc4_.var_74 == _loc1_)
                  {
                     if(_loc3_ == null)
                     {
                        _loc6_ = _loc2_.var_73;
                        _loc7_ = _loc6_.next;
                        _loc2_.var_73 = _loc7_;
                        if(_loc2_.var_73 == null)
                        {
                           _loc2_.var_76 = true;
                        }
                     }
                     else
                     {
                        _loc6_ = _loc3_.next;
                        _loc7_ = _loc6_.next;
                        _loc3_.next = _loc7_;
                        if(_loc7_ == null)
                        {
                           _loc2_.var_76 = true;
                        }
                     }
                     _loc8_ = _loc6_;
                     _loc8_.var_74 = null;
                     _loc8_.next = ZNPNode_ZPP_Arbiter.var_72;
                     ZNPNode_ZPP_Arbiter.var_72 = _loc8_;
                     _loc2_.name_2 = true;
                     _loc2_.length = _loc2_.length - 1;
                     _loc2_.var_76 = true;
                     _loc7_;
                     _loc5_ = true;
                     break;
                  }
                  _loc3_ = _loc4_;
                  _loc4_ = _loc4_.next;
               }
               _loc5_;
            }
            if(_loc1_.var_209 != null)
            {
               _loc1_.var_209.var_246 = null;
               _loc1_.var_209 = null;
            }
            _loc1_.active = false;
            space.var_217.name_2 = true;
         }
         var _loc9_:ZPP_Component = var_112;
         _loc9_.body = null;
         _loc9_.name_44 = null;
         null;
         _loc9_.next = ZPP_Component.var_72;
         ZPP_Component.var_72 = _loc9_;
         var_112 = null;
         method_197();
      }
      
      public final function method_518() : void
      {
         var _loc2_:* = null as ZPP_Arbiter;
         var _loc1_:ZNPNode_ZPP_Arbiter = name_12.var_73;
         while(_loc1_ != null)
         {
            _loc2_ = _loc1_.var_74;
            _loc2_.var_329 = true;
            _loc1_ = _loc1_.next;
         }
      }
      
      public final function pos_validate() : void
      {
         var_245.zpp_inner.x = var_95;
         var_245.zpp_inner.y = var_96;
      }
      
      public final function pos_invalidate(param1:ZPP_Vec2) : void
      {
         var _loc2_:* = null as ZNPNode_ZPP_Shape;
         var _loc3_:* = null as ZPP_Shape;
         method_112(class_2.method_14(-1820302581));
         if(!(var_95 == param1.x && var_96 == param1.y))
         {
            var_95 = param1.x;
            var_96 = param1.y;
            _loc2_ = shapes.var_73;
            while(_loc2_ != null)
            {
               _loc3_ = _loc2_.var_74;
               if(_loc3_.type == class_223.var_155)
               {
                  _loc3_.name_6.method_142();
                  _loc3_.name_6.method_141();
               }
               _loc3_.method_139();
               _loc2_ = _loc2_.next;
            }
            var_139 = true;
            method_106();
         }
      }
      
      public final function kinvel_validate() : void
      {
         var_316.zpp_inner.x = var_272;
         var_316.zpp_inner.y = var_274;
      }
      
      public final function kinvel_invalidate(param1:ZPP_Vec2) : void
      {
         var_272 = param1.x;
         var_274 = param1.y;
         method_106();
      }
      
      public final function method_533() : void
      {
         method_169();
         method_148();
      }
      
      public final function invalidate_shapes() : void
      {
         var_149 = true;
         var_140 = true;
         var_139 = true;
         method_169();
         method_148();
      }
      
      public final function method_169() : void
      {
         var_437 = true;
         method_230();
      }
      
      public final function method_148() : void
      {
         var_553 = true;
         method_106();
      }
      
      public final function method_452() : void
      {
         if(gravMassMode != class_223.var_753)
         {
            var_486 = true;
         }
         else
         {
            method_230();
         }
      }
      
      public final function method_230() : void
      {
         if(gravMassMode != class_223.var_836)
         {
            var_555 = true;
         }
         if(gravMassMode != class_223.var_753)
         {
            var_486 = true;
         }
         method_106();
      }
      
      public final function method_514(param1:int, param2:int, param3:class_205) : class_205
      {
         var _loc5_:* = null as class_205;
         var _loc6_:* = null as ZPP_Body;
         var _loc7_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc8_:* = null as ZPP_Arbiter;
         var _loc9_:* = null as ZPP_Body;
         var _loc11_:* = null as ZPP_Set_ZPP_Body;
         var _loc12_:* = null as Body;
         var _loc13_:* = null as ZPP_Set_ZPP_Body;
         var _loc14_:* = null as ZPP_Set_ZPP_Body;
         var _loc4_:* = {};
         if(ZPP_Body.var_397 == null)
         {
            ZPP_Body.var_397 = new ZPP_Set_ZPP_Body();
            ZPP_Body.var_397.lt = ZPP_Body.method_359;
            ZPP_Body.var_494 = new class_291();
         }
         null;
         if(param3 == null)
         {
            _loc5_ = new class_205();
         }
         else
         {
            _loc5_ = param3;
         }
         ZPP_Body.var_397.insert(this);
         ZPP_Body.var_494.add(this);
         var_474 = 0;
         while(ZPP_Body.var_494.var_73 != null)
         {
            _loc6_ = ZPP_Body.var_494.method_105();
            if(_loc6_.var_474 != param2)
            {
               _loc7_ = _loc6_.name_12.var_73;
               while(_loc7_ != null)
               {
                  _loc8_ = _loc7_.var_74;
                  if((_loc8_.type & param1) != 0)
                  {
                     if(_loc8_.b1 == _loc6_)
                     {
                        _loc9_ = _loc8_.b2;
                     }
                     else
                     {
                        _loc9_ = _loc8_.b1;
                     }
                     if(ZPP_Body.var_397.method_189(_loc9_))
                     {
                        ZPP_Body.var_494.add(_loc9_);
                        _loc9_.var_474 = _loc6_.var_474 + 1;
                     }
                  }
                  _loc7_ = _loc7_.next;
               }
            }
         }
         var _loc10_:ZPP_Set_ZPP_Body = ZPP_Body.var_397;
         if(_loc10_.parent == null)
         {
            null;
         }
         else
         {
            _loc11_ = _loc10_.parent;
            while(_loc11_ != null)
            {
               if(_loc11_.var_75 != null)
               {
                  _loc11_ = _loc11_.var_75;
               }
               else if(_loc11_.next != null)
               {
                  _loc11_ = _loc11_.next;
               }
               else
               {
                  _loc6_ = _loc11_.data;
                  if(_loc6_ != _loc4_)
                  {
                     _loc12_ = _loc6_.outer;
                     if(_loc5_.zpp_inner.var_111)
                     {
                        _loc5_.push(_loc12_);
                     }
                     else
                     {
                        _loc5_.unshift(_loc12_);
                     }
                  }
                  _loc13_ = _loc11_.parent;
                  if(_loc13_ != null)
                  {
                     if(_loc11_ == _loc13_.var_75)
                     {
                        _loc13_.var_75 = null;
                     }
                     else
                     {
                        _loc13_.next = null;
                     }
                     _loc11_.parent = null;
                  }
                  _loc14_ = _loc11_;
                  _loc14_.data = null;
                  _loc14_.lt = null;
                  _loc14_.name_9 = null;
                  _loc14_.next = ZPP_Set_ZPP_Body.var_72;
                  ZPP_Set_ZPP_Body.var_72 = _loc14_;
                  _loc11_ = _loc13_;
               }
            }
            _loc10_.parent = null;
         }
         return _loc5_;
      }
      
      public final function method_122() : void
      {
         method_263();
      }
      
      public final function method_626() : void
      {
         method_299();
      }
      
      public final function force_validate() : void
      {
         var_312.zpp_inner.x = var_400;
         var_312.zpp_inner.y = var_396;
      }
      
      public final function force_invalidate(param1:ZPP_Vec2) : void
      {
         var_400 = param1.x;
         var_396 = param1.y;
         method_106();
      }
      
      public final function cvel_validate() : void
      {
         var_393.zpp_inner.x = Number(var_104 + var_272);
         var_393.zpp_inner.y = Number(var_105 + var_274);
         var_393.zpp_inner.z = Number(var_94 + var_237);
      }
      
      public final function copy() : Body
      {
         var _loc2_:* = null as ZNPNode_ZPP_Shape;
         var _loc3_:* = null as ZPP_Shape;
         var _loc4_:* = null as class_230;
         var _loc5_:* = null as Shape;
         var _loc1_:ZPP_Body = new Body().zpp_inner;
         _loc1_.type = type;
         _loc1_.var_478 = var_478;
         _loc1_.name_64 = name_64;
         _loc2_ = shapes.var_73;
         while(_loc2_ != null)
         {
            _loc3_ = _loc2_.var_74;
            _loc4_ = _loc1_.outer.zpp_inner.var_222;
            _loc5_ = _loc3_.outer.copy();
            if(_loc4_.zpp_inner.var_111)
            {
               _loc4_.push(_loc5_);
            }
            else
            {
               _loc4_.unshift(_loc5_);
            }
            _loc2_ = _loc2_.next;
         }
         _loc1_.var_95 = var_95;
         _loc1_.var_96 = var_96;
         _loc1_.var_104 = var_104;
         _loc1_.var_105 = var_105;
         _loc1_.var_400 = var_400;
         _loc1_.var_396 = var_396;
         _loc1_.var_93 = var_93;
         _loc1_.var_94 = var_94;
         _loc1_.name_63 = name_63;
         _loc1_.var_272 = var_272;
         _loc1_.var_274 = var_274;
         _loc1_.var_237 = var_237;
         _loc1_.var_375 = var_375;
         _loc1_.var_388 = var_388;
         if(!var_113)
         {
            _loc1_.var_84 = var_84;
            _loc1_.var_83 = var_83;
         }
         else
         {
            _loc1_.var_113 = true;
            _loc2_ = _loc1_.shapes.var_73;
            while(_loc2_ != null)
            {
               _loc3_ = _loc2_.var_74;
               if(_loc3_.type == class_223.var_155)
               {
                  _loc3_.name_6.method_142();
                  _loc3_.name_6.method_141();
               }
               _loc3_.method_139();
               _loc2_ = _loc2_.next;
            }
            _loc1_.var_139 = true;
         }
         _loc1_.var_93 = var_93;
         _loc1_.massMode = massMode;
         _loc1_.gravMassMode = gravMassMode;
         _loc1_.inertiaMode = inertiaMode;
         _loc1_.var_408 = var_408;
         _loc1_.var_424 = var_424;
         _loc1_.var_263 = var_263;
         _loc1_.var_384 = var_384;
         if(!var_437)
         {
            _loc1_.mass = mass;
         }
         else
         {
            _loc1_.method_169();
         }
         if(!var_555)
         {
            _loc1_.gravMass = gravMass;
         }
         else
         {
            _loc1_.method_230();
         }
         if(!var_486)
         {
            _loc1_.gravMassScale = gravMassScale;
         }
         else
         {
            _loc1_.method_452();
         }
         if(!var_553)
         {
            _loc1_.inertia = inertia;
         }
         else
         {
            _loc1_.method_148();
         }
         if(!var_149)
         {
            _loc1_.name_3.var_77 = name_3.var_77;
            _loc1_.name_3.var_78 = name_3.var_78;
            _loc1_.name_3.var_79 = name_3.var_79;
            _loc1_.name_3.var_80 = name_3.var_80;
         }
         else
         {
            _loc1_.var_149 = true;
         }
         if(!var_140)
         {
            _loc1_.var_82 = var_82;
            _loc1_.var_81 = var_81;
         }
         else
         {
            _loc1_.var_140 = true;
            _loc1_.var_139 = true;
         }
         if(!var_139)
         {
            _loc1_.var_99 = var_99;
            _loc1_.var_100 = var_100;
         }
         else
         {
            _loc1_.var_139 = true;
         }
         method_184(_loc1_.outer);
         return _loc1_.outer;
      }
      
      public final function method_442(param1:int, param2:class_205) : class_205
      {
         var _loc4_:* = null as class_205;
         var _loc5_:* = null as ZPP_Body;
         var _loc6_:* = null as ZNPNode_ZPP_Constraint;
         var _loc7_:* = null as ZPP_Constraint;
         var _loc9_:* = null as ZPP_Set_ZPP_Body;
         var _loc10_:* = null as Body;
         var _loc11_:* = null as ZPP_Set_ZPP_Body;
         var _loc12_:* = null as ZPP_Set_ZPP_Body;
         var _loc3_:* = {};
         if(ZPP_Body.var_397 == null)
         {
            ZPP_Body.var_397 = new ZPP_Set_ZPP_Body();
            ZPP_Body.var_397.lt = ZPP_Body.method_359;
            ZPP_Body.var_494 = new class_291();
         }
         null;
         if(param2 == null)
         {
            _loc4_ = new class_205();
         }
         else
         {
            _loc4_ = param2;
         }
         ZPP_Body.var_494.add(this);
         ZPP_Body.var_397.insert(this);
         var_474 = 0;
         while(ZPP_Body.var_494.var_73 != null)
         {
            _loc5_ = ZPP_Body.var_494.method_105();
            if(_loc5_.var_474 != param1)
            {
               ZPP_Body.var_975 = _loc5_.var_474;
               _loc6_ = _loc5_.name_19.var_73;
               while(_loc6_ != null)
               {
                  _loc7_ = _loc6_.var_74;
                  ;
                  _loc7_.outer.method_161(ZPP_Body.connectedBodies_cont);
                  _loc6_ = _loc6_.next;
               }
            }
         }
         var _loc8_:ZPP_Set_ZPP_Body = ZPP_Body.var_397;
         if(_loc8_.parent == null)
         {
            null;
         }
         else
         {
            _loc9_ = _loc8_.parent;
            while(_loc9_ != null)
            {
               if(_loc9_.var_75 != null)
               {
                  _loc9_ = _loc9_.var_75;
               }
               else if(_loc9_.next != null)
               {
                  _loc9_ = _loc9_.next;
               }
               else
               {
                  _loc5_ = _loc9_.data;
                  if(_loc5_ != _loc3_)
                  {
                     _loc10_ = _loc5_.outer;
                     if(_loc4_.zpp_inner.var_111)
                     {
                        _loc4_.push(_loc10_);
                     }
                     else
                     {
                        _loc4_.unshift(_loc10_);
                     }
                  }
                  _loc11_ = _loc9_.parent;
                  if(_loc11_ != null)
                  {
                     if(_loc9_ == _loc11_.var_75)
                     {
                        _loc11_.var_75 = null;
                     }
                     else
                     {
                        _loc11_.next = null;
                     }
                     _loc9_.parent = null;
                  }
                  _loc12_ = _loc9_;
                  _loc12_.data = null;
                  _loc12_.lt = null;
                  _loc12_.name_9 = null;
                  _loc12_.next = ZPP_Set_ZPP_Body.var_72;
                  ZPP_Set_ZPP_Body.var_72 = _loc12_;
                  _loc9_ = _loc11_;
               }
            }
            _loc8_.parent = null;
         }
         return _loc4_;
      }
      
      public final function clear() : void
      {
         var _loc1_:* = null as ZPP_Shape;
         while(shapes.var_73 != null)
         {
            _loc1_ = shapes.method_105();
            _loc1_;
            ZPP_Shape.method_516();
            _loc1_.body = null;
         }
         invalidate_shapes();
         var_306 = 0;
         var_315 = 0;
         var_95 = 0;
         var_96 = 0;
         var_104 = 0;
         var_105 = 0;
         var_400 = 0;
         var_396 = 0;
         var_272 = 0;
         var_274 = 0;
         var_375 = 0;
         var_388 = 0;
         var _loc2_:* = 0;
         var_93 = _loc2_;
         _loc2_ = Number(_loc2_);
         var_448 = _loc2_;
         _loc2_ = Number(_loc2_);
         var_237 = _loc2_;
         _loc2_ = Number(_loc2_);
         name_63 = _loc2_;
         var_94 = _loc2_;
         var _loc3_:ZNPNode_ZPP_Shape = shapes.var_73;
         while(_loc3_ != null)
         {
            _loc1_ = _loc3_.var_74;
            if(_loc1_.type == class_223.var_155)
            {
               _loc1_.name_6.method_142();
               _loc1_.name_6.method_141();
            }
            _loc1_.method_139();
            _loc3_ = _loc3_.next;
         }
         var_139 = true;
         var_113 = true;
         _loc3_ = shapes.var_73;
         while(_loc3_ != null)
         {
            _loc1_ = _loc3_.var_74;
            if(_loc1_.type == class_223.var_155)
            {
               _loc1_.name_6.method_142();
               _loc1_.name_6.method_141();
            }
            _loc1_.method_139();
            _loc3_ = _loc3_.next;
         }
         var_139 = true;
         var_84 = 0;
         var_83 = 1;
         var_113 = false;
         massMode = class_223.var_703;
         gravMassMode = class_223.var_769;
         gravMassScale = 1;
         inertiaMode = class_223.var_800;
         var_408 = false;
         var_424 = false;
      }
      
      public final function method_610(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(type != class_223.var_188)
         {
            return var_112.var_129;
         }
         _loc2_ = class_238.var_1072;
         _loc2_ = _loc2_ * _loc2_;
         if(Number(var_104 * var_104 + var_105 * var_105) > _loc2_)
         {
            _loc3_ = false;
         }
         else
         {
            _loc4_ = 0;
            _loc5_ = 0;
            _loc4_ = Number(var_95 - var_306);
            _loc5_ = Number(var_96 - var_315);
            if(Number(_loc4_ * _loc4_ + _loc5_ * _loc5_) > 0.25 * _loc2_ * param1 * param1)
            {
               _loc3_ = false;
            }
            else
            {
               _loc4_ = 0;
               _loc5_ = 0;
               _loc4_ = Number(name_3.var_79 - name_3.var_77);
               _loc5_ = Number(name_3.var_80 - name_3.var_78);
               _loc6_ = Number(_loc4_ * _loc4_ + _loc5_ * _loc5_);
               _loc7_ = class_238.var_1067;
               _loc7_ = _loc7_ * _loc7_;
               if(4 * var_94 * var_94 * _loc6_ > _loc7_)
               {
                  _loc3_ = false;
               }
               else
               {
                  _loc8_ = var_93 - var_448;
                  if(_loc8_ * _loc8_ * _loc6_ > _loc7_ * param1 * param1)
                  {
                     _loc3_ = false;
                  }
                  else
                  {
                     _loc3_ = true;
                  }
               }
            }
         }
         if(!_loc3_)
         {
            var_112.var_211 = space.var_114;
         }
         return var_112.var_211 + class_238.sleepDelay < space.var_114;
      }
      
      public final function method_121() : void
      {
         if(ZPP_Component.var_72 == null)
         {
            var_112 = new ZPP_Component();
         }
         else
         {
            var_112 = ZPP_Component.var_72;
            ZPP_Component.var_72 = var_112.next;
            var_112.next = null;
         }
         null;
         var_112.name_75 = true;
         var_112.body = this;
         method_252();
      }
      
      public final function aabb_validate() : void
      {
         var _loc1_:* = null as ZNPNode_ZPP_Shape;
         var _loc2_:* = null as ZPP_Shape;
         var _loc3_:* = null as ZPP_Circle;
         var _loc4_:* = null as ZPP_Polygon;
         var _loc5_:* = NaN;
         var _loc6_:* = null as ZPP_Vec2;
         var _loc7_:* = null as ZPP_Vec2;
         var _loc8_:* = null as ZPP_Vec2;
         var _loc9_:* = null as ZPP_Vec2;
         var _loc10_:Number = NaN;
         var _loc11_:* = null as ZPP_Vec2;
         var _loc12_:* = null as ZPP_Body;
         var _loc13_:* = null as ZPP_AABB;
         var _loc14_:* = null as ZPP_AABB;
         if(var_149)
         {
            var_149 = false;
            name_3.var_77 = 1.79e308;
            name_3.var_78 = 1.79e308;
            name_3.var_79 = -1.79e308;
            name_3.var_80 = -1.79e308;
            _loc1_ = shapes.var_73;
            while(_loc1_ != null)
            {
               _loc2_ = _loc1_.var_74;
               if(_loc2_.var_149)
               {
                  if(_loc2_.body != null)
                  {
                     _loc2_.var_149 = false;
                     if(_loc2_.type == class_223.var_131)
                     {
                        _loc3_ = _loc2_.var_102;
                        if(_loc3_.var_139)
                        {
                           if(_loc3_.body != null)
                           {
                              _loc3_.var_139 = false;
                              if(_loc3_.var_140)
                              {
                                 _loc3_.var_140 = false;
                                 if(_loc3_.type == class_223.var_155)
                                 {
                                    _loc4_ = _loc3_.name_6;
                                    if(_loc4_.var_88.next.next == null)
                                    {
                                       _loc4_.var_82 = _loc4_.var_88.next.x;
                                       _loc4_.var_81 = _loc4_.var_88.next.y;
                                       null;
                                    }
                                    else if(_loc4_.var_88.next.next.next == null)
                                    {
                                       _loc4_.var_82 = _loc4_.var_88.next.x;
                                       _loc4_.var_81 = _loc4_.var_88.next.y;
                                       _loc5_ = 1;
                                       _loc4_.var_82 = Number(_loc4_.var_82 + _loc4_.var_88.next.next.x * _loc5_);
                                       _loc4_.var_81 = Number(_loc4_.var_81 + _loc4_.var_88.next.next.y * _loc5_);
                                       _loc5_ = 0.5;
                                       _loc4_.var_82 = _loc4_.var_82 * _loc5_;
                                       _loc4_.var_81 = _loc4_.var_81 * _loc5_;
                                    }
                                    else
                                    {
                                       _loc4_.var_82 = 0;
                                       _loc4_.var_81 = 0;
                                       _loc5_ = 0;
                                       _loc6_ = _loc4_.var_88.next;
                                       _loc7_ = _loc6_;
                                       _loc6_ = _loc6_.next;
                                       _loc8_ = _loc6_;
                                       _loc6_ = _loc6_.next;
                                       while(_loc6_ != null)
                                       {
                                          _loc9_ = _loc6_;
                                          _loc5_ = Number(Number(_loc5_ + _loc8_.x * (_loc9_.y - _loc7_.y)));
                                          _loc10_ = _loc9_.y * _loc8_.x - _loc9_.x * _loc8_.y;
                                          _loc4_.var_82 = Number(_loc4_.var_82 + (_loc8_.x + _loc9_.x) * _loc10_);
                                          _loc4_.var_81 = Number(_loc4_.var_81 + (_loc8_.y + _loc9_.y) * _loc10_);
                                          _loc7_ = _loc8_;
                                          _loc8_ = _loc9_;
                                          _loc6_ = _loc6_.next;
                                       }
                                       _loc6_ = _loc4_.var_88.next;
                                       _loc9_ = _loc6_;
                                       _loc5_ = Number(Number(_loc5_ + _loc8_.x * (_loc9_.y - _loc7_.y)));
                                       _loc10_ = _loc9_.y * _loc8_.x - _loc9_.x * _loc8_.y;
                                       _loc4_.var_82 = Number(_loc4_.var_82 + (_loc8_.x + _loc9_.x) * _loc10_);
                                       _loc4_.var_81 = Number(_loc4_.var_81 + (_loc8_.y + _loc9_.y) * _loc10_);
                                       _loc7_ = _loc8_;
                                       _loc8_ = _loc9_;
                                       _loc6_ = _loc6_.next;
                                       _loc11_ = _loc6_;
                                       _loc5_ = Number(Number(_loc5_ + _loc8_.x * (_loc11_.y - _loc7_.y)));
                                       _loc10_ = _loc11_.y * _loc8_.x - _loc11_.x * _loc8_.y;
                                       _loc4_.var_82 = Number(_loc4_.var_82 + (_loc8_.x + _loc11_.x) * _loc10_);
                                       _loc4_.var_81 = Number(_loc4_.var_81 + (_loc8_.y + _loc11_.y) * _loc10_);
                                       _loc5_ = Number(1 / (3 * _loc5_));
                                       _loc10_ = _loc5_;
                                       _loc4_.var_82 = _loc4_.var_82 * _loc10_;
                                       _loc4_.var_81 = _loc4_.var_81 * _loc10_;
                                    }
                                 }
                                 if(_loc3_.var_115 != null)
                                 {
                                    _loc3_.var_115.zpp_inner.x = _loc3_.var_82;
                                    _loc3_.var_115.zpp_inner.y = _loc3_.var_81;
                                 }
                              }
                              _loc12_ = _loc3_.body;
                              if(_loc12_.var_113)
                              {
                                 _loc12_.var_113 = false;
                                 _loc12_.var_84 = Number(Math.sin(_loc12_.var_93));
                                 _loc12_.var_83 = Number(Math.cos(_loc12_.var_93));
                                 null;
                              }
                              _loc3_.var_99 = Number(_loc3_.body.var_95 + (_loc3_.body.var_83 * _loc3_.var_82 - _loc3_.body.var_84 * _loc3_.var_81));
                              _loc3_.var_100 = Number(_loc3_.body.var_96 + (Number(_loc3_.var_82 * _loc3_.body.var_84 + _loc3_.var_81 * _loc3_.body.var_83)));
                           }
                        }
                        _loc5_ = Number(_loc3_.radius);
                        _loc10_ = _loc3_.radius;
                        _loc3_.name_3.var_77 = _loc3_.var_99 - _loc5_;
                        _loc3_.name_3.var_78 = _loc3_.var_100 - _loc10_;
                        _loc3_.name_3.var_79 = Number(_loc3_.var_99 + _loc5_);
                        _loc3_.name_3.var_80 = Number(_loc3_.var_100 + _loc10_);
                     }
                     else
                     {
                        _loc4_ = _loc2_.name_6;
                        if(_loc4_.var_153)
                        {
                           if(_loc4_.body != null)
                           {
                              _loc4_.var_153 = false;
                              _loc4_.method_116();
                              _loc12_ = _loc4_.body;
                              if(_loc12_.var_113)
                              {
                                 _loc12_.var_113 = false;
                                 _loc12_.var_84 = Number(Math.sin(_loc12_.var_93));
                                 _loc12_.var_83 = Number(Math.cos(_loc12_.var_93));
                                 null;
                              }
                              _loc6_ = _loc4_.var_88.next;
                              _loc7_ = _loc4_.var_107.next;
                              while(_loc7_ != null)
                              {
                                 _loc8_ = _loc7_;
                                 _loc9_ = _loc6_;
                                 _loc6_ = _loc6_.next;
                                 _loc8_.x = Number(_loc4_.body.var_95 + (_loc4_.body.var_83 * _loc9_.x - _loc4_.body.var_84 * _loc9_.y));
                                 _loc8_.y = Number(_loc4_.body.var_96 + (Number(_loc9_.x * _loc4_.body.var_84 + _loc9_.y * _loc4_.body.var_83)));
                                 _loc7_ = _loc7_.next;
                              }
                           }
                        }
                        _loc6_ = _loc4_.var_107.next;
                        _loc4_.name_3.var_77 = _loc6_.x;
                        _loc4_.name_3.var_78 = _loc6_.y;
                        _loc4_.name_3.var_79 = _loc6_.x;
                        _loc4_.name_3.var_80 = _loc6_.y;
                        _loc7_ = _loc4_.var_107.next.next;
                        while(_loc7_ != null)
                        {
                           _loc8_ = _loc7_;
                           if(_loc8_.x < _loc4_.name_3.var_77)
                           {
                              _loc4_.name_3.var_77 = _loc8_.x;
                           }
                           if(_loc8_.x > _loc4_.name_3.var_79)
                           {
                              _loc4_.name_3.var_79 = _loc8_.x;
                           }
                           if(_loc8_.y < _loc4_.name_3.var_78)
                           {
                              _loc4_.name_3.var_78 = _loc8_.y;
                           }
                           if(_loc8_.y > _loc4_.name_3.var_80)
                           {
                              _loc4_.name_3.var_80 = _loc8_.y;
                           }
                           _loc7_ = _loc7_.next;
                        }
                     }
                  }
               }
               _loc13_ = name_3;
               _loc14_ = _loc2_.name_3;
               if(_loc14_.var_77 < _loc13_.var_77)
               {
                  _loc13_.var_77 = _loc14_.var_77;
               }
               if(_loc14_.var_79 > _loc13_.var_79)
               {
                  _loc13_.var_79 = _loc14_.var_79;
               }
               if(_loc14_.var_78 < _loc13_.var_78)
               {
                  _loc13_.var_78 = _loc14_.var_78;
               }
               if(_loc14_.var_80 > _loc13_.var_80)
               {
                  _loc13_.var_80 = _loc14_.var_80;
               }
               _loc1_ = _loc1_.next;
            }
         }
      }
   }
}
