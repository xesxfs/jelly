package zpp_nape.shape
{
   import nape.geom.Vec2;
   import package_26.class_222;
   import package_29.class_199;
   import package_32.Shape;
   import zpp_nape.dynamics.ZPP_InteractionFilter;
   import zpp_nape.geom.ZPP_AABB;
   import zpp_nape.geom.ZPP_Vec2;
   import zpp_nape.phys.ZPP_Body;
   import zpp_nape.phys.ZPP_Interactor;
   import zpp_nape.phys.class_244;
   import zpp_nape.phys.class_265;
   import zpp_nape.space.ZPP_AABBNode;
   import zpp_nape.space.ZPP_Space;
   import zpp_nape.space.ZPP_SweepData;
   import zpp_nape.util.class_223;
   import zpp_nape.util.class_312;
   
   public class ZPP_Shape extends ZPP_Interactor
   {
      
      public static var var_406:Array = null;
       
      
      public var var_139:Boolean;
      
      public var var_420:Boolean;
      
      public var var_140:Boolean;
      
      public var var_483:Boolean;
      
      public var var_468:Boolean;
      
      public var var_149:Boolean;
      
      public var var_116:Vec2;
      
      public var var_115:Vec2;
      
      public var var_100:Number;
      
      public var var_99:Number;
      
      public var type:int;
      
      public var var_258:Number;
      
      public var var_366:Number;
      
      public var var_219:ZPP_SweepData;
      
      public var sensorEnabled:Boolean;
      
      public var var_496:class_244;
      
      public var name_6:ZPP_Polygon;
      
      public var var_144:class_312;
      
      public var outer:Shape;
      
      public var var_138:ZPP_AABBNode;
      
      public var material:class_244;
      
      public var var_81:Number;
      
      public var var_82:Number;
      
      public var inertia:Number;
      
      public var fluidProperties:class_265;
      
      public var fluidEnabled:Boolean;
      
      public var filter:ZPP_InteractionFilter;
      
      public var var_102:ZPP_Circle;
      
      public var body:ZPP_Body;
      
      public var area:Number;
      
      public var name_59:Number;
      
      public var name_3:ZPP_AABB;
      
      public function ZPP_Shape(param1:int)
      {
         var _loc2_:* = null as ZPP_AABB;
         var_149 = false;
         name_3 = null;
         var_144 = null;
         var_138 = null;
         var_219 = null;
         sensorEnabled = false;
         fluidEnabled = false;
         fluidProperties = null;
         filter = null;
         material = null;
         var_496 = null;
         name_6 = null;
         var_102 = null;
         var_366 = 0;
         var_420 = false;
         var_258 = 0;
         var_116 = null;
         var_115 = null;
         var_139 = false;
         var_100 = 0;
         var_99 = 0;
         var_140 = false;
         var_81 = 0;
         var_82 = 0;
         var_468 = false;
         name_59 = 0;
         inertia = 0;
         var_483 = false;
         area = 0;
         type = 0;
         body = null;
         outer = null;
         super();
         var_144 = new class_312();
         var_160 = this;
         type = param1;
         if(ZPP_AABB.var_72 == null)
         {
            _loc2_ = new ZPP_AABB();
         }
         else
         {
            _loc2_ = ZPP_AABB.var_72;
            ZPP_AABB.var_72 = _loc2_.next;
            _loc2_.next = null;
         }
         null;
         _loc2_.var_77 = 0;
         _loc2_.var_78 = 0;
         _loc2_.var_79 = 0;
         _loc2_.var_80 = 0;
         name_3 = _loc2_;
         name_3.var_109 = true;
         name_3._validate = aabb_validate;
         var _loc4_:Boolean = true;
         var_420 = _loc4_;
         _loc4_ = _loc4_;
         var_140 = _loc4_;
         _loc4_ = _loc4_;
         var_468 = _loc4_;
         var_483 = _loc4_;
         var_82 = 0;
         var_81 = 0;
         var_99 = 0;
         var_100 = 0;
         fluidEnabled = false;
         sensorEnabled = false;
         fluidProperties = null;
         body = null;
         var_496 = new class_244();
         var_366 = 0;
         var_258 = 0;
      }
      
      public static function method_516() : void
      {
      }
      
      public static function method_586(param1:String) : void
      {
      }
      
      public final function method_257() : void
      {
         if(var_420)
         {
            var_420 = false;
            if(type == class_223.var_131)
            {
               var_102.method_425();
            }
            else
            {
               name_6.method_425();
            }
         }
      }
      
      public final function method_164() : void
      {
         if(var_483)
         {
            var_483 = false;
            if(type == class_223.var_131)
            {
               var_102.method_422();
            }
            else
            {
               name_6.method_422();
            }
         }
      }
      
      public final function method_400() : void
      {
         if(var_468 || var_496.name_28 != material.name_28)
         {
            var_468 = false;
            var_496.name_28 = material.name_28;
            if(type == class_223.var_131)
            {
               var_102.method_369();
            }
            else
            {
               name_6.method_369();
            }
         }
      }
      
      public final function method_323(param1:class_244) : void
      {
         if(material != param1)
         {
            if(body != null && body.space != null)
            {
               if(material != null)
               {
                  material.shapes.remove(this);
               }
            }
            material = param1;
            if(body != null && body.space != null)
            {
               param1.shapes.add(this);
            }
            method_106();
            if(body != null)
            {
               body.method_518();
            }
         }
      }
      
      public final function method_219(param1:class_265) : void
      {
         if(fluidProperties != param1)
         {
            if(body != null && body.space != null)
            {
               if(fluidProperties != null)
               {
                  fluidProperties.shapes.remove(this);
               }
            }
            fluidProperties = param1;
            if(body != null && body.space != null)
            {
               param1.shapes.add(this);
            }
            if(fluidEnabled)
            {
               method_106();
            }
         }
      }
      
      public final function method_330(param1:ZPP_InteractionFilter) : void
      {
         if(filter != param1)
         {
            if(body != null && body.space != null)
            {
               if(filter != null)
               {
                  filter.shapes.remove(this);
               }
            }
            filter = param1;
            if(body != null && body.space != null)
            {
               param1.shapes.add(this);
            }
            method_106();
         }
      }
      
      public final function method_120() : void
      {
         method_197();
         material.shapes.remove(this);
         filter.shapes.remove(this);
         if(fluidProperties != null)
         {
            fluidProperties.shapes.remove(this);
         }
      }
      
      public final function method_695() : Boolean
      {
         return type == class_223.var_155;
      }
      
      public final function method_590() : Boolean
      {
         return type == class_223.var_131;
      }
      
      public final function method_139() : void
      {
         var_139 = true;
         var_149 = true;
         if(body != null)
         {
            body.var_149 = true;
         }
      }
      
      public final function method_699(param1:int) : void
      {
         var _loc2_:* = null as ZPP_Body;
         if((param1 & class_244.WAKE) != 0)
         {
            method_106();
         }
         if((param1 & class_244.var_566) != 0)
         {
            if(body != null)
            {
               body.method_518();
            }
         }
         if((param1 & class_244.var_951) != 0)
         {
            if(body != null)
            {
               _loc2_ = body;
               _loc2_.var_140 = true;
               _loc2_.var_139 = true;
               body.method_169();
               body.method_148();
            }
         }
         if((param1 & class_244.var_914) != 0)
         {
            method_183();
         }
         var_496.name_40(material);
      }
      
      public final function method_159() : void
      {
         var _loc1_:* = null as ZPP_Body;
         var_140 = true;
         method_238();
         if(type == class_223.var_131)
         {
            var_420 = true;
         }
         method_183();
         method_139();
         if(body != null)
         {
            _loc1_ = body;
            _loc1_.var_140 = true;
            _loc1_.var_139 = true;
         }
      }
      
      public final function method_702() : void
      {
         if(fluidEnabled)
         {
            method_106();
         }
      }
      
      public final function method_708() : void
      {
         method_106();
      }
      
      public final function method_238() : void
      {
         var _loc1_:* = null as ZPP_Body;
         var_483 = true;
         if(body != null)
         {
            _loc1_ = body;
            _loc1_.var_140 = true;
            _loc1_.var_139 = true;
            body.method_169();
            body.method_148();
         }
      }
      
      public final function method_183() : void
      {
         var_468 = true;
      }
      
      public final function method_122() : void
      {
         var _loc1_:* = null as ZPP_Polygon;
         var _loc2_:* = NaN;
         var _loc3_:* = null as ZPP_Vec2;
         var _loc4_:* = null as ZPP_Vec2;
         var _loc5_:* = null as ZPP_Vec2;
         var _loc6_:* = null as ZPP_Vec2;
         var _loc7_:Number = NaN;
         var _loc8_:* = null as ZPP_Vec2;
         var _loc9_:* = null as ZPP_Body;
         if(var_139)
         {
            if(body != null)
            {
               var_139 = false;
               if(var_140)
               {
                  var_140 = false;
                  if(type == class_223.var_155)
                  {
                     _loc1_ = name_6;
                     if(_loc1_.var_88.next.next == null)
                     {
                        _loc1_.var_82 = _loc1_.var_88.next.x;
                        _loc1_.var_81 = _loc1_.var_88.next.y;
                        null;
                     }
                     else if(_loc1_.var_88.next.next.next == null)
                     {
                        _loc1_.var_82 = _loc1_.var_88.next.x;
                        _loc1_.var_81 = _loc1_.var_88.next.y;
                        _loc2_ = 1;
                        _loc1_.var_82 = Number(_loc1_.var_82 + _loc1_.var_88.next.next.x * _loc2_);
                        _loc1_.var_81 = Number(_loc1_.var_81 + _loc1_.var_88.next.next.y * _loc2_);
                        _loc2_ = 0.5;
                        _loc1_.var_82 = _loc1_.var_82 * _loc2_;
                        _loc1_.var_81 = _loc1_.var_81 * _loc2_;
                     }
                     else
                     {
                        _loc1_.var_82 = 0;
                        _loc1_.var_81 = 0;
                        _loc2_ = 0;
                        _loc3_ = _loc1_.var_88.next;
                        _loc4_ = _loc3_;
                        _loc3_ = _loc3_.next;
                        _loc5_ = _loc3_;
                        _loc3_ = _loc3_.next;
                        while(_loc3_ != null)
                        {
                           _loc6_ = _loc3_;
                           _loc2_ = Number(Number(_loc2_ + _loc5_.x * (_loc6_.y - _loc4_.y)));
                           _loc7_ = _loc6_.y * _loc5_.x - _loc6_.x * _loc5_.y;
                           _loc1_.var_82 = Number(_loc1_.var_82 + (_loc5_.x + _loc6_.x) * _loc7_);
                           _loc1_.var_81 = Number(_loc1_.var_81 + (_loc5_.y + _loc6_.y) * _loc7_);
                           _loc4_ = _loc5_;
                           _loc5_ = _loc6_;
                           _loc3_ = _loc3_.next;
                        }
                        _loc3_ = _loc1_.var_88.next;
                        _loc6_ = _loc3_;
                        _loc2_ = Number(Number(_loc2_ + _loc5_.x * (_loc6_.y - _loc4_.y)));
                        _loc7_ = _loc6_.y * _loc5_.x - _loc6_.x * _loc5_.y;
                        _loc1_.var_82 = Number(_loc1_.var_82 + (_loc5_.x + _loc6_.x) * _loc7_);
                        _loc1_.var_81 = Number(_loc1_.var_81 + (_loc5_.y + _loc6_.y) * _loc7_);
                        _loc4_ = _loc5_;
                        _loc5_ = _loc6_;
                        _loc3_ = _loc3_.next;
                        _loc8_ = _loc3_;
                        _loc2_ = Number(Number(_loc2_ + _loc5_.x * (_loc8_.y - _loc4_.y)));
                        _loc7_ = _loc8_.y * _loc5_.x - _loc8_.x * _loc5_.y;
                        _loc1_.var_82 = Number(_loc1_.var_82 + (_loc5_.x + _loc8_.x) * _loc7_);
                        _loc1_.var_81 = Number(_loc1_.var_81 + (_loc5_.y + _loc8_.y) * _loc7_);
                        _loc2_ = Number(1 / (3 * _loc2_));
                        _loc7_ = _loc2_;
                        _loc1_.var_82 = _loc1_.var_82 * _loc7_;
                        _loc1_.var_81 = _loc1_.var_81 * _loc7_;
                     }
                  }
                  if(var_115 != null)
                  {
                     var_115.zpp_inner.x = var_82;
                     var_115.zpp_inner.y = var_81;
                  }
               }
               _loc9_ = body;
               if(_loc9_.var_113)
               {
                  _loc9_.var_113 = false;
                  _loc9_.var_84 = Number(Math.sin(_loc9_.var_93));
                  _loc9_.var_83 = Number(Math.cos(_loc9_.var_93));
                  null;
               }
               var_99 = Number(body.var_95 + (body.var_83 * var_82 - body.var_84 * var_81));
               var_100 = Number(body.var_96 + (Number(var_82 * body.var_84 + var_81 * body.var_83)));
            }
         }
         var_116.zpp_inner.x = var_99;
         var_116.zpp_inner.y = var_100;
      }
      
      public final function copy() : Shape
      {
         var _loc1_:* = null;
         if(type == class_223.var_131)
         {
            _loc1_ = var_102.method_398();
         }
         else
         {
            _loc1_ = name_6.method_398();
         }
         if(!var_483)
         {
            _loc1_.area = area;
            _loc1_.inertia = inertia;
         }
         else
         {
            _loc1_.method_238();
         }
         if(!var_420)
         {
            _loc1_.var_258 = var_258;
            _loc1_.var_366 = var_366;
         }
         else
         {
            _loc1_.var_420 = true;
         }
         if(!var_468)
         {
            _loc1_.name_59 = name_59;
         }
         else
         {
            _loc1_.method_183();
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
            if(_loc1_.body != null)
            {
               _loc1_.body.var_149 = true;
            }
         }
         var _loc2_:class_244 = _loc1_.material;
         _loc2_.outer = null;
         _loc2_.next = class_244.var_72;
         class_244.var_72 = _loc2_;
         var _loc3_:ZPP_InteractionFilter = _loc1_.filter;
         _loc3_.outer = null;
         _loc3_.next = ZPP_InteractionFilter.var_72;
         ZPP_InteractionFilter.var_72 = _loc3_;
         _loc1_.material = material;
         _loc1_.filter = filter;
         if(fluidProperties != null)
         {
            _loc1_.fluidProperties = fluidProperties;
         }
         _loc1_.fluidEnabled = fluidEnabled;
         _loc1_.sensorEnabled = sensorEnabled;
         if(name_21 != null)
         {
            _loc1_.name_21 = Reflect.copy(name_21);
         }
         method_184(_loc1_.outer);
         return _loc1_.outer;
      }
      
      public final function clear() : void
      {
         if(type == class_223.var_131)
         {
            var_102;
            ZPP_Circle.method_417();
         }
         else
         {
            name_6;
            ZPP_Polygon.method_417();
         }
      }
      
      public final function method_121() : void
      {
         method_252();
         material.shapes.add(this);
         filter.shapes.add(this);
         if(fluidProperties != null)
         {
            fluidProperties.shapes.add(this);
         }
      }
      
      public final function method_555() : void
      {
         method_139();
         var_149 = true;
         if(body != null)
         {
            body.var_149 = true;
         }
      }
      
      public final function aabb_validate() : void
      {
         var _loc1_:* = null as ZPP_Circle;
         var _loc2_:* = null as ZPP_Polygon;
         var _loc3_:* = NaN;
         var _loc4_:* = null as ZPP_Vec2;
         var _loc5_:* = null as ZPP_Vec2;
         var _loc6_:* = null as ZPP_Vec2;
         var _loc7_:* = null as ZPP_Vec2;
         var _loc8_:Number = NaN;
         var _loc9_:* = null as ZPP_Vec2;
         var _loc10_:* = null as ZPP_Body;
         if(var_149)
         {
            if(body != null)
            {
               var_149 = false;
               if(type == class_223.var_131)
               {
                  _loc1_ = var_102;
                  if(_loc1_.var_139)
                  {
                     if(_loc1_.body != null)
                     {
                        _loc1_.var_139 = false;
                        if(_loc1_.var_140)
                        {
                           _loc1_.var_140 = false;
                           if(_loc1_.type == class_223.var_155)
                           {
                              _loc2_ = _loc1_.name_6;
                              if(_loc2_.var_88.next.next == null)
                              {
                                 _loc2_.var_82 = _loc2_.var_88.next.x;
                                 _loc2_.var_81 = _loc2_.var_88.next.y;
                                 null;
                              }
                              else if(_loc2_.var_88.next.next.next == null)
                              {
                                 _loc2_.var_82 = _loc2_.var_88.next.x;
                                 _loc2_.var_81 = _loc2_.var_88.next.y;
                                 _loc3_ = 1;
                                 _loc2_.var_82 = Number(_loc2_.var_82 + _loc2_.var_88.next.next.x * _loc3_);
                                 _loc2_.var_81 = Number(_loc2_.var_81 + _loc2_.var_88.next.next.y * _loc3_);
                                 _loc3_ = 0.5;
                                 _loc2_.var_82 = _loc2_.var_82 * _loc3_;
                                 _loc2_.var_81 = _loc2_.var_81 * _loc3_;
                              }
                              else
                              {
                                 _loc2_.var_82 = 0;
                                 _loc2_.var_81 = 0;
                                 _loc3_ = 0;
                                 _loc4_ = _loc2_.var_88.next;
                                 _loc5_ = _loc4_;
                                 _loc4_ = _loc4_.next;
                                 _loc6_ = _loc4_;
                                 _loc4_ = _loc4_.next;
                                 while(_loc4_ != null)
                                 {
                                    _loc7_ = _loc4_;
                                    _loc3_ = Number(Number(_loc3_ + _loc6_.x * (_loc7_.y - _loc5_.y)));
                                    _loc8_ = _loc7_.y * _loc6_.x - _loc7_.x * _loc6_.y;
                                    _loc2_.var_82 = Number(_loc2_.var_82 + (_loc6_.x + _loc7_.x) * _loc8_);
                                    _loc2_.var_81 = Number(_loc2_.var_81 + (_loc6_.y + _loc7_.y) * _loc8_);
                                    _loc5_ = _loc6_;
                                    _loc6_ = _loc7_;
                                    _loc4_ = _loc4_.next;
                                 }
                                 _loc4_ = _loc2_.var_88.next;
                                 _loc7_ = _loc4_;
                                 _loc3_ = Number(Number(_loc3_ + _loc6_.x * (_loc7_.y - _loc5_.y)));
                                 _loc8_ = _loc7_.y * _loc6_.x - _loc7_.x * _loc6_.y;
                                 _loc2_.var_82 = Number(_loc2_.var_82 + (_loc6_.x + _loc7_.x) * _loc8_);
                                 _loc2_.var_81 = Number(_loc2_.var_81 + (_loc6_.y + _loc7_.y) * _loc8_);
                                 _loc5_ = _loc6_;
                                 _loc6_ = _loc7_;
                                 _loc4_ = _loc4_.next;
                                 _loc9_ = _loc4_;
                                 _loc3_ = Number(Number(_loc3_ + _loc6_.x * (_loc9_.y - _loc5_.y)));
                                 _loc8_ = _loc9_.y * _loc6_.x - _loc9_.x * _loc6_.y;
                                 _loc2_.var_82 = Number(_loc2_.var_82 + (_loc6_.x + _loc9_.x) * _loc8_);
                                 _loc2_.var_81 = Number(_loc2_.var_81 + (_loc6_.y + _loc9_.y) * _loc8_);
                                 _loc3_ = Number(1 / (3 * _loc3_));
                                 _loc8_ = _loc3_;
                                 _loc2_.var_82 = _loc2_.var_82 * _loc8_;
                                 _loc2_.var_81 = _loc2_.var_81 * _loc8_;
                              }
                           }
                           if(_loc1_.var_115 != null)
                           {
                              _loc1_.var_115.zpp_inner.x = _loc1_.var_82;
                              _loc1_.var_115.zpp_inner.y = _loc1_.var_81;
                           }
                        }
                        _loc10_ = _loc1_.body;
                        if(_loc10_.var_113)
                        {
                           _loc10_.var_113 = false;
                           _loc10_.var_84 = Number(Math.sin(_loc10_.var_93));
                           _loc10_.var_83 = Number(Math.cos(_loc10_.var_93));
                           null;
                        }
                        _loc1_.var_99 = Number(_loc1_.body.var_95 + (_loc1_.body.var_83 * _loc1_.var_82 - _loc1_.body.var_84 * _loc1_.var_81));
                        _loc1_.var_100 = Number(_loc1_.body.var_96 + (Number(_loc1_.var_82 * _loc1_.body.var_84 + _loc1_.var_81 * _loc1_.body.var_83)));
                     }
                  }
                  _loc3_ = Number(_loc1_.radius);
                  _loc8_ = _loc1_.radius;
                  _loc1_.name_3.var_77 = _loc1_.var_99 - _loc3_;
                  _loc1_.name_3.var_78 = _loc1_.var_100 - _loc8_;
                  _loc1_.name_3.var_79 = Number(_loc1_.var_99 + _loc3_);
                  _loc1_.name_3.var_80 = Number(_loc1_.var_100 + _loc8_);
               }
               else
               {
                  _loc2_ = name_6;
                  if(_loc2_.var_153)
                  {
                     if(_loc2_.body != null)
                     {
                        _loc2_.var_153 = false;
                        _loc2_.method_116();
                        _loc10_ = _loc2_.body;
                        if(_loc10_.var_113)
                        {
                           _loc10_.var_113 = false;
                           _loc10_.var_84 = Number(Math.sin(_loc10_.var_93));
                           _loc10_.var_83 = Number(Math.cos(_loc10_.var_93));
                           null;
                        }
                        _loc4_ = _loc2_.var_88.next;
                        _loc5_ = _loc2_.var_107.next;
                        while(_loc5_ != null)
                        {
                           _loc6_ = _loc5_;
                           _loc7_ = _loc4_;
                           _loc4_ = _loc4_.next;
                           _loc6_.x = Number(_loc2_.body.var_95 + (_loc2_.body.var_83 * _loc7_.x - _loc2_.body.var_84 * _loc7_.y));
                           _loc6_.y = Number(_loc2_.body.var_96 + (Number(_loc7_.x * _loc2_.body.var_84 + _loc7_.y * _loc2_.body.var_83)));
                           _loc5_ = _loc5_.next;
                        }
                     }
                  }
                  _loc4_ = _loc2_.var_107.next;
                  _loc2_.name_3.var_77 = _loc4_.x;
                  _loc2_.name_3.var_78 = _loc4_.y;
                  _loc2_.name_3.var_79 = _loc4_.x;
                  _loc2_.name_3.var_80 = _loc4_.y;
                  _loc5_ = _loc2_.var_107.next.next;
                  while(_loc5_ != null)
                  {
                     _loc6_ = _loc5_;
                     if(_loc6_.x < _loc2_.name_3.var_77)
                     {
                        _loc2_.name_3.var_77 = _loc6_.x;
                     }
                     if(_loc6_.x > _loc2_.name_3.var_79)
                     {
                        _loc2_.name_3.var_79 = _loc6_.x;
                     }
                     if(_loc6_.y < _loc2_.name_3.var_78)
                     {
                        _loc2_.name_3.var_78 = _loc6_.y;
                     }
                     if(_loc6_.y > _loc2_.name_3.var_80)
                     {
                        _loc2_.name_3.var_80 = _loc6_.y;
                     }
                     _loc5_ = _loc5_.next;
                  }
               }
            }
         }
      }
   }
}
