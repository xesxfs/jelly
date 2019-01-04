package zpp_nape.space
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
   import nape.constraint.Constraint;
   import nape.constraint.class_218;
   import nape.geom.ConvexResult;
   import nape.geom.RayResult;
   import nape.geom.Vec2;
   import nape.geom.class_232;
   import nape.geom.class_233;
   import nape.geom.class_236;
   import nape.geom.class_237;
   import package_26.class_222;
   import package_26.class_227;
   import package_29.Body;
   import package_29.Compound;
   import package_29.class_205;
   import package_29.class_235;
   import package_31.class_197;
   import package_31.class_225;
   import package_32.Shape;
   import package_32.class_226;
   import package_32.class_230;
   import package_34.class_224;
   import package_34.class_246;
   import package_34.class_247;
   import package_34.class_296;
   import package_34.class_298;
   import package_34.class_332;
   import package_34.class_333;
   import package_35.class_238;
   import zpp_nape.callbacks.ZPP_BodyListener;
   import zpp_nape.callbacks.ZPP_CbSet;
   import zpp_nape.callbacks.ZPP_CbSetPair;
   import zpp_nape.callbacks.ZPP_ConstraintListener;
   import zpp_nape.callbacks.ZPP_InteractionListener;
   import zpp_nape.callbacks.ZPP_Listener;
   import zpp_nape.callbacks.ZPP_OptionType;
   import zpp_nape.callbacks.class_273;
   import zpp_nape.constraint.ZPP_Constraint;
   import zpp_nape.dynamics.ZPP_Arbiter;
   import zpp_nape.dynamics.ZPP_ColArbiter;
   import zpp_nape.dynamics.ZPP_Contact;
   import zpp_nape.dynamics.ZPP_FluidArbiter;
   import zpp_nape.dynamics.ZPP_IContact;
   import zpp_nape.dynamics.ZPP_InteractionFilter;
   import zpp_nape.dynamics.ZPP_InteractionGroup;
   import zpp_nape.dynamics.ZPP_SensorArbiter;
   import zpp_nape.geom.ZPP_AABB;
   import zpp_nape.geom.ZPP_ToiEvent;
   import zpp_nape.geom.ZPP_Vec2;
   import zpp_nape.geom.class_239;
   import zpp_nape.geom.class_297;
   import zpp_nape.geom.class_304;
   import zpp_nape.phys.ZPP_Body;
   import zpp_nape.phys.ZPP_Compound;
   import zpp_nape.phys.ZPP_Interactor;
   import zpp_nape.shape.ZPP_Circle;
   import zpp_nape.shape.ZPP_Edge;
   import zpp_nape.shape.ZPP_Polygon;
   import zpp_nape.shape.ZPP_Shape;
   import zpp_nape.util.ZNPList_ZPP_CbType;
   import zpp_nape.util.ZNPNode_ConvexResult;
   import zpp_nape.util.ZNPNode_ZPP_Arbiter;
   import zpp_nape.util.ZNPNode_ZPP_Body;
   import zpp_nape.util.ZNPNode_ZPP_BodyListener;
   import zpp_nape.util.ZNPNode_ZPP_CallbackSet;
   import zpp_nape.util.ZNPNode_ZPP_CbSetPair;
   import zpp_nape.util.ZNPNode_ZPP_ColArbiter;
   import zpp_nape.util.ZNPNode_ZPP_Component;
   import zpp_nape.util.ZNPNode_ZPP_Compound;
   import zpp_nape.util.ZNPNode_ZPP_Constraint;
   import zpp_nape.util.ZNPNode_ZPP_ConstraintListener;
   import zpp_nape.util.ZNPNode_ZPP_Edge;
   import zpp_nape.util.ZNPNode_ZPP_FluidArbiter;
   import zpp_nape.util.ZNPNode_ZPP_InteractionListener;
   import zpp_nape.util.ZNPNode_ZPP_Interactor;
   import zpp_nape.util.ZNPNode_ZPP_Listener;
   import zpp_nape.util.ZNPNode_ZPP_SensorArbiter;
   import zpp_nape.util.ZNPNode_ZPP_Shape;
   import zpp_nape.util.ZNPNode_ZPP_ToiEvent;
   import zpp_nape.util.ZPP_BodyList;
   import zpp_nape.util.ZPP_CompoundList;
   import zpp_nape.util.ZPP_ConstraintList;
   import zpp_nape.util.ZPP_ListenerList;
   import zpp_nape.util.ZPP_Set_ZPP_CbSet;
   import zpp_nape.util.class_213;
   import zpp_nape.util.class_219;
   import zpp_nape.util.class_223;
   import zpp_nape.util.class_254;
   import zpp_nape.util.class_283;
   import zpp_nape.util.class_287;
   import zpp_nape.util.class_289;
   import zpp_nape.util.class_291;
   import zpp_nape.util.class_299;
   import zpp_nape.util.class_300;
   import zpp_nape.util.class_302;
   import zpp_nape.util.class_303;
   import zpp_nape.util.class_305;
   import zpp_nape.util.class_306;
   import zpp_nape.util.class_307;
   import zpp_nape.util.class_308;
   import zpp_nape.util.class_310;
   
   public final class ZPP_Space
   {
       
      
      public var var_883:class_218;
      
      public var var_850:class_205;
      
      public var var_503:class_224;
      
      public var var_184:Vec2;
      
      public var var_185:class_218;
      
      public var var_241:class_235;
      
      public var var_269:class_205;
      
      public var var_174:class_227;
      
      public var name_21;
      
      public var var_314:class_310;
      
      public var time:Number;
      
      public var var_333:class_291;
      
      public var var_114:int;
      
      public var var_595:Boolean;
      
      public var var_288:class_307;
      
      public var var_225:class_289;
      
      public var var_206:class_298;
      
      public var var_197:Number;
      
      public var outer:class_197;
      
      public var mrca2:class_213;
      
      public var mrca1:class_213;
      
      public var var_156:Boolean;
      
      public var var_221:class_287;
      
      public var live:class_291;
      
      public var name_15:class_302;
      
      public var var_297:class_291;
      
      public var var_546:ZPP_Island;
      
      public var var_252:Number;
      
      public var var_254:Number;
      
      public var var_585:Number;
      
      public var var_626:Number;
      
      public var var_217:class_299;
      
      public var var_536:class_230;
      
      public var var_371:Boolean;
      
      public var name_19:class_287;
      
      public var name_27:class_308;
      
      public var var_148:ZPP_CbSetManager;
      
      public var var_446:ZPP_CallbackSet;
      
      public var var_544:class_273;
      
      public var var_228:class_305;
      
      public var var_175:class_305;
      
      public var var_166:ZPP_Broadphase;
      
      public var name_30:class_291;
      
      public var name_71:Body;
      
      public function ZPP_Space(param1:ZPP_Vec2, param2:class_225)
      {
         var_225 = null;
         var_206 = null;
         var_371 = false;
         var_314 = null;
         var_197 = 0;
         var_536 = null;
         var_148 = null;
         var_446 = null;
         var_544 = null;
         var_503 = null;
         name_15 = null;
         var_546 = null;
         var_333 = null;
         var_883 = null;
         var_221 = null;
         var_850 = null;
         live = null;
         var_174 = null;
         var_288 = null;
         var_217 = null;
         var_175 = null;
         var_228 = null;
         var_595 = false;
         time = 0;
         var_156 = false;
         var_114 = 0;
         var_626 = 0;
         var_585 = 0;
         name_71 = null;
         var_166 = null;
         var_297 = null;
         var_185 = null;
         name_19 = null;
         var_241 = null;
         name_27 = null;
         var_269 = null;
         name_30 = null;
         var_184 = null;
         var_252 = 0;
         var_254 = 0;
         name_21 = null;
         outer = null;
         var_314 = new class_310();
         var_585 = 0.015;
         var_626 = 0.015;
         var_206 = new class_298();
         var_206.zpp_inner = new class_273();
         var_595 = true;
         var_197 = 0;
         if(param2 == null || §§pop() == class_223.var_495)
         {
            var_166 = new class_309(this);
         }
         else
         {
            §§push(param2);
            if(class_223.var_506 == null)
            {
               class_223.var_87 = true;
               class_223.var_506 = new class_225();
               class_223.var_87 = false;
            }
            if(§§pop() == class_223.var_506)
            {
               var_166 = new class_301(this);
            }
         }
         time = 0;
         if(param1 != null)
         {
            var_254 = param1.x;
            var_252 = param1.y;
         }
         else
         {
            var_254 = 0;
            var_252 = 0;
         }
         name_30 = new class_291();
         var_269 = ZPP_BodyList.method_65(name_30);
         var_269.zpp_inner.var_130 = bodies_adder;
         var_269.zpp_inner.var_110 = bodies_subber;
         name_27 = new class_308();
         var_241 = ZPP_CompoundList.method_65(name_27);
         var_241.zpp_inner.var_130 = compounds_adder;
         var_241.zpp_inner.var_110 = compounds_subber;
         var_297 = new class_291();
         var_228 = new class_305();
         var_175 = new class_305();
         var_217 = new class_299();
         var_288 = new class_307();
         var_546 = new ZPP_Island();
         live = new class_291();
         var_850 = ZPP_BodyList.method_65(live,true);
         var_333 = new class_291();
         name_19 = new class_287();
         var_185 = ZPP_ConstraintList.method_65(name_19);
         var_185.zpp_inner.var_130 = constraints_adder;
         var_185.zpp_inner.var_110 = constraints_subber;
         var_221 = new class_287();
         var_883 = ZPP_ConstraintList.method_65(var_221,true);
         name_71 = ZPP_Body.name_71();
         name_71.zpp_inner.space = this;
         var_544 = new class_273();
         var_156 = false;
         name_15 = new class_302();
         var_503 = ZPP_ListenerList.method_65(name_15);
         var_503.zpp_inner.var_130 = listeners_adder;
         var_503.zpp_inner.var_110 = listeners_subber;
         var_446 = new ZPP_CallbackSet();
         mrca1 = new class_213();
         mrca2 = new class_213();
         var_225 = new class_289();
         var_148 = new ZPP_CbSetManager(this);
      }
      
      public static function static_validation(param1:ZPP_Body) : void
      {
         var _loc2_:* = null as ZNPNode_ZPP_Shape;
         var _loc3_:* = null as ZPP_Shape;
         var _loc4_:* = null as ZPP_Circle;
         var _loc5_:* = null as ZPP_Polygon;
         var _loc6_:* = NaN;
         var _loc7_:* = null as ZPP_Vec2;
         var _loc8_:* = null as ZPP_Vec2;
         var _loc9_:* = null as ZPP_Vec2;
         var _loc10_:* = null as ZPP_Vec2;
         var _loc11_:Number = NaN;
         var _loc12_:* = null as ZPP_Vec2;
         var _loc13_:* = null as ZPP_Body;
         var _loc14_:* = null as ZPP_AABB;
         var _loc15_:* = null as ZPP_AABB;
         var _loc16_:* = null as ZNPNode_ZPP_Edge;
         var _loc17_:* = null as ZPP_Edge;
         if(param1.shapes.var_73 != null)
         {
            if(param1.var_149)
            {
               param1.var_149 = false;
               param1.name_3.var_77 = 1.79e308;
               param1.name_3.var_78 = 1.79e308;
               param1.name_3.var_79 = -1.79e308;
               param1.name_3.var_80 = -1.79e308;
               _loc2_ = param1.shapes.var_73;
               while(_loc2_ != null)
               {
                  _loc3_ = _loc2_.var_74;
                  if(_loc3_.var_149)
                  {
                     if(_loc3_.body != null)
                     {
                        _loc3_.var_149 = false;
                        if(_loc3_.type == class_223.var_131)
                        {
                           _loc4_ = _loc3_.var_102;
                           if(_loc4_.var_139)
                           {
                              if(_loc4_.body != null)
                              {
                                 _loc4_.var_139 = false;
                                 if(_loc4_.var_140)
                                 {
                                    _loc4_.var_140 = false;
                                    if(_loc4_.type == class_223.var_155)
                                    {
                                       _loc5_ = _loc4_.name_6;
                                       if(_loc5_.var_88.next.next == null)
                                       {
                                          _loc5_.var_82 = _loc5_.var_88.next.x;
                                          _loc5_.var_81 = _loc5_.var_88.next.y;
                                          null;
                                       }
                                       else if(_loc5_.var_88.next.next.next == null)
                                       {
                                          _loc5_.var_82 = _loc5_.var_88.next.x;
                                          _loc5_.var_81 = _loc5_.var_88.next.y;
                                          _loc6_ = 1;
                                          _loc5_.var_82 = Number(_loc5_.var_82 + _loc5_.var_88.next.next.x * _loc6_);
                                          _loc5_.var_81 = Number(_loc5_.var_81 + _loc5_.var_88.next.next.y * _loc6_);
                                          _loc6_ = 0.5;
                                          _loc5_.var_82 = _loc5_.var_82 * _loc6_;
                                          _loc5_.var_81 = _loc5_.var_81 * _loc6_;
                                       }
                                       else
                                       {
                                          _loc5_.var_82 = 0;
                                          _loc5_.var_81 = 0;
                                          _loc6_ = 0;
                                          _loc7_ = _loc5_.var_88.next;
                                          _loc8_ = _loc7_;
                                          _loc7_ = _loc7_.next;
                                          _loc9_ = _loc7_;
                                          _loc7_ = _loc7_.next;
                                          while(_loc7_ != null)
                                          {
                                             _loc10_ = _loc7_;
                                             _loc6_ = Number(Number(_loc6_ + _loc9_.x * (_loc10_.y - _loc8_.y)));
                                             _loc11_ = _loc10_.y * _loc9_.x - _loc10_.x * _loc9_.y;
                                             _loc5_.var_82 = Number(_loc5_.var_82 + (_loc9_.x + _loc10_.x) * _loc11_);
                                             _loc5_.var_81 = Number(_loc5_.var_81 + (_loc9_.y + _loc10_.y) * _loc11_);
                                             _loc8_ = _loc9_;
                                             _loc9_ = _loc10_;
                                             _loc7_ = _loc7_.next;
                                          }
                                          _loc7_ = _loc5_.var_88.next;
                                          _loc10_ = _loc7_;
                                          _loc6_ = Number(Number(_loc6_ + _loc9_.x * (_loc10_.y - _loc8_.y)));
                                          _loc11_ = _loc10_.y * _loc9_.x - _loc10_.x * _loc9_.y;
                                          _loc5_.var_82 = Number(_loc5_.var_82 + (_loc9_.x + _loc10_.x) * _loc11_);
                                          _loc5_.var_81 = Number(_loc5_.var_81 + (_loc9_.y + _loc10_.y) * _loc11_);
                                          _loc8_ = _loc9_;
                                          _loc9_ = _loc10_;
                                          _loc7_ = _loc7_.next;
                                          _loc12_ = _loc7_;
                                          _loc6_ = Number(Number(_loc6_ + _loc9_.x * (_loc12_.y - _loc8_.y)));
                                          _loc11_ = _loc12_.y * _loc9_.x - _loc12_.x * _loc9_.y;
                                          _loc5_.var_82 = Number(_loc5_.var_82 + (_loc9_.x + _loc12_.x) * _loc11_);
                                          _loc5_.var_81 = Number(_loc5_.var_81 + (_loc9_.y + _loc12_.y) * _loc11_);
                                          _loc6_ = Number(1 / (3 * _loc6_));
                                          _loc11_ = _loc6_;
                                          _loc5_.var_82 = _loc5_.var_82 * _loc11_;
                                          _loc5_.var_81 = _loc5_.var_81 * _loc11_;
                                       }
                                    }
                                    if(_loc4_.var_115 != null)
                                    {
                                       _loc4_.var_115.zpp_inner.x = _loc4_.var_82;
                                       _loc4_.var_115.zpp_inner.y = _loc4_.var_81;
                                    }
                                 }
                                 _loc13_ = _loc4_.body;
                                 if(_loc13_.var_113)
                                 {
                                    _loc13_.var_113 = false;
                                    _loc13_.var_84 = Number(Math.sin(_loc13_.var_93));
                                    _loc13_.var_83 = Number(Math.cos(_loc13_.var_93));
                                    null;
                                 }
                                 _loc4_.var_99 = Number(_loc4_.body.var_95 + (_loc4_.body.var_83 * _loc4_.var_82 - _loc4_.body.var_84 * _loc4_.var_81));
                                 _loc4_.var_100 = Number(_loc4_.body.var_96 + (Number(_loc4_.var_82 * _loc4_.body.var_84 + _loc4_.var_81 * _loc4_.body.var_83)));
                              }
                           }
                           _loc6_ = Number(_loc4_.radius);
                           _loc11_ = _loc4_.radius;
                           _loc4_.name_3.var_77 = _loc4_.var_99 - _loc6_;
                           _loc4_.name_3.var_78 = _loc4_.var_100 - _loc11_;
                           _loc4_.name_3.var_79 = Number(_loc4_.var_99 + _loc6_);
                           _loc4_.name_3.var_80 = Number(_loc4_.var_100 + _loc11_);
                        }
                        else
                        {
                           _loc5_ = _loc3_.name_6;
                           if(_loc5_.var_153)
                           {
                              if(_loc5_.body != null)
                              {
                                 _loc5_.var_153 = false;
                                 _loc5_.method_116();
                                 _loc13_ = _loc5_.body;
                                 if(_loc13_.var_113)
                                 {
                                    _loc13_.var_113 = false;
                                    _loc13_.var_84 = Number(Math.sin(_loc13_.var_93));
                                    _loc13_.var_83 = Number(Math.cos(_loc13_.var_93));
                                    null;
                                 }
                                 _loc7_ = _loc5_.var_88.next;
                                 _loc8_ = _loc5_.var_107.next;
                                 while(_loc8_ != null)
                                 {
                                    _loc9_ = _loc8_;
                                    _loc10_ = _loc7_;
                                    _loc7_ = _loc7_.next;
                                    _loc9_.x = Number(_loc5_.body.var_95 + (_loc5_.body.var_83 * _loc10_.x - _loc5_.body.var_84 * _loc10_.y));
                                    _loc9_.y = Number(_loc5_.body.var_96 + (Number(_loc10_.x * _loc5_.body.var_84 + _loc10_.y * _loc5_.body.var_83)));
                                    _loc8_ = _loc8_.next;
                                 }
                              }
                           }
                           _loc7_ = _loc5_.var_107.next;
                           _loc5_.name_3.var_77 = _loc7_.x;
                           _loc5_.name_3.var_78 = _loc7_.y;
                           _loc5_.name_3.var_79 = _loc7_.x;
                           _loc5_.name_3.var_80 = _loc7_.y;
                           _loc8_ = _loc5_.var_107.next.next;
                           while(_loc8_ != null)
                           {
                              _loc9_ = _loc8_;
                              if(_loc9_.x < _loc5_.name_3.var_77)
                              {
                                 _loc5_.name_3.var_77 = _loc9_.x;
                              }
                              if(_loc9_.x > _loc5_.name_3.var_79)
                              {
                                 _loc5_.name_3.var_79 = _loc9_.x;
                              }
                              if(_loc9_.y < _loc5_.name_3.var_78)
                              {
                                 _loc5_.name_3.var_78 = _loc9_.y;
                              }
                              if(_loc9_.y > _loc5_.name_3.var_80)
                              {
                                 _loc5_.name_3.var_80 = _loc9_.y;
                              }
                              _loc8_ = _loc8_.next;
                           }
                        }
                     }
                  }
                  _loc14_ = param1.name_3;
                  _loc15_ = _loc3_.name_3;
                  if(_loc15_.var_77 < _loc14_.var_77)
                  {
                     _loc14_.var_77 = _loc15_.var_77;
                  }
                  if(_loc15_.var_79 > _loc14_.var_79)
                  {
                     _loc14_.var_79 = _loc15_.var_79;
                  }
                  if(_loc15_.var_78 < _loc14_.var_78)
                  {
                     _loc14_.var_78 = _loc15_.var_78;
                  }
                  if(_loc15_.var_80 > _loc14_.var_80)
                  {
                     _loc14_.var_80 = _loc15_.var_80;
                  }
                  _loc2_ = _loc2_.next;
               }
            }
         }
         param1.method_136();
         param1.method_204();
         _loc2_ = param1.shapes.var_73;
         while(_loc2_ != null)
         {
            _loc3_ = _loc2_.var_74;
            if(_loc3_.type == class_223.var_155)
            {
               _loc5_ = _loc3_.name_6;
               if(_loc5_.var_445)
               {
                  _loc5_.var_445 = false;
                  _loc5_.method_277();
               }
               _loc5_ = _loc3_.name_6;
               if(_loc5_.var_247)
               {
                  if(_loc5_.body != null)
                  {
                     _loc5_.var_247 = false;
                     _loc5_.method_124();
                     _loc13_ = _loc5_.body;
                     if(_loc13_.var_113)
                     {
                        _loc13_.var_113 = false;
                        _loc13_.var_84 = Number(Math.sin(_loc13_.var_93));
                        _loc13_.var_83 = Number(Math.cos(_loc13_.var_93));
                        null;
                     }
                     if(_loc5_.var_153)
                     {
                        if(_loc5_.body != null)
                        {
                           _loc5_.var_153 = false;
                           _loc5_.method_116();
                           _loc13_ = _loc5_.body;
                           if(_loc13_.var_113)
                           {
                              _loc13_.var_113 = false;
                              _loc13_.var_84 = Number(Math.sin(_loc13_.var_93));
                              _loc13_.var_83 = Number(Math.cos(_loc13_.var_93));
                              null;
                           }
                           _loc7_ = _loc5_.var_88.next;
                           _loc8_ = _loc5_.var_107.next;
                           while(_loc8_ != null)
                           {
                              _loc9_ = _loc8_;
                              _loc10_ = _loc7_;
                              _loc7_ = _loc7_.next;
                              _loc9_.x = Number(_loc5_.body.var_95 + (_loc5_.body.var_83 * _loc10_.x - _loc5_.body.var_84 * _loc10_.y));
                              _loc9_.y = Number(_loc5_.body.var_96 + (Number(_loc10_.x * _loc5_.body.var_84 + _loc10_.y * _loc5_.body.var_83)));
                              _loc8_ = _loc8_.next;
                           }
                        }
                     }
                     _loc16_ = _loc5_.name_11.var_73;
                     _loc7_ = _loc5_.var_107.next;
                     _loc8_ = _loc7_;
                     _loc7_ = _loc7_.next;
                     while(_loc7_ != null)
                     {
                        _loc9_ = _loc7_;
                        _loc17_ = _loc16_.var_74;
                        _loc16_ = _loc16_.next;
                        _loc17_.gp0 = _loc8_;
                        _loc17_.gp1 = _loc9_;
                        _loc17_.var_92 = _loc5_.body.var_83 * _loc17_.var_122 - _loc5_.body.var_84 * _loc17_.var_121;
                        _loc17_.var_91 = Number(_loc17_.var_122 * _loc5_.body.var_84 + _loc17_.var_121 * _loc5_.body.var_83);
                        _loc17_.gprojection = Number(Number(_loc5_.body.var_95 * _loc17_.var_92 + _loc5_.body.var_96 * _loc17_.var_91) + _loc17_.var_165);
                        if(_loc17_.wrap_gnorm != null)
                        {
                           _loc17_.wrap_gnorm.zpp_inner.x = _loc17_.var_92;
                           _loc17_.wrap_gnorm.zpp_inner.y = _loc17_.var_91;
                        }
                        _loc17_.tp0 = _loc17_.gp0.y * _loc17_.var_92 - _loc17_.gp0.x * _loc17_.var_91;
                        _loc17_.tp1 = _loc17_.gp1.y * _loc17_.var_92 - _loc17_.gp1.x * _loc17_.var_91;
                        _loc8_ = _loc9_;
                        _loc7_ = _loc7_.next;
                     }
                     _loc9_ = _loc5_.var_107.next;
                     _loc17_ = _loc16_.var_74;
                     _loc16_ = _loc16_.next;
                     _loc17_.gp0 = _loc8_;
                     _loc17_.gp1 = _loc9_;
                     _loc17_.var_92 = _loc5_.body.var_83 * _loc17_.var_122 - _loc5_.body.var_84 * _loc17_.var_121;
                     _loc17_.var_91 = Number(_loc17_.var_122 * _loc5_.body.var_84 + _loc17_.var_121 * _loc5_.body.var_83);
                     _loc17_.gprojection = Number(Number(_loc5_.body.var_95 * _loc17_.var_92 + _loc5_.body.var_96 * _loc17_.var_91) + _loc17_.var_165);
                     if(_loc17_.wrap_gnorm != null)
                     {
                        _loc17_.wrap_gnorm.zpp_inner.x = _loc17_.var_92;
                        _loc17_.wrap_gnorm.zpp_inner.y = _loc17_.var_91;
                     }
                     _loc17_.tp0 = _loc17_.gp0.y * _loc17_.var_92 - _loc17_.gp0.x * _loc17_.var_91;
                     _loc17_.tp1 = _loc17_.gp1.y * _loc17_.var_92 - _loc17_.gp1.x * _loc17_.var_91;
                  }
               }
            }
            _loc2_ = _loc2_.next;
         }
         param1.var_273 = true;
      }
      
      public static function remove_callbackset(param1:ZPP_CallbackSet) : void
      {
         var _loc6_:* = null as ZNPNode_ZPP_CallbackSet;
         var _loc7_:* = null as ZNPNode_ZPP_CallbackSet;
         var _loc8_:* = null as ZNPNode_ZPP_CallbackSet;
         param1.var_903 = true;
         var _loc2_:class_283 = param1.int1.var_148;
         var _loc3_:* = null;
         var _loc4_:ZNPNode_ZPP_CallbackSet = _loc2_.var_73;
         var _loc5_:Boolean = false;
         while(_loc4_ != null)
         {
            if(_loc4_.var_74 == param1)
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
               _loc8_.next = ZNPNode_ZPP_CallbackSet.var_72;
               ZNPNode_ZPP_CallbackSet.var_72 = _loc8_;
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
         _loc2_ = param1.int2.var_148;
         _loc3_ = null;
         _loc4_ = _loc2_.var_73;
         _loc5_ = false;
         while(_loc4_ != null)
         {
            if(_loc4_.var_74 == param1)
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
               _loc8_.next = ZNPNode_ZPP_CallbackSet.var_72;
               ZNPNode_ZPP_CallbackSet.var_72 = _loc8_;
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
      
      public static function remListener(param1:ZPP_Listener) : void
      {
         if(param1.var_656 != null)
         {
            null;
         }
         param1.method_120();
         param1.space = null;
      }
      
      public final function warmStart() : void
      {
         var _loc2_:* = null as ZPP_FluidArbiter;
         var _loc3_:Number = NaN;
         var _loc6_:* = null as ZPP_ColArbiter;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc10_:* = null as ZPP_Constraint;
         var _loc1_:ZNPNode_ZPP_FluidArbiter = var_217.var_73;
         while(_loc1_ != null)
         {
            _loc2_ = _loc1_.var_74;
            if(!!_loc2_.active && (_loc2_.var_181 & class_223.var_267) != 0)
            {
               _loc3_ = _loc2_.b1.var_123;
               _loc2_.b1.var_104 = _loc2_.b1.var_104 - _loc2_.var_444 * _loc3_;
               _loc2_.b1.var_105 = _loc2_.b1.var_105 - _loc2_.var_447 * _loc3_;
               _loc3_ = _loc2_.b2.var_123;
               _loc2_.b2.var_104 = Number(_loc2_.b2.var_104 + _loc2_.var_444 * _loc3_);
               _loc2_.b2.var_105 = Number(_loc2_.b2.var_105 + _loc2_.var_447 * _loc3_);
               _loc2_.b1.var_94 = _loc2_.b1.var_94 - _loc2_.b1.var_136 * (_loc2_.var_447 * _loc2_.r1x - _loc2_.var_444 * _loc2_.r1y);
               _loc2_.b2.var_94 = Number(_loc2_.b2.var_94 + _loc2_.b2.var_136 * (_loc2_.var_447 * _loc2_.r2x - _loc2_.var_444 * _loc2_.r2y));
               _loc2_.b1.var_94 = _loc2_.b1.var_94 - _loc2_.var_470 * _loc2_.b1.var_136;
               _loc2_.b2.var_94 = Number(_loc2_.b2.var_94 + _loc2_.var_470 * _loc2_.b2.var_136);
            }
            _loc1_ = _loc1_.next;
         }
         var _loc4_:ZNPNode_ZPP_ColArbiter = var_175.var_73;
         var _loc5_:Boolean = true;
         if(_loc4_ == null)
         {
            _loc4_ = var_228.var_73;
            _loc5_ = false;
         }
         while(_loc4_ != null)
         {
            _loc6_ = _loc4_.var_74;
            if(!!_loc6_.active && (_loc6_.var_181 & class_223.var_267) != 0)
            {
               _loc3_ = _loc6_.nx * _loc6_.c1.var_142 - _loc6_.ny * _loc6_.c1.var_208;
               _loc7_ = Number(_loc6_.ny * _loc6_.c1.var_142 + _loc6_.nx * _loc6_.c1.var_208);
               _loc8_ = _loc6_.b1.var_123;
               _loc6_.b1.var_104 = _loc6_.b1.var_104 - _loc3_ * _loc8_;
               _loc6_.b1.var_105 = _loc6_.b1.var_105 - _loc7_ * _loc8_;
               _loc6_.b1.var_94 = _loc6_.b1.var_94 - _loc6_.b1.var_136 * (_loc7_ * _loc6_.c1.r1x - _loc3_ * _loc6_.c1.r1y);
               _loc8_ = _loc6_.b2.var_123;
               _loc6_.b2.var_104 = Number(_loc6_.b2.var_104 + _loc3_ * _loc8_);
               _loc6_.b2.var_105 = Number(_loc6_.b2.var_105 + _loc7_ * _loc8_);
               _loc6_.b2.var_94 = Number(_loc6_.b2.var_94 + _loc6_.b2.var_136 * (_loc7_ * _loc6_.c1.r2x - _loc3_ * _loc6_.c1.r2y));
               if(_loc6_.var_270)
               {
                  _loc3_ = _loc6_.nx * _loc6_.c2.var_142 - _loc6_.ny * _loc6_.c2.var_208;
                  _loc7_ = Number(_loc6_.ny * _loc6_.c2.var_142 + _loc6_.nx * _loc6_.c2.var_208);
                  _loc8_ = _loc6_.b1.var_123;
                  _loc6_.b1.var_104 = _loc6_.b1.var_104 - _loc3_ * _loc8_;
                  _loc6_.b1.var_105 = _loc6_.b1.var_105 - _loc7_ * _loc8_;
                  _loc6_.b1.var_94 = _loc6_.b1.var_94 - _loc6_.b1.var_136 * (_loc7_ * _loc6_.c2.r1x - _loc3_ * _loc6_.c2.r1y);
                  _loc8_ = _loc6_.b2.var_123;
                  _loc6_.b2.var_104 = Number(_loc6_.b2.var_104 + _loc3_ * _loc8_);
                  _loc6_.b2.var_105 = Number(_loc6_.b2.var_105 + _loc7_ * _loc8_);
                  _loc6_.b2.var_94 = Number(_loc6_.b2.var_94 + _loc6_.b2.var_136 * (_loc7_ * _loc6_.c2.r2x - _loc3_ * _loc6_.c2.r2y));
               }
               _loc6_.b2.var_94 = Number(_loc6_.b2.var_94 + _loc6_.var_170 * _loc6_.b2.var_136);
               _loc6_.b1.var_94 = _loc6_.b1.var_94 - _loc6_.var_170 * _loc6_.b1.var_136;
            }
            _loc4_ = _loc4_.next;
            if(!!_loc5_ && _loc4_ == null)
            {
               _loc4_ = var_228.var_73;
               _loc5_ = false;
            }
         }
         var _loc9_:ZNPNode_ZPP_Constraint = var_221.var_73;
         while(_loc9_ != null)
         {
            _loc10_ = _loc9_.var_74;
            _loc10_.warmStart();
            _loc9_ = _loc9_.next;
         }
      }
      
      public final function method_165(param1:ZPP_Constraint, param2:Boolean = false) : Boolean
      {
         var _loc3_:* = null as class_287;
         var _loc4_:* = null as ZNPNode_ZPP_Constraint;
         var _loc5_:* = null as ZNPNode_ZPP_Constraint;
         if(param1.active)
         {
            param1.var_112.var_211 = var_114 + (!!var_156?0:1);
            if(param1.var_112.var_129)
            {
               if(param1.var_112.var_224 == null)
               {
                  param1.var_112.var_129 = false;
                  _loc3_ = var_221;
                  if(ZNPNode_ZPP_Constraint.var_72 == null)
                  {
                     _loc5_ = new ZNPNode_ZPP_Constraint();
                  }
                  else
                  {
                     _loc5_ = ZNPNode_ZPP_Constraint.var_72;
                     ZNPNode_ZPP_Constraint.var_72 = _loc5_.next;
                     _loc5_.next = null;
                  }
                  null;
                  _loc5_.var_74 = param1;
                  _loc4_ = _loc5_;
                  _loc4_.next = _loc3_.var_73;
                  _loc3_.var_73 = _loc4_;
                  _loc3_.name_2 = true;
                  _loc3_.length = _loc3_.length + 1;
                  param1;
                  param1.method_508();
                  if(!param2)
                  {
                     constraintCbWake(param1);
                  }
               }
               else
               {
                  wakeIsland(param1.var_112.var_224);
               }
               return true;
            }
            return false;
         }
         return false;
      }
      
      public final function wakeIsland(param1:ZPP_Island) : void
      {
         var _loc2_:* = null as ZPP_Component;
         var _loc3_:* = null as ZPP_Body;
         var _loc4_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc5_:* = null as ZPP_Arbiter;
         var _loc6_:* = null as ZPP_ColArbiter;
         var _loc7_:* = null as class_305;
         var _loc8_:* = null as ZNPNode_ZPP_ColArbiter;
         var _loc9_:* = null as ZNPNode_ZPP_ColArbiter;
         var _loc10_:* = null as class_299;
         var _loc11_:* = null as ZPP_FluidArbiter;
         var _loc12_:* = null as ZNPNode_ZPP_FluidArbiter;
         var _loc13_:* = null as ZNPNode_ZPP_FluidArbiter;
         var _loc14_:* = null as class_307;
         var _loc15_:* = null as ZPP_SensorArbiter;
         var _loc16_:* = null as ZNPNode_ZPP_SensorArbiter;
         var _loc17_:* = null as ZNPNode_ZPP_SensorArbiter;
         var _loc18_:* = null as ZNPNode_ZPP_Shape;
         var _loc19_:* = null as ZPP_Shape;
         var _loc20_:* = null as ZPP_Constraint;
         var _loc21_:* = null as class_287;
         var _loc22_:* = null as ZNPNode_ZPP_Constraint;
         var _loc23_:* = null as ZNPNode_ZPP_Constraint;
         while(param1.var_345.var_73 != null)
         {
            _loc2_ = param1.var_345.method_105();
            _loc2_.var_211 = var_114 + (!!var_156?0:1);
            if(_loc2_.name_75)
            {
               _loc3_ = _loc2_.body;
               live.add(_loc3_);
               _loc4_ = _loc3_.name_12.var_73;
               while(_loc4_ != null)
               {
                  _loc5_ = _loc4_.var_74;
                  if(_loc5_.var_129)
                  {
                     _loc5_.var_129 = false;
                     _loc5_.var_360 = _loc5_.var_360 + (var_114 - _loc5_.var_669);
                     if(_loc5_.type == ZPP_Arbiter.var_292)
                     {
                        _loc6_ = _loc5_.var_128;
                        if(_loc6_.var_622)
                        {
                           _loc7_ = var_228;
                           if(ZNPNode_ZPP_ColArbiter.var_72 == null)
                           {
                              _loc9_ = new ZNPNode_ZPP_ColArbiter();
                           }
                           else
                           {
                              _loc9_ = ZNPNode_ZPP_ColArbiter.var_72;
                              ZNPNode_ZPP_ColArbiter.var_72 = _loc9_.next;
                              _loc9_.next = null;
                           }
                           null;
                           _loc9_.var_74 = _loc6_;
                           _loc8_ = _loc9_;
                           _loc8_.next = _loc7_.var_73;
                           _loc7_.var_73 = _loc8_;
                           _loc7_.name_2 = true;
                           _loc7_.length = _loc7_.length + 1;
                           _loc6_;
                        }
                        else
                        {
                           _loc7_ = var_175;
                           if(ZNPNode_ZPP_ColArbiter.var_72 == null)
                           {
                              _loc9_ = new ZNPNode_ZPP_ColArbiter();
                           }
                           else
                           {
                              _loc9_ = ZNPNode_ZPP_ColArbiter.var_72;
                              ZNPNode_ZPP_ColArbiter.var_72 = _loc9_.next;
                              _loc9_.next = null;
                           }
                           null;
                           _loc9_.var_74 = _loc6_;
                           _loc8_ = _loc9_;
                           _loc8_.next = _loc7_.var_73;
                           _loc7_.var_73 = _loc8_;
                           _loc7_.name_2 = true;
                           _loc7_.length = _loc7_.length + 1;
                           _loc6_;
                        }
                     }
                     else if(_loc5_.type == ZPP_Arbiter.FLUID)
                     {
                        _loc10_ = var_217;
                        _loc11_ = _loc5_.var_161;
                        if(ZNPNode_ZPP_FluidArbiter.var_72 == null)
                        {
                           _loc13_ = new ZNPNode_ZPP_FluidArbiter();
                        }
                        else
                        {
                           _loc13_ = ZNPNode_ZPP_FluidArbiter.var_72;
                           ZNPNode_ZPP_FluidArbiter.var_72 = _loc13_.next;
                           _loc13_.next = null;
                        }
                        null;
                        _loc13_.var_74 = _loc11_;
                        _loc12_ = _loc13_;
                        _loc12_.next = _loc10_.var_73;
                        _loc10_.var_73 = _loc12_;
                        _loc10_.name_2 = true;
                        _loc10_.length = _loc10_.length + 1;
                        _loc11_;
                     }
                     else
                     {
                        _loc14_ = var_288;
                        _loc15_ = _loc5_.var_624;
                        if(ZNPNode_ZPP_SensorArbiter.var_72 == null)
                        {
                           _loc17_ = new ZNPNode_ZPP_SensorArbiter();
                        }
                        else
                        {
                           _loc17_ = ZNPNode_ZPP_SensorArbiter.var_72;
                           ZNPNode_ZPP_SensorArbiter.var_72 = _loc17_.next;
                           _loc17_.next = null;
                        }
                        null;
                        _loc17_.var_74 = _loc15_;
                        _loc16_ = _loc17_;
                        _loc16_.next = _loc14_.var_73;
                        _loc14_.var_73 = _loc16_;
                        _loc14_.name_2 = true;
                        _loc14_.length = _loc14_.length + 1;
                        _loc15_;
                     }
                  }
                  _loc4_ = _loc4_.next;
               }
               bodyCbWake(_loc3_);
               _loc2_.var_129 = false;
               _loc2_.var_224 = null;
               _loc2_.parent = _loc2_;
               _loc2_.var_158 = 0;
               if(_loc3_.type != class_223.var_240)
               {
                  _loc18_ = _loc3_.shapes.var_73;
                  while(_loc18_ != null)
                  {
                     _loc19_ = _loc18_.var_74;
                     if(_loc19_.var_138 != null)
                     {
                        var_166.method_226(_loc19_);
                     }
                     _loc18_ = _loc18_.next;
                  }
               }
            }
            else
            {
               _loc20_ = _loc2_.name_44;
               _loc21_ = var_221;
               if(ZNPNode_ZPP_Constraint.var_72 == null)
               {
                  _loc23_ = new ZNPNode_ZPP_Constraint();
               }
               else
               {
                  _loc23_ = ZNPNode_ZPP_Constraint.var_72;
                  ZNPNode_ZPP_Constraint.var_72 = _loc23_.next;
                  _loc23_.next = null;
               }
               null;
               _loc23_.var_74 = _loc20_;
               _loc22_ = _loc23_;
               _loc22_.next = _loc21_.var_73;
               _loc21_.var_73 = _loc22_;
               _loc21_.name_2 = true;
               _loc21_.length = _loc21_.length + 1;
               _loc20_;
               constraintCbWake(_loc20_);
               _loc2_.var_129 = false;
               _loc2_.var_224 = null;
               _loc2_.parent = _loc2_;
               _loc2_.var_158 = 0;
            }
         }
         var _loc24_:ZPP_Island = param1;
         _loc24_.next = ZPP_Island.var_72;
         ZPP_Island.var_72 = _loc24_;
      }
      
      public final function method_375(param1:ZPP_Compound) : void
      {
         var _loc3_:* = null as ZPP_Body;
         var _loc4_:* = null as ZPP_Body;
         var _loc6_:* = null as ZPP_Constraint;
         var _loc8_:* = null as ZPP_Compound;
         var _loc2_:ZNPNode_ZPP_Body = param1.name_30.var_73;
         while(_loc2_ != null)
         {
            _loc3_ = _loc2_.var_74;
            _loc4_ = _loc3_;
            if(!_loc4_.name_29)
            {
               _loc4_.var_112.var_211 = var_114 + (!!var_156?0:1);
               if(_loc4_.type == class_223.var_216)
               {
                  _loc4_.var_261 = true;
               }
               if(_loc4_.var_112.var_129)
               {
                  method_115(_loc4_,false);
               }
            }
            _loc2_ = _loc2_.next;
         }
         var _loc5_:ZNPNode_ZPP_Constraint = param1.name_19.var_73;
         while(_loc5_ != null)
         {
            _loc6_ = _loc5_.var_74;
            method_165(_loc6_);
            _loc5_ = _loc5_.next;
         }
         var _loc7_:ZNPNode_ZPP_Compound = param1.name_27.var_73;
         while(_loc7_ != null)
         {
            _loc8_ = _loc7_.var_74;
            method_375(_loc8_);
            _loc7_ = _loc7_.next;
         }
      }
      
      public final function name_58() : void
      {
         var _loc2_:* = null as ZPP_Set_ZPP_CbSet;
         var _loc3_:* = null as ZPP_CbSet;
         var _loc5_:* = null as ZPP_Body;
         var _loc6_:* = null as ZNPNode_ZPP_Shape;
         var _loc7_:* = null as ZPP_Shape;
         var _loc8_:* = null as ZPP_Polygon;
         var _loc9_:* = null as ZPP_Body;
         var _loc10_:* = null as ZPP_Vec2;
         var _loc11_:* = null as ZPP_Vec2;
         var _loc12_:* = null as ZPP_Vec2;
         var _loc13_:* = null as ZPP_Vec2;
         var _loc14_:* = null as ZNPNode_ZPP_Edge;
         var _loc15_:* = null as ZPP_Edge;
         var _loc16_:* = null as ZPP_Circle;
         var _loc17_:* = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:* = null as ZPP_Vec2;
         var _loc20_:* = null as ZPP_AABB;
         var _loc21_:* = null as ZPP_AABB;
         var _loc22_:* = null as ZNPNode_ZPP_BodyListener;
         var _loc23_:* = null as ZPP_BodyListener;
         var _loc24_:* = null as class_273;
         var _loc26_:* = null as ZPP_Constraint;
         var _loc27_:* = null as ZNPNode_ZPP_ConstraintListener;
         var _loc28_:* = null as ZPP_ConstraintListener;
         var _loc1_:ZPP_CbSetManager = var_148;
         if(!_loc1_.var_148.empty())
         {
            _loc2_ = _loc1_.var_148.parent;
            while(_loc2_.var_75 != null)
            {
               _loc2_ = _loc2_.var_75;
            }
            while(_loc2_ != null)
            {
               _loc3_ = _loc2_.data;
               _loc3_.validate();
               if(_loc2_.next != null)
               {
                  _loc2_ = _loc2_.next;
                  while(_loc2_.var_75 != null)
                  {
                     _loc2_ = _loc2_.var_75;
                  }
               }
               else
               {
                  while(_loc2_.parent != null && _loc2_ == _loc2_.parent.next)
                  {
                     _loc2_ = _loc2_.parent;
                  }
                  _loc2_ = _loc2_.parent;
               }
            }
         }
         var _loc4_:ZNPNode_ZPP_Body = live.var_73;
         while(_loc4_ != null)
         {
            _loc5_ = _loc4_.var_74;
            _loc5_.var_258 = 0;
            _loc6_ = _loc5_.shapes.var_73;
            while(_loc6_ != null)
            {
               _loc7_ = _loc6_.var_74;
               if(_loc7_.type == class_223.var_155)
               {
                  _loc8_ = _loc7_.name_6;
                  if(_loc8_.var_445)
                  {
                     _loc8_.var_445 = false;
                     _loc8_.method_277();
                  }
                  _loc8_ = _loc7_.name_6;
                  if(_loc8_.var_247)
                  {
                     if(_loc8_.body != null)
                     {
                        _loc8_.var_247 = false;
                        _loc8_.method_124();
                        _loc9_ = _loc8_.body;
                        if(_loc9_.var_113)
                        {
                           _loc9_.var_113 = false;
                           _loc9_.var_84 = Number(Math.sin(_loc9_.var_93));
                           _loc9_.var_83 = Number(Math.cos(_loc9_.var_93));
                           null;
                        }
                        if(_loc8_.var_153)
                        {
                           if(_loc8_.body != null)
                           {
                              _loc8_.var_153 = false;
                              _loc8_.method_116();
                              _loc9_ = _loc8_.body;
                              if(_loc9_.var_113)
                              {
                                 _loc9_.var_113 = false;
                                 _loc9_.var_84 = Number(Math.sin(_loc9_.var_93));
                                 _loc9_.var_83 = Number(Math.cos(_loc9_.var_93));
                                 null;
                              }
                              _loc10_ = _loc8_.var_88.next;
                              _loc11_ = _loc8_.var_107.next;
                              while(_loc11_ != null)
                              {
                                 _loc12_ = _loc11_;
                                 _loc13_ = _loc10_;
                                 _loc10_ = _loc10_.next;
                                 _loc12_.x = Number(_loc8_.body.var_95 + (_loc8_.body.var_83 * _loc13_.x - _loc8_.body.var_84 * _loc13_.y));
                                 _loc12_.y = Number(_loc8_.body.var_96 + (Number(_loc13_.x * _loc8_.body.var_84 + _loc13_.y * _loc8_.body.var_83)));
                                 _loc11_ = _loc11_.next;
                              }
                           }
                        }
                        _loc14_ = _loc8_.name_11.var_73;
                        _loc10_ = _loc8_.var_107.next;
                        _loc11_ = _loc10_;
                        _loc10_ = _loc10_.next;
                        while(_loc10_ != null)
                        {
                           _loc12_ = _loc10_;
                           _loc15_ = _loc14_.var_74;
                           _loc14_ = _loc14_.next;
                           _loc15_.gp0 = _loc11_;
                           _loc15_.gp1 = _loc12_;
                           _loc15_.var_92 = _loc8_.body.var_83 * _loc15_.var_122 - _loc8_.body.var_84 * _loc15_.var_121;
                           _loc15_.var_91 = Number(_loc15_.var_122 * _loc8_.body.var_84 + _loc15_.var_121 * _loc8_.body.var_83);
                           _loc15_.gprojection = Number(Number(_loc8_.body.var_95 * _loc15_.var_92 + _loc8_.body.var_96 * _loc15_.var_91) + _loc15_.var_165);
                           if(_loc15_.wrap_gnorm != null)
                           {
                              _loc15_.wrap_gnorm.zpp_inner.x = _loc15_.var_92;
                              _loc15_.wrap_gnorm.zpp_inner.y = _loc15_.var_91;
                           }
                           _loc15_.tp0 = _loc15_.gp0.y * _loc15_.var_92 - _loc15_.gp0.x * _loc15_.var_91;
                           _loc15_.tp1 = _loc15_.gp1.y * _loc15_.var_92 - _loc15_.gp1.x * _loc15_.var_91;
                           _loc11_ = _loc12_;
                           _loc10_ = _loc10_.next;
                        }
                        _loc12_ = _loc8_.var_107.next;
                        _loc15_ = _loc14_.var_74;
                        _loc14_ = _loc14_.next;
                        _loc15_.gp0 = _loc11_;
                        _loc15_.gp1 = _loc12_;
                        _loc15_.var_92 = _loc8_.body.var_83 * _loc15_.var_122 - _loc8_.body.var_84 * _loc15_.var_121;
                        _loc15_.var_91 = Number(_loc15_.var_122 * _loc8_.body.var_84 + _loc15_.var_121 * _loc8_.body.var_83);
                        _loc15_.gprojection = Number(Number(_loc8_.body.var_95 * _loc15_.var_92 + _loc8_.body.var_96 * _loc15_.var_91) + _loc15_.var_165);
                        if(_loc15_.wrap_gnorm != null)
                        {
                           _loc15_.wrap_gnorm.zpp_inner.x = _loc15_.var_92;
                           _loc15_.wrap_gnorm.zpp_inner.y = _loc15_.var_91;
                        }
                        _loc15_.tp0 = _loc15_.gp0.y * _loc15_.var_92 - _loc15_.gp0.x * _loc15_.var_91;
                        _loc15_.tp1 = _loc15_.gp1.y * _loc15_.var_92 - _loc15_.gp1.x * _loc15_.var_91;
                     }
                  }
               }
               _loc7_.method_257();
               if(_loc7_.var_258 > _loc5_.var_258)
               {
                  _loc5_.var_258 = _loc7_.var_258;
               }
               _loc6_ = _loc6_.next;
            }
            _loc5_.method_136();
            _loc5_.method_204();
            if(_loc5_.shapes.var_73 != null)
            {
               if(_loc5_.var_149)
               {
                  _loc5_.var_149 = false;
                  _loc5_.name_3.var_77 = 1.79e308;
                  _loc5_.name_3.var_78 = 1.79e308;
                  _loc5_.name_3.var_79 = -1.79e308;
                  _loc5_.name_3.var_80 = -1.79e308;
                  _loc6_ = _loc5_.shapes.var_73;
                  while(_loc6_ != null)
                  {
                     _loc7_ = _loc6_.var_74;
                     if(_loc7_.var_149)
                     {
                        if(_loc7_.body != null)
                        {
                           _loc7_.var_149 = false;
                           if(_loc7_.type == class_223.var_131)
                           {
                              _loc16_ = _loc7_.var_102;
                              if(_loc16_.var_139)
                              {
                                 if(_loc16_.body != null)
                                 {
                                    _loc16_.var_139 = false;
                                    if(_loc16_.var_140)
                                    {
                                       _loc16_.var_140 = false;
                                       if(_loc16_.type == class_223.var_155)
                                       {
                                          _loc8_ = _loc16_.name_6;
                                          if(_loc8_.var_88.next.next == null)
                                          {
                                             _loc8_.var_82 = _loc8_.var_88.next.x;
                                             _loc8_.var_81 = _loc8_.var_88.next.y;
                                             null;
                                          }
                                          else if(_loc8_.var_88.next.next.next == null)
                                          {
                                             _loc8_.var_82 = _loc8_.var_88.next.x;
                                             _loc8_.var_81 = _loc8_.var_88.next.y;
                                             _loc17_ = 1;
                                             _loc8_.var_82 = Number(_loc8_.var_82 + _loc8_.var_88.next.next.x * _loc17_);
                                             _loc8_.var_81 = Number(_loc8_.var_81 + _loc8_.var_88.next.next.y * _loc17_);
                                             _loc17_ = 0.5;
                                             _loc8_.var_82 = _loc8_.var_82 * _loc17_;
                                             _loc8_.var_81 = _loc8_.var_81 * _loc17_;
                                          }
                                          else
                                          {
                                             _loc8_.var_82 = 0;
                                             _loc8_.var_81 = 0;
                                             _loc17_ = 0;
                                             _loc10_ = _loc8_.var_88.next;
                                             _loc11_ = _loc10_;
                                             _loc10_ = _loc10_.next;
                                             _loc12_ = _loc10_;
                                             _loc10_ = _loc10_.next;
                                             while(_loc10_ != null)
                                             {
                                                _loc13_ = _loc10_;
                                                _loc17_ = Number(Number(_loc17_ + _loc12_.x * (_loc13_.y - _loc11_.y)));
                                                _loc18_ = _loc13_.y * _loc12_.x - _loc13_.x * _loc12_.y;
                                                _loc8_.var_82 = Number(_loc8_.var_82 + (_loc12_.x + _loc13_.x) * _loc18_);
                                                _loc8_.var_81 = Number(_loc8_.var_81 + (_loc12_.y + _loc13_.y) * _loc18_);
                                                _loc11_ = _loc12_;
                                                _loc12_ = _loc13_;
                                                _loc10_ = _loc10_.next;
                                             }
                                             _loc10_ = _loc8_.var_88.next;
                                             _loc13_ = _loc10_;
                                             _loc17_ = Number(Number(_loc17_ + _loc12_.x * (_loc13_.y - _loc11_.y)));
                                             _loc18_ = _loc13_.y * _loc12_.x - _loc13_.x * _loc12_.y;
                                             _loc8_.var_82 = Number(_loc8_.var_82 + (_loc12_.x + _loc13_.x) * _loc18_);
                                             _loc8_.var_81 = Number(_loc8_.var_81 + (_loc12_.y + _loc13_.y) * _loc18_);
                                             _loc11_ = _loc12_;
                                             _loc12_ = _loc13_;
                                             _loc10_ = _loc10_.next;
                                             _loc19_ = _loc10_;
                                             _loc17_ = Number(Number(_loc17_ + _loc12_.x * (_loc19_.y - _loc11_.y)));
                                             _loc18_ = _loc19_.y * _loc12_.x - _loc19_.x * _loc12_.y;
                                             _loc8_.var_82 = Number(_loc8_.var_82 + (_loc12_.x + _loc19_.x) * _loc18_);
                                             _loc8_.var_81 = Number(_loc8_.var_81 + (_loc12_.y + _loc19_.y) * _loc18_);
                                             _loc17_ = Number(1 / (3 * _loc17_));
                                             _loc18_ = _loc17_;
                                             _loc8_.var_82 = _loc8_.var_82 * _loc18_;
                                             _loc8_.var_81 = _loc8_.var_81 * _loc18_;
                                          }
                                       }
                                       if(_loc16_.var_115 != null)
                                       {
                                          _loc16_.var_115.zpp_inner.x = _loc16_.var_82;
                                          _loc16_.var_115.zpp_inner.y = _loc16_.var_81;
                                       }
                                    }
                                    _loc9_ = _loc16_.body;
                                    if(_loc9_.var_113)
                                    {
                                       _loc9_.var_113 = false;
                                       _loc9_.var_84 = Number(Math.sin(_loc9_.var_93));
                                       _loc9_.var_83 = Number(Math.cos(_loc9_.var_93));
                                       null;
                                    }
                                    _loc16_.var_99 = Number(_loc16_.body.var_95 + (_loc16_.body.var_83 * _loc16_.var_82 - _loc16_.body.var_84 * _loc16_.var_81));
                                    _loc16_.var_100 = Number(_loc16_.body.var_96 + (Number(_loc16_.var_82 * _loc16_.body.var_84 + _loc16_.var_81 * _loc16_.body.var_83)));
                                 }
                              }
                              _loc17_ = Number(_loc16_.radius);
                              _loc18_ = _loc16_.radius;
                              _loc16_.name_3.var_77 = _loc16_.var_99 - _loc17_;
                              _loc16_.name_3.var_78 = _loc16_.var_100 - _loc18_;
                              _loc16_.name_3.var_79 = Number(_loc16_.var_99 + _loc17_);
                              _loc16_.name_3.var_80 = Number(_loc16_.var_100 + _loc18_);
                           }
                           else
                           {
                              _loc8_ = _loc7_.name_6;
                              if(_loc8_.var_153)
                              {
                                 if(_loc8_.body != null)
                                 {
                                    _loc8_.var_153 = false;
                                    _loc8_.method_116();
                                    _loc9_ = _loc8_.body;
                                    if(_loc9_.var_113)
                                    {
                                       _loc9_.var_113 = false;
                                       _loc9_.var_84 = Number(Math.sin(_loc9_.var_93));
                                       _loc9_.var_83 = Number(Math.cos(_loc9_.var_93));
                                       null;
                                    }
                                    _loc10_ = _loc8_.var_88.next;
                                    _loc11_ = _loc8_.var_107.next;
                                    while(_loc11_ != null)
                                    {
                                       _loc12_ = _loc11_;
                                       _loc13_ = _loc10_;
                                       _loc10_ = _loc10_.next;
                                       _loc12_.x = Number(_loc8_.body.var_95 + (_loc8_.body.var_83 * _loc13_.x - _loc8_.body.var_84 * _loc13_.y));
                                       _loc12_.y = Number(_loc8_.body.var_96 + (Number(_loc13_.x * _loc8_.body.var_84 + _loc13_.y * _loc8_.body.var_83)));
                                       _loc11_ = _loc11_.next;
                                    }
                                 }
                              }
                              _loc10_ = _loc8_.var_107.next;
                              _loc8_.name_3.var_77 = _loc10_.x;
                              _loc8_.name_3.var_78 = _loc10_.y;
                              _loc8_.name_3.var_79 = _loc10_.x;
                              _loc8_.name_3.var_80 = _loc10_.y;
                              _loc11_ = _loc8_.var_107.next.next;
                              while(_loc11_ != null)
                              {
                                 _loc12_ = _loc11_;
                                 if(_loc12_.x < _loc8_.name_3.var_77)
                                 {
                                    _loc8_.name_3.var_77 = _loc12_.x;
                                 }
                                 if(_loc12_.x > _loc8_.name_3.var_79)
                                 {
                                    _loc8_.name_3.var_79 = _loc12_.x;
                                 }
                                 if(_loc12_.y < _loc8_.name_3.var_78)
                                 {
                                    _loc8_.name_3.var_78 = _loc12_.y;
                                 }
                                 if(_loc12_.y > _loc8_.name_3.var_80)
                                 {
                                    _loc8_.name_3.var_80 = _loc12_.y;
                                 }
                                 _loc11_ = _loc11_.next;
                              }
                           }
                        }
                     }
                     _loc20_ = _loc5_.name_3;
                     _loc21_ = _loc7_.name_3;
                     if(_loc21_.var_77 < _loc20_.var_77)
                     {
                        _loc20_.var_77 = _loc21_.var_77;
                     }
                     if(_loc21_.var_79 > _loc20_.var_79)
                     {
                        _loc20_.var_79 = _loc21_.var_79;
                     }
                     if(_loc21_.var_78 < _loc20_.var_78)
                     {
                        _loc20_.var_78 = _loc21_.var_78;
                     }
                     if(_loc21_.var_80 > _loc20_.var_80)
                     {
                        _loc20_.var_80 = _loc21_.var_80;
                     }
                     _loc6_ = _loc6_.next;
                  }
               }
               _loc5_.method_263();
            }
            _loc5_.method_354();
            if(_loc5_.var_113)
            {
               _loc5_.var_113 = false;
               _loc5_.var_84 = Number(Math.sin(_loc5_.var_93));
               _loc5_.var_83 = Number(Math.cos(_loc5_.var_93));
               null;
            }
            if(!!_loc5_.var_112.var_443 && _loc5_.var_134 != null)
            {
               _loc22_ = _loc5_.var_134.var_293.var_73;
               while(_loc22_ != null)
               {
                  _loc23_ = _loc22_.var_74;
                  if(_loc23_.event != class_223.var_450)
                  {
                     _loc22_ = _loc22_.next;
                  }
                  else
                  {
                     _loc24_ = push_callback(_loc23_);
                     _loc24_.event = class_223.var_450;
                     _loc24_.body = _loc5_;
                     _loc22_ = _loc22_.next;
                  }
               }
            }
            _loc5_.var_112.var_443 = false;
            _loc6_ = _loc5_.shapes.var_73;
            while(_loc6_ != null)
            {
               _loc7_ = _loc6_.var_74;
               var_166.method_226(_loc7_);
               _loc6_ = _loc6_.next;
            }
            _loc4_ = _loc4_.next;
         }
         _loc4_ = var_297.var_73;
         while(_loc4_ != null)
         {
            _loc5_ = _loc4_.var_74;
            _loc5_.var_258 = 0;
            _loc6_ = _loc5_.shapes.var_73;
            while(_loc6_ != null)
            {
               _loc7_ = _loc6_.var_74;
               if(_loc7_.type == class_223.var_155)
               {
                  _loc8_ = _loc7_.name_6;
                  if(_loc8_.var_445)
                  {
                     _loc8_.var_445 = false;
                     _loc8_.method_277();
                  }
                  _loc8_ = _loc7_.name_6;
                  if(_loc8_.var_247)
                  {
                     if(_loc8_.body != null)
                     {
                        _loc8_.var_247 = false;
                        _loc8_.method_124();
                        _loc9_ = _loc8_.body;
                        if(_loc9_.var_113)
                        {
                           _loc9_.var_113 = false;
                           _loc9_.var_84 = Number(Math.sin(_loc9_.var_93));
                           _loc9_.var_83 = Number(Math.cos(_loc9_.var_93));
                           null;
                        }
                        if(_loc8_.var_153)
                        {
                           if(_loc8_.body != null)
                           {
                              _loc8_.var_153 = false;
                              _loc8_.method_116();
                              _loc9_ = _loc8_.body;
                              if(_loc9_.var_113)
                              {
                                 _loc9_.var_113 = false;
                                 _loc9_.var_84 = Number(Math.sin(_loc9_.var_93));
                                 _loc9_.var_83 = Number(Math.cos(_loc9_.var_93));
                                 null;
                              }
                              _loc10_ = _loc8_.var_88.next;
                              _loc11_ = _loc8_.var_107.next;
                              while(_loc11_ != null)
                              {
                                 _loc12_ = _loc11_;
                                 _loc13_ = _loc10_;
                                 _loc10_ = _loc10_.next;
                                 _loc12_.x = Number(_loc8_.body.var_95 + (_loc8_.body.var_83 * _loc13_.x - _loc8_.body.var_84 * _loc13_.y));
                                 _loc12_.y = Number(_loc8_.body.var_96 + (Number(_loc13_.x * _loc8_.body.var_84 + _loc13_.y * _loc8_.body.var_83)));
                                 _loc11_ = _loc11_.next;
                              }
                           }
                        }
                        _loc14_ = _loc8_.name_11.var_73;
                        _loc10_ = _loc8_.var_107.next;
                        _loc11_ = _loc10_;
                        _loc10_ = _loc10_.next;
                        while(_loc10_ != null)
                        {
                           _loc12_ = _loc10_;
                           _loc15_ = _loc14_.var_74;
                           _loc14_ = _loc14_.next;
                           _loc15_.gp0 = _loc11_;
                           _loc15_.gp1 = _loc12_;
                           _loc15_.var_92 = _loc8_.body.var_83 * _loc15_.var_122 - _loc8_.body.var_84 * _loc15_.var_121;
                           _loc15_.var_91 = Number(_loc15_.var_122 * _loc8_.body.var_84 + _loc15_.var_121 * _loc8_.body.var_83);
                           _loc15_.gprojection = Number(Number(_loc8_.body.var_95 * _loc15_.var_92 + _loc8_.body.var_96 * _loc15_.var_91) + _loc15_.var_165);
                           if(_loc15_.wrap_gnorm != null)
                           {
                              _loc15_.wrap_gnorm.zpp_inner.x = _loc15_.var_92;
                              _loc15_.wrap_gnorm.zpp_inner.y = _loc15_.var_91;
                           }
                           _loc15_.tp0 = _loc15_.gp0.y * _loc15_.var_92 - _loc15_.gp0.x * _loc15_.var_91;
                           _loc15_.tp1 = _loc15_.gp1.y * _loc15_.var_92 - _loc15_.gp1.x * _loc15_.var_91;
                           _loc11_ = _loc12_;
                           _loc10_ = _loc10_.next;
                        }
                        _loc12_ = _loc8_.var_107.next;
                        _loc15_ = _loc14_.var_74;
                        _loc14_ = _loc14_.next;
                        _loc15_.gp0 = _loc11_;
                        _loc15_.gp1 = _loc12_;
                        _loc15_.var_92 = _loc8_.body.var_83 * _loc15_.var_122 - _loc8_.body.var_84 * _loc15_.var_121;
                        _loc15_.var_91 = Number(_loc15_.var_122 * _loc8_.body.var_84 + _loc15_.var_121 * _loc8_.body.var_83);
                        _loc15_.gprojection = Number(Number(_loc8_.body.var_95 * _loc15_.var_92 + _loc8_.body.var_96 * _loc15_.var_91) + _loc15_.var_165);
                        if(_loc15_.wrap_gnorm != null)
                        {
                           _loc15_.wrap_gnorm.zpp_inner.x = _loc15_.var_92;
                           _loc15_.wrap_gnorm.zpp_inner.y = _loc15_.var_91;
                        }
                        _loc15_.tp0 = _loc15_.gp0.y * _loc15_.var_92 - _loc15_.gp0.x * _loc15_.var_91;
                        _loc15_.tp1 = _loc15_.gp1.y * _loc15_.var_92 - _loc15_.gp1.x * _loc15_.var_91;
                     }
                  }
               }
               _loc7_.method_257();
               if(_loc7_.var_258 > _loc5_.var_258)
               {
                  _loc5_.var_258 = _loc7_.var_258;
               }
               _loc6_ = _loc6_.next;
            }
            _loc5_.method_136();
            _loc5_.method_204();
            if(_loc5_.shapes.var_73 != null)
            {
               if(_loc5_.var_149)
               {
                  _loc5_.var_149 = false;
                  _loc5_.name_3.var_77 = 1.79e308;
                  _loc5_.name_3.var_78 = 1.79e308;
                  _loc5_.name_3.var_79 = -1.79e308;
                  _loc5_.name_3.var_80 = -1.79e308;
                  _loc6_ = _loc5_.shapes.var_73;
                  while(_loc6_ != null)
                  {
                     _loc7_ = _loc6_.var_74;
                     if(_loc7_.var_149)
                     {
                        if(_loc7_.body != null)
                        {
                           _loc7_.var_149 = false;
                           if(_loc7_.type == class_223.var_131)
                           {
                              _loc16_ = _loc7_.var_102;
                              if(_loc16_.var_139)
                              {
                                 if(_loc16_.body != null)
                                 {
                                    _loc16_.var_139 = false;
                                    if(_loc16_.var_140)
                                    {
                                       _loc16_.var_140 = false;
                                       if(_loc16_.type == class_223.var_155)
                                       {
                                          _loc8_ = _loc16_.name_6;
                                          if(_loc8_.var_88.next.next == null)
                                          {
                                             _loc8_.var_82 = _loc8_.var_88.next.x;
                                             _loc8_.var_81 = _loc8_.var_88.next.y;
                                             null;
                                          }
                                          else if(_loc8_.var_88.next.next.next == null)
                                          {
                                             _loc8_.var_82 = _loc8_.var_88.next.x;
                                             _loc8_.var_81 = _loc8_.var_88.next.y;
                                             _loc17_ = 1;
                                             _loc8_.var_82 = Number(_loc8_.var_82 + _loc8_.var_88.next.next.x * _loc17_);
                                             _loc8_.var_81 = Number(_loc8_.var_81 + _loc8_.var_88.next.next.y * _loc17_);
                                             _loc17_ = 0.5;
                                             _loc8_.var_82 = _loc8_.var_82 * _loc17_;
                                             _loc8_.var_81 = _loc8_.var_81 * _loc17_;
                                          }
                                          else
                                          {
                                             _loc8_.var_82 = 0;
                                             _loc8_.var_81 = 0;
                                             _loc17_ = 0;
                                             _loc10_ = _loc8_.var_88.next;
                                             _loc11_ = _loc10_;
                                             _loc10_ = _loc10_.next;
                                             _loc12_ = _loc10_;
                                             _loc10_ = _loc10_.next;
                                             while(_loc10_ != null)
                                             {
                                                _loc13_ = _loc10_;
                                                _loc17_ = Number(Number(_loc17_ + _loc12_.x * (_loc13_.y - _loc11_.y)));
                                                _loc18_ = _loc13_.y * _loc12_.x - _loc13_.x * _loc12_.y;
                                                _loc8_.var_82 = Number(_loc8_.var_82 + (_loc12_.x + _loc13_.x) * _loc18_);
                                                _loc8_.var_81 = Number(_loc8_.var_81 + (_loc12_.y + _loc13_.y) * _loc18_);
                                                _loc11_ = _loc12_;
                                                _loc12_ = _loc13_;
                                                _loc10_ = _loc10_.next;
                                             }
                                             _loc10_ = _loc8_.var_88.next;
                                             _loc13_ = _loc10_;
                                             _loc17_ = Number(Number(_loc17_ + _loc12_.x * (_loc13_.y - _loc11_.y)));
                                             _loc18_ = _loc13_.y * _loc12_.x - _loc13_.x * _loc12_.y;
                                             _loc8_.var_82 = Number(_loc8_.var_82 + (_loc12_.x + _loc13_.x) * _loc18_);
                                             _loc8_.var_81 = Number(_loc8_.var_81 + (_loc12_.y + _loc13_.y) * _loc18_);
                                             _loc11_ = _loc12_;
                                             _loc12_ = _loc13_;
                                             _loc10_ = _loc10_.next;
                                             _loc19_ = _loc10_;
                                             _loc17_ = Number(Number(_loc17_ + _loc12_.x * (_loc19_.y - _loc11_.y)));
                                             _loc18_ = _loc19_.y * _loc12_.x - _loc19_.x * _loc12_.y;
                                             _loc8_.var_82 = Number(_loc8_.var_82 + (_loc12_.x + _loc19_.x) * _loc18_);
                                             _loc8_.var_81 = Number(_loc8_.var_81 + (_loc12_.y + _loc19_.y) * _loc18_);
                                             _loc17_ = Number(1 / (3 * _loc17_));
                                             _loc18_ = _loc17_;
                                             _loc8_.var_82 = _loc8_.var_82 * _loc18_;
                                             _loc8_.var_81 = _loc8_.var_81 * _loc18_;
                                          }
                                       }
                                       if(_loc16_.var_115 != null)
                                       {
                                          _loc16_.var_115.zpp_inner.x = _loc16_.var_82;
                                          _loc16_.var_115.zpp_inner.y = _loc16_.var_81;
                                       }
                                    }
                                    _loc9_ = _loc16_.body;
                                    if(_loc9_.var_113)
                                    {
                                       _loc9_.var_113 = false;
                                       _loc9_.var_84 = Number(Math.sin(_loc9_.var_93));
                                       _loc9_.var_83 = Number(Math.cos(_loc9_.var_93));
                                       null;
                                    }
                                    _loc16_.var_99 = Number(_loc16_.body.var_95 + (_loc16_.body.var_83 * _loc16_.var_82 - _loc16_.body.var_84 * _loc16_.var_81));
                                    _loc16_.var_100 = Number(_loc16_.body.var_96 + (Number(_loc16_.var_82 * _loc16_.body.var_84 + _loc16_.var_81 * _loc16_.body.var_83)));
                                 }
                              }
                              _loc17_ = Number(_loc16_.radius);
                              _loc18_ = _loc16_.radius;
                              _loc16_.name_3.var_77 = _loc16_.var_99 - _loc17_;
                              _loc16_.name_3.var_78 = _loc16_.var_100 - _loc18_;
                              _loc16_.name_3.var_79 = Number(_loc16_.var_99 + _loc17_);
                              _loc16_.name_3.var_80 = Number(_loc16_.var_100 + _loc18_);
                           }
                           else
                           {
                              _loc8_ = _loc7_.name_6;
                              if(_loc8_.var_153)
                              {
                                 if(_loc8_.body != null)
                                 {
                                    _loc8_.var_153 = false;
                                    _loc8_.method_116();
                                    _loc9_ = _loc8_.body;
                                    if(_loc9_.var_113)
                                    {
                                       _loc9_.var_113 = false;
                                       _loc9_.var_84 = Number(Math.sin(_loc9_.var_93));
                                       _loc9_.var_83 = Number(Math.cos(_loc9_.var_93));
                                       null;
                                    }
                                    _loc10_ = _loc8_.var_88.next;
                                    _loc11_ = _loc8_.var_107.next;
                                    while(_loc11_ != null)
                                    {
                                       _loc12_ = _loc11_;
                                       _loc13_ = _loc10_;
                                       _loc10_ = _loc10_.next;
                                       _loc12_.x = Number(_loc8_.body.var_95 + (_loc8_.body.var_83 * _loc13_.x - _loc8_.body.var_84 * _loc13_.y));
                                       _loc12_.y = Number(_loc8_.body.var_96 + (Number(_loc13_.x * _loc8_.body.var_84 + _loc13_.y * _loc8_.body.var_83)));
                                       _loc11_ = _loc11_.next;
                                    }
                                 }
                              }
                              _loc10_ = _loc8_.var_107.next;
                              _loc8_.name_3.var_77 = _loc10_.x;
                              _loc8_.name_3.var_78 = _loc10_.y;
                              _loc8_.name_3.var_79 = _loc10_.x;
                              _loc8_.name_3.var_80 = _loc10_.y;
                              _loc11_ = _loc8_.var_107.next.next;
                              while(_loc11_ != null)
                              {
                                 _loc12_ = _loc11_;
                                 if(_loc12_.x < _loc8_.name_3.var_77)
                                 {
                                    _loc8_.name_3.var_77 = _loc12_.x;
                                 }
                                 if(_loc12_.x > _loc8_.name_3.var_79)
                                 {
                                    _loc8_.name_3.var_79 = _loc12_.x;
                                 }
                                 if(_loc12_.y < _loc8_.name_3.var_78)
                                 {
                                    _loc8_.name_3.var_78 = _loc12_.y;
                                 }
                                 if(_loc12_.y > _loc8_.name_3.var_80)
                                 {
                                    _loc8_.name_3.var_80 = _loc12_.y;
                                 }
                                 _loc11_ = _loc11_.next;
                              }
                           }
                        }
                     }
                     _loc20_ = _loc5_.name_3;
                     _loc21_ = _loc7_.name_3;
                     if(_loc21_.var_77 < _loc20_.var_77)
                     {
                        _loc20_.var_77 = _loc21_.var_77;
                     }
                     if(_loc21_.var_79 > _loc20_.var_79)
                     {
                        _loc20_.var_79 = _loc21_.var_79;
                     }
                     if(_loc21_.var_78 < _loc20_.var_78)
                     {
                        _loc20_.var_78 = _loc21_.var_78;
                     }
                     if(_loc21_.var_80 > _loc20_.var_80)
                     {
                        _loc20_.var_80 = _loc21_.var_80;
                     }
                     _loc6_ = _loc6_.next;
                  }
               }
               _loc5_.method_263();
            }
            _loc5_.method_354();
            if(_loc5_.var_113)
            {
               _loc5_.var_113 = false;
               _loc5_.var_84 = Number(Math.sin(_loc5_.var_93));
               _loc5_.var_83 = Number(Math.cos(_loc5_.var_93));
               null;
            }
            _loc6_ = _loc5_.shapes.var_73;
            while(_loc6_ != null)
            {
               _loc7_ = _loc6_.var_74;
               var_166.method_226(_loc7_);
               _loc6_ = _loc6_.next;
            }
            _loc4_ = _loc4_.next;
         }
         var _loc25_:ZNPNode_ZPP_Constraint = var_221.var_73;
         while(_loc25_ != null)
         {
            _loc26_ = _loc25_.var_74;
            if(_loc26_.active)
            {
               if(!!_loc26_.var_112.var_443 && _loc26_.var_134 != null)
               {
                  _loc27_ = _loc26_.var_134.var_283.var_73;
                  while(_loc27_ != null)
                  {
                     _loc28_ = _loc27_.var_74;
                     if(_loc28_.event != class_223.var_450)
                     {
                        _loc27_ = _loc27_.next;
                     }
                     else
                     {
                        _loc24_ = push_callback(_loc28_);
                        _loc24_.event = class_223.var_450;
                        _loc24_.name_44 = _loc26_;
                        _loc27_ = _loc27_.next;
                     }
                  }
               }
               _loc26_.var_112.var_443 = false;
            }
            _loc25_ = _loc25_.next;
         }
      }
      
      public final function updateVel(param1:Number) : void
      {
         var _loc6_:* = null as ZPP_Body;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:Number = NaN;
         var _loc2_:* = null;
         var _loc3_:Number = 1 - param1 * var_585;
         var _loc4_:Number = 1 - param1 * var_626;
         var _loc5_:ZNPNode_ZPP_Body = live.var_73;
         while(_loc5_ != null)
         {
            _loc6_ = _loc5_.var_74;
            if(_loc6_.var_264 != 0)
            {
               _loc7_ = Number(param1 * _loc6_.var_123);
               _loc6_.var_104 = Number(_loc3_ * _loc6_.var_104 + (_loc6_.var_400 + var_254 * _loc6_.gravMass) * _loc7_);
               _loc6_.var_105 = Number(_loc3_ * _loc6_.var_105 + (_loc6_.var_396 + var_252 * _loc6_.gravMass) * _loc7_);
            }
            if(_loc6_.var_194 != 0)
            {
               _loc7_ = 0;
               _loc8_ = 0;
               _loc7_ = Number(_loc6_.var_99 - _loc6_.var_95);
               _loc8_ = Number(_loc6_.var_100 - _loc6_.var_96);
               _loc9_ = Number(_loc6_.name_63 + (var_252 * _loc7_ - var_254 * _loc8_) * _loc6_.gravMass);
               _loc6_.var_94 = Number(_loc4_ * _loc6_.var_94 + _loc9_ * param1 * _loc6_.var_136);
            }
            _loc2_ = _loc5_;
            _loc5_ = _loc5_.next;
         }
      }
      
      public final function updatePos(param1:Number) : void
      {
         var _loc4_:* = null as ZPP_Body;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:* = null as ZNPNode_ZPP_Shape;
         var _loc12_:* = null as ZPP_Shape;
         var _loc13_:* = null as ZPP_AABB;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:int = 0;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:* = null as ZPP_Circle;
         var _loc25_:* = null as ZPP_Polygon;
         var _loc26_:* = null as ZPP_Vec2;
         var _loc27_:* = null as ZPP_Vec2;
         var _loc28_:* = null as ZPP_Vec2;
         var _loc29_:* = null as ZPP_Vec2;
         var _loc30_:* = null as ZPP_Vec2;
         var _loc31_:* = null as ZPP_Vec2;
         var _loc32_:int = 0;
         var _loc33_:int = 0;
         var _loc34_:Number = NaN;
         var _loc2_:Number = 2 * Math.PI / param1;
         var _loc3_:ZNPNode_ZPP_Body = live.var_73;
         while(_loc3_ != null)
         {
            _loc4_ = _loc3_.var_74;
            _loc4_.var_306 = _loc4_.var_95;
            _loc4_.var_315 = _loc4_.var_96;
            _loc4_.var_448 = _loc4_.var_93;
            _loc4_.var_176 = 0;
            _loc4_.var_191 = _loc4_.var_94 % _loc2_;
            _loc5_ = param1 - _loc4_.var_176;
            if(_loc5_ != 0)
            {
               _loc4_.var_176 = param1;
               _loc6_ = _loc5_;
               _loc4_.var_95 = Number(_loc4_.var_95 + _loc4_.var_104 * _loc6_);
               _loc4_.var_96 = Number(_loc4_.var_96 + _loc4_.var_105 * _loc6_);
               if(_loc4_.var_94 != 0)
               {
                  _loc6_ = _loc4_.var_191 * _loc5_;
                  _loc4_.var_93 = Number(_loc4_.var_93 + _loc6_);
                  if(_loc6_ * _loc6_ > 0.0001)
                  {
                     _loc4_.var_84 = Number(Math.sin(_loc4_.var_93));
                     _loc4_.var_83 = Number(Math.cos(_loc4_.var_93));
                     null;
                  }
                  else
                  {
                     _loc7_ = _loc6_ * _loc6_;
                     _loc8_ = 1 - 0.5 * _loc7_;
                     _loc9_ = 1 - _loc7_ * _loc7_ / 8;
                     _loc10_ = (_loc8_ * _loc4_.var_84 + _loc6_ * _loc4_.var_83) * _loc9_;
                     _loc4_.var_83 = (_loc8_ * _loc4_.var_83 - _loc6_ * _loc4_.var_84) * _loc9_;
                     _loc4_.var_84 = _loc10_;
                  }
               }
            }
            if(!_loc4_.name_64)
            {
               _loc5_ = class_238.var_988 * _loc4_.var_258;
               _loc6_ = class_238.var_1029;
               if((_loc4_.var_104 * _loc4_.var_104 + _loc4_.var_105 * _loc4_.var_105) * param1 * param1 > _loc5_ * _loc5_ || _loc4_.var_94 * _loc4_.var_94 * param1 * param1 > _loc6_ * _loc6_ || _loc4_.type == class_223.var_216)
               {
                  _loc7_ = _loc4_.var_191;
                  if(_loc7_ < 0)
                  {
                     _loc7_ = -_loc7_;
                  }
                  _loc8_ = 1 / _loc7_;
                  _loc11_ = _loc4_.shapes.var_73;
                  while(_loc11_ != null)
                  {
                     _loc12_ = _loc11_.var_74;
                     _loc13_ = _loc12_.name_3;
                     _loc9_ = _loc13_.var_77;
                     _loc10_ = _loc13_.var_78;
                     _loc14_ = _loc13_.var_79;
                     _loc15_ = _loc13_.var_80;
                     _loc16_ = _loc7_ * param1 * _loc12_.var_366 * 0.00833333333333333;
                     if(_loc16_ > 8)
                     {
                        _loc16_ = 8;
                     }
                     _loc17_ = _loc7_ * param1 / _loc16_;
                     _loc18_ = param1 - _loc4_.var_176;
                     if(_loc18_ != 0)
                     {
                        _loc4_.var_176 = param1;
                        _loc19_ = _loc18_;
                        _loc4_.var_95 = Number(_loc4_.var_95 + _loc4_.var_104 * _loc19_);
                        _loc4_.var_96 = Number(_loc4_.var_96 + _loc4_.var_105 * _loc19_);
                        if(_loc4_.var_94 != 0)
                        {
                           _loc19_ = _loc4_.var_191 * _loc18_;
                           _loc4_.var_93 = Number(_loc4_.var_93 + _loc19_);
                           if(_loc19_ * _loc19_ > 0.0001)
                           {
                              _loc4_.var_84 = Number(Math.sin(_loc4_.var_93));
                              _loc4_.var_83 = Number(Math.cos(_loc4_.var_93));
                              null;
                           }
                           else
                           {
                              _loc20_ = _loc19_ * _loc19_;
                              _loc21_ = 1 - 0.5 * _loc20_;
                              _loc22_ = 1 - _loc20_ * _loc20_ / 8;
                              _loc23_ = (_loc21_ * _loc4_.var_84 + _loc19_ * _loc4_.var_83) * _loc22_;
                              _loc4_.var_83 = (_loc21_ * _loc4_.var_83 - _loc19_ * _loc4_.var_84) * _loc22_;
                              _loc4_.var_84 = _loc23_;
                           }
                        }
                     }
                     if(_loc12_.type == class_223.var_131)
                     {
                        _loc24_ = _loc12_.var_102;
                        _loc24_.var_99 = Number(_loc24_.body.var_95 + (_loc24_.body.var_83 * _loc24_.var_82 - _loc24_.body.var_84 * _loc24_.var_81));
                        _loc24_.var_100 = Number(_loc24_.body.var_96 + (Number(_loc24_.var_82 * _loc24_.body.var_84 + _loc24_.var_81 * _loc24_.body.var_83)));
                        _loc24_.name_3.var_77 = _loc24_.var_99 - _loc24_.radius;
                        _loc24_.name_3.var_78 = _loc24_.var_100 - _loc24_.radius;
                        _loc24_.name_3.var_79 = Number(_loc24_.var_99 + _loc24_.radius);
                        _loc24_.name_3.var_80 = Number(_loc24_.var_100 + _loc24_.radius);
                     }
                     else
                     {
                        _loc25_ = _loc12_.name_6;
                        _loc26_ = _loc25_.var_88.next;
                        _loc27_ = _loc25_.var_107.next;
                        _loc28_ = _loc26_;
                        _loc26_ = _loc26_.next;
                        _loc27_.x = Number(_loc25_.body.var_95 + (_loc25_.body.var_83 * _loc28_.x - _loc25_.body.var_84 * _loc28_.y));
                        _loc27_.y = Number(_loc25_.body.var_96 + (Number(_loc28_.x * _loc25_.body.var_84 + _loc28_.y * _loc25_.body.var_83)));
                        _loc25_.name_3.var_77 = _loc27_.x;
                        _loc25_.name_3.var_78 = _loc27_.y;
                        _loc25_.name_3.var_79 = _loc27_.x;
                        _loc25_.name_3.var_80 = _loc27_.y;
                        _loc29_ = _loc25_.var_107.next.next;
                        while(_loc29_ != null)
                        {
                           _loc30_ = _loc29_;
                           _loc31_ = _loc26_;
                           _loc26_ = _loc26_.next;
                           _loc30_.x = Number(_loc25_.body.var_95 + (_loc25_.body.var_83 * _loc31_.x - _loc25_.body.var_84 * _loc31_.y));
                           _loc30_.y = Number(_loc25_.body.var_96 + (Number(_loc31_.x * _loc25_.body.var_84 + _loc31_.y * _loc25_.body.var_83)));
                           if(_loc30_.x < _loc25_.name_3.var_77)
                           {
                              _loc25_.name_3.var_77 = _loc30_.x;
                           }
                           if(_loc30_.x > _loc25_.name_3.var_79)
                           {
                              _loc25_.name_3.var_79 = _loc30_.x;
                           }
                           if(_loc30_.y < _loc25_.name_3.var_78)
                           {
                              _loc25_.name_3.var_78 = _loc30_.y;
                           }
                           if(_loc30_.y > _loc25_.name_3.var_80)
                           {
                              _loc25_.name_3.var_80 = _loc30_.y;
                           }
                           _loc29_ = _loc29_.next;
                        }
                     }
                     if(_loc9_ < _loc13_.var_77)
                     {
                        _loc13_.var_77 = _loc9_;
                     }
                     else
                     {
                        _loc9_ = _loc13_.var_77;
                     }
                     if(_loc10_ < _loc13_.var_78)
                     {
                        _loc13_.var_78 = _loc10_;
                     }
                     else
                     {
                        _loc10_ = _loc13_.var_78;
                     }
                     if(_loc14_ > _loc13_.var_79)
                     {
                        _loc13_.var_79 = _loc14_;
                     }
                     else
                     {
                        _loc14_ = _loc13_.var_79;
                     }
                     if(_loc15_ > _loc13_.var_80)
                     {
                        _loc13_.var_80 = _loc15_;
                     }
                     else
                     {
                        _loc15_ = _loc13_.var_80;
                     }
                     _loc32_ = 1;
                     while(_loc32_ < _loc16_)
                     {
                        _loc32_++;
                        _loc33_ = _loc32_;
                        _loc18_ = _loc17_ * _loc33_ * _loc8_;
                        _loc19_ = _loc18_ - _loc4_.var_176;
                        if(_loc19_ != 0)
                        {
                           _loc4_.var_176 = _loc18_;
                           _loc20_ = _loc19_;
                           _loc4_.var_95 = Number(_loc4_.var_95 + _loc4_.var_104 * _loc20_);
                           _loc4_.var_96 = Number(_loc4_.var_96 + _loc4_.var_105 * _loc20_);
                           if(_loc4_.var_94 != 0)
                           {
                              _loc20_ = _loc4_.var_191 * _loc19_;
                              _loc4_.var_93 = Number(_loc4_.var_93 + _loc20_);
                              if(_loc20_ * _loc20_ > 0.0001)
                              {
                                 _loc4_.var_84 = Number(Math.sin(_loc4_.var_93));
                                 _loc4_.var_83 = Number(Math.cos(_loc4_.var_93));
                                 null;
                              }
                              else
                              {
                                 _loc21_ = _loc20_ * _loc20_;
                                 _loc22_ = 1 - 0.5 * _loc21_;
                                 _loc23_ = 1 - _loc21_ * _loc21_ / 8;
                                 _loc34_ = (_loc22_ * _loc4_.var_84 + _loc20_ * _loc4_.var_83) * _loc23_;
                                 _loc4_.var_83 = (_loc22_ * _loc4_.var_83 - _loc20_ * _loc4_.var_84) * _loc23_;
                                 _loc4_.var_84 = _loc34_;
                              }
                           }
                        }
                        if(_loc12_.type == class_223.var_131)
                        {
                           _loc24_ = _loc12_.var_102;
                           _loc24_.var_99 = Number(_loc24_.body.var_95 + (_loc24_.body.var_83 * _loc24_.var_82 - _loc24_.body.var_84 * _loc24_.var_81));
                           _loc24_.var_100 = Number(_loc24_.body.var_96 + (Number(_loc24_.var_82 * _loc24_.body.var_84 + _loc24_.var_81 * _loc24_.body.var_83)));
                           _loc24_.name_3.var_77 = _loc24_.var_99 - _loc24_.radius;
                           _loc24_.name_3.var_78 = _loc24_.var_100 - _loc24_.radius;
                           _loc24_.name_3.var_79 = Number(_loc24_.var_99 + _loc24_.radius);
                           _loc24_.name_3.var_80 = Number(_loc24_.var_100 + _loc24_.radius);
                        }
                        else
                        {
                           _loc25_ = _loc12_.name_6;
                           _loc26_ = _loc25_.var_88.next;
                           _loc27_ = _loc25_.var_107.next;
                           _loc28_ = _loc26_;
                           _loc26_ = _loc26_.next;
                           _loc27_.x = Number(_loc25_.body.var_95 + (_loc25_.body.var_83 * _loc28_.x - _loc25_.body.var_84 * _loc28_.y));
                           _loc27_.y = Number(_loc25_.body.var_96 + (Number(_loc28_.x * _loc25_.body.var_84 + _loc28_.y * _loc25_.body.var_83)));
                           _loc25_.name_3.var_77 = _loc27_.x;
                           _loc25_.name_3.var_78 = _loc27_.y;
                           _loc25_.name_3.var_79 = _loc27_.x;
                           _loc25_.name_3.var_80 = _loc27_.y;
                           _loc29_ = _loc25_.var_107.next.next;
                           while(_loc29_ != null)
                           {
                              _loc30_ = _loc29_;
                              _loc31_ = _loc26_;
                              _loc26_ = _loc26_.next;
                              _loc30_.x = Number(_loc25_.body.var_95 + (_loc25_.body.var_83 * _loc31_.x - _loc25_.body.var_84 * _loc31_.y));
                              _loc30_.y = Number(_loc25_.body.var_96 + (Number(_loc31_.x * _loc25_.body.var_84 + _loc31_.y * _loc25_.body.var_83)));
                              if(_loc30_.x < _loc25_.name_3.var_77)
                              {
                                 _loc25_.name_3.var_77 = _loc30_.x;
                              }
                              if(_loc30_.x > _loc25_.name_3.var_79)
                              {
                                 _loc25_.name_3.var_79 = _loc30_.x;
                              }
                              if(_loc30_.y < _loc25_.name_3.var_78)
                              {
                                 _loc25_.name_3.var_78 = _loc30_.y;
                              }
                              if(_loc30_.y > _loc25_.name_3.var_80)
                              {
                                 _loc25_.name_3.var_80 = _loc30_.y;
                              }
                              _loc29_ = _loc29_.next;
                           }
                        }
                        if(_loc9_ < _loc13_.var_77)
                        {
                           _loc13_.var_77 = _loc9_;
                        }
                        else
                        {
                           _loc9_ = _loc13_.var_77;
                        }
                        if(_loc10_ < _loc13_.var_78)
                        {
                           _loc13_.var_78 = _loc10_;
                        }
                        else
                        {
                           _loc10_ = _loc13_.var_78;
                        }
                        if(_loc14_ > _loc13_.var_79)
                        {
                           _loc13_.var_79 = _loc14_;
                        }
                        else
                        {
                           _loc14_ = _loc13_.var_79;
                        }
                        if(_loc15_ > _loc13_.var_80)
                        {
                           _loc13_.var_80 = _loc15_;
                        }
                        else
                        {
                           _loc15_ = _loc13_.var_80;
                        }
                     }
                     var_166.method_226(_loc12_);
                     _loc11_ = _loc11_.next;
                  }
                  _loc4_.var_273 = false;
                  if(_loc4_.type == class_223.var_188 && _loc4_.var_478)
                  {
                     _loc9_ = class_238.var_1028 * _loc4_.var_258;
                     _loc10_ = class_238.var_962;
                     if((_loc4_.var_104 * _loc4_.var_104 + _loc4_.var_105 * _loc4_.var_105) * param1 * param1 > _loc9_ * _loc9_ || _loc4_.var_94 * _loc4_.var_94 * param1 * param1 > _loc10_ * _loc10_)
                     {
                        _loc4_.bullet = true;
                     }
                  }
               }
               else
               {
                  _loc4_.var_273 = true;
                  _loc4_.bullet = false;
               }
            }
            else
            {
               _loc4_.var_273 = true;
               _loc4_.bullet = false;
            }
            _loc3_ = _loc3_.next;
         }
         _loc3_ = var_297.var_73;
         while(_loc3_ != null)
         {
            _loc4_ = _loc3_.var_74;
            _loc4_.var_306 = _loc4_.var_95;
            _loc4_.var_315 = _loc4_.var_96;
            _loc4_.var_448 = _loc4_.var_93;
            _loc4_.var_176 = 0;
            _loc4_.var_191 = _loc4_.var_94 % _loc2_;
            _loc5_ = param1 - _loc4_.var_176;
            if(_loc5_ != 0)
            {
               _loc4_.var_176 = param1;
               _loc6_ = _loc5_;
               _loc4_.var_95 = Number(_loc4_.var_95 + _loc4_.var_104 * _loc6_);
               _loc4_.var_96 = Number(_loc4_.var_96 + _loc4_.var_105 * _loc6_);
               if(_loc4_.var_94 != 0)
               {
                  _loc6_ = _loc4_.var_191 * _loc5_;
                  _loc4_.var_93 = Number(_loc4_.var_93 + _loc6_);
                  if(_loc6_ * _loc6_ > 0.0001)
                  {
                     _loc4_.var_84 = Number(Math.sin(_loc4_.var_93));
                     _loc4_.var_83 = Number(Math.cos(_loc4_.var_93));
                     null;
                  }
                  else
                  {
                     _loc7_ = _loc6_ * _loc6_;
                     _loc8_ = 1 - 0.5 * _loc7_;
                     _loc9_ = 1 - _loc7_ * _loc7_ / 8;
                     _loc10_ = (_loc8_ * _loc4_.var_84 + _loc6_ * _loc4_.var_83) * _loc9_;
                     _loc4_.var_83 = (_loc8_ * _loc4_.var_83 - _loc6_ * _loc4_.var_84) * _loc9_;
                     _loc4_.var_84 = _loc10_;
                  }
               }
            }
            if(!_loc4_.name_64)
            {
               _loc5_ = class_238.var_988 * _loc4_.var_258;
               _loc6_ = class_238.var_1029;
               if((_loc4_.var_104 * _loc4_.var_104 + _loc4_.var_105 * _loc4_.var_105) * param1 * param1 > _loc5_ * _loc5_ || _loc4_.var_94 * _loc4_.var_94 * param1 * param1 > _loc6_ * _loc6_ || _loc4_.type == class_223.var_216)
               {
                  _loc7_ = _loc4_.var_191;
                  if(_loc7_ < 0)
                  {
                     _loc7_ = -_loc7_;
                  }
                  _loc8_ = 1 / _loc7_;
                  _loc11_ = _loc4_.shapes.var_73;
                  while(_loc11_ != null)
                  {
                     _loc12_ = _loc11_.var_74;
                     _loc13_ = _loc12_.name_3;
                     _loc9_ = _loc13_.var_77;
                     _loc10_ = _loc13_.var_78;
                     _loc14_ = _loc13_.var_79;
                     _loc15_ = _loc13_.var_80;
                     _loc16_ = _loc7_ * param1 * _loc12_.var_366 * 0.00833333333333333;
                     if(_loc16_ > 8)
                     {
                        _loc16_ = 8;
                     }
                     _loc17_ = _loc7_ * param1 / _loc16_;
                     _loc18_ = param1 - _loc4_.var_176;
                     if(_loc18_ != 0)
                     {
                        _loc4_.var_176 = param1;
                        _loc19_ = _loc18_;
                        _loc4_.var_95 = Number(_loc4_.var_95 + _loc4_.var_104 * _loc19_);
                        _loc4_.var_96 = Number(_loc4_.var_96 + _loc4_.var_105 * _loc19_);
                        if(_loc4_.var_94 != 0)
                        {
                           _loc19_ = _loc4_.var_191 * _loc18_;
                           _loc4_.var_93 = Number(_loc4_.var_93 + _loc19_);
                           if(_loc19_ * _loc19_ > 0.0001)
                           {
                              _loc4_.var_84 = Number(Math.sin(_loc4_.var_93));
                              _loc4_.var_83 = Number(Math.cos(_loc4_.var_93));
                              null;
                           }
                           else
                           {
                              _loc20_ = _loc19_ * _loc19_;
                              _loc21_ = 1 - 0.5 * _loc20_;
                              _loc22_ = 1 - _loc20_ * _loc20_ / 8;
                              _loc23_ = (_loc21_ * _loc4_.var_84 + _loc19_ * _loc4_.var_83) * _loc22_;
                              _loc4_.var_83 = (_loc21_ * _loc4_.var_83 - _loc19_ * _loc4_.var_84) * _loc22_;
                              _loc4_.var_84 = _loc23_;
                           }
                        }
                     }
                     if(_loc12_.type == class_223.var_131)
                     {
                        _loc24_ = _loc12_.var_102;
                        _loc24_.var_99 = Number(_loc24_.body.var_95 + (_loc24_.body.var_83 * _loc24_.var_82 - _loc24_.body.var_84 * _loc24_.var_81));
                        _loc24_.var_100 = Number(_loc24_.body.var_96 + (Number(_loc24_.var_82 * _loc24_.body.var_84 + _loc24_.var_81 * _loc24_.body.var_83)));
                        _loc24_.name_3.var_77 = _loc24_.var_99 - _loc24_.radius;
                        _loc24_.name_3.var_78 = _loc24_.var_100 - _loc24_.radius;
                        _loc24_.name_3.var_79 = Number(_loc24_.var_99 + _loc24_.radius);
                        _loc24_.name_3.var_80 = Number(_loc24_.var_100 + _loc24_.radius);
                     }
                     else
                     {
                        _loc25_ = _loc12_.name_6;
                        _loc26_ = _loc25_.var_88.next;
                        _loc27_ = _loc25_.var_107.next;
                        _loc28_ = _loc26_;
                        _loc26_ = _loc26_.next;
                        _loc27_.x = Number(_loc25_.body.var_95 + (_loc25_.body.var_83 * _loc28_.x - _loc25_.body.var_84 * _loc28_.y));
                        _loc27_.y = Number(_loc25_.body.var_96 + (Number(_loc28_.x * _loc25_.body.var_84 + _loc28_.y * _loc25_.body.var_83)));
                        _loc25_.name_3.var_77 = _loc27_.x;
                        _loc25_.name_3.var_78 = _loc27_.y;
                        _loc25_.name_3.var_79 = _loc27_.x;
                        _loc25_.name_3.var_80 = _loc27_.y;
                        _loc29_ = _loc25_.var_107.next.next;
                        while(_loc29_ != null)
                        {
                           _loc30_ = _loc29_;
                           _loc31_ = _loc26_;
                           _loc26_ = _loc26_.next;
                           _loc30_.x = Number(_loc25_.body.var_95 + (_loc25_.body.var_83 * _loc31_.x - _loc25_.body.var_84 * _loc31_.y));
                           _loc30_.y = Number(_loc25_.body.var_96 + (Number(_loc31_.x * _loc25_.body.var_84 + _loc31_.y * _loc25_.body.var_83)));
                           if(_loc30_.x < _loc25_.name_3.var_77)
                           {
                              _loc25_.name_3.var_77 = _loc30_.x;
                           }
                           if(_loc30_.x > _loc25_.name_3.var_79)
                           {
                              _loc25_.name_3.var_79 = _loc30_.x;
                           }
                           if(_loc30_.y < _loc25_.name_3.var_78)
                           {
                              _loc25_.name_3.var_78 = _loc30_.y;
                           }
                           if(_loc30_.y > _loc25_.name_3.var_80)
                           {
                              _loc25_.name_3.var_80 = _loc30_.y;
                           }
                           _loc29_ = _loc29_.next;
                        }
                     }
                     if(_loc9_ < _loc13_.var_77)
                     {
                        _loc13_.var_77 = _loc9_;
                     }
                     else
                     {
                        _loc9_ = _loc13_.var_77;
                     }
                     if(_loc10_ < _loc13_.var_78)
                     {
                        _loc13_.var_78 = _loc10_;
                     }
                     else
                     {
                        _loc10_ = _loc13_.var_78;
                     }
                     if(_loc14_ > _loc13_.var_79)
                     {
                        _loc13_.var_79 = _loc14_;
                     }
                     else
                     {
                        _loc14_ = _loc13_.var_79;
                     }
                     if(_loc15_ > _loc13_.var_80)
                     {
                        _loc13_.var_80 = _loc15_;
                     }
                     else
                     {
                        _loc15_ = _loc13_.var_80;
                     }
                     _loc32_ = 1;
                     while(_loc32_ < _loc16_)
                     {
                        _loc32_++;
                        _loc33_ = _loc32_;
                        _loc18_ = _loc17_ * _loc33_ * _loc8_;
                        _loc19_ = _loc18_ - _loc4_.var_176;
                        if(_loc19_ != 0)
                        {
                           _loc4_.var_176 = _loc18_;
                           _loc20_ = _loc19_;
                           _loc4_.var_95 = Number(_loc4_.var_95 + _loc4_.var_104 * _loc20_);
                           _loc4_.var_96 = Number(_loc4_.var_96 + _loc4_.var_105 * _loc20_);
                           if(_loc4_.var_94 != 0)
                           {
                              _loc20_ = _loc4_.var_191 * _loc19_;
                              _loc4_.var_93 = Number(_loc4_.var_93 + _loc20_);
                              if(_loc20_ * _loc20_ > 0.0001)
                              {
                                 _loc4_.var_84 = Number(Math.sin(_loc4_.var_93));
                                 _loc4_.var_83 = Number(Math.cos(_loc4_.var_93));
                                 null;
                              }
                              else
                              {
                                 _loc21_ = _loc20_ * _loc20_;
                                 _loc22_ = 1 - 0.5 * _loc21_;
                                 _loc23_ = 1 - _loc21_ * _loc21_ / 8;
                                 _loc34_ = (_loc22_ * _loc4_.var_84 + _loc20_ * _loc4_.var_83) * _loc23_;
                                 _loc4_.var_83 = (_loc22_ * _loc4_.var_83 - _loc20_ * _loc4_.var_84) * _loc23_;
                                 _loc4_.var_84 = _loc34_;
                              }
                           }
                        }
                        if(_loc12_.type == class_223.var_131)
                        {
                           _loc24_ = _loc12_.var_102;
                           _loc24_.var_99 = Number(_loc24_.body.var_95 + (_loc24_.body.var_83 * _loc24_.var_82 - _loc24_.body.var_84 * _loc24_.var_81));
                           _loc24_.var_100 = Number(_loc24_.body.var_96 + (Number(_loc24_.var_82 * _loc24_.body.var_84 + _loc24_.var_81 * _loc24_.body.var_83)));
                           _loc24_.name_3.var_77 = _loc24_.var_99 - _loc24_.radius;
                           _loc24_.name_3.var_78 = _loc24_.var_100 - _loc24_.radius;
                           _loc24_.name_3.var_79 = Number(_loc24_.var_99 + _loc24_.radius);
                           _loc24_.name_3.var_80 = Number(_loc24_.var_100 + _loc24_.radius);
                        }
                        else
                        {
                           _loc25_ = _loc12_.name_6;
                           _loc26_ = _loc25_.var_88.next;
                           _loc27_ = _loc25_.var_107.next;
                           _loc28_ = _loc26_;
                           _loc26_ = _loc26_.next;
                           _loc27_.x = Number(_loc25_.body.var_95 + (_loc25_.body.var_83 * _loc28_.x - _loc25_.body.var_84 * _loc28_.y));
                           _loc27_.y = Number(_loc25_.body.var_96 + (Number(_loc28_.x * _loc25_.body.var_84 + _loc28_.y * _loc25_.body.var_83)));
                           _loc25_.name_3.var_77 = _loc27_.x;
                           _loc25_.name_3.var_78 = _loc27_.y;
                           _loc25_.name_3.var_79 = _loc27_.x;
                           _loc25_.name_3.var_80 = _loc27_.y;
                           _loc29_ = _loc25_.var_107.next.next;
                           while(_loc29_ != null)
                           {
                              _loc30_ = _loc29_;
                              _loc31_ = _loc26_;
                              _loc26_ = _loc26_.next;
                              _loc30_.x = Number(_loc25_.body.var_95 + (_loc25_.body.var_83 * _loc31_.x - _loc25_.body.var_84 * _loc31_.y));
                              _loc30_.y = Number(_loc25_.body.var_96 + (Number(_loc31_.x * _loc25_.body.var_84 + _loc31_.y * _loc25_.body.var_83)));
                              if(_loc30_.x < _loc25_.name_3.var_77)
                              {
                                 _loc25_.name_3.var_77 = _loc30_.x;
                              }
                              if(_loc30_.x > _loc25_.name_3.var_79)
                              {
                                 _loc25_.name_3.var_79 = _loc30_.x;
                              }
                              if(_loc30_.y < _loc25_.name_3.var_78)
                              {
                                 _loc25_.name_3.var_78 = _loc30_.y;
                              }
                              if(_loc30_.y > _loc25_.name_3.var_80)
                              {
                                 _loc25_.name_3.var_80 = _loc30_.y;
                              }
                              _loc29_ = _loc29_.next;
                           }
                        }
                        if(_loc9_ < _loc13_.var_77)
                        {
                           _loc13_.var_77 = _loc9_;
                        }
                        else
                        {
                           _loc9_ = _loc13_.var_77;
                        }
                        if(_loc10_ < _loc13_.var_78)
                        {
                           _loc13_.var_78 = _loc10_;
                        }
                        else
                        {
                           _loc10_ = _loc13_.var_78;
                        }
                        if(_loc14_ > _loc13_.var_79)
                        {
                           _loc13_.var_79 = _loc14_;
                        }
                        else
                        {
                           _loc14_ = _loc13_.var_79;
                        }
                        if(_loc15_ > _loc13_.var_80)
                        {
                           _loc13_.var_80 = _loc15_;
                        }
                        else
                        {
                           _loc15_ = _loc13_.var_80;
                        }
                     }
                     var_166.method_226(_loc12_);
                     _loc11_ = _loc11_.next;
                  }
                  _loc4_.var_273 = false;
                  if(_loc4_.type == class_223.var_188 && _loc4_.var_478)
                  {
                     _loc9_ = class_238.var_1028 * _loc4_.var_258;
                     _loc10_ = class_238.var_962;
                     if((_loc4_.var_104 * _loc4_.var_104 + _loc4_.var_105 * _loc4_.var_105) * param1 * param1 > _loc9_ * _loc9_ || _loc4_.var_94 * _loc4_.var_94 * param1 * param1 > _loc10_ * _loc10_)
                     {
                        _loc4_.bullet = true;
                     }
                  }
               }
               else
               {
                  _loc4_.var_273 = true;
                  _loc4_.bullet = false;
               }
            }
            else
            {
               _loc4_.var_273 = true;
               _loc4_.bullet = false;
            }
            _loc3_ = _loc3_.next;
         }
      }
      
      public final function method_474(param1:ZPP_Body, param2:int) : void
      {
         var _loc3_:ZPP_Body = param1;
         if(!_loc3_.name_29)
         {
            _loc3_.var_112.var_211 = var_114 + (!!var_156?0:1);
            if(_loc3_.type == class_223.var_216)
            {
               _loc3_.var_261 = true;
            }
            if(_loc3_.var_112.var_129)
            {
               method_115(_loc3_,false);
            }
         }
         if(param1.type == class_223.var_188)
         {
            live.remove(param1);
         }
         else if(param1.type == class_223.var_216)
         {
            var_297.remove(param1);
            var_333.remove(param1);
         }
         else if(param1.type == class_223.var_240)
         {
            var_333.remove(param1);
         }
         param1.type = param2;
         if(param1.type == class_223.var_216)
         {
            var_297.add(param1);
         }
         if(param1.type == class_223.var_240)
         {
            ;
            ZPP_Space.static_validation(param1);
         }
         param1.var_112.var_129 = true;
         _loc3_ = param1;
         if(!_loc3_.name_29)
         {
            _loc3_.var_112.var_211 = var_114 + (!!var_156?0:1);
            if(_loc3_.type == class_223.var_216)
            {
               _loc3_.var_261 = true;
            }
            if(_loc3_.var_112.var_129)
            {
               method_115(_loc3_,true);
            }
         }
      }
      
      public final function name_53(param1:Number, param2:int, param3:int) : void
      {
         var _loc5_:* = null as class_305;
         var _loc6_:* = null as ZNPNode_ZPP_ColArbiter;
         var _loc7_:* = null as ZNPNode_ZPP_ColArbiter;
         var _loc8_:* = null as ZNPNode_ZPP_ColArbiter;
         var _loc9_:* = null as ZNPNode_ZPP_ColArbiter;
         var _loc10_:* = null as ZNPNode_ZPP_ColArbiter;
         var _loc11_:* = 0;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc16_:* = null as ZPP_Body;
         var _loc17_:* = false;
         var _loc18_:* = false;
         var _loc19_:* = null as ZNPNode_ZPP_Shape;
         var _loc20_:* = null as ZPP_Shape;
         var _loc22_:* = null as class_291;
         var _loc23_:* = null as ZNPNode_ZPP_Body;
         var _loc24_:* = null as ZNPNode_ZPP_Body;
         var _loc25_:* = null as ZNPNode_ZPP_Body;
         var _loc28_:* = null as ZPP_CallbackSet;
         var _loc29_:* = null as ZPP_CallbackSet;
         var _loc30_:* = null as ZPP_CallbackSet;
         var _loc31_:* = null as ZPP_CallbackSet;
         var _loc32_:* = null as String;
         var _loc33_:* = null as ZPP_Interactor;
         var _loc34_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc35_:* = null as ZPP_Arbiter;
         var _loc36_:* = null as ZPP_CbSet;
         var _loc37_:* = null as ZPP_CbSet;
         var _loc38_:* = null as ZPP_CbSetPair;
         var _loc39_:* = null as ZPP_CbSetPair;
         var _loc40_:* = null as class_303;
         var _loc41_:* = null as ZNPNode_ZPP_CbSetPair;
         var _loc42_:* = null as ZPP_CbSetPair;
         var _loc43_:* = null as ZNPNode_ZPP_InteractionListener;
         var _loc44_:* = null as ZPP_InteractionListener;
         var _loc45_:* = null as class_273;
         var _loc46_:* = null as ZPP_Interactor;
         var _loc47_:* = null as ZPP_OptionType;
         var _loc48_:* = null as ZNPList_ZPP_CbType;
         var _loc49_:* = null as ZPP_BodyListener;
         var _loc50_:* = null as ZPP_ConstraintListener;
         var _loc51_:* = null as class_273;
         var _loc4_:* = {};
         time = Number(time + param1);
         var_197 = param1;
         var_156 = true;
         var_114 = var_114 + 1;
         name_58();
         var_166.method_298(this,true);
         prestep(param1);
         if(var_595)
         {
            _loc5_ = var_175;
            if(_loc5_.var_73 != null && _loc5_.var_73.next != null)
            {
               _loc6_ = _loc5_.var_73;
               _loc7_ = null;
               _loc8_ = null;
               _loc9_ = null;
               _loc10_ = null;
               _loc11_ = 1;
               do
               {
                  _loc12_ = 0;
                  _loc8_ = _loc6_;
                  _loc6_ = null;
                  _loc7_ = _loc6_;
                  while(_loc8_ != null)
                  {
                     _loc12_++;
                     _loc9_ = _loc8_;
                     _loc13_ = 0;
                     _loc14_ = _loc11_;
                     while(_loc9_ != null && _loc13_ < _loc11_)
                     {
                        _loc13_++;
                        _loc9_ = _loc9_.next;
                     }
                     while(_loc13_ > 0 || _loc14_ > 0 && _loc9_ != null)
                     {
                        if(_loc13_ == 0)
                        {
                           _loc10_ = _loc9_;
                           _loc9_ = _loc9_.next;
                           _loc14_--;
                        }
                        else if(_loc14_ == 0 || _loc9_ == null)
                        {
                           _loc10_ = _loc8_;
                           _loc8_ = _loc8_.next;
                           _loc13_--;
                        }
                        else
                        {
                           _loc10_ = _loc8_;
                           _loc8_ = _loc8_.next;
                           _loc13_--;
                        }
                        if(_loc7_ != null)
                        {
                           _loc7_.next = _loc10_;
                        }
                        else
                        {
                           _loc6_ = _loc10_;
                        }
                        _loc7_ = _loc10_;
                     }
                     _loc8_ = _loc9_;
                  }
                  _loc7_.next = null;
                  _loc11_ = _loc11_ << 1;
               }
               while(_loc12_ > 1);
               
               _loc5_.var_73 = _loc6_;
               _loc5_.name_2 = true;
               _loc5_.var_76 = true;
            }
         }
         updateVel(param1);
         warmStart();
         iterateVel(param2);
         var _loc15_:* = var_297.var_73;
         while(_loc15_ != null)
         {
            _loc16_ = _loc15_.var_74;
            _loc16_.var_306 = _loc16_.var_95;
            _loc16_.var_315 = _loc16_.var_96;
            _loc16_.var_448 = _loc16_.var_93;
            _loc15_ = _loc15_.next;
         }
         _loc15_ = live.var_73;
         while(_loc15_ != null)
         {
            _loc16_ = _loc15_.var_74;
            _loc16_.var_306 = _loc16_.var_95;
            _loc16_.var_315 = _loc16_.var_96;
            _loc16_.var_448 = _loc16_.var_93;
            _loc15_ = _loc15_.next;
         }
         updatePos(param1);
         var_371 = true;
         continuousCollisions(param1);
         var_371 = false;
         iteratePos(param3);
         _loc15_ = var_297.var_73;
         while(_loc15_ != null)
         {
            _loc16_ = _loc15_.var_74;
            _loc17_ = !(_loc16_.var_95 == _loc16_.var_306 && _loc16_.var_96 == _loc16_.var_315);
            _loc18_ = _loc16_.var_448 != _loc16_.var_93;
            if(_loc17_)
            {
               _loc19_ = _loc16_.shapes.var_73;
               while(_loc19_ != null)
               {
                  _loc20_ = _loc19_.var_74;
                  if(_loc20_.type == class_223.var_155)
                  {
                     _loc20_.name_6.method_142();
                     _loc20_.name_6.method_141();
                  }
                  _loc20_.method_139();
                  _loc19_ = _loc19_.next;
               }
               _loc16_.var_139 = true;
            }
            if(_loc18_)
            {
               _loc16_.var_113 = true;
               _loc19_ = _loc16_.shapes.var_73;
               while(_loc19_ != null)
               {
                  _loc20_ = _loc19_.var_74;
                  if(_loc20_.type == class_223.var_155)
                  {
                     _loc20_.name_6.method_142();
                     _loc20_.name_6.method_141();
                  }
                  _loc20_.method_139();
                  _loc19_ = _loc19_.next;
               }
               _loc16_.var_139 = true;
            }
            _loc15_ = _loc15_.next;
         }
         _loc15_ = live.var_73;
         while(_loc15_ != null)
         {
            _loc16_ = _loc15_.var_74;
            _loc17_ = !(_loc16_.var_95 == _loc16_.var_306 && _loc16_.var_96 == _loc16_.var_315);
            _loc18_ = _loc16_.var_448 != _loc16_.var_93;
            if(_loc17_)
            {
               _loc19_ = _loc16_.shapes.var_73;
               while(_loc19_ != null)
               {
                  _loc20_ = _loc19_.var_74;
                  if(_loc20_.type == class_223.var_155)
                  {
                     _loc20_.name_6.method_142();
                     _loc20_.name_6.method_141();
                  }
                  _loc20_.method_139();
                  _loc19_ = _loc19_.next;
               }
               _loc16_.var_139 = true;
            }
            if(_loc18_)
            {
               _loc16_.var_113 = true;
               _loc19_ = _loc16_.shapes.var_73;
               while(_loc19_ != null)
               {
                  _loc20_ = _loc19_.var_74;
                  if(_loc20_.type == class_223.var_155)
                  {
                     _loc20_.name_6.method_142();
                     _loc20_.name_6.method_141();
                  }
                  _loc20_.method_139();
                  _loc19_ = _loc19_.next;
               }
               _loc16_.var_139 = true;
            }
            _loc15_ = _loc15_.next;
         }
         _loc15_ = null;
         var _loc21_:ZNPNode_ZPP_Body = var_333.var_73;
         while(_loc21_ != null)
         {
            _loc16_ = _loc21_.var_74;
            if(_loc16_.type != class_223.var_216 || _loc16_.var_104 == 0 && _loc16_.var_105 == 0 && _loc16_.var_94 == 0)
            {
               if(_loc16_.var_261)
               {
                  _loc16_.var_261 = false;
                  _loc21_ = _loc21_.next;
               }
               else
               {
                  _loc16_.var_112.var_129 = true;
                  _loc22_ = var_333;
                  if(_loc15_ == null)
                  {
                     _loc23_ = _loc22_.var_73;
                     _loc24_ = _loc23_.next;
                     _loc22_.var_73 = _loc24_;
                     if(_loc22_.var_73 == null)
                     {
                        _loc22_.var_76 = true;
                     }
                  }
                  else
                  {
                     _loc23_ = _loc15_.next;
                     _loc24_ = _loc23_.next;
                     _loc15_.next = _loc24_;
                     if(_loc24_ == null)
                     {
                        _loc22_.var_76 = true;
                     }
                  }
                  _loc25_ = _loc23_;
                  _loc25_.var_74 = null;
                  _loc25_.next = ZNPNode_ZPP_Body.var_72;
                  ZNPNode_ZPP_Body.var_72 = _loc25_;
                  _loc22_.name_2 = true;
                  _loc22_.length = _loc22_.length - 1;
                  _loc22_.var_76 = true;
                  _loc21_ = _loc24_;
               }
            }
            else
            {
               _loc15_ = _loc21_;
               _loc21_ = _loc21_.next;
            }
         }
         doForests(param1);
         sleepArbiters();
         var_156 = false;
         var _loc26_:* = null;
         var _loc27_:ZPP_CallbackSet = var_446.next;
         while(_loc27_ != null)
         {
            _loc28_ = _loc27_;
            if(_loc28_.name_12.var_73 == null)
            {
               _loc29_ = var_446;
               if(_loc26_ == null)
               {
                  _loc30_ = _loc29_.next;
                  _loc31_ = _loc30_.next;
                  _loc29_.next = _loc31_;
                  if(_loc29_.next == null)
                  {
                     _loc29_.var_76 = true;
                  }
               }
               else
               {
                  _loc30_ = _loc26_.next;
                  _loc31_ = _loc30_.next;
                  _loc26_.next = _loc31_;
                  if(_loc31_ == null)
                  {
                     _loc29_.var_76 = true;
                  }
               }
               _loc30_.var_120 = false;
               _loc29_.name_2 = true;
               _loc29_.length = _loc29_.length - 1;
               _loc29_.var_76 = true;
               _loc27_ = _loc31_;
               _loc32_ = _loc28_.int1.id + " " + _loc28_.int2.id;
               _loc29_ = _loc28_;
               _loc33_ = null;
               _loc29_.int2 = _loc33_;
               _loc29_.int1 = _loc33_;
               _loc11_ = -1;
               _loc29_.var_179 = _loc11_;
               _loc29_.id = _loc11_;
               _loc29_.var_852 = true;
               null;
               _loc29_.next = ZPP_CallbackSet.var_72;
               ZPP_CallbackSet.var_72 = _loc29_;
            }
            else
            {
               _loc18_ = true;
               _loc34_ = _loc28_.name_12.var_73;
               while(_loc34_ != null)
               {
                  _loc35_ = _loc34_.var_74;
                  if(_loc35_.var_129)
                  {
                     _loc34_ = _loc34_.next;
                     continue;
                  }
                  _loc18_ = false;
                  break;
               }
               _loc17_ = Boolean(_loc18_);
               _loc36_ = _loc28_.int1.var_134;
               _loc37_ = _loc28_.int2.var_134;
               _loc11_ = int(class_223.var_861);
               _loc39_ = null;
               if(_loc36_.var_141.length < _loc37_.var_141.length)
               {
                  _loc40_ = _loc36_.var_141;
               }
               else
               {
                  _loc40_ = _loc37_.var_141;
               }
               _loc41_ = _loc40_.var_73;
               while(_loc41_ != null)
               {
                  _loc42_ = _loc41_.var_74;
                  if(_loc42_.a == _loc36_ && _loc42_.b == _loc37_ || _loc42_.a == _loc37_ && _loc42_.b == _loc36_)
                  {
                     _loc39_ = _loc42_;
                     break;
                  }
                  _loc41_ = _loc41_.next;
               }
               if(_loc39_ == null)
               {
                  if(ZPP_CbSetPair.var_72 == null)
                  {
                     _loc42_ = new ZPP_CbSetPair();
                  }
                  else
                  {
                     _loc42_ = ZPP_CbSetPair.var_72;
                     ZPP_CbSetPair.var_72 = _loc42_.next;
                     _loc42_.next = null;
                  }
                  _loc42_.var_145 = true;
                  if(ZPP_CbSet.method_117(_loc36_,_loc37_))
                  {
                     _loc42_.a = _loc36_;
                     _loc42_.b = _loc37_;
                  }
                  else
                  {
                     _loc42_.a = _loc37_;
                     _loc42_.b = _loc36_;
                  }
                  _loc39_ = _loc42_;
                  _loc36_.var_141.add(_loc39_);
                  if(_loc37_ != _loc36_)
                  {
                     _loc37_.var_141.add(_loc39_);
                  }
               }
               if(_loc39_.var_145)
               {
                  _loc39_.var_145 = false;
                  _loc39_.method_138();
               }
               _loc38_ = _loc39_;
               _loc43_ = _loc38_.name_15.var_73;
               while(_loc43_ != null)
               {
                  _loc44_ = _loc43_.var_74;
                  if(_loc44_.event == _loc11_)
                  {
                     if((!_loc17_ || _loc44_.name_68) && !_loc28_.method_352(_loc44_.var_249))
                     {
                        _loc45_ = _loc4_.push_callback(_loc44_);
                        _loc45_.event = class_223.var_861;
                        _loc33_ = _loc28_.int1;
                        _loc46_ = _loc28_.int2;
                        _loc47_ = _loc44_.options1;
                        _loc48_ = _loc33_.name_10;
                        _loc47_;
                        if(!!ZPP_OptionType.method_113(_loc48_,_loc47_.name_18) && !ZPP_OptionType.method_113(_loc48_,_loc47_.name_22) && (!!ZPP_OptionType.method_113(_loc48_,_loc47_.name_18) && !ZPP_OptionType.method_113(_loc48_,_loc47_.name_22)))
                        {
                           _loc45_.int1 = _loc33_;
                           _loc45_.int2 = _loc46_;
                        }
                        else
                        {
                           _loc45_.int1 = _loc46_;
                           _loc45_.int2 = _loc33_;
                        }
                        _loc45_.name_40 = _loc28_;
                     }
                  }
                  _loc43_ = _loc43_.next;
               }
               _loc26_ = _loc27_;
               _loc27_ = _loc27_.next;
            }
         }
         while(!var_544.empty())
         {
            _loc45_ = var_544.pop();
            if(_loc45_.listener.type == class_223.var_905)
            {
               _loc49_ = _loc45_.listener.body;
               _loc49_.handler(_loc45_.method_712());
            }
            else if(_loc45_.listener.type == class_223.var_948)
            {
               _loc50_ = _loc45_.listener.name_44;
               _loc50_.handler(_loc45_.method_618());
            }
            else if(_loc45_.listener.type == class_223.var_900)
            {
               _loc44_ = _loc45_.listener.var_656;
               _loc44_.handleri(_loc45_.method_622());
            }
            _loc51_ = _loc45_;
            _loc33_ = null;
            _loc51_.int2 = _loc33_;
            _loc51_.int1 = _loc33_;
            _loc51_.body = null;
            _loc51_.name_44 = null;
            _loc51_.listener = null;
            if(_loc51_.var_174 != null)
            {
               _loc51_.var_174.zpp_inner.name_4 = null;
            }
            _loc51_.name_40 = null;
            _loc51_.next = class_273.var_72;
            class_273.var_72 = _loc51_;
         }
      }
      
      public final function sleepArbiters() : void
      {
         var _loc5_:* = null as ZPP_ColArbiter;
         var _loc6_:* = null as ZNPNode_ZPP_ColArbiter;
         var _loc7_:* = null as ZNPNode_ZPP_ColArbiter;
         var _loc8_:* = null as ZNPNode_ZPP_ColArbiter;
         var _loc12_:* = null as ZPP_FluidArbiter;
         var _loc13_:* = null as ZNPNode_ZPP_FluidArbiter;
         var _loc14_:* = null as ZNPNode_ZPP_FluidArbiter;
         var _loc15_:* = null as ZNPNode_ZPP_FluidArbiter;
         var _loc19_:* = null as ZPP_SensorArbiter;
         var _loc20_:* = null as ZNPNode_ZPP_SensorArbiter;
         var _loc21_:* = null as ZNPNode_ZPP_SensorArbiter;
         var _loc22_:* = null as ZNPNode_ZPP_SensorArbiter;
         var _loc1_:* = null;
         var _loc2_:class_305 = var_228;
         var _loc3_:ZNPNode_ZPP_ColArbiter = _loc2_.var_73;
         var _loc4_:* = var_175 != null;
         if(!!_loc4_ && _loc3_ == null)
         {
            _loc4_ = false;
            _loc3_ = var_175.var_73;
            _loc2_ = var_175;
            _loc1_ = null;
         }
         while(_loc3_ != null)
         {
            _loc5_ = _loc3_.var_74;
            if(!!_loc5_.b1.var_112.var_129 && _loc5_.b2.var_112.var_129)
            {
               _loc5_.var_669 = var_114;
               _loc5_.var_129 = true;
               if(_loc1_ == null)
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
                  _loc6_ = _loc1_.next;
                  _loc7_ = _loc6_.next;
                  _loc1_.next = _loc7_;
                  if(_loc7_ == null)
                  {
                     _loc2_.var_76 = true;
                  }
               }
               _loc8_ = _loc6_;
               _loc8_.var_74 = null;
               _loc8_.next = ZNPNode_ZPP_ColArbiter.var_72;
               ZNPNode_ZPP_ColArbiter.var_72 = _loc8_;
               _loc2_.name_2 = true;
               _loc2_.length = _loc2_.length - 1;
               _loc2_.var_76 = true;
               _loc3_ = _loc7_;
               if(!!_loc4_ && _loc3_ == null)
               {
                  _loc4_ = false;
                  _loc3_ = var_175.var_73;
                  _loc2_ = var_175;
                  _loc1_ = null;
               }
            }
            else
            {
               _loc1_ = _loc3_;
               _loc3_ = _loc3_.next;
               if(!!_loc4_ && _loc3_ == null)
               {
                  _loc4_ = false;
                  _loc3_ = var_175.var_73;
                  _loc2_ = var_175;
                  _loc1_ = null;
               }
            }
         }
         var _loc9_:* = null;
         var _loc10_:* = var_217;
         var _loc11_:ZNPNode_ZPP_FluidArbiter = _loc10_.var_73;
         _loc4_ = false;
         if(!!_loc4_ && _loc11_ == null)
         {
            _loc4_ = false;
            _loc11_ = null.begin();
            _loc10_ = null;
            _loc9_ = null;
         }
         while(_loc11_ != null)
         {
            _loc12_ = _loc11_.var_74;
            if(!!_loc12_.b1.var_112.var_129 && _loc12_.b2.var_112.var_129)
            {
               _loc12_.var_669 = var_114;
               _loc12_.var_129 = true;
               if(_loc9_ == null)
               {
                  _loc13_ = _loc10_.var_73;
                  _loc14_ = _loc13_.next;
                  _loc10_.var_73 = _loc14_;
                  if(_loc10_.var_73 == null)
                  {
                     _loc10_.var_76 = true;
                  }
               }
               else
               {
                  _loc13_ = _loc9_.next;
                  _loc14_ = _loc13_.next;
                  _loc9_.next = _loc14_;
                  if(_loc14_ == null)
                  {
                     _loc10_.var_76 = true;
                  }
               }
               _loc15_ = _loc13_;
               _loc15_.var_74 = null;
               _loc15_.next = ZNPNode_ZPP_FluidArbiter.var_72;
               ZNPNode_ZPP_FluidArbiter.var_72 = _loc15_;
               _loc10_.name_2 = true;
               _loc10_.length = _loc10_.length - 1;
               _loc10_.var_76 = true;
               _loc11_ = _loc14_;
               if(!!_loc4_ && _loc11_ == null)
               {
                  _loc4_ = false;
                  _loc11_ = null.begin();
                  _loc10_ = null;
                  _loc9_ = null;
               }
            }
            else
            {
               _loc9_ = _loc11_;
               _loc11_ = _loc11_.next;
               if(!!_loc4_ && _loc11_ == null)
               {
                  _loc4_ = false;
                  _loc11_ = null.begin();
                  _loc10_ = null;
                  _loc9_ = null;
               }
            }
         }
         var _loc16_:* = null;
         var _loc17_:* = var_288;
         var _loc18_:ZNPNode_ZPP_SensorArbiter = _loc17_.var_73;
         _loc4_ = false;
         if(!!_loc4_ && _loc18_ == null)
         {
            _loc4_ = false;
            _loc18_ = null.begin();
            _loc17_ = null;
            _loc16_ = null;
         }
         while(_loc18_ != null)
         {
            _loc19_ = _loc18_.var_74;
            if(!!_loc19_.b1.var_112.var_129 && _loc19_.b2.var_112.var_129)
            {
               _loc19_.var_669 = var_114;
               _loc19_.var_129 = true;
               if(_loc16_ == null)
               {
                  _loc20_ = _loc17_.var_73;
                  _loc21_ = _loc20_.next;
                  _loc17_.var_73 = _loc21_;
                  if(_loc17_.var_73 == null)
                  {
                     _loc17_.var_76 = true;
                  }
               }
               else
               {
                  _loc20_ = _loc16_.next;
                  _loc21_ = _loc20_.next;
                  _loc16_.next = _loc21_;
                  if(_loc21_ == null)
                  {
                     _loc17_.var_76 = true;
                  }
               }
               _loc22_ = _loc20_;
               _loc22_.var_74 = null;
               _loc22_.next = ZNPNode_ZPP_SensorArbiter.var_72;
               ZNPNode_ZPP_SensorArbiter.var_72 = _loc22_;
               _loc17_.name_2 = true;
               _loc17_.length = _loc17_.length - 1;
               _loc17_.var_76 = true;
               _loc18_ = _loc21_;
               if(!!_loc4_ && _loc18_ == null)
               {
                  _loc4_ = false;
                  _loc18_ = null.begin();
                  _loc17_ = null;
                  _loc16_ = null;
               }
            }
            else
            {
               _loc16_ = _loc18_;
               _loc18_ = _loc18_.next;
               if(!!_loc4_ && _loc18_ == null)
               {
                  _loc4_ = false;
                  _loc18_ = null.begin();
                  _loc17_ = null;
                  _loc16_ = null;
               }
            }
         }
      }
      
      public final function method_267(param1:Number, param2:Number, param3:ZPP_InteractionFilter, param4:class_230) : class_230
      {
         return var_166.method_267(param1,param2,param3,param4);
      }
      
      public final function shapesInShape(param1:ZPP_Shape, param2:Boolean, param3:ZPP_InteractionFilter, param4:class_230) : class_230
      {
         return var_166.shapesInShape(param1,param2,param3,param4);
      }
      
      public final function method_256(param1:Vec2, param2:Number, param3:Boolean, param4:ZPP_InteractionFilter, param5:class_230) : class_230
      {
         var _loc6_:ZPP_Vec2 = param1.zpp_inner;
         §§push(var_166);
         if(_loc6_._validate != null)
         {
            _loc6_._validate();
         }
         _loc6_ = param1.zpp_inner;
         §§push(param1.zpp_inner.x);
         if(_loc6_._validate != null)
         {
            _loc6_._validate();
         }
         return §§pop().method_256(§§pop(),param1.zpp_inner.y,param2,param3,param4,param5);
      }
      
      public final function method_178(param1:class_237, param2:Boolean, param3:Boolean, param4:ZPP_InteractionFilter, param5:class_230) : class_230
      {
         return var_166.method_178(param1.zpp_inner,param2,param3,param4,param5);
      }
      
      public final function method_418(param1:ZPP_Shape, param2:Boolean = false) : void
      {
         var _loc7_:* = null as ZPP_Arbiter;
         var _loc8_:Boolean = false;
         var _loc9_:* = null as ZNPNode_ZPP_Interactor;
         var _loc10_:* = null as ZPP_Interactor;
         var _loc11_:* = null as ZNPNode_ZPP_Interactor;
         var _loc12_:* = null as ZPP_Interactor;
         var _loc13_:* = null as ZPP_CbSet;
         var _loc14_:* = null as ZPP_CbSet;
         var _loc15_:* = null as ZPP_CbSetPair;
         var _loc16_:* = null as ZPP_CbSetPair;
         var _loc17_:* = null as class_303;
         var _loc18_:* = null as ZNPNode_ZPP_CbSetPair;
         var _loc19_:* = null as ZPP_CbSetPair;
         var _loc20_:* = null as ZPP_CallbackSet;
         var _loc21_:int = 0;
         var _loc22_:* = null as ZNPNode_ZPP_InteractionListener;
         var _loc23_:* = null as ZPP_InteractionListener;
         var _loc24_:* = null as class_273;
         var _loc25_:* = null as ZPP_Interactor;
         var _loc26_:* = null as ZPP_Interactor;
         var _loc27_:* = null as ZPP_OptionType;
         var _loc28_:* = null as ZNPList_ZPP_CbType;
         var _loc29_:* = null as ZPP_Body;
         var _loc30_:* = null as class_254;
         var _loc31_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc32_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc33_:Boolean = false;
         var _loc34_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc35_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc36_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc3_:* = {};
         var _loc4_:ZPP_Body = param1.body;
         if(!param2)
         {
            _loc4_.method_106();
         }
         var _loc5_:* = null;
         var _loc6_:ZNPNode_ZPP_Arbiter = _loc4_.name_12.var_73;
         while(_loc6_ != null)
         {
            _loc7_ = _loc6_.var_74;
            _loc8_ = _loc7_.ws1 == param1 || _loc7_.ws2 == param1;
            if(_loc8_)
            {
               if(_loc7_.var_304 != 0)
               {
                  MRCA_chains(_loc7_.ws1,_loc7_.ws2);
                  _loc9_ = mrca1.var_73;
                  while(_loc9_ != null)
                  {
                     _loc10_ = _loc9_.var_74;
                     _loc11_ = mrca2.var_73;
                     while(_loc11_ != null)
                     {
                        _loc12_ = _loc11_.var_74;
                        _loc13_ = _loc10_.var_134;
                        _loc14_ = _loc12_.var_134;
                        _loc13_.validate();
                        _loc14_.validate();
                        _loc16_ = null;
                        if(_loc13_.var_141.length < _loc14_.var_141.length)
                        {
                           _loc17_ = _loc13_.var_141;
                        }
                        else
                        {
                           _loc17_ = _loc14_.var_141;
                        }
                        _loc18_ = _loc17_.var_73;
                        while(_loc18_ != null)
                        {
                           _loc19_ = _loc18_.var_74;
                           if(_loc19_.a == _loc13_ && _loc19_.b == _loc14_ || _loc19_.a == _loc14_ && _loc19_.b == _loc13_)
                           {
                              _loc16_ = _loc19_;
                              break;
                           }
                           _loc18_ = _loc18_.next;
                        }
                        if(_loc16_ == null)
                        {
                           if(ZPP_CbSetPair.var_72 == null)
                           {
                              _loc19_ = new ZPP_CbSetPair();
                           }
                           else
                           {
                              _loc19_ = ZPP_CbSetPair.var_72;
                              ZPP_CbSetPair.var_72 = _loc19_.next;
                              _loc19_.next = null;
                           }
                           _loc19_.var_145 = true;
                           if(ZPP_CbSet.method_117(_loc13_,_loc14_))
                           {
                              _loc19_.a = _loc13_;
                              _loc19_.b = _loc14_;
                           }
                           else
                           {
                              _loc19_.a = _loc14_;
                              _loc19_.b = _loc13_;
                           }
                           _loc16_ = _loc19_;
                           _loc13_.var_141.add(_loc16_);
                           if(_loc14_ != _loc13_)
                           {
                              _loc14_.var_141.add(_loc16_);
                           }
                        }
                        if(_loc16_.var_145)
                        {
                           _loc16_.var_145 = false;
                           _loc16_.method_138();
                        }
                        _loc15_ = _loc16_;
                        if(_loc15_.name_15.var_73 == null)
                        {
                           _loc11_ = _loc11_.next;
                        }
                        else
                        {
                           _loc20_ = ZPP_Interactor.method_65(_loc10_,_loc12_);
                           _loc20_.method_404(_loc7_);
                           _loc7_.var_304 = _loc7_.var_304 - 1;
                           _loc21_ = class_223.var_712;
                           _loc16_ = null;
                           if(_loc13_.var_141.length < _loc14_.var_141.length)
                           {
                              _loc17_ = _loc13_.var_141;
                           }
                           else
                           {
                              _loc17_ = _loc14_.var_141;
                           }
                           _loc18_ = _loc17_.var_73;
                           while(_loc18_ != null)
                           {
                              _loc19_ = _loc18_.var_74;
                              if(_loc19_.a == _loc13_ && _loc19_.b == _loc14_ || _loc19_.a == _loc14_ && _loc19_.b == _loc13_)
                              {
                                 _loc16_ = _loc19_;
                                 break;
                              }
                              _loc18_ = _loc18_.next;
                           }
                           if(_loc16_ == null)
                           {
                              if(ZPP_CbSetPair.var_72 == null)
                              {
                                 _loc19_ = new ZPP_CbSetPair();
                              }
                              else
                              {
                                 _loc19_ = ZPP_CbSetPair.var_72;
                                 ZPP_CbSetPair.var_72 = _loc19_.next;
                                 _loc19_.next = null;
                              }
                              _loc19_.var_145 = true;
                              if(ZPP_CbSet.method_117(_loc13_,_loc14_))
                              {
                                 _loc19_.a = _loc13_;
                                 _loc19_.b = _loc14_;
                              }
                              else
                              {
                                 _loc19_.a = _loc14_;
                                 _loc19_.b = _loc13_;
                              }
                              _loc16_ = _loc19_;
                              _loc13_.var_141.add(_loc16_);
                              if(_loc14_ != _loc13_)
                              {
                                 _loc14_.var_141.add(_loc16_);
                              }
                           }
                           if(_loc16_.var_145)
                           {
                              _loc16_.var_145 = false;
                              _loc16_.method_138();
                           }
                           _loc15_ = _loc16_;
                           _loc22_ = _loc15_.name_15.var_73;
                           while(_loc22_ != null)
                           {
                              _loc23_ = _loc22_.var_74;
                              if(_loc23_.event == _loc21_)
                              {
                                 if((_loc23_.var_249 & _loc7_.type) != 0 && _loc20_.method_352(_loc23_.var_249))
                                 {
                                    _loc24_ = _loc3_.push_callback(_loc23_);
                                    _loc24_.event = class_223.var_712;
                                    _loc25_ = _loc20_.int1;
                                    _loc26_ = _loc20_.int2;
                                    _loc27_ = _loc23_.options1;
                                    _loc28_ = _loc25_.name_10;
                                    _loc27_;
                                    if(!!ZPP_OptionType.method_113(_loc28_,_loc27_.name_18) && !ZPP_OptionType.method_113(_loc28_,_loc27_.name_22) && (!!ZPP_OptionType.method_113(_loc28_,_loc27_.name_18) && !ZPP_OptionType.method_113(_loc28_,_loc27_.name_22)))
                                    {
                                       _loc24_.int1 = _loc25_;
                                       _loc24_.int2 = _loc26_;
                                    }
                                    else
                                    {
                                       _loc24_.int1 = _loc26_;
                                       _loc24_.int2 = _loc25_;
                                    }
                                    _loc24_.name_40 = _loc20_;
                                 }
                              }
                              _loc22_ = _loc22_.next;
                           }
                           if(_loc20_.name_12.var_73 == null)
                           {
                              ;
                              ZPP_Space.remove_callbackset(_loc20_);
                           }
                           _loc11_ = _loc11_.next;
                        }
                     }
                     _loc9_ = _loc9_.next;
                  }
               }
               if(_loc7_.b1 != _loc4_ && _loc7_.b1.type == class_223.var_188)
               {
                  _loc29_ = _loc7_.b1;
                  if(!_loc29_.name_29)
                  {
                     _loc29_.var_112.var_211 = var_114 + (!!var_156?0:1);
                     if(_loc29_.type == class_223.var_216)
                     {
                        _loc29_.var_261 = true;
                     }
                     if(_loc29_.var_112.var_129)
                     {
                        method_115(_loc29_,false);
                     }
                  }
               }
               if(_loc7_.b2 != _loc4_ && _loc7_.b2.type == class_223.var_188)
               {
                  _loc29_ = _loc7_.b2;
                  if(!_loc29_.name_29)
                  {
                     _loc29_.var_112.var_211 = var_114 + (!!var_156?0:1);
                     if(_loc29_.type == class_223.var_216)
                     {
                        _loc29_.var_261 = true;
                     }
                     if(_loc29_.var_112.var_129)
                     {
                        method_115(_loc29_,false);
                     }
                  }
               }
               _loc7_.var_265 = true;
               if(_loc4_ == null || _loc7_.b2 == _loc4_)
               {
                  _loc30_ = _loc7_.b1.name_12;
                  _loc31_ = null;
                  _loc32_ = _loc30_.var_73;
                  _loc33_ = false;
                  while(_loc32_ != null)
                  {
                     if(_loc32_.var_74 == _loc7_)
                     {
                        if(_loc31_ == null)
                        {
                           _loc34_ = _loc30_.var_73;
                           _loc35_ = _loc34_.next;
                           _loc30_.var_73 = _loc35_;
                           if(_loc30_.var_73 == null)
                           {
                              _loc30_.var_76 = true;
                           }
                        }
                        else
                        {
                           _loc34_ = _loc31_.next;
                           _loc35_ = _loc34_.next;
                           _loc31_.next = _loc35_;
                           if(_loc35_ == null)
                           {
                              _loc30_.var_76 = true;
                           }
                        }
                        _loc36_ = _loc34_;
                        _loc36_.var_74 = null;
                        _loc36_.next = ZNPNode_ZPP_Arbiter.var_72;
                        ZNPNode_ZPP_Arbiter.var_72 = _loc36_;
                        _loc30_.name_2 = true;
                        _loc30_.length = _loc30_.length - 1;
                        _loc30_.var_76 = true;
                        _loc35_;
                        _loc33_ = true;
                        break;
                     }
                     _loc31_ = _loc32_;
                     _loc32_ = _loc32_.next;
                  }
                  _loc33_;
               }
               if(_loc4_ == null || _loc7_.b1 == _loc4_)
               {
                  _loc30_ = _loc7_.b2.name_12;
                  _loc31_ = null;
                  _loc32_ = _loc30_.var_73;
                  _loc33_ = false;
                  while(_loc32_ != null)
                  {
                     if(_loc32_.var_74 == _loc7_)
                     {
                        if(_loc31_ == null)
                        {
                           _loc34_ = _loc30_.var_73;
                           _loc35_ = _loc34_.next;
                           _loc30_.var_73 = _loc35_;
                           if(_loc30_.var_73 == null)
                           {
                              _loc30_.var_76 = true;
                           }
                        }
                        else
                        {
                           _loc34_ = _loc31_.next;
                           _loc35_ = _loc34_.next;
                           _loc31_.next = _loc35_;
                           if(_loc35_ == null)
                           {
                              _loc30_.var_76 = true;
                           }
                        }
                        _loc36_ = _loc34_;
                        _loc36_.var_74 = null;
                        _loc36_.next = ZNPNode_ZPP_Arbiter.var_72;
                        ZNPNode_ZPP_Arbiter.var_72 = _loc36_;
                        _loc30_.name_2 = true;
                        _loc30_.length = _loc30_.length - 1;
                        _loc30_.var_76 = true;
                        _loc35_;
                        _loc33_ = true;
                        break;
                     }
                     _loc31_ = _loc32_;
                     _loc32_ = _loc32_.next;
                  }
                  _loc33_;
               }
               if(_loc7_.var_209 != null)
               {
                  _loc7_.var_209.var_246 = null;
                  _loc7_.var_209 = null;
               }
               _loc7_.active = false;
               var_217.name_2 = true;
               _loc6_ = _loc4_.name_12.erase(_loc5_);
            }
            else
            {
               _loc5_ = _loc6_;
               _loc6_ = _loc6_.next;
            }
         }
         var_166.remove(param1);
         param1.method_120();
      }
      
      public final function method_300(param1:ZPP_Constraint) : void
      {
         if(param1.active)
         {
            method_165(param1,true);
            var_221.remove(param1);
         }
         param1.method_120();
         param1.space = null;
      }
      
      public final function method_304(param1:ZPP_Compound) : void
      {
         var _loc3_:* = null as ZPP_Body;
         var _loc5_:* = null as ZPP_Constraint;
         var _loc7_:* = null as ZPP_Compound;
         var _loc2_:ZNPNode_ZPP_Body = param1.name_30.var_73;
         while(_loc2_ != null)
         {
            _loc3_ = _loc2_.var_74;
            method_281(_loc3_);
            _loc2_ = _loc2_.next;
         }
         var _loc4_:ZNPNode_ZPP_Constraint = param1.name_19.var_73;
         while(_loc4_ != null)
         {
            _loc5_ = _loc4_.var_74;
            method_300(_loc5_);
            _loc4_ = _loc4_.next;
         }
         var _loc6_:ZNPNode_ZPP_Compound = param1.name_27.var_73;
         while(_loc6_ != null)
         {
            _loc7_ = _loc6_.var_74;
            method_304(_loc7_);
            _loc6_ = _loc6_.next;
         }
         param1.method_120();
         param1.space = null;
      }
      
      public final function method_281(param1:ZPP_Body, param2:int = -1) : void
      {
         var _loc3_:* = null as ZPP_Body;
         var _loc5_:* = null as ZPP_Shape;
         if(param1.type == class_223.var_240)
         {
            _loc3_ = param1;
            if(!_loc3_.name_29)
            {
               _loc3_.var_112.var_211 = var_114 + (!!var_156?0:1);
               if(_loc3_.type == class_223.var_216)
               {
                  _loc3_.var_261 = true;
               }
               if(_loc3_.var_112.var_129)
               {
                  method_115(_loc3_,true);
               }
            }
            var_333.remove(param1);
         }
         else if(param1.type == class_223.var_188)
         {
            _loc3_ = param1;
            if(!_loc3_.name_29)
            {
               _loc3_.var_112.var_211 = var_114 + (!!var_156?0:1);
               if(_loc3_.type == class_223.var_216)
               {
                  _loc3_.var_261 = true;
               }
               if(_loc3_.var_112.var_129)
               {
                  method_115(_loc3_,true);
               }
            }
            live.remove(param1);
         }
         else
         {
            if(param2 != class_223.var_216)
            {
               var_297.remove(param1);
            }
            _loc3_ = param1;
            if(!_loc3_.name_29)
            {
               _loc3_.var_112.var_211 = var_114 + (!!var_156?0:1);
               if(_loc3_.type == class_223.var_216)
               {
                  _loc3_.var_261 = true;
               }
               if(_loc3_.var_112.var_129)
               {
                  method_115(_loc3_,true);
               }
            }
            var_333.remove(param1);
         }
         var _loc4_:ZNPNode_ZPP_Shape = param1.shapes.var_73;
         while(_loc4_ != null)
         {
            _loc5_ = _loc4_.var_74;
            method_418(_loc5_,true);
            _loc4_ = _loc4_.next;
         }
         param1.method_120();
         param1.space = null;
      }
      
      public final function method_115(param1:ZPP_Body, param2:Boolean = false) : void
      {
         var _loc3_:* = null as class_291;
         var _loc4_:* = null as ZNPNode_ZPP_Body;
         var _loc5_:* = null as ZNPNode_ZPP_Body;
         var _loc6_:* = null as ZNPNode_ZPP_Constraint;
         var _loc7_:* = null as ZPP_Constraint;
         var _loc8_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc9_:* = null as ZPP_Arbiter;
         var _loc10_:* = null as ZPP_ColArbiter;
         var _loc11_:* = null as class_305;
         var _loc12_:* = null as ZNPNode_ZPP_ColArbiter;
         var _loc13_:* = null as ZNPNode_ZPP_ColArbiter;
         var _loc14_:* = null as class_299;
         var _loc15_:* = null as ZPP_FluidArbiter;
         var _loc16_:* = null as ZNPNode_ZPP_FluidArbiter;
         var _loc17_:* = null as ZNPNode_ZPP_FluidArbiter;
         var _loc18_:* = null as class_307;
         var _loc19_:* = null as ZPP_SensorArbiter;
         var _loc20_:* = null as ZNPNode_ZPP_SensorArbiter;
         var _loc21_:* = null as ZNPNode_ZPP_SensorArbiter;
         var _loc22_:* = null as ZPP_Body;
         var _loc23_:* = null as ZNPNode_ZPP_Shape;
         var _loc24_:* = null as ZPP_Shape;
         if(param1.var_112.var_224 == null)
         {
            param1.var_112.var_129 = false;
            if(param1.type == class_223.var_216 || param1.type == class_223.var_240)
            {
               _loc3_ = var_333;
               if(ZNPNode_ZPP_Body.var_72 == null)
               {
                  _loc5_ = new ZNPNode_ZPP_Body();
               }
               else
               {
                  _loc5_ = ZNPNode_ZPP_Body.var_72;
                  ZNPNode_ZPP_Body.var_72 = _loc5_.next;
                  _loc5_.next = null;
               }
               null;
               _loc5_.var_74 = param1;
               _loc4_ = _loc5_;
               _loc4_.next = _loc3_.var_73;
               _loc3_.var_73 = _loc4_;
               _loc3_.name_2 = true;
               _loc3_.length = _loc3_.length + 1;
               param1;
            }
            else
            {
               _loc3_ = live;
               if(ZNPNode_ZPP_Body.var_72 == null)
               {
                  _loc5_ = new ZNPNode_ZPP_Body();
               }
               else
               {
                  _loc5_ = ZNPNode_ZPP_Body.var_72;
                  ZNPNode_ZPP_Body.var_72 = _loc5_.next;
                  _loc5_.next = null;
               }
               null;
               _loc5_.var_74 = param1;
               _loc4_ = _loc5_;
               _loc4_.next = _loc3_.var_73;
               _loc3_.var_73 = _loc4_;
               _loc3_.name_2 = true;
               _loc3_.length = _loc3_.length + 1;
               param1;
            }
            _loc6_ = param1.name_19.var_73;
            while(_loc6_ != null)
            {
               _loc7_ = _loc6_.var_74;
               if(_loc7_.space == this)
               {
                  method_165(_loc7_);
               }
               _loc6_ = _loc6_.next;
            }
            _loc8_ = param1.name_12.var_73;
            while(_loc8_ != null)
            {
               _loc9_ = _loc8_.var_74;
               if(_loc9_.var_129)
               {
                  _loc9_.var_129 = false;
                  _loc9_.var_360 = _loc9_.var_360 + (var_114 + (!!var_156?0:1) - _loc9_.var_669);
                  if(_loc9_.type == ZPP_Arbiter.var_292)
                  {
                     _loc10_ = _loc9_.var_128;
                     if(_loc10_.var_622)
                     {
                        _loc11_ = var_228;
                        if(ZNPNode_ZPP_ColArbiter.var_72 == null)
                        {
                           _loc13_ = new ZNPNode_ZPP_ColArbiter();
                        }
                        else
                        {
                           _loc13_ = ZNPNode_ZPP_ColArbiter.var_72;
                           ZNPNode_ZPP_ColArbiter.var_72 = _loc13_.next;
                           _loc13_.next = null;
                        }
                        null;
                        _loc13_.var_74 = _loc10_;
                        _loc12_ = _loc13_;
                        _loc12_.next = _loc11_.var_73;
                        _loc11_.var_73 = _loc12_;
                        _loc11_.name_2 = true;
                        _loc11_.length = _loc11_.length + 1;
                        _loc10_;
                     }
                     else
                     {
                        _loc11_ = var_175;
                        if(ZNPNode_ZPP_ColArbiter.var_72 == null)
                        {
                           _loc13_ = new ZNPNode_ZPP_ColArbiter();
                        }
                        else
                        {
                           _loc13_ = ZNPNode_ZPP_ColArbiter.var_72;
                           ZNPNode_ZPP_ColArbiter.var_72 = _loc13_.next;
                           _loc13_.next = null;
                        }
                        null;
                        _loc13_.var_74 = _loc10_;
                        _loc12_ = _loc13_;
                        _loc12_.next = _loc11_.var_73;
                        _loc11_.var_73 = _loc12_;
                        _loc11_.name_2 = true;
                        _loc11_.length = _loc11_.length + 1;
                        _loc10_;
                     }
                  }
                  else if(_loc9_.type == ZPP_Arbiter.FLUID)
                  {
                     _loc14_ = var_217;
                     _loc15_ = _loc9_.var_161;
                     if(ZNPNode_ZPP_FluidArbiter.var_72 == null)
                     {
                        _loc17_ = new ZNPNode_ZPP_FluidArbiter();
                     }
                     else
                     {
                        _loc17_ = ZNPNode_ZPP_FluidArbiter.var_72;
                        ZNPNode_ZPP_FluidArbiter.var_72 = _loc17_.next;
                        _loc17_.next = null;
                     }
                     null;
                     _loc17_.var_74 = _loc15_;
                     _loc16_ = _loc17_;
                     _loc16_.next = _loc14_.var_73;
                     _loc14_.var_73 = _loc16_;
                     _loc14_.name_2 = true;
                     _loc14_.length = _loc14_.length + 1;
                     _loc15_;
                  }
                  else
                  {
                     _loc18_ = var_288;
                     _loc19_ = _loc9_.var_624;
                     if(ZNPNode_ZPP_SensorArbiter.var_72 == null)
                     {
                        _loc21_ = new ZNPNode_ZPP_SensorArbiter();
                     }
                     else
                     {
                        _loc21_ = ZNPNode_ZPP_SensorArbiter.var_72;
                        ZNPNode_ZPP_SensorArbiter.var_72 = _loc21_.next;
                        _loc21_.next = null;
                     }
                     null;
                     _loc21_.var_74 = _loc19_;
                     _loc20_ = _loc21_;
                     _loc20_.next = _loc18_.var_73;
                     _loc18_.var_73 = _loc20_;
                     _loc18_.name_2 = true;
                     _loc18_.length = _loc18_.length + 1;
                     _loc19_;
                  }
               }
               if(_loc9_.type != ZPP_Arbiter.SENSOR && !_loc9_.var_265 && _loc9_.var_360 >= var_114 && (_loc9_.var_181 & class_223.var_267) != 0)
               {
                  if(_loc9_.b1.type == class_223.var_188 && _loc9_.b1.var_112.var_129)
                  {
                     _loc22_ = _loc9_.b1;
                     if(!_loc22_.name_29)
                     {
                        _loc22_.var_112.var_211 = var_114 + (!!var_156?0:1);
                        if(_loc22_.type == class_223.var_216)
                        {
                           _loc22_.var_261 = true;
                        }
                        if(_loc22_.var_112.var_129)
                        {
                           method_115(_loc22_,false);
                        }
                     }
                  }
                  if(_loc9_.b2.type == class_223.var_188 && _loc9_.b2.var_112.var_129)
                  {
                     _loc22_ = _loc9_.b2;
                     if(!_loc22_.name_29)
                     {
                        _loc22_.var_112.var_211 = var_114 + (!!var_156?0:1);
                        if(_loc22_.type == class_223.var_216)
                        {
                           _loc22_.var_261 = true;
                        }
                        if(_loc22_.var_112.var_129)
                        {
                           method_115(_loc22_,false);
                        }
                     }
                  }
               }
               _loc8_ = _loc8_.next;
            }
            if(!param2 && param1.type == class_223.var_188)
            {
               bodyCbWake(param1);
            }
            if(!param2 && !var_166.var_432 && param1.type != class_223.var_240)
            {
               _loc23_ = param1.shapes.var_73;
               while(_loc23_ != null)
               {
                  _loc24_ = _loc23_.var_74;
                  if(_loc24_.var_138 != null)
                  {
                     var_166.method_226(_loc24_);
                  }
                  _loc23_ = _loc23_.next;
               }
            }
         }
         else
         {
            wakeIsland(param1.var_112.var_224);
         }
      }
      
      public final function method_222(param1:class_232, param2:Boolean, param3:class_222, param4:class_233) : class_233
      {
         return var_166.method_222(param1.zpp_inner,param2,param3 == null?null:param3.zpp_inner,param4);
      }
      
      public final function method_176(param1:class_232, param2:Boolean, param3:class_222) : RayResult
      {
         return var_166.method_176(param1.zpp_inner,param2,param3 == null?null:param3.zpp_inner);
      }
      
      public final function push_callback(param1:ZPP_Listener) : class_273
      {
         var _loc2_:* = null as class_273;
         if(class_273.var_72 == null)
         {
            _loc2_ = new class_273();
         }
         else
         {
            _loc2_ = class_273.var_72;
            class_273.var_72 = _loc2_.next;
            _loc2_.next = null;
         }
         null;
         var_544.push(_loc2_);
         _loc2_.listener = param1;
         return _loc2_;
      }
      
      public final function presteparb(param1:ZPP_Arbiter, param2:Number, param3:Object = undefined) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:* = false;
         var _loc7_:* = null as ZPP_Shape;
         var _loc8_:* = null as ZPP_Shape;
         var _loc9_:* = null as class_213;
         var _loc10_:* = null as ZNPNode_ZPP_Interactor;
         var _loc11_:* = null as ZNPNode_ZPP_Interactor;
         var _loc12_:* = null as ZPP_Interactor;
         var _loc13_:* = null as ZPP_Compound;
         var _loc14_:* = null as ZPP_Compound;
         var _loc15_:* = 0;
         var _loc16_:int = 0;
         var _loc17_:* = null as ZPP_Interactor;
         var _loc18_:* = null as ZPP_CbSet;
         var _loc19_:* = null as ZPP_CbSet;
         var _loc20_:* = null as ZPP_CbSetPair;
         var _loc21_:* = null as ZPP_CbSetPair;
         var _loc22_:* = null as class_303;
         var _loc23_:* = null as ZNPNode_ZPP_CbSetPair;
         var _loc24_:* = null as ZPP_CbSetPair;
         var _loc25_:* = null as ZPP_CallbackSet;
         var _loc26_:* = null as ZNPNode_ZPP_InteractionListener;
         var _loc27_:* = null as ZPP_InteractionListener;
         var _loc28_:* = null as class_273;
         var _loc29_:* = null as ZPP_Interactor;
         var _loc30_:* = null as ZPP_Interactor;
         var _loc31_:* = null as ZPP_OptionType;
         var _loc32_:* = null as ZNPList_ZPP_CbType;
         var _loc33_:Boolean = false;
         var _loc34_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc35_:* = null as ZPP_Arbiter;
         var _loc36_:* = null as class_254;
         var _loc37_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc38_:* = null as ZPP_SensorArbiter;
         var _loc39_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc40_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc41_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc42_:* = null as ZPP_Body;
         var _loc43_:* = null as ZPP_SensorArbiter;
         var _loc44_:* = null as ZPP_FluidArbiter;
         var _loc45_:* = null as ZPP_FluidArbiter;
         var _loc46_:* = null as ZPP_ColArbiter;
         var _loc47_:* = null as ZPP_Contact;
         var _loc48_:* = null as ZPP_Contact;
         var _loc49_:* = null as ZPP_Contact;
         var _loc50_:* = null as ZPP_IContact;
         var _loc51_:* = null as ZPP_IContact;
         var _loc52_:* = null as ZPP_ColArbiter;
         var _loc53_:* = null as ZPP_Edge;
         var _loc54_:Number = NaN;
         var _loc55_:* = NaN;
         var _loc56_:* = NaN;
         var _loc57_:* = null as ZPP_Contact;
         var _loc58_:* = null as ZPP_Contact;
         var _loc59_:* = null as ZPP_Contact;
         var _loc60_:* = null as ZPP_IContact;
         var _loc61_:* = null as ZPP_IContact;
         var _loc62_:* = null as ZPP_IContact;
         var _loc63_:Boolean = false;
         var _loc64_:* = NaN;
         var _loc65_:* = NaN;
         var _loc66_:* = NaN;
         var _loc67_:* = NaN;
         var _loc68_:* = NaN;
         var _loc69_:Number = NaN;
         var _loc70_:* = NaN;
         var _loc71_:* = NaN;
         var _loc72_:* = NaN;
         var _loc73_:* = NaN;
         var _loc74_:* = null as ZPP_Polygon;
         var _loc75_:* = NaN;
         var _loc76_:* = null as ZNPNode_ZPP_Edge;
         var _loc77_:* = NaN;
         var _loc78_:Number = NaN;
         var _loc79_:Number = NaN;
         var _loc80_:Number = NaN;
         var _loc81_:Number = NaN;
         if(param3 == null)
         {
            param3 = false;
         }
         var _loc4_:* = {};
         if(!param1.var_265 && (!!param1.b1.var_112.var_129 && param1.b2.var_112.var_129))
         {
            param1.var_669 = var_114;
            param1.var_129 = true;
            return true;
         }
         if(!param1.var_265 || param1.var_304 != 0 || param1.var_361)
         {
            _loc5_ = !param3 && param1.var_360 == var_114 - 1 && !param1.var_265 && !param1.var_361;
            _loc6_ = Boolean(!!param1.name_23 && !param1.var_265 && !param1.var_361);
            if(_loc5_)
            {
               param1.var_784 = var_114;
            }
            if(_loc6_ || _loc5_ || param1.var_265 || param1.var_361)
            {
               _loc7_ = param1.ws1;
               _loc8_ = param1.ws2;
               _loc9_ = mrca1;
               while(_loc9_.var_73 != null)
               {
                  _loc10_ = _loc9_.var_73;
                  _loc9_.var_73 = _loc10_.next;
                  _loc11_ = _loc10_;
                  _loc11_.var_74 = null;
                  _loc11_.next = ZNPNode_ZPP_Interactor.var_72;
                  ZNPNode_ZPP_Interactor.var_72 = _loc11_;
                  if(_loc9_.var_73 == null)
                  {
                     _loc9_.var_76 = true;
                  }
                  _loc9_.name_2 = true;
                  _loc9_.length = _loc9_.length - 1;
               }
               _loc9_.var_76 = true;
               _loc9_ = mrca2;
               while(_loc9_.var_73 != null)
               {
                  _loc10_ = _loc9_.var_73;
                  _loc9_.var_73 = _loc10_.next;
                  _loc11_ = _loc10_;
                  _loc11_.var_74 = null;
                  _loc11_.next = ZNPNode_ZPP_Interactor.var_72;
                  ZNPNode_ZPP_Interactor.var_72 = _loc11_;
                  if(_loc9_.var_73 == null)
                  {
                     _loc9_.var_76 = true;
                  }
                  _loc9_.name_2 = true;
                  _loc9_.length = _loc9_.length - 1;
               }
               _loc9_.var_76 = true;
               if(_loc7_.var_134 != null)
               {
                  _loc9_ = mrca1;
                  if(ZNPNode_ZPP_Interactor.var_72 == null)
                  {
                     _loc11_ = new ZNPNode_ZPP_Interactor();
                  }
                  else
                  {
                     _loc11_ = ZNPNode_ZPP_Interactor.var_72;
                     ZNPNode_ZPP_Interactor.var_72 = _loc11_.next;
                     _loc11_.next = null;
                  }
                  null;
                  _loc11_.var_74 = _loc7_;
                  _loc10_ = _loc11_;
                  _loc10_.next = _loc9_.var_73;
                  _loc9_.var_73 = _loc10_;
                  _loc9_.name_2 = true;
                  _loc9_.length = _loc9_.length + 1;
                  _loc7_;
               }
               if(_loc7_.body.var_134 != null)
               {
                  _loc9_ = mrca1;
                  _loc12_ = _loc7_.body;
                  if(ZNPNode_ZPP_Interactor.var_72 == null)
                  {
                     _loc11_ = new ZNPNode_ZPP_Interactor();
                  }
                  else
                  {
                     _loc11_ = ZNPNode_ZPP_Interactor.var_72;
                     ZNPNode_ZPP_Interactor.var_72 = _loc11_.next;
                     _loc11_.next = null;
                  }
                  null;
                  _loc11_.var_74 = _loc12_;
                  _loc10_ = _loc11_;
                  _loc10_.next = _loc9_.var_73;
                  _loc9_.var_73 = _loc10_;
                  _loc9_.name_2 = true;
                  _loc9_.length = _loc9_.length + 1;
                  _loc12_;
               }
               if(_loc8_.var_134 != null)
               {
                  _loc9_ = mrca2;
                  if(ZNPNode_ZPP_Interactor.var_72 == null)
                  {
                     _loc11_ = new ZNPNode_ZPP_Interactor();
                  }
                  else
                  {
                     _loc11_ = ZNPNode_ZPP_Interactor.var_72;
                     ZNPNode_ZPP_Interactor.var_72 = _loc11_.next;
                     _loc11_.next = null;
                  }
                  null;
                  _loc11_.var_74 = _loc8_;
                  _loc10_ = _loc11_;
                  _loc10_.next = _loc9_.var_73;
                  _loc9_.var_73 = _loc10_;
                  _loc9_.name_2 = true;
                  _loc9_.length = _loc9_.length + 1;
                  _loc8_;
               }
               if(_loc8_.body.var_134 != null)
               {
                  _loc9_ = mrca2;
                  _loc12_ = _loc8_.body;
                  if(ZNPNode_ZPP_Interactor.var_72 == null)
                  {
                     _loc11_ = new ZNPNode_ZPP_Interactor();
                  }
                  else
                  {
                     _loc11_ = ZNPNode_ZPP_Interactor.var_72;
                     ZNPNode_ZPP_Interactor.var_72 = _loc11_.next;
                     _loc11_.next = null;
                  }
                  null;
                  _loc11_.var_74 = _loc12_;
                  _loc10_ = _loc11_;
                  _loc10_.next = _loc9_.var_73;
                  _loc9_.var_73 = _loc10_;
                  _loc9_.name_2 = true;
                  _loc9_.length = _loc9_.length + 1;
                  _loc12_;
               }
               _loc13_ = _loc7_.body.compound;
               _loc14_ = _loc8_.body.compound;
               while(_loc13_ != _loc14_)
               {
                  if(_loc13_ == null)
                  {
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc15_ = int(_loc13_.depth);
                  }
                  if(_loc14_ == null)
                  {
                     _loc16_ = 0;
                  }
                  else
                  {
                     _loc16_ = _loc14_.depth;
                  }
                  if(_loc15_ < _loc16_)
                  {
                     if(_loc14_.var_134 != null)
                     {
                        _loc9_ = mrca2;
                        if(ZNPNode_ZPP_Interactor.var_72 == null)
                        {
                           _loc11_ = new ZNPNode_ZPP_Interactor();
                        }
                        else
                        {
                           _loc11_ = ZNPNode_ZPP_Interactor.var_72;
                           ZNPNode_ZPP_Interactor.var_72 = _loc11_.next;
                           _loc11_.next = null;
                        }
                        null;
                        _loc11_.var_74 = _loc14_;
                        _loc10_ = _loc11_;
                        _loc10_.next = _loc9_.var_73;
                        _loc9_.var_73 = _loc10_;
                        _loc9_.name_2 = true;
                        _loc9_.length = _loc9_.length + 1;
                        _loc14_;
                     }
                     _loc14_ = _loc14_.compound;
                  }
                  else
                  {
                     if(_loc13_.var_134 != null)
                     {
                        _loc9_ = mrca1;
                        if(ZNPNode_ZPP_Interactor.var_72 == null)
                        {
                           _loc11_ = new ZNPNode_ZPP_Interactor();
                        }
                        else
                        {
                           _loc11_ = ZNPNode_ZPP_Interactor.var_72;
                           ZNPNode_ZPP_Interactor.var_72 = _loc11_.next;
                           _loc11_.next = null;
                        }
                        null;
                        _loc11_.var_74 = _loc13_;
                        _loc10_ = _loc11_;
                        _loc10_.next = _loc9_.var_73;
                        _loc9_.var_73 = _loc10_;
                        _loc9_.name_2 = true;
                        _loc9_.length = _loc9_.length + 1;
                        _loc13_;
                     }
                     _loc13_ = _loc13_.compound;
                  }
               }
               _loc10_ = mrca1.var_73;
               while(_loc10_ != null)
               {
                  _loc12_ = _loc10_.var_74;
                  _loc11_ = mrca2.var_73;
                  while(_loc11_ != null)
                  {
                     _loc17_ = _loc11_.var_74;
                     _loc18_ = _loc12_.var_134;
                     _loc19_ = _loc17_.var_134;
                     _loc21_ = null;
                     if(_loc18_.var_141.length < _loc19_.var_141.length)
                     {
                        _loc22_ = _loc18_.var_141;
                     }
                     else
                     {
                        _loc22_ = _loc19_.var_141;
                     }
                     _loc23_ = _loc22_.var_73;
                     while(_loc23_ != null)
                     {
                        _loc24_ = _loc23_.var_74;
                        if(_loc24_.a == _loc18_ && _loc24_.b == _loc19_ || _loc24_.a == _loc19_ && _loc24_.b == _loc18_)
                        {
                           _loc21_ = _loc24_;
                           break;
                        }
                        _loc23_ = _loc23_.next;
                     }
                     if(_loc21_ == null)
                     {
                        if(ZPP_CbSetPair.var_72 == null)
                        {
                           _loc24_ = new ZPP_CbSetPair();
                        }
                        else
                        {
                           _loc24_ = ZPP_CbSetPair.var_72;
                           ZPP_CbSetPair.var_72 = _loc24_.next;
                           _loc24_.next = null;
                        }
                        _loc24_.var_145 = true;
                        if(ZPP_CbSet.method_117(_loc18_,_loc19_))
                        {
                           _loc24_.a = _loc18_;
                           _loc24_.b = _loc19_;
                        }
                        else
                        {
                           _loc24_.a = _loc19_;
                           _loc24_.b = _loc18_;
                        }
                        _loc21_ = _loc24_;
                        _loc18_.var_141.add(_loc21_);
                        if(_loc19_ != _loc18_)
                        {
                           _loc19_.var_141.add(_loc21_);
                        }
                     }
                     if(_loc21_.var_145)
                     {
                        _loc21_.var_145 = false;
                        _loc21_.method_138();
                     }
                     _loc20_ = _loc21_;
                     if(_loc20_.name_15.var_73 == null)
                     {
                        _loc11_ = _loc11_.next;
                     }
                     else
                     {
                        _loc25_ = ZPP_Interactor.method_65(_loc12_,_loc17_);
                        if(_loc6_ || param1.var_361)
                        {
                           if(_loc25_ == null)
                           {
                              _loc25_ = ZPP_CallbackSet.method_65(_loc12_,_loc17_);
                              add_callbackset(_loc25_);
                           }
                           _loc15_ = int(class_223.var_831);
                           _loc21_ = null;
                           if(_loc18_.var_141.length < _loc19_.var_141.length)
                           {
                              _loc22_ = _loc18_.var_141;
                           }
                           else
                           {
                              _loc22_ = _loc19_.var_141;
                           }
                           _loc23_ = _loc22_.var_73;
                           while(_loc23_ != null)
                           {
                              _loc24_ = _loc23_.var_74;
                              if(_loc24_.a == _loc18_ && _loc24_.b == _loc19_ || _loc24_.a == _loc19_ && _loc24_.b == _loc18_)
                              {
                                 _loc21_ = _loc24_;
                                 break;
                              }
                              _loc23_ = _loc23_.next;
                           }
                           if(_loc21_ == null)
                           {
                              if(ZPP_CbSetPair.var_72 == null)
                              {
                                 _loc24_ = new ZPP_CbSetPair();
                              }
                              else
                              {
                                 _loc24_ = ZPP_CbSetPair.var_72;
                                 ZPP_CbSetPair.var_72 = _loc24_.next;
                                 _loc24_.next = null;
                              }
                              _loc24_.var_145 = true;
                              if(ZPP_CbSet.method_117(_loc18_,_loc19_))
                              {
                                 _loc24_.a = _loc18_;
                                 _loc24_.b = _loc19_;
                              }
                              else
                              {
                                 _loc24_.a = _loc19_;
                                 _loc24_.b = _loc18_;
                              }
                              _loc21_ = _loc24_;
                              _loc18_.var_141.add(_loc21_);
                              if(_loc19_ != _loc18_)
                              {
                                 _loc19_.var_141.add(_loc21_);
                              }
                           }
                           if(_loc21_.var_145)
                           {
                              _loc21_.var_145 = false;
                              _loc21_.method_138();
                           }
                           _loc20_ = _loc21_;
                           _loc26_ = _loc20_.name_15.var_73;
                           while(_loc26_ != null)
                           {
                              _loc27_ = _loc26_.var_74;
                              if(_loc27_.event == _loc15_)
                              {
                                 if((_loc27_.var_249 & param1.type) != 0 && _loc25_.method_352(_loc27_.var_249))
                                 {
                                    _loc28_ = _loc4_.push_callback(_loc27_);
                                    _loc28_.event = class_223.var_831;
                                    _loc29_ = _loc25_.int1;
                                    _loc30_ = _loc25_.int2;
                                    _loc31_ = _loc27_.options1;
                                    _loc32_ = _loc29_.name_10;
                                    _loc31_;
                                    if(!!ZPP_OptionType.method_113(_loc32_,_loc31_.name_18) && !ZPP_OptionType.method_113(_loc32_,_loc31_.name_22) && (!!ZPP_OptionType.method_113(_loc32_,_loc31_.name_18) && !ZPP_OptionType.method_113(_loc32_,_loc31_.name_22)))
                                    {
                                       _loc28_.int1 = _loc29_;
                                       _loc28_.int2 = _loc30_;
                                    }
                                    else
                                    {
                                       _loc28_.int1 = _loc30_;
                                       _loc28_.int2 = _loc29_;
                                    }
                                    _loc28_.name_40 = _loc25_;
                                 }
                              }
                              _loc26_ = _loc26_.next;
                           }
                           _loc33_ = false;
                           _loc34_ = _loc25_.name_12.var_73;
                           while(_loc34_ != null)
                           {
                              _loc35_ = _loc34_.var_74;
                              if(_loc35_ == param1)
                              {
                                 _loc33_ = true;
                                 break;
                              }
                              _loc34_ = _loc34_.next;
                           }
                           if(!_loc33_)
                           {
                              _loc36_ = _loc25_.name_12;
                              if(ZNPNode_ZPP_Arbiter.var_72 == null)
                              {
                                 _loc37_ = new ZNPNode_ZPP_Arbiter();
                              }
                              else
                              {
                                 _loc37_ = ZNPNode_ZPP_Arbiter.var_72;
                                 ZNPNode_ZPP_Arbiter.var_72 = _loc37_.next;
                                 _loc37_.next = null;
                              }
                              null;
                              _loc37_.var_74 = param1;
                              _loc34_ = _loc37_;
                              _loc34_.next = _loc36_.var_73;
                              _loc36_.var_73 = _loc34_;
                              _loc36_.name_2 = true;
                              _loc36_.length = _loc36_.length + 1;
                              param1;
                              §§push(true);
                           }
                           else
                           {
                              §§push(false);
                           }
                           param1.var_304 = param1.var_304 + 1;
                        }
                        else
                        {
                           param1.var_304 = param1.var_304 - 1;
                           _loc25_.method_404(param1);
                           _loc15_ = int(class_223.var_712);
                           _loc21_ = null;
                           if(_loc18_.var_141.length < _loc19_.var_141.length)
                           {
                              _loc22_ = _loc18_.var_141;
                           }
                           else
                           {
                              _loc22_ = _loc19_.var_141;
                           }
                           _loc23_ = _loc22_.var_73;
                           while(_loc23_ != null)
                           {
                              _loc24_ = _loc23_.var_74;
                              if(_loc24_.a == _loc18_ && _loc24_.b == _loc19_ || _loc24_.a == _loc19_ && _loc24_.b == _loc18_)
                              {
                                 _loc21_ = _loc24_;
                                 break;
                              }
                              _loc23_ = _loc23_.next;
                           }
                           if(_loc21_ == null)
                           {
                              if(ZPP_CbSetPair.var_72 == null)
                              {
                                 _loc24_ = new ZPP_CbSetPair();
                              }
                              else
                              {
                                 _loc24_ = ZPP_CbSetPair.var_72;
                                 ZPP_CbSetPair.var_72 = _loc24_.next;
                                 _loc24_.next = null;
                              }
                              _loc24_.var_145 = true;
                              if(ZPP_CbSet.method_117(_loc18_,_loc19_))
                              {
                                 _loc24_.a = _loc18_;
                                 _loc24_.b = _loc19_;
                              }
                              else
                              {
                                 _loc24_.a = _loc19_;
                                 _loc24_.b = _loc18_;
                              }
                              _loc21_ = _loc24_;
                              _loc18_.var_141.add(_loc21_);
                              if(_loc19_ != _loc18_)
                              {
                                 _loc19_.var_141.add(_loc21_);
                              }
                           }
                           if(_loc21_.var_145)
                           {
                              _loc21_.var_145 = false;
                              _loc21_.method_138();
                           }
                           _loc20_ = _loc21_;
                           _loc26_ = _loc20_.name_15.var_73;
                           while(_loc26_ != null)
                           {
                              _loc27_ = _loc26_.var_74;
                              if(_loc27_.event == _loc15_)
                              {
                                 if((_loc27_.var_249 & param1.type) != 0 && _loc25_.method_352(_loc27_.var_249))
                                 {
                                    _loc28_ = _loc4_.push_callback(_loc27_);
                                    _loc28_.event = class_223.var_712;
                                    _loc29_ = _loc25_.int1;
                                    _loc30_ = _loc25_.int2;
                                    _loc31_ = _loc27_.options1;
                                    _loc32_ = _loc29_.name_10;
                                    _loc31_;
                                    if(!!ZPP_OptionType.method_113(_loc32_,_loc31_.name_18) && !ZPP_OptionType.method_113(_loc32_,_loc31_.name_22) && (!!ZPP_OptionType.method_113(_loc32_,_loc31_.name_18) && !ZPP_OptionType.method_113(_loc32_,_loc31_.name_22)))
                                    {
                                       _loc28_.int1 = _loc29_;
                                       _loc28_.int2 = _loc30_;
                                    }
                                    else
                                    {
                                       _loc28_.int1 = _loc30_;
                                       _loc28_.int2 = _loc29_;
                                    }
                                    _loc28_.name_40 = _loc25_;
                                 }
                              }
                              _loc26_ = _loc26_.next;
                           }
                           if(_loc25_.name_12.var_73 == null)
                           {
                              ;
                              ZPP_Space.remove_callbackset(_loc25_);
                           }
                        }
                        _loc11_ = _loc11_.next;
                     }
                  }
                  _loc10_ = _loc10_.next;
               }
            }
            param1.name_23 = false;
            param1.var_361 = false;
         }
         if(param1.var_265 || param1.var_360 + (param1.type == ZPP_Arbiter.var_292?class_238.var_832:0) < var_114)
         {
            if(param1.type == ZPP_Arbiter.SENSOR)
            {
               _loc38_ = param1.var_624;
               if(!_loc38_.var_265)
               {
                  _loc36_ = _loc38_.b1.name_12;
                  _loc34_ = null;
                  _loc37_ = _loc36_.var_73;
                  _loc5_ = false;
                  while(_loc37_ != null)
                  {
                     if(_loc37_.var_74 == _loc38_)
                     {
                        if(_loc34_ == null)
                        {
                           _loc39_ = _loc36_.var_73;
                           _loc40_ = _loc39_.next;
                           _loc36_.var_73 = _loc40_;
                           if(_loc36_.var_73 == null)
                           {
                              _loc36_.var_76 = true;
                           }
                        }
                        else
                        {
                           _loc39_ = _loc34_.next;
                           _loc40_ = _loc39_.next;
                           _loc34_.next = _loc40_;
                           if(_loc40_ == null)
                           {
                              _loc36_.var_76 = true;
                           }
                        }
                        _loc41_ = _loc39_;
                        _loc41_.var_74 = null;
                        _loc41_.next = ZNPNode_ZPP_Arbiter.var_72;
                        ZNPNode_ZPP_Arbiter.var_72 = _loc41_;
                        _loc36_.name_2 = true;
                        _loc36_.length = _loc36_.length - 1;
                        _loc36_.var_76 = true;
                        _loc40_;
                        _loc5_ = true;
                        break;
                     }
                     _loc34_ = _loc37_;
                     _loc37_ = _loc37_.next;
                  }
                  _loc5_;
                  _loc36_ = _loc38_.b2.name_12;
                  _loc34_ = null;
                  _loc37_ = _loc36_.var_73;
                  _loc5_ = false;
                  while(_loc37_ != null)
                  {
                     if(_loc37_.var_74 == _loc38_)
                     {
                        if(_loc34_ == null)
                        {
                           _loc39_ = _loc36_.var_73;
                           _loc40_ = _loc39_.next;
                           _loc36_.var_73 = _loc40_;
                           if(_loc36_.var_73 == null)
                           {
                              _loc36_.var_76 = true;
                           }
                        }
                        else
                        {
                           _loc39_ = _loc34_.next;
                           _loc40_ = _loc39_.next;
                           _loc34_.next = _loc40_;
                           if(_loc40_ == null)
                           {
                              _loc36_.var_76 = true;
                           }
                        }
                        _loc41_ = _loc39_;
                        _loc41_.var_74 = null;
                        _loc41_.next = ZNPNode_ZPP_Arbiter.var_72;
                        ZNPNode_ZPP_Arbiter.var_72 = _loc41_;
                        _loc36_.name_2 = true;
                        _loc36_.length = _loc36_.length - 1;
                        _loc36_.var_76 = true;
                        _loc40_;
                        _loc5_ = true;
                        break;
                     }
                     _loc34_ = _loc37_;
                     _loc37_ = _loc37_.next;
                  }
                  _loc5_;
                  if(_loc38_.var_209 != null)
                  {
                     _loc38_.var_209.var_246 = null;
                     _loc38_.var_209 = null;
                  }
               }
               _loc42_ = null;
               _loc38_.b2 = _loc42_;
               _loc38_.b1 = _loc42_;
               _loc38_.active = false;
               _loc38_.var_361 = false;
               _loc43_ = _loc38_;
               _loc43_.next = ZPP_SensorArbiter.var_72;
               ZPP_SensorArbiter.var_72 = _loc43_;
            }
            else if(param1.type == ZPP_Arbiter.FLUID)
            {
               _loc44_ = param1.var_161;
               if(!_loc44_.var_265)
               {
                  _loc36_ = _loc44_.b1.name_12;
                  _loc34_ = null;
                  _loc37_ = _loc36_.var_73;
                  _loc5_ = false;
                  while(_loc37_ != null)
                  {
                     if(_loc37_.var_74 == _loc44_)
                     {
                        if(_loc34_ == null)
                        {
                           _loc39_ = _loc36_.var_73;
                           _loc40_ = _loc39_.next;
                           _loc36_.var_73 = _loc40_;
                           if(_loc36_.var_73 == null)
                           {
                              _loc36_.var_76 = true;
                           }
                        }
                        else
                        {
                           _loc39_ = _loc34_.next;
                           _loc40_ = _loc39_.next;
                           _loc34_.next = _loc40_;
                           if(_loc40_ == null)
                           {
                              _loc36_.var_76 = true;
                           }
                        }
                        _loc41_ = _loc39_;
                        _loc41_.var_74 = null;
                        _loc41_.next = ZNPNode_ZPP_Arbiter.var_72;
                        ZNPNode_ZPP_Arbiter.var_72 = _loc41_;
                        _loc36_.name_2 = true;
                        _loc36_.length = _loc36_.length - 1;
                        _loc36_.var_76 = true;
                        _loc40_;
                        _loc5_ = true;
                        break;
                     }
                     _loc34_ = _loc37_;
                     _loc37_ = _loc37_.next;
                  }
                  _loc5_;
                  _loc36_ = _loc44_.b2.name_12;
                  _loc34_ = null;
                  _loc37_ = _loc36_.var_73;
                  _loc5_ = false;
                  while(_loc37_ != null)
                  {
                     if(_loc37_.var_74 == _loc44_)
                     {
                        if(_loc34_ == null)
                        {
                           _loc39_ = _loc36_.var_73;
                           _loc40_ = _loc39_.next;
                           _loc36_.var_73 = _loc40_;
                           if(_loc36_.var_73 == null)
                           {
                              _loc36_.var_76 = true;
                           }
                        }
                        else
                        {
                           _loc39_ = _loc34_.next;
                           _loc40_ = _loc39_.next;
                           _loc34_.next = _loc40_;
                           if(_loc40_ == null)
                           {
                              _loc36_.var_76 = true;
                           }
                        }
                        _loc41_ = _loc39_;
                        _loc41_.var_74 = null;
                        _loc41_.next = ZNPNode_ZPP_Arbiter.var_72;
                        ZNPNode_ZPP_Arbiter.var_72 = _loc41_;
                        _loc36_.name_2 = true;
                        _loc36_.length = _loc36_.length - 1;
                        _loc36_.var_76 = true;
                        _loc40_;
                        _loc5_ = true;
                        break;
                     }
                     _loc34_ = _loc37_;
                     _loc37_ = _loc37_.next;
                  }
                  _loc5_;
                  if(_loc44_.var_209 != null)
                  {
                     _loc44_.var_209.var_246 = null;
                     _loc44_.var_209 = null;
                  }
               }
               _loc42_ = null;
               _loc44_.b2 = _loc42_;
               _loc44_.b1 = _loc42_;
               _loc44_.active = false;
               _loc44_.var_361 = false;
               _loc45_ = _loc44_;
               _loc45_.next = ZPP_FluidArbiter.var_72;
               ZPP_FluidArbiter.var_72 = _loc45_;
               _loc44_.var_197 = -1;
            }
            else
            {
               _loc46_ = param1.var_128;
               if(!_loc46_.var_265)
               {
                  _loc36_ = _loc46_.b1.name_12;
                  _loc34_ = null;
                  _loc37_ = _loc36_.var_73;
                  _loc5_ = false;
                  while(_loc37_ != null)
                  {
                     if(_loc37_.var_74 == _loc46_)
                     {
                        if(_loc34_ == null)
                        {
                           _loc39_ = _loc36_.var_73;
                           _loc40_ = _loc39_.next;
                           _loc36_.var_73 = _loc40_;
                           if(_loc36_.var_73 == null)
                           {
                              _loc36_.var_76 = true;
                           }
                        }
                        else
                        {
                           _loc39_ = _loc34_.next;
                           _loc40_ = _loc39_.next;
                           _loc34_.next = _loc40_;
                           if(_loc40_ == null)
                           {
                              _loc36_.var_76 = true;
                           }
                        }
                        _loc41_ = _loc39_;
                        _loc41_.var_74 = null;
                        _loc41_.next = ZNPNode_ZPP_Arbiter.var_72;
                        ZNPNode_ZPP_Arbiter.var_72 = _loc41_;
                        _loc36_.name_2 = true;
                        _loc36_.length = _loc36_.length - 1;
                        _loc36_.var_76 = true;
                        _loc40_;
                        _loc5_ = true;
                        break;
                     }
                     _loc34_ = _loc37_;
                     _loc37_ = _loc37_.next;
                  }
                  _loc5_;
                  _loc36_ = _loc46_.b2.name_12;
                  _loc34_ = null;
                  _loc37_ = _loc36_.var_73;
                  _loc5_ = false;
                  while(_loc37_ != null)
                  {
                     if(_loc37_.var_74 == _loc46_)
                     {
                        if(_loc34_ == null)
                        {
                           _loc39_ = _loc36_.var_73;
                           _loc40_ = _loc39_.next;
                           _loc36_.var_73 = _loc40_;
                           if(_loc36_.var_73 == null)
                           {
                              _loc36_.var_76 = true;
                           }
                        }
                        else
                        {
                           _loc39_ = _loc34_.next;
                           _loc40_ = _loc39_.next;
                           _loc34_.next = _loc40_;
                           if(_loc40_ == null)
                           {
                              _loc36_.var_76 = true;
                           }
                        }
                        _loc41_ = _loc39_;
                        _loc41_.var_74 = null;
                        _loc41_.next = ZNPNode_ZPP_Arbiter.var_72;
                        ZNPNode_ZPP_Arbiter.var_72 = _loc41_;
                        _loc36_.name_2 = true;
                        _loc36_.length = _loc36_.length - 1;
                        _loc36_.var_76 = true;
                        _loc40_;
                        _loc5_ = true;
                        break;
                     }
                     _loc34_ = _loc37_;
                     _loc37_ = _loc37_.next;
                  }
                  _loc5_;
                  if(_loc46_.var_209 != null)
                  {
                     _loc46_.var_209.var_246 = null;
                     _loc46_.var_209 = null;
                  }
               }
               _loc42_ = null;
               _loc46_.b2 = _loc42_;
               _loc46_.b1 = _loc42_;
               _loc46_.active = false;
               _loc46_.var_361 = false;
               while(_loc46_.name_24.next != null)
               {
                  _loc48_ = _loc46_.name_24;
                  _loc49_ = _loc48_.next;
                  _loc48_.pop();
                  _loc47_ = _loc49_;
                  _loc47_.name_20 = null;
                  _loc47_.next = ZPP_Contact.var_72;
                  ZPP_Contact.var_72 = _loc47_;
                  _loc50_ = _loc46_.var_268;
                  _loc51_ = _loc50_.next;
                  _loc50_.next = _loc51_.next;
                  _loc51_.var_120 = false;
                  if(_loc50_.next == null)
                  {
                     _loc50_.var_76 = true;
                  }
                  _loc50_.name_2 = true;
                  _loc50_.length = _loc50_.length - 1;
               }
               _loc52_ = _loc46_;
               _loc52_.var_376 = false;
               _loc52_.var_382 = false;
               _loc52_.var_379 = false;
               _loc52_.var_381 = false;
               _loc53_ = null;
               _loc52_.__ref_edge2 = _loc53_;
               _loc52_.__ref_edge1 = _loc53_;
               _loc52_.next = ZPP_ColArbiter.var_72;
               ZPP_ColArbiter.var_72 = _loc52_;
               _loc46_.var_197 = -1;
            }
            return true;
         }
         _loc5_ = param1.active;
         _loc6_ = param1.var_360 == var_114;
         param1.var_639 = _loc6_;
         param1.active = _loc6_;
         if((param1.var_181 & class_223.var_267) != 0)
         {
            if(!!param1.active && param1.type != ZPP_Arbiter.SENSOR)
            {
               if(param1.var_128 != null)
               {
                  _loc46_ = param1.var_128;
                  if(_loc46_.var_329)
                  {
                     _loc46_.var_329 = false;
                     if(!_loc46_.var_379)
                     {
                        if(_loc46_.s1.material.name_16 <= -1.79e308 || _loc46_.s2.material.name_16 <= -1.79e308)
                        {
                           _loc46_.var_159 = 0;
                        }
                        else if(_loc46_.s1.material.name_16 >= 1.79e308 || _loc46_.s2.material.name_16 >= 1.79e308)
                        {
                           _loc46_.var_159 = 1;
                        }
                        else
                        {
                           _loc46_.var_159 = (_loc46_.s1.material.name_16 + _loc46_.s2.material.name_16) / 2;
                        }
                        if(_loc46_.var_159 < 0)
                        {
                           _loc46_.var_159 = 0;
                        }
                        if(_loc46_.var_159 > 1)
                        {
                           _loc46_.var_159 = 1;
                        }
                     }
                     if(!_loc46_.var_376)
                     {
                        _loc54_ = _loc46_.s1.material.name_28 * _loc46_.s2.material.name_28;
                        if(_loc54_ == 0)
                        {
                           _loc46_.dyn_fric = 0;
                        }
                        else
                        {
                           sf32(_loc54_,0);
                           _loc15_ = 1597463007 - (li32(0) >> 1);
                           si32(_loc15_,0);
                           _loc55_ = Number(lf32(0));
                           _loc46_.dyn_fric = 1 / (_loc55_ * (1.5 - 0.5 * _loc54_ * _loc55_ * _loc55_));
                        }
                     }
                     if(!_loc46_.var_382)
                     {
                        _loc54_ = _loc46_.s1.material.name_33 * _loc46_.s2.material.name_33;
                        if(_loc54_ == 0)
                        {
                           _loc46_.stat_fric = 0;
                        }
                        else
                        {
                           sf32(_loc54_,0);
                           _loc15_ = 1597463007 - (li32(0) >> 1);
                           si32(_loc15_,0);
                           _loc55_ = Number(lf32(0));
                           _loc46_.stat_fric = 1 / (_loc55_ * (1.5 - 0.5 * _loc54_ * _loc55_ * _loc55_));
                        }
                     }
                     if(!_loc46_.var_381)
                     {
                        _loc54_ = _loc46_.s1.material.name_31 * _loc46_.s2.material.name_31;
                        if(_loc54_ == 0)
                        {
                           _loc46_.rfric = 0;
                        }
                        else
                        {
                           sf32(_loc54_,0);
                           _loc15_ = 1597463007 - (li32(0) >> 1);
                           si32(_loc15_,0);
                           _loc55_ = Number(lf32(0));
                           _loc46_.rfric = 1 / (_loc55_ * (1.5 - 0.5 * _loc54_ * _loc55_ * _loc55_));
                        }
                     }
                  }
                  if(_loc46_.var_197 == -1)
                  {
                     _loc46_.var_197 = param2;
                  }
                  _loc54_ = param2 / _loc46_.var_197;
                  _loc46_.var_197 = param2;
                  _loc55_ = Number(Number(_loc46_.b1.var_264 + _loc46_.b2.var_264));
                  _loc46_.var_270 = false;
                  _loc6_ = true;
                  _loc33_ = _loc46_.b1.type != class_223.var_188 || _loc46_.b2.type != class_223.var_188;
                  if(_loc33_)
                  {
                     if(_loc46_.var_371)
                     {
                        _loc56_ = Number(class_238.var_1107);
                     }
                     else
                     {
                        _loc56_ = Number(class_238.var_1130);
                     }
                  }
                  else if(_loc46_.var_371)
                  {
                     _loc56_ = Number(class_238.var_1113);
                  }
                  else
                  {
                     _loc56_ = Number(class_238.var_1102);
                  }
                  _loc46_.var_681 = _loc56_;
                  _loc46_.var_371 = false;
                  _loc47_ = null;
                  _loc50_ = null;
                  _loc51_ = _loc46_.var_268.next;
                  _loc48_ = _loc46_.name_24.next;
                  while(_loc48_ != null)
                  {
                     _loc49_ = _loc48_;
                     if(_loc49_.var_114 + class_238.var_832 < _loc46_.var_114)
                     {
                        _loc57_ = _loc46_.name_24;
                        if(_loc47_ == null)
                        {
                           _loc58_ = _loc57_.next;
                           _loc59_ = _loc58_.next;
                           _loc57_.next = _loc59_;
                           if(_loc57_.next == null)
                           {
                              _loc57_.var_76 = true;
                           }
                        }
                        else
                        {
                           _loc58_ = _loc47_.next;
                           _loc59_ = _loc58_.next;
                           _loc47_.next = _loc59_;
                           if(_loc59_ == null)
                           {
                              _loc57_.var_76 = true;
                           }
                        }
                        _loc58_.var_120 = false;
                        _loc57_.name_2 = true;
                        _loc57_.length = _loc57_.length - 1;
                        _loc57_.var_76 = true;
                        _loc48_ = _loc59_;
                        _loc60_ = _loc46_.var_268;
                        if(_loc50_ == null)
                        {
                           _loc61_ = _loc60_.next;
                           _loc62_ = _loc61_.next;
                           _loc60_.next = _loc62_;
                           if(_loc60_.next == null)
                           {
                              _loc60_.var_76 = true;
                           }
                        }
                        else
                        {
                           _loc61_ = _loc50_.next;
                           _loc62_ = _loc61_.next;
                           _loc50_.next = _loc62_;
                           if(_loc62_ == null)
                           {
                              _loc60_.var_76 = true;
                           }
                        }
                        _loc61_.var_120 = false;
                        _loc60_.name_2 = true;
                        _loc60_.length = _loc60_.length - 1;
                        _loc60_.var_76 = true;
                        _loc51_ = _loc62_;
                        _loc57_ = _loc49_;
                        _loc57_.name_20 = null;
                        _loc57_.next = ZPP_Contact.var_72;
                        ZPP_Contact.var_72 = _loc57_;
                     }
                     else
                     {
                        _loc60_ = _loc49_.name_4;
                        _loc63_ = _loc49_.active;
                        _loc49_.active = _loc49_.var_114 == _loc46_.var_114;
                        if(_loc49_.active)
                        {
                           if(_loc6_)
                           {
                              _loc6_ = false;
                              _loc46_.c1 = _loc60_;
                              _loc46_.oc1 = _loc49_;
                           }
                           else
                           {
                              _loc46_.var_270 = true;
                              _loc46_.c2 = _loc60_;
                              _loc46_.oc2 = _loc49_;
                           }
                           _loc60_.r2x = _loc49_.var_344 - _loc46_.b2.var_95;
                           _loc60_.r2y = _loc49_.var_348 - _loc46_.b2.var_96;
                           _loc60_.r1x = _loc49_.var_344 - _loc46_.b1.var_95;
                           _loc60_.r1y = _loc49_.var_348 - _loc46_.b1.var_96;
                           _loc65_ = Number(Number(_loc60_.r2x * _loc46_.nx + _loc60_.r2y * _loc46_.ny));
                           _loc64_ = Number(Number(_loc55_ + _loc46_.b2.var_194 * (_loc65_ * _loc65_)));
                           _loc65_ = Number(Number(_loc60_.r1x * _loc46_.nx + _loc60_.r1y * _loc46_.ny));
                           _loc64_ = Number(Number(_loc64_ + _loc46_.b1.var_194 * (_loc65_ * _loc65_)));
                           if(_loc64_ < class_238.name_8 * class_238.name_8)
                           {
                              _loc60_.var_440 = 0;
                           }
                           else
                           {
                              _loc60_.var_440 = 1 / _loc64_;
                           }
                           _loc66_ = Number(_loc46_.ny * _loc60_.r2x - _loc46_.nx * _loc60_.r2y);
                           _loc65_ = Number(Number(_loc55_ + _loc46_.b2.var_194 * (_loc66_ * _loc66_)));
                           _loc66_ = Number(_loc46_.ny * _loc60_.r1x - _loc46_.nx * _loc60_.r1y);
                           _loc65_ = Number(Number(_loc65_ + _loc46_.b1.var_194 * (_loc66_ * _loc66_)));
                           if(_loc65_ < class_238.name_8 * class_238.name_8)
                           {
                              _loc60_.var_342 = 0;
                           }
                           else
                           {
                              _loc60_.var_342 = 1 / _loc65_;
                           }
                           _loc66_ = 0;
                           _loc67_ = 0;
                           _loc68_ = Number(Number(_loc46_.b2.var_94 + _loc46_.b2.var_237));
                           _loc66_ = Number(_loc46_.b2.var_104 + _loc46_.b2.var_272 - _loc60_.r2y * _loc68_);
                           _loc67_ = Number(Number(Number(_loc46_.b2.var_105 + _loc46_.b2.var_274) + _loc60_.r2x * _loc68_));
                           _loc68_ = Number(Number(_loc46_.b1.var_94 + _loc46_.b1.var_237));
                           _loc66_ = Number(_loc66_ - (_loc46_.b1.var_104 + _loc46_.b1.var_272 - _loc60_.r1y * _loc68_));
                           _loc67_ = Number(_loc67_ - (Number(Number(_loc46_.b1.var_105 + _loc46_.b1.var_274) + _loc60_.r1x * _loc68_)));
                           _loc68_ = Number(Number(_loc46_.nx * _loc66_ + _loc46_.ny * _loc67_));
                           _loc49_.name_16 = _loc46_.var_159;
                           _loc60_.name_39 = _loc68_ * _loc49_.name_16;
                           if(_loc60_.name_39 > -class_238.var_1131)
                           {
                              _loc60_.name_39 = 0;
                           }
                           _loc68_ = Number(_loc67_ * _loc46_.nx - _loc66_ * _loc46_.ny);
                           _loc69_ = class_238.var_1097;
                           if(_loc68_ * _loc68_ > _loc69_ * _loc69_)
                           {
                              _loc60_.name_52 = _loc46_.dyn_fric;
                           }
                           else
                           {
                              _loc60_.name_52 = _loc46_.stat_fric;
                           }
                           _loc60_.var_142 = _loc60_.var_142 * _loc54_;
                           _loc60_.var_208 = _loc60_.var_208 * _loc54_;
                        }
                        if(_loc63_ != _loc49_.active)
                        {
                           _loc46_.name_24.name_2 = true;
                        }
                        _loc47_ = _loc48_;
                        _loc50_ = _loc51_;
                        _loc51_ = _loc51_.next;
                        _loc48_ = _loc48_.next;
                     }
                  }
                  if(_loc46_.var_270)
                  {
                     _loc46_.var_481 = true;
                     if(_loc46_.oc1.var_300)
                     {
                        _loc60_ = _loc46_.c1;
                        _loc46_.c1 = _loc46_.c2;
                        _loc46_.c2 = _loc60_;
                        _loc48_ = _loc46_.oc1;
                        _loc46_.oc1 = _loc46_.oc2;
                        _loc46_.oc2 = _loc48_;
                        _loc46_.var_270 = false;
                     }
                     else if(_loc46_.oc2.var_300)
                     {
                        _loc46_.var_270 = false;
                     }
                     if(_loc46_.oc1.var_300)
                     {
                        _loc6_ = true;
                     }
                  }
                  else
                  {
                     _loc46_.var_481 = false;
                  }
                  _loc46_.var_170 = _loc46_.var_170 * _loc54_;
                  if(!_loc6_)
                  {
                     _loc46_.rn1a = _loc46_.ny * _loc46_.c1.r1x - _loc46_.nx * _loc46_.c1.r1y;
                     _loc46_.rt1a = Number(_loc46_.c1.r1x * _loc46_.nx + _loc46_.c1.r1y * _loc46_.ny);
                     _loc46_.rn1b = _loc46_.ny * _loc46_.c1.r2x - _loc46_.nx * _loc46_.c1.r2y;
                     _loc46_.rt1b = Number(_loc46_.c1.r2x * _loc46_.nx + _loc46_.c1.r2y * _loc46_.ny);
                     _loc46_.k1x = _loc46_.b2.var_272 - _loc46_.c1.r2y * _loc46_.b2.var_237 - (_loc46_.b1.var_272 - _loc46_.c1.r1y * _loc46_.b1.var_237);
                     _loc46_.k1y = Number(_loc46_.b2.var_274 + _loc46_.c1.r2x * _loc46_.b2.var_237) - (Number(_loc46_.b1.var_274 + _loc46_.c1.r1x * _loc46_.b1.var_237));
                  }
                  if(_loc46_.var_270)
                  {
                     _loc46_.rn2a = _loc46_.ny * _loc46_.c2.r1x - _loc46_.nx * _loc46_.c2.r1y;
                     _loc46_.rt2a = Number(_loc46_.c2.r1x * _loc46_.nx + _loc46_.c2.r1y * _loc46_.ny);
                     _loc46_.rn2b = _loc46_.ny * _loc46_.c2.r2x - _loc46_.nx * _loc46_.c2.r2y;
                     _loc46_.rt2b = Number(_loc46_.c2.r2x * _loc46_.nx + _loc46_.c2.r2y * _loc46_.ny);
                     _loc46_.k2x = _loc46_.b2.var_272 - _loc46_.c2.r2y * _loc46_.b2.var_237 - (_loc46_.b1.var_272 - _loc46_.c2.r1y * _loc46_.b1.var_237);
                     _loc46_.k2y = Number(_loc46_.b2.var_274 + _loc46_.c2.r2x * _loc46_.b2.var_237) - (Number(_loc46_.b1.var_274 + _loc46_.c2.r1x * _loc46_.b1.var_237));
                     _loc46_.var_172 = Number(Number(_loc55_ + _loc46_.b1.var_194 * _loc46_.rn1a * _loc46_.rn1a) + _loc46_.b2.var_194 * _loc46_.rn1b * _loc46_.rn1b);
                     _loc46_.var_171 = Number(Number(_loc55_ + _loc46_.b1.var_194 * _loc46_.rn1a * _loc46_.rn2a) + _loc46_.b2.var_194 * _loc46_.rn1b * _loc46_.rn2b);
                     _loc46_.var_173 = Number(Number(_loc55_ + _loc46_.b1.var_194 * _loc46_.rn2a * _loc46_.rn2a) + _loc46_.b2.var_194 * _loc46_.rn2b * _loc46_.rn2b);
                     _loc64_ = Number(Number(Number(_loc46_.var_172 * _loc46_.var_172 + 2 * _loc46_.var_171 * _loc46_.var_171) + _loc46_.var_173 * _loc46_.var_173));
                     if(_loc64_ < class_238.var_1043 * (_loc46_.var_172 * _loc46_.var_173 - _loc46_.var_171 * _loc46_.var_171))
                     {
                        _loc46_.var_640 = _loc46_.var_172;
                        _loc46_.var_309 = _loc46_.var_171;
                        _loc46_.var_648 = _loc46_.var_173;
                        _loc65_ = Number(_loc46_.var_172 * _loc46_.var_173 - _loc46_.var_171 * _loc46_.var_171);
                        if(_loc65_ != _loc65_)
                        {
                           _loc66_ = 0;
                           _loc46_.var_173 = _loc66_;
                           _loc66_ = Number(_loc66_);
                           _loc46_.var_171 = _loc66_;
                           _loc46_.var_172 = _loc66_;
                           3;
                        }
                        else if(_loc65_ == 0)
                        {
                           _loc15_ = 0;
                           if(_loc46_.var_172 != 0)
                           {
                              _loc46_.var_172 = 1 / _loc46_.var_172;
                           }
                           else
                           {
                              _loc46_.var_172 = 0;
                              _loc15_ = _loc15_ | 1;
                           }
                           if(_loc46_.var_173 != 0)
                           {
                              _loc46_.var_173 = 1 / _loc46_.var_173;
                           }
                           else
                           {
                              _loc46_.var_173 = 0;
                              _loc15_ = _loc15_ | 2;
                           }
                           _loc46_.var_171 = 0;
                           _loc15_;
                        }
                        else
                        {
                           _loc65_ = Number(1 / _loc65_);
                           _loc66_ = Number(_loc46_.var_173 * _loc65_);
                           _loc46_.var_173 = _loc46_.var_172 * _loc65_;
                           _loc46_.var_172 = _loc66_;
                           _loc46_.var_171 = _loc46_.var_171 * -_loc65_;
                           0;
                        }
                     }
                     else
                     {
                        _loc46_.var_270 = false;
                        if(_loc46_.oc2.var_334 < _loc46_.oc1.var_334)
                        {
                           _loc60_ = _loc46_.c1;
                           _loc46_.c1 = _loc46_.c2;
                           _loc46_.c2 = _loc60_;
                        }
                        _loc46_.oc2.active = false;
                        _loc46_.name_24.name_2 = true;
                     }
                  }
                  _loc46_.var_369 = _loc46_.b2.var_375;
                  _loc46_.var_311 = _loc46_.b2.var_388;
                  _loc64_ = 1;
                  _loc46_.var_369 = Number(_loc46_.var_369 + _loc46_.b1.var_375 * _loc64_);
                  _loc46_.var_311 = Number(_loc46_.var_311 + _loc46_.b1.var_388 * _loc64_);
                  _loc46_.var_369 = -_loc46_.var_369;
                  _loc46_.var_311 = -_loc46_.var_311;
                  _loc46_.var_527 = Number(_loc46_.b1.var_194 + _loc46_.b2.var_194);
                  if(_loc46_.var_527 != 0)
                  {
                     _loc46_.var_527 = 1 / _loc46_.var_527;
                  }
                  if(_loc6_)
                  {
                     param1.active = false;
                  }
               }
               else
               {
                  _loc44_ = param1.var_161;
                  if(_loc44_.var_197 == -1)
                  {
                     _loc44_.var_197 = param2;
                  }
                  _loc54_ = param2 / _loc44_.var_197;
                  _loc44_.var_197 = param2;
                  _loc44_.r1x = _loc44_.var_331 - _loc44_.b1.var_95;
                  _loc44_.r1y = _loc44_.var_336 - _loc44_.b1.var_96;
                  _loc44_.r2x = _loc44_.var_331 - _loc44_.b2.var_95;
                  _loc44_.r2y = _loc44_.var_336 - _loc44_.b2.var_96;
                  _loc55_ = 0;
                  _loc56_ = 0;
                  if(!!_loc44_.ws1.fluidEnabled && _loc44_.ws1.fluidProperties.var_184 != null)
                  {
                     _loc55_ = Number(_loc44_.ws1.fluidProperties.var_254);
                     _loc56_ = Number(_loc44_.ws1.fluidProperties.var_252);
                  }
                  else
                  {
                     _loc55_ = Number(var_254);
                     _loc56_ = Number(var_252);
                  }
                  _loc64_ = 0;
                  _loc65_ = 0;
                  if(!!_loc44_.ws2.fluidEnabled && _loc44_.ws2.fluidProperties.var_184 != null)
                  {
                     _loc64_ = Number(_loc44_.ws2.fluidProperties.var_254);
                     _loc65_ = Number(_loc44_.ws2.fluidProperties.var_252);
                  }
                  else
                  {
                     _loc64_ = Number(var_254);
                     _loc65_ = Number(var_252);
                  }
                  _loc66_ = 0;
                  _loc67_ = 0;
                  if(!!_loc44_.ws1.fluidEnabled && _loc44_.ws2.fluidEnabled)
                  {
                     _loc68_ = Number(_loc44_.name_42 * _loc44_.ws1.fluidProperties.name_25);
                     _loc69_ = _loc44_.name_42 * _loc44_.ws2.fluidProperties.name_25;
                     if(_loc68_ > _loc69_)
                     {
                        _loc70_ = Number(Number(_loc68_ + _loc69_));
                        _loc66_ = Number(_loc66_ - _loc55_ * _loc70_);
                        _loc67_ = Number(_loc67_ - _loc56_ * _loc70_);
                     }
                     else if(_loc68_ < _loc69_)
                     {
                        _loc70_ = Number(Number(_loc68_ + _loc69_));
                        _loc66_ = Number(Number(_loc66_ + _loc64_ * _loc70_));
                        _loc67_ = Number(Number(_loc67_ + _loc65_ * _loc70_));
                     }
                     else
                     {
                        _loc70_ = 0;
                        _loc71_ = 0;
                        _loc70_ = Number(Number(_loc55_ + _loc64_));
                        _loc71_ = Number(Number(_loc56_ + _loc65_));
                        _loc72_ = 0.5;
                        _loc70_ = Number(_loc70_ * _loc72_);
                        _loc71_ = Number(_loc71_ * _loc72_);
                        if(Number(_loc44_.ws1.var_99 * _loc70_ + _loc44_.ws1.var_100 * _loc71_) > Number(_loc44_.ws2.var_99 * _loc70_ + _loc44_.ws2.var_100 * _loc71_))
                        {
                           _loc72_ = Number(Number(_loc68_ + _loc69_));
                           _loc66_ = Number(_loc66_ - _loc70_ * _loc72_);
                           _loc67_ = Number(_loc67_ - _loc71_ * _loc72_);
                        }
                        else
                        {
                           _loc72_ = Number(Number(_loc68_ + _loc69_));
                           _loc66_ = Number(Number(_loc66_ + _loc70_ * _loc72_));
                           _loc67_ = Number(Number(_loc67_ + _loc71_ * _loc72_));
                        }
                     }
                  }
                  else if(_loc44_.ws1.fluidEnabled)
                  {
                     _loc68_ = Number(_loc44_.name_42 * _loc44_.ws1.fluidProperties.name_25);
                     _loc69_ = _loc68_;
                     _loc66_ = Number(_loc66_ - _loc55_ * _loc69_);
                     _loc67_ = Number(_loc67_ - _loc56_ * _loc69_);
                  }
                  else if(_loc44_.ws2.fluidEnabled)
                  {
                     _loc68_ = Number(_loc44_.name_42 * _loc44_.ws2.fluidProperties.name_25);
                     _loc69_ = _loc68_;
                     _loc66_ = Number(Number(_loc66_ + _loc64_ * _loc69_));
                     _loc67_ = Number(Number(_loc67_ + _loc65_ * _loc69_));
                  }
                  _loc68_ = Number(param2);
                  _loc66_ = Number(_loc66_ * _loc68_);
                  _loc67_ = Number(_loc67_ * _loc68_);
                  _loc44_.var_543 = _loc66_;
                  _loc44_.var_568 = _loc67_;
                  if(_loc44_.b1.type == class_223.var_188)
                  {
                     _loc68_ = Number(_loc44_.b1.var_123);
                     _loc44_.b1.var_104 = _loc44_.b1.var_104 - _loc66_ * _loc68_;
                     _loc44_.b1.var_105 = _loc44_.b1.var_105 - _loc67_ * _loc68_;
                     _loc44_.b1.var_94 = _loc44_.b1.var_94 - (_loc67_ * _loc44_.r1x - _loc66_ * _loc44_.r1y) * _loc44_.b1.var_136;
                  }
                  if(_loc44_.b2.type == class_223.var_188)
                  {
                     _loc68_ = Number(_loc44_.b2.var_123);
                     _loc44_.b2.var_104 = Number(_loc44_.b2.var_104 + _loc66_ * _loc68_);
                     _loc44_.b2.var_105 = Number(_loc44_.b2.var_105 + _loc67_ * _loc68_);
                     _loc44_.b2.var_94 = Number(_loc44_.b2.var_94 + (_loc67_ * _loc44_.r2x - _loc66_ * _loc44_.r2y) * _loc44_.b2.var_136);
                  }
                  if((!_loc44_.ws1.fluidEnabled || _loc44_.ws1.fluidProperties.name_49 == 0) && (!_loc44_.ws2.fluidEnabled || _loc44_.ws2.fluidProperties.name_49 == 0))
                  {
                     _loc44_.var_817 = true;
                     _loc44_.var_444 = 0;
                     _loc44_.var_447 = 0;
                     _loc44_.var_470 = 0;
                  }
                  else
                  {
                     _loc44_.var_817 = false;
                     _loc68_ = 0;
                     if(_loc44_.ws1.fluidEnabled)
                     {
                        _loc44_.ws2.method_400();
                        _loc68_ = Number(Number(_loc68_ + _loc44_.ws1.fluidProperties.name_49 * _loc44_.ws2.name_59 * _loc44_.name_42 / _loc44_.ws2.area));
                     }
                     if(_loc44_.ws2.fluidEnabled)
                     {
                        _loc44_.ws1.method_400();
                        _loc68_ = Number(Number(_loc68_ + _loc44_.ws2.fluidProperties.name_49 * _loc44_.ws1.name_59 * _loc44_.name_42 / _loc44_.ws1.area));
                     }
                     if(_loc68_ != 0)
                     {
                        _loc69_ = Number(_loc44_.b1.var_194 + _loc44_.b2.var_194);
                        if(_loc69_ != 0)
                        {
                           _loc44_.var_631 = 1 / _loc69_;
                        }
                        else
                        {
                           _loc44_.var_631 = 0;
                        }
                        _loc68_ = Number(_loc68_ * 0.0004);
                        _loc71_ = Number(2 * Math.PI * _loc68_);
                        _loc44_.var_627 = 1 / (param2 * _loc71_ * (2 + _loc71_ * param2));
                        _loc72_ = Number(1 / (Number(1 + _loc44_.var_627)));
                        _loc70_ = Number(param2 * _loc71_ * _loc71_ * _loc44_.var_627);
                        _loc44_.var_627 = _loc44_.var_627 * _loc72_;
                        _loc44_.var_631 = _loc44_.var_631 * _loc72_;
                     }
                     else
                     {
                        _loc44_.var_631 = 0;
                        _loc44_.var_627 = 0;
                     }
                     _loc69_ = _loc44_.b2.var_104 + _loc44_.b2.var_272 - _loc44_.r2y * (_loc44_.b2.var_94 + _loc44_.b2.var_237) - (_loc44_.b1.var_104 + _loc44_.b1.var_272 - _loc44_.r1y * (_loc44_.b2.var_94 + _loc44_.b2.var_237));
                     _loc70_ = Number(Number(Number(_loc44_.b2.var_105 + _loc44_.b2.var_274) + _loc44_.r2x * (_loc44_.b2.var_94 + _loc44_.b2.var_237)) - (Number(Number(_loc44_.b1.var_105 + _loc44_.b1.var_274) + _loc44_.r1x * (_loc44_.b1.var_94 + _loc44_.b1.var_237))));
                     if(Number(_loc69_ * _loc69_ + _loc70_ * _loc70_) >= class_238.name_8 * class_238.name_8)
                     {
                        _loc71_ = Number(Number(_loc69_ * _loc69_ + _loc70_ * _loc70_));
                        sf32(_loc71_,0);
                        _loc15_ = 1597463007 - (li32(0) >> 1);
                        si32(_loc15_,0);
                        _loc73_ = Number(lf32(0));
                        _loc72_ = Number(_loc73_ * (1.5 - 0.5 * _loc71_ * _loc73_ * _loc73_));
                        _loc73_ = Number(_loc72_);
                        _loc69_ = _loc69_ * _loc73_;
                        _loc70_ = Number(_loc70_ * _loc73_);
                        _loc44_.nx = _loc69_;
                        _loc44_.ny = _loc70_;
                     }
                     _loc71_ = 0;
                     if(_loc44_.ws1.fluidEnabled)
                     {
                        _loc72_ = Number(-_loc44_.ws1.fluidProperties.name_49 * _loc44_.name_42 / _loc44_.ws2.area);
                        if(_loc44_.ws2.type == class_223.var_131)
                        {
                           _loc71_ = Number(_loc71_ - _loc72_ * _loc44_.ws2.var_102.radius * class_238.var_882 / (2 * _loc44_.ws2.var_102.radius * Math.PI));
                        }
                        else
                        {
                           _loc74_ = _loc44_.ws2.name_6;
                           _loc73_ = 0;
                           _loc75_ = 0;
                           _loc76_ = _loc74_.name_11.var_73;
                           while(_loc76_ != null)
                           {
                              _loc53_ = _loc76_.var_74;
                              _loc73_ = Number(Number(_loc73_ + _loc53_.length));
                              _loc77_ = Number(_loc72_ * _loc53_.length * (_loc53_.var_92 * _loc44_.nx + _loc53_.var_91 * _loc44_.ny));
                              if(_loc77_ > 0)
                              {
                                 _loc77_ = Number(_loc77_ * -class_238.var_766);
                                 _loc77_ = Number(_loc77_);
                              }
                              _loc75_ = Number(_loc75_ - _loc77_ * 0.5 * class_238.var_882);
                              _loc76_ = _loc76_.next;
                           }
                           _loc71_ = Number(Number(_loc71_ + _loc75_ / _loc73_));
                        }
                     }
                     if(_loc44_.ws2.fluidEnabled)
                     {
                        _loc72_ = Number(-_loc44_.ws2.fluidProperties.name_49 * _loc44_.name_42 / _loc44_.ws1.area);
                        if(_loc44_.ws1.type == class_223.var_131)
                        {
                           _loc71_ = Number(_loc71_ - _loc72_ * _loc44_.ws1.var_102.radius * class_238.var_882 / (2 * _loc44_.ws1.var_102.radius * Math.PI));
                        }
                        else
                        {
                           _loc74_ = _loc44_.ws1.name_6;
                           _loc73_ = 0;
                           _loc75_ = 0;
                           _loc76_ = _loc74_.name_11.var_73;
                           while(_loc76_ != null)
                           {
                              _loc53_ = _loc76_.var_74;
                              _loc73_ = Number(Number(_loc73_ + _loc53_.length));
                              _loc77_ = Number(_loc72_ * _loc53_.length * (_loc53_.var_92 * _loc44_.nx + _loc53_.var_91 * _loc44_.ny));
                              if(_loc77_ > 0)
                              {
                                 _loc77_ = Number(_loc77_ * -class_238.var_766);
                                 _loc77_ = Number(_loc77_);
                              }
                              _loc75_ = Number(_loc75_ - _loc77_ * 0.5 * class_238.var_882);
                              _loc76_ = _loc76_.next;
                           }
                           _loc71_ = Number(Number(_loc71_ + _loc75_ / _loc73_));
                        }
                     }
                     if(_loc71_ != 0)
                     {
                        _loc72_ = Number(Number(_loc44_.b1.var_264 + _loc44_.b2.var_264));
                        _loc73_ = 0;
                        _loc75_ = 0;
                        _loc77_ = 0;
                        _loc73_ = Number(_loc72_);
                        _loc75_ = 0;
                        _loc77_ = Number(_loc72_);
                        if(_loc44_.b1.var_194 != 0)
                        {
                           _loc78_ = _loc44_.r1x * _loc44_.b1.var_194;
                           _loc79_ = _loc44_.r1y * _loc44_.b1.var_194;
                           _loc73_ = Number(Number(_loc73_ + _loc79_ * _loc44_.r1y));
                           _loc75_ = Number(Number(_loc75_ + -_loc79_ * _loc44_.r1x));
                           _loc77_ = Number(Number(_loc77_ + _loc78_ * _loc44_.r1x));
                        }
                        if(_loc44_.b2.var_194 != 0)
                        {
                           _loc78_ = _loc44_.r2x * _loc44_.b2.var_194;
                           _loc79_ = _loc44_.r2y * _loc44_.b2.var_194;
                           _loc73_ = Number(Number(_loc73_ + _loc79_ * _loc44_.r2y));
                           _loc75_ = Number(Number(_loc75_ + -_loc79_ * _loc44_.r2x));
                           _loc77_ = Number(Number(_loc77_ + _loc78_ * _loc44_.r2x));
                        }
                        _loc78_ = _loc73_ * _loc77_ - _loc75_ * _loc75_;
                        if(_loc78_ != _loc78_)
                        {
                           _loc77_ = 0;
                           _loc75_ = Number(_loc77_);
                           _loc73_ = Number(_loc75_);
                           3;
                        }
                        else if(_loc78_ == 0)
                        {
                           _loc15_ = 0;
                           if(_loc73_ != 0)
                           {
                              _loc73_ = Number(1 / _loc73_);
                           }
                           else
                           {
                              _loc73_ = 0;
                              _loc15_ = _loc15_ | 1;
                           }
                           if(_loc77_ != 0)
                           {
                              _loc77_ = Number(1 / _loc77_);
                           }
                           else
                           {
                              _loc77_ = 0;
                              _loc15_ = _loc15_ | 2;
                           }
                           _loc75_ = 0;
                           _loc15_;
                        }
                        else
                        {
                           _loc78_ = 1 / _loc78_;
                           _loc79_ = _loc77_ * _loc78_;
                           _loc77_ = Number(_loc73_ * _loc78_);
                           _loc73_ = Number(_loc79_);
                           _loc75_ = Number(_loc75_ * -_loc78_);
                           0;
                        }
                        _loc44_.var_737 = _loc73_;
                        _loc44_.var_638 = _loc75_;
                        _loc44_.var_686 = _loc77_;
                        _loc80_ = 2 * Math.PI * _loc71_;
                        _loc44_.var_586 = 1 / (param2 * _loc80_ * (2 + _loc80_ * param2));
                        _loc81_ = 1 / (Number(1 + _loc44_.var_586));
                        _loc78_ = param2 * _loc80_ * _loc80_ * _loc44_.var_586;
                        _loc44_.var_586 = _loc44_.var_586 * _loc81_;
                        _loc79_ = _loc81_;
                        _loc44_.var_737 = _loc44_.var_737 * _loc79_;
                        _loc44_.var_638 = _loc44_.var_638 * _loc79_;
                        _loc44_.var_686 = _loc44_.var_686 * _loc79_;
                     }
                     else
                     {
                        _loc44_.var_737 = 0;
                        _loc44_.var_638 = 0;
                        _loc44_.var_686 = 0;
                        _loc44_.var_586 = 0;
                     }
                  }
                  _loc68_ = Number(_loc54_);
                  _loc44_.var_444 = _loc44_.var_444 * _loc68_;
                  _loc44_.var_447 = _loc44_.var_447 * _loc68_;
                  _loc44_.var_470 = _loc44_.var_470 * _loc54_;
               }
            }
         }
         else if(param1.var_128 != null)
         {
            _loc46_ = param1.var_128;
            _loc6_ = true;
            _loc47_ = null;
            _loc50_ = null;
            _loc51_ = _loc46_.var_268.next;
            _loc46_.var_270 = false;
            _loc48_ = _loc46_.name_24.next;
            while(_loc48_ != null)
            {
               _loc49_ = _loc48_;
               if(_loc49_.var_114 + class_238.var_832 < _loc46_.var_114)
               {
                  _loc57_ = _loc46_.name_24;
                  if(_loc47_ == null)
                  {
                     _loc58_ = _loc57_.next;
                     _loc59_ = _loc58_.next;
                     _loc57_.next = _loc59_;
                     if(_loc57_.next == null)
                     {
                        _loc57_.var_76 = true;
                     }
                  }
                  else
                  {
                     _loc58_ = _loc47_.next;
                     _loc59_ = _loc58_.next;
                     _loc47_.next = _loc59_;
                     if(_loc59_ == null)
                     {
                        _loc57_.var_76 = true;
                     }
                  }
                  _loc58_.var_120 = false;
                  _loc57_.name_2 = true;
                  _loc57_.length = _loc57_.length - 1;
                  _loc57_.var_76 = true;
                  _loc48_ = _loc59_;
                  _loc60_ = _loc46_.var_268;
                  if(_loc50_ == null)
                  {
                     _loc61_ = _loc60_.next;
                     _loc62_ = _loc61_.next;
                     _loc60_.next = _loc62_;
                     if(_loc60_.next == null)
                     {
                        _loc60_.var_76 = true;
                     }
                  }
                  else
                  {
                     _loc61_ = _loc50_.next;
                     _loc62_ = _loc61_.next;
                     _loc50_.next = _loc62_;
                     if(_loc62_ == null)
                     {
                        _loc60_.var_76 = true;
                     }
                  }
                  _loc61_.var_120 = false;
                  _loc60_.name_2 = true;
                  _loc60_.length = _loc60_.length - 1;
                  _loc60_.var_76 = true;
                  _loc51_ = _loc62_;
                  _loc57_ = _loc49_;
                  _loc57_.name_20 = null;
                  _loc57_.next = ZPP_Contact.var_72;
                  ZPP_Contact.var_72 = _loc57_;
               }
               else
               {
                  _loc60_ = _loc49_.name_4;
                  _loc33_ = _loc49_.active;
                  _loc49_.active = _loc49_.var_114 == _loc46_.var_114;
                  if(_loc49_.active)
                  {
                     if(_loc6_)
                     {
                        _loc6_ = false;
                        _loc46_.c1 = _loc60_;
                        _loc46_.oc1 = _loc49_;
                     }
                     else
                     {
                        _loc46_.var_270 = true;
                        _loc46_.c2 = _loc60_;
                        _loc46_.oc2 = _loc49_;
                     }
                  }
                  if(_loc33_ != _loc49_.active)
                  {
                     _loc46_.name_24.name_2 = true;
                  }
                  _loc47_ = _loc48_;
                  _loc50_ = _loc51_;
                  _loc51_ = _loc51_.next;
                  _loc48_ = _loc48_.next;
               }
            }
            if(_loc46_.var_270)
            {
               _loc46_.var_481 = true;
               if(_loc46_.oc1.var_300)
               {
                  _loc60_ = _loc46_.c1;
                  _loc46_.c1 = _loc46_.c2;
                  _loc46_.c2 = _loc60_;
                  _loc48_ = _loc46_.oc1;
                  _loc46_.oc1 = _loc46_.oc2;
                  _loc46_.oc2 = _loc48_;
                  _loc46_.var_270 = false;
               }
               else if(_loc46_.oc2.var_300)
               {
                  _loc46_.var_270 = false;
               }
               if(_loc46_.oc1.var_300)
               {
                  _loc6_ = true;
               }
            }
            else
            {
               _loc46_.var_481 = false;
            }
            if(_loc6_)
            {
               param1.active = false;
            }
         }
         if(_loc5_ != param1.active)
         {
            param1.b1.name_12.name_2 = true;
            param1.b2.name_12.name_2 = true;
            _loc6_ = true;
            var_175.name_2 = _loc6_;
            var_228.name_2 = _loc6_;
            _loc6_ = true;
            var_217.name_2 = _loc6_;
            var_288.name_2 = _loc6_;
         }
         return false;
      }
      
      public final function prestep(param1:Number) : void
      {
         var _loc4_:* = null as ZPP_Constraint;
         var _loc9_:* = null as ZPP_ColArbiter;
         var _loc10_:* = null as ZNPNode_ZPP_ColArbiter;
         var _loc11_:* = null as ZNPNode_ZPP_ColArbiter;
         var _loc12_:* = null as ZNPNode_ZPP_ColArbiter;
         var _loc16_:* = null as ZPP_FluidArbiter;
         var _loc17_:* = null as ZNPNode_ZPP_FluidArbiter;
         var _loc18_:* = null as ZNPNode_ZPP_FluidArbiter;
         var _loc19_:* = null as ZNPNode_ZPP_FluidArbiter;
         var _loc23_:* = null as ZPP_SensorArbiter;
         var _loc24_:* = null as ZNPNode_ZPP_SensorArbiter;
         var _loc25_:* = null as ZNPNode_ZPP_SensorArbiter;
         var _loc26_:* = null as ZNPNode_ZPP_SensorArbiter;
         var _loc2_:* = null;
         var _loc3_:ZNPNode_ZPP_Constraint = var_221.var_73;
         while(_loc3_ != null)
         {
            _loc4_ = _loc3_.var_74;
            if(_loc4_.method_544(param1))
            {
               _loc3_ = var_221.erase(_loc2_);
               _loc4_;
               ZPP_Constraint.method_365();
               constraintCbBreak(_loc4_);
               if(_loc4_.name_65)
               {
                  _loc4_.var_112.var_129 = true;
                  var_156 = false;
                  if(_loc4_.compound != null)
                  {
                     _loc4_.compound.var_185.remove(_loc4_.outer);
                  }
                  else
                  {
                     var_185.remove(_loc4_.outer);
                  }
                  var_156 = true;
               }
               else
               {
                  _loc4_.active = false;
               }
               _loc4_.method_239();
            }
            else
            {
               _loc2_ = _loc3_;
               _loc3_ = _loc3_.next;
            }
         }
         var _loc5_:* = null;
         var _loc6_:class_305 = var_228;
         var _loc7_:ZNPNode_ZPP_ColArbiter = _loc6_.var_73;
         var _loc8_:* = var_175 != null;
         if(!!_loc8_ && _loc7_ == null)
         {
            _loc8_ = false;
            _loc7_ = var_175.var_73;
            _loc6_ = var_175;
            _loc5_ = null;
         }
         while(_loc7_ != null)
         {
            _loc9_ = _loc7_.var_74;
            if(presteparb(_loc9_,param1))
            {
               if(_loc5_ == null)
               {
                  _loc10_ = _loc6_.var_73;
                  _loc11_ = _loc10_.next;
                  _loc6_.var_73 = _loc11_;
                  if(_loc6_.var_73 == null)
                  {
                     _loc6_.var_76 = true;
                  }
               }
               else
               {
                  _loc10_ = _loc5_.next;
                  _loc11_ = _loc10_.next;
                  _loc5_.next = _loc11_;
                  if(_loc11_ == null)
                  {
                     _loc6_.var_76 = true;
                  }
               }
               _loc12_ = _loc10_;
               _loc12_.var_74 = null;
               _loc12_.next = ZNPNode_ZPP_ColArbiter.var_72;
               ZNPNode_ZPP_ColArbiter.var_72 = _loc12_;
               _loc6_.name_2 = true;
               _loc6_.length = _loc6_.length - 1;
               _loc6_.var_76 = true;
               _loc7_ = _loc11_;
               if(!!_loc8_ && _loc7_ == null)
               {
                  _loc8_ = false;
                  _loc7_ = var_175.var_73;
                  _loc6_ = var_175;
                  _loc5_ = null;
               }
            }
            else
            {
               _loc5_ = _loc7_;
               _loc7_ = _loc7_.next;
               if(!!_loc8_ && _loc7_ == null)
               {
                  _loc8_ = false;
                  _loc7_ = var_175.var_73;
                  _loc6_ = var_175;
                  _loc5_ = null;
               }
            }
         }
         var _loc13_:* = null;
         var _loc14_:* = var_217;
         var _loc15_:ZNPNode_ZPP_FluidArbiter = _loc14_.var_73;
         _loc8_ = false;
         if(!!_loc8_ && _loc15_ == null)
         {
            _loc8_ = false;
            _loc15_ = null.begin();
            _loc14_ = null;
            _loc13_ = null;
         }
         while(_loc15_ != null)
         {
            _loc16_ = _loc15_.var_74;
            if(presteparb(_loc16_,param1))
            {
               if(_loc13_ == null)
               {
                  _loc17_ = _loc14_.var_73;
                  _loc18_ = _loc17_.next;
                  _loc14_.var_73 = _loc18_;
                  if(_loc14_.var_73 == null)
                  {
                     _loc14_.var_76 = true;
                  }
               }
               else
               {
                  _loc17_ = _loc13_.next;
                  _loc18_ = _loc17_.next;
                  _loc13_.next = _loc18_;
                  if(_loc18_ == null)
                  {
                     _loc14_.var_76 = true;
                  }
               }
               _loc19_ = _loc17_;
               _loc19_.var_74 = null;
               _loc19_.next = ZNPNode_ZPP_FluidArbiter.var_72;
               ZNPNode_ZPP_FluidArbiter.var_72 = _loc19_;
               _loc14_.name_2 = true;
               _loc14_.length = _loc14_.length - 1;
               _loc14_.var_76 = true;
               _loc15_ = _loc18_;
               if(!!_loc8_ && _loc15_ == null)
               {
                  _loc8_ = false;
                  _loc15_ = null.begin();
                  _loc14_ = null;
                  _loc13_ = null;
               }
            }
            else
            {
               _loc13_ = _loc15_;
               _loc15_ = _loc15_.next;
               if(!!_loc8_ && _loc15_ == null)
               {
                  _loc8_ = false;
                  _loc15_ = null.begin();
                  _loc14_ = null;
                  _loc13_ = null;
               }
            }
         }
         var _loc20_:* = null;
         var _loc21_:* = var_288;
         var _loc22_:ZNPNode_ZPP_SensorArbiter = _loc21_.var_73;
         _loc8_ = false;
         if(!!_loc8_ && _loc22_ == null)
         {
            _loc8_ = false;
            _loc22_ = null.begin();
            _loc21_ = null;
            _loc20_ = null;
         }
         while(_loc22_ != null)
         {
            _loc23_ = _loc22_.var_74;
            if(presteparb(_loc23_,param1))
            {
               if(_loc20_ == null)
               {
                  _loc24_ = _loc21_.var_73;
                  _loc25_ = _loc24_.next;
                  _loc21_.var_73 = _loc25_;
                  if(_loc21_.var_73 == null)
                  {
                     _loc21_.var_76 = true;
                  }
               }
               else
               {
                  _loc24_ = _loc20_.next;
                  _loc25_ = _loc24_.next;
                  _loc20_.next = _loc25_;
                  if(_loc25_ == null)
                  {
                     _loc21_.var_76 = true;
                  }
               }
               _loc26_ = _loc24_;
               _loc26_.var_74 = null;
               _loc26_.next = ZNPNode_ZPP_SensorArbiter.var_72;
               ZNPNode_ZPP_SensorArbiter.var_72 = _loc26_;
               _loc21_.name_2 = true;
               _loc21_.length = _loc21_.length - 1;
               _loc21_.var_76 = true;
               _loc22_ = _loc25_;
               if(!!_loc8_ && _loc22_ == null)
               {
                  _loc8_ = false;
                  _loc22_ = null.begin();
                  _loc21_ = null;
                  _loc20_ = null;
               }
            }
            else
            {
               _loc20_ = _loc22_;
               _loc22_ = _loc22_.next;
               if(!!_loc8_ && _loc22_ == null)
               {
                  _loc8_ = false;
                  _loc22_ = null.begin();
                  _loc21_ = null;
                  _loc20_ = null;
               }
            }
         }
      }
      
      public final function method_591(param1:ZPP_CbSet, param2:ZPP_CbSet) : void
      {
         var _loc4_:* = null as ZNPNode_ZPP_Interactor;
         var _loc5_:* = null as ZPP_Interactor;
         var _loc6_:* = null as ZPP_Compound;
         var _loc7_:* = null as ZNPNode_ZPP_Body;
         var _loc8_:* = null as ZPP_Body;
         var _loc9_:* = null as ZNPNode_ZPP_Compound;
         var _loc10_:* = null as ZPP_Compound;
         var _loc11_:* = null as ZPP_Shape;
         var _loc12_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc13_:* = null as ZPP_Arbiter;
         var _loc14_:* = null as ZPP_Interactor;
         var _loc15_:* = null as ZNPNode_ZPP_Interactor;
         var _loc16_:* = null as ZPP_Interactor;
         var _loc17_:* = null as ZPP_CallbackSet;
         var _loc18_:* = null as ZPP_Arbiter;
         var _loc3_:class_213 = new class_213();
         _loc4_ = param1.name_26.var_73;
         while(_loc4_ != null)
         {
            _loc5_ = _loc4_.var_74;
            _loc3_.add(_loc5_);
            _loc4_ = _loc4_.next;
         }
         if(param1 != param2)
         {
            _loc4_ = param2.name_26.var_73;
            while(_loc4_ != null)
            {
               _loc5_ = _loc4_.var_74;
               _loc3_.add(_loc5_);
               _loc4_ = _loc4_.next;
            }
         }
         while(_loc3_.var_73 != null)
         {
            _loc5_ = _loc3_.method_105();
            if(_loc5_.var_207 != null)
            {
               _loc6_ = _loc5_.var_207;
               _loc7_ = _loc6_.name_30.var_73;
               while(_loc7_ != null)
               {
                  _loc8_ = _loc7_.var_74;
                  _loc3_.add(_loc8_);
                  _loc7_ = _loc7_.next;
               }
               _loc9_ = _loc6_.name_27.var_73;
               while(_loc9_ != null)
               {
                  _loc10_ = _loc9_.var_74;
                  _loc3_.add(_loc10_);
                  _loc9_ = _loc9_.next;
               }
            }
            else
            {
               if(_loc5_.var_182 != null)
               {
                  _loc8_ = _loc5_.var_182;
               }
               else
               {
                  _loc8_ = _loc5_.var_160.body;
               }
               if(_loc5_.var_160 != null)
               {
                  _loc11_ = _loc5_.var_160;
               }
               else
               {
                  _loc11_ = null;
               }
               _loc12_ = _loc8_.name_12.var_73;
               while(_loc12_ != null)
               {
                  _loc13_ = _loc12_.var_74;
                  if(_loc13_.var_304 == 0)
                  {
                     _loc12_ = _loc12_.next;
                  }
                  else if(_loc11_ != null && !(_loc13_.ws1 == _loc11_ || _loc13_.ws2 == _loc11_))
                  {
                     _loc12_ = _loc12_.next;
                  }
                  else
                  {
                     MRCA_chains(_loc13_.ws1,_loc13_.ws2);
                     _loc4_ = mrca1.var_73;
                     while(_loc4_ != null)
                     {
                        _loc14_ = _loc4_.var_74;
                        if(_loc14_.var_134 != param1 && _loc14_.var_134 != param2)
                        {
                           _loc4_ = _loc4_.next;
                        }
                        else
                        {
                           _loc15_ = mrca2.var_73;
                           while(_loc15_ != null)
                           {
                              _loc16_ = _loc15_.var_74;
                              if(_loc14_.var_134 == param1 && _loc16_.var_134 != param2 || _loc14_.var_134 == param2 && _loc16_.var_134 != param1)
                              {
                                 _loc15_ = _loc15_.next;
                              }
                              else
                              {
                                 _loc17_ = ZPP_Interactor.method_65(_loc14_,_loc16_);
                                 if(_loc17_ != null)
                                 {
                                    while(_loc17_.name_12.var_73 != null)
                                    {
                                       _loc18_ = _loc17_.name_12.method_105();
                                       _loc18_.var_304 = _loc18_.var_304 - 1;
                                    }
                                    ;
                                    ZPP_Space.remove_callbackset(_loc17_);
                                 }
                                 _loc15_ = _loc15_.next;
                              }
                           }
                           _loc4_ = _loc4_.next;
                        }
                     }
                     _loc12_ = _loc12_.next;
                  }
               }
            }
         }
      }
      
      public final function method_251(param1:ZPP_Interactor, param2:ZPP_Interactor = undefined) : void
      {
         var _loc3_:* = null as ZPP_Compound;
         var _loc4_:* = null as ZNPNode_ZPP_Body;
         var _loc5_:* = null as ZPP_Body;
         var _loc6_:* = null as ZNPNode_ZPP_Compound;
         var _loc7_:* = null as ZPP_Compound;
         var _loc8_:* = null as ZPP_Shape;
         var _loc9_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc10_:* = null as ZPP_Arbiter;
         var _loc11_:* = null as ZNPNode_ZPP_Interactor;
         var _loc12_:* = null as ZPP_Interactor;
         var _loc13_:* = null as ZNPNode_ZPP_Interactor;
         var _loc14_:* = null as ZPP_Interactor;
         var _loc15_:* = null as ZPP_CallbackSet;
         if(param2 == null)
         {
            param2 = param1;
         }
         if(param1.var_207 != null)
         {
            _loc3_ = param1.var_207;
            _loc4_ = _loc3_.name_30.var_73;
            while(_loc4_ != null)
            {
               _loc5_ = _loc4_.var_74;
               method_251(_loc5_,param2);
               _loc4_ = _loc4_.next;
            }
            _loc6_ = _loc3_.name_27.var_73;
            while(_loc6_ != null)
            {
               _loc7_ = _loc6_.var_74;
               method_251(_loc7_,param2);
               _loc6_ = _loc6_.next;
            }
         }
         else
         {
            if(param1.var_182 != null)
            {
               _loc5_ = param1.var_182;
            }
            else
            {
               _loc5_ = param1.var_160.body;
            }
            if(param1.var_160 != null)
            {
               _loc8_ = param1.var_160;
            }
            else
            {
               _loc8_ = null;
            }
            _loc9_ = _loc5_.name_12.var_73;
            while(_loc9_ != null)
            {
               _loc10_ = _loc9_.var_74;
               if(_loc10_.var_304 == 0)
               {
                  _loc9_ = _loc9_.next;
               }
               else if(_loc8_ != null && !(_loc10_.ws1 == _loc8_ || _loc10_.ws2 == _loc8_))
               {
                  _loc9_ = _loc9_.next;
               }
               else
               {
                  MRCA_chains(_loc10_.ws1,_loc10_.ws2);
                  _loc11_ = mrca1.var_73;
                  while(_loc11_ != null)
                  {
                     _loc12_ = _loc11_.var_74;
                     _loc13_ = mrca2.var_73;
                     while(_loc13_ != null)
                     {
                        _loc14_ = _loc13_.var_74;
                        if(_loc12_ != param2 && _loc14_ != param2)
                        {
                           _loc13_ = _loc13_.next;
                        }
                        else
                        {
                           _loc15_ = ZPP_Interactor.method_65(_loc12_,_loc14_);
                           if(_loc15_ != null)
                           {
                              _loc10_.var_304 = _loc10_.var_304 - 1;
                              _loc15_.method_404(_loc10_);
                              if(_loc15_.name_12.var_73 == null)
                              {
                                 ;
                                 ZPP_Space.remove_callbackset(_loc15_);
                              }
                           }
                           _loc13_ = _loc13_.next;
                        }
                     }
                     _loc11_ = _loc11_.next;
                  }
                  _loc9_ = _loc9_.next;
               }
            }
         }
      }
      
      public final function method_498(param1:ZPP_Body, param2:Boolean = false) : void
      {
         var _loc3_:ZPP_Body = param1;
         if(!_loc3_.name_29)
         {
            _loc3_.var_112.var_211 = var_114 + (!!var_156?0:1);
            if(_loc3_.type == class_223.var_216)
            {
               _loc3_.var_261 = true;
            }
            if(_loc3_.var_112.var_129)
            {
               method_115(_loc3_,param2);
            }
         }
      }
      
      public final function method_357(param1:ZPP_Shape, param2:ZPP_Shape, param3:Boolean, param4:ZPP_Arbiter, param5:Boolean) : ZPP_Arbiter
      {
         var _loc10_:int = 0;
         var _loc11_:* = false;
         var _loc13_:* = null as ZPP_Constraint;
         var _loc14_:* = null as ZPP_InteractionGroup;
         var _loc15_:* = null as ZPP_Interactor;
         var _loc16_:* = null as ZPP_InteractionGroup;
         var _loc17_:* = false;
         var _loc18_:* = null as ZPP_InteractionFilter;
         var _loc19_:* = null as ZPP_InteractionFilter;
         var _loc20_:* = null as ZPP_Shape;
         var _loc21_:* = null as ZPP_Shape;
         var _loc22_:* = null as ZPP_Arbiter;
         var _loc23_:* = null as ZPP_Arbiter;
         var _loc24_:* = null as ZPP_Body;
         var _loc25_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc26_:* = null as ZPP_Arbiter;
         var _loc27_:* = null as ZPP_FluidArbiter;
         var _loc28_:Boolean = false;
         var _loc29_:* = null as class_254;
         var _loc30_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc31_:Boolean = false;
         var _loc32_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc33_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc34_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc35_:int = 0;
         var _loc36_:* = null as class_299;
         var _loc37_:* = null as ZNPNode_ZPP_FluidArbiter;
         var _loc38_:* = null as ZNPNode_ZPP_FluidArbiter;
         var _loc39_:* = null as ZPP_Shape;
         var _loc40_:* = null as ZPP_Shape;
         var _loc41_:* = null as class_213;
         var _loc42_:* = null as ZNPNode_ZPP_Interactor;
         var _loc43_:* = null as ZNPNode_ZPP_Interactor;
         var _loc44_:* = null as ZPP_Compound;
         var _loc45_:* = null as ZPP_Compound;
         var _loc46_:* = 0;
         var _loc47_:int = 0;
         var _loc48_:* = null as ZPP_Interactor;
         var _loc49_:* = null as ZPP_CbSet;
         var _loc50_:* = null as ZPP_CbSet;
         var _loc51_:* = null as ZPP_CbSetPair;
         var _loc52_:* = null as ZPP_CbSetPair;
         var _loc53_:* = null as class_303;
         var _loc54_:* = null as ZNPNode_ZPP_CbSetPair;
         var _loc55_:* = null as ZPP_CbSetPair;
         var _loc56_:* = null as ZPP_CallbackSet;
         var _loc57_:* = null as ZPP_CallbackSet;
         var _loc58_:* = null as class_289;
         var _loc59_:* = null as ZNPNode_ZPP_InteractionListener;
         var _loc60_:* = null as ZNPNode_ZPP_InteractionListener;
         var _loc61_:* = null as ZPP_InteractionListener;
         var _loc62_:* = null as ZNPNode_ZPP_InteractionListener;
         var _loc63_:* = null as ZNPNode_ZPP_InteractionListener;
         var _loc64_:Boolean = false;
         var _loc65_:Boolean = false;
         var _loc66_:* = null as class_273;
         var _loc67_:* = null as ZPP_Interactor;
         var _loc68_:* = null as ZPP_Interactor;
         var _loc69_:* = null as ZPP_OptionType;
         var _loc70_:* = null as ZNPList_ZPP_CbType;
         var _loc71_:* = null as class_296;
         var _loc72_:* = null as ZPP_FluidArbiter;
         var _loc73_:* = null as class_305;
         var _loc74_:* = null as ZPP_ColArbiter;
         var _loc75_:Number = NaN;
         var _loc76_:Number = NaN;
         var _loc77_:* = null as ZNPNode_ZPP_ColArbiter;
         var _loc78_:* = null as ZNPNode_ZPP_ColArbiter;
         var _loc79_:Boolean = false;
         var _loc80_:* = null as ZPP_Contact;
         var _loc81_:* = null as ZPP_IContact;
         var _loc82_:* = null as ZPP_IContact;
         var _loc83_:* = null as ZPP_Contact;
         var _loc84_:* = null as ZPP_Contact;
         var _loc85_:* = null as ZPP_Contact;
         var _loc86_:* = null as ZPP_Contact;
         var _loc87_:* = null as ZPP_Contact;
         var _loc88_:* = null as ZPP_IContact;
         var _loc89_:* = null as ZPP_IContact;
         var _loc90_:* = null as ZPP_IContact;
         var _loc91_:Boolean = false;
         var _loc92_:* = null as ZPP_ColArbiter;
         var _loc93_:* = null as ZPP_Edge;
         var _loc94_:* = null as ZPP_SensorArbiter;
         var _loc95_:* = null as class_307;
         var _loc96_:* = null as ZNPNode_ZPP_SensorArbiter;
         var _loc97_:* = null as ZNPNode_ZPP_SensorArbiter;
         var _loc98_:* = null as ZPP_SensorArbiter;
         var _loc6_:* = {};
         var _loc7_:* = null;
         var _loc8_:ZPP_Body = param1.body;
         var _loc9_:ZPP_Body = param2.body;
         _loc11_ = false;
         var _loc12_:ZNPNode_ZPP_Constraint = _loc8_.name_19.var_73;
         while(_loc12_ != null)
         {
            _loc13_ = _loc12_.var_74;
            if(!!_loc13_.name_36 && _loc13_.method_312(_loc8_.id,_loc9_.id))
            {
               _loc11_ = true;
               break;
            }
            _loc12_ = _loc12_.next;
         }
         if((param1.sensorEnabled || param2.sensorEnabled) && ((_loc18_.name_48 & _loc19_.name_46) != 0 && (_loc19_.name_48 & _loc18_.name_46) != 0))
         {
            _loc10_ = 2;
         }
         else if((param1.fluidEnabled || param2.fluidEnabled) && ((_loc18_.name_43 & _loc19_.name_47) != 0 && (_loc19_.name_43 & _loc18_.name_47) != 0) && !(_loc8_.var_123 == 0 && _loc9_.var_123 == 0 && _loc8_.var_136 == 0 && _loc9_.var_136 == 0))
         {
            _loc10_ = 0;
         }
         else
         {
            _loc18_ = param1.filter;
            _loc19_ = param2.filter;
            if((_loc18_.name_14 & _loc19_.name_13) != 0 && (_loc19_.name_14 & _loc18_.name_13) != 0 && !(_loc8_.var_123 == 0 && _loc9_.var_123 == 0 && _loc8_.var_136 == 0 && _loc9_.var_136 == 0))
            {
               _loc10_ = 1;
            }
            else
            {
               _loc10_ = -1;
            }
         }
         if(_loc10_ != -1)
         {
            if(param1.type > param2.type)
            {
               _loc20_ = param2;
               _loc21_ = param1;
            }
            else if(param1.type == param2.type)
            {
               if(param1.id < param2.id)
               {
                  _loc20_ = param1;
                  _loc21_ = param2;
               }
               else
               {
                  _loc21_ = param1;
                  _loc20_ = param2;
               }
            }
            else
            {
               _loc20_ = param1;
               _loc21_ = param2;
            }
            _loc11_ = _loc20_ == param2;
            if(_loc10_ == 0)
            {
               if(param4 == null)
               {
                  _loc23_ = null;
                  if(_loc8_.name_12.length < _loc9_.name_12.length)
                  {
                     _loc24_ = _loc8_;
                  }
                  else
                  {
                     _loc24_ = _loc9_;
                  }
                  _loc25_ = _loc24_.name_12.var_73;
                  while(_loc25_ != null)
                  {
                     _loc26_ = _loc25_.var_74;
                     if(_loc26_.id == _loc20_.id && _loc26_.var_179 == _loc21_.id)
                     {
                        _loc23_ = _loc26_;
                        break;
                     }
                     _loc25_ = _loc25_.next;
                  }
                  _loc22_ = _loc23_;
               }
               else
               {
                  _loc22_ = param4;
               }
               _loc17_ = _loc22_ == null;
               _loc28_ = false;
               if(_loc17_)
               {
                  if(ZPP_FluidArbiter.var_72 == null)
                  {
                     _loc27_ = new ZPP_FluidArbiter();
                  }
                  else
                  {
                     _loc27_ = ZPP_FluidArbiter.var_72;
                     ZPP_FluidArbiter.var_72 = _loc27_.next;
                     _loc27_.next = null;
                  }
                  null;
               }
               else if(_loc22_.var_161 == null)
               {
                  _loc22_.var_265 = true;
                  _loc29_ = _loc22_.b1.name_12;
                  _loc25_ = null;
                  _loc30_ = _loc29_.var_73;
                  _loc31_ = false;
                  while(_loc30_ != null)
                  {
                     if(_loc30_.var_74 == _loc22_)
                     {
                        if(_loc25_ == null)
                        {
                           _loc32_ = _loc29_.var_73;
                           _loc33_ = _loc32_.next;
                           _loc29_.var_73 = _loc33_;
                           if(_loc29_.var_73 == null)
                           {
                              _loc29_.var_76 = true;
                           }
                        }
                        else
                        {
                           _loc32_ = _loc25_.next;
                           _loc33_ = _loc32_.next;
                           _loc25_.next = _loc33_;
                           if(_loc33_ == null)
                           {
                              _loc29_.var_76 = true;
                           }
                        }
                        _loc34_ = _loc32_;
                        _loc34_.var_74 = null;
                        _loc34_.next = ZNPNode_ZPP_Arbiter.var_72;
                        ZNPNode_ZPP_Arbiter.var_72 = _loc34_;
                        _loc29_.name_2 = true;
                        _loc29_.length = _loc29_.length - 1;
                        _loc29_.var_76 = true;
                        _loc33_;
                        _loc31_ = true;
                        break;
                     }
                     _loc25_ = _loc30_;
                     _loc30_ = _loc30_.next;
                  }
                  _loc31_;
                  _loc29_ = _loc22_.b2.name_12;
                  _loc25_ = null;
                  _loc30_ = _loc29_.var_73;
                  _loc31_ = false;
                  while(_loc30_ != null)
                  {
                     if(_loc30_.var_74 == _loc22_)
                     {
                        if(_loc25_ == null)
                        {
                           _loc32_ = _loc29_.var_73;
                           _loc33_ = _loc32_.next;
                           _loc29_.var_73 = _loc33_;
                           if(_loc29_.var_73 == null)
                           {
                              _loc29_.var_76 = true;
                           }
                        }
                        else
                        {
                           _loc32_ = _loc25_.next;
                           _loc33_ = _loc32_.next;
                           _loc25_.next = _loc33_;
                           if(_loc33_ == null)
                           {
                              _loc29_.var_76 = true;
                           }
                        }
                        _loc34_ = _loc32_;
                        _loc34_.var_74 = null;
                        _loc34_.next = ZNPNode_ZPP_Arbiter.var_72;
                        ZNPNode_ZPP_Arbiter.var_72 = _loc34_;
                        _loc29_.name_2 = true;
                        _loc29_.length = _loc29_.length - 1;
                        _loc29_.var_76 = true;
                        _loc33_;
                        _loc31_ = true;
                        break;
                     }
                     _loc25_ = _loc30_;
                     _loc30_ = _loc30_.next;
                  }
                  _loc31_;
                  if(_loc22_.var_209 != null)
                  {
                     _loc22_.var_209.var_246 = null;
                     _loc22_.var_209 = null;
                  }
                  _loc22_.active = false;
                  var_217.name_2 = true;
                  if(ZPP_FluidArbiter.var_72 == null)
                  {
                     _loc27_ = new ZPP_FluidArbiter();
                  }
                  else
                  {
                     _loc27_ = ZPP_FluidArbiter.var_72;
                     ZPP_FluidArbiter.var_72 = _loc27_.next;
                     _loc27_.next = null;
                  }
                  null;
                  _loc27_.var_361 = true;
                  _loc17_ = true;
                  _loc28_ = true;
               }
               else
               {
                  _loc27_ = _loc22_.var_161;
               }
               _loc35_ = class_223.var_386;
               if(_loc17_ || _loc27_.var_114 != var_114 || param5)
               {
                  _loc27_.var_114 = var_114;
                  if(class_239.method_696(_loc20_,_loc21_,_loc27_))
                  {
                     if(_loc17_)
                     {
                        _loc27_.b1 = param1.body;
                        _loc27_.ws1 = param1;
                        _loc27_.b2 = param2.body;
                        _loc27_.ws2 = param2;
                        _loc27_.id = _loc20_.id;
                        _loc27_.var_179 = _loc21_.id;
                        _loc29_ = _loc27_.b1.name_12;
                        if(ZNPNode_ZPP_Arbiter.var_72 == null)
                        {
                           _loc30_ = new ZNPNode_ZPP_Arbiter();
                        }
                        else
                        {
                           _loc30_ = ZNPNode_ZPP_Arbiter.var_72;
                           ZNPNode_ZPP_Arbiter.var_72 = _loc30_.next;
                           _loc30_.next = null;
                        }
                        null;
                        _loc30_.var_74 = _loc27_;
                        _loc25_ = _loc30_;
                        _loc25_.next = _loc29_.var_73;
                        _loc29_.var_73 = _loc25_;
                        _loc29_.name_2 = true;
                        _loc29_.length = _loc29_.length + 1;
                        _loc27_;
                        _loc29_ = _loc27_.b2.name_12;
                        if(ZNPNode_ZPP_Arbiter.var_72 == null)
                        {
                           _loc30_ = new ZNPNode_ZPP_Arbiter();
                        }
                        else
                        {
                           _loc30_ = ZNPNode_ZPP_Arbiter.var_72;
                           ZNPNode_ZPP_Arbiter.var_72 = _loc30_.next;
                           _loc30_.next = null;
                        }
                        null;
                        _loc30_.var_74 = _loc27_;
                        _loc25_ = _loc30_;
                        _loc25_.next = _loc29_.var_73;
                        _loc29_.var_73 = _loc25_;
                        _loc29_.name_2 = true;
                        _loc29_.length = _loc29_.length + 1;
                        _loc27_;
                        _loc27_.active = true;
                        _loc27_.var_304 = 0;
                        _loc27_.var_265 = false;
                        _loc27_.var_129 = false;
                        _loc27_.name_23 = false;
                        _loc27_.var_639 = false;
                        _loc27_.nx = 0;
                        _loc27_.ny = 1;
                        _loc27_.var_444 = 0;
                        _loc27_.var_447 = 0;
                        _loc27_.var_470 = 0;
                        _loc36_ = var_217;
                        if(ZNPNode_ZPP_FluidArbiter.var_72 == null)
                        {
                           _loc38_ = new ZNPNode_ZPP_FluidArbiter();
                        }
                        else
                        {
                           _loc38_ = ZNPNode_ZPP_FluidArbiter.var_72;
                           ZNPNode_ZPP_FluidArbiter.var_72 = _loc38_.next;
                           _loc38_.next = null;
                        }
                        null;
                        _loc38_.var_74 = _loc27_;
                        _loc37_ = _loc38_;
                        _loc37_.next = _loc36_.var_73;
                        _loc36_.var_73 = _loc37_;
                        _loc36_.name_2 = true;
                        _loc36_.length = _loc36_.length + 1;
                        _loc27_;
                        _loc27_.name_23 = !_loc28_;
                     }
                     else
                     {
                        _loc27_.name_23 = _loc27_.var_360 < var_114 - 1 || _loc27_.var_784 == var_114 && param5;
                     }
                     _loc27_.var_360 = _loc27_.var_114;
                     if(_loc27_.name_23 || (_loc27_.var_181 & class_223.id_ImmState_ALWAYS) == 0)
                     {
                        _loc27_.var_181 = class_223.var_267;
                        _loc31_ = false;
                        if(_loc27_.ws1.id > _loc27_.ws2.id)
                        {
                           _loc39_ = _loc27_.ws2;
                        }
                        else
                        {
                           _loc39_ = _loc27_.ws1;
                        }
                        if(_loc27_.ws1.id > _loc27_.ws2.id)
                        {
                           _loc40_ = _loc27_.ws1;
                        }
                        else
                        {
                           _loc40_ = _loc27_.ws2;
                        }
                        _loc41_ = mrca1;
                        while(_loc41_.var_73 != null)
                        {
                           _loc42_ = _loc41_.var_73;
                           _loc41_.var_73 = _loc42_.next;
                           _loc43_ = _loc42_;
                           _loc43_.var_74 = null;
                           _loc43_.next = ZNPNode_ZPP_Interactor.var_72;
                           ZNPNode_ZPP_Interactor.var_72 = _loc43_;
                           if(_loc41_.var_73 == null)
                           {
                              _loc41_.var_76 = true;
                           }
                           _loc41_.name_2 = true;
                           _loc41_.length = _loc41_.length - 1;
                        }
                        _loc41_.var_76 = true;
                        _loc41_ = mrca2;
                        while(_loc41_.var_73 != null)
                        {
                           _loc42_ = _loc41_.var_73;
                           _loc41_.var_73 = _loc42_.next;
                           _loc43_ = _loc42_;
                           _loc43_.var_74 = null;
                           _loc43_.next = ZNPNode_ZPP_Interactor.var_72;
                           ZNPNode_ZPP_Interactor.var_72 = _loc43_;
                           if(_loc41_.var_73 == null)
                           {
                              _loc41_.var_76 = true;
                           }
                           _loc41_.name_2 = true;
                           _loc41_.length = _loc41_.length - 1;
                        }
                        _loc41_.var_76 = true;
                        if(_loc39_.var_134 != null)
                        {
                           _loc41_ = mrca1;
                           if(ZNPNode_ZPP_Interactor.var_72 == null)
                           {
                              _loc43_ = new ZNPNode_ZPP_Interactor();
                           }
                           else
                           {
                              _loc43_ = ZNPNode_ZPP_Interactor.var_72;
                              ZNPNode_ZPP_Interactor.var_72 = _loc43_.next;
                              _loc43_.next = null;
                           }
                           null;
                           _loc43_.var_74 = _loc39_;
                           _loc42_ = _loc43_;
                           _loc42_.next = _loc41_.var_73;
                           _loc41_.var_73 = _loc42_;
                           _loc41_.name_2 = true;
                           _loc41_.length = _loc41_.length + 1;
                           _loc39_;
                        }
                        if(_loc39_.body.var_134 != null)
                        {
                           _loc41_ = mrca1;
                           _loc15_ = _loc39_.body;
                           if(ZNPNode_ZPP_Interactor.var_72 == null)
                           {
                              _loc43_ = new ZNPNode_ZPP_Interactor();
                           }
                           else
                           {
                              _loc43_ = ZNPNode_ZPP_Interactor.var_72;
                              ZNPNode_ZPP_Interactor.var_72 = _loc43_.next;
                              _loc43_.next = null;
                           }
                           null;
                           _loc43_.var_74 = _loc15_;
                           _loc42_ = _loc43_;
                           _loc42_.next = _loc41_.var_73;
                           _loc41_.var_73 = _loc42_;
                           _loc41_.name_2 = true;
                           _loc41_.length = _loc41_.length + 1;
                           _loc15_;
                        }
                        if(_loc40_.var_134 != null)
                        {
                           _loc41_ = mrca2;
                           if(ZNPNode_ZPP_Interactor.var_72 == null)
                           {
                              _loc43_ = new ZNPNode_ZPP_Interactor();
                           }
                           else
                           {
                              _loc43_ = ZNPNode_ZPP_Interactor.var_72;
                              ZNPNode_ZPP_Interactor.var_72 = _loc43_.next;
                              _loc43_.next = null;
                           }
                           null;
                           _loc43_.var_74 = _loc40_;
                           _loc42_ = _loc43_;
                           _loc42_.next = _loc41_.var_73;
                           _loc41_.var_73 = _loc42_;
                           _loc41_.name_2 = true;
                           _loc41_.length = _loc41_.length + 1;
                           _loc40_;
                        }
                        if(_loc40_.body.var_134 != null)
                        {
                           _loc41_ = mrca2;
                           _loc15_ = _loc40_.body;
                           if(ZNPNode_ZPP_Interactor.var_72 == null)
                           {
                              _loc43_ = new ZNPNode_ZPP_Interactor();
                           }
                           else
                           {
                              _loc43_ = ZNPNode_ZPP_Interactor.var_72;
                              ZNPNode_ZPP_Interactor.var_72 = _loc43_.next;
                              _loc43_.next = null;
                           }
                           null;
                           _loc43_.var_74 = _loc15_;
                           _loc42_ = _loc43_;
                           _loc42_.next = _loc41_.var_73;
                           _loc41_.var_73 = _loc42_;
                           _loc41_.name_2 = true;
                           _loc41_.length = _loc41_.length + 1;
                           _loc15_;
                        }
                        _loc44_ = _loc39_.body.compound;
                        _loc45_ = _loc40_.body.compound;
                        while(_loc44_ != _loc45_)
                        {
                           if(_loc44_ == null)
                           {
                              _loc46_ = 0;
                           }
                           else
                           {
                              _loc46_ = int(_loc44_.depth);
                           }
                           if(_loc45_ == null)
                           {
                              _loc47_ = 0;
                           }
                           else
                           {
                              _loc47_ = _loc45_.depth;
                           }
                           if(_loc46_ < _loc47_)
                           {
                              if(_loc45_.var_134 != null)
                              {
                                 _loc41_ = mrca2;
                                 if(ZNPNode_ZPP_Interactor.var_72 == null)
                                 {
                                    _loc43_ = new ZNPNode_ZPP_Interactor();
                                 }
                                 else
                                 {
                                    _loc43_ = ZNPNode_ZPP_Interactor.var_72;
                                    ZNPNode_ZPP_Interactor.var_72 = _loc43_.next;
                                    _loc43_.next = null;
                                 }
                                 null;
                                 _loc43_.var_74 = _loc45_;
                                 _loc42_ = _loc43_;
                                 _loc42_.next = _loc41_.var_73;
                                 _loc41_.var_73 = _loc42_;
                                 _loc41_.name_2 = true;
                                 _loc41_.length = _loc41_.length + 1;
                                 _loc45_;
                              }
                              _loc45_ = _loc45_.compound;
                           }
                           else
                           {
                              if(_loc44_.var_134 != null)
                              {
                                 _loc41_ = mrca1;
                                 if(ZNPNode_ZPP_Interactor.var_72 == null)
                                 {
                                    _loc43_ = new ZNPNode_ZPP_Interactor();
                                 }
                                 else
                                 {
                                    _loc43_ = ZNPNode_ZPP_Interactor.var_72;
                                    ZNPNode_ZPP_Interactor.var_72 = _loc43_.next;
                                    _loc43_.next = null;
                                 }
                                 null;
                                 _loc43_.var_74 = _loc44_;
                                 _loc42_ = _loc43_;
                                 _loc42_.next = _loc41_.var_73;
                                 _loc41_.var_73 = _loc42_;
                                 _loc41_.name_2 = true;
                                 _loc41_.length = _loc41_.length + 1;
                                 _loc44_;
                              }
                              _loc44_ = _loc44_.compound;
                           }
                        }
                        _loc42_ = mrca1.var_73;
                        while(_loc42_ != null)
                        {
                           _loc15_ = _loc42_.var_74;
                           _loc43_ = mrca2.var_73;
                           while(_loc43_ != null)
                           {
                              _loc48_ = _loc43_.var_74;
                              _loc49_ = _loc15_.var_134;
                              _loc50_ = _loc48_.var_134;
                              _loc52_ = null;
                              if(_loc49_.var_141.length < _loc50_.var_141.length)
                              {
                                 _loc53_ = _loc49_.var_141;
                              }
                              else
                              {
                                 _loc53_ = _loc50_.var_141;
                              }
                              _loc54_ = _loc53_.var_73;
                              while(_loc54_ != null)
                              {
                                 _loc55_ = _loc54_.var_74;
                                 if(_loc55_.a == _loc49_ && _loc55_.b == _loc50_ || _loc55_.a == _loc50_ && _loc55_.b == _loc49_)
                                 {
                                    _loc52_ = _loc55_;
                                    break;
                                 }
                                 _loc54_ = _loc54_.next;
                              }
                              if(_loc52_ == null)
                              {
                                 if(ZPP_CbSetPair.var_72 == null)
                                 {
                                    _loc55_ = new ZPP_CbSetPair();
                                 }
                                 else
                                 {
                                    _loc55_ = ZPP_CbSetPair.var_72;
                                    ZPP_CbSetPair.var_72 = _loc55_.next;
                                    _loc55_.next = null;
                                 }
                                 _loc55_.var_145 = true;
                                 if(ZPP_CbSet.method_117(_loc49_,_loc50_))
                                 {
                                    _loc55_.a = _loc49_;
                                    _loc55_.b = _loc50_;
                                 }
                                 else
                                 {
                                    _loc55_.a = _loc50_;
                                    _loc55_.b = _loc49_;
                                 }
                                 _loc52_ = _loc55_;
                                 _loc49_.var_141.add(_loc52_);
                                 if(_loc50_ != _loc49_)
                                 {
                                    _loc50_.var_141.add(_loc52_);
                                 }
                              }
                              if(_loc52_.var_145)
                              {
                                 _loc52_.var_145 = false;
                                 _loc52_.method_138();
                              }
                              _loc51_ = _loc52_;
                              if(_loc51_.name_15.var_73 == null)
                              {
                                 _loc43_ = _loc43_.next;
                              }
                              else
                              {
                                 _loc56_ = null;
                                 _loc57_ = null;
                                 _loc58_ = var_225;
                                 while(_loc58_.var_73 != null)
                                 {
                                    _loc59_ = _loc58_.var_73;
                                    _loc58_.var_73 = _loc59_.next;
                                    _loc60_ = _loc59_;
                                    _loc60_.var_74 = null;
                                    _loc60_.next = ZNPNode_ZPP_InteractionListener.var_72;
                                    ZNPNode_ZPP_InteractionListener.var_72 = _loc60_;
                                    if(_loc58_.var_73 == null)
                                    {
                                       _loc58_.var_76 = true;
                                    }
                                    _loc58_.name_2 = true;
                                    _loc58_.length = _loc58_.length - 1;
                                 }
                                 _loc58_.var_76 = true;
                                 _loc59_ = null;
                                 _loc46_ = int(class_223.var_796);
                                 _loc52_ = null;
                                 if(_loc49_.var_141.length < _loc50_.var_141.length)
                                 {
                                    _loc53_ = _loc49_.var_141;
                                 }
                                 else
                                 {
                                    _loc53_ = _loc50_.var_141;
                                 }
                                 _loc54_ = _loc53_.var_73;
                                 while(_loc54_ != null)
                                 {
                                    _loc55_ = _loc54_.var_74;
                                    if(_loc55_.a == _loc49_ && _loc55_.b == _loc50_ || _loc55_.a == _loc50_ && _loc55_.b == _loc49_)
                                    {
                                       _loc52_ = _loc55_;
                                       break;
                                    }
                                    _loc54_ = _loc54_.next;
                                 }
                                 if(_loc52_ == null)
                                 {
                                    if(ZPP_CbSetPair.var_72 == null)
                                    {
                                       _loc55_ = new ZPP_CbSetPair();
                                    }
                                    else
                                    {
                                       _loc55_ = ZPP_CbSetPair.var_72;
                                       ZPP_CbSetPair.var_72 = _loc55_.next;
                                       _loc55_.next = null;
                                    }
                                    _loc55_.var_145 = true;
                                    if(ZPP_CbSet.method_117(_loc49_,_loc50_))
                                    {
                                       _loc55_.a = _loc49_;
                                       _loc55_.b = _loc50_;
                                    }
                                    else
                                    {
                                       _loc55_.a = _loc50_;
                                       _loc55_.b = _loc49_;
                                    }
                                    _loc52_ = _loc55_;
                                    _loc49_.var_141.add(_loc52_);
                                    if(_loc50_ != _loc49_)
                                    {
                                       _loc50_.var_141.add(_loc52_);
                                    }
                                 }
                                 if(_loc52_.var_145)
                                 {
                                    _loc52_.var_145 = false;
                                    _loc52_.method_138();
                                 }
                                 _loc51_ = _loc52_;
                                 _loc60_ = _loc51_.name_15.var_73;
                                 while(_loc60_ != null)
                                 {
                                    _loc61_ = _loc60_.var_74;
                                    if(_loc61_.event == _loc46_)
                                    {
                                       if((_loc61_.var_249 & _loc35_) != 0)
                                       {
                                          _loc58_ = _loc6_.var_225;
                                          if(ZNPNode_ZPP_InteractionListener.var_72 == null)
                                          {
                                             _loc63_ = new ZNPNode_ZPP_InteractionListener();
                                          }
                                          else
                                          {
                                             _loc63_ = ZNPNode_ZPP_InteractionListener.var_72;
                                             ZNPNode_ZPP_InteractionListener.var_72 = _loc63_.next;
                                             _loc63_.next = null;
                                          }
                                          null;
                                          _loc63_.var_74 = _loc61_;
                                          _loc62_ = _loc63_;
                                          if(_loc59_ == null)
                                          {
                                             _loc62_.next = _loc58_.var_73;
                                             _loc58_.var_73 = _loc62_;
                                          }
                                          else
                                          {
                                             _loc62_.next = _loc59_.next;
                                             _loc59_.next = _loc62_;
                                          }
                                          _loc64_ = true;
                                          _loc58_.name_2 = _loc64_;
                                          _loc58_.var_76 = _loc64_;
                                          _loc58_.length = _loc58_.length + 1;
                                          _loc59_ = _loc62_;
                                          _loc31_ = _loc31_ || !_loc61_.name_67;
                                       }
                                    }
                                    _loc60_ = _loc60_.next;
                                 }
                                 if(var_225.var_73 == null)
                                 {
                                    _loc43_ = _loc43_.next;
                                 }
                                 else
                                 {
                                    _loc56_ = ZPP_Interactor.method_65(_loc15_,_loc48_);
                                    if(_loc56_ == null)
                                    {
                                       _loc57_ = ZPP_CallbackSet.method_65(_loc15_,_loc48_);
                                       add_callbackset(_loc57_);
                                    }
                                    if(_loc56_ == null || (_loc56_.var_763 != var_114 || param5) && (_loc56_.var_747 & class_223.id_ImmState_ALWAYS) == 0)
                                    {
                                       if(_loc57_ != null)
                                       {
                                          _loc56_ = _loc57_;
                                       }
                                       if(_loc56_ != null)
                                       {
                                          _loc60_ = var_225.var_73;
                                          while(_loc60_ != null)
                                          {
                                             _loc61_ = _loc60_.var_74;
                                             if(_loc61_.var_249 == class_223.var_319)
                                             {
                                                _loc56_.var_782 = var_114;
                                                _loc56_.var_816 = var_114;
                                                _loc56_.var_763 = var_114;
                                             }
                                             else
                                             {
                                                _loc56_.var_763 = var_114;
                                             }
                                             _loc60_ = _loc60_.next;
                                          }
                                       }
                                       _loc64_ = _loc27_.active;
                                       _loc27_.active = true;
                                       _loc65_ = false;
                                       var_206.zpp_inner.var_680 = _loc27_;
                                       var_206.zpp_inner.name_40 = _loc56_;
                                       _loc60_ = var_225.var_73;
                                       while(_loc60_ != null)
                                       {
                                          _loc61_ = _loc60_.var_74;
                                          var_206.zpp_inner.listener = _loc61_;
                                          _loc66_ = var_206.zpp_inner;
                                          _loc67_ = _loc56_.int1;
                                          _loc68_ = _loc56_.int2;
                                          _loc69_ = _loc61_.options1;
                                          _loc70_ = _loc67_.name_10;
                                          _loc69_;
                                          if(!!ZPP_OptionType.method_113(_loc70_,_loc69_.name_18) && !ZPP_OptionType.method_113(_loc70_,_loc69_.name_22) && (!!ZPP_OptionType.method_113(_loc70_,_loc69_.name_18) && !ZPP_OptionType.method_113(_loc70_,_loc69_.name_22)))
                                          {
                                             _loc66_.int1 = _loc67_;
                                             _loc66_.int2 = _loc68_;
                                          }
                                          else
                                          {
                                             _loc66_.int1 = _loc68_;
                                             _loc66_.int2 = _loc67_;
                                          }
                                          var_206.zpp_inner.var_807 = _loc15_ != var_206.zpp_inner.int1;
                                          _loc71_ = _loc61_.handlerp(var_206);
                                          if(_loc71_ != null)
                                          {
                                             §§push(_loc71_);
                                             if(class_223.var_320 == null)
                                             {
                                                class_223.var_87 = true;
                                                class_223.var_320 = new class_296();
                                                class_223.var_87 = false;
                                             }
                                             if(§§pop() == class_223.var_320)
                                             {
                                                _loc27_.var_181 = class_223.var_267 | class_223.id_ImmState_ALWAYS;
                                             }
                                             else
                                             {
                                                §§push(_loc71_);
                                                if(class_223.var_321 == null)
                                                {
                                                   class_223.var_87 = true;
                                                   class_223.var_321 = new class_296();
                                                   class_223.var_87 = false;
                                                }
                                                if(§§pop() == class_223.var_321)
                                                {
                                                   _loc27_.var_181 = class_223.var_267;
                                                }
                                                else
                                                {
                                                   §§push(_loc71_);
                                                   if(class_223.var_325 == null)
                                                   {
                                                      class_223.var_87 = true;
                                                      class_223.var_325 = new class_296();
                                                      class_223.var_87 = false;
                                                   }
                                                   if(§§pop() == class_223.var_325)
                                                   {
                                                      _loc27_.var_181 = class_223.var_613 | class_223.id_ImmState_ALWAYS;
                                                   }
                                                   else
                                                   {
                                                      _loc27_.var_181 = class_223.var_613;
                                                   }
                                                }
                                             }
                                          }
                                          _loc60_ = _loc60_.next;
                                       }
                                       _loc27_.active = _loc64_;
                                       if(_loc56_ != null)
                                       {
                                          _loc60_ = var_225.var_73;
                                          while(_loc60_ != null)
                                          {
                                             _loc61_ = _loc60_.var_74;
                                             if(_loc61_.var_249 == class_223.var_319)
                                             {
                                                _loc56_.var_701 = _loc27_.var_181;
                                                _loc56_.var_710 = _loc27_.var_181;
                                                _loc56_.var_747 = _loc27_.var_181;
                                             }
                                             else
                                             {
                                                _loc56_.var_747 = _loc27_.var_181;
                                             }
                                             _loc60_ = _loc60_.next;
                                          }
                                       }
                                    }
                                    else if(_loc56_ == null)
                                    {
                                       if((_loc27_.var_181 & class_223.id_ImmState_ALWAYS) == 0)
                                       {
                                          _loc27_.var_181 = class_223.var_267;
                                       }
                                    }
                                    else
                                    {
                                       _loc27_.var_181 = _loc56_.var_747;
                                    }
                                    _loc43_ = _loc43_.next;
                                 }
                              }
                           }
                           _loc42_ = _loc42_.next;
                        }
                        if(!!_loc31_ && (_loc27_.var_181 & class_223.id_ImmState_ALWAYS) == 0)
                        {
                           if(_loc27_.b1.type == class_223.var_188)
                           {
                              _loc24_ = _loc27_.b1;
                              if(!_loc24_.name_29)
                              {
                                 _loc24_.var_112.var_211 = var_114 + (!!var_156?0:1);
                                 if(_loc24_.type == class_223.var_216)
                                 {
                                    _loc24_.var_261 = true;
                                 }
                                 if(_loc24_.var_112.var_129)
                                 {
                                    method_115(_loc24_,false);
                                 }
                              }
                           }
                           if(_loc27_.b1.type == class_223.var_188)
                           {
                              _loc24_ = _loc27_.b2;
                              if(!_loc24_.name_29)
                              {
                                 _loc24_.var_112.var_211 = var_114 + (!!var_156?0:1);
                                 if(_loc24_.type == class_223.var_216)
                                 {
                                    _loc24_.var_261 = true;
                                 }
                                 if(_loc24_.var_112.var_129)
                                 {
                                    method_115(_loc24_,false);
                                 }
                              }
                           }
                        }
                     }
                     if((_loc27_.var_181 & class_223.var_267) != 0)
                     {
                        if(_loc27_.b1.type == class_223.var_188 && _loc27_.b1.var_112.var_129)
                        {
                           _loc24_ = _loc27_.b1;
                           if(!_loc24_.name_29)
                           {
                              _loc24_.var_112.var_211 = var_114 + (!!var_156?0:1);
                              if(_loc24_.type == class_223.var_216)
                              {
                                 _loc24_.var_261 = true;
                              }
                              if(_loc24_.var_112.var_129)
                              {
                                 method_115(_loc24_,false);
                              }
                           }
                        }
                        if(_loc27_.b2.type == class_223.var_188 && _loc27_.b2.var_112.var_129)
                        {
                           _loc24_ = _loc27_.b2;
                           if(!_loc24_.name_29)
                           {
                              _loc24_.var_112.var_211 = var_114 + (!!var_156?0:1);
                              if(_loc24_.type == class_223.var_216)
                              {
                                 _loc24_.var_261 = true;
                              }
                              if(_loc24_.var_112.var_129)
                              {
                                 method_115(_loc24_,false);
                              }
                           }
                        }
                     }
                     if(_loc27_.var_129)
                     {
                        _loc27_.var_129 = false;
                        _loc36_ = var_217;
                        if(ZNPNode_ZPP_FluidArbiter.var_72 == null)
                        {
                           _loc38_ = new ZNPNode_ZPP_FluidArbiter();
                        }
                        else
                        {
                           _loc38_ = ZNPNode_ZPP_FluidArbiter.var_72;
                           ZNPNode_ZPP_FluidArbiter.var_72 = _loc38_.next;
                           _loc38_.next = null;
                        }
                        null;
                        _loc38_.var_74 = _loc27_;
                        _loc37_ = _loc38_;
                        _loc37_.next = _loc36_.var_73;
                        _loc36_.var_73 = _loc37_;
                        _loc36_.name_2 = true;
                        _loc36_.length = _loc36_.length + 1;
                        _loc27_;
                     }
                     _loc7_ = _loc27_;
                  }
                  else if(_loc17_)
                  {
                     _loc72_ = _loc27_;
                     _loc72_.next = ZPP_FluidArbiter.var_72;
                     ZPP_FluidArbiter.var_72 = _loc72_;
                     _loc7_ = null;
                  }
                  else
                  {
                     _loc7_ = _loc27_;
                  }
               }
               else
               {
                  _loc7_ = _loc27_;
               }
            }
            else if(_loc10_ == 1)
            {
               if(param3)
               {
                  _loc73_ = var_228;
               }
               else
               {
                  _loc73_ = var_175;
               }
               if(param4 == null)
               {
                  _loc23_ = null;
                  if(_loc8_.name_12.length < _loc9_.name_12.length)
                  {
                     _loc24_ = _loc8_;
                  }
                  else
                  {
                     _loc24_ = _loc9_;
                  }
                  _loc25_ = _loc24_.name_12.var_73;
                  while(_loc25_ != null)
                  {
                     _loc26_ = _loc25_.var_74;
                     if(_loc26_.id == _loc20_.id && _loc26_.var_179 == _loc21_.id)
                     {
                        _loc23_ = _loc26_;
                        break;
                     }
                     _loc25_ = _loc25_.next;
                  }
                  _loc22_ = _loc23_;
               }
               else
               {
                  _loc22_ = param4;
               }
               _loc17_ = _loc22_ == null;
               _loc28_ = false;
               if(_loc17_)
               {
                  if(ZPP_ColArbiter.var_72 == null)
                  {
                     _loc74_ = new ZPP_ColArbiter();
                  }
                  else
                  {
                     _loc74_ = ZPP_ColArbiter.var_72;
                     ZPP_ColArbiter.var_72 = _loc74_.next;
                     _loc74_.next = null;
                  }
                  null;
                  _loc74_.var_622 = param3;
               }
               else if(_loc22_.var_128 == null)
               {
                  _loc22_.var_265 = true;
                  _loc29_ = _loc22_.b1.name_12;
                  _loc25_ = null;
                  _loc30_ = _loc29_.var_73;
                  _loc31_ = false;
                  while(_loc30_ != null)
                  {
                     if(_loc30_.var_74 == _loc22_)
                     {
                        if(_loc25_ == null)
                        {
                           _loc32_ = _loc29_.var_73;
                           _loc33_ = _loc32_.next;
                           _loc29_.var_73 = _loc33_;
                           if(_loc29_.var_73 == null)
                           {
                              _loc29_.var_76 = true;
                           }
                        }
                        else
                        {
                           _loc32_ = _loc25_.next;
                           _loc33_ = _loc32_.next;
                           _loc25_.next = _loc33_;
                           if(_loc33_ == null)
                           {
                              _loc29_.var_76 = true;
                           }
                        }
                        _loc34_ = _loc32_;
                        _loc34_.var_74 = null;
                        _loc34_.next = ZNPNode_ZPP_Arbiter.var_72;
                        ZNPNode_ZPP_Arbiter.var_72 = _loc34_;
                        _loc29_.name_2 = true;
                        _loc29_.length = _loc29_.length - 1;
                        _loc29_.var_76 = true;
                        _loc33_;
                        _loc31_ = true;
                        break;
                     }
                     _loc25_ = _loc30_;
                     _loc30_ = _loc30_.next;
                  }
                  _loc31_;
                  _loc29_ = _loc22_.b2.name_12;
                  _loc25_ = null;
                  _loc30_ = _loc29_.var_73;
                  _loc31_ = false;
                  while(_loc30_ != null)
                  {
                     if(_loc30_.var_74 == _loc22_)
                     {
                        if(_loc25_ == null)
                        {
                           _loc32_ = _loc29_.var_73;
                           _loc33_ = _loc32_.next;
                           _loc29_.var_73 = _loc33_;
                           if(_loc29_.var_73 == null)
                           {
                              _loc29_.var_76 = true;
                           }
                        }
                        else
                        {
                           _loc32_ = _loc25_.next;
                           _loc33_ = _loc32_.next;
                           _loc25_.next = _loc33_;
                           if(_loc33_ == null)
                           {
                              _loc29_.var_76 = true;
                           }
                        }
                        _loc34_ = _loc32_;
                        _loc34_.var_74 = null;
                        _loc34_.next = ZNPNode_ZPP_Arbiter.var_72;
                        ZNPNode_ZPP_Arbiter.var_72 = _loc34_;
                        _loc29_.name_2 = true;
                        _loc29_.length = _loc29_.length - 1;
                        _loc29_.var_76 = true;
                        _loc33_;
                        _loc31_ = true;
                        break;
                     }
                     _loc25_ = _loc30_;
                     _loc30_ = _loc30_.next;
                  }
                  _loc31_;
                  if(_loc22_.var_209 != null)
                  {
                     _loc22_.var_209.var_246 = null;
                     _loc22_.var_209 = null;
                  }
                  _loc22_.active = false;
                  var_217.name_2 = true;
                  if(ZPP_ColArbiter.var_72 == null)
                  {
                     _loc74_ = new ZPP_ColArbiter();
                  }
                  else
                  {
                     _loc74_ = ZPP_ColArbiter.var_72;
                     ZPP_ColArbiter.var_72 = _loc74_.next;
                     _loc74_.next = null;
                  }
                  null;
                  _loc74_.var_361 = true;
                  _loc74_.var_622 = param3;
                  _loc17_ = true;
                  _loc28_ = true;
               }
               else
               {
                  _loc74_ = _loc22_.var_128;
                  _loc11_ = _loc20_ != _loc74_.s1;
                  if(_loc74_.var_622 != param3)
                  {
                     _loc74_.var_622 = param3;
                     if(!_loc74_.var_129)
                     {
                        (!!param3?var_175:var_228).remove(_loc74_);
                        _loc73_.add(_loc74_);
                     }
                  }
               }
               _loc35_ = class_223.var_389;
               if(_loc17_ || _loc74_.var_114 != var_114 || param5)
               {
                  _loc74_.var_114 = var_114;
                  if(class_239.method_589(_loc20_,_loc21_,_loc74_,_loc11_))
                  {
                     if(_loc17_)
                     {
                        _loc74_.b1 = param1.body;
                        _loc74_.ws1 = param1;
                        _loc74_.b2 = param2.body;
                        _loc74_.ws2 = param2;
                        _loc74_.id = _loc20_.id;
                        _loc74_.var_179 = _loc21_.id;
                        _loc29_ = _loc74_.b1.name_12;
                        if(ZNPNode_ZPP_Arbiter.var_72 == null)
                        {
                           _loc30_ = new ZNPNode_ZPP_Arbiter();
                        }
                        else
                        {
                           _loc30_ = ZNPNode_ZPP_Arbiter.var_72;
                           ZNPNode_ZPP_Arbiter.var_72 = _loc30_.next;
                           _loc30_.next = null;
                        }
                        null;
                        _loc30_.var_74 = _loc74_;
                        _loc25_ = _loc30_;
                        _loc25_.next = _loc29_.var_73;
                        _loc29_.var_73 = _loc25_;
                        _loc29_.name_2 = true;
                        _loc29_.length = _loc29_.length + 1;
                        _loc74_;
                        _loc29_ = _loc74_.b2.name_12;
                        if(ZNPNode_ZPP_Arbiter.var_72 == null)
                        {
                           _loc30_ = new ZNPNode_ZPP_Arbiter();
                        }
                        else
                        {
                           _loc30_ = ZNPNode_ZPP_Arbiter.var_72;
                           ZNPNode_ZPP_Arbiter.var_72 = _loc30_.next;
                           _loc30_.next = null;
                        }
                        null;
                        _loc30_.var_74 = _loc74_;
                        _loc25_ = _loc30_;
                        _loc25_.next = _loc29_.var_73;
                        _loc29_.var_73 = _loc25_;
                        _loc29_.name_2 = true;
                        _loc29_.length = _loc29_.length + 1;
                        _loc74_;
                        _loc74_.active = true;
                        _loc74_.var_304 = 0;
                        _loc74_.var_265 = false;
                        _loc74_.var_129 = false;
                        _loc74_.name_23 = false;
                        _loc74_.var_639 = false;
                        _loc74_.s1 = param1;
                        _loc74_.s2 = param2;
                        if(!_loc74_.var_379)
                        {
                           if(_loc74_.s1.material.name_16 <= -1.79e308 || _loc74_.s2.material.name_16 <= -1.79e308)
                           {
                              _loc74_.var_159 = 0;
                           }
                           else if(_loc74_.s1.material.name_16 >= 1.79e308 || _loc74_.s2.material.name_16 >= 1.79e308)
                           {
                              _loc74_.var_159 = 1;
                           }
                           else
                           {
                              _loc74_.var_159 = (_loc74_.s1.material.name_16 + _loc74_.s2.material.name_16) / 2;
                           }
                           if(_loc74_.var_159 < 0)
                           {
                              _loc74_.var_159 = 0;
                           }
                           if(_loc74_.var_159 > 1)
                           {
                              _loc74_.var_159 = 1;
                           }
                        }
                        if(!_loc74_.var_376)
                        {
                           _loc75_ = _loc74_.s1.material.name_28 * _loc74_.s2.material.name_28;
                           if(_loc75_ == 0)
                           {
                              _loc74_.dyn_fric = 0;
                           }
                           else
                           {
                              sf32(_loc75_,0);
                              _loc46_ = 1597463007 - (li32(0) >> 1);
                              si32(_loc46_,0);
                              _loc76_ = lf32(0);
                              _loc74_.dyn_fric = 1 / (_loc76_ * (1.5 - 0.5 * _loc75_ * _loc76_ * _loc76_));
                           }
                        }
                        if(!_loc74_.var_382)
                        {
                           _loc75_ = _loc74_.s1.material.name_33 * _loc74_.s2.material.name_33;
                           if(_loc75_ == 0)
                           {
                              _loc74_.stat_fric = 0;
                           }
                           else
                           {
                              sf32(_loc75_,0);
                              _loc46_ = 1597463007 - (li32(0) >> 1);
                              si32(_loc46_,0);
                              _loc76_ = lf32(0);
                              _loc74_.stat_fric = 1 / (_loc76_ * (1.5 - 0.5 * _loc75_ * _loc76_ * _loc76_));
                           }
                        }
                        if(!_loc74_.var_381)
                        {
                           _loc75_ = _loc74_.s1.material.name_31 * _loc74_.s2.material.name_31;
                           if(_loc75_ == 0)
                           {
                              _loc74_.rfric = 0;
                           }
                           else
                           {
                              sf32(_loc75_,0);
                              _loc46_ = 1597463007 - (li32(0) >> 1);
                              si32(_loc46_,0);
                              _loc76_ = lf32(0);
                              _loc74_.rfric = 1 / (_loc76_ * (1.5 - 0.5 * _loc75_ * _loc76_ * _loc76_));
                           }
                        }
                        if(ZNPNode_ZPP_ColArbiter.var_72 == null)
                        {
                           _loc78_ = new ZNPNode_ZPP_ColArbiter();
                        }
                        else
                        {
                           _loc78_ = ZNPNode_ZPP_ColArbiter.var_72;
                           ZNPNode_ZPP_ColArbiter.var_72 = _loc78_.next;
                           _loc78_.next = null;
                        }
                        null;
                        _loc78_.var_74 = _loc74_;
                        _loc77_ = _loc78_;
                        _loc77_.next = _loc73_.var_73;
                        _loc73_.var_73 = _loc77_;
                        _loc73_.name_2 = true;
                        _loc73_.length = _loc73_.length + 1;
                        _loc74_;
                        _loc74_.name_23 = !_loc28_;
                     }
                     else
                     {
                        _loc74_.name_23 = _loc74_.var_360 < var_114 - 1 || _loc74_.var_784 == var_114 && param5;
                     }
                     _loc74_.var_360 = _loc74_.var_114;
                     if(_loc74_.name_23 || (_loc74_.var_181 & class_223.id_ImmState_ALWAYS) == 0)
                     {
                        _loc74_.var_181 = class_223.var_267;
                        _loc31_ = false;
                        if(_loc74_.ws1.id > _loc74_.ws2.id)
                        {
                           _loc39_ = _loc74_.ws2;
                        }
                        else
                        {
                           _loc39_ = _loc74_.ws1;
                        }
                        if(_loc74_.ws1.id > _loc74_.ws2.id)
                        {
                           _loc40_ = _loc74_.ws1;
                        }
                        else
                        {
                           _loc40_ = _loc74_.ws2;
                        }
                        _loc41_ = mrca1;
                        while(_loc41_.var_73 != null)
                        {
                           _loc42_ = _loc41_.var_73;
                           _loc41_.var_73 = _loc42_.next;
                           _loc43_ = _loc42_;
                           _loc43_.var_74 = null;
                           _loc43_.next = ZNPNode_ZPP_Interactor.var_72;
                           ZNPNode_ZPP_Interactor.var_72 = _loc43_;
                           if(_loc41_.var_73 == null)
                           {
                              _loc41_.var_76 = true;
                           }
                           _loc41_.name_2 = true;
                           _loc41_.length = _loc41_.length - 1;
                        }
                        _loc41_.var_76 = true;
                        _loc41_ = mrca2;
                        while(_loc41_.var_73 != null)
                        {
                           _loc42_ = _loc41_.var_73;
                           _loc41_.var_73 = _loc42_.next;
                           _loc43_ = _loc42_;
                           _loc43_.var_74 = null;
                           _loc43_.next = ZNPNode_ZPP_Interactor.var_72;
                           ZNPNode_ZPP_Interactor.var_72 = _loc43_;
                           if(_loc41_.var_73 == null)
                           {
                              _loc41_.var_76 = true;
                           }
                           _loc41_.name_2 = true;
                           _loc41_.length = _loc41_.length - 1;
                        }
                        _loc41_.var_76 = true;
                        if(_loc39_.var_134 != null)
                        {
                           _loc41_ = mrca1;
                           if(ZNPNode_ZPP_Interactor.var_72 == null)
                           {
                              _loc43_ = new ZNPNode_ZPP_Interactor();
                           }
                           else
                           {
                              _loc43_ = ZNPNode_ZPP_Interactor.var_72;
                              ZNPNode_ZPP_Interactor.var_72 = _loc43_.next;
                              _loc43_.next = null;
                           }
                           null;
                           _loc43_.var_74 = _loc39_;
                           _loc42_ = _loc43_;
                           _loc42_.next = _loc41_.var_73;
                           _loc41_.var_73 = _loc42_;
                           _loc41_.name_2 = true;
                           _loc41_.length = _loc41_.length + 1;
                           _loc39_;
                        }
                        if(_loc39_.body.var_134 != null)
                        {
                           _loc41_ = mrca1;
                           _loc15_ = _loc39_.body;
                           if(ZNPNode_ZPP_Interactor.var_72 == null)
                           {
                              _loc43_ = new ZNPNode_ZPP_Interactor();
                           }
                           else
                           {
                              _loc43_ = ZNPNode_ZPP_Interactor.var_72;
                              ZNPNode_ZPP_Interactor.var_72 = _loc43_.next;
                              _loc43_.next = null;
                           }
                           null;
                           _loc43_.var_74 = _loc15_;
                           _loc42_ = _loc43_;
                           _loc42_.next = _loc41_.var_73;
                           _loc41_.var_73 = _loc42_;
                           _loc41_.name_2 = true;
                           _loc41_.length = _loc41_.length + 1;
                           _loc15_;
                        }
                        if(_loc40_.var_134 != null)
                        {
                           _loc41_ = mrca2;
                           if(ZNPNode_ZPP_Interactor.var_72 == null)
                           {
                              _loc43_ = new ZNPNode_ZPP_Interactor();
                           }
                           else
                           {
                              _loc43_ = ZNPNode_ZPP_Interactor.var_72;
                              ZNPNode_ZPP_Interactor.var_72 = _loc43_.next;
                              _loc43_.next = null;
                           }
                           null;
                           _loc43_.var_74 = _loc40_;
                           _loc42_ = _loc43_;
                           _loc42_.next = _loc41_.var_73;
                           _loc41_.var_73 = _loc42_;
                           _loc41_.name_2 = true;
                           _loc41_.length = _loc41_.length + 1;
                           _loc40_;
                        }
                        if(_loc40_.body.var_134 != null)
                        {
                           _loc41_ = mrca2;
                           _loc15_ = _loc40_.body;
                           if(ZNPNode_ZPP_Interactor.var_72 == null)
                           {
                              _loc43_ = new ZNPNode_ZPP_Interactor();
                           }
                           else
                           {
                              _loc43_ = ZNPNode_ZPP_Interactor.var_72;
                              ZNPNode_ZPP_Interactor.var_72 = _loc43_.next;
                              _loc43_.next = null;
                           }
                           null;
                           _loc43_.var_74 = _loc15_;
                           _loc42_ = _loc43_;
                           _loc42_.next = _loc41_.var_73;
                           _loc41_.var_73 = _loc42_;
                           _loc41_.name_2 = true;
                           _loc41_.length = _loc41_.length + 1;
                           _loc15_;
                        }
                        _loc44_ = _loc39_.body.compound;
                        _loc45_ = _loc40_.body.compound;
                        while(_loc44_ != _loc45_)
                        {
                           if(_loc44_ == null)
                           {
                              _loc46_ = 0;
                           }
                           else
                           {
                              _loc46_ = int(_loc44_.depth);
                           }
                           if(_loc45_ == null)
                           {
                              _loc47_ = 0;
                           }
                           else
                           {
                              _loc47_ = _loc45_.depth;
                           }
                           if(_loc46_ < _loc47_)
                           {
                              if(_loc45_.var_134 != null)
                              {
                                 _loc41_ = mrca2;
                                 if(ZNPNode_ZPP_Interactor.var_72 == null)
                                 {
                                    _loc43_ = new ZNPNode_ZPP_Interactor();
                                 }
                                 else
                                 {
                                    _loc43_ = ZNPNode_ZPP_Interactor.var_72;
                                    ZNPNode_ZPP_Interactor.var_72 = _loc43_.next;
                                    _loc43_.next = null;
                                 }
                                 null;
                                 _loc43_.var_74 = _loc45_;
                                 _loc42_ = _loc43_;
                                 _loc42_.next = _loc41_.var_73;
                                 _loc41_.var_73 = _loc42_;
                                 _loc41_.name_2 = true;
                                 _loc41_.length = _loc41_.length + 1;
                                 _loc45_;
                              }
                              _loc45_ = _loc45_.compound;
                           }
                           else
                           {
                              if(_loc44_.var_134 != null)
                              {
                                 _loc41_ = mrca1;
                                 if(ZNPNode_ZPP_Interactor.var_72 == null)
                                 {
                                    _loc43_ = new ZNPNode_ZPP_Interactor();
                                 }
                                 else
                                 {
                                    _loc43_ = ZNPNode_ZPP_Interactor.var_72;
                                    ZNPNode_ZPP_Interactor.var_72 = _loc43_.next;
                                    _loc43_.next = null;
                                 }
                                 null;
                                 _loc43_.var_74 = _loc44_;
                                 _loc42_ = _loc43_;
                                 _loc42_.next = _loc41_.var_73;
                                 _loc41_.var_73 = _loc42_;
                                 _loc41_.name_2 = true;
                                 _loc41_.length = _loc41_.length + 1;
                                 _loc44_;
                              }
                              _loc44_ = _loc44_.compound;
                           }
                        }
                        _loc42_ = mrca1.var_73;
                        while(_loc42_ != null)
                        {
                           _loc15_ = _loc42_.var_74;
                           _loc43_ = mrca2.var_73;
                           while(_loc43_ != null)
                           {
                              _loc48_ = _loc43_.var_74;
                              _loc49_ = _loc15_.var_134;
                              _loc50_ = _loc48_.var_134;
                              _loc52_ = null;
                              if(_loc49_.var_141.length < _loc50_.var_141.length)
                              {
                                 _loc53_ = _loc49_.var_141;
                              }
                              else
                              {
                                 _loc53_ = _loc50_.var_141;
                              }
                              _loc54_ = _loc53_.var_73;
                              while(_loc54_ != null)
                              {
                                 _loc55_ = _loc54_.var_74;
                                 if(_loc55_.a == _loc49_ && _loc55_.b == _loc50_ || _loc55_.a == _loc50_ && _loc55_.b == _loc49_)
                                 {
                                    _loc52_ = _loc55_;
                                    break;
                                 }
                                 _loc54_ = _loc54_.next;
                              }
                              if(_loc52_ == null)
                              {
                                 if(ZPP_CbSetPair.var_72 == null)
                                 {
                                    _loc55_ = new ZPP_CbSetPair();
                                 }
                                 else
                                 {
                                    _loc55_ = ZPP_CbSetPair.var_72;
                                    ZPP_CbSetPair.var_72 = _loc55_.next;
                                    _loc55_.next = null;
                                 }
                                 _loc55_.var_145 = true;
                                 if(ZPP_CbSet.method_117(_loc49_,_loc50_))
                                 {
                                    _loc55_.a = _loc49_;
                                    _loc55_.b = _loc50_;
                                 }
                                 else
                                 {
                                    _loc55_.a = _loc50_;
                                    _loc55_.b = _loc49_;
                                 }
                                 _loc52_ = _loc55_;
                                 _loc49_.var_141.add(_loc52_);
                                 if(_loc50_ != _loc49_)
                                 {
                                    _loc50_.var_141.add(_loc52_);
                                 }
                              }
                              if(_loc52_.var_145)
                              {
                                 _loc52_.var_145 = false;
                                 _loc52_.method_138();
                              }
                              _loc51_ = _loc52_;
                              if(_loc51_.name_15.var_73 == null)
                              {
                                 _loc43_ = _loc43_.next;
                              }
                              else
                              {
                                 _loc56_ = null;
                                 _loc57_ = null;
                                 _loc58_ = var_225;
                                 while(_loc58_.var_73 != null)
                                 {
                                    _loc59_ = _loc58_.var_73;
                                    _loc58_.var_73 = _loc59_.next;
                                    _loc60_ = _loc59_;
                                    _loc60_.var_74 = null;
                                    _loc60_.next = ZNPNode_ZPP_InteractionListener.var_72;
                                    ZNPNode_ZPP_InteractionListener.var_72 = _loc60_;
                                    if(_loc58_.var_73 == null)
                                    {
                                       _loc58_.var_76 = true;
                                    }
                                    _loc58_.name_2 = true;
                                    _loc58_.length = _loc58_.length - 1;
                                 }
                                 _loc58_.var_76 = true;
                                 _loc59_ = null;
                                 _loc46_ = int(class_223.var_796);
                                 _loc52_ = null;
                                 if(_loc49_.var_141.length < _loc50_.var_141.length)
                                 {
                                    _loc53_ = _loc49_.var_141;
                                 }
                                 else
                                 {
                                    _loc53_ = _loc50_.var_141;
                                 }
                                 _loc54_ = _loc53_.var_73;
                                 while(_loc54_ != null)
                                 {
                                    _loc55_ = _loc54_.var_74;
                                    if(_loc55_.a == _loc49_ && _loc55_.b == _loc50_ || _loc55_.a == _loc50_ && _loc55_.b == _loc49_)
                                    {
                                       _loc52_ = _loc55_;
                                       break;
                                    }
                                    _loc54_ = _loc54_.next;
                                 }
                                 if(_loc52_ == null)
                                 {
                                    if(ZPP_CbSetPair.var_72 == null)
                                    {
                                       _loc55_ = new ZPP_CbSetPair();
                                    }
                                    else
                                    {
                                       _loc55_ = ZPP_CbSetPair.var_72;
                                       ZPP_CbSetPair.var_72 = _loc55_.next;
                                       _loc55_.next = null;
                                    }
                                    _loc55_.var_145 = true;
                                    if(ZPP_CbSet.method_117(_loc49_,_loc50_))
                                    {
                                       _loc55_.a = _loc49_;
                                       _loc55_.b = _loc50_;
                                    }
                                    else
                                    {
                                       _loc55_.a = _loc50_;
                                       _loc55_.b = _loc49_;
                                    }
                                    _loc52_ = _loc55_;
                                    _loc49_.var_141.add(_loc52_);
                                    if(_loc50_ != _loc49_)
                                    {
                                       _loc50_.var_141.add(_loc52_);
                                    }
                                 }
                                 if(_loc52_.var_145)
                                 {
                                    _loc52_.var_145 = false;
                                    _loc52_.method_138();
                                 }
                                 _loc51_ = _loc52_;
                                 _loc60_ = _loc51_.name_15.var_73;
                                 while(_loc60_ != null)
                                 {
                                    _loc61_ = _loc60_.var_74;
                                    if(_loc61_.event == _loc46_)
                                    {
                                       if((_loc61_.var_249 & _loc35_) != 0)
                                       {
                                          _loc58_ = _loc6_.var_225;
                                          if(ZNPNode_ZPP_InteractionListener.var_72 == null)
                                          {
                                             _loc63_ = new ZNPNode_ZPP_InteractionListener();
                                          }
                                          else
                                          {
                                             _loc63_ = ZNPNode_ZPP_InteractionListener.var_72;
                                             ZNPNode_ZPP_InteractionListener.var_72 = _loc63_.next;
                                             _loc63_.next = null;
                                          }
                                          null;
                                          _loc63_.var_74 = _loc61_;
                                          _loc62_ = _loc63_;
                                          if(_loc59_ == null)
                                          {
                                             _loc62_.next = _loc58_.var_73;
                                             _loc58_.var_73 = _loc62_;
                                          }
                                          else
                                          {
                                             _loc62_.next = _loc59_.next;
                                             _loc59_.next = _loc62_;
                                          }
                                          _loc64_ = true;
                                          _loc58_.name_2 = _loc64_;
                                          _loc58_.var_76 = _loc64_;
                                          _loc58_.length = _loc58_.length + 1;
                                          _loc59_ = _loc62_;
                                          _loc31_ = _loc31_ || !_loc61_.name_67;
                                       }
                                    }
                                    _loc60_ = _loc60_.next;
                                 }
                                 if(var_225.var_73 == null)
                                 {
                                    _loc43_ = _loc43_.next;
                                 }
                                 else
                                 {
                                    _loc56_ = ZPP_Interactor.method_65(_loc15_,_loc48_);
                                    if(_loc56_ == null)
                                    {
                                       _loc57_ = ZPP_CallbackSet.method_65(_loc15_,_loc48_);
                                       add_callbackset(_loc57_);
                                    }
                                    if(_loc56_ == null || (_loc56_.var_782 != var_114 || param5) && (_loc56_.var_701 & class_223.id_ImmState_ALWAYS) == 0)
                                    {
                                       if(_loc57_ != null)
                                       {
                                          _loc56_ = _loc57_;
                                       }
                                       if(_loc56_ != null)
                                       {
                                          _loc60_ = var_225.var_73;
                                          while(_loc60_ != null)
                                          {
                                             _loc61_ = _loc60_.var_74;
                                             if(_loc61_.var_249 == class_223.var_319)
                                             {
                                                _loc56_.var_782 = var_114;
                                                _loc56_.var_816 = var_114;
                                                _loc56_.var_763 = var_114;
                                             }
                                             else
                                             {
                                                _loc56_.var_782 = var_114;
                                             }
                                             _loc60_ = _loc60_.next;
                                          }
                                       }
                                       _loc64_ = _loc74_.active;
                                       _loc74_.active = true;
                                       _loc65_ = false;
                                       _loc79_ = true;
                                       _loc80_ = null;
                                       _loc81_ = null;
                                       _loc82_ = _loc74_.var_268.next;
                                       _loc74_.var_270 = false;
                                       _loc83_ = _loc74_.name_24.next;
                                       while(_loc83_ != null)
                                       {
                                          _loc84_ = _loc83_;
                                          if(_loc84_.var_114 + class_238.var_832 < _loc74_.var_114)
                                          {
                                             _loc85_ = _loc74_.name_24;
                                             if(_loc80_ == null)
                                             {
                                                _loc86_ = _loc85_.next;
                                                _loc87_ = _loc86_.next;
                                                _loc85_.next = _loc87_;
                                                if(_loc85_.next == null)
                                                {
                                                   _loc85_.var_76 = true;
                                                }
                                             }
                                             else
                                             {
                                                _loc86_ = _loc80_.next;
                                                _loc87_ = _loc86_.next;
                                                _loc80_.next = _loc87_;
                                                if(_loc87_ == null)
                                                {
                                                   _loc85_.var_76 = true;
                                                }
                                             }
                                             _loc86_.var_120 = false;
                                             _loc85_.name_2 = true;
                                             _loc85_.length = _loc85_.length - 1;
                                             _loc85_.var_76 = true;
                                             _loc83_ = _loc87_;
                                             _loc88_ = _loc74_.var_268;
                                             if(_loc81_ == null)
                                             {
                                                _loc89_ = _loc88_.next;
                                                _loc90_ = _loc89_.next;
                                                _loc88_.next = _loc90_;
                                                if(_loc88_.next == null)
                                                {
                                                   _loc88_.var_76 = true;
                                                }
                                             }
                                             else
                                             {
                                                _loc89_ = _loc81_.next;
                                                _loc90_ = _loc89_.next;
                                                _loc81_.next = _loc90_;
                                                if(_loc90_ == null)
                                                {
                                                   _loc88_.var_76 = true;
                                                }
                                             }
                                             _loc89_.var_120 = false;
                                             _loc88_.name_2 = true;
                                             _loc88_.length = _loc88_.length - 1;
                                             _loc88_.var_76 = true;
                                             _loc82_ = _loc90_;
                                             _loc85_ = _loc84_;
                                             _loc85_.name_20 = null;
                                             _loc85_.next = ZPP_Contact.var_72;
                                             ZPP_Contact.var_72 = _loc85_;
                                          }
                                          else
                                          {
                                             _loc88_ = _loc84_.name_4;
                                             _loc91_ = _loc84_.active;
                                             _loc84_.active = _loc84_.var_114 == _loc74_.var_114;
                                             if(_loc84_.active)
                                             {
                                                if(_loc79_)
                                                {
                                                   _loc79_ = false;
                                                   _loc74_.c1 = _loc88_;
                                                   _loc74_.oc1 = _loc84_;
                                                }
                                                else
                                                {
                                                   _loc74_.var_270 = true;
                                                   _loc74_.c2 = _loc88_;
                                                   _loc74_.oc2 = _loc84_;
                                                }
                                             }
                                             if(_loc91_ != _loc84_.active)
                                             {
                                                _loc74_.name_24.name_2 = true;
                                             }
                                             _loc80_ = _loc83_;
                                             _loc81_ = _loc82_;
                                             _loc82_ = _loc82_.next;
                                             _loc83_ = _loc83_.next;
                                          }
                                       }
                                       if(_loc74_.var_270)
                                       {
                                          _loc74_.var_481 = true;
                                          if(_loc74_.oc1.var_300)
                                          {
                                             _loc88_ = _loc74_.c1;
                                             _loc74_.c1 = _loc74_.c2;
                                             _loc74_.c2 = _loc88_;
                                             _loc83_ = _loc74_.oc1;
                                             _loc74_.oc1 = _loc74_.oc2;
                                             _loc74_.oc2 = _loc83_;
                                             _loc74_.var_270 = false;
                                          }
                                          else if(_loc74_.oc2.var_300)
                                          {
                                             _loc74_.var_270 = false;
                                          }
                                          if(_loc74_.oc1.var_300)
                                          {
                                             _loc79_ = true;
                                          }
                                       }
                                       else
                                       {
                                          _loc74_.var_481 = false;
                                       }
                                       _loc79_;
                                       var_206.zpp_inner.var_680 = _loc74_;
                                       var_206.zpp_inner.name_40 = _loc56_;
                                       _loc60_ = var_225.var_73;
                                       while(_loc60_ != null)
                                       {
                                          _loc61_ = _loc60_.var_74;
                                          var_206.zpp_inner.listener = _loc61_;
                                          _loc66_ = var_206.zpp_inner;
                                          _loc67_ = _loc56_.int1;
                                          _loc68_ = _loc56_.int2;
                                          _loc69_ = _loc61_.options1;
                                          _loc70_ = _loc67_.name_10;
                                          _loc69_;
                                          if(!!ZPP_OptionType.method_113(_loc70_,_loc69_.name_18) && !ZPP_OptionType.method_113(_loc70_,_loc69_.name_22) && (!!ZPP_OptionType.method_113(_loc70_,_loc69_.name_18) && !ZPP_OptionType.method_113(_loc70_,_loc69_.name_22)))
                                          {
                                             _loc66_.int1 = _loc67_;
                                             _loc66_.int2 = _loc68_;
                                          }
                                          else
                                          {
                                             _loc66_.int1 = _loc68_;
                                             _loc66_.int2 = _loc67_;
                                          }
                                          var_206.zpp_inner.var_807 = _loc15_ != var_206.zpp_inner.int1;
                                          _loc71_ = _loc61_.handlerp(var_206);
                                          if(_loc71_ != null)
                                          {
                                             §§push(_loc71_);
                                             if(class_223.var_320 == null)
                                             {
                                                class_223.var_87 = true;
                                                class_223.var_320 = new class_296();
                                                class_223.var_87 = false;
                                             }
                                             if(§§pop() == class_223.var_320)
                                             {
                                                _loc74_.var_181 = class_223.var_267 | class_223.id_ImmState_ALWAYS;
                                             }
                                             else
                                             {
                                                §§push(_loc71_);
                                                if(class_223.var_321 == null)
                                                {
                                                   class_223.var_87 = true;
                                                   class_223.var_321 = new class_296();
                                                   class_223.var_87 = false;
                                                }
                                                if(§§pop() == class_223.var_321)
                                                {
                                                   _loc74_.var_181 = class_223.var_267;
                                                }
                                                else
                                                {
                                                   §§push(_loc71_);
                                                   if(class_223.var_325 == null)
                                                   {
                                                      class_223.var_87 = true;
                                                      class_223.var_325 = new class_296();
                                                      class_223.var_87 = false;
                                                   }
                                                   if(§§pop() == class_223.var_325)
                                                   {
                                                      _loc74_.var_181 = class_223.var_613 | class_223.id_ImmState_ALWAYS;
                                                   }
                                                   else
                                                   {
                                                      _loc74_.var_181 = class_223.var_613;
                                                   }
                                                }
                                             }
                                          }
                                          _loc60_ = _loc60_.next;
                                       }
                                       _loc74_.active = _loc64_;
                                       if(_loc56_ != null)
                                       {
                                          _loc60_ = var_225.var_73;
                                          while(_loc60_ != null)
                                          {
                                             _loc61_ = _loc60_.var_74;
                                             if(_loc61_.var_249 == class_223.var_319)
                                             {
                                                _loc56_.var_701 = _loc74_.var_181;
                                                _loc56_.var_710 = _loc74_.var_181;
                                                _loc56_.var_747 = _loc74_.var_181;
                                             }
                                             else
                                             {
                                                _loc56_.var_701 = _loc74_.var_181;
                                             }
                                             _loc60_ = _loc60_.next;
                                          }
                                       }
                                    }
                                    else if(_loc56_ == null)
                                    {
                                       if((_loc74_.var_181 & class_223.id_ImmState_ALWAYS) == 0)
                                       {
                                          _loc74_.var_181 = class_223.var_267;
                                       }
                                    }
                                    else
                                    {
                                       _loc74_.var_181 = _loc56_.var_701;
                                    }
                                    _loc43_ = _loc43_.next;
                                 }
                              }
                           }
                           _loc42_ = _loc42_.next;
                        }
                        if(!!_loc31_ && (_loc74_.var_181 & class_223.id_ImmState_ALWAYS) == 0)
                        {
                           if(_loc74_.b1.type == class_223.var_188)
                           {
                              _loc24_ = _loc74_.b1;
                              if(!_loc24_.name_29)
                              {
                                 _loc24_.var_112.var_211 = var_114 + (!!var_156?0:1);
                                 if(_loc24_.type == class_223.var_216)
                                 {
                                    _loc24_.var_261 = true;
                                 }
                                 if(_loc24_.var_112.var_129)
                                 {
                                    method_115(_loc24_,false);
                                 }
                              }
                           }
                           if(_loc74_.b1.type == class_223.var_188)
                           {
                              _loc24_ = _loc74_.b2;
                              if(!_loc24_.name_29)
                              {
                                 _loc24_.var_112.var_211 = var_114 + (!!var_156?0:1);
                                 if(_loc24_.type == class_223.var_216)
                                 {
                                    _loc24_.var_261 = true;
                                 }
                                 if(_loc24_.var_112.var_129)
                                 {
                                    method_115(_loc24_,false);
                                 }
                              }
                           }
                        }
                     }
                     if((_loc74_.var_181 & class_223.var_267) != 0)
                     {
                        if(_loc74_.b1.type == class_223.var_188 && _loc74_.b1.var_112.var_129)
                        {
                           _loc24_ = _loc74_.b1;
                           if(!_loc24_.name_29)
                           {
                              _loc24_.var_112.var_211 = var_114 + (!!var_156?0:1);
                              if(_loc24_.type == class_223.var_216)
                              {
                                 _loc24_.var_261 = true;
                              }
                              if(_loc24_.var_112.var_129)
                              {
                                 method_115(_loc24_,false);
                              }
                           }
                        }
                        if(_loc74_.b2.type == class_223.var_188 && _loc74_.b2.var_112.var_129)
                        {
                           _loc24_ = _loc74_.b2;
                           if(!_loc24_.name_29)
                           {
                              _loc24_.var_112.var_211 = var_114 + (!!var_156?0:1);
                              if(_loc24_.type == class_223.var_216)
                              {
                                 _loc24_.var_261 = true;
                              }
                              if(_loc24_.var_112.var_129)
                              {
                                 method_115(_loc24_,false);
                              }
                           }
                        }
                     }
                     if(_loc74_.var_129)
                     {
                        _loc74_.var_129 = false;
                        if(ZNPNode_ZPP_ColArbiter.var_72 == null)
                        {
                           _loc78_ = new ZNPNode_ZPP_ColArbiter();
                        }
                        else
                        {
                           _loc78_ = ZNPNode_ZPP_ColArbiter.var_72;
                           ZNPNode_ZPP_ColArbiter.var_72 = _loc78_.next;
                           _loc78_.next = null;
                        }
                        null;
                        _loc78_.var_74 = _loc74_;
                        _loc77_ = _loc78_;
                        _loc77_.next = _loc73_.var_73;
                        _loc73_.var_73 = _loc77_;
                        _loc73_.name_2 = true;
                        _loc73_.length = _loc73_.length + 1;
                        _loc74_;
                     }
                     _loc7_ = _loc74_;
                  }
                  else if(_loc17_)
                  {
                     _loc92_ = _loc74_;
                     _loc92_.var_376 = false;
                     _loc92_.var_382 = false;
                     _loc92_.var_379 = false;
                     _loc92_.var_381 = false;
                     _loc93_ = null;
                     _loc92_.__ref_edge2 = _loc93_;
                     _loc92_.__ref_edge1 = _loc93_;
                     _loc92_.next = ZPP_ColArbiter.var_72;
                     ZPP_ColArbiter.var_72 = _loc92_;
                     _loc7_ = null;
                  }
                  else
                  {
                     _loc7_ = _loc74_;
                  }
               }
               else
               {
                  _loc7_ = _loc74_;
               }
            }
            else
            {
               if(param4 == null)
               {
                  _loc23_ = null;
                  if(_loc8_.name_12.length < _loc9_.name_12.length)
                  {
                     _loc24_ = _loc8_;
                  }
                  else
                  {
                     _loc24_ = _loc9_;
                  }
                  _loc25_ = _loc24_.name_12.var_73;
                  while(_loc25_ != null)
                  {
                     _loc26_ = _loc25_.var_74;
                     if(_loc26_.id == _loc20_.id && _loc26_.var_179 == _loc21_.id)
                     {
                        _loc23_ = _loc26_;
                        break;
                     }
                     _loc25_ = _loc25_.next;
                  }
                  _loc22_ = _loc23_;
               }
               else
               {
                  _loc22_ = param4;
               }
               _loc17_ = _loc22_ == null;
               _loc28_ = false;
               if(_loc17_)
               {
                  if(ZPP_SensorArbiter.var_72 == null)
                  {
                     _loc94_ = new ZPP_SensorArbiter();
                  }
                  else
                  {
                     _loc94_ = ZPP_SensorArbiter.var_72;
                     ZPP_SensorArbiter.var_72 = _loc94_.next;
                     _loc94_.next = null;
                  }
                  null;
               }
               else if(_loc22_.var_624 == null)
               {
                  _loc22_.var_265 = true;
                  _loc29_ = _loc22_.b1.name_12;
                  _loc25_ = null;
                  _loc30_ = _loc29_.var_73;
                  _loc31_ = false;
                  while(_loc30_ != null)
                  {
                     if(_loc30_.var_74 == _loc22_)
                     {
                        if(_loc25_ == null)
                        {
                           _loc32_ = _loc29_.var_73;
                           _loc33_ = _loc32_.next;
                           _loc29_.var_73 = _loc33_;
                           if(_loc29_.var_73 == null)
                           {
                              _loc29_.var_76 = true;
                           }
                        }
                        else
                        {
                           _loc32_ = _loc25_.next;
                           _loc33_ = _loc32_.next;
                           _loc25_.next = _loc33_;
                           if(_loc33_ == null)
                           {
                              _loc29_.var_76 = true;
                           }
                        }
                        _loc34_ = _loc32_;
                        _loc34_.var_74 = null;
                        _loc34_.next = ZNPNode_ZPP_Arbiter.var_72;
                        ZNPNode_ZPP_Arbiter.var_72 = _loc34_;
                        _loc29_.name_2 = true;
                        _loc29_.length = _loc29_.length - 1;
                        _loc29_.var_76 = true;
                        _loc33_;
                        _loc31_ = true;
                        break;
                     }
                     _loc25_ = _loc30_;
                     _loc30_ = _loc30_.next;
                  }
                  _loc31_;
                  _loc29_ = _loc22_.b2.name_12;
                  _loc25_ = null;
                  _loc30_ = _loc29_.var_73;
                  _loc31_ = false;
                  while(_loc30_ != null)
                  {
                     if(_loc30_.var_74 == _loc22_)
                     {
                        if(_loc25_ == null)
                        {
                           _loc32_ = _loc29_.var_73;
                           _loc33_ = _loc32_.next;
                           _loc29_.var_73 = _loc33_;
                           if(_loc29_.var_73 == null)
                           {
                              _loc29_.var_76 = true;
                           }
                        }
                        else
                        {
                           _loc32_ = _loc25_.next;
                           _loc33_ = _loc32_.next;
                           _loc25_.next = _loc33_;
                           if(_loc33_ == null)
                           {
                              _loc29_.var_76 = true;
                           }
                        }
                        _loc34_ = _loc32_;
                        _loc34_.var_74 = null;
                        _loc34_.next = ZNPNode_ZPP_Arbiter.var_72;
                        ZNPNode_ZPP_Arbiter.var_72 = _loc34_;
                        _loc29_.name_2 = true;
                        _loc29_.length = _loc29_.length - 1;
                        _loc29_.var_76 = true;
                        _loc33_;
                        _loc31_ = true;
                        break;
                     }
                     _loc25_ = _loc30_;
                     _loc30_ = _loc30_.next;
                  }
                  _loc31_;
                  if(_loc22_.var_209 != null)
                  {
                     _loc22_.var_209.var_246 = null;
                     _loc22_.var_209 = null;
                  }
                  _loc22_.active = false;
                  var_217.name_2 = true;
                  if(ZPP_SensorArbiter.var_72 == null)
                  {
                     _loc94_ = new ZPP_SensorArbiter();
                  }
                  else
                  {
                     _loc94_ = ZPP_SensorArbiter.var_72;
                     ZPP_SensorArbiter.var_72 = _loc94_.next;
                     _loc94_.next = null;
                  }
                  null;
                  _loc94_.var_361 = true;
                  _loc17_ = true;
                  _loc28_ = true;
               }
               else
               {
                  _loc94_ = _loc22_.var_624;
               }
               _loc35_ = class_223.var_378;
               if(_loc17_ || _loc94_.var_114 != var_114 || param5)
               {
                  _loc94_.var_114 = var_114;
                  if(class_239.method_530(_loc20_,_loc21_))
                  {
                     if(_loc17_)
                     {
                        _loc94_.b1 = param1.body;
                        _loc94_.ws1 = param1;
                        _loc94_.b2 = param2.body;
                        _loc94_.ws2 = param2;
                        _loc94_.id = _loc20_.id;
                        _loc94_.var_179 = _loc21_.id;
                        _loc29_ = _loc94_.b1.name_12;
                        if(ZNPNode_ZPP_Arbiter.var_72 == null)
                        {
                           _loc30_ = new ZNPNode_ZPP_Arbiter();
                        }
                        else
                        {
                           _loc30_ = ZNPNode_ZPP_Arbiter.var_72;
                           ZNPNode_ZPP_Arbiter.var_72 = _loc30_.next;
                           _loc30_.next = null;
                        }
                        null;
                        _loc30_.var_74 = _loc94_;
                        _loc25_ = _loc30_;
                        _loc25_.next = _loc29_.var_73;
                        _loc29_.var_73 = _loc25_;
                        _loc29_.name_2 = true;
                        _loc29_.length = _loc29_.length + 1;
                        _loc94_;
                        _loc29_ = _loc94_.b2.name_12;
                        if(ZNPNode_ZPP_Arbiter.var_72 == null)
                        {
                           _loc30_ = new ZNPNode_ZPP_Arbiter();
                        }
                        else
                        {
                           _loc30_ = ZNPNode_ZPP_Arbiter.var_72;
                           ZNPNode_ZPP_Arbiter.var_72 = _loc30_.next;
                           _loc30_.next = null;
                        }
                        null;
                        _loc30_.var_74 = _loc94_;
                        _loc25_ = _loc30_;
                        _loc25_.next = _loc29_.var_73;
                        _loc29_.var_73 = _loc25_;
                        _loc29_.name_2 = true;
                        _loc29_.length = _loc29_.length + 1;
                        _loc94_;
                        _loc94_.active = true;
                        _loc94_.var_304 = 0;
                        _loc94_.var_265 = false;
                        _loc94_.var_129 = false;
                        _loc94_.name_23 = false;
                        _loc94_.var_639 = false;
                        _loc95_ = var_288;
                        if(ZNPNode_ZPP_SensorArbiter.var_72 == null)
                        {
                           _loc97_ = new ZNPNode_ZPP_SensorArbiter();
                        }
                        else
                        {
                           _loc97_ = ZNPNode_ZPP_SensorArbiter.var_72;
                           ZNPNode_ZPP_SensorArbiter.var_72 = _loc97_.next;
                           _loc97_.next = null;
                        }
                        null;
                        _loc97_.var_74 = _loc94_;
                        _loc96_ = _loc97_;
                        _loc96_.next = _loc95_.var_73;
                        _loc95_.var_73 = _loc96_;
                        _loc95_.name_2 = true;
                        _loc95_.length = _loc95_.length + 1;
                        _loc94_;
                        _loc94_.name_23 = !_loc28_;
                     }
                     else
                     {
                        _loc94_.name_23 = _loc94_.var_360 < var_114 - 1 || _loc94_.var_784 == var_114 && param5;
                     }
                     _loc94_.var_360 = _loc94_.var_114;
                     if(_loc94_.name_23 || (_loc94_.var_181 & class_223.id_ImmState_ALWAYS) == 0)
                     {
                        _loc94_.var_181 = class_223.var_267;
                        _loc31_ = false;
                        if(_loc94_.ws1.id > _loc94_.ws2.id)
                        {
                           _loc39_ = _loc94_.ws2;
                        }
                        else
                        {
                           _loc39_ = _loc94_.ws1;
                        }
                        if(_loc94_.ws1.id > _loc94_.ws2.id)
                        {
                           _loc40_ = _loc94_.ws1;
                        }
                        else
                        {
                           _loc40_ = _loc94_.ws2;
                        }
                        _loc41_ = mrca1;
                        while(_loc41_.var_73 != null)
                        {
                           _loc42_ = _loc41_.var_73;
                           _loc41_.var_73 = _loc42_.next;
                           _loc43_ = _loc42_;
                           _loc43_.var_74 = null;
                           _loc43_.next = ZNPNode_ZPP_Interactor.var_72;
                           ZNPNode_ZPP_Interactor.var_72 = _loc43_;
                           if(_loc41_.var_73 == null)
                           {
                              _loc41_.var_76 = true;
                           }
                           _loc41_.name_2 = true;
                           _loc41_.length = _loc41_.length - 1;
                        }
                        _loc41_.var_76 = true;
                        _loc41_ = mrca2;
                        while(_loc41_.var_73 != null)
                        {
                           _loc42_ = _loc41_.var_73;
                           _loc41_.var_73 = _loc42_.next;
                           _loc43_ = _loc42_;
                           _loc43_.var_74 = null;
                           _loc43_.next = ZNPNode_ZPP_Interactor.var_72;
                           ZNPNode_ZPP_Interactor.var_72 = _loc43_;
                           if(_loc41_.var_73 == null)
                           {
                              _loc41_.var_76 = true;
                           }
                           _loc41_.name_2 = true;
                           _loc41_.length = _loc41_.length - 1;
                        }
                        _loc41_.var_76 = true;
                        if(_loc39_.var_134 != null)
                        {
                           _loc41_ = mrca1;
                           if(ZNPNode_ZPP_Interactor.var_72 == null)
                           {
                              _loc43_ = new ZNPNode_ZPP_Interactor();
                           }
                           else
                           {
                              _loc43_ = ZNPNode_ZPP_Interactor.var_72;
                              ZNPNode_ZPP_Interactor.var_72 = _loc43_.next;
                              _loc43_.next = null;
                           }
                           null;
                           _loc43_.var_74 = _loc39_;
                           _loc42_ = _loc43_;
                           _loc42_.next = _loc41_.var_73;
                           _loc41_.var_73 = _loc42_;
                           _loc41_.name_2 = true;
                           _loc41_.length = _loc41_.length + 1;
                           _loc39_;
                        }
                        if(_loc39_.body.var_134 != null)
                        {
                           _loc41_ = mrca1;
                           _loc15_ = _loc39_.body;
                           if(ZNPNode_ZPP_Interactor.var_72 == null)
                           {
                              _loc43_ = new ZNPNode_ZPP_Interactor();
                           }
                           else
                           {
                              _loc43_ = ZNPNode_ZPP_Interactor.var_72;
                              ZNPNode_ZPP_Interactor.var_72 = _loc43_.next;
                              _loc43_.next = null;
                           }
                           null;
                           _loc43_.var_74 = _loc15_;
                           _loc42_ = _loc43_;
                           _loc42_.next = _loc41_.var_73;
                           _loc41_.var_73 = _loc42_;
                           _loc41_.name_2 = true;
                           _loc41_.length = _loc41_.length + 1;
                           _loc15_;
                        }
                        if(_loc40_.var_134 != null)
                        {
                           _loc41_ = mrca2;
                           if(ZNPNode_ZPP_Interactor.var_72 == null)
                           {
                              _loc43_ = new ZNPNode_ZPP_Interactor();
                           }
                           else
                           {
                              _loc43_ = ZNPNode_ZPP_Interactor.var_72;
                              ZNPNode_ZPP_Interactor.var_72 = _loc43_.next;
                              _loc43_.next = null;
                           }
                           null;
                           _loc43_.var_74 = _loc40_;
                           _loc42_ = _loc43_;
                           _loc42_.next = _loc41_.var_73;
                           _loc41_.var_73 = _loc42_;
                           _loc41_.name_2 = true;
                           _loc41_.length = _loc41_.length + 1;
                           _loc40_;
                        }
                        if(_loc40_.body.var_134 != null)
                        {
                           _loc41_ = mrca2;
                           _loc15_ = _loc40_.body;
                           if(ZNPNode_ZPP_Interactor.var_72 == null)
                           {
                              _loc43_ = new ZNPNode_ZPP_Interactor();
                           }
                           else
                           {
                              _loc43_ = ZNPNode_ZPP_Interactor.var_72;
                              ZNPNode_ZPP_Interactor.var_72 = _loc43_.next;
                              _loc43_.next = null;
                           }
                           null;
                           _loc43_.var_74 = _loc15_;
                           _loc42_ = _loc43_;
                           _loc42_.next = _loc41_.var_73;
                           _loc41_.var_73 = _loc42_;
                           _loc41_.name_2 = true;
                           _loc41_.length = _loc41_.length + 1;
                           _loc15_;
                        }
                        _loc44_ = _loc39_.body.compound;
                        _loc45_ = _loc40_.body.compound;
                        while(_loc44_ != _loc45_)
                        {
                           if(_loc44_ == null)
                           {
                              _loc46_ = 0;
                           }
                           else
                           {
                              _loc46_ = int(_loc44_.depth);
                           }
                           if(_loc45_ == null)
                           {
                              _loc47_ = 0;
                           }
                           else
                           {
                              _loc47_ = _loc45_.depth;
                           }
                           if(_loc46_ < _loc47_)
                           {
                              if(_loc45_.var_134 != null)
                              {
                                 _loc41_ = mrca2;
                                 if(ZNPNode_ZPP_Interactor.var_72 == null)
                                 {
                                    _loc43_ = new ZNPNode_ZPP_Interactor();
                                 }
                                 else
                                 {
                                    _loc43_ = ZNPNode_ZPP_Interactor.var_72;
                                    ZNPNode_ZPP_Interactor.var_72 = _loc43_.next;
                                    _loc43_.next = null;
                                 }
                                 null;
                                 _loc43_.var_74 = _loc45_;
                                 _loc42_ = _loc43_;
                                 _loc42_.next = _loc41_.var_73;
                                 _loc41_.var_73 = _loc42_;
                                 _loc41_.name_2 = true;
                                 _loc41_.length = _loc41_.length + 1;
                                 _loc45_;
                              }
                              _loc45_ = _loc45_.compound;
                           }
                           else
                           {
                              if(_loc44_.var_134 != null)
                              {
                                 _loc41_ = mrca1;
                                 if(ZNPNode_ZPP_Interactor.var_72 == null)
                                 {
                                    _loc43_ = new ZNPNode_ZPP_Interactor();
                                 }
                                 else
                                 {
                                    _loc43_ = ZNPNode_ZPP_Interactor.var_72;
                                    ZNPNode_ZPP_Interactor.var_72 = _loc43_.next;
                                    _loc43_.next = null;
                                 }
                                 null;
                                 _loc43_.var_74 = _loc44_;
                                 _loc42_ = _loc43_;
                                 _loc42_.next = _loc41_.var_73;
                                 _loc41_.var_73 = _loc42_;
                                 _loc41_.name_2 = true;
                                 _loc41_.length = _loc41_.length + 1;
                                 _loc44_;
                              }
                              _loc44_ = _loc44_.compound;
                           }
                        }
                        _loc42_ = mrca1.var_73;
                        while(_loc42_ != null)
                        {
                           _loc15_ = _loc42_.var_74;
                           _loc43_ = mrca2.var_73;
                           while(_loc43_ != null)
                           {
                              _loc48_ = _loc43_.var_74;
                              _loc49_ = _loc15_.var_134;
                              _loc50_ = _loc48_.var_134;
                              _loc52_ = null;
                              if(_loc49_.var_141.length < _loc50_.var_141.length)
                              {
                                 _loc53_ = _loc49_.var_141;
                              }
                              else
                              {
                                 _loc53_ = _loc50_.var_141;
                              }
                              _loc54_ = _loc53_.var_73;
                              while(_loc54_ != null)
                              {
                                 _loc55_ = _loc54_.var_74;
                                 if(_loc55_.a == _loc49_ && _loc55_.b == _loc50_ || _loc55_.a == _loc50_ && _loc55_.b == _loc49_)
                                 {
                                    _loc52_ = _loc55_;
                                    break;
                                 }
                                 _loc54_ = _loc54_.next;
                              }
                              if(_loc52_ == null)
                              {
                                 if(ZPP_CbSetPair.var_72 == null)
                                 {
                                    _loc55_ = new ZPP_CbSetPair();
                                 }
                                 else
                                 {
                                    _loc55_ = ZPP_CbSetPair.var_72;
                                    ZPP_CbSetPair.var_72 = _loc55_.next;
                                    _loc55_.next = null;
                                 }
                                 _loc55_.var_145 = true;
                                 if(ZPP_CbSet.method_117(_loc49_,_loc50_))
                                 {
                                    _loc55_.a = _loc49_;
                                    _loc55_.b = _loc50_;
                                 }
                                 else
                                 {
                                    _loc55_.a = _loc50_;
                                    _loc55_.b = _loc49_;
                                 }
                                 _loc52_ = _loc55_;
                                 _loc49_.var_141.add(_loc52_);
                                 if(_loc50_ != _loc49_)
                                 {
                                    _loc50_.var_141.add(_loc52_);
                                 }
                              }
                              if(_loc52_.var_145)
                              {
                                 _loc52_.var_145 = false;
                                 _loc52_.method_138();
                              }
                              _loc51_ = _loc52_;
                              if(_loc51_.name_15.var_73 == null)
                              {
                                 _loc43_ = _loc43_.next;
                              }
                              else
                              {
                                 _loc56_ = null;
                                 _loc57_ = null;
                                 _loc58_ = var_225;
                                 while(_loc58_.var_73 != null)
                                 {
                                    _loc59_ = _loc58_.var_73;
                                    _loc58_.var_73 = _loc59_.next;
                                    _loc60_ = _loc59_;
                                    _loc60_.var_74 = null;
                                    _loc60_.next = ZNPNode_ZPP_InteractionListener.var_72;
                                    ZNPNode_ZPP_InteractionListener.var_72 = _loc60_;
                                    if(_loc58_.var_73 == null)
                                    {
                                       _loc58_.var_76 = true;
                                    }
                                    _loc58_.name_2 = true;
                                    _loc58_.length = _loc58_.length - 1;
                                 }
                                 _loc58_.var_76 = true;
                                 _loc59_ = null;
                                 _loc46_ = int(class_223.var_796);
                                 _loc52_ = null;
                                 if(_loc49_.var_141.length < _loc50_.var_141.length)
                                 {
                                    _loc53_ = _loc49_.var_141;
                                 }
                                 else
                                 {
                                    _loc53_ = _loc50_.var_141;
                                 }
                                 _loc54_ = _loc53_.var_73;
                                 while(_loc54_ != null)
                                 {
                                    _loc55_ = _loc54_.var_74;
                                    if(_loc55_.a == _loc49_ && _loc55_.b == _loc50_ || _loc55_.a == _loc50_ && _loc55_.b == _loc49_)
                                    {
                                       _loc52_ = _loc55_;
                                       break;
                                    }
                                    _loc54_ = _loc54_.next;
                                 }
                                 if(_loc52_ == null)
                                 {
                                    if(ZPP_CbSetPair.var_72 == null)
                                    {
                                       _loc55_ = new ZPP_CbSetPair();
                                    }
                                    else
                                    {
                                       _loc55_ = ZPP_CbSetPair.var_72;
                                       ZPP_CbSetPair.var_72 = _loc55_.next;
                                       _loc55_.next = null;
                                    }
                                    _loc55_.var_145 = true;
                                    if(ZPP_CbSet.method_117(_loc49_,_loc50_))
                                    {
                                       _loc55_.a = _loc49_;
                                       _loc55_.b = _loc50_;
                                    }
                                    else
                                    {
                                       _loc55_.a = _loc50_;
                                       _loc55_.b = _loc49_;
                                    }
                                    _loc52_ = _loc55_;
                                    _loc49_.var_141.add(_loc52_);
                                    if(_loc50_ != _loc49_)
                                    {
                                       _loc50_.var_141.add(_loc52_);
                                    }
                                 }
                                 if(_loc52_.var_145)
                                 {
                                    _loc52_.var_145 = false;
                                    _loc52_.method_138();
                                 }
                                 _loc51_ = _loc52_;
                                 _loc60_ = _loc51_.name_15.var_73;
                                 while(_loc60_ != null)
                                 {
                                    _loc61_ = _loc60_.var_74;
                                    if(_loc61_.event == _loc46_)
                                    {
                                       if((_loc61_.var_249 & _loc35_) != 0)
                                       {
                                          _loc58_ = _loc6_.var_225;
                                          if(ZNPNode_ZPP_InteractionListener.var_72 == null)
                                          {
                                             _loc63_ = new ZNPNode_ZPP_InteractionListener();
                                          }
                                          else
                                          {
                                             _loc63_ = ZNPNode_ZPP_InteractionListener.var_72;
                                             ZNPNode_ZPP_InteractionListener.var_72 = _loc63_.next;
                                             _loc63_.next = null;
                                          }
                                          null;
                                          _loc63_.var_74 = _loc61_;
                                          _loc62_ = _loc63_;
                                          if(_loc59_ == null)
                                          {
                                             _loc62_.next = _loc58_.var_73;
                                             _loc58_.var_73 = _loc62_;
                                          }
                                          else
                                          {
                                             _loc62_.next = _loc59_.next;
                                             _loc59_.next = _loc62_;
                                          }
                                          _loc64_ = true;
                                          _loc58_.name_2 = _loc64_;
                                          _loc58_.var_76 = _loc64_;
                                          _loc58_.length = _loc58_.length + 1;
                                          _loc59_ = _loc62_;
                                          _loc31_ = _loc31_ || !_loc61_.name_67;
                                       }
                                    }
                                    _loc60_ = _loc60_.next;
                                 }
                                 if(var_225.var_73 == null)
                                 {
                                    _loc43_ = _loc43_.next;
                                 }
                                 else
                                 {
                                    _loc56_ = ZPP_Interactor.method_65(_loc15_,_loc48_);
                                    if(_loc56_ == null)
                                    {
                                       _loc57_ = ZPP_CallbackSet.method_65(_loc15_,_loc48_);
                                       add_callbackset(_loc57_);
                                    }
                                    if(_loc56_ == null || (_loc56_.var_816 != var_114 || param5) && (_loc56_.var_710 & class_223.id_ImmState_ALWAYS) == 0)
                                    {
                                       if(_loc57_ != null)
                                       {
                                          _loc56_ = _loc57_;
                                       }
                                       if(_loc56_ != null)
                                       {
                                          _loc60_ = var_225.var_73;
                                          while(_loc60_ != null)
                                          {
                                             _loc61_ = _loc60_.var_74;
                                             if(_loc61_.var_249 == class_223.var_319)
                                             {
                                                _loc56_.var_782 = var_114;
                                                _loc56_.var_816 = var_114;
                                                _loc56_.var_763 = var_114;
                                             }
                                             else
                                             {
                                                _loc56_.var_816 = var_114;
                                             }
                                             _loc60_ = _loc60_.next;
                                          }
                                       }
                                       _loc64_ = _loc94_.active;
                                       _loc94_.active = true;
                                       _loc65_ = false;
                                       var_206.zpp_inner.var_680 = _loc94_;
                                       var_206.zpp_inner.name_40 = _loc56_;
                                       _loc60_ = var_225.var_73;
                                       while(_loc60_ != null)
                                       {
                                          _loc61_ = _loc60_.var_74;
                                          var_206.zpp_inner.listener = _loc61_;
                                          _loc66_ = var_206.zpp_inner;
                                          _loc67_ = _loc56_.int1;
                                          _loc68_ = _loc56_.int2;
                                          _loc69_ = _loc61_.options1;
                                          _loc70_ = _loc67_.name_10;
                                          _loc69_;
                                          if(!!ZPP_OptionType.method_113(_loc70_,_loc69_.name_18) && !ZPP_OptionType.method_113(_loc70_,_loc69_.name_22) && (!!ZPP_OptionType.method_113(_loc70_,_loc69_.name_18) && !ZPP_OptionType.method_113(_loc70_,_loc69_.name_22)))
                                          {
                                             _loc66_.int1 = _loc67_;
                                             _loc66_.int2 = _loc68_;
                                          }
                                          else
                                          {
                                             _loc66_.int1 = _loc68_;
                                             _loc66_.int2 = _loc67_;
                                          }
                                          var_206.zpp_inner.var_807 = _loc15_ != var_206.zpp_inner.int1;
                                          _loc71_ = _loc61_.handlerp(var_206);
                                          if(_loc71_ != null)
                                          {
                                             §§push(_loc71_);
                                             if(class_223.var_320 == null)
                                             {
                                                class_223.var_87 = true;
                                                class_223.var_320 = new class_296();
                                                class_223.var_87 = false;
                                             }
                                             if(§§pop() == class_223.var_320)
                                             {
                                                _loc94_.var_181 = class_223.var_267 | class_223.id_ImmState_ALWAYS;
                                             }
                                             else
                                             {
                                                §§push(_loc71_);
                                                if(class_223.var_321 == null)
                                                {
                                                   class_223.var_87 = true;
                                                   class_223.var_321 = new class_296();
                                                   class_223.var_87 = false;
                                                }
                                                if(§§pop() == class_223.var_321)
                                                {
                                                   _loc94_.var_181 = class_223.var_267;
                                                }
                                                else
                                                {
                                                   §§push(_loc71_);
                                                   if(class_223.var_325 == null)
                                                   {
                                                      class_223.var_87 = true;
                                                      class_223.var_325 = new class_296();
                                                      class_223.var_87 = false;
                                                   }
                                                   if(§§pop() == class_223.var_325)
                                                   {
                                                      _loc94_.var_181 = class_223.var_613 | class_223.id_ImmState_ALWAYS;
                                                   }
                                                   else
                                                   {
                                                      _loc94_.var_181 = class_223.var_613;
                                                   }
                                                }
                                             }
                                          }
                                          _loc60_ = _loc60_.next;
                                       }
                                       _loc94_.active = _loc64_;
                                       if(_loc56_ != null)
                                       {
                                          _loc60_ = var_225.var_73;
                                          while(_loc60_ != null)
                                          {
                                             _loc61_ = _loc60_.var_74;
                                             if(_loc61_.var_249 == class_223.var_319)
                                             {
                                                _loc56_.var_701 = _loc94_.var_181;
                                                _loc56_.var_710 = _loc94_.var_181;
                                                _loc56_.var_747 = _loc94_.var_181;
                                             }
                                             else
                                             {
                                                _loc56_.var_710 = _loc94_.var_181;
                                             }
                                             _loc60_ = _loc60_.next;
                                          }
                                       }
                                    }
                                    else if(_loc56_ == null)
                                    {
                                       if((_loc94_.var_181 & class_223.id_ImmState_ALWAYS) == 0)
                                       {
                                          _loc94_.var_181 = class_223.var_267;
                                       }
                                    }
                                    else
                                    {
                                       _loc94_.var_181 = _loc56_.var_710;
                                    }
                                    _loc43_ = _loc43_.next;
                                 }
                              }
                           }
                           _loc42_ = _loc42_.next;
                        }
                        if(!!_loc31_ && (_loc94_.var_181 & class_223.id_ImmState_ALWAYS) == 0)
                        {
                           if(_loc94_.b1.type != class_223.var_240)
                           {
                              _loc24_ = _loc94_.b1;
                              if(!_loc24_.name_29)
                              {
                                 _loc24_.var_112.var_211 = var_114 + (!!var_156?0:1);
                                 if(_loc24_.type == class_223.var_216)
                                 {
                                    _loc24_.var_261 = true;
                                 }
                                 if(_loc24_.var_112.var_129)
                                 {
                                    method_115(_loc24_,false);
                                 }
                              }
                           }
                           if(_loc94_.b2.type != class_223.var_240)
                           {
                              _loc24_ = _loc94_.b2;
                              if(!_loc24_.name_29)
                              {
                                 _loc24_.var_112.var_211 = var_114 + (!!var_156?0:1);
                                 if(_loc24_.type == class_223.var_216)
                                 {
                                    _loc24_.var_261 = true;
                                 }
                                 if(_loc24_.var_112.var_129)
                                 {
                                    method_115(_loc24_,false);
                                 }
                              }
                           }
                        }
                     }
                     if(_loc94_.var_129)
                     {
                        _loc94_.var_129 = false;
                        _loc95_ = var_288;
                        if(ZNPNode_ZPP_SensorArbiter.var_72 == null)
                        {
                           _loc97_ = new ZNPNode_ZPP_SensorArbiter();
                        }
                        else
                        {
                           _loc97_ = ZNPNode_ZPP_SensorArbiter.var_72;
                           ZNPNode_ZPP_SensorArbiter.var_72 = _loc97_.next;
                           _loc97_.next = null;
                        }
                        null;
                        _loc97_.var_74 = _loc94_;
                        _loc96_ = _loc97_;
                        _loc96_.next = _loc95_.var_73;
                        _loc95_.var_73 = _loc96_;
                        _loc95_.name_2 = true;
                        _loc95_.length = _loc95_.length + 1;
                        _loc94_;
                     }
                     _loc7_ = _loc94_;
                  }
                  else if(_loc17_)
                  {
                     _loc98_ = _loc94_;
                     _loc98_.next = ZPP_SensorArbiter.var_72;
                     ZPP_SensorArbiter.var_72 = _loc98_;
                     _loc7_ = null;
                  }
                  else
                  {
                     _loc7_ = _loc94_;
                  }
               }
               else
               {
                  _loc7_ = _loc94_;
               }
            }
         }
         return _loc7_;
      }
      
      public final function listeners_subber(param1:class_247) : void
      {
         ;
         ZPP_Space.remListener(param1.zpp_inner);
      }
      
      public final function listeners_adder(param1:class_247) : Boolean
      {
         if(param1.zpp_inner.space != this)
         {
            if(param1.zpp_inner.space != null)
            {
               param1.zpp_inner.space.outer.zpp_inner.var_503.remove(param1);
            }
            addListener(param1.zpp_inner);
            return true;
         }
         return false;
      }
      
      public final function iterateVel(param1:int) : void
      {
         var _loc3_:int = 0;
         var _loc4_:* = null as ZNPNode_ZPP_FluidArbiter;
         var _loc5_:* = null as ZPP_FluidArbiter;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = null as ZNPNode_ZPP_Constraint;
         var _loc12_:* = null as ZNPNode_ZPP_Constraint;
         var _loc13_:* = null as ZPP_Constraint;
         var _loc14_:* = null as ZNPNode_ZPP_ColArbiter;
         var _loc15_:Boolean = false;
         var _loc16_:* = null as ZPP_ColArbiter;
         var _loc17_:* = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:* = NaN;
         var _loc25_:* = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc28_:* = NaN;
         var _loc2_:int = 0;
         while(_loc2_ < param1)
         {
            _loc2_++;
            _loc3_ = _loc2_;
            _loc4_ = var_217.var_73;
            while(_loc4_ != null)
            {
               _loc5_ = _loc4_.var_74;
               if(!!_loc5_.active && (_loc5_.var_181 & class_223.var_267) != 0)
               {
                  if(!_loc5_.var_817)
                  {
                     _loc6_ = Number(_loc5_.b1.var_94 + _loc5_.b1.var_237);
                     _loc7_ = Number(_loc5_.b2.var_94 + _loc5_.b2.var_237);
                     _loc8_ = _loc5_.b1.var_104 + _loc5_.b1.var_272 - _loc5_.r1y * _loc6_ - (_loc5_.b2.var_104 + _loc5_.b2.var_272 - _loc5_.r2y * _loc7_);
                     _loc9_ = Number(Number(_loc5_.b1.var_105 + _loc5_.b1.var_274) + _loc5_.r1x * _loc6_) - (Number(Number(_loc5_.b2.var_105 + _loc5_.b2.var_274) + _loc5_.r2x * _loc7_));
                     _loc10_ = Number(Number(_loc5_.var_737 * _loc8_ + _loc5_.var_638 * _loc9_));
                     _loc9_ = Number(_loc5_.var_638 * _loc8_ + _loc5_.var_686 * _loc9_);
                     _loc8_ = _loc10_;
                     _loc10_ = Number(_loc5_.var_586);
                     _loc8_ = _loc8_ - _loc5_.var_444 * _loc10_;
                     _loc9_ = _loc9_ - _loc5_.var_447 * _loc10_;
                     _loc10_ = 1;
                     _loc5_.var_444 = Number(_loc5_.var_444 + _loc8_ * _loc10_);
                     _loc5_.var_447 = Number(_loc5_.var_447 + _loc9_ * _loc10_);
                     _loc10_ = Number(_loc5_.b1.var_123);
                     _loc5_.b1.var_104 = _loc5_.b1.var_104 - _loc8_ * _loc10_;
                     _loc5_.b1.var_105 = _loc5_.b1.var_105 - _loc9_ * _loc10_;
                     _loc10_ = Number(_loc5_.b2.var_123);
                     _loc5_.b2.var_104 = Number(_loc5_.b2.var_104 + _loc8_ * _loc10_);
                     _loc5_.b2.var_105 = Number(_loc5_.b2.var_105 + _loc9_ * _loc10_);
                     _loc5_.b1.var_94 = _loc5_.b1.var_94 - _loc5_.b1.var_136 * (_loc9_ * _loc5_.r1x - _loc8_ * _loc5_.r1y);
                     _loc5_.b2.var_94 = Number(_loc5_.b2.var_94 + _loc5_.b2.var_136 * (_loc9_ * _loc5_.r2x - _loc8_ * _loc5_.r2y));
                     _loc10_ = Number((_loc6_ - _loc7_) * _loc5_.var_631 - _loc5_.var_470 * _loc5_.var_627);
                     _loc5_.var_470 = Number(_loc5_.var_470 + _loc10_);
                     _loc5_.b1.var_94 = _loc5_.b1.var_94 - _loc10_ * _loc5_.b1.var_136;
                     _loc5_.b2.var_94 = Number(_loc5_.b2.var_94 + _loc10_ * _loc5_.b2.var_136);
                  }
               }
               _loc4_ = _loc4_.next;
            }
            _loc11_ = null;
            _loc12_ = var_221.var_73;
            while(_loc12_ != null)
            {
               _loc13_ = _loc12_.var_74;
               if(_loc13_.method_441())
               {
                  _loc12_ = var_221.erase(_loc11_);
                  _loc13_;
                  ZPP_Constraint.method_365();
                  constraintCbBreak(_loc13_);
                  if(_loc13_.name_65)
                  {
                     _loc13_.var_112.var_129 = true;
                     var_156 = false;
                     if(_loc13_.compound != null)
                     {
                        _loc13_.compound.var_185.remove(_loc13_.outer);
                     }
                     else
                     {
                        var_185.remove(_loc13_.outer);
                     }
                     var_156 = true;
                  }
                  else
                  {
                     _loc13_.active = false;
                  }
                  _loc13_.method_239();
               }
               else
               {
                  _loc11_ = _loc12_;
                  _loc12_ = _loc12_.next;
               }
            }
            _loc14_ = var_175.var_73;
            _loc15_ = true;
            if(_loc14_ == null)
            {
               _loc14_ = var_228.var_73;
               _loc15_ = false;
            }
            while(_loc14_ != null)
            {
               _loc16_ = _loc14_.var_74;
               if(!!_loc16_.active && (_loc16_.var_181 & class_223.var_267) != 0)
               {
                  _loc18_ = _loc16_.k1x + _loc16_.b2.var_104 - _loc16_.c1.r2y * _loc16_.b2.var_94 - (_loc16_.b1.var_104 - _loc16_.c1.r1y * _loc16_.b1.var_94);
                  _loc19_ = Number(Number(_loc16_.k1y + _loc16_.b2.var_105) + _loc16_.c1.r2x * _loc16_.b2.var_94) - (Number(_loc16_.b1.var_105 + _loc16_.c1.r1x * _loc16_.b1.var_94));
                  _loc8_ = (_loc19_ * _loc16_.nx - _loc18_ * _loc16_.ny + _loc16_.var_369) * _loc16_.c1.var_440;
                  _loc9_ = _loc16_.c1.name_52 * _loc16_.c1.var_142;
                  _loc10_ = Number(_loc16_.c1.var_208);
                  _loc17_ = Number(_loc10_ - _loc8_);
                  if(_loc17_ > _loc9_)
                  {
                     _loc17_ = Number(_loc9_);
                  }
                  else if(_loc17_ < -_loc9_)
                  {
                     _loc17_ = Number(-_loc9_);
                  }
                  _loc8_ = _loc17_ - _loc10_;
                  _loc16_.c1.var_208 = _loc17_;
                  _loc6_ = -_loc16_.ny * _loc8_;
                  _loc7_ = _loc16_.nx * _loc8_;
                  _loc16_.b2.var_104 = Number(_loc16_.b2.var_104 + _loc6_ * _loc16_.b2.var_123);
                  _loc16_.b2.var_105 = Number(_loc16_.b2.var_105 + _loc7_ * _loc16_.b2.var_123);
                  _loc16_.b1.var_104 = _loc16_.b1.var_104 - _loc6_ * _loc16_.b1.var_123;
                  _loc16_.b1.var_105 = _loc16_.b1.var_105 - _loc7_ * _loc16_.b1.var_123;
                  _loc16_.b2.var_94 = Number(_loc16_.b2.var_94 + _loc16_.rt1b * _loc8_ * _loc16_.b2.var_136);
                  _loc16_.b1.var_94 = _loc16_.b1.var_94 - _loc16_.rt1a * _loc8_ * _loc16_.b1.var_136;
                  if(_loc16_.var_270)
                  {
                     _loc20_ = _loc16_.k2x + _loc16_.b2.var_104 - _loc16_.c2.r2y * _loc16_.b2.var_94 - (_loc16_.b1.var_104 - _loc16_.c2.r1y * _loc16_.b1.var_94);
                     _loc21_ = Number(Number(_loc16_.k2y + _loc16_.b2.var_105) + _loc16_.c2.r2x * _loc16_.b2.var_94) - (Number(_loc16_.b1.var_105 + _loc16_.c2.r1x * _loc16_.b1.var_94));
                     _loc8_ = (_loc21_ * _loc16_.nx - _loc20_ * _loc16_.ny + _loc16_.var_369) * _loc16_.c2.var_440;
                     _loc9_ = _loc16_.c2.name_52 * _loc16_.c2.var_142;
                     _loc10_ = Number(_loc16_.c2.var_208);
                     _loc17_ = Number(_loc10_ - _loc8_);
                     if(_loc17_ > _loc9_)
                     {
                        _loc17_ = Number(_loc9_);
                     }
                     else if(_loc17_ < -_loc9_)
                     {
                        _loc17_ = Number(-_loc9_);
                     }
                     _loc8_ = _loc17_ - _loc10_;
                     _loc16_.c2.var_208 = _loc17_;
                     _loc6_ = -_loc16_.ny * _loc8_;
                     _loc7_ = _loc16_.nx * _loc8_;
                     _loc16_.b2.var_104 = Number(_loc16_.b2.var_104 + _loc6_ * _loc16_.b2.var_123);
                     _loc16_.b2.var_105 = Number(_loc16_.b2.var_105 + _loc7_ * _loc16_.b2.var_123);
                     _loc16_.b1.var_104 = _loc16_.b1.var_104 - _loc6_ * _loc16_.b1.var_123;
                     _loc16_.b1.var_105 = _loc16_.b1.var_105 - _loc7_ * _loc16_.b1.var_123;
                     _loc16_.b2.var_94 = Number(_loc16_.b2.var_94 + _loc16_.rt2b * _loc8_ * _loc16_.b2.var_136);
                     _loc16_.b1.var_94 = _loc16_.b1.var_94 - _loc16_.rt2a * _loc8_ * _loc16_.b1.var_136;
                     _loc18_ = _loc16_.k1x + _loc16_.b2.var_104 - _loc16_.c1.r2y * _loc16_.b2.var_94 - (_loc16_.b1.var_104 - _loc16_.c1.r1y * _loc16_.b1.var_94);
                     _loc19_ = Number(Number(_loc16_.k1y + _loc16_.b2.var_105) + _loc16_.c1.r2x * _loc16_.b2.var_94) - (Number(_loc16_.b1.var_105 + _loc16_.c1.r1x * _loc16_.b1.var_94));
                     _loc20_ = _loc16_.k2x + _loc16_.b2.var_104 - _loc16_.c2.r2y * _loc16_.b2.var_94 - (_loc16_.b1.var_104 - _loc16_.c2.r1y * _loc16_.b1.var_94);
                     _loc21_ = Number(Number(_loc16_.k2y + _loc16_.b2.var_105) + _loc16_.c2.r2x * _loc16_.b2.var_94) - (Number(_loc16_.b1.var_105 + _loc16_.c2.r1x * _loc16_.b1.var_94));
                     _loc22_ = _loc16_.c1.var_142;
                     _loc23_ = _loc16_.c2.var_142;
                     _loc24_ = Number(Number(Number(Number(_loc18_ * _loc16_.nx + _loc19_ * _loc16_.ny) + _loc16_.var_311) + _loc16_.c1.name_39) - (Number(_loc16_.var_640 * _loc22_ + _loc16_.var_309 * _loc23_)));
                     _loc25_ = Number(Number(Number(Number(_loc20_ * _loc16_.nx + _loc21_ * _loc16_.ny) + _loc16_.var_311) + _loc16_.c2.name_39) - (Number(_loc16_.var_309 * _loc22_ + _loc16_.var_648 * _loc23_)));
                     _loc26_ = -(_loc16_.var_172 * _loc24_ + _loc16_.var_171 * _loc25_);
                     _loc27_ = -(_loc16_.var_171 * _loc24_ + _loc16_.var_173 * _loc25_);
                     if(_loc26_ >= 0 && _loc27_ >= 0)
                     {
                        _loc24_ = Number(_loc26_ - _loc22_);
                        _loc25_ = Number(_loc27_ - _loc23_);
                        _loc16_.c1.var_142 = _loc26_;
                        _loc16_.c2.var_142 = _loc27_;
                     }
                     else
                     {
                        _loc26_ = -_loc16_.c1.var_342 * _loc24_;
                        if(_loc26_ >= 0 && Number(_loc16_.var_309 * _loc26_ + _loc25_) >= 0)
                        {
                           _loc24_ = Number(_loc26_ - _loc22_);
                           _loc25_ = Number(-_loc23_);
                           _loc16_.c1.var_142 = _loc26_;
                           _loc16_.c2.var_142 = 0;
                        }
                        else
                        {
                           _loc27_ = -_loc16_.c2.var_342 * _loc25_;
                           if(_loc27_ >= 0 && Number(_loc16_.var_309 * _loc27_ + _loc24_) >= 0)
                           {
                              _loc24_ = Number(-_loc22_);
                              _loc25_ = Number(_loc27_ - _loc23_);
                              _loc16_.c1.var_142 = 0;
                              _loc16_.c2.var_142 = _loc27_;
                           }
                           else if(_loc24_ >= 0 && _loc25_ >= 0)
                           {
                              _loc24_ = Number(-_loc22_);
                              _loc25_ = Number(-_loc23_);
                              _loc28_ = 0;
                              _loc16_.c2.var_142 = _loc28_;
                              _loc16_.c1.var_142 = _loc28_;
                           }
                           else
                           {
                              _loc24_ = 0;
                              _loc25_ = 0;
                           }
                        }
                     }
                     _loc8_ = Number(_loc24_ + _loc25_);
                     _loc6_ = _loc16_.nx * _loc8_;
                     _loc7_ = _loc16_.ny * _loc8_;
                     _loc16_.b2.var_104 = Number(_loc16_.b2.var_104 + _loc6_ * _loc16_.b2.var_123);
                     _loc16_.b2.var_105 = Number(_loc16_.b2.var_105 + _loc7_ * _loc16_.b2.var_123);
                     _loc16_.b1.var_104 = _loc16_.b1.var_104 - _loc6_ * _loc16_.b1.var_123;
                     _loc16_.b1.var_105 = _loc16_.b1.var_105 - _loc7_ * _loc16_.b1.var_123;
                     _loc16_.b2.var_94 = Number(_loc16_.b2.var_94 + (_loc16_.rn1b * _loc24_ + _loc16_.rn2b * _loc25_) * _loc16_.b2.var_136);
                     _loc16_.b1.var_94 = _loc16_.b1.var_94 - (_loc16_.rn1a * _loc24_ + _loc16_.rn2a * _loc25_) * _loc16_.b1.var_136;
                  }
                  else
                  {
                     if(_loc16_.radius != 0)
                     {
                        _loc20_ = _loc16_.b2.var_94 - _loc16_.b1.var_94;
                        _loc8_ = _loc20_ * _loc16_.var_527;
                        _loc9_ = _loc16_.rfric * _loc16_.c1.var_142;
                        _loc10_ = Number(_loc16_.var_170);
                        _loc16_.var_170 = _loc16_.var_170 - _loc8_;
                        if(_loc16_.var_170 > _loc9_)
                        {
                           _loc16_.var_170 = _loc9_;
                        }
                        else if(_loc16_.var_170 < -_loc9_)
                        {
                           _loc16_.var_170 = -_loc9_;
                        }
                        _loc8_ = _loc16_.var_170 - _loc10_;
                        _loc16_.b2.var_94 = Number(_loc16_.b2.var_94 + _loc8_ * _loc16_.b2.var_136);
                        _loc16_.b1.var_94 = _loc16_.b1.var_94 - _loc8_ * _loc16_.b1.var_136;
                     }
                     _loc18_ = _loc16_.k1x + _loc16_.b2.var_104 - _loc16_.c1.r2y * _loc16_.b2.var_94 - (_loc16_.b1.var_104 - _loc16_.c1.r1y * _loc16_.b1.var_94);
                     _loc19_ = Number(Number(_loc16_.k1y + _loc16_.b2.var_105) + _loc16_.c1.r2x * _loc16_.b2.var_94) - (Number(_loc16_.b1.var_105 + _loc16_.c1.r1x * _loc16_.b1.var_94));
                     _loc8_ = (Number(_loc16_.c1.name_39 + (Number(_loc16_.nx * _loc18_ + _loc16_.ny * _loc19_))) + _loc16_.var_311) * _loc16_.c1.var_342;
                     _loc10_ = Number(_loc16_.c1.var_142);
                     _loc17_ = Number(_loc10_ - _loc8_);
                     if(_loc17_ < 0)
                     {
                        _loc17_ = 0;
                     }
                     _loc8_ = _loc17_ - _loc10_;
                     _loc16_.c1.var_142 = _loc17_;
                     _loc6_ = _loc16_.nx * _loc8_;
                     _loc7_ = _loc16_.ny * _loc8_;
                     _loc16_.b2.var_104 = Number(_loc16_.b2.var_104 + _loc6_ * _loc16_.b2.var_123);
                     _loc16_.b2.var_105 = Number(_loc16_.b2.var_105 + _loc7_ * _loc16_.b2.var_123);
                     _loc16_.b1.var_104 = _loc16_.b1.var_104 - _loc6_ * _loc16_.b1.var_123;
                     _loc16_.b1.var_105 = _loc16_.b1.var_105 - _loc7_ * _loc16_.b1.var_123;
                     _loc16_.b2.var_94 = Number(_loc16_.b2.var_94 + _loc16_.rn1b * _loc8_ * _loc16_.b2.var_136);
                     _loc16_.b1.var_94 = _loc16_.b1.var_94 - _loc16_.rn1a * _loc8_ * _loc16_.b1.var_136;
                  }
               }
               _loc14_ = _loc14_.next;
               if(!!_loc15_ && _loc14_ == null)
               {
                  _loc14_ = var_228.var_73;
                  _loc15_ = false;
               }
            }
         }
      }
      
      public final function iteratePos(param1:int) : void
      {
         var _loc3_:int = 0;
         var _loc4_:* = null as ZNPNode_ZPP_Constraint;
         var _loc5_:* = null as ZNPNode_ZPP_Constraint;
         var _loc6_:* = null as ZPP_Constraint;
         var _loc7_:* = null as ZNPNode_ZPP_ColArbiter;
         var _loc8_:Boolean = false;
         var _loc9_:* = null as ZPP_ColArbiter;
         var _loc10_:* = null as ZPP_IContact;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         var _loc21_:* = 0;
         var _loc22_:* = NaN;
         var _loc23_:* = NaN;
         var _loc24_:* = NaN;
         var _loc25_:* = NaN;
         var _loc26_:* = NaN;
         var _loc27_:* = NaN;
         var _loc28_:* = NaN;
         var _loc29_:Number = NaN;
         var _loc30_:* = NaN;
         var _loc31_:* = NaN;
         var _loc32_:Number = NaN;
         var _loc33_:* = null as ZPP_Body;
         var _loc34_:* = NaN;
         var _loc35_:* = NaN;
         var _loc36_:* = NaN;
         var _loc37_:* = NaN;
         var _loc38_:Number = NaN;
         var _loc39_:Number = NaN;
         var _loc40_:* = NaN;
         var _loc41_:* = NaN;
         var _loc42_:Number = NaN;
         var _loc43_:Number = NaN;
         var _loc44_:Number = NaN;
         var _loc45_:Number = NaN;
         var _loc46_:Number = NaN;
         var _loc47_:Number = NaN;
         var _loc48_:Number = NaN;
         var _loc2_:int = 0;
         while(_loc2_ < param1)
         {
            _loc2_++;
            _loc3_ = _loc2_;
            _loc4_ = null;
            _loc5_ = var_221.var_73;
            while(_loc5_ != null)
            {
               _loc6_ = _loc5_.var_74;
               if(!_loc6_.var_876 && _loc6_.name_45)
               {
                  if(_loc6_.method_499())
                  {
                     _loc5_ = var_221.erase(_loc4_);
                     _loc6_;
                     ZPP_Constraint.method_365();
                     constraintCbBreak(_loc6_);
                     if(_loc6_.name_65)
                     {
                        _loc6_.var_112.var_129 = true;
                        var_156 = false;
                        if(_loc6_.compound != null)
                        {
                           _loc6_.compound.var_185.remove(_loc6_.outer);
                        }
                        else
                        {
                           var_185.remove(_loc6_.outer);
                        }
                        var_156 = true;
                     }
                     else
                     {
                        _loc6_.active = false;
                     }
                     _loc6_.method_239();
                     continue;
                  }
               }
               _loc4_ = _loc5_;
               _loc5_ = _loc5_.next;
            }
            _loc7_ = var_175.var_73;
            _loc8_ = true;
            if(_loc7_ == null)
            {
               _loc7_ = var_228.var_73;
               _loc8_ = false;
            }
            while(_loc7_ != null)
            {
               _loc9_ = _loc7_.var_74;
               if(!!_loc9_.active && (_loc9_.var_181 & class_223.var_267) != 0)
               {
                  if(_loc9_.var_605 == 2)
                  {
                     _loc10_ = _loc9_.c1;
                     _loc11_ = 0;
                     _loc12_ = 0;
                     _loc13_ = 0;
                     _loc14_ = 0;
                     _loc13_ = Number(_loc9_.b2.var_83 * _loc10_.lr2x - _loc9_.b2.var_84 * _loc10_.lr2y);
                     _loc14_ = Number(Number(_loc10_.lr2x * _loc9_.b2.var_84 + _loc10_.lr2y * _loc9_.b2.var_83));
                     _loc15_ = 1;
                     _loc13_ = Number(Number(_loc13_ + _loc9_.b2.var_95 * _loc15_));
                     _loc14_ = Number(Number(_loc14_ + _loc9_.b2.var_96 * _loc15_));
                     _loc15_ = 0;
                     _loc16_ = 0;
                     _loc15_ = Number(_loc9_.b1.var_83 * _loc10_.lr1x - _loc9_.b1.var_84 * _loc10_.lr1y);
                     _loc16_ = Number(Number(_loc10_.lr1x * _loc9_.b1.var_84 + _loc10_.lr1y * _loc9_.b1.var_83));
                     _loc17_ = 1;
                     _loc15_ = Number(Number(_loc15_ + _loc9_.b1.var_95 * _loc17_));
                     _loc16_ = Number(Number(_loc16_ + _loc9_.b1.var_96 * _loc17_));
                     _loc17_ = 0;
                     _loc18_ = 0;
                     _loc17_ = Number(_loc13_ - _loc15_);
                     _loc18_ = Number(_loc14_ - _loc16_);
                     _loc20_ = Number(Number(_loc17_ * _loc17_ + _loc18_ * _loc18_));
                     if(_loc20_ == 0)
                     {
                        _loc19_ = 0;
                     }
                     else
                     {
                        sf32(_loc20_,0);
                        _loc21_ = 1597463007 - (li32(0) >> 1);
                        si32(_loc21_,0);
                        _loc22_ = Number(lf32(0));
                        _loc19_ = Number(1 / (_loc22_ * (1.5 - 0.5 * _loc20_ * _loc22_ * _loc22_)));
                     }
                     _loc20_ = Number(_loc9_.radius - class_238.var_899);
                     _loc22_ = Number(_loc19_ - _loc20_);
                     if(Number(_loc17_ * _loc9_.nx + _loc18_ * _loc9_.ny) < 0)
                     {
                        _loc17_ = Number(-_loc17_);
                        _loc18_ = Number(-_loc18_);
                        _loc22_ = Number(_loc22_ - _loc9_.radius);
                     }
                     if(_loc22_ < 0)
                     {
                        if(_loc19_ < class_238.name_8)
                        {
                           if(_loc9_.b1.var_264 != 0)
                           {
                              _loc9_.b1.var_95 = Number(_loc9_.b1.var_95 + class_238.name_8 * 10);
                           }
                           else
                           {
                              _loc9_.b2.var_95 = Number(_loc9_.b2.var_95 + class_238.name_8 * 10);
                           }
                        }
                        else
                        {
                           _loc23_ = Number(1 / _loc19_);
                           _loc17_ = Number(_loc17_ * _loc23_);
                           _loc18_ = Number(_loc18_ * _loc23_);
                           _loc23_ = Number(0.5 * (_loc15_ + _loc13_));
                           _loc24_ = Number(0.5 * (_loc16_ + _loc14_));
                           _loc25_ = Number(_loc19_ - _loc20_);
                           _loc15_ = Number(_loc23_ - _loc9_.b1.var_95);
                           _loc16_ = Number(_loc24_ - _loc9_.b1.var_96);
                           _loc13_ = Number(_loc23_ - _loc9_.b2.var_95);
                           _loc14_ = Number(_loc24_ - _loc9_.b2.var_96);
                           _loc26_ = Number(_loc18_ * _loc15_ - _loc17_ * _loc16_);
                           _loc27_ = Number(_loc18_ * _loc13_ - _loc17_ * _loc14_);
                           _loc28_ = Number(Number(Number(Number(_loc9_.b2.var_264 + _loc27_ * _loc27_ * _loc9_.b2.var_194) + _loc9_.b1.var_264) + _loc26_ * _loc26_ * _loc9_.b1.var_194));
                           if(_loc28_ != 0)
                           {
                              _loc29_ = -_loc9_.var_681 * _loc25_ / _loc28_;
                              _loc30_ = 0;
                              _loc31_ = 0;
                              _loc32_ = _loc29_;
                              _loc30_ = Number(_loc17_ * _loc32_);
                              _loc31_ = Number(_loc18_ * _loc32_);
                              _loc32_ = _loc9_.b1.var_123;
                              _loc9_.b1.var_95 = _loc9_.b1.var_95 - _loc30_ * _loc32_;
                              _loc9_.b1.var_96 = _loc9_.b1.var_96 - _loc31_ * _loc32_;
                              _loc33_ = _loc9_.b1;
                              _loc32_ = -_loc26_ * _loc9_.b1.var_136 * _loc29_;
                              _loc33_.var_93 = Number(_loc33_.var_93 + _loc32_);
                              if(_loc32_ * _loc32_ > 0.0001)
                              {
                                 _loc33_.var_84 = Number(Math.sin(_loc33_.var_93));
                                 _loc33_.var_83 = Number(Math.cos(_loc33_.var_93));
                                 null;
                              }
                              else
                              {
                                 _loc34_ = Number(_loc32_ * _loc32_);
                                 _loc35_ = Number(1 - 0.5 * _loc34_);
                                 _loc36_ = Number(1 - _loc34_ * _loc34_ / 8);
                                 _loc37_ = Number((_loc35_ * _loc33_.var_84 + _loc32_ * _loc33_.var_83) * _loc36_);
                                 _loc33_.var_83 = (_loc35_ * _loc33_.var_83 - _loc32_ * _loc33_.var_84) * _loc36_;
                                 _loc33_.var_84 = _loc37_;
                              }
                              _loc32_ = _loc9_.b2.var_123;
                              _loc9_.b2.var_95 = Number(_loc9_.b2.var_95 + _loc30_ * _loc32_);
                              _loc9_.b2.var_96 = Number(_loc9_.b2.var_96 + _loc31_ * _loc32_);
                              _loc33_ = _loc9_.b2;
                              _loc32_ = _loc27_ * _loc9_.b2.var_136 * _loc29_;
                              _loc33_.var_93 = Number(_loc33_.var_93 + _loc32_);
                              if(_loc32_ * _loc32_ > 0.0001)
                              {
                                 _loc33_.var_84 = Number(Math.sin(_loc33_.var_93));
                                 _loc33_.var_83 = Number(Math.cos(_loc33_.var_93));
                                 null;
                              }
                              else
                              {
                                 _loc34_ = Number(_loc32_ * _loc32_);
                                 _loc35_ = Number(1 - 0.5 * _loc34_);
                                 _loc36_ = Number(1 - _loc34_ * _loc34_ / 8);
                                 _loc37_ = Number((_loc35_ * _loc33_.var_84 + _loc32_ * _loc33_.var_83) * _loc36_);
                                 _loc33_.var_83 = (_loc35_ * _loc33_.var_83 - _loc32_ * _loc33_.var_84) * _loc36_;
                                 _loc33_.var_84 = _loc37_;
                              }
                           }
                        }
                     }
                  }
                  else
                  {
                     _loc11_ = 0;
                     _loc12_ = 0;
                     _loc14_ = 0;
                     _loc15_ = 0;
                     _loc16_ = 0;
                     _loc17_ = 0;
                     if(_loc9_.var_605 == 0)
                     {
                        _loc11_ = Number(_loc9_.b1.var_83 * _loc9_.var_122 - _loc9_.b1.var_84 * _loc9_.var_121);
                        _loc12_ = Number(Number(_loc9_.var_122 * _loc9_.b1.var_84 + _loc9_.var_121 * _loc9_.b1.var_83));
                        _loc13_ = Number(Number(_loc9_.var_786 + (Number(_loc11_ * _loc9_.b1.var_95 + _loc12_ * _loc9_.b1.var_96))));
                        _loc14_ = Number(_loc9_.b2.var_83 * _loc9_.c1.lr1x - _loc9_.b2.var_84 * _loc9_.c1.lr1y);
                        _loc15_ = Number(Number(_loc9_.c1.lr1x * _loc9_.b2.var_84 + _loc9_.c1.lr1y * _loc9_.b2.var_83));
                        _loc18_ = 1;
                        _loc14_ = Number(Number(_loc14_ + _loc9_.b2.var_95 * _loc18_));
                        _loc15_ = Number(Number(_loc15_ + _loc9_.b2.var_96 * _loc18_));
                        if(_loc9_.var_481)
                        {
                           _loc16_ = Number(_loc9_.b2.var_83 * _loc9_.c2.lr1x - _loc9_.b2.var_84 * _loc9_.c2.lr1y);
                           _loc17_ = Number(Number(_loc9_.c2.lr1x * _loc9_.b2.var_84 + _loc9_.c2.lr1y * _loc9_.b2.var_83));
                           _loc18_ = 1;
                           _loc16_ = Number(Number(_loc16_ + _loc9_.b2.var_95 * _loc18_));
                           _loc17_ = Number(Number(_loc17_ + _loc9_.b2.var_96 * _loc18_));
                        }
                     }
                     else
                     {
                        _loc11_ = Number(_loc9_.b2.var_83 * _loc9_.var_122 - _loc9_.b2.var_84 * _loc9_.var_121);
                        _loc12_ = Number(Number(_loc9_.var_122 * _loc9_.b2.var_84 + _loc9_.var_121 * _loc9_.b2.var_83));
                        _loc13_ = Number(Number(_loc9_.var_786 + (Number(_loc11_ * _loc9_.b2.var_95 + _loc12_ * _loc9_.b2.var_96))));
                        _loc14_ = Number(_loc9_.b1.var_83 * _loc9_.c1.lr1x - _loc9_.b1.var_84 * _loc9_.c1.lr1y);
                        _loc15_ = Number(Number(_loc9_.c1.lr1x * _loc9_.b1.var_84 + _loc9_.c1.lr1y * _loc9_.b1.var_83));
                        _loc18_ = 1;
                        _loc14_ = Number(Number(_loc14_ + _loc9_.b1.var_95 * _loc18_));
                        _loc15_ = Number(Number(_loc15_ + _loc9_.b1.var_96 * _loc18_));
                        if(_loc9_.var_481)
                        {
                           _loc16_ = Number(_loc9_.b1.var_83 * _loc9_.c2.lr1x - _loc9_.b1.var_84 * _loc9_.c2.lr1y);
                           _loc17_ = Number(Number(_loc9_.c2.lr1x * _loc9_.b1.var_84 + _loc9_.c2.lr1y * _loc9_.b1.var_83));
                           _loc18_ = 1;
                           _loc16_ = Number(Number(_loc16_ + _loc9_.b1.var_95 * _loc18_));
                           _loc17_ = Number(Number(_loc17_ + _loc9_.b1.var_96 * _loc18_));
                        }
                     }
                     _loc18_ = Number(_loc14_ * _loc11_ + _loc15_ * _loc12_ - _loc13_ - _loc9_.radius);
                     _loc18_ = Number(Number(_loc18_ + class_238.var_899));
                     _loc19_ = 0;
                     if(_loc9_.var_481)
                     {
                        _loc19_ = Number(_loc16_ * _loc11_ + _loc17_ * _loc12_ - _loc13_ - _loc9_.radius);
                        _loc19_ = Number(Number(_loc19_ + class_238.var_899));
                     }
                     if(_loc18_ < 0 || _loc19_ < 0)
                     {
                        if(_loc9_.var_642)
                        {
                           _loc11_ = Number(-_loc11_);
                           _loc12_ = Number(-_loc12_);
                        }
                        _loc20_ = 0;
                        _loc22_ = 0;
                        _loc20_ = Number(_loc14_ - _loc9_.b1.var_95);
                        _loc22_ = Number(_loc15_ - _loc9_.b1.var_96);
                        _loc23_ = 0;
                        _loc24_ = 0;
                        _loc23_ = Number(_loc14_ - _loc9_.b2.var_95);
                        _loc24_ = Number(_loc15_ - _loc9_.b2.var_96);
                        _loc25_ = 0;
                        _loc26_ = 0;
                        _loc27_ = 0;
                        _loc28_ = 0;
                        if(_loc9_.var_481)
                        {
                           _loc25_ = Number(_loc16_ - _loc9_.b1.var_95);
                           _loc26_ = Number(_loc17_ - _loc9_.b1.var_96);
                           _loc27_ = Number(_loc16_ - _loc9_.b2.var_95);
                           _loc28_ = Number(_loc17_ - _loc9_.b2.var_96);
                           _loc29_ = _loc12_ * _loc20_ - _loc11_ * _loc22_;
                           _loc30_ = Number(_loc12_ * _loc23_ - _loc11_ * _loc24_);
                           _loc31_ = Number(_loc12_ * _loc25_ - _loc11_ * _loc26_);
                           _loc32_ = _loc12_ * _loc27_ - _loc11_ * _loc28_;
                           _loc34_ = Number(Number(_loc9_.b1.var_264 + _loc9_.b2.var_264));
                           _loc9_.var_172 = Number(Number(_loc34_ + _loc9_.b1.var_194 * _loc29_ * _loc29_) + _loc9_.b2.var_194 * _loc30_ * _loc30_);
                           _loc9_.var_171 = Number(Number(_loc34_ + _loc9_.b1.var_194 * _loc29_ * _loc31_) + _loc9_.b2.var_194 * _loc30_ * _loc32_);
                           _loc9_.var_173 = Number(Number(_loc34_ + _loc9_.b1.var_194 * _loc31_ * _loc31_) + _loc9_.b2.var_194 * _loc32_ * _loc32_);
                           _loc35_ = 0;
                           _loc36_ = 0;
                           _loc37_ = 0;
                           _loc35_ = Number(_loc9_.var_172);
                           _loc36_ = Number(_loc9_.var_171);
                           _loc37_ = Number(_loc9_.var_173);
                           _loc38_ = _loc18_ * _loc9_.var_681;
                           _loc39_ = _loc19_ * _loc9_.var_681;
                           _loc40_ = 0;
                           _loc41_ = 0;
                           _loc40_ = Number(_loc38_);
                           _loc41_ = Number(_loc39_);
                           _loc40_ = Number(-_loc40_);
                           _loc41_ = Number(-_loc41_);
                           _loc42_ = _loc9_.var_172 * _loc9_.var_173 - _loc9_.var_171 * _loc9_.var_171;
                           if(_loc42_ != _loc42_)
                           {
                              _loc41_ = 0;
                              _loc40_ = Number(_loc41_);
                           }
                           else if(_loc42_ == 0)
                           {
                              if(_loc9_.var_172 != 0)
                              {
                                 _loc40_ = Number(_loc40_ / _loc9_.var_172);
                              }
                              else
                              {
                                 _loc40_ = 0;
                              }
                              if(_loc9_.var_173 != 0)
                              {
                                 _loc41_ = Number(_loc41_ / _loc9_.var_173);
                              }
                              else
                              {
                                 _loc41_ = 0;
                              }
                           }
                           else
                           {
                              _loc42_ = 1 / _loc42_;
                              _loc43_ = _loc42_ * (_loc9_.var_173 * _loc40_ - _loc9_.var_171 * _loc41_);
                              _loc41_ = Number(_loc42_ * (_loc9_.var_172 * _loc41_ - _loc9_.var_171 * _loc40_));
                              _loc40_ = Number(_loc43_);
                           }
                           if(_loc40_ >= 0 && _loc41_ >= 0)
                           {
                              _loc42_ = (_loc40_ + _loc41_) * _loc9_.b1.var_123;
                              _loc9_.b1.var_95 = _loc9_.b1.var_95 - _loc11_ * _loc42_;
                              _loc9_.b1.var_96 = _loc9_.b1.var_96 - _loc12_ * _loc42_;
                              _loc33_ = _loc9_.b1;
                              _loc42_ = -_loc9_.b1.var_136 * (_loc29_ * _loc40_ + _loc31_ * _loc41_);
                              _loc33_.var_93 = Number(_loc33_.var_93 + _loc42_);
                              if(_loc42_ * _loc42_ > 0.0001)
                              {
                                 _loc33_.var_84 = Number(Math.sin(_loc33_.var_93));
                                 _loc33_.var_83 = Number(Math.cos(_loc33_.var_93));
                                 null;
                              }
                              else
                              {
                                 _loc43_ = _loc42_ * _loc42_;
                                 _loc44_ = 1 - 0.5 * _loc43_;
                                 _loc45_ = 1 - _loc43_ * _loc43_ / 8;
                                 _loc46_ = (_loc44_ * _loc33_.var_84 + _loc42_ * _loc33_.var_83) * _loc45_;
                                 _loc33_.var_83 = (_loc44_ * _loc33_.var_83 - _loc42_ * _loc33_.var_84) * _loc45_;
                                 _loc33_.var_84 = _loc46_;
                              }
                              _loc42_ = (_loc40_ + _loc41_) * _loc9_.b2.var_123;
                              _loc9_.b2.var_95 = Number(_loc9_.b2.var_95 + _loc11_ * _loc42_);
                              _loc9_.b2.var_96 = Number(_loc9_.b2.var_96 + _loc12_ * _loc42_);
                              _loc33_ = _loc9_.b2;
                              _loc42_ = _loc9_.b2.var_136 * (_loc30_ * _loc40_ + _loc32_ * _loc41_);
                              _loc33_.var_93 = Number(_loc33_.var_93 + _loc42_);
                              if(_loc42_ * _loc42_ > 0.0001)
                              {
                                 _loc33_.var_84 = Number(Math.sin(_loc33_.var_93));
                                 _loc33_.var_83 = Number(Math.cos(_loc33_.var_93));
                                 null;
                              }
                              else
                              {
                                 _loc43_ = _loc42_ * _loc42_;
                                 _loc44_ = 1 - 0.5 * _loc43_;
                                 _loc45_ = 1 - _loc43_ * _loc43_ / 8;
                                 _loc46_ = (_loc44_ * _loc33_.var_84 + _loc42_ * _loc33_.var_83) * _loc45_;
                                 _loc33_.var_83 = (_loc44_ * _loc33_.var_83 - _loc42_ * _loc33_.var_84) * _loc45_;
                                 _loc33_.var_84 = _loc46_;
                              }
                           }
                           else
                           {
                              _loc40_ = Number(-_loc38_ / _loc35_);
                              _loc41_ = 0;
                              _loc42_ = Number(_loc36_ * _loc40_ + _loc39_);
                              if(_loc40_ >= 0 && _loc42_ >= 0)
                              {
                                 _loc43_ = (_loc40_ + _loc41_) * _loc9_.b1.var_123;
                                 _loc9_.b1.var_95 = _loc9_.b1.var_95 - _loc11_ * _loc43_;
                                 _loc9_.b1.var_96 = _loc9_.b1.var_96 - _loc12_ * _loc43_;
                                 _loc33_ = _loc9_.b1;
                                 _loc43_ = -_loc9_.b1.var_136 * (_loc29_ * _loc40_ + _loc31_ * _loc41_);
                                 _loc33_.var_93 = Number(_loc33_.var_93 + _loc43_);
                                 if(_loc43_ * _loc43_ > 0.0001)
                                 {
                                    _loc33_.var_84 = Number(Math.sin(_loc33_.var_93));
                                    _loc33_.var_83 = Number(Math.cos(_loc33_.var_93));
                                    null;
                                 }
                                 else
                                 {
                                    _loc44_ = _loc43_ * _loc43_;
                                    _loc45_ = 1 - 0.5 * _loc44_;
                                    _loc46_ = 1 - _loc44_ * _loc44_ / 8;
                                    _loc47_ = (_loc45_ * _loc33_.var_84 + _loc43_ * _loc33_.var_83) * _loc46_;
                                    _loc33_.var_83 = (_loc45_ * _loc33_.var_83 - _loc43_ * _loc33_.var_84) * _loc46_;
                                    _loc33_.var_84 = _loc47_;
                                 }
                                 _loc43_ = (_loc40_ + _loc41_) * _loc9_.b2.var_123;
                                 _loc9_.b2.var_95 = Number(_loc9_.b2.var_95 + _loc11_ * _loc43_);
                                 _loc9_.b2.var_96 = Number(_loc9_.b2.var_96 + _loc12_ * _loc43_);
                                 _loc33_ = _loc9_.b2;
                                 _loc43_ = _loc9_.b2.var_136 * (_loc30_ * _loc40_ + _loc32_ * _loc41_);
                                 _loc33_.var_93 = Number(_loc33_.var_93 + _loc43_);
                                 if(_loc43_ * _loc43_ > 0.0001)
                                 {
                                    _loc33_.var_84 = Number(Math.sin(_loc33_.var_93));
                                    _loc33_.var_83 = Number(Math.cos(_loc33_.var_93));
                                    null;
                                 }
                                 else
                                 {
                                    _loc44_ = _loc43_ * _loc43_;
                                    _loc45_ = 1 - 0.5 * _loc44_;
                                    _loc46_ = 1 - _loc44_ * _loc44_ / 8;
                                    _loc47_ = (_loc45_ * _loc33_.var_84 + _loc43_ * _loc33_.var_83) * _loc46_;
                                    _loc33_.var_83 = (_loc45_ * _loc33_.var_83 - _loc43_ * _loc33_.var_84) * _loc46_;
                                    _loc33_.var_84 = _loc47_;
                                 }
                              }
                              else
                              {
                                 _loc40_ = 0;
                                 _loc41_ = Number(-_loc39_ / _loc37_);
                                 _loc43_ = Number(_loc36_ * _loc41_ + _loc38_);
                                 if(_loc41_ >= 0 && _loc43_ >= 0)
                                 {
                                    _loc44_ = (_loc40_ + _loc41_) * _loc9_.b1.var_123;
                                    _loc9_.b1.var_95 = _loc9_.b1.var_95 - _loc11_ * _loc44_;
                                    _loc9_.b1.var_96 = _loc9_.b1.var_96 - _loc12_ * _loc44_;
                                    _loc33_ = _loc9_.b1;
                                    _loc44_ = -_loc9_.b1.var_136 * (_loc29_ * _loc40_ + _loc31_ * _loc41_);
                                    _loc33_.var_93 = Number(_loc33_.var_93 + _loc44_);
                                    if(_loc44_ * _loc44_ > 0.0001)
                                    {
                                       _loc33_.var_84 = Number(Math.sin(_loc33_.var_93));
                                       _loc33_.var_83 = Number(Math.cos(_loc33_.var_93));
                                       null;
                                    }
                                    else
                                    {
                                       _loc45_ = _loc44_ * _loc44_;
                                       _loc46_ = 1 - 0.5 * _loc45_;
                                       _loc47_ = 1 - _loc45_ * _loc45_ / 8;
                                       _loc48_ = (_loc46_ * _loc33_.var_84 + _loc44_ * _loc33_.var_83) * _loc47_;
                                       _loc33_.var_83 = (_loc46_ * _loc33_.var_83 - _loc44_ * _loc33_.var_84) * _loc47_;
                                       _loc33_.var_84 = _loc48_;
                                    }
                                    _loc44_ = (_loc40_ + _loc41_) * _loc9_.b2.var_123;
                                    _loc9_.b2.var_95 = Number(_loc9_.b2.var_95 + _loc11_ * _loc44_);
                                    _loc9_.b2.var_96 = Number(_loc9_.b2.var_96 + _loc12_ * _loc44_);
                                    _loc33_ = _loc9_.b2;
                                    _loc44_ = _loc9_.b2.var_136 * (_loc30_ * _loc40_ + _loc32_ * _loc41_);
                                    _loc33_.var_93 = Number(_loc33_.var_93 + _loc44_);
                                    if(_loc44_ * _loc44_ > 0.0001)
                                    {
                                       _loc33_.var_84 = Number(Math.sin(_loc33_.var_93));
                                       _loc33_.var_83 = Number(Math.cos(_loc33_.var_93));
                                       null;
                                    }
                                    else
                                    {
                                       _loc45_ = _loc44_ * _loc44_;
                                       _loc46_ = 1 - 0.5 * _loc45_;
                                       _loc47_ = 1 - _loc45_ * _loc45_ / 8;
                                       _loc48_ = (_loc46_ * _loc33_.var_84 + _loc44_ * _loc33_.var_83) * _loc47_;
                                       _loc33_.var_83 = (_loc46_ * _loc33_.var_83 - _loc44_ * _loc33_.var_84) * _loc47_;
                                       _loc33_.var_84 = _loc48_;
                                    }
                                 }
                              }
                           }
                        }
                        else
                        {
                           _loc29_ = _loc12_ * _loc20_ - _loc11_ * _loc22_;
                           _loc30_ = Number(_loc12_ * _loc23_ - _loc11_ * _loc24_);
                           _loc31_ = Number(Number(Number(Number(_loc9_.b2.var_264 + _loc30_ * _loc30_ * _loc9_.b2.var_194) + _loc9_.b1.var_264) + _loc29_ * _loc29_ * _loc9_.b1.var_194));
                           if(_loc31_ != 0)
                           {
                              _loc32_ = -_loc9_.var_681 * _loc18_ / _loc31_;
                              _loc34_ = 0;
                              _loc35_ = 0;
                              _loc36_ = Number(_loc32_);
                              _loc34_ = Number(_loc11_ * _loc36_);
                              _loc35_ = Number(_loc12_ * _loc36_);
                              _loc36_ = Number(_loc9_.b1.var_123);
                              _loc9_.b1.var_95 = _loc9_.b1.var_95 - _loc34_ * _loc36_;
                              _loc9_.b1.var_96 = _loc9_.b1.var_96 - _loc35_ * _loc36_;
                              _loc33_ = _loc9_.b1;
                              _loc36_ = Number(-_loc29_ * _loc9_.b1.var_136 * _loc32_);
                              _loc33_.var_93 = Number(_loc33_.var_93 + _loc36_);
                              if(_loc36_ * _loc36_ > 0.0001)
                              {
                                 _loc33_.var_84 = Number(Math.sin(_loc33_.var_93));
                                 _loc33_.var_83 = Number(Math.cos(_loc33_.var_93));
                                 null;
                              }
                              else
                              {
                                 _loc37_ = Number(_loc36_ * _loc36_);
                                 _loc38_ = 1 - 0.5 * _loc37_;
                                 _loc39_ = 1 - _loc37_ * _loc37_ / 8;
                                 _loc40_ = Number((_loc38_ * _loc33_.var_84 + _loc36_ * _loc33_.var_83) * _loc39_);
                                 _loc33_.var_83 = (_loc38_ * _loc33_.var_83 - _loc36_ * _loc33_.var_84) * _loc39_;
                                 _loc33_.var_84 = _loc40_;
                              }
                              _loc36_ = Number(_loc9_.b2.var_123);
                              _loc9_.b2.var_95 = Number(_loc9_.b2.var_95 + _loc34_ * _loc36_);
                              _loc9_.b2.var_96 = Number(_loc9_.b2.var_96 + _loc35_ * _loc36_);
                              _loc33_ = _loc9_.b2;
                              _loc36_ = Number(_loc30_ * _loc9_.b2.var_136 * _loc32_);
                              _loc33_.var_93 = Number(_loc33_.var_93 + _loc36_);
                              if(_loc36_ * _loc36_ > 0.0001)
                              {
                                 _loc33_.var_84 = Number(Math.sin(_loc33_.var_93));
                                 _loc33_.var_83 = Number(Math.cos(_loc33_.var_93));
                                 null;
                              }
                              else
                              {
                                 _loc37_ = Number(_loc36_ * _loc36_);
                                 _loc38_ = 1 - 0.5 * _loc37_;
                                 _loc39_ = 1 - _loc37_ * _loc37_ / 8;
                                 _loc40_ = Number((_loc38_ * _loc33_.var_84 + _loc36_ * _loc33_.var_83) * _loc39_);
                                 _loc33_.var_83 = (_loc38_ * _loc33_.var_83 - _loc36_ * _loc33_.var_84) * _loc39_;
                                 _loc33_.var_84 = _loc40_;
                              }
                           }
                        }
                     }
                  }
               }
               _loc7_ = _loc7_.next;
               if(!!_loc8_ && _loc7_ == null)
               {
                  _loc7_ = var_228.var_73;
                  _loc8_ = false;
               }
            }
         }
      }
      
      public final function gravity_validate() : void
      {
         var_184.zpp_inner.x = var_254;
         var_184.zpp_inner.y = var_252;
      }
      
      public final function gravity_invalidate(param1:ZPP_Vec2) : void
      {
         var _loc3_:* = null as ZNPNode_ZPP_Body;
         var _loc4_:* = null as ZPP_Body;
         var _loc5_:* = null as ZPP_Body;
         var _loc6_:* = null as ZNPNode_ZPP_Compound;
         var _loc7_:* = null as ZPP_Compound;
         var _loc8_:* = null as ZPP_Compound;
         var_254 = param1.x;
         var_252 = param1.y;
         var _loc2_:class_308 = new class_308();
         _loc3_ = name_30.var_73;
         while(_loc3_ != null)
         {
            _loc4_ = _loc3_.var_74;
            _loc5_ = _loc4_;
            if(!_loc5_.name_29)
            {
               _loc5_.var_112.var_211 = var_114 + (!!var_156?0:1);
               if(_loc5_.type == class_223.var_216)
               {
                  _loc5_.var_261 = true;
               }
               if(_loc5_.var_112.var_129)
               {
                  method_115(_loc5_,false);
               }
            }
            _loc3_ = _loc3_.next;
         }
         _loc6_ = name_27.var_73;
         while(_loc6_ != null)
         {
            _loc7_ = _loc6_.var_74;
            _loc2_.add(_loc7_);
            _loc6_ = _loc6_.next;
         }
         while(_loc2_.var_73 != null)
         {
            _loc7_ = _loc2_.method_105();
            _loc3_ = _loc7_.name_30.var_73;
            while(_loc3_ != null)
            {
               _loc4_ = _loc3_.var_74;
               _loc5_ = _loc4_;
               if(!_loc5_.name_29)
               {
                  _loc5_.var_112.var_211 = var_114 + (!!var_156?0:1);
                  if(_loc5_.type == class_223.var_216)
                  {
                     _loc5_.var_261 = true;
                  }
                  if(_loc5_.var_112.var_129)
                  {
                     method_115(_loc5_,false);
                  }
               }
               _loc3_ = _loc3_.next;
            }
            _loc6_ = _loc7_.name_27.var_73;
            while(_loc6_ != null)
            {
               _loc8_ = _loc6_.var_74;
               _loc2_.add(_loc8_);
               _loc6_ = _loc6_.next;
            }
         }
      }
      
      public final function method_266() : void
      {
         var _loc4_:* = null as Vec2;
         var _loc5_:Boolean = false;
         var _loc6_:* = null as ZPP_Vec2;
         var _loc1_:Number = var_254;
         var _loc2_:Number = var_252;
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
         var_184 = _loc4_;
         var_184.zpp_inner.var_120 = true;
         var_184.zpp_inner._invalidate = gravity_invalidate;
         var_184.zpp_inner._validate = gravity_validate;
      }
      
      public final function method_733(param1:ZPP_CbSet, param2:ZPP_CbSet) : void
      {
         var _loc4_:* = null as ZNPNode_ZPP_Interactor;
         var _loc5_:* = null as ZPP_Interactor;
         var _loc6_:* = null as ZPP_Compound;
         var _loc7_:* = null as ZNPNode_ZPP_Body;
         var _loc8_:* = null as ZPP_Body;
         var _loc9_:* = null as ZNPNode_ZPP_Compound;
         var _loc10_:* = null as ZPP_Compound;
         var _loc11_:* = null as ZPP_Shape;
         var _loc12_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc13_:* = null as ZPP_Arbiter;
         var _loc14_:* = null as ZPP_Interactor;
         var _loc15_:* = null as ZNPNode_ZPP_Interactor;
         var _loc16_:* = null as ZPP_Interactor;
         var _loc17_:* = null as ZPP_CallbackSet;
         var _loc18_:Boolean = false;
         var _loc19_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc20_:* = null as ZPP_Arbiter;
         var _loc21_:* = null as class_254;
         var _loc22_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc3_:class_213 = new class_213();
         _loc4_ = param1.name_26.var_73;
         while(_loc4_ != null)
         {
            _loc5_ = _loc4_.var_74;
            _loc3_.add(_loc5_);
            _loc4_ = _loc4_.next;
         }
         if(param1 != param2)
         {
            _loc4_ = param2.name_26.var_73;
            while(_loc4_ != null)
            {
               _loc5_ = _loc4_.var_74;
               _loc3_.add(_loc5_);
               _loc4_ = _loc4_.next;
            }
         }
         while(_loc3_.var_73 != null)
         {
            _loc5_ = _loc3_.method_105();
            if(_loc5_.var_207 != null)
            {
               _loc6_ = _loc5_.var_207;
               _loc7_ = _loc6_.name_30.var_73;
               while(_loc7_ != null)
               {
                  _loc8_ = _loc7_.var_74;
                  _loc3_.add(_loc8_);
                  _loc7_ = _loc7_.next;
               }
               _loc9_ = _loc6_.name_27.var_73;
               while(_loc9_ != null)
               {
                  _loc10_ = _loc9_.var_74;
                  _loc3_.add(_loc10_);
                  _loc9_ = _loc9_.next;
               }
            }
            else
            {
               if(_loc5_.var_182 != null)
               {
                  _loc8_ = _loc5_.var_182;
               }
               else
               {
                  _loc8_ = _loc5_.var_160.body;
               }
               if(_loc5_.var_160 != null)
               {
                  _loc11_ = _loc5_.var_160;
               }
               else
               {
                  _loc11_ = null;
               }
               _loc12_ = _loc8_.name_12.var_73;
               while(_loc12_ != null)
               {
                  _loc13_ = _loc12_.var_74;
                  if(!_loc13_.var_639)
                  {
                     _loc12_ = _loc12_.next;
                  }
                  else if(_loc11_ != null && !(_loc13_.ws1 == _loc11_ || _loc13_.ws2 == _loc11_))
                  {
                     _loc12_ = _loc12_.next;
                  }
                  else
                  {
                     MRCA_chains(_loc13_.ws1,_loc13_.ws2);
                     _loc4_ = mrca1.var_73;
                     while(_loc4_ != null)
                     {
                        _loc14_ = _loc4_.var_74;
                        if(_loc14_.var_134 != param1 && _loc14_.var_134 != param2)
                        {
                           _loc4_ = _loc4_.next;
                        }
                        else
                        {
                           _loc15_ = mrca2.var_73;
                           while(_loc15_ != null)
                           {
                              _loc16_ = _loc15_.var_74;
                              if(_loc14_.var_134 == param1 && _loc16_.var_134 != param2 || _loc14_.var_134 == param2 && _loc16_.var_134 != param1)
                              {
                                 _loc15_ = _loc15_.next;
                              }
                              else
                              {
                                 _loc17_ = ZPP_Interactor.method_65(_loc14_,_loc16_);
                                 if(_loc17_ == null)
                                 {
                                    _loc17_ = ZPP_CallbackSet.method_65(_loc14_,_loc16_);
                                    add_callbackset(_loc17_);
                                 }
                                 _loc18_ = false;
                                 _loc19_ = _loc17_.name_12.var_73;
                                 while(_loc19_ != null)
                                 {
                                    _loc20_ = _loc19_.var_74;
                                    if(_loc20_ == _loc13_)
                                    {
                                       _loc18_ = true;
                                       break;
                                    }
                                    _loc19_ = _loc19_.next;
                                 }
                                 if(!_loc18_)
                                 {
                                    _loc21_ = _loc17_.name_12;
                                    if(ZNPNode_ZPP_Arbiter.var_72 == null)
                                    {
                                       _loc22_ = new ZNPNode_ZPP_Arbiter();
                                    }
                                    else
                                    {
                                       _loc22_ = ZNPNode_ZPP_Arbiter.var_72;
                                       ZNPNode_ZPP_Arbiter.var_72 = _loc22_.next;
                                       _loc22_.next = null;
                                    }
                                    null;
                                    _loc22_.var_74 = _loc13_;
                                    _loc19_ = _loc22_;
                                    _loc19_.next = _loc21_.var_73;
                                    _loc21_.var_73 = _loc19_;
                                    _loc21_.name_2 = true;
                                    _loc21_.length = _loc21_.length + 1;
                                    _loc13_;
                                    §§push(true);
                                 }
                                 else
                                 {
                                    §§push(false);
                                 }
                                 _loc13_.var_304 = _loc13_.var_304 + 1;
                                 _loc15_ = _loc15_.next;
                              }
                           }
                           _loc4_ = _loc4_.next;
                        }
                     }
                     _loc12_ = _loc12_.next;
                  }
               }
            }
         }
      }
      
      public final function method_242(param1:ZPP_Interactor, param2:ZPP_Interactor = undefined) : void
      {
         var _loc3_:* = null as ZPP_Compound;
         var _loc4_:* = null as ZNPNode_ZPP_Body;
         var _loc5_:* = null as ZPP_Body;
         var _loc6_:* = null as ZNPNode_ZPP_Compound;
         var _loc7_:* = null as ZPP_Compound;
         var _loc8_:* = null as ZPP_Shape;
         var _loc9_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc10_:* = null as ZPP_Arbiter;
         var _loc11_:* = null as ZNPNode_ZPP_Interactor;
         var _loc12_:* = null as ZPP_Interactor;
         var _loc13_:* = null as ZNPNode_ZPP_Interactor;
         var _loc14_:* = null as ZPP_Interactor;
         var _loc15_:* = null as ZPP_CbSet;
         var _loc16_:* = null as ZPP_CbSet;
         var _loc17_:* = null as ZPP_CbSetPair;
         var _loc18_:* = null as ZPP_CbSetPair;
         var _loc19_:* = null as class_303;
         var _loc20_:* = null as ZNPNode_ZPP_CbSetPair;
         var _loc21_:* = null as ZPP_CbSetPair;
         var _loc22_:* = null as ZPP_CallbackSet;
         var _loc23_:Boolean = false;
         var _loc24_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc25_:* = null as ZPP_Arbiter;
         var _loc26_:* = null as class_254;
         var _loc27_:* = null as ZNPNode_ZPP_Arbiter;
         if(param2 == null)
         {
            param2 = param1;
         }
         if(param1.var_207 != null)
         {
            _loc3_ = param1.var_207;
            _loc4_ = _loc3_.name_30.var_73;
            while(_loc4_ != null)
            {
               _loc5_ = _loc4_.var_74;
               method_242(_loc5_,param2);
               _loc4_ = _loc4_.next;
            }
            _loc6_ = _loc3_.name_27.var_73;
            while(_loc6_ != null)
            {
               _loc7_ = _loc6_.var_74;
               method_242(_loc7_,param2);
               _loc6_ = _loc6_.next;
            }
         }
         else
         {
            if(param1.var_182 != null)
            {
               _loc5_ = param1.var_182;
            }
            else
            {
               _loc5_ = param1.var_160.body;
            }
            if(param1.var_160 != null)
            {
               _loc8_ = param1.var_160;
            }
            else
            {
               _loc8_ = null;
            }
            _loc9_ = _loc5_.name_12.var_73;
            while(_loc9_ != null)
            {
               _loc10_ = _loc9_.var_74;
               if(!_loc10_.var_639)
               {
                  _loc9_ = _loc9_.next;
               }
               else if(_loc8_ != null && !(_loc10_.ws1 == _loc8_ || _loc10_.ws2 == _loc8_))
               {
                  _loc9_ = _loc9_.next;
               }
               else
               {
                  MRCA_chains(_loc10_.ws1,_loc10_.ws2);
                  _loc11_ = mrca1.var_73;
                  while(_loc11_ != null)
                  {
                     _loc12_ = _loc11_.var_74;
                     _loc13_ = mrca2.var_73;
                     while(_loc13_ != null)
                     {
                        _loc14_ = _loc13_.var_74;
                        if(_loc12_ != param2 && _loc14_ != param2)
                        {
                           _loc13_ = _loc13_.next;
                        }
                        else
                        {
                           _loc15_ = _loc12_.var_134;
                           _loc16_ = _loc14_.var_134;
                           _loc15_.validate();
                           _loc16_.validate();
                           _loc18_ = null;
                           if(_loc15_.var_141.length < _loc16_.var_141.length)
                           {
                              _loc19_ = _loc15_.var_141;
                           }
                           else
                           {
                              _loc19_ = _loc16_.var_141;
                           }
                           _loc20_ = _loc19_.var_73;
                           while(_loc20_ != null)
                           {
                              _loc21_ = _loc20_.var_74;
                              if(_loc21_.a == _loc15_ && _loc21_.b == _loc16_ || _loc21_.a == _loc16_ && _loc21_.b == _loc15_)
                              {
                                 _loc18_ = _loc21_;
                                 break;
                              }
                              _loc20_ = _loc20_.next;
                           }
                           if(_loc18_ == null)
                           {
                              if(ZPP_CbSetPair.var_72 == null)
                              {
                                 _loc21_ = new ZPP_CbSetPair();
                              }
                              else
                              {
                                 _loc21_ = ZPP_CbSetPair.var_72;
                                 ZPP_CbSetPair.var_72 = _loc21_.next;
                                 _loc21_.next = null;
                              }
                              _loc21_.var_145 = true;
                              if(ZPP_CbSet.method_117(_loc15_,_loc16_))
                              {
                                 _loc21_.a = _loc15_;
                                 _loc21_.b = _loc16_;
                              }
                              else
                              {
                                 _loc21_.a = _loc16_;
                                 _loc21_.b = _loc15_;
                              }
                              _loc18_ = _loc21_;
                              _loc15_.var_141.add(_loc18_);
                              if(_loc16_ != _loc15_)
                              {
                                 _loc16_.var_141.add(_loc18_);
                              }
                           }
                           if(_loc18_.var_145)
                           {
                              _loc18_.var_145 = false;
                              _loc18_.method_138();
                           }
                           _loc17_ = _loc18_;
                           if(_loc17_.name_15.var_73 != null)
                           {
                              _loc22_ = ZPP_Interactor.method_65(_loc12_,_loc14_);
                              if(_loc22_ == null)
                              {
                                 _loc22_ = ZPP_CallbackSet.method_65(_loc12_,_loc14_);
                                 add_callbackset(_loc22_);
                              }
                              _loc23_ = false;
                              _loc24_ = _loc22_.name_12.var_73;
                              while(_loc24_ != null)
                              {
                                 _loc25_ = _loc24_.var_74;
                                 if(_loc25_ == _loc10_)
                                 {
                                    _loc23_ = true;
                                    break;
                                 }
                                 _loc24_ = _loc24_.next;
                              }
                              if(!_loc23_)
                              {
                                 _loc26_ = _loc22_.name_12;
                                 if(ZNPNode_ZPP_Arbiter.var_72 == null)
                                 {
                                    _loc27_ = new ZNPNode_ZPP_Arbiter();
                                 }
                                 else
                                 {
                                    _loc27_ = ZNPNode_ZPP_Arbiter.var_72;
                                    ZNPNode_ZPP_Arbiter.var_72 = _loc27_.next;
                                    _loc27_.next = null;
                                 }
                                 null;
                                 _loc27_.var_74 = _loc10_;
                                 _loc24_ = _loc27_;
                                 _loc24_.next = _loc26_.var_73;
                                 _loc26_.var_73 = _loc24_;
                                 _loc26_.name_2 = true;
                                 _loc26_.length = _loc26_.length + 1;
                                 _loc10_;
                                 §§push(true);
                              }
                              else
                              {
                                 §§push(false);
                              }
                              _loc10_.var_304 = _loc10_.var_304 + 1;
                           }
                           _loc13_ = _loc13_.next;
                        }
                     }
                     _loc11_ = _loc11_.next;
                  }
                  _loc9_ = _loc9_.next;
               }
            }
         }
      }
      
      public final function doForests(param1:Number) : void
      {
         var _loc3_:* = null as ZPP_ColArbiter;
         var _loc4_:* = null as ZPP_Component;
         var _loc5_:* = null as ZPP_Component;
         var _loc6_:* = null as ZPP_Component;
         var _loc7_:* = null as ZPP_Component;
         var _loc8_:* = null as ZPP_Component;
         var _loc10_:* = null as ZPP_FluidArbiter;
         var _loc11_:* = null as ZNPNode_ZPP_Constraint;
         var _loc12_:* = null as ZPP_Constraint;
         var _loc13_:* = null as ZPP_Body;
         var _loc14_:* = null as class_291;
         var _loc15_:* = null as ZPP_Body;
         var _loc16_:* = null as ZPP_Island;
         var _loc17_:* = null as ZPP_Island;
         var _loc18_:* = null as ZPP_Island;
         var _loc19_:* = null as class_300;
         var _loc20_:* = null as ZNPNode_ZPP_Component;
         var _loc21_:* = null as ZNPNode_ZPP_Component;
         var _loc22_:Boolean = false;
         var _loc23_:* = null as class_287;
         var _loc24_:* = null as ZPP_Constraint;
         var _loc25_:* = null as ZNPNode_ZPP_Shape;
         var _loc26_:* = null as ZPP_Shape;
         var _loc27_:* = null as ZNPNode_ZPP_Body;
         var _loc28_:* = null as ZNPNode_ZPP_Body;
         var _loc29_:* = null as ZNPNode_ZPP_Constraint;
         var _loc2_:ZNPNode_ZPP_ColArbiter = var_175.var_73;
         while(_loc2_ != null)
         {
            _loc3_ = _loc2_.var_74;
            if(!_loc3_.var_265 && _loc3_.var_360 == var_114 && (_loc3_.var_181 & class_223.var_267) != 0)
            {
               if(_loc3_.b1.type == class_223.var_188 && _loc3_.b2.type == class_223.var_188)
               {
                  if(_loc3_.b1.var_112 == _loc3_.b1.var_112.parent)
                  {
                     _loc4_ = _loc3_.b1.var_112;
                  }
                  else
                  {
                     _loc5_ = _loc3_.b1.var_112;
                     _loc6_ = null;
                     while(_loc5_ != _loc5_.parent)
                     {
                        _loc7_ = _loc5_.parent;
                        _loc5_.parent = _loc6_;
                        _loc6_ = _loc5_;
                        _loc5_ = _loc7_;
                     }
                     while(_loc6_ != null)
                     {
                        _loc7_ = _loc6_.parent;
                        _loc6_.parent = _loc5_;
                        _loc6_ = _loc7_;
                     }
                     _loc4_ = _loc5_;
                  }
                  if(_loc3_.b2.var_112 == _loc3_.b2.var_112.parent)
                  {
                     _loc5_ = _loc3_.b2.var_112;
                  }
                  else
                  {
                     _loc6_ = _loc3_.b2.var_112;
                     _loc7_ = null;
                     while(_loc6_ != _loc6_.parent)
                     {
                        _loc8_ = _loc6_.parent;
                        _loc6_.parent = _loc7_;
                        _loc7_ = _loc6_;
                        _loc6_ = _loc8_;
                     }
                     while(_loc7_ != null)
                     {
                        _loc8_ = _loc7_.parent;
                        _loc7_.parent = _loc6_;
                        _loc7_ = _loc8_;
                     }
                     _loc5_ = _loc6_;
                  }
                  if(_loc4_ != _loc5_)
                  {
                     if(_loc4_.var_158 < _loc5_.var_158)
                     {
                        _loc4_.parent = _loc5_;
                     }
                     else if(_loc4_.var_158 > _loc5_.var_158)
                     {
                        _loc5_.parent = _loc4_;
                     }
                     else
                     {
                        _loc5_.parent = _loc4_;
                        _loc4_.var_158 = _loc4_.var_158 + 1;
                     }
                  }
               }
            }
            _loc2_ = _loc2_.next;
         }
         var _loc9_:ZNPNode_ZPP_FluidArbiter = var_217.var_73;
         while(_loc9_ != null)
         {
            _loc10_ = _loc9_.var_74;
            if(!_loc10_.var_265 && _loc10_.var_360 == var_114 && (_loc10_.var_181 & class_223.var_267) != 0)
            {
               if(_loc10_.b1.type == class_223.var_188 && _loc10_.b2.type == class_223.var_188)
               {
                  if(_loc10_.b1.var_112 == _loc10_.b1.var_112.parent)
                  {
                     _loc4_ = _loc10_.b1.var_112;
                  }
                  else
                  {
                     _loc5_ = _loc10_.b1.var_112;
                     _loc6_ = null;
                     while(_loc5_ != _loc5_.parent)
                     {
                        _loc7_ = _loc5_.parent;
                        _loc5_.parent = _loc6_;
                        _loc6_ = _loc5_;
                        _loc5_ = _loc7_;
                     }
                     while(_loc6_ != null)
                     {
                        _loc7_ = _loc6_.parent;
                        _loc6_.parent = _loc5_;
                        _loc6_ = _loc7_;
                     }
                     _loc4_ = _loc5_;
                  }
                  if(_loc10_.b2.var_112 == _loc10_.b2.var_112.parent)
                  {
                     _loc5_ = _loc10_.b2.var_112;
                  }
                  else
                  {
                     _loc6_ = _loc10_.b2.var_112;
                     _loc7_ = null;
                     while(_loc6_ != _loc6_.parent)
                     {
                        _loc8_ = _loc6_.parent;
                        _loc6_.parent = _loc7_;
                        _loc7_ = _loc6_;
                        _loc6_ = _loc8_;
                     }
                     while(_loc7_ != null)
                     {
                        _loc8_ = _loc7_.parent;
                        _loc7_.parent = _loc6_;
                        _loc7_ = _loc8_;
                     }
                     _loc5_ = _loc6_;
                  }
                  if(_loc4_ != _loc5_)
                  {
                     if(_loc4_.var_158 < _loc5_.var_158)
                     {
                        _loc4_.parent = _loc5_;
                     }
                     else if(_loc4_.var_158 > _loc5_.var_158)
                     {
                        _loc5_.parent = _loc4_;
                     }
                     else
                     {
                        _loc5_.parent = _loc4_;
                        _loc4_.var_158 = _loc4_.var_158 + 1;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.next;
         }
         _loc11_ = var_221.var_73;
         while(_loc11_ != null)
         {
            _loc12_ = _loc11_.var_74;
            _loc12_.method_438();
            _loc11_ = _loc11_.next;
         }
         while(live.var_73 != null)
         {
            _loc14_ = live;
            _loc15_ = _loc14_.var_73.var_74;
            _loc14_.pop();
            _loc13_ = _loc15_;
            _loc4_ = _loc13_.var_112;
            if(_loc4_ == _loc4_.parent)
            {
               _loc5_ = _loc4_;
            }
            else
            {
               _loc6_ = _loc4_;
               _loc7_ = null;
               while(_loc6_ != _loc6_.parent)
               {
                  _loc8_ = _loc6_.parent;
                  _loc6_.parent = _loc7_;
                  _loc7_ = _loc6_;
                  _loc6_ = _loc8_;
               }
               while(_loc7_ != null)
               {
                  _loc8_ = _loc7_.parent;
                  _loc7_.parent = _loc6_;
                  _loc7_ = _loc8_;
               }
               _loc5_ = _loc6_;
            }
            if(_loc5_.var_224 == null)
            {
               if(ZPP_Island.var_72 == null)
               {
                  _loc5_.var_224 = new ZPP_Island();
               }
               else
               {
                  _loc5_.var_224 = ZPP_Island.var_72;
                  ZPP_Island.var_72 = _loc5_.var_224.next;
                  _loc5_.var_224.next = null;
               }
               _loc5_.var_224.var_211 = 0;
               _loc16_ = var_546;
               _loc17_ = _loc5_.var_224;
               _loc17_.var_120 = true;
               _loc18_ = _loc17_;
               _loc18_.next = _loc16_.next;
               _loc16_.next = _loc18_;
               _loc16_.name_2 = true;
               _loc16_.length = _loc16_.length + 1;
               _loc17_;
               _loc5_.var_224.var_751 = true;
            }
            _loc4_.var_224 = _loc5_.var_224;
            _loc19_ = _loc4_.var_224.var_345;
            if(ZNPNode_ZPP_Component.var_72 == null)
            {
               _loc21_ = new ZNPNode_ZPP_Component();
            }
            else
            {
               _loc21_ = ZNPNode_ZPP_Component.var_72;
               ZNPNode_ZPP_Component.var_72 = _loc21_.next;
               _loc21_.next = null;
            }
            null;
            _loc21_.var_74 = _loc4_;
            _loc20_ = _loc21_;
            _loc20_.next = _loc19_.var_73;
            _loc19_.var_73 = _loc20_;
            _loc19_.name_2 = true;
            _loc19_.length = _loc19_.length + 1;
            _loc4_;
            _loc22_ = _loc13_.method_610(param1);
            _loc4_.var_224.var_751 = !!_loc4_.var_224.var_751 && _loc22_;
            if(_loc4_.var_211 > _loc4_.var_224.var_211)
            {
               _loc4_.var_224.var_211 = _loc4_.var_211;
            }
         }
         while(var_221.var_73 != null)
         {
            _loc23_ = var_221;
            _loc24_ = _loc23_.var_73.var_74;
            _loc23_.pop();
            _loc12_ = _loc24_;
            _loc4_ = _loc12_.var_112;
            if(_loc4_ == _loc4_.parent)
            {
               _loc5_ = _loc4_;
            }
            else
            {
               _loc6_ = _loc4_;
               _loc7_ = null;
               while(_loc6_ != _loc6_.parent)
               {
                  _loc8_ = _loc6_.parent;
                  _loc6_.parent = _loc7_;
                  _loc7_ = _loc6_;
                  _loc6_ = _loc8_;
               }
               while(_loc7_ != null)
               {
                  _loc8_ = _loc7_.parent;
                  _loc7_.parent = _loc6_;
                  _loc7_ = _loc8_;
               }
               _loc5_ = _loc6_;
            }
            _loc4_.var_224 = _loc5_.var_224;
            _loc19_ = _loc4_.var_224.var_345;
            if(ZNPNode_ZPP_Component.var_72 == null)
            {
               _loc21_ = new ZNPNode_ZPP_Component();
            }
            else
            {
               _loc21_ = ZNPNode_ZPP_Component.var_72;
               ZNPNode_ZPP_Component.var_72 = _loc21_.next;
               _loc21_.next = null;
            }
            null;
            _loc21_.var_74 = _loc4_;
            _loc20_ = _loc21_;
            _loc20_.next = _loc19_.var_73;
            _loc19_.var_73 = _loc20_;
            _loc19_.name_2 = true;
            _loc19_.length = _loc19_.length + 1;
            _loc4_;
            if(_loc4_.var_211 > _loc4_.var_224.var_211)
            {
               _loc4_.var_224.var_211 = _loc4_.var_211;
            }
         }
         while(var_546.next != null)
         {
            _loc17_ = var_546;
            _loc18_ = _loc17_.next;
            _loc17_.pop();
            _loc16_ = _loc18_;
            if(_loc16_.var_751)
            {
               _loc20_ = _loc16_.var_345.var_73;
               while(_loc20_ != null)
               {
                  _loc4_ = _loc20_.var_74;
                  if(_loc4_.name_75)
                  {
                     _loc13_ = _loc4_.body;
                     _loc13_.var_104 = 0;
                     _loc13_.var_105 = 0;
                     _loc13_.var_94 = 0;
                     _loc4_.var_129 = true;
                     _loc25_ = _loc13_.shapes.var_73;
                     while(_loc25_ != null)
                     {
                        _loc26_ = _loc25_.var_74;
                        var_166.method_226(_loc26_);
                        _loc25_ = _loc25_.next;
                     }
                     bodyCbSleep(_loc13_);
                  }
                  else
                  {
                     _loc12_ = _loc4_.name_44;
                     constraintCbSleep(_loc12_);
                     _loc4_.var_129 = true;
                  }
                  _loc20_ = _loc20_.next;
               }
            }
            else
            {
               while(_loc16_.var_345.var_73 != null)
               {
                  _loc19_ = _loc16_.var_345;
                  _loc5_ = _loc19_.var_73.var_74;
                  _loc19_.pop();
                  _loc4_ = _loc5_;
                  _loc4_.var_211 = _loc16_.var_211;
                  if(_loc4_.name_75)
                  {
                     _loc14_ = live;
                     _loc13_ = _loc4_.body;
                     if(ZNPNode_ZPP_Body.var_72 == null)
                     {
                        _loc28_ = new ZNPNode_ZPP_Body();
                     }
                     else
                     {
                        _loc28_ = ZNPNode_ZPP_Body.var_72;
                        ZNPNode_ZPP_Body.var_72 = _loc28_.next;
                        _loc28_.next = null;
                     }
                     null;
                     _loc28_.var_74 = _loc13_;
                     _loc27_ = _loc28_;
                     _loc27_.next = _loc14_.var_73;
                     _loc14_.var_73 = _loc27_;
                     _loc14_.name_2 = true;
                     _loc14_.length = _loc14_.length + 1;
                     _loc13_;
                  }
                  else
                  {
                     _loc23_ = var_221;
                     _loc12_ = _loc4_.name_44;
                     if(ZNPNode_ZPP_Constraint.var_72 == null)
                     {
                        _loc29_ = new ZNPNode_ZPP_Constraint();
                     }
                     else
                     {
                        _loc29_ = ZNPNode_ZPP_Constraint.var_72;
                        ZNPNode_ZPP_Constraint.var_72 = _loc29_.next;
                        _loc29_.next = null;
                     }
                     null;
                     _loc29_.var_74 = _loc12_;
                     _loc11_ = _loc29_;
                     _loc11_.next = _loc23_.var_73;
                     _loc23_.var_73 = _loc11_;
                     _loc23_.name_2 = true;
                     _loc23_.length = _loc23_.length + 1;
                     _loc12_;
                  }
                  _loc4_.var_129 = false;
                  _loc4_.var_224 = null;
                  _loc4_.parent = _loc4_;
                  _loc4_.var_158 = 0;
               }
               _loc17_ = _loc16_;
               _loc17_.next = ZPP_Island.var_72;
               ZPP_Island.var_72 = _loc17_;
            }
         }
      }
      
      public final function method_431(param1:ZPP_Shape, param2:Number, param3:class_222, param4:Boolean, param5:class_236) : class_236
      {
         var _loc6_:* = null as ZPP_ToiEvent;
         var _loc7_:* = null as ZPP_Shape;
         var _loc8_:* = null as ZPP_Circle;
         var _loc9_:* = null as ZPP_Polygon;
         var _loc10_:* = NaN;
         var _loc11_:* = null as ZPP_Vec2;
         var _loc12_:* = null as ZPP_Vec2;
         var _loc13_:* = null as ZPP_Vec2;
         var _loc14_:* = null as ZPP_Vec2;
         var _loc15_:Number = NaN;
         var _loc16_:* = null as ZPP_Vec2;
         var _loc17_:* = null as ZPP_Body;
         var _loc18_:* = null as ZNPNode_ZPP_Edge;
         var _loc19_:* = null as ZPP_Edge;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:* = null as ZPP_AABB;
         var _loc28_:* = null as class_230;
         var _loc30_:* = null as Vec2;
         var _loc31_:* = null as class_236;
         var _loc33_:* = null as Shape;
         var _loc34_:int = 0;
         var _loc35_:* = null as ZPP_Body;
         var _loc36_:Number = NaN;
         var _loc37_:Number = NaN;
         var _loc38_:Number = NaN;
         var _loc39_:* = null as ConvexResult;
         var _loc40_:Boolean = false;
         var _loc41_:Boolean = false;
         var _loc42_:* = null as ZNPNode_ConvexResult;
         var _loc43_:* = null as ZNPNode_ConvexResult;
         var _loc44_:* = null as ConvexResult;
         var _loc45_:* = null as class_306;
         var _loc46_:* = null as ZNPNode_ConvexResult;
         if(ZPP_ToiEvent.var_72 == null)
         {
            _loc6_ = new ZPP_ToiEvent();
         }
         else
         {
            _loc6_ = ZPP_ToiEvent.var_72;
            ZPP_ToiEvent.var_72 = _loc6_.next;
            _loc6_.next = null;
         }
         _loc6_.var_143 = false;
         _loc7_ = null;
         _loc6_.s2 = _loc7_;
         _loc6_.s1 = _loc7_;
         _loc6_.name_20 = null;
         if(param1.type == class_223.var_131)
         {
            _loc8_ = param1.var_102;
            if(_loc8_.var_139)
            {
               if(_loc8_.body != null)
               {
                  _loc8_.var_139 = false;
                  if(_loc8_.var_140)
                  {
                     _loc8_.var_140 = false;
                     if(_loc8_.type == class_223.var_155)
                     {
                        _loc9_ = _loc8_.name_6;
                        if(_loc9_.var_88.next.next == null)
                        {
                           _loc9_.var_82 = _loc9_.var_88.next.x;
                           _loc9_.var_81 = _loc9_.var_88.next.y;
                           null;
                        }
                        else if(_loc9_.var_88.next.next.next == null)
                        {
                           _loc9_.var_82 = _loc9_.var_88.next.x;
                           _loc9_.var_81 = _loc9_.var_88.next.y;
                           _loc10_ = 1;
                           _loc9_.var_82 = Number(_loc9_.var_82 + _loc9_.var_88.next.next.x * _loc10_);
                           _loc9_.var_81 = Number(_loc9_.var_81 + _loc9_.var_88.next.next.y * _loc10_);
                           _loc10_ = 0.5;
                           _loc9_.var_82 = _loc9_.var_82 * _loc10_;
                           _loc9_.var_81 = _loc9_.var_81 * _loc10_;
                        }
                        else
                        {
                           _loc9_.var_82 = 0;
                           _loc9_.var_81 = 0;
                           _loc10_ = 0;
                           _loc11_ = _loc9_.var_88.next;
                           _loc12_ = _loc11_;
                           _loc11_ = _loc11_.next;
                           _loc13_ = _loc11_;
                           _loc11_ = _loc11_.next;
                           while(_loc11_ != null)
                           {
                              _loc14_ = _loc11_;
                              _loc10_ = Number(Number(_loc10_ + _loc13_.x * (_loc14_.y - _loc12_.y)));
                              _loc15_ = _loc14_.y * _loc13_.x - _loc14_.x * _loc13_.y;
                              _loc9_.var_82 = Number(_loc9_.var_82 + (_loc13_.x + _loc14_.x) * _loc15_);
                              _loc9_.var_81 = Number(_loc9_.var_81 + (_loc13_.y + _loc14_.y) * _loc15_);
                              _loc12_ = _loc13_;
                              _loc13_ = _loc14_;
                              _loc11_ = _loc11_.next;
                           }
                           _loc11_ = _loc9_.var_88.next;
                           _loc14_ = _loc11_;
                           _loc10_ = Number(Number(_loc10_ + _loc13_.x * (_loc14_.y - _loc12_.y)));
                           _loc15_ = _loc14_.y * _loc13_.x - _loc14_.x * _loc13_.y;
                           _loc9_.var_82 = Number(_loc9_.var_82 + (_loc13_.x + _loc14_.x) * _loc15_);
                           _loc9_.var_81 = Number(_loc9_.var_81 + (_loc13_.y + _loc14_.y) * _loc15_);
                           _loc12_ = _loc13_;
                           _loc13_ = _loc14_;
                           _loc11_ = _loc11_.next;
                           _loc16_ = _loc11_;
                           _loc10_ = Number(Number(_loc10_ + _loc13_.x * (_loc16_.y - _loc12_.y)));
                           _loc15_ = _loc16_.y * _loc13_.x - _loc16_.x * _loc13_.y;
                           _loc9_.var_82 = Number(_loc9_.var_82 + (_loc13_.x + _loc16_.x) * _loc15_);
                           _loc9_.var_81 = Number(_loc9_.var_81 + (_loc13_.y + _loc16_.y) * _loc15_);
                           _loc10_ = Number(1 / (3 * _loc10_));
                           _loc15_ = _loc10_;
                           _loc9_.var_82 = _loc9_.var_82 * _loc15_;
                           _loc9_.var_81 = _loc9_.var_81 * _loc15_;
                        }
                     }
                     if(_loc8_.var_115 != null)
                     {
                        _loc8_.var_115.zpp_inner.x = _loc8_.var_82;
                        _loc8_.var_115.zpp_inner.y = _loc8_.var_81;
                     }
                  }
                  _loc17_ = _loc8_.body;
                  if(_loc17_.var_113)
                  {
                     _loc17_.var_113 = false;
                     _loc17_.var_84 = Number(Math.sin(_loc17_.var_93));
                     _loc17_.var_83 = Number(Math.cos(_loc17_.var_93));
                     null;
                  }
                  _loc8_.var_99 = Number(_loc8_.body.var_95 + (_loc8_.body.var_83 * _loc8_.var_82 - _loc8_.body.var_84 * _loc8_.var_81));
                  _loc8_.var_100 = Number(_loc8_.body.var_96 + (Number(_loc8_.var_82 * _loc8_.body.var_84 + _loc8_.var_81 * _loc8_.body.var_83)));
               }
            }
         }
         else
         {
            _loc9_ = param1.name_6;
            if(_loc9_.var_247)
            {
               if(_loc9_.body != null)
               {
                  _loc9_.var_247 = false;
                  _loc9_.method_124();
                  _loc17_ = _loc9_.body;
                  if(_loc17_.var_113)
                  {
                     _loc17_.var_113 = false;
                     _loc17_.var_84 = Number(Math.sin(_loc17_.var_93));
                     _loc17_.var_83 = Number(Math.cos(_loc17_.var_93));
                     null;
                  }
                  if(_loc9_.var_153)
                  {
                     if(_loc9_.body != null)
                     {
                        _loc9_.var_153 = false;
                        _loc9_.method_116();
                        _loc17_ = _loc9_.body;
                        if(_loc17_.var_113)
                        {
                           _loc17_.var_113 = false;
                           _loc17_.var_84 = Number(Math.sin(_loc17_.var_93));
                           _loc17_.var_83 = Number(Math.cos(_loc17_.var_93));
                           null;
                        }
                        _loc11_ = _loc9_.var_88.next;
                        _loc12_ = _loc9_.var_107.next;
                        while(_loc12_ != null)
                        {
                           _loc13_ = _loc12_;
                           _loc14_ = _loc11_;
                           _loc11_ = _loc11_.next;
                           _loc13_.x = Number(_loc9_.body.var_95 + (_loc9_.body.var_83 * _loc14_.x - _loc9_.body.var_84 * _loc14_.y));
                           _loc13_.y = Number(_loc9_.body.var_96 + (Number(_loc14_.x * _loc9_.body.var_84 + _loc14_.y * _loc9_.body.var_83)));
                           _loc12_ = _loc12_.next;
                        }
                     }
                  }
                  _loc18_ = _loc9_.name_11.var_73;
                  _loc11_ = _loc9_.var_107.next;
                  _loc12_ = _loc11_;
                  _loc11_ = _loc11_.next;
                  while(_loc11_ != null)
                  {
                     _loc13_ = _loc11_;
                     _loc19_ = _loc18_.var_74;
                     _loc18_ = _loc18_.next;
                     _loc19_.gp0 = _loc12_;
                     _loc19_.gp1 = _loc13_;
                     _loc19_.var_92 = _loc9_.body.var_83 * _loc19_.var_122 - _loc9_.body.var_84 * _loc19_.var_121;
                     _loc19_.var_91 = Number(_loc19_.var_122 * _loc9_.body.var_84 + _loc19_.var_121 * _loc9_.body.var_83);
                     _loc19_.gprojection = Number(Number(_loc9_.body.var_95 * _loc19_.var_92 + _loc9_.body.var_96 * _loc19_.var_91) + _loc19_.var_165);
                     if(_loc19_.wrap_gnorm != null)
                     {
                        _loc19_.wrap_gnorm.zpp_inner.x = _loc19_.var_92;
                        _loc19_.wrap_gnorm.zpp_inner.y = _loc19_.var_91;
                     }
                     _loc19_.tp0 = _loc19_.gp0.y * _loc19_.var_92 - _loc19_.gp0.x * _loc19_.var_91;
                     _loc19_.tp1 = _loc19_.gp1.y * _loc19_.var_92 - _loc19_.gp1.x * _loc19_.var_91;
                     _loc12_ = _loc13_;
                     _loc11_ = _loc11_.next;
                  }
                  _loc13_ = _loc9_.var_107.next;
                  _loc19_ = _loc18_.var_74;
                  _loc18_ = _loc18_.next;
                  _loc19_.gp0 = _loc12_;
                  _loc19_.gp1 = _loc13_;
                  _loc19_.var_92 = _loc9_.body.var_83 * _loc19_.var_122 - _loc9_.body.var_84 * _loc19_.var_121;
                  _loc19_.var_91 = Number(_loc19_.var_122 * _loc9_.body.var_84 + _loc19_.var_121 * _loc9_.body.var_83);
                  _loc19_.gprojection = Number(Number(_loc9_.body.var_95 * _loc19_.var_92 + _loc9_.body.var_96 * _loc19_.var_91) + _loc19_.var_165);
                  if(_loc19_.wrap_gnorm != null)
                  {
                     _loc19_.wrap_gnorm.zpp_inner.x = _loc19_.var_92;
                     _loc19_.wrap_gnorm.zpp_inner.y = _loc19_.var_91;
                  }
                  _loc19_.tp0 = _loc19_.gp0.y * _loc19_.var_92 - _loc19_.gp0.x * _loc19_.var_91;
                  _loc19_.tp1 = _loc19_.gp1.y * _loc19_.var_92 - _loc19_.gp1.x * _loc19_.var_91;
               }
            }
         }
         _loc17_ = param1.body;
         _loc10_ = Number(_loc17_.var_95);
         _loc15_ = _loc17_.var_96;
         _loc17_.var_176 = 0;
         _loc17_.var_191 = _loc17_.var_94;
         var _loc20_:Number = param2 - _loc17_.var_176;
         if(_loc20_ != 0)
         {
            _loc17_.var_176 = param2;
            _loc21_ = _loc20_;
            _loc17_.var_95 = Number(_loc17_.var_95 + _loc17_.var_104 * _loc21_);
            _loc17_.var_96 = Number(_loc17_.var_96 + _loc17_.var_105 * _loc21_);
            if(_loc17_.var_94 != 0)
            {
               _loc21_ = _loc17_.var_191 * _loc20_;
               _loc17_.var_93 = Number(_loc17_.var_93 + _loc21_);
               if(_loc21_ * _loc21_ > 0.0001)
               {
                  _loc17_.var_84 = Number(Math.sin(_loc17_.var_93));
                  _loc17_.var_83 = Number(Math.cos(_loc17_.var_93));
                  null;
               }
               else
               {
                  _loc22_ = _loc21_ * _loc21_;
                  _loc23_ = 1 - 0.5 * _loc22_;
                  _loc24_ = 1 - _loc22_ * _loc22_ / 8;
                  _loc25_ = (_loc23_ * _loc17_.var_84 + _loc21_ * _loc17_.var_83) * _loc24_;
                  _loc17_.var_83 = (_loc23_ * _loc17_.var_83 - _loc21_ * _loc17_.var_84) * _loc24_;
                  _loc17_.var_84 = _loc25_;
               }
            }
         }
         _loc20_ = _loc17_.var_95;
         _loc21_ = _loc17_.var_96;
         param1.method_257();
         _loc22_ = param1.var_258;
         if(ZPP_AABB.var_72 == null)
         {
            _loc26_ = new ZPP_AABB();
         }
         else
         {
            _loc26_ = ZPP_AABB.var_72;
            ZPP_AABB.var_72 = _loc26_.next;
            _loc26_.next = null;
         }
         null;
         _loc23_ = _loc10_;
         _loc24_ = _loc20_;
         _loc26_.var_77 = (_loc23_ < _loc24_?_loc23_:_loc24_) - _loc22_;
         _loc23_ = _loc10_;
         _loc24_ = _loc20_;
         _loc26_.var_79 = Number((_loc23_ > _loc24_?_loc23_:_loc24_) + _loc22_);
         _loc23_ = _loc15_;
         _loc24_ = _loc21_;
         _loc26_.var_78 = (_loc23_ < _loc24_?_loc23_:_loc24_) - _loc22_;
         _loc23_ = _loc15_;
         _loc24_ = _loc21_;
         _loc26_.var_80 = Number((_loc23_ > _loc24_?_loc23_:_loc24_) + _loc22_);
         _loc28_ = var_166.method_178(_loc26_,false,false,param3 == null?null:param3.zpp_inner,var_536);
         var_536 = _loc28_;
         var _loc27_:class_230 = _loc28_;
         var _loc29_:ZPP_AABB = _loc26_;
         if(_loc29_.outer != null)
         {
            _loc29_.outer.zpp_inner = null;
            _loc29_.outer = null;
         }
         _loc30_ = null;
         _loc29_.var_239 = _loc30_;
         _loc29_.var_238 = _loc30_;
         _loc29_._invalidate = null;
         _loc29_._validate = null;
         _loc29_.next = ZPP_AABB.var_72;
         ZPP_AABB.var_72 = _loc29_;
         if(param5 == null)
         {
            _loc31_ = new class_236();
         }
         else
         {
            _loc31_ = param5;
         }
         _loc27_.zpp_inner.method_104();
         var _loc32_:class_226 = class_226.method_65(_loc27_);
         while(true)
         {
            _loc32_.zpp_inner.zpp_inner.method_104();
            _loc28_ = _loc32_.zpp_inner;
            _loc28_.zpp_inner.method_104();
            if(_loc28_.zpp_inner.var_86)
            {
               _loc28_.zpp_inner.var_86 = false;
               _loc28_.zpp_inner.var_89 = _loc28_.zpp_inner.name_4.length;
            }
            _loc34_ = _loc28_.zpp_inner.var_89;
            _loc32_.var_98 = true;
            if(_loc32_.var_90 < _loc34_)
            {
               §§push(true);
            }
            else
            {
               _loc32_.var_106 = class_226.var_72;
               class_226.var_72 = _loc32_;
               _loc32_.zpp_inner = null;
            }
            _loc32_.var_98 = false;
            _loc34_ = _loc32_.var_90;
            _loc32_.var_90 = _loc32_.var_90 + 1;
            _loc33_ = _loc32_.zpp_inner.at(_loc34_);
            if(_loc33_ != param1.outer && (_loc33_.zpp_inner.body != null?_loc33_.zpp_inner.body.outer:null) != _loc17_.outer)
            {
               _loc6_.s1 = param1;
               _loc6_.s2 = _loc33_.zpp_inner;
               if(param4)
               {
                  _loc33_.zpp_inner.method_257();
                  (_loc33_.zpp_inner.body != null?_loc33_.zpp_inner.body.outer:null).zpp_inner.var_191 = (_loc33_.zpp_inner.body != null?_loc33_.zpp_inner.body.outer:null).zpp_inner.var_94;
                  (_loc33_.zpp_inner.body != null?_loc33_.zpp_inner.body.outer:null).zpp_inner.var_176 = 0;
                  class_304.method_366(_loc6_,param2,0,0,true);
                  _loc35_ = (_loc33_.zpp_inner.body != null?_loc33_.zpp_inner.body.outer:null).zpp_inner;
                  _loc23_ = 0 - _loc35_.var_176;
                  if(_loc23_ != 0)
                  {
                     _loc35_.var_176 = 0;
                     _loc24_ = _loc23_;
                     _loc35_.var_95 = Number(_loc35_.var_95 + _loc35_.var_104 * _loc24_);
                     _loc35_.var_96 = Number(_loc35_.var_96 + _loc35_.var_105 * _loc24_);
                     if(_loc35_.var_94 != 0)
                     {
                        _loc24_ = _loc35_.var_191 * _loc23_;
                        _loc35_.var_93 = Number(_loc35_.var_93 + _loc24_);
                        if(_loc24_ * _loc24_ > 0.0001)
                        {
                           _loc35_.var_84 = Number(Math.sin(_loc35_.var_93));
                           _loc35_.var_83 = Number(Math.cos(_loc35_.var_93));
                           null;
                        }
                        else
                        {
                           _loc25_ = _loc24_ * _loc24_;
                           _loc36_ = 1 - 0.5 * _loc25_;
                           _loc37_ = 1 - _loc25_ * _loc25_ / 8;
                           _loc38_ = (_loc36_ * _loc35_.var_84 + _loc24_ * _loc35_.var_83) * _loc37_;
                           _loc35_.var_83 = (_loc36_ * _loc35_.var_83 - _loc24_ * _loc35_.var_84) * _loc37_;
                           _loc35_.var_84 = _loc38_;
                        }
                     }
                  }
                  _loc35_ = (_loc33_.zpp_inner.body != null?_loc33_.zpp_inner.body.outer:null).zpp_inner;
                  _loc7_ = _loc33_.zpp_inner;
                  if(_loc7_.type == class_223.var_131)
                  {
                     _loc7_.var_99 = Number(_loc35_.var_95 + (_loc35_.var_83 * _loc7_.var_82 - _loc35_.var_84 * _loc7_.var_81));
                     _loc7_.var_100 = Number(_loc35_.var_96 + (Number(_loc7_.var_82 * _loc35_.var_84 + _loc7_.var_81 * _loc35_.var_83)));
                  }
                  else
                  {
                     _loc9_ = _loc7_.name_6;
                     _loc11_ = _loc9_.var_88.next;
                     _loc12_ = _loc9_.var_107.next;
                     while(_loc12_ != null)
                     {
                        _loc13_ = _loc12_;
                        _loc14_ = _loc11_;
                        _loc11_ = _loc11_.next;
                        _loc13_.x = Number(_loc35_.var_95 + (_loc35_.var_83 * _loc14_.x - _loc35_.var_84 * _loc14_.y));
                        _loc13_.y = Number(_loc35_.var_96 + (Number(_loc14_.x * _loc35_.var_84 + _loc14_.y * _loc35_.var_83)));
                        _loc12_ = _loc12_.next;
                     }
                     _loc18_ = _loc9_.name_11.var_73;
                     _loc12_ = _loc9_.var_107.next;
                     _loc13_ = _loc12_;
                     _loc12_ = _loc12_.next;
                     while(_loc12_ != null)
                     {
                        _loc14_ = _loc12_;
                        _loc19_ = _loc18_.var_74;
                        _loc18_ = _loc18_.next;
                        _loc19_.var_92 = _loc35_.var_83 * _loc19_.var_122 - _loc35_.var_84 * _loc19_.var_121;
                        _loc19_.var_91 = Number(_loc19_.var_122 * _loc35_.var_84 + _loc19_.var_121 * _loc35_.var_83);
                        _loc19_.gprojection = Number(Number(_loc35_.var_95 * _loc19_.var_92 + _loc35_.var_96 * _loc19_.var_91) + _loc19_.var_165);
                        _loc19_.tp0 = _loc13_.y * _loc19_.var_92 - _loc13_.x * _loc19_.var_91;
                        _loc19_.tp1 = _loc14_.y * _loc19_.var_92 - _loc14_.x * _loc19_.var_91;
                        _loc13_ = _loc14_;
                        _loc12_ = _loc12_.next;
                     }
                     _loc14_ = _loc9_.var_107.next;
                     _loc19_ = _loc18_.var_74;
                     _loc18_ = _loc18_.next;
                     _loc19_.var_92 = _loc35_.var_83 * _loc19_.var_122 - _loc35_.var_84 * _loc19_.var_121;
                     _loc19_.var_91 = Number(_loc19_.var_122 * _loc35_.var_84 + _loc19_.var_121 * _loc35_.var_83);
                     _loc19_.gprojection = Number(Number(_loc35_.var_95 * _loc19_.var_92 + _loc35_.var_96 * _loc19_.var_91) + _loc19_.var_165);
                     _loc19_.tp0 = _loc13_.y * _loc19_.var_92 - _loc13_.x * _loc19_.var_91;
                     _loc19_.tp1 = _loc14_.y * _loc19_.var_92 - _loc14_.x * _loc19_.var_91;
                  }
               }
               else
               {
                  class_304.method_284(_loc6_,param2,0,0);
               }
               _loc6_.name_51 = _loc6_.name_51 * param2;
               if(_loc6_.name_51 > 0)
               {
                  _loc23_ = -_loc6_.var_561.x;
                  _loc24_ = -_loc6_.var_561.y;
                  _loc40_ = false;
                  §§push(class_297);
                  if(class_219.poolVec2 == null)
                  {
                     _loc30_ = new Vec2();
                  }
                  else
                  {
                     _loc30_ = class_219.poolVec2;
                     class_219.poolVec2 = _loc30_.var_72;
                     _loc30_.var_72 = null;
                  }
                  if(_loc30_.zpp_inner == null)
                  {
                     _loc41_ = false;
                     if(ZPP_Vec2.var_72 == null)
                     {
                        _loc11_ = new ZPP_Vec2();
                     }
                     else
                     {
                        _loc11_ = ZPP_Vec2.var_72;
                        ZPP_Vec2.var_72 = _loc11_.next;
                        _loc11_.next = null;
                     }
                     _loc11_.name_5 = false;
                     _loc11_.var_109 = _loc41_;
                     _loc11_.x = _loc23_;
                     _loc11_.y = _loc24_;
                     _loc30_.zpp_inner = _loc11_;
                     _loc30_.zpp_inner.outer = _loc30_;
                  }
                  else
                  {
                     _loc11_ = _loc30_.zpp_inner;
                     §§push(false);
                     if(_loc11_._validate != null)
                     {
                        _loc11_._validate();
                     }
                     if(_loc30_.zpp_inner.x == _loc23_)
                     {
                        §§pop();
                        _loc11_ = _loc30_.zpp_inner;
                        if(_loc11_._validate != null)
                        {
                           _loc11_._validate();
                        }
                        §§push(_loc30_.zpp_inner.y == _loc24_);
                     }
                     if(!§§pop())
                     {
                        _loc30_.zpp_inner.x = _loc23_;
                        _loc30_.zpp_inner.y = _loc24_;
                        _loc11_ = _loc30_.zpp_inner;
                        if(_loc11_._invalidate != null)
                        {
                           _loc11_._invalidate(_loc11_);
                        }
                     }
                     _loc30_;
                  }
                  _loc30_.zpp_inner.name_5 = _loc40_;
                  _loc23_ = _loc6_.c2.x;
                  _loc24_ = _loc6_.c2.y;
                  _loc40_ = false;
                  §§push(_loc30_);
                  if(class_219.poolVec2 == null)
                  {
                     _loc30_ = new Vec2();
                  }
                  else
                  {
                     _loc30_ = class_219.poolVec2;
                     class_219.poolVec2 = _loc30_.var_72;
                     _loc30_.var_72 = null;
                  }
                  if(_loc30_.zpp_inner == null)
                  {
                     _loc41_ = false;
                     if(ZPP_Vec2.var_72 == null)
                     {
                        _loc11_ = new ZPP_Vec2();
                     }
                     else
                     {
                        _loc11_ = ZPP_Vec2.var_72;
                        ZPP_Vec2.var_72 = _loc11_.next;
                        _loc11_.next = null;
                     }
                     _loc11_.name_5 = false;
                     _loc11_.var_109 = _loc41_;
                     _loc11_.x = _loc23_;
                     _loc11_.y = _loc24_;
                     _loc30_.zpp_inner = _loc11_;
                     _loc30_.zpp_inner.outer = _loc30_;
                  }
                  else
                  {
                     _loc11_ = _loc30_.zpp_inner;
                     §§push(false);
                     if(_loc11_._validate != null)
                     {
                        _loc11_._validate();
                     }
                     if(_loc30_.zpp_inner.x == _loc23_)
                     {
                        §§pop();
                        _loc11_ = _loc30_.zpp_inner;
                        if(_loc11_._validate != null)
                        {
                           _loc11_._validate();
                        }
                        §§push(_loc30_.zpp_inner.y == _loc24_);
                     }
                     if(!§§pop())
                     {
                        _loc30_.zpp_inner.x = _loc23_;
                        _loc30_.zpp_inner.y = _loc24_;
                        _loc11_ = _loc30_.zpp_inner;
                        if(_loc11_._invalidate != null)
                        {
                           _loc11_._invalidate(_loc11_);
                        }
                     }
                     _loc30_;
                  }
                  _loc30_.zpp_inner.name_5 = _loc40_;
                  _loc39_ = §§pop().method_478(§§pop(),_loc30_,_loc6_.name_51,_loc33_);
                  _loc42_ = null;
                  _loc43_ = _loc31_.zpp_inner.name_4.var_73;
                  while(_loc43_ != null)
                  {
                     _loc44_ = _loc43_.var_74;
                     if(_loc39_.zpp_inner.var_285 < _loc44_.zpp_inner.var_285)
                     {
                        break;
                     }
                     _loc42_ = _loc43_;
                     _loc43_ = _loc43_.next;
                  }
                  _loc45_ = _loc31_.zpp_inner.name_4;
                  if(ZNPNode_ConvexResult.var_72 == null)
                  {
                     _loc46_ = new ZNPNode_ConvexResult();
                  }
                  else
                  {
                     _loc46_ = ZNPNode_ConvexResult.var_72;
                     ZNPNode_ConvexResult.var_72 = _loc46_.next;
                     _loc46_.next = null;
                  }
                  null;
                  _loc46_.var_74 = _loc39_;
                  _loc43_ = _loc46_;
                  if(_loc42_ == null)
                  {
                     _loc43_.next = _loc45_.var_73;
                     _loc45_.var_73 = _loc43_;
                  }
                  else
                  {
                     _loc43_.next = _loc42_.next;
                     _loc42_.next = _loc43_;
                  }
                  _loc40_ = true;
                  _loc45_.name_2 = _loc40_;
                  _loc45_.var_76 = _loc40_;
                  _loc45_.length = _loc45_.length + 1;
                  _loc43_;
               }
            }
         }
      }
      
      public final function method_454(param1:ZPP_Shape, param2:Number, param3:class_222, param4:Boolean) : ConvexResult
      {
         var _loc5_:* = null as ZPP_ToiEvent;
         var _loc6_:* = null as ZPP_Shape;
         var _loc7_:* = null as ZPP_Circle;
         var _loc8_:* = null as ZPP_Polygon;
         var _loc9_:* = NaN;
         var _loc10_:* = null as ZPP_Vec2;
         var _loc11_:* = null as ZPP_Vec2;
         var _loc12_:* = null as ZPP_Vec2;
         var _loc13_:* = null as ZPP_Vec2;
         var _loc14_:Number = NaN;
         var _loc15_:* = null as ZPP_Vec2;
         var _loc16_:* = null as ZPP_Body;
         var _loc17_:* = null as ZNPNode_ZPP_Edge;
         var _loc18_:* = null as ZPP_Edge;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:* = NaN;
         var _loc23_:* = NaN;
         var _loc24_:* = NaN;
         var _loc25_:* = null as ZPP_AABB;
         var _loc27_:* = null as class_230;
         var _loc29_:* = null as Vec2;
         var _loc34_:* = null as Shape;
         var _loc35_:int = 0;
         var _loc36_:* = null as ZPP_Body;
         var _loc37_:Number = NaN;
         var _loc38_:Number = NaN;
         var _loc39_:Number = NaN;
         var _loc40_:Number = NaN;
         var _loc41_:Number = NaN;
         var _loc42_:Number = NaN;
         if(ZPP_ToiEvent.var_72 == null)
         {
            _loc5_ = new ZPP_ToiEvent();
         }
         else
         {
            _loc5_ = ZPP_ToiEvent.var_72;
            ZPP_ToiEvent.var_72 = _loc5_.next;
            _loc5_.next = null;
         }
         _loc5_.var_143 = false;
         _loc6_ = null;
         _loc5_.s2 = _loc6_;
         _loc5_.s1 = _loc6_;
         _loc5_.name_20 = null;
         if(param1.type == class_223.var_131)
         {
            _loc7_ = param1.var_102;
            if(_loc7_.var_139)
            {
               if(_loc7_.body != null)
               {
                  _loc7_.var_139 = false;
                  if(_loc7_.var_140)
                  {
                     _loc7_.var_140 = false;
                     if(_loc7_.type == class_223.var_155)
                     {
                        _loc8_ = _loc7_.name_6;
                        if(_loc8_.var_88.next.next == null)
                        {
                           _loc8_.var_82 = _loc8_.var_88.next.x;
                           _loc8_.var_81 = _loc8_.var_88.next.y;
                           null;
                        }
                        else if(_loc8_.var_88.next.next.next == null)
                        {
                           _loc8_.var_82 = _loc8_.var_88.next.x;
                           _loc8_.var_81 = _loc8_.var_88.next.y;
                           _loc9_ = 1;
                           _loc8_.var_82 = Number(_loc8_.var_82 + _loc8_.var_88.next.next.x * _loc9_);
                           _loc8_.var_81 = Number(_loc8_.var_81 + _loc8_.var_88.next.next.y * _loc9_);
                           _loc9_ = 0.5;
                           _loc8_.var_82 = _loc8_.var_82 * _loc9_;
                           _loc8_.var_81 = _loc8_.var_81 * _loc9_;
                        }
                        else
                        {
                           _loc8_.var_82 = 0;
                           _loc8_.var_81 = 0;
                           _loc9_ = 0;
                           _loc10_ = _loc8_.var_88.next;
                           _loc11_ = _loc10_;
                           _loc10_ = _loc10_.next;
                           _loc12_ = _loc10_;
                           _loc10_ = _loc10_.next;
                           while(_loc10_ != null)
                           {
                              _loc13_ = _loc10_;
                              _loc9_ = Number(Number(_loc9_ + _loc12_.x * (_loc13_.y - _loc11_.y)));
                              _loc14_ = _loc13_.y * _loc12_.x - _loc13_.x * _loc12_.y;
                              _loc8_.var_82 = Number(_loc8_.var_82 + (_loc12_.x + _loc13_.x) * _loc14_);
                              _loc8_.var_81 = Number(_loc8_.var_81 + (_loc12_.y + _loc13_.y) * _loc14_);
                              _loc11_ = _loc12_;
                              _loc12_ = _loc13_;
                              _loc10_ = _loc10_.next;
                           }
                           _loc10_ = _loc8_.var_88.next;
                           _loc13_ = _loc10_;
                           _loc9_ = Number(Number(_loc9_ + _loc12_.x * (_loc13_.y - _loc11_.y)));
                           _loc14_ = _loc13_.y * _loc12_.x - _loc13_.x * _loc12_.y;
                           _loc8_.var_82 = Number(_loc8_.var_82 + (_loc12_.x + _loc13_.x) * _loc14_);
                           _loc8_.var_81 = Number(_loc8_.var_81 + (_loc12_.y + _loc13_.y) * _loc14_);
                           _loc11_ = _loc12_;
                           _loc12_ = _loc13_;
                           _loc10_ = _loc10_.next;
                           _loc15_ = _loc10_;
                           _loc9_ = Number(Number(_loc9_ + _loc12_.x * (_loc15_.y - _loc11_.y)));
                           _loc14_ = _loc15_.y * _loc12_.x - _loc15_.x * _loc12_.y;
                           _loc8_.var_82 = Number(_loc8_.var_82 + (_loc12_.x + _loc15_.x) * _loc14_);
                           _loc8_.var_81 = Number(_loc8_.var_81 + (_loc12_.y + _loc15_.y) * _loc14_);
                           _loc9_ = Number(1 / (3 * _loc9_));
                           _loc14_ = _loc9_;
                           _loc8_.var_82 = _loc8_.var_82 * _loc14_;
                           _loc8_.var_81 = _loc8_.var_81 * _loc14_;
                        }
                     }
                     if(_loc7_.var_115 != null)
                     {
                        _loc7_.var_115.zpp_inner.x = _loc7_.var_82;
                        _loc7_.var_115.zpp_inner.y = _loc7_.var_81;
                     }
                  }
                  _loc16_ = _loc7_.body;
                  if(_loc16_.var_113)
                  {
                     _loc16_.var_113 = false;
                     _loc16_.var_84 = Number(Math.sin(_loc16_.var_93));
                     _loc16_.var_83 = Number(Math.cos(_loc16_.var_93));
                     null;
                  }
                  _loc7_.var_99 = Number(_loc7_.body.var_95 + (_loc7_.body.var_83 * _loc7_.var_82 - _loc7_.body.var_84 * _loc7_.var_81));
                  _loc7_.var_100 = Number(_loc7_.body.var_96 + (Number(_loc7_.var_82 * _loc7_.body.var_84 + _loc7_.var_81 * _loc7_.body.var_83)));
               }
            }
         }
         else
         {
            _loc8_ = param1.name_6;
            if(_loc8_.var_247)
            {
               if(_loc8_.body != null)
               {
                  _loc8_.var_247 = false;
                  _loc8_.method_124();
                  _loc16_ = _loc8_.body;
                  if(_loc16_.var_113)
                  {
                     _loc16_.var_113 = false;
                     _loc16_.var_84 = Number(Math.sin(_loc16_.var_93));
                     _loc16_.var_83 = Number(Math.cos(_loc16_.var_93));
                     null;
                  }
                  if(_loc8_.var_153)
                  {
                     if(_loc8_.body != null)
                     {
                        _loc8_.var_153 = false;
                        _loc8_.method_116();
                        _loc16_ = _loc8_.body;
                        if(_loc16_.var_113)
                        {
                           _loc16_.var_113 = false;
                           _loc16_.var_84 = Number(Math.sin(_loc16_.var_93));
                           _loc16_.var_83 = Number(Math.cos(_loc16_.var_93));
                           null;
                        }
                        _loc10_ = _loc8_.var_88.next;
                        _loc11_ = _loc8_.var_107.next;
                        while(_loc11_ != null)
                        {
                           _loc12_ = _loc11_;
                           _loc13_ = _loc10_;
                           _loc10_ = _loc10_.next;
                           _loc12_.x = Number(_loc8_.body.var_95 + (_loc8_.body.var_83 * _loc13_.x - _loc8_.body.var_84 * _loc13_.y));
                           _loc12_.y = Number(_loc8_.body.var_96 + (Number(_loc13_.x * _loc8_.body.var_84 + _loc13_.y * _loc8_.body.var_83)));
                           _loc11_ = _loc11_.next;
                        }
                     }
                  }
                  _loc17_ = _loc8_.name_11.var_73;
                  _loc10_ = _loc8_.var_107.next;
                  _loc11_ = _loc10_;
                  _loc10_ = _loc10_.next;
                  while(_loc10_ != null)
                  {
                     _loc12_ = _loc10_;
                     _loc18_ = _loc17_.var_74;
                     _loc17_ = _loc17_.next;
                     _loc18_.gp0 = _loc11_;
                     _loc18_.gp1 = _loc12_;
                     _loc18_.var_92 = _loc8_.body.var_83 * _loc18_.var_122 - _loc8_.body.var_84 * _loc18_.var_121;
                     _loc18_.var_91 = Number(_loc18_.var_122 * _loc8_.body.var_84 + _loc18_.var_121 * _loc8_.body.var_83);
                     _loc18_.gprojection = Number(Number(_loc8_.body.var_95 * _loc18_.var_92 + _loc8_.body.var_96 * _loc18_.var_91) + _loc18_.var_165);
                     if(_loc18_.wrap_gnorm != null)
                     {
                        _loc18_.wrap_gnorm.zpp_inner.x = _loc18_.var_92;
                        _loc18_.wrap_gnorm.zpp_inner.y = _loc18_.var_91;
                     }
                     _loc18_.tp0 = _loc18_.gp0.y * _loc18_.var_92 - _loc18_.gp0.x * _loc18_.var_91;
                     _loc18_.tp1 = _loc18_.gp1.y * _loc18_.var_92 - _loc18_.gp1.x * _loc18_.var_91;
                     _loc11_ = _loc12_;
                     _loc10_ = _loc10_.next;
                  }
                  _loc12_ = _loc8_.var_107.next;
                  _loc18_ = _loc17_.var_74;
                  _loc17_ = _loc17_.next;
                  _loc18_.gp0 = _loc11_;
                  _loc18_.gp1 = _loc12_;
                  _loc18_.var_92 = _loc8_.body.var_83 * _loc18_.var_122 - _loc8_.body.var_84 * _loc18_.var_121;
                  _loc18_.var_91 = Number(_loc18_.var_122 * _loc8_.body.var_84 + _loc18_.var_121 * _loc8_.body.var_83);
                  _loc18_.gprojection = Number(Number(_loc8_.body.var_95 * _loc18_.var_92 + _loc8_.body.var_96 * _loc18_.var_91) + _loc18_.var_165);
                  if(_loc18_.wrap_gnorm != null)
                  {
                     _loc18_.wrap_gnorm.zpp_inner.x = _loc18_.var_92;
                     _loc18_.wrap_gnorm.zpp_inner.y = _loc18_.var_91;
                  }
                  _loc18_.tp0 = _loc18_.gp0.y * _loc18_.var_92 - _loc18_.gp0.x * _loc18_.var_91;
                  _loc18_.tp1 = _loc18_.gp1.y * _loc18_.var_92 - _loc18_.gp1.x * _loc18_.var_91;
               }
            }
         }
         _loc16_ = param1.body;
         _loc9_ = Number(_loc16_.var_95);
         _loc14_ = _loc16_.var_96;
         _loc16_.var_176 = 0;
         _loc16_.var_191 = _loc16_.var_94;
         var _loc19_:Number = param2 - _loc16_.var_176;
         if(_loc19_ != 0)
         {
            _loc16_.var_176 = param2;
            _loc20_ = _loc19_;
            _loc16_.var_95 = Number(_loc16_.var_95 + _loc16_.var_104 * _loc20_);
            _loc16_.var_96 = Number(_loc16_.var_96 + _loc16_.var_105 * _loc20_);
            if(_loc16_.var_94 != 0)
            {
               _loc20_ = _loc16_.var_191 * _loc19_;
               _loc16_.var_93 = Number(_loc16_.var_93 + _loc20_);
               if(_loc20_ * _loc20_ > 0.0001)
               {
                  _loc16_.var_84 = Number(Math.sin(_loc16_.var_93));
                  _loc16_.var_83 = Number(Math.cos(_loc16_.var_93));
                  null;
               }
               else
               {
                  _loc21_ = _loc20_ * _loc20_;
                  _loc22_ = Number(1 - 0.5 * _loc21_);
                  _loc23_ = Number(1 - _loc21_ * _loc21_ / 8);
                  _loc24_ = Number((_loc22_ * _loc16_.var_84 + _loc20_ * _loc16_.var_83) * _loc23_);
                  _loc16_.var_83 = (_loc22_ * _loc16_.var_83 - _loc20_ * _loc16_.var_84) * _loc23_;
                  _loc16_.var_84 = _loc24_;
               }
            }
         }
         _loc19_ = _loc16_.var_95;
         _loc20_ = _loc16_.var_96;
         param1.method_257();
         _loc21_ = param1.var_258;
         if(ZPP_AABB.var_72 == null)
         {
            _loc25_ = new ZPP_AABB();
         }
         else
         {
            _loc25_ = ZPP_AABB.var_72;
            ZPP_AABB.var_72 = _loc25_.next;
            _loc25_.next = null;
         }
         null;
         _loc22_ = Number(_loc9_);
         _loc23_ = Number(_loc19_);
         _loc25_.var_77 = (_loc22_ < _loc23_?_loc22_:_loc23_) - _loc21_;
         _loc22_ = Number(_loc9_);
         _loc23_ = Number(_loc19_);
         _loc25_.var_79 = Number((_loc22_ > _loc23_?_loc22_:_loc23_) + _loc21_);
         _loc22_ = Number(_loc14_);
         _loc23_ = Number(_loc20_);
         _loc25_.var_78 = (_loc22_ < _loc23_?_loc22_:_loc23_) - _loc21_;
         _loc22_ = Number(_loc14_);
         _loc23_ = Number(_loc20_);
         _loc25_.var_80 = Number((_loc22_ > _loc23_?_loc22_:_loc23_) + _loc21_);
         _loc27_ = var_166.method_178(_loc25_,false,false,param3 == null?null:param3.zpp_inner,var_536);
         var_536 = _loc27_;
         var _loc26_:class_230 = _loc27_;
         var _loc28_:ZPP_AABB = _loc25_;
         if(_loc28_.outer != null)
         {
            _loc28_.outer.zpp_inner = null;
            _loc28_.outer = null;
         }
         _loc29_ = null;
         _loc28_.var_239 = _loc29_;
         _loc28_.var_238 = _loc29_;
         _loc28_._invalidate = null;
         _loc28_._validate = null;
         _loc28_.next = ZPP_AABB.var_72;
         ZPP_AABB.var_72 = _loc28_;
         _loc22_ = 0;
         _loc23_ = 0;
         _loc22_ = 0;
         _loc23_ = 0;
         _loc24_ = 0;
         var _loc30_:* = 0;
         _loc24_ = 0;
         _loc30_ = 0;
         var _loc31_:* = null;
         var _loc32_:Number = Number(param2 + 1);
         _loc26_.zpp_inner.method_104();
         var _loc33_:class_226 = class_226.method_65(_loc26_);
         while(true)
         {
            _loc33_.zpp_inner.zpp_inner.method_104();
            _loc27_ = _loc33_.zpp_inner;
            _loc27_.zpp_inner.method_104();
            if(_loc27_.zpp_inner.var_86)
            {
               _loc27_.zpp_inner.var_86 = false;
               _loc27_.zpp_inner.var_89 = _loc27_.zpp_inner.name_4.length;
            }
            _loc35_ = _loc27_.zpp_inner.var_89;
            _loc33_.var_98 = true;
            if(_loc33_.var_90 < _loc35_)
            {
               §§push(true);
            }
            else
            {
               _loc33_.var_106 = class_226.var_72;
               class_226.var_72 = _loc33_;
               _loc33_.zpp_inner = null;
            }
            _loc33_.var_98 = false;
            _loc35_ = _loc33_.var_90;
            _loc33_.var_90 = _loc33_.var_90 + 1;
            _loc34_ = _loc33_.zpp_inner.at(_loc35_);
            if(_loc34_ != param1.outer && (_loc34_.zpp_inner.body != null?_loc34_.zpp_inner.body.outer:null) != _loc16_.outer)
            {
               _loc5_.s1 = param1;
               _loc5_.s2 = _loc34_.zpp_inner;
               if(param4)
               {
                  _loc34_.zpp_inner.method_257();
                  (_loc34_.zpp_inner.body != null?_loc34_.zpp_inner.body.outer:null).zpp_inner.var_191 = (_loc34_.zpp_inner.body != null?_loc34_.zpp_inner.body.outer:null).zpp_inner.var_94;
                  (_loc34_.zpp_inner.body != null?_loc34_.zpp_inner.body.outer:null).zpp_inner.var_176 = 0;
                  class_304.method_366(_loc5_,param2,0,0,true);
                  _loc36_ = (_loc34_.zpp_inner.body != null?_loc34_.zpp_inner.body.outer:null).zpp_inner;
                  _loc37_ = 0 - _loc36_.var_176;
                  if(_loc37_ != 0)
                  {
                     _loc36_.var_176 = 0;
                     _loc38_ = _loc37_;
                     _loc36_.var_95 = Number(_loc36_.var_95 + _loc36_.var_104 * _loc38_);
                     _loc36_.var_96 = Number(_loc36_.var_96 + _loc36_.var_105 * _loc38_);
                     if(_loc36_.var_94 != 0)
                     {
                        _loc38_ = _loc36_.var_191 * _loc37_;
                        _loc36_.var_93 = Number(_loc36_.var_93 + _loc38_);
                        if(_loc38_ * _loc38_ > 0.0001)
                        {
                           _loc36_.var_84 = Number(Math.sin(_loc36_.var_93));
                           _loc36_.var_83 = Number(Math.cos(_loc36_.var_93));
                           null;
                        }
                        else
                        {
                           _loc39_ = _loc38_ * _loc38_;
                           _loc40_ = 1 - 0.5 * _loc39_;
                           _loc41_ = 1 - _loc39_ * _loc39_ / 8;
                           _loc42_ = (_loc40_ * _loc36_.var_84 + _loc38_ * _loc36_.var_83) * _loc41_;
                           _loc36_.var_83 = (_loc40_ * _loc36_.var_83 - _loc38_ * _loc36_.var_84) * _loc41_;
                           _loc36_.var_84 = _loc42_;
                        }
                     }
                  }
                  _loc36_ = (_loc34_.zpp_inner.body != null?_loc34_.zpp_inner.body.outer:null).zpp_inner;
                  _loc6_ = _loc34_.zpp_inner;
                  if(_loc6_.type == class_223.var_131)
                  {
                     _loc6_.var_99 = Number(_loc36_.var_95 + (_loc36_.var_83 * _loc6_.var_82 - _loc36_.var_84 * _loc6_.var_81));
                     _loc6_.var_100 = Number(_loc36_.var_96 + (Number(_loc6_.var_82 * _loc36_.var_84 + _loc6_.var_81 * _loc36_.var_83)));
                  }
                  else
                  {
                     _loc8_ = _loc6_.name_6;
                     _loc10_ = _loc8_.var_88.next;
                     _loc11_ = _loc8_.var_107.next;
                     while(_loc11_ != null)
                     {
                        _loc12_ = _loc11_;
                        _loc13_ = _loc10_;
                        _loc10_ = _loc10_.next;
                        _loc12_.x = Number(_loc36_.var_95 + (_loc36_.var_83 * _loc13_.x - _loc36_.var_84 * _loc13_.y));
                        _loc12_.y = Number(_loc36_.var_96 + (Number(_loc13_.x * _loc36_.var_84 + _loc13_.y * _loc36_.var_83)));
                        _loc11_ = _loc11_.next;
                     }
                     _loc17_ = _loc8_.name_11.var_73;
                     _loc11_ = _loc8_.var_107.next;
                     _loc12_ = _loc11_;
                     _loc11_ = _loc11_.next;
                     while(_loc11_ != null)
                     {
                        _loc13_ = _loc11_;
                        _loc18_ = _loc17_.var_74;
                        _loc17_ = _loc17_.next;
                        _loc18_.var_92 = _loc36_.var_83 * _loc18_.var_122 - _loc36_.var_84 * _loc18_.var_121;
                        _loc18_.var_91 = Number(_loc18_.var_122 * _loc36_.var_84 + _loc18_.var_121 * _loc36_.var_83);
                        _loc18_.gprojection = Number(Number(_loc36_.var_95 * _loc18_.var_92 + _loc36_.var_96 * _loc18_.var_91) + _loc18_.var_165);
                        _loc18_.tp0 = _loc12_.y * _loc18_.var_92 - _loc12_.x * _loc18_.var_91;
                        _loc18_.tp1 = _loc13_.y * _loc18_.var_92 - _loc13_.x * _loc18_.var_91;
                        _loc12_ = _loc13_;
                        _loc11_ = _loc11_.next;
                     }
                     _loc13_ = _loc8_.var_107.next;
                     _loc18_ = _loc17_.var_74;
                     _loc17_ = _loc17_.next;
                     _loc18_.var_92 = _loc36_.var_83 * _loc18_.var_122 - _loc36_.var_84 * _loc18_.var_121;
                     _loc18_.var_91 = Number(_loc18_.var_122 * _loc36_.var_84 + _loc18_.var_121 * _loc36_.var_83);
                     _loc18_.gprojection = Number(Number(_loc36_.var_95 * _loc18_.var_92 + _loc36_.var_96 * _loc18_.var_91) + _loc18_.var_165);
                     _loc18_.tp0 = _loc12_.y * _loc18_.var_92 - _loc12_.x * _loc18_.var_91;
                     _loc18_.tp1 = _loc13_.y * _loc18_.var_92 - _loc13_.x * _loc18_.var_91;
                  }
               }
               else
               {
                  class_304.method_284(_loc5_,param2,0,0);
               }
               _loc5_.name_51 = _loc5_.name_51 * param2;
               if(_loc5_.name_51 > 0 && _loc5_.name_51 < _loc32_)
               {
                  _loc32_ = _loc5_.name_51;
                  _loc22_ = Number(_loc5_.var_561.x);
                  _loc23_ = Number(_loc5_.var_561.y);
                  _loc24_ = Number(_loc5_.c2.x);
                  _loc30_ = Number(_loc5_.c2.y);
                  _loc31_ = _loc34_;
               }
            }
         }
      }
      
      public final function method_495(param1:ZPP_Shape, param2:ZPP_Shape, param3:Boolean, param4:ZPP_Arbiter, param5:Boolean) : ZPP_Arbiter
      {
         var _loc6_:* = null as ZPP_Body;
         var _loc7_:* = null as ZPP_Body;
         var _loc8_:Boolean = false;
         var _loc9_:* = null as ZNPNode_ZPP_Constraint;
         var _loc10_:* = null as ZPP_Constraint;
         var _loc11_:* = null as ZPP_InteractionGroup;
         var _loc12_:* = null as ZPP_Interactor;
         var _loc13_:* = null as ZPP_InteractionGroup;
         var _loc14_:Boolean = false;
         var _loc15_:* = null as ZPP_InteractionFilter;
         var _loc16_:* = null as ZPP_InteractionFilter;
         var _loc17_:* = null as ZPP_ToiEvent;
         var _loc18_:* = null as ZPP_Shape;
         var _loc19_:* = null as ZPP_ToiEvent;
         if(!!param1.body.var_273 && param2.body.var_273)
         {
            return param4;
         }
         if(param1.body.name_64 || param2.body.name_64)
         {
            return param4;
         }
         §§push(true);
         if(!(param4 != null && param4.var_128 == null))
         {
            §§pop();
            _loc6_ = param1.body;
            _loc7_ = param2.body;
            _loc8_ = false;
            _loc9_ = _loc6_.name_19.var_73;
            while(_loc9_ != null)
            {
               _loc10_ = _loc9_.var_74;
               if(!!_loc10_.name_36 && _loc10_.method_312(_loc6_.id,_loc7_.id))
               {
                  _loc8_ = true;
                  break;
               }
               _loc9_ = _loc9_.next;
            }
            if((param1.sensorEnabled || param2.sensorEnabled) && ((_loc15_.name_48 & _loc16_.name_46) != 0 && (_loc16_.name_48 & _loc15_.name_46) != 0))
            {
               §§push(2);
            }
            else if((param1.fluidEnabled || param2.fluidEnabled) && ((_loc15_.name_43 & _loc16_.name_47) != 0 && (_loc16_.name_43 & _loc15_.name_47) != 0) && !(_loc6_.var_123 == 0 && _loc7_.var_123 == 0 && _loc6_.var_136 == 0 && _loc7_.var_136 == 0))
            {
               §§push(0);
            }
            else
            {
               _loc15_ = param1.filter;
               _loc16_ = param2.filter;
               §§push((_loc15_.name_14 & _loc16_.name_13) != 0 && (_loc16_.name_14 & _loc15_.name_13) != 0 && !(_loc6_.var_123 == 0 && _loc7_.var_123 == 0 && _loc6_.var_136 == 0 && _loc7_.var_136 == 0)?1:-1);
            }
         }
         _loc6_ = param1.body;
         _loc7_ = param2.body;
         if(param3 || _loc6_.bullet || _loc7_.bullet)
         {
            if(ZPP_ToiEvent.var_72 == null)
            {
               _loc17_ = new ZPP_ToiEvent();
            }
            else
            {
               _loc17_ = ZPP_ToiEvent.var_72;
               ZPP_ToiEvent.var_72 = _loc17_.next;
               _loc17_.next = null;
            }
            _loc17_.var_143 = false;
            _loc18_ = null;
            _loc17_.s2 = _loc18_;
            _loc17_.s1 = _loc18_;
            _loc17_.name_20 = null;
            _loc8_ = _loc6_.type == class_223.var_216 || _loc7_.type == class_223.var_216;
            if(!!param3 && !_loc8_)
            {
               if(param1.body.type != class_223.var_188)
               {
                  _loc17_.s2 = param1;
                  _loc17_.s1 = param2;
               }
               else
               {
                  _loc17_.s1 = param1;
                  _loc17_.s2 = param2;
               }
               _loc17_.kinematic = false;
               class_304.method_284(_loc17_,var_197,0,class_238.var_865);
            }
            else
            {
               _loc17_.s1 = param1;
               _loc17_.s2 = param2;
               _loc17_.kinematic = _loc8_;
               if(_loc17_.s1.body.var_273 || _loc17_.s2.body.var_273)
               {
                  if(_loc17_.s1.body.var_273)
                  {
                     _loc18_ = _loc17_.s1;
                     _loc17_.s1 = _loc17_.s2;
                     _loc17_.s2 = _loc18_;
                     _loc17_.frozen1 = false;
                     _loc17_.frozen2 = true;
                  }
                  class_304.method_284(_loc17_,var_197,0,class_238.var_865);
               }
               else
               {
                  class_304.method_366(_loc17_,var_197,0,class_238.var_865);
               }
            }
            if(!!param3 && _loc17_.name_51 < 0 || _loc17_.var_143)
            {
               _loc19_ = _loc17_;
               _loc19_.next = ZPP_ToiEvent.var_72;
               ZPP_ToiEvent.var_72 = _loc19_;
            }
            else
            {
               var_314.add(_loc17_);
               _loc17_.frozen1 = _loc17_.s1.body.var_273;
               _loc17_.frozen2 = _loc17_.s2.body.var_273;
               if(param4 != null)
               {
                  _loc17_.name_20 = param4.var_128;
               }
               else
               {
                  _loc17_.name_20 = null;
               }
            }
         }
         return param4;
      }
      
      public final function continuousCollisions(param1:Number) : void
      {
         var _loc4_:* = null as ZPP_ToiEvent;
         var _loc5_:* = NaN;
         var _loc6_:Boolean = false;
         var _loc7_:* = null as ZNPNode_ZPP_ToiEvent;
         var _loc8_:* = null as ZNPNode_ZPP_ToiEvent;
         var _loc9_:* = null as ZNPNode_ZPP_ToiEvent;
         var _loc10_:* = null as ZPP_ToiEvent;
         var _loc11_:* = null as ZPP_Body;
         var _loc12_:* = null as ZPP_Body;
         var _loc13_:* = null as ZPP_ToiEvent;
         var _loc14_:* = null as ZPP_Shape;
         var _loc15_:* = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:* = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:* = null as ZPP_Polygon;
         var _loc23_:* = null as ZPP_Vec2;
         var _loc24_:* = null as ZPP_Vec2;
         var _loc25_:* = null as ZPP_Vec2;
         var _loc26_:* = null as ZPP_Vec2;
         var _loc27_:* = null as ZNPNode_ZPP_Edge;
         var _loc28_:* = null as ZPP_Edge;
         var _loc29_:* = false;
         var _loc30_:* = null as ZPP_Arbiter;
         var _loc31_:* = null as ZPP_ColArbiter;
         var _loc32_:Number = NaN;
         var _loc33_:Number = NaN;
         var _loc34_:Number = NaN;
         var _loc35_:Number = NaN;
         var _loc36_:Number = NaN;
         var _loc37_:* = NaN;
         var _loc38_:* = NaN;
         var _loc39_:Number = NaN;
         var _loc40_:Number = NaN;
         var _loc41_:* = NaN;
         var _loc2_:Number = 2 * Math.PI / param1;
         var_166.method_298(this,false);
         var _loc3_:* = 0;
         while(_loc3_ < 1 && var_314.var_73 != null)
         {
            _loc4_ = null;
            _loc5_ = 2;
            _loc6_ = false;
            _loc7_ = null;
            _loc8_ = null;
            _loc9_ = var_314.var_73;
            while(_loc9_ != null)
            {
               _loc10_ = _loc9_.var_74;
               _loc11_ = _loc10_.s1.body;
               _loc12_ = _loc10_.s2.body;
               if(!!_loc11_.var_273 && _loc12_.var_273)
               {
                  if(_loc10_.name_51 != 0 && class_239.method_133(_loc10_.s1,_loc10_.s2))
                  {
                     _loc10_.name_51 = 0;
                  }
                  else
                  {
                     _loc9_ = var_314.erase(_loc8_);
                     _loc13_ = _loc10_;
                     _loc13_.next = ZPP_ToiEvent.var_72;
                     ZPP_ToiEvent.var_72 = _loc13_;
                     continue;
                  }
               }
               if(_loc10_.frozen1 != _loc11_.var_273 || _loc10_.frozen2 != _loc12_.var_273)
               {
                  if(!_loc10_.kinematic)
                  {
                     _loc10_.frozen1 = _loc11_.var_273;
                     _loc10_.frozen2 = _loc12_.var_273;
                     if(_loc10_.frozen1)
                     {
                        _loc14_ = _loc10_.s1;
                        _loc10_.s1 = _loc10_.s2;
                        _loc10_.s2 = _loc14_;
                        _loc10_.frozen1 = false;
                        _loc10_.frozen2 = true;
                     }
                     class_304.method_284(_loc10_,param1,0,class_238.var_865);
                     if(_loc10_.name_51 < 0)
                     {
                        _loc9_ = var_314.erase(_loc8_);
                        _loc13_ = _loc10_;
                        _loc13_.next = ZPP_ToiEvent.var_72;
                        ZPP_ToiEvent.var_72 = _loc13_;
                        continue;
                     }
                  }
                  else
                  {
                     _loc9_ = var_314.erase(_loc8_);
                     _loc13_ = _loc10_;
                     _loc13_.next = ZPP_ToiEvent.var_72;
                     ZPP_ToiEvent.var_72 = _loc13_;
                     continue;
                  }
               }
               if(_loc10_.name_51 >= 0 && (_loc10_.name_51 < _loc5_ || !_loc6_ && _loc10_.kinematic))
               {
                  _loc4_ = _loc10_;
                  _loc5_ = Number(_loc10_.name_51);
                  _loc6_ = _loc10_.kinematic;
                  _loc7_ = _loc8_;
               }
               _loc8_ = _loc9_;
               _loc9_ = _loc9_.next;
            }
            if(_loc4_ == null)
            {
               break;
            }
            var_314.erase(_loc7_);
            _loc3_ = Number(_loc4_.name_51);
            _loc11_ = _loc4_.s1.body;
            _loc12_ = _loc4_.s2.body;
            if(!_loc11_.var_273)
            {
               _loc15_ = Number(_loc3_ * param1);
               _loc16_ = _loc15_ - _loc11_.var_176;
               if(_loc16_ != 0)
               {
                  _loc11_.var_176 = _loc15_;
                  _loc17_ = _loc16_;
                  _loc11_.var_95 = Number(_loc11_.var_95 + _loc11_.var_104 * _loc17_);
                  _loc11_.var_96 = Number(_loc11_.var_96 + _loc11_.var_105 * _loc17_);
                  if(_loc11_.var_94 != 0)
                  {
                     _loc17_ = _loc11_.var_191 * _loc16_;
                     _loc11_.var_93 = Number(_loc11_.var_93 + _loc17_);
                     if(_loc17_ * _loc17_ > 0.0001)
                     {
                        _loc11_.var_84 = Number(Math.sin(_loc11_.var_93));
                        _loc11_.var_83 = Number(Math.cos(_loc11_.var_93));
                        null;
                     }
                     else
                     {
                        _loc18_ = _loc17_ * _loc17_;
                        _loc19_ = 1 - 0.5 * _loc18_;
                        _loc20_ = Number(1 - _loc18_ * _loc18_ / 8);
                        _loc21_ = (_loc19_ * _loc11_.var_84 + _loc17_ * _loc11_.var_83) * _loc20_;
                        _loc11_.var_83 = (_loc19_ * _loc11_.var_83 - _loc17_ * _loc11_.var_84) * _loc20_;
                        _loc11_.var_84 = _loc21_;
                     }
                  }
               }
               _loc14_ = _loc4_.s1;
               if(_loc14_.type == class_223.var_131)
               {
                  _loc14_.var_99 = Number(_loc11_.var_95 + (_loc11_.var_83 * _loc14_.var_82 - _loc11_.var_84 * _loc14_.var_81));
                  _loc14_.var_100 = Number(_loc11_.var_96 + (Number(_loc14_.var_82 * _loc11_.var_84 + _loc14_.var_81 * _loc11_.var_83)));
               }
               else
               {
                  _loc22_ = _loc14_.name_6;
                  _loc23_ = _loc22_.var_88.next;
                  _loc24_ = _loc22_.var_107.next;
                  while(_loc24_ != null)
                  {
                     _loc25_ = _loc24_;
                     _loc26_ = _loc23_;
                     _loc23_ = _loc23_.next;
                     _loc25_.x = Number(_loc11_.var_95 + (_loc11_.var_83 * _loc26_.x - _loc11_.var_84 * _loc26_.y));
                     _loc25_.y = Number(_loc11_.var_96 + (Number(_loc26_.x * _loc11_.var_84 + _loc26_.y * _loc11_.var_83)));
                     _loc24_ = _loc24_.next;
                  }
                  _loc27_ = _loc22_.name_11.var_73;
                  _loc24_ = _loc22_.var_107.next;
                  _loc25_ = _loc24_;
                  _loc24_ = _loc24_.next;
                  while(_loc24_ != null)
                  {
                     _loc26_ = _loc24_;
                     _loc28_ = _loc27_.var_74;
                     _loc27_ = _loc27_.next;
                     _loc28_.var_92 = _loc11_.var_83 * _loc28_.var_122 - _loc11_.var_84 * _loc28_.var_121;
                     _loc28_.var_91 = Number(_loc28_.var_122 * _loc11_.var_84 + _loc28_.var_121 * _loc11_.var_83);
                     _loc28_.gprojection = Number(Number(_loc11_.var_95 * _loc28_.var_92 + _loc11_.var_96 * _loc28_.var_91) + _loc28_.var_165);
                     _loc28_.tp0 = _loc25_.y * _loc28_.var_92 - _loc25_.x * _loc28_.var_91;
                     _loc28_.tp1 = _loc26_.y * _loc28_.var_92 - _loc26_.x * _loc28_.var_91;
                     _loc25_ = _loc26_;
                     _loc24_ = _loc24_.next;
                  }
                  _loc26_ = _loc22_.var_107.next;
                  _loc28_ = _loc27_.var_74;
                  _loc27_ = _loc27_.next;
                  _loc28_.var_92 = _loc11_.var_83 * _loc28_.var_122 - _loc11_.var_84 * _loc28_.var_121;
                  _loc28_.var_91 = Number(_loc28_.var_122 * _loc11_.var_84 + _loc28_.var_121 * _loc11_.var_83);
                  _loc28_.gprojection = Number(Number(_loc11_.var_95 * _loc28_.var_92 + _loc11_.var_96 * _loc28_.var_91) + _loc28_.var_165);
                  _loc28_.tp0 = _loc25_.y * _loc28_.var_92 - _loc25_.x * _loc28_.var_91;
                  _loc28_.tp1 = _loc26_.y * _loc28_.var_92 - _loc26_.x * _loc28_.var_91;
               }
            }
            if(!_loc12_.var_273)
            {
               _loc15_ = Number(_loc3_ * param1);
               _loc16_ = _loc15_ - _loc12_.var_176;
               if(_loc16_ != 0)
               {
                  _loc12_.var_176 = _loc15_;
                  _loc17_ = _loc16_;
                  _loc12_.var_95 = Number(_loc12_.var_95 + _loc12_.var_104 * _loc17_);
                  _loc12_.var_96 = Number(_loc12_.var_96 + _loc12_.var_105 * _loc17_);
                  if(_loc12_.var_94 != 0)
                  {
                     _loc17_ = _loc12_.var_191 * _loc16_;
                     _loc12_.var_93 = Number(_loc12_.var_93 + _loc17_);
                     if(_loc17_ * _loc17_ > 0.0001)
                     {
                        _loc12_.var_84 = Number(Math.sin(_loc12_.var_93));
                        _loc12_.var_83 = Number(Math.cos(_loc12_.var_93));
                        null;
                     }
                     else
                     {
                        _loc18_ = _loc17_ * _loc17_;
                        _loc19_ = 1 - 0.5 * _loc18_;
                        _loc20_ = Number(1 - _loc18_ * _loc18_ / 8);
                        _loc21_ = (_loc19_ * _loc12_.var_84 + _loc17_ * _loc12_.var_83) * _loc20_;
                        _loc12_.var_83 = (_loc19_ * _loc12_.var_83 - _loc17_ * _loc12_.var_84) * _loc20_;
                        _loc12_.var_84 = _loc21_;
                     }
                  }
               }
               _loc14_ = _loc4_.s2;
               if(_loc14_.type == class_223.var_131)
               {
                  _loc14_.var_99 = Number(_loc12_.var_95 + (_loc12_.var_83 * _loc14_.var_82 - _loc12_.var_84 * _loc14_.var_81));
                  _loc14_.var_100 = Number(_loc12_.var_96 + (Number(_loc14_.var_82 * _loc12_.var_84 + _loc14_.var_81 * _loc12_.var_83)));
               }
               else
               {
                  _loc22_ = _loc14_.name_6;
                  _loc23_ = _loc22_.var_88.next;
                  _loc24_ = _loc22_.var_107.next;
                  while(_loc24_ != null)
                  {
                     _loc25_ = _loc24_;
                     _loc26_ = _loc23_;
                     _loc23_ = _loc23_.next;
                     _loc25_.x = Number(_loc12_.var_95 + (_loc12_.var_83 * _loc26_.x - _loc12_.var_84 * _loc26_.y));
                     _loc25_.y = Number(_loc12_.var_96 + (Number(_loc26_.x * _loc12_.var_84 + _loc26_.y * _loc12_.var_83)));
                     _loc24_ = _loc24_.next;
                  }
                  _loc27_ = _loc22_.name_11.var_73;
                  _loc24_ = _loc22_.var_107.next;
                  _loc25_ = _loc24_;
                  _loc24_ = _loc24_.next;
                  while(_loc24_ != null)
                  {
                     _loc26_ = _loc24_;
                     _loc28_ = _loc27_.var_74;
                     _loc27_ = _loc27_.next;
                     _loc28_.var_92 = _loc12_.var_83 * _loc28_.var_122 - _loc12_.var_84 * _loc28_.var_121;
                     _loc28_.var_91 = Number(_loc28_.var_122 * _loc12_.var_84 + _loc28_.var_121 * _loc12_.var_83);
                     _loc28_.gprojection = Number(Number(_loc12_.var_95 * _loc28_.var_92 + _loc12_.var_96 * _loc28_.var_91) + _loc28_.var_165);
                     _loc28_.tp0 = _loc25_.y * _loc28_.var_92 - _loc25_.x * _loc28_.var_91;
                     _loc28_.tp1 = _loc26_.y * _loc28_.var_92 - _loc26_.x * _loc28_.var_91;
                     _loc25_ = _loc26_;
                     _loc24_ = _loc24_.next;
                  }
                  _loc26_ = _loc22_.var_107.next;
                  _loc28_ = _loc27_.var_74;
                  _loc27_ = _loc27_.next;
                  _loc28_.var_92 = _loc12_.var_83 * _loc28_.var_122 - _loc12_.var_84 * _loc28_.var_121;
                  _loc28_.var_91 = Number(_loc28_.var_122 * _loc12_.var_84 + _loc28_.var_121 * _loc12_.var_83);
                  _loc28_.gprojection = Number(Number(_loc12_.var_95 * _loc28_.var_92 + _loc12_.var_96 * _loc28_.var_91) + _loc28_.var_165);
                  _loc28_.tp0 = _loc25_.y * _loc28_.var_92 - _loc25_.x * _loc28_.var_91;
                  _loc28_.tp1 = _loc26_.y * _loc28_.var_92 - _loc26_.x * _loc28_.var_91;
               }
            }
            _loc29_ = _loc4_.name_20 == null;
            _loc30_ = method_357(_loc4_.s1,_loc4_.s2,true,_loc4_.name_20,true);
            if(_loc30_ == null)
            {
               if(_loc4_.name_20 != null && _loc4_.name_20.var_209 != null)
               {
                  _loc4_.name_20.var_209.var_246 = null;
                  _loc4_.name_20.var_209 = null;
               }
            }
            else if(!presteparb(_loc30_,param1,true))
            {
               if(_loc30_.type == ZPP_Arbiter.var_292 && (!!_loc30_.active && (_loc30_.var_181 & class_223.var_267) != 0))
               {
                  _loc31_ = _loc30_.var_128;
                  _loc15_ = Number(_loc31_.nx * _loc31_.c1.var_142 - _loc31_.ny * _loc31_.c1.var_208);
                  _loc16_ = Number(_loc31_.ny * _loc31_.c1.var_142 + _loc31_.nx * _loc31_.c1.var_208);
                  _loc17_ = _loc31_.b1.var_123;
                  _loc31_.b1.var_104 = _loc31_.b1.var_104 - _loc15_ * _loc17_;
                  _loc31_.b1.var_105 = _loc31_.b1.var_105 - _loc16_ * _loc17_;
                  _loc31_.b1.var_94 = _loc31_.b1.var_94 - _loc31_.b1.var_136 * (_loc16_ * _loc31_.c1.r1x - _loc15_ * _loc31_.c1.r1y);
                  _loc17_ = _loc31_.b2.var_123;
                  _loc31_.b2.var_104 = Number(_loc31_.b2.var_104 + _loc15_ * _loc17_);
                  _loc31_.b2.var_105 = Number(_loc31_.b2.var_105 + _loc16_ * _loc17_);
                  _loc31_.b2.var_94 = Number(_loc31_.b2.var_94 + _loc31_.b2.var_136 * (_loc16_ * _loc31_.c1.r2x - _loc15_ * _loc31_.c1.r2y));
                  if(_loc31_.var_270)
                  {
                     _loc15_ = Number(_loc31_.nx * _loc31_.c2.var_142 - _loc31_.ny * _loc31_.c2.var_208);
                     _loc16_ = Number(_loc31_.ny * _loc31_.c2.var_142 + _loc31_.nx * _loc31_.c2.var_208);
                     _loc17_ = _loc31_.b1.var_123;
                     _loc31_.b1.var_104 = _loc31_.b1.var_104 - _loc15_ * _loc17_;
                     _loc31_.b1.var_105 = _loc31_.b1.var_105 - _loc16_ * _loc17_;
                     _loc31_.b1.var_94 = _loc31_.b1.var_94 - _loc31_.b1.var_136 * (_loc16_ * _loc31_.c2.r1x - _loc15_ * _loc31_.c2.r1y);
                     _loc17_ = _loc31_.b2.var_123;
                     _loc31_.b2.var_104 = Number(_loc31_.b2.var_104 + _loc15_ * _loc17_);
                     _loc31_.b2.var_105 = Number(_loc31_.b2.var_105 + _loc16_ * _loc17_);
                     _loc31_.b2.var_94 = Number(_loc31_.b2.var_94 + _loc31_.b2.var_136 * (_loc16_ * _loc31_.c2.r2x - _loc15_ * _loc31_.c2.r2y));
                  }
                  _loc31_.b2.var_94 = Number(_loc31_.b2.var_94 + _loc31_.var_170 * _loc31_.b2.var_136);
                  _loc31_.b1.var_94 = _loc31_.b1.var_94 - _loc31_.var_170 * _loc31_.b1.var_136;
                  _loc31_ = _loc30_.var_128;
                  _loc21_ = _loc31_.k1x + _loc31_.b2.var_104 - _loc31_.c1.r2y * _loc31_.b2.var_94 - (_loc31_.b1.var_104 - _loc31_.c1.r1y * _loc31_.b1.var_94);
                  _loc32_ = Number(Number(_loc31_.k1y + _loc31_.b2.var_105) + _loc31_.c1.r2x * _loc31_.b2.var_94) - (Number(_loc31_.b1.var_105 + _loc31_.c1.r1x * _loc31_.b1.var_94));
                  _loc17_ = (_loc32_ * _loc31_.nx - _loc21_ * _loc31_.ny + _loc31_.var_369) * _loc31_.c1.var_440;
                  _loc18_ = _loc31_.c1.name_52 * _loc31_.c1.var_142;
                  _loc19_ = _loc31_.c1.var_208;
                  _loc20_ = Number(_loc19_ - _loc17_);
                  if(_loc20_ > _loc18_)
                  {
                     _loc20_ = Number(_loc18_);
                  }
                  else if(_loc20_ < -_loc18_)
                  {
                     _loc20_ = Number(-_loc18_);
                  }
                  _loc17_ = _loc20_ - _loc19_;
                  _loc31_.c1.var_208 = _loc20_;
                  _loc15_ = Number(-_loc31_.ny * _loc17_);
                  _loc16_ = _loc31_.nx * _loc17_;
                  _loc31_.b2.var_104 = Number(_loc31_.b2.var_104 + _loc15_ * _loc31_.b2.var_123);
                  _loc31_.b2.var_105 = Number(_loc31_.b2.var_105 + _loc16_ * _loc31_.b2.var_123);
                  _loc31_.b1.var_104 = _loc31_.b1.var_104 - _loc15_ * _loc31_.b1.var_123;
                  _loc31_.b1.var_105 = _loc31_.b1.var_105 - _loc16_ * _loc31_.b1.var_123;
                  _loc31_.b2.var_94 = Number(_loc31_.b2.var_94 + _loc31_.rt1b * _loc17_ * _loc31_.b2.var_136);
                  _loc31_.b1.var_94 = _loc31_.b1.var_94 - _loc31_.rt1a * _loc17_ * _loc31_.b1.var_136;
                  if(_loc31_.var_270)
                  {
                     _loc33_ = _loc31_.k2x + _loc31_.b2.var_104 - _loc31_.c2.r2y * _loc31_.b2.var_94 - (_loc31_.b1.var_104 - _loc31_.c2.r1y * _loc31_.b1.var_94);
                     _loc34_ = Number(Number(_loc31_.k2y + _loc31_.b2.var_105) + _loc31_.c2.r2x * _loc31_.b2.var_94) - (Number(_loc31_.b1.var_105 + _loc31_.c2.r1x * _loc31_.b1.var_94));
                     _loc17_ = (_loc34_ * _loc31_.nx - _loc33_ * _loc31_.ny + _loc31_.var_369) * _loc31_.c2.var_440;
                     _loc18_ = _loc31_.c2.name_52 * _loc31_.c2.var_142;
                     _loc19_ = _loc31_.c2.var_208;
                     _loc20_ = Number(_loc19_ - _loc17_);
                     if(_loc20_ > _loc18_)
                     {
                        _loc20_ = Number(_loc18_);
                     }
                     else if(_loc20_ < -_loc18_)
                     {
                        _loc20_ = Number(-_loc18_);
                     }
                     _loc17_ = _loc20_ - _loc19_;
                     _loc31_.c2.var_208 = _loc20_;
                     _loc15_ = Number(-_loc31_.ny * _loc17_);
                     _loc16_ = _loc31_.nx * _loc17_;
                     _loc31_.b2.var_104 = Number(_loc31_.b2.var_104 + _loc15_ * _loc31_.b2.var_123);
                     _loc31_.b2.var_105 = Number(_loc31_.b2.var_105 + _loc16_ * _loc31_.b2.var_123);
                     _loc31_.b1.var_104 = _loc31_.b1.var_104 - _loc15_ * _loc31_.b1.var_123;
                     _loc31_.b1.var_105 = _loc31_.b1.var_105 - _loc16_ * _loc31_.b1.var_123;
                     _loc31_.b2.var_94 = Number(_loc31_.b2.var_94 + _loc31_.rt2b * _loc17_ * _loc31_.b2.var_136);
                     _loc31_.b1.var_94 = _loc31_.b1.var_94 - _loc31_.rt2a * _loc17_ * _loc31_.b1.var_136;
                     _loc21_ = _loc31_.k1x + _loc31_.b2.var_104 - _loc31_.c1.r2y * _loc31_.b2.var_94 - (_loc31_.b1.var_104 - _loc31_.c1.r1y * _loc31_.b1.var_94);
                     _loc32_ = Number(Number(_loc31_.k1y + _loc31_.b2.var_105) + _loc31_.c1.r2x * _loc31_.b2.var_94) - (Number(_loc31_.b1.var_105 + _loc31_.c1.r1x * _loc31_.b1.var_94));
                     _loc33_ = _loc31_.k2x + _loc31_.b2.var_104 - _loc31_.c2.r2y * _loc31_.b2.var_94 - (_loc31_.b1.var_104 - _loc31_.c2.r1y * _loc31_.b1.var_94);
                     _loc34_ = Number(Number(_loc31_.k2y + _loc31_.b2.var_105) + _loc31_.c2.r2x * _loc31_.b2.var_94) - (Number(_loc31_.b1.var_105 + _loc31_.c2.r1x * _loc31_.b1.var_94));
                     _loc35_ = _loc31_.c1.var_142;
                     _loc36_ = _loc31_.c2.var_142;
                     _loc37_ = Number(Number(Number(Number(_loc21_ * _loc31_.nx + _loc32_ * _loc31_.ny) + _loc31_.var_311) + _loc31_.c1.name_39) - (Number(_loc31_.var_640 * _loc35_ + _loc31_.var_309 * _loc36_)));
                     _loc38_ = Number(Number(Number(Number(_loc33_ * _loc31_.nx + _loc34_ * _loc31_.ny) + _loc31_.var_311) + _loc31_.c2.name_39) - (Number(_loc31_.var_309 * _loc35_ + _loc31_.var_648 * _loc36_)));
                     _loc39_ = -(_loc31_.var_172 * _loc37_ + _loc31_.var_171 * _loc38_);
                     _loc40_ = -(_loc31_.var_171 * _loc37_ + _loc31_.var_173 * _loc38_);
                     if(_loc39_ >= 0 && _loc40_ >= 0)
                     {
                        _loc37_ = Number(_loc39_ - _loc35_);
                        _loc38_ = Number(_loc40_ - _loc36_);
                        _loc31_.c1.var_142 = _loc39_;
                        _loc31_.c2.var_142 = _loc40_;
                     }
                     else
                     {
                        _loc39_ = -_loc31_.c1.var_342 * _loc37_;
                        if(_loc39_ >= 0 && Number(_loc31_.var_309 * _loc39_ + _loc38_) >= 0)
                        {
                           _loc37_ = Number(_loc39_ - _loc35_);
                           _loc38_ = Number(-_loc36_);
                           _loc31_.c1.var_142 = _loc39_;
                           _loc31_.c2.var_142 = 0;
                        }
                        else
                        {
                           _loc40_ = -_loc31_.c2.var_342 * _loc38_;
                           if(_loc40_ >= 0 && Number(_loc31_.var_309 * _loc40_ + _loc37_) >= 0)
                           {
                              _loc37_ = Number(-_loc35_);
                              _loc38_ = Number(_loc40_ - _loc36_);
                              _loc31_.c1.var_142 = 0;
                              _loc31_.c2.var_142 = _loc40_;
                           }
                           else if(_loc37_ >= 0 && _loc38_ >= 0)
                           {
                              _loc37_ = Number(-_loc35_);
                              _loc38_ = Number(-_loc36_);
                              _loc41_ = 0;
                              _loc31_.c2.var_142 = _loc41_;
                              _loc31_.c1.var_142 = _loc41_;
                           }
                           else
                           {
                              _loc37_ = 0;
                              _loc38_ = 0;
                           }
                        }
                     }
                     _loc17_ = Number(_loc37_ + _loc38_);
                     _loc15_ = Number(_loc31_.nx * _loc17_);
                     _loc16_ = _loc31_.ny * _loc17_;
                     _loc31_.b2.var_104 = Number(_loc31_.b2.var_104 + _loc15_ * _loc31_.b2.var_123);
                     _loc31_.b2.var_105 = Number(_loc31_.b2.var_105 + _loc16_ * _loc31_.b2.var_123);
                     _loc31_.b1.var_104 = _loc31_.b1.var_104 - _loc15_ * _loc31_.b1.var_123;
                     _loc31_.b1.var_105 = _loc31_.b1.var_105 - _loc16_ * _loc31_.b1.var_123;
                     _loc31_.b2.var_94 = Number(_loc31_.b2.var_94 + (_loc31_.rn1b * _loc37_ + _loc31_.rn2b * _loc38_) * _loc31_.b2.var_136);
                     _loc31_.b1.var_94 = _loc31_.b1.var_94 - (_loc31_.rn1a * _loc37_ + _loc31_.rn2a * _loc38_) * _loc31_.b1.var_136;
                  }
                  else
                  {
                     if(_loc31_.radius != 0)
                     {
                        _loc33_ = _loc31_.b2.var_94 - _loc31_.b1.var_94;
                        _loc17_ = _loc33_ * _loc31_.var_527;
                        _loc18_ = _loc31_.rfric * _loc31_.c1.var_142;
                        _loc19_ = _loc31_.var_170;
                        _loc31_.var_170 = _loc31_.var_170 - _loc17_;
                        if(_loc31_.var_170 > _loc18_)
                        {
                           _loc31_.var_170 = _loc18_;
                        }
                        else if(_loc31_.var_170 < -_loc18_)
                        {
                           _loc31_.var_170 = -_loc18_;
                        }
                        _loc17_ = _loc31_.var_170 - _loc19_;
                        _loc31_.b2.var_94 = Number(_loc31_.b2.var_94 + _loc17_ * _loc31_.b2.var_136);
                        _loc31_.b1.var_94 = _loc31_.b1.var_94 - _loc17_ * _loc31_.b1.var_136;
                     }
                     _loc21_ = _loc31_.k1x + _loc31_.b2.var_104 - _loc31_.c1.r2y * _loc31_.b2.var_94 - (_loc31_.b1.var_104 - _loc31_.c1.r1y * _loc31_.b1.var_94);
                     _loc32_ = Number(Number(_loc31_.k1y + _loc31_.b2.var_105) + _loc31_.c1.r2x * _loc31_.b2.var_94) - (Number(_loc31_.b1.var_105 + _loc31_.c1.r1x * _loc31_.b1.var_94));
                     _loc17_ = (Number(_loc31_.c1.name_39 + (Number(_loc31_.nx * _loc21_ + _loc31_.ny * _loc32_))) + _loc31_.var_311) * _loc31_.c1.var_342;
                     _loc19_ = _loc31_.c1.var_142;
                     _loc20_ = Number(_loc19_ - _loc17_);
                     if(_loc20_ < 0)
                     {
                        _loc20_ = 0;
                     }
                     _loc17_ = _loc20_ - _loc19_;
                     _loc31_.c1.var_142 = _loc20_;
                     _loc15_ = Number(_loc31_.nx * _loc17_);
                     _loc16_ = _loc31_.ny * _loc17_;
                     _loc31_.b2.var_104 = Number(_loc31_.b2.var_104 + _loc15_ * _loc31_.b2.var_123);
                     _loc31_.b2.var_105 = Number(_loc31_.b2.var_105 + _loc16_ * _loc31_.b2.var_123);
                     _loc31_.b1.var_104 = _loc31_.b1.var_104 - _loc15_ * _loc31_.b1.var_123;
                     _loc31_.b1.var_105 = _loc31_.b1.var_105 - _loc16_ * _loc31_.b1.var_123;
                     _loc31_.b2.var_94 = Number(_loc31_.b2.var_94 + _loc31_.rn1b * _loc17_ * _loc31_.b2.var_136);
                     _loc31_.b1.var_94 = _loc31_.b1.var_94 - _loc31_.rn1a * _loc17_ * _loc31_.b1.var_136;
                  }
                  _loc31_ = _loc30_.var_128;
                  _loc21_ = _loc31_.k1x + _loc31_.b2.var_104 - _loc31_.c1.r2y * _loc31_.b2.var_94 - (_loc31_.b1.var_104 - _loc31_.c1.r1y * _loc31_.b1.var_94);
                  _loc32_ = Number(Number(_loc31_.k1y + _loc31_.b2.var_105) + _loc31_.c1.r2x * _loc31_.b2.var_94) - (Number(_loc31_.b1.var_105 + _loc31_.c1.r1x * _loc31_.b1.var_94));
                  _loc17_ = (_loc32_ * _loc31_.nx - _loc21_ * _loc31_.ny + _loc31_.var_369) * _loc31_.c1.var_440;
                  _loc18_ = _loc31_.c1.name_52 * _loc31_.c1.var_142;
                  _loc19_ = _loc31_.c1.var_208;
                  _loc20_ = Number(_loc19_ - _loc17_);
                  if(_loc20_ > _loc18_)
                  {
                     _loc20_ = Number(_loc18_);
                  }
                  else if(_loc20_ < -_loc18_)
                  {
                     _loc20_ = Number(-_loc18_);
                  }
                  _loc17_ = _loc20_ - _loc19_;
                  _loc31_.c1.var_208 = _loc20_;
                  _loc15_ = Number(-_loc31_.ny * _loc17_);
                  _loc16_ = _loc31_.nx * _loc17_;
                  _loc31_.b2.var_104 = Number(_loc31_.b2.var_104 + _loc15_ * _loc31_.b2.var_123);
                  _loc31_.b2.var_105 = Number(_loc31_.b2.var_105 + _loc16_ * _loc31_.b2.var_123);
                  _loc31_.b1.var_104 = _loc31_.b1.var_104 - _loc15_ * _loc31_.b1.var_123;
                  _loc31_.b1.var_105 = _loc31_.b1.var_105 - _loc16_ * _loc31_.b1.var_123;
                  _loc31_.b2.var_94 = Number(_loc31_.b2.var_94 + _loc31_.rt1b * _loc17_ * _loc31_.b2.var_136);
                  _loc31_.b1.var_94 = _loc31_.b1.var_94 - _loc31_.rt1a * _loc17_ * _loc31_.b1.var_136;
                  if(_loc31_.var_270)
                  {
                     _loc33_ = _loc31_.k2x + _loc31_.b2.var_104 - _loc31_.c2.r2y * _loc31_.b2.var_94 - (_loc31_.b1.var_104 - _loc31_.c2.r1y * _loc31_.b1.var_94);
                     _loc34_ = Number(Number(_loc31_.k2y + _loc31_.b2.var_105) + _loc31_.c2.r2x * _loc31_.b2.var_94) - (Number(_loc31_.b1.var_105 + _loc31_.c2.r1x * _loc31_.b1.var_94));
                     _loc17_ = (_loc34_ * _loc31_.nx - _loc33_ * _loc31_.ny + _loc31_.var_369) * _loc31_.c2.var_440;
                     _loc18_ = _loc31_.c2.name_52 * _loc31_.c2.var_142;
                     _loc19_ = _loc31_.c2.var_208;
                     _loc20_ = Number(_loc19_ - _loc17_);
                     if(_loc20_ > _loc18_)
                     {
                        _loc20_ = Number(_loc18_);
                     }
                     else if(_loc20_ < -_loc18_)
                     {
                        _loc20_ = Number(-_loc18_);
                     }
                     _loc17_ = _loc20_ - _loc19_;
                     _loc31_.c2.var_208 = _loc20_;
                     _loc15_ = Number(-_loc31_.ny * _loc17_);
                     _loc16_ = _loc31_.nx * _loc17_;
                     _loc31_.b2.var_104 = Number(_loc31_.b2.var_104 + _loc15_ * _loc31_.b2.var_123);
                     _loc31_.b2.var_105 = Number(_loc31_.b2.var_105 + _loc16_ * _loc31_.b2.var_123);
                     _loc31_.b1.var_104 = _loc31_.b1.var_104 - _loc15_ * _loc31_.b1.var_123;
                     _loc31_.b1.var_105 = _loc31_.b1.var_105 - _loc16_ * _loc31_.b1.var_123;
                     _loc31_.b2.var_94 = Number(_loc31_.b2.var_94 + _loc31_.rt2b * _loc17_ * _loc31_.b2.var_136);
                     _loc31_.b1.var_94 = _loc31_.b1.var_94 - _loc31_.rt2a * _loc17_ * _loc31_.b1.var_136;
                     _loc21_ = _loc31_.k1x + _loc31_.b2.var_104 - _loc31_.c1.r2y * _loc31_.b2.var_94 - (_loc31_.b1.var_104 - _loc31_.c1.r1y * _loc31_.b1.var_94);
                     _loc32_ = Number(Number(_loc31_.k1y + _loc31_.b2.var_105) + _loc31_.c1.r2x * _loc31_.b2.var_94) - (Number(_loc31_.b1.var_105 + _loc31_.c1.r1x * _loc31_.b1.var_94));
                     _loc33_ = _loc31_.k2x + _loc31_.b2.var_104 - _loc31_.c2.r2y * _loc31_.b2.var_94 - (_loc31_.b1.var_104 - _loc31_.c2.r1y * _loc31_.b1.var_94);
                     _loc34_ = Number(Number(_loc31_.k2y + _loc31_.b2.var_105) + _loc31_.c2.r2x * _loc31_.b2.var_94) - (Number(_loc31_.b1.var_105 + _loc31_.c2.r1x * _loc31_.b1.var_94));
                     _loc35_ = _loc31_.c1.var_142;
                     _loc36_ = _loc31_.c2.var_142;
                     _loc37_ = Number(Number(Number(Number(_loc21_ * _loc31_.nx + _loc32_ * _loc31_.ny) + _loc31_.var_311) + _loc31_.c1.name_39) - (Number(_loc31_.var_640 * _loc35_ + _loc31_.var_309 * _loc36_)));
                     _loc38_ = Number(Number(Number(Number(_loc33_ * _loc31_.nx + _loc34_ * _loc31_.ny) + _loc31_.var_311) + _loc31_.c2.name_39) - (Number(_loc31_.var_309 * _loc35_ + _loc31_.var_648 * _loc36_)));
                     _loc39_ = -(_loc31_.var_172 * _loc37_ + _loc31_.var_171 * _loc38_);
                     _loc40_ = -(_loc31_.var_171 * _loc37_ + _loc31_.var_173 * _loc38_);
                     if(_loc39_ >= 0 && _loc40_ >= 0)
                     {
                        _loc37_ = Number(_loc39_ - _loc35_);
                        _loc38_ = Number(_loc40_ - _loc36_);
                        _loc31_.c1.var_142 = _loc39_;
                        _loc31_.c2.var_142 = _loc40_;
                     }
                     else
                     {
                        _loc39_ = -_loc31_.c1.var_342 * _loc37_;
                        if(_loc39_ >= 0 && Number(_loc31_.var_309 * _loc39_ + _loc38_) >= 0)
                        {
                           _loc37_ = Number(_loc39_ - _loc35_);
                           _loc38_ = Number(-_loc36_);
                           _loc31_.c1.var_142 = _loc39_;
                           _loc31_.c2.var_142 = 0;
                        }
                        else
                        {
                           _loc40_ = -_loc31_.c2.var_342 * _loc38_;
                           if(_loc40_ >= 0 && Number(_loc31_.var_309 * _loc40_ + _loc37_) >= 0)
                           {
                              _loc37_ = Number(-_loc35_);
                              _loc38_ = Number(_loc40_ - _loc36_);
                              _loc31_.c1.var_142 = 0;
                              _loc31_.c2.var_142 = _loc40_;
                           }
                           else if(_loc37_ >= 0 && _loc38_ >= 0)
                           {
                              _loc37_ = Number(-_loc35_);
                              _loc38_ = Number(-_loc36_);
                              _loc41_ = 0;
                              _loc31_.c2.var_142 = _loc41_;
                              _loc31_.c1.var_142 = _loc41_;
                           }
                           else
                           {
                              _loc37_ = 0;
                              _loc38_ = 0;
                           }
                        }
                     }
                     _loc17_ = Number(_loc37_ + _loc38_);
                     _loc15_ = Number(_loc31_.nx * _loc17_);
                     _loc16_ = _loc31_.ny * _loc17_;
                     _loc31_.b2.var_104 = Number(_loc31_.b2.var_104 + _loc15_ * _loc31_.b2.var_123);
                     _loc31_.b2.var_105 = Number(_loc31_.b2.var_105 + _loc16_ * _loc31_.b2.var_123);
                     _loc31_.b1.var_104 = _loc31_.b1.var_104 - _loc15_ * _loc31_.b1.var_123;
                     _loc31_.b1.var_105 = _loc31_.b1.var_105 - _loc16_ * _loc31_.b1.var_123;
                     _loc31_.b2.var_94 = Number(_loc31_.b2.var_94 + (_loc31_.rn1b * _loc37_ + _loc31_.rn2b * _loc38_) * _loc31_.b2.var_136);
                     _loc31_.b1.var_94 = _loc31_.b1.var_94 - (_loc31_.rn1a * _loc37_ + _loc31_.rn2a * _loc38_) * _loc31_.b1.var_136;
                  }
                  else
                  {
                     if(_loc31_.radius != 0)
                     {
                        _loc33_ = _loc31_.b2.var_94 - _loc31_.b1.var_94;
                        _loc17_ = _loc33_ * _loc31_.var_527;
                        _loc18_ = _loc31_.rfric * _loc31_.c1.var_142;
                        _loc19_ = _loc31_.var_170;
                        _loc31_.var_170 = _loc31_.var_170 - _loc17_;
                        if(_loc31_.var_170 > _loc18_)
                        {
                           _loc31_.var_170 = _loc18_;
                        }
                        else if(_loc31_.var_170 < -_loc18_)
                        {
                           _loc31_.var_170 = -_loc18_;
                        }
                        _loc17_ = _loc31_.var_170 - _loc19_;
                        _loc31_.b2.var_94 = Number(_loc31_.b2.var_94 + _loc17_ * _loc31_.b2.var_136);
                        _loc31_.b1.var_94 = _loc31_.b1.var_94 - _loc17_ * _loc31_.b1.var_136;
                     }
                     _loc21_ = _loc31_.k1x + _loc31_.b2.var_104 - _loc31_.c1.r2y * _loc31_.b2.var_94 - (_loc31_.b1.var_104 - _loc31_.c1.r1y * _loc31_.b1.var_94);
                     _loc32_ = Number(Number(_loc31_.k1y + _loc31_.b2.var_105) + _loc31_.c1.r2x * _loc31_.b2.var_94) - (Number(_loc31_.b1.var_105 + _loc31_.c1.r1x * _loc31_.b1.var_94));
                     _loc17_ = (Number(_loc31_.c1.name_39 + (Number(_loc31_.nx * _loc21_ + _loc31_.ny * _loc32_))) + _loc31_.var_311) * _loc31_.c1.var_342;
                     _loc19_ = _loc31_.c1.var_142;
                     _loc20_ = Number(_loc19_ - _loc17_);
                     if(_loc20_ < 0)
                     {
                        _loc20_ = 0;
                     }
                     _loc17_ = _loc20_ - _loc19_;
                     _loc31_.c1.var_142 = _loc20_;
                     _loc15_ = Number(_loc31_.nx * _loc17_);
                     _loc16_ = _loc31_.ny * _loc17_;
                     _loc31_.b2.var_104 = Number(_loc31_.b2.var_104 + _loc15_ * _loc31_.b2.var_123);
                     _loc31_.b2.var_105 = Number(_loc31_.b2.var_105 + _loc16_ * _loc31_.b2.var_123);
                     _loc31_.b1.var_104 = _loc31_.b1.var_104 - _loc15_ * _loc31_.b1.var_123;
                     _loc31_.b1.var_105 = _loc31_.b1.var_105 - _loc16_ * _loc31_.b1.var_123;
                     _loc31_.b2.var_94 = Number(_loc31_.b2.var_94 + _loc31_.rn1b * _loc17_ * _loc31_.b2.var_136);
                     _loc31_.b1.var_94 = _loc31_.b1.var_94 - _loc31_.rn1a * _loc17_ * _loc31_.b1.var_136;
                  }
                  _loc31_ = _loc30_.var_128;
                  _loc21_ = _loc31_.k1x + _loc31_.b2.var_104 - _loc31_.c1.r2y * _loc31_.b2.var_94 - (_loc31_.b1.var_104 - _loc31_.c1.r1y * _loc31_.b1.var_94);
                  _loc32_ = Number(Number(_loc31_.k1y + _loc31_.b2.var_105) + _loc31_.c1.r2x * _loc31_.b2.var_94) - (Number(_loc31_.b1.var_105 + _loc31_.c1.r1x * _loc31_.b1.var_94));
                  _loc17_ = (_loc32_ * _loc31_.nx - _loc21_ * _loc31_.ny + _loc31_.var_369) * _loc31_.c1.var_440;
                  _loc18_ = _loc31_.c1.name_52 * _loc31_.c1.var_142;
                  _loc19_ = _loc31_.c1.var_208;
                  _loc20_ = Number(_loc19_ - _loc17_);
                  if(_loc20_ > _loc18_)
                  {
                     _loc20_ = Number(_loc18_);
                  }
                  else if(_loc20_ < -_loc18_)
                  {
                     _loc20_ = Number(-_loc18_);
                  }
                  _loc17_ = _loc20_ - _loc19_;
                  _loc31_.c1.var_208 = _loc20_;
                  _loc15_ = Number(-_loc31_.ny * _loc17_);
                  _loc16_ = _loc31_.nx * _loc17_;
                  _loc31_.b2.var_104 = Number(_loc31_.b2.var_104 + _loc15_ * _loc31_.b2.var_123);
                  _loc31_.b2.var_105 = Number(_loc31_.b2.var_105 + _loc16_ * _loc31_.b2.var_123);
                  _loc31_.b1.var_104 = _loc31_.b1.var_104 - _loc15_ * _loc31_.b1.var_123;
                  _loc31_.b1.var_105 = _loc31_.b1.var_105 - _loc16_ * _loc31_.b1.var_123;
                  _loc31_.b2.var_94 = Number(_loc31_.b2.var_94 + _loc31_.rt1b * _loc17_ * _loc31_.b2.var_136);
                  _loc31_.b1.var_94 = _loc31_.b1.var_94 - _loc31_.rt1a * _loc17_ * _loc31_.b1.var_136;
                  if(_loc31_.var_270)
                  {
                     _loc33_ = _loc31_.k2x + _loc31_.b2.var_104 - _loc31_.c2.r2y * _loc31_.b2.var_94 - (_loc31_.b1.var_104 - _loc31_.c2.r1y * _loc31_.b1.var_94);
                     _loc34_ = Number(Number(_loc31_.k2y + _loc31_.b2.var_105) + _loc31_.c2.r2x * _loc31_.b2.var_94) - (Number(_loc31_.b1.var_105 + _loc31_.c2.r1x * _loc31_.b1.var_94));
                     _loc17_ = (_loc34_ * _loc31_.nx - _loc33_ * _loc31_.ny + _loc31_.var_369) * _loc31_.c2.var_440;
                     _loc18_ = _loc31_.c2.name_52 * _loc31_.c2.var_142;
                     _loc19_ = _loc31_.c2.var_208;
                     _loc20_ = Number(_loc19_ - _loc17_);
                     if(_loc20_ > _loc18_)
                     {
                        _loc20_ = Number(_loc18_);
                     }
                     else if(_loc20_ < -_loc18_)
                     {
                        _loc20_ = Number(-_loc18_);
                     }
                     _loc17_ = _loc20_ - _loc19_;
                     _loc31_.c2.var_208 = _loc20_;
                     _loc15_ = Number(-_loc31_.ny * _loc17_);
                     _loc16_ = _loc31_.nx * _loc17_;
                     _loc31_.b2.var_104 = Number(_loc31_.b2.var_104 + _loc15_ * _loc31_.b2.var_123);
                     _loc31_.b2.var_105 = Number(_loc31_.b2.var_105 + _loc16_ * _loc31_.b2.var_123);
                     _loc31_.b1.var_104 = _loc31_.b1.var_104 - _loc15_ * _loc31_.b1.var_123;
                     _loc31_.b1.var_105 = _loc31_.b1.var_105 - _loc16_ * _loc31_.b1.var_123;
                     _loc31_.b2.var_94 = Number(_loc31_.b2.var_94 + _loc31_.rt2b * _loc17_ * _loc31_.b2.var_136);
                     _loc31_.b1.var_94 = _loc31_.b1.var_94 - _loc31_.rt2a * _loc17_ * _loc31_.b1.var_136;
                     _loc21_ = _loc31_.k1x + _loc31_.b2.var_104 - _loc31_.c1.r2y * _loc31_.b2.var_94 - (_loc31_.b1.var_104 - _loc31_.c1.r1y * _loc31_.b1.var_94);
                     _loc32_ = Number(Number(_loc31_.k1y + _loc31_.b2.var_105) + _loc31_.c1.r2x * _loc31_.b2.var_94) - (Number(_loc31_.b1.var_105 + _loc31_.c1.r1x * _loc31_.b1.var_94));
                     _loc33_ = _loc31_.k2x + _loc31_.b2.var_104 - _loc31_.c2.r2y * _loc31_.b2.var_94 - (_loc31_.b1.var_104 - _loc31_.c2.r1y * _loc31_.b1.var_94);
                     _loc34_ = Number(Number(_loc31_.k2y + _loc31_.b2.var_105) + _loc31_.c2.r2x * _loc31_.b2.var_94) - (Number(_loc31_.b1.var_105 + _loc31_.c2.r1x * _loc31_.b1.var_94));
                     _loc35_ = _loc31_.c1.var_142;
                     _loc36_ = _loc31_.c2.var_142;
                     _loc37_ = Number(Number(Number(Number(_loc21_ * _loc31_.nx + _loc32_ * _loc31_.ny) + _loc31_.var_311) + _loc31_.c1.name_39) - (Number(_loc31_.var_640 * _loc35_ + _loc31_.var_309 * _loc36_)));
                     _loc38_ = Number(Number(Number(Number(_loc33_ * _loc31_.nx + _loc34_ * _loc31_.ny) + _loc31_.var_311) + _loc31_.c2.name_39) - (Number(_loc31_.var_309 * _loc35_ + _loc31_.var_648 * _loc36_)));
                     _loc39_ = -(_loc31_.var_172 * _loc37_ + _loc31_.var_171 * _loc38_);
                     _loc40_ = -(_loc31_.var_171 * _loc37_ + _loc31_.var_173 * _loc38_);
                     if(_loc39_ >= 0 && _loc40_ >= 0)
                     {
                        _loc37_ = Number(_loc39_ - _loc35_);
                        _loc38_ = Number(_loc40_ - _loc36_);
                        _loc31_.c1.var_142 = _loc39_;
                        _loc31_.c2.var_142 = _loc40_;
                     }
                     else
                     {
                        _loc39_ = -_loc31_.c1.var_342 * _loc37_;
                        if(_loc39_ >= 0 && Number(_loc31_.var_309 * _loc39_ + _loc38_) >= 0)
                        {
                           _loc37_ = Number(_loc39_ - _loc35_);
                           _loc38_ = Number(-_loc36_);
                           _loc31_.c1.var_142 = _loc39_;
                           _loc31_.c2.var_142 = 0;
                        }
                        else
                        {
                           _loc40_ = -_loc31_.c2.var_342 * _loc38_;
                           if(_loc40_ >= 0 && Number(_loc31_.var_309 * _loc40_ + _loc37_) >= 0)
                           {
                              _loc37_ = Number(-_loc35_);
                              _loc38_ = Number(_loc40_ - _loc36_);
                              _loc31_.c1.var_142 = 0;
                              _loc31_.c2.var_142 = _loc40_;
                           }
                           else if(_loc37_ >= 0 && _loc38_ >= 0)
                           {
                              _loc37_ = Number(-_loc35_);
                              _loc38_ = Number(-_loc36_);
                              _loc41_ = 0;
                              _loc31_.c2.var_142 = _loc41_;
                              _loc31_.c1.var_142 = _loc41_;
                           }
                           else
                           {
                              _loc37_ = 0;
                              _loc38_ = 0;
                           }
                        }
                     }
                     _loc17_ = Number(_loc37_ + _loc38_);
                     _loc15_ = Number(_loc31_.nx * _loc17_);
                     _loc16_ = _loc31_.ny * _loc17_;
                     _loc31_.b2.var_104 = Number(_loc31_.b2.var_104 + _loc15_ * _loc31_.b2.var_123);
                     _loc31_.b2.var_105 = Number(_loc31_.b2.var_105 + _loc16_ * _loc31_.b2.var_123);
                     _loc31_.b1.var_104 = _loc31_.b1.var_104 - _loc15_ * _loc31_.b1.var_123;
                     _loc31_.b1.var_105 = _loc31_.b1.var_105 - _loc16_ * _loc31_.b1.var_123;
                     _loc31_.b2.var_94 = Number(_loc31_.b2.var_94 + (_loc31_.rn1b * _loc37_ + _loc31_.rn2b * _loc38_) * _loc31_.b2.var_136);
                     _loc31_.b1.var_94 = _loc31_.b1.var_94 - (_loc31_.rn1a * _loc37_ + _loc31_.rn2a * _loc38_) * _loc31_.b1.var_136;
                  }
                  else
                  {
                     if(_loc31_.radius != 0)
                     {
                        _loc33_ = _loc31_.b2.var_94 - _loc31_.b1.var_94;
                        _loc17_ = _loc33_ * _loc31_.var_527;
                        _loc18_ = _loc31_.rfric * _loc31_.c1.var_142;
                        _loc19_ = _loc31_.var_170;
                        _loc31_.var_170 = _loc31_.var_170 - _loc17_;
                        if(_loc31_.var_170 > _loc18_)
                        {
                           _loc31_.var_170 = _loc18_;
                        }
                        else if(_loc31_.var_170 < -_loc18_)
                        {
                           _loc31_.var_170 = -_loc18_;
                        }
                        _loc17_ = _loc31_.var_170 - _loc19_;
                        _loc31_.b2.var_94 = Number(_loc31_.b2.var_94 + _loc17_ * _loc31_.b2.var_136);
                        _loc31_.b1.var_94 = _loc31_.b1.var_94 - _loc17_ * _loc31_.b1.var_136;
                     }
                     _loc21_ = _loc31_.k1x + _loc31_.b2.var_104 - _loc31_.c1.r2y * _loc31_.b2.var_94 - (_loc31_.b1.var_104 - _loc31_.c1.r1y * _loc31_.b1.var_94);
                     _loc32_ = Number(Number(_loc31_.k1y + _loc31_.b2.var_105) + _loc31_.c1.r2x * _loc31_.b2.var_94) - (Number(_loc31_.b1.var_105 + _loc31_.c1.r1x * _loc31_.b1.var_94));
                     _loc17_ = (Number(_loc31_.c1.name_39 + (Number(_loc31_.nx * _loc21_ + _loc31_.ny * _loc32_))) + _loc31_.var_311) * _loc31_.c1.var_342;
                     _loc19_ = _loc31_.c1.var_142;
                     _loc20_ = Number(_loc19_ - _loc17_);
                     if(_loc20_ < 0)
                     {
                        _loc20_ = 0;
                     }
                     _loc17_ = _loc20_ - _loc19_;
                     _loc31_.c1.var_142 = _loc20_;
                     _loc15_ = Number(_loc31_.nx * _loc17_);
                     _loc16_ = _loc31_.ny * _loc17_;
                     _loc31_.b2.var_104 = Number(_loc31_.b2.var_104 + _loc15_ * _loc31_.b2.var_123);
                     _loc31_.b2.var_105 = Number(_loc31_.b2.var_105 + _loc16_ * _loc31_.b2.var_123);
                     _loc31_.b1.var_104 = _loc31_.b1.var_104 - _loc15_ * _loc31_.b1.var_123;
                     _loc31_.b1.var_105 = _loc31_.b1.var_105 - _loc16_ * _loc31_.b1.var_123;
                     _loc31_.b2.var_94 = Number(_loc31_.b2.var_94 + _loc31_.rn1b * _loc17_ * _loc31_.b2.var_136);
                     _loc31_.b1.var_94 = _loc31_.b1.var_94 - _loc31_.rn1a * _loc17_ * _loc31_.b1.var_136;
                  }
                  _loc31_ = _loc30_.var_128;
                  _loc21_ = _loc31_.k1x + _loc31_.b2.var_104 - _loc31_.c1.r2y * _loc31_.b2.var_94 - (_loc31_.b1.var_104 - _loc31_.c1.r1y * _loc31_.b1.var_94);
                  _loc32_ = Number(Number(_loc31_.k1y + _loc31_.b2.var_105) + _loc31_.c1.r2x * _loc31_.b2.var_94) - (Number(_loc31_.b1.var_105 + _loc31_.c1.r1x * _loc31_.b1.var_94));
                  _loc17_ = (_loc32_ * _loc31_.nx - _loc21_ * _loc31_.ny + _loc31_.var_369) * _loc31_.c1.var_440;
                  _loc18_ = _loc31_.c1.name_52 * _loc31_.c1.var_142;
                  _loc19_ = _loc31_.c1.var_208;
                  _loc20_ = Number(_loc19_ - _loc17_);
                  if(_loc20_ > _loc18_)
                  {
                     _loc20_ = Number(_loc18_);
                  }
                  else if(_loc20_ < -_loc18_)
                  {
                     _loc20_ = Number(-_loc18_);
                  }
                  _loc17_ = _loc20_ - _loc19_;
                  _loc31_.c1.var_208 = _loc20_;
                  _loc15_ = Number(-_loc31_.ny * _loc17_);
                  _loc16_ = _loc31_.nx * _loc17_;
                  _loc31_.b2.var_104 = Number(_loc31_.b2.var_104 + _loc15_ * _loc31_.b2.var_123);
                  _loc31_.b2.var_105 = Number(_loc31_.b2.var_105 + _loc16_ * _loc31_.b2.var_123);
                  _loc31_.b1.var_104 = _loc31_.b1.var_104 - _loc15_ * _loc31_.b1.var_123;
                  _loc31_.b1.var_105 = _loc31_.b1.var_105 - _loc16_ * _loc31_.b1.var_123;
                  _loc31_.b2.var_94 = Number(_loc31_.b2.var_94 + _loc31_.rt1b * _loc17_ * _loc31_.b2.var_136);
                  _loc31_.b1.var_94 = _loc31_.b1.var_94 - _loc31_.rt1a * _loc17_ * _loc31_.b1.var_136;
                  if(_loc31_.var_270)
                  {
                     _loc33_ = _loc31_.k2x + _loc31_.b2.var_104 - _loc31_.c2.r2y * _loc31_.b2.var_94 - (_loc31_.b1.var_104 - _loc31_.c2.r1y * _loc31_.b1.var_94);
                     _loc34_ = Number(Number(_loc31_.k2y + _loc31_.b2.var_105) + _loc31_.c2.r2x * _loc31_.b2.var_94) - (Number(_loc31_.b1.var_105 + _loc31_.c2.r1x * _loc31_.b1.var_94));
                     _loc17_ = (_loc34_ * _loc31_.nx - _loc33_ * _loc31_.ny + _loc31_.var_369) * _loc31_.c2.var_440;
                     _loc18_ = _loc31_.c2.name_52 * _loc31_.c2.var_142;
                     _loc19_ = _loc31_.c2.var_208;
                     _loc20_ = Number(_loc19_ - _loc17_);
                     if(_loc20_ > _loc18_)
                     {
                        _loc20_ = Number(_loc18_);
                     }
                     else if(_loc20_ < -_loc18_)
                     {
                        _loc20_ = Number(-_loc18_);
                     }
                     _loc17_ = _loc20_ - _loc19_;
                     _loc31_.c2.var_208 = _loc20_;
                     _loc15_ = Number(-_loc31_.ny * _loc17_);
                     _loc16_ = _loc31_.nx * _loc17_;
                     _loc31_.b2.var_104 = Number(_loc31_.b2.var_104 + _loc15_ * _loc31_.b2.var_123);
                     _loc31_.b2.var_105 = Number(_loc31_.b2.var_105 + _loc16_ * _loc31_.b2.var_123);
                     _loc31_.b1.var_104 = _loc31_.b1.var_104 - _loc15_ * _loc31_.b1.var_123;
                     _loc31_.b1.var_105 = _loc31_.b1.var_105 - _loc16_ * _loc31_.b1.var_123;
                     _loc31_.b2.var_94 = Number(_loc31_.b2.var_94 + _loc31_.rt2b * _loc17_ * _loc31_.b2.var_136);
                     _loc31_.b1.var_94 = _loc31_.b1.var_94 - _loc31_.rt2a * _loc17_ * _loc31_.b1.var_136;
                     _loc21_ = _loc31_.k1x + _loc31_.b2.var_104 - _loc31_.c1.r2y * _loc31_.b2.var_94 - (_loc31_.b1.var_104 - _loc31_.c1.r1y * _loc31_.b1.var_94);
                     _loc32_ = Number(Number(_loc31_.k1y + _loc31_.b2.var_105) + _loc31_.c1.r2x * _loc31_.b2.var_94) - (Number(_loc31_.b1.var_105 + _loc31_.c1.r1x * _loc31_.b1.var_94));
                     _loc33_ = _loc31_.k2x + _loc31_.b2.var_104 - _loc31_.c2.r2y * _loc31_.b2.var_94 - (_loc31_.b1.var_104 - _loc31_.c2.r1y * _loc31_.b1.var_94);
                     _loc34_ = Number(Number(_loc31_.k2y + _loc31_.b2.var_105) + _loc31_.c2.r2x * _loc31_.b2.var_94) - (Number(_loc31_.b1.var_105 + _loc31_.c2.r1x * _loc31_.b1.var_94));
                     _loc35_ = _loc31_.c1.var_142;
                     _loc36_ = _loc31_.c2.var_142;
                     _loc37_ = Number(Number(Number(Number(_loc21_ * _loc31_.nx + _loc32_ * _loc31_.ny) + _loc31_.var_311) + _loc31_.c1.name_39) - (Number(_loc31_.var_640 * _loc35_ + _loc31_.var_309 * _loc36_)));
                     _loc38_ = Number(Number(Number(Number(_loc33_ * _loc31_.nx + _loc34_ * _loc31_.ny) + _loc31_.var_311) + _loc31_.c2.name_39) - (Number(_loc31_.var_309 * _loc35_ + _loc31_.var_648 * _loc36_)));
                     _loc39_ = -(_loc31_.var_172 * _loc37_ + _loc31_.var_171 * _loc38_);
                     _loc40_ = -(_loc31_.var_171 * _loc37_ + _loc31_.var_173 * _loc38_);
                     if(_loc39_ >= 0 && _loc40_ >= 0)
                     {
                        _loc37_ = Number(_loc39_ - _loc35_);
                        _loc38_ = Number(_loc40_ - _loc36_);
                        _loc31_.c1.var_142 = _loc39_;
                        _loc31_.c2.var_142 = _loc40_;
                     }
                     else
                     {
                        _loc39_ = -_loc31_.c1.var_342 * _loc37_;
                        if(_loc39_ >= 0 && Number(_loc31_.var_309 * _loc39_ + _loc38_) >= 0)
                        {
                           _loc37_ = Number(_loc39_ - _loc35_);
                           _loc38_ = Number(-_loc36_);
                           _loc31_.c1.var_142 = _loc39_;
                           _loc31_.c2.var_142 = 0;
                        }
                        else
                        {
                           _loc40_ = -_loc31_.c2.var_342 * _loc38_;
                           if(_loc40_ >= 0 && Number(_loc31_.var_309 * _loc40_ + _loc37_) >= 0)
                           {
                              _loc37_ = Number(-_loc35_);
                              _loc38_ = Number(_loc40_ - _loc36_);
                              _loc31_.c1.var_142 = 0;
                              _loc31_.c2.var_142 = _loc40_;
                           }
                           else if(_loc37_ >= 0 && _loc38_ >= 0)
                           {
                              _loc37_ = Number(-_loc35_);
                              _loc38_ = Number(-_loc36_);
                              _loc41_ = 0;
                              _loc31_.c2.var_142 = _loc41_;
                              _loc31_.c1.var_142 = _loc41_;
                           }
                           else
                           {
                              _loc37_ = 0;
                              _loc38_ = 0;
                           }
                        }
                     }
                     _loc17_ = Number(_loc37_ + _loc38_);
                     _loc15_ = Number(_loc31_.nx * _loc17_);
                     _loc16_ = _loc31_.ny * _loc17_;
                     _loc31_.b2.var_104 = Number(_loc31_.b2.var_104 + _loc15_ * _loc31_.b2.var_123);
                     _loc31_.b2.var_105 = Number(_loc31_.b2.var_105 + _loc16_ * _loc31_.b2.var_123);
                     _loc31_.b1.var_104 = _loc31_.b1.var_104 - _loc15_ * _loc31_.b1.var_123;
                     _loc31_.b1.var_105 = _loc31_.b1.var_105 - _loc16_ * _loc31_.b1.var_123;
                     _loc31_.b2.var_94 = Number(_loc31_.b2.var_94 + (_loc31_.rn1b * _loc37_ + _loc31_.rn2b * _loc38_) * _loc31_.b2.var_136);
                     _loc31_.b1.var_94 = _loc31_.b1.var_94 - (_loc31_.rn1a * _loc37_ + _loc31_.rn2a * _loc38_) * _loc31_.b1.var_136;
                  }
                  else
                  {
                     if(_loc31_.radius != 0)
                     {
                        _loc33_ = _loc31_.b2.var_94 - _loc31_.b1.var_94;
                        _loc17_ = _loc33_ * _loc31_.var_527;
                        _loc18_ = _loc31_.rfric * _loc31_.c1.var_142;
                        _loc19_ = _loc31_.var_170;
                        _loc31_.var_170 = _loc31_.var_170 - _loc17_;
                        if(_loc31_.var_170 > _loc18_)
                        {
                           _loc31_.var_170 = _loc18_;
                        }
                        else if(_loc31_.var_170 < -_loc18_)
                        {
                           _loc31_.var_170 = -_loc18_;
                        }
                        _loc17_ = _loc31_.var_170 - _loc19_;
                        _loc31_.b2.var_94 = Number(_loc31_.b2.var_94 + _loc17_ * _loc31_.b2.var_136);
                        _loc31_.b1.var_94 = _loc31_.b1.var_94 - _loc17_ * _loc31_.b1.var_136;
                     }
                     _loc21_ = _loc31_.k1x + _loc31_.b2.var_104 - _loc31_.c1.r2y * _loc31_.b2.var_94 - (_loc31_.b1.var_104 - _loc31_.c1.r1y * _loc31_.b1.var_94);
                     _loc32_ = Number(Number(_loc31_.k1y + _loc31_.b2.var_105) + _loc31_.c1.r2x * _loc31_.b2.var_94) - (Number(_loc31_.b1.var_105 + _loc31_.c1.r1x * _loc31_.b1.var_94));
                     _loc17_ = (Number(_loc31_.c1.name_39 + (Number(_loc31_.nx * _loc21_ + _loc31_.ny * _loc32_))) + _loc31_.var_311) * _loc31_.c1.var_342;
                     _loc19_ = _loc31_.c1.var_142;
                     _loc20_ = Number(_loc19_ - _loc17_);
                     if(_loc20_ < 0)
                     {
                        _loc20_ = 0;
                     }
                     _loc17_ = _loc20_ - _loc19_;
                     _loc31_.c1.var_142 = _loc20_;
                     _loc15_ = Number(_loc31_.nx * _loc17_);
                     _loc16_ = _loc31_.ny * _loc17_;
                     _loc31_.b2.var_104 = Number(_loc31_.b2.var_104 + _loc15_ * _loc31_.b2.var_123);
                     _loc31_.b2.var_105 = Number(_loc31_.b2.var_105 + _loc16_ * _loc31_.b2.var_123);
                     _loc31_.b1.var_104 = _loc31_.b1.var_104 - _loc15_ * _loc31_.b1.var_123;
                     _loc31_.b1.var_105 = _loc31_.b1.var_105 - _loc16_ * _loc31_.b1.var_123;
                     _loc31_.b2.var_94 = Number(_loc31_.b2.var_94 + _loc31_.rn1b * _loc17_ * _loc31_.b2.var_136);
                     _loc31_.b1.var_94 = _loc31_.b1.var_94 - _loc31_.rn1a * _loc17_ * _loc31_.b1.var_136;
                  }
                  _loc11_.var_191 = _loc11_.var_94 % _loc2_;
                  _loc12_.var_191 = _loc12_.var_94 % _loc2_;
               }
            }
            if(_loc30_ != null && (!!_loc30_.active && (_loc30_.var_181 & class_223.var_267) != 0) && _loc30_.type == ZPP_Arbiter.var_292)
            {
               if(!_loc11_.var_273 && _loc11_.type != class_223.var_216)
               {
                  _loc11_.var_273 = true;
                  if(_loc4_.var_143)
                  {
                     _loc15_ = 0;
                     _loc11_.var_191 = _loc15_;
                     _loc11_.var_94 = _loc15_;
                  }
                  else if(_loc4_.var_647)
                  {
                     _loc15_ = Number(_loc11_.var_191 * class_238.var_977);
                     _loc11_.var_191 = _loc15_;
                     _loc11_.var_94 = _loc15_;
                  }
                  else
                  {
                     _loc11_.var_94 = _loc11_.var_191;
                  }
               }
               if(!_loc12_.var_273 && _loc12_.type != class_223.var_216)
               {
                  _loc12_.var_273 = true;
                  if(_loc4_.var_143)
                  {
                     _loc15_ = 0;
                     _loc12_.var_191 = _loc15_;
                     _loc12_.var_94 = _loc15_;
                  }
                  else if(_loc4_.var_647)
                  {
                     _loc15_ = Number(_loc12_.var_191 * class_238.var_977);
                     _loc12_.var_191 = _loc15_;
                     _loc12_.var_94 = _loc15_;
                  }
                  else
                  {
                     _loc12_.var_94 = _loc12_.var_191;
                  }
               }
            }
         }
         while(var_314.var_73 != null)
         {
            _loc4_ = var_314.method_105();
            _loc10_ = _loc4_;
            _loc10_.next = ZPP_ToiEvent.var_72;
            ZPP_ToiEvent.var_72 = _loc10_;
         }
         var _loc42_:ZNPNode_ZPP_Body = var_297.var_73;
         while(_loc42_ != null)
         {
            _loc11_ = _loc42_.var_74;
            _loc5_ = Number(param1 - _loc11_.var_176);
            if(_loc5_ != 0)
            {
               _loc11_.var_176 = param1;
               _loc15_ = Number(_loc5_);
               _loc11_.var_95 = Number(_loc11_.var_95 + _loc11_.var_104 * _loc15_);
               _loc11_.var_96 = Number(_loc11_.var_96 + _loc11_.var_105 * _loc15_);
               if(_loc11_.var_94 != 0)
               {
                  _loc15_ = Number(_loc11_.var_191 * _loc5_);
                  _loc11_.var_93 = Number(_loc11_.var_93 + _loc15_);
                  if(_loc15_ * _loc15_ > 0.0001)
                  {
                     _loc11_.var_84 = Number(Math.sin(_loc11_.var_93));
                     _loc11_.var_83 = Number(Math.cos(_loc11_.var_93));
                     null;
                  }
                  else
                  {
                     _loc16_ = _loc15_ * _loc15_;
                     _loc17_ = 1 - 0.5 * _loc16_;
                     _loc18_ = 1 - _loc16_ * _loc16_ / 8;
                     _loc19_ = (_loc17_ * _loc11_.var_84 + _loc15_ * _loc11_.var_83) * _loc18_;
                     _loc11_.var_83 = (_loc17_ * _loc11_.var_83 - _loc15_ * _loc11_.var_84) * _loc18_;
                     _loc11_.var_84 = _loc19_;
                  }
               }
            }
            _loc11_.var_176 = 0;
            _loc42_ = _loc42_.next;
         }
         _loc42_ = live.var_73;
         while(_loc42_ != null)
         {
            _loc11_ = _loc42_.var_74;
            if(!_loc11_.var_273)
            {
               _loc5_ = Number(param1 - _loc11_.var_176);
               if(_loc5_ != 0)
               {
                  _loc11_.var_176 = param1;
                  _loc15_ = Number(_loc5_);
                  _loc11_.var_95 = Number(_loc11_.var_95 + _loc11_.var_104 * _loc15_);
                  _loc11_.var_96 = Number(_loc11_.var_96 + _loc11_.var_105 * _loc15_);
                  if(_loc11_.var_94 != 0)
                  {
                     _loc15_ = Number(_loc11_.var_191 * _loc5_);
                     _loc11_.var_93 = Number(_loc11_.var_93 + _loc15_);
                     if(_loc15_ * _loc15_ > 0.0001)
                     {
                        _loc11_.var_84 = Number(Math.sin(_loc11_.var_93));
                        _loc11_.var_83 = Number(Math.cos(_loc11_.var_93));
                        null;
                     }
                     else
                     {
                        _loc16_ = _loc15_ * _loc15_;
                        _loc17_ = 1 - 0.5 * _loc16_;
                        _loc18_ = 1 - _loc16_ * _loc16_ / 8;
                        _loc19_ = (_loc17_ * _loc11_.var_84 + _loc15_ * _loc11_.var_83) * _loc18_;
                        _loc11_.var_83 = (_loc17_ * _loc11_.var_83 - _loc15_ * _loc11_.var_84) * _loc18_;
                        _loc11_.var_84 = _loc19_;
                     }
                  }
               }
            }
            _loc11_.var_176 = 0;
            _loc42_ = _loc42_.next;
         }
      }
      
      public final function constraints_subber(param1:Constraint) : void
      {
         method_300(param1.zpp_inner);
      }
      
      public final function constraints_adder(param1:Constraint) : Boolean
      {
         if(param1.zpp_inner.space != this)
         {
            if(param1.zpp_inner.space != null)
            {
               param1.zpp_inner.space.outer.zpp_inner.var_185.remove(param1);
            }
            method_303(param1.zpp_inner);
            return true;
         }
         return false;
      }
      
      public final function constraintCbWake(param1:ZPP_Constraint) : void
      {
         var _loc2_:* = null as ZNPNode_ZPP_ConstraintListener;
         var _loc3_:* = null as ZPP_ConstraintListener;
         var _loc4_:* = null as class_273;
         if(param1.var_134 != null)
         {
            if(var_156)
            {
               _loc2_ = param1.var_134.var_283.var_73;
               while(_loc2_ != null)
               {
                  _loc3_ = _loc2_.var_74;
                  if(_loc3_.event != class_223.var_450)
                  {
                     _loc2_ = _loc2_.next;
                  }
                  else
                  {
                     _loc4_ = push_callback(_loc3_);
                     _loc4_.event = class_223.var_450;
                     _loc4_.name_44 = param1;
                     _loc2_ = _loc2_.next;
                  }
               }
            }
            else
            {
               param1.var_112.var_443 = true;
            }
         }
      }
      
      public final function constraintCbSleep(param1:ZPP_Constraint) : void
      {
         var _loc2_:* = null as ZNPNode_ZPP_ConstraintListener;
         var _loc3_:* = null as ZPP_ConstraintListener;
         var _loc4_:* = null as class_273;
         if(param1.var_134 != null)
         {
            _loc2_ = param1.var_134.var_283.var_73;
            while(_loc2_ != null)
            {
               _loc3_ = _loc2_.var_74;
               if(_loc3_.event != class_223.var_677)
               {
                  _loc2_ = _loc2_.next;
               }
               else
               {
                  _loc4_ = push_callback(_loc3_);
                  _loc4_.event = class_223.var_677;
                  _loc4_.name_44 = param1;
                  _loc2_ = _loc2_.next;
               }
            }
         }
      }
      
      public final function constraintCbBreak(param1:ZPP_Constraint) : void
      {
         var _loc2_:* = null as ZNPNode_ZPP_ConstraintListener;
         var _loc3_:* = null as ZPP_ConstraintListener;
         var _loc4_:* = null as class_273;
         if(param1.var_134 != null)
         {
            _loc2_ = param1.var_134.var_283.var_73;
            while(_loc2_ != null)
            {
               _loc3_ = _loc2_.var_74;
               if(_loc3_.event != class_223.var_860)
               {
                  _loc2_ = _loc2_.next;
               }
               else
               {
                  _loc4_ = push_callback(_loc3_);
                  _loc4_.event = class_223.var_860;
                  _loc4_.name_44 = param1;
                  _loc2_ = _loc2_.next;
               }
            }
         }
      }
      
      public final function compounds_subber(param1:Compound) : void
      {
         method_304(param1.zpp_inner);
      }
      
      public final function compounds_adder(param1:Compound) : Boolean
      {
         if(param1.zpp_inner.space != this)
         {
            if(param1.zpp_inner.space != null)
            {
               param1.zpp_inner.space.var_241.remove(param1);
            }
            method_276(param1.zpp_inner);
            return true;
         }
         return false;
      }
      
      public final function clear() : void
      {
         var _loc1_:* = null as ZPP_Listener;
         var _loc2_:* = null as ZPP_CallbackSet;
         var _loc3_:* = null as ZPP_CallbackSet;
         var _loc4_:* = null as ZPP_Interactor;
         var _loc5_:int = 0;
         var _loc6_:* = null as ZPP_ColArbiter;
         var _loc7_:* = null as class_254;
         var _loc8_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc9_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc10_:Boolean = false;
         var _loc11_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc12_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc13_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc14_:* = null as ZPP_Body;
         var _loc15_:* = null as ZPP_Contact;
         var _loc16_:* = null as ZPP_Contact;
         var _loc17_:* = null as ZPP_Contact;
         var _loc18_:* = null as ZPP_IContact;
         var _loc19_:* = null as ZPP_IContact;
         var _loc20_:* = null as ZPP_ColArbiter;
         var _loc21_:* = null as ZPP_Edge;
         var _loc22_:* = null as ZPP_SensorArbiter;
         var _loc23_:* = null as ZPP_SensorArbiter;
         var _loc24_:* = null as ZPP_FluidArbiter;
         var _loc25_:* = null as ZPP_FluidArbiter;
         var _loc26_:* = null as ZPP_Island;
         var _loc27_:* = null as ZPP_Component;
         var _loc28_:* = null as ZPP_Island;
         var _loc29_:* = null as ZPP_Constraint;
         var _loc31_:* = null as ZPP_Compound;
         var _loc32_:* = null as ZNPNode_ZPP_Body;
         var _loc33_:* = null as ZNPNode_ZPP_Constraint;
         var _loc34_:* = null as ZNPNode_ZPP_Compound;
         var _loc35_:* = null as ZPP_Compound;
         while(name_15.var_73 != null)
         {
            _loc1_ = name_15.method_105();
            ;
            ZPP_Space.remListener(_loc1_);
         }
         while(var_446.next != null)
         {
            _loc2_ = var_446.method_105();
            _loc2_.name_12.clear();
            _loc3_ = _loc2_;
            _loc4_ = null;
            _loc3_.int2 = _loc4_;
            _loc3_.int1 = _loc4_;
            _loc5_ = -1;
            _loc3_.var_179 = _loc5_;
            _loc3_.id = _loc5_;
            _loc3_.var_852 = true;
            null;
            _loc3_.next = ZPP_CallbackSet.var_72;
            ZPP_CallbackSet.var_72 = _loc3_;
         }
         while(var_228.var_73 != null)
         {
            _loc6_ = var_228.method_105();
            if(!_loc6_.var_265)
            {
               _loc7_ = _loc6_.b1.name_12;
               _loc8_ = null;
               _loc9_ = _loc7_.var_73;
               _loc10_ = false;
               while(_loc9_ != null)
               {
                  if(_loc9_.var_74 == _loc6_)
                  {
                     if(_loc8_ == null)
                     {
                        _loc11_ = _loc7_.var_73;
                        _loc12_ = _loc11_.next;
                        _loc7_.var_73 = _loc12_;
                        if(_loc7_.var_73 == null)
                        {
                           _loc7_.var_76 = true;
                        }
                     }
                     else
                     {
                        _loc11_ = _loc8_.next;
                        _loc12_ = _loc11_.next;
                        _loc8_.next = _loc12_;
                        if(_loc12_ == null)
                        {
                           _loc7_.var_76 = true;
                        }
                     }
                     _loc13_ = _loc11_;
                     _loc13_.var_74 = null;
                     _loc13_.next = ZNPNode_ZPP_Arbiter.var_72;
                     ZNPNode_ZPP_Arbiter.var_72 = _loc13_;
                     _loc7_.name_2 = true;
                     _loc7_.length = _loc7_.length - 1;
                     _loc7_.var_76 = true;
                     _loc12_;
                     _loc10_ = true;
                     break;
                  }
                  _loc8_ = _loc9_;
                  _loc9_ = _loc9_.next;
               }
               _loc10_;
               _loc7_ = _loc6_.b2.name_12;
               _loc8_ = null;
               _loc9_ = _loc7_.var_73;
               _loc10_ = false;
               while(_loc9_ != null)
               {
                  if(_loc9_.var_74 == _loc6_)
                  {
                     if(_loc8_ == null)
                     {
                        _loc11_ = _loc7_.var_73;
                        _loc12_ = _loc11_.next;
                        _loc7_.var_73 = _loc12_;
                        if(_loc7_.var_73 == null)
                        {
                           _loc7_.var_76 = true;
                        }
                     }
                     else
                     {
                        _loc11_ = _loc8_.next;
                        _loc12_ = _loc11_.next;
                        _loc8_.next = _loc12_;
                        if(_loc12_ == null)
                        {
                           _loc7_.var_76 = true;
                        }
                     }
                     _loc13_ = _loc11_;
                     _loc13_.var_74 = null;
                     _loc13_.next = ZNPNode_ZPP_Arbiter.var_72;
                     ZNPNode_ZPP_Arbiter.var_72 = _loc13_;
                     _loc7_.name_2 = true;
                     _loc7_.length = _loc7_.length - 1;
                     _loc7_.var_76 = true;
                     _loc12_;
                     _loc10_ = true;
                     break;
                  }
                  _loc8_ = _loc9_;
                  _loc9_ = _loc9_.next;
               }
               _loc10_;
               if(_loc6_.var_209 != null)
               {
                  _loc6_.var_209.var_246 = null;
                  _loc6_.var_209 = null;
               }
            }
            _loc14_ = null;
            _loc6_.b2 = _loc14_;
            _loc6_.b1 = _loc14_;
            _loc6_.active = false;
            _loc6_.var_361 = false;
            while(_loc6_.name_24.next != null)
            {
               _loc16_ = _loc6_.name_24;
               _loc17_ = _loc16_.next;
               _loc16_.pop();
               _loc15_ = _loc17_;
               _loc15_.name_20 = null;
               _loc15_.next = ZPP_Contact.var_72;
               ZPP_Contact.var_72 = _loc15_;
               _loc18_ = _loc6_.var_268;
               _loc19_ = _loc18_.next;
               _loc18_.next = _loc19_.next;
               _loc19_.var_120 = false;
               if(_loc18_.next == null)
               {
                  _loc18_.var_76 = true;
               }
               _loc18_.name_2 = true;
               _loc18_.length = _loc18_.length - 1;
            }
            _loc20_ = _loc6_;
            _loc20_.var_376 = false;
            _loc20_.var_382 = false;
            _loc20_.var_379 = false;
            _loc20_.var_381 = false;
            _loc21_ = null;
            _loc20_.__ref_edge2 = _loc21_;
            _loc20_.__ref_edge1 = _loc21_;
            _loc20_.next = ZPP_ColArbiter.var_72;
            ZPP_ColArbiter.var_72 = _loc20_;
            _loc6_.var_197 = -1;
         }
         while(var_175.var_73 != null)
         {
            _loc6_ = var_175.method_105();
            if(!_loc6_.var_265)
            {
               _loc7_ = _loc6_.b1.name_12;
               _loc8_ = null;
               _loc9_ = _loc7_.var_73;
               _loc10_ = false;
               while(_loc9_ != null)
               {
                  if(_loc9_.var_74 == _loc6_)
                  {
                     if(_loc8_ == null)
                     {
                        _loc11_ = _loc7_.var_73;
                        _loc12_ = _loc11_.next;
                        _loc7_.var_73 = _loc12_;
                        if(_loc7_.var_73 == null)
                        {
                           _loc7_.var_76 = true;
                        }
                     }
                     else
                     {
                        _loc11_ = _loc8_.next;
                        _loc12_ = _loc11_.next;
                        _loc8_.next = _loc12_;
                        if(_loc12_ == null)
                        {
                           _loc7_.var_76 = true;
                        }
                     }
                     _loc13_ = _loc11_;
                     _loc13_.var_74 = null;
                     _loc13_.next = ZNPNode_ZPP_Arbiter.var_72;
                     ZNPNode_ZPP_Arbiter.var_72 = _loc13_;
                     _loc7_.name_2 = true;
                     _loc7_.length = _loc7_.length - 1;
                     _loc7_.var_76 = true;
                     _loc12_;
                     _loc10_ = true;
                     break;
                  }
                  _loc8_ = _loc9_;
                  _loc9_ = _loc9_.next;
               }
               _loc10_;
               _loc7_ = _loc6_.b2.name_12;
               _loc8_ = null;
               _loc9_ = _loc7_.var_73;
               _loc10_ = false;
               while(_loc9_ != null)
               {
                  if(_loc9_.var_74 == _loc6_)
                  {
                     if(_loc8_ == null)
                     {
                        _loc11_ = _loc7_.var_73;
                        _loc12_ = _loc11_.next;
                        _loc7_.var_73 = _loc12_;
                        if(_loc7_.var_73 == null)
                        {
                           _loc7_.var_76 = true;
                        }
                     }
                     else
                     {
                        _loc11_ = _loc8_.next;
                        _loc12_ = _loc11_.next;
                        _loc8_.next = _loc12_;
                        if(_loc12_ == null)
                        {
                           _loc7_.var_76 = true;
                        }
                     }
                     _loc13_ = _loc11_;
                     _loc13_.var_74 = null;
                     _loc13_.next = ZNPNode_ZPP_Arbiter.var_72;
                     ZNPNode_ZPP_Arbiter.var_72 = _loc13_;
                     _loc7_.name_2 = true;
                     _loc7_.length = _loc7_.length - 1;
                     _loc7_.var_76 = true;
                     _loc12_;
                     _loc10_ = true;
                     break;
                  }
                  _loc8_ = _loc9_;
                  _loc9_ = _loc9_.next;
               }
               _loc10_;
               if(_loc6_.var_209 != null)
               {
                  _loc6_.var_209.var_246 = null;
                  _loc6_.var_209 = null;
               }
            }
            _loc14_ = null;
            _loc6_.b2 = _loc14_;
            _loc6_.b1 = _loc14_;
            _loc6_.active = false;
            _loc6_.var_361 = false;
            while(_loc6_.name_24.next != null)
            {
               _loc16_ = _loc6_.name_24;
               _loc17_ = _loc16_.next;
               _loc16_.pop();
               _loc15_ = _loc17_;
               _loc15_.name_20 = null;
               _loc15_.next = ZPP_Contact.var_72;
               ZPP_Contact.var_72 = _loc15_;
               _loc18_ = _loc6_.var_268;
               _loc19_ = _loc18_.next;
               _loc18_.next = _loc19_.next;
               _loc19_.var_120 = false;
               if(_loc18_.next == null)
               {
                  _loc18_.var_76 = true;
               }
               _loc18_.name_2 = true;
               _loc18_.length = _loc18_.length - 1;
            }
            _loc20_ = _loc6_;
            _loc20_.var_376 = false;
            _loc20_.var_382 = false;
            _loc20_.var_379 = false;
            _loc20_.var_381 = false;
            _loc21_ = null;
            _loc20_.__ref_edge2 = _loc21_;
            _loc20_.__ref_edge1 = _loc21_;
            _loc20_.next = ZPP_ColArbiter.var_72;
            ZPP_ColArbiter.var_72 = _loc20_;
            _loc6_.var_197 = -1;
         }
         while(var_288.var_73 != null)
         {
            _loc22_ = var_288.method_105();
            if(!_loc22_.var_265)
            {
               _loc7_ = _loc22_.b1.name_12;
               _loc8_ = null;
               _loc9_ = _loc7_.var_73;
               _loc10_ = false;
               while(_loc9_ != null)
               {
                  if(_loc9_.var_74 == _loc22_)
                  {
                     if(_loc8_ == null)
                     {
                        _loc11_ = _loc7_.var_73;
                        _loc12_ = _loc11_.next;
                        _loc7_.var_73 = _loc12_;
                        if(_loc7_.var_73 == null)
                        {
                           _loc7_.var_76 = true;
                        }
                     }
                     else
                     {
                        _loc11_ = _loc8_.next;
                        _loc12_ = _loc11_.next;
                        _loc8_.next = _loc12_;
                        if(_loc12_ == null)
                        {
                           _loc7_.var_76 = true;
                        }
                     }
                     _loc13_ = _loc11_;
                     _loc13_.var_74 = null;
                     _loc13_.next = ZNPNode_ZPP_Arbiter.var_72;
                     ZNPNode_ZPP_Arbiter.var_72 = _loc13_;
                     _loc7_.name_2 = true;
                     _loc7_.length = _loc7_.length - 1;
                     _loc7_.var_76 = true;
                     _loc12_;
                     _loc10_ = true;
                     break;
                  }
                  _loc8_ = _loc9_;
                  _loc9_ = _loc9_.next;
               }
               _loc10_;
               _loc7_ = _loc22_.b2.name_12;
               _loc8_ = null;
               _loc9_ = _loc7_.var_73;
               _loc10_ = false;
               while(_loc9_ != null)
               {
                  if(_loc9_.var_74 == _loc22_)
                  {
                     if(_loc8_ == null)
                     {
                        _loc11_ = _loc7_.var_73;
                        _loc12_ = _loc11_.next;
                        _loc7_.var_73 = _loc12_;
                        if(_loc7_.var_73 == null)
                        {
                           _loc7_.var_76 = true;
                        }
                     }
                     else
                     {
                        _loc11_ = _loc8_.next;
                        _loc12_ = _loc11_.next;
                        _loc8_.next = _loc12_;
                        if(_loc12_ == null)
                        {
                           _loc7_.var_76 = true;
                        }
                     }
                     _loc13_ = _loc11_;
                     _loc13_.var_74 = null;
                     _loc13_.next = ZNPNode_ZPP_Arbiter.var_72;
                     ZNPNode_ZPP_Arbiter.var_72 = _loc13_;
                     _loc7_.name_2 = true;
                     _loc7_.length = _loc7_.length - 1;
                     _loc7_.var_76 = true;
                     _loc12_;
                     _loc10_ = true;
                     break;
                  }
                  _loc8_ = _loc9_;
                  _loc9_ = _loc9_.next;
               }
               _loc10_;
               if(_loc22_.var_209 != null)
               {
                  _loc22_.var_209.var_246 = null;
                  _loc22_.var_209 = null;
               }
            }
            _loc14_ = null;
            _loc22_.b2 = _loc14_;
            _loc22_.b1 = _loc14_;
            _loc22_.active = false;
            _loc22_.var_361 = false;
            _loc23_ = _loc22_;
            _loc23_.next = ZPP_SensorArbiter.var_72;
            ZPP_SensorArbiter.var_72 = _loc23_;
         }
         while(var_217.var_73 != null)
         {
            _loc24_ = var_217.method_105();
            if(!_loc24_.var_265)
            {
               _loc7_ = _loc24_.b1.name_12;
               _loc8_ = null;
               _loc9_ = _loc7_.var_73;
               _loc10_ = false;
               while(_loc9_ != null)
               {
                  if(_loc9_.var_74 == _loc24_)
                  {
                     if(_loc8_ == null)
                     {
                        _loc11_ = _loc7_.var_73;
                        _loc12_ = _loc11_.next;
                        _loc7_.var_73 = _loc12_;
                        if(_loc7_.var_73 == null)
                        {
                           _loc7_.var_76 = true;
                        }
                     }
                     else
                     {
                        _loc11_ = _loc8_.next;
                        _loc12_ = _loc11_.next;
                        _loc8_.next = _loc12_;
                        if(_loc12_ == null)
                        {
                           _loc7_.var_76 = true;
                        }
                     }
                     _loc13_ = _loc11_;
                     _loc13_.var_74 = null;
                     _loc13_.next = ZNPNode_ZPP_Arbiter.var_72;
                     ZNPNode_ZPP_Arbiter.var_72 = _loc13_;
                     _loc7_.name_2 = true;
                     _loc7_.length = _loc7_.length - 1;
                     _loc7_.var_76 = true;
                     _loc12_;
                     _loc10_ = true;
                     break;
                  }
                  _loc8_ = _loc9_;
                  _loc9_ = _loc9_.next;
               }
               _loc10_;
               _loc7_ = _loc24_.b2.name_12;
               _loc8_ = null;
               _loc9_ = _loc7_.var_73;
               _loc10_ = false;
               while(_loc9_ != null)
               {
                  if(_loc9_.var_74 == _loc24_)
                  {
                     if(_loc8_ == null)
                     {
                        _loc11_ = _loc7_.var_73;
                        _loc12_ = _loc11_.next;
                        _loc7_.var_73 = _loc12_;
                        if(_loc7_.var_73 == null)
                        {
                           _loc7_.var_76 = true;
                        }
                     }
                     else
                     {
                        _loc11_ = _loc8_.next;
                        _loc12_ = _loc11_.next;
                        _loc8_.next = _loc12_;
                        if(_loc12_ == null)
                        {
                           _loc7_.var_76 = true;
                        }
                     }
                     _loc13_ = _loc11_;
                     _loc13_.var_74 = null;
                     _loc13_.next = ZNPNode_ZPP_Arbiter.var_72;
                     ZNPNode_ZPP_Arbiter.var_72 = _loc13_;
                     _loc7_.name_2 = true;
                     _loc7_.length = _loc7_.length - 1;
                     _loc7_.var_76 = true;
                     _loc12_;
                     _loc10_ = true;
                     break;
                  }
                  _loc8_ = _loc9_;
                  _loc9_ = _loc9_.next;
               }
               _loc10_;
               if(_loc24_.var_209 != null)
               {
                  _loc24_.var_209.var_246 = null;
                  _loc24_.var_209 = null;
               }
            }
            _loc14_ = null;
            _loc24_.b2 = _loc14_;
            _loc24_.b1 = _loc14_;
            _loc24_.active = false;
            _loc24_.var_361 = false;
            _loc25_ = _loc24_;
            _loc25_.next = ZPP_FluidArbiter.var_72;
            ZPP_FluidArbiter.var_72 = _loc25_;
            _loc24_.var_197 = -1;
         }
         var_166.clear();
         while(name_30.var_73 != null)
         {
            _loc14_ = name_30.method_105();
            if(_loc14_.var_112 != null)
            {
               _loc26_ = _loc14_.var_112.var_224;
               if(_loc26_ != null)
               {
                  while(_loc26_.var_345.var_73 != null)
                  {
                     _loc27_ = _loc26_.var_345.method_105();
                     _loc27_.var_129 = false;
                     _loc27_.var_224 = null;
                     _loc27_.parent = _loc27_;
                     _loc27_.var_158 = 0;
                  }
                  _loc28_ = _loc26_;
                  _loc28_.next = ZPP_Island.var_72;
                  ZPP_Island.var_72 = _loc28_;
               }
            }
            _loc14_.method_120();
            _loc14_.space = null;
         }
         while(name_19.var_73 != null)
         {
            _loc29_ = name_19.method_105();
            if(_loc29_.var_112 != null)
            {
               _loc26_ = _loc29_.var_112.var_224;
               if(_loc26_ != null)
               {
                  while(_loc26_.var_345.var_73 != null)
                  {
                     _loc27_ = _loc26_.var_345.method_105();
                     _loc27_.var_129 = false;
                     _loc27_.var_224 = null;
                     _loc27_.parent = _loc27_;
                     _loc27_.var_158 = 0;
                  }
                  _loc28_ = _loc26_;
                  _loc28_.next = ZPP_Island.var_72;
                  ZPP_Island.var_72 = _loc28_;
               }
            }
            _loc29_.method_120();
            _loc29_.space = null;
         }
         var_297.clear();
         var _loc30_:class_308 = new class_308();
         while(name_27.var_73 != null)
         {
            _loc31_ = name_27.method_105();
            _loc30_.add(_loc31_);
         }
         while(_loc30_.var_73 != null)
         {
            _loc31_ = _loc30_.method_105();
            _loc31_.method_120();
            _loc31_.space = null;
            _loc32_ = _loc31_.name_30.var_73;
            while(_loc32_ != null)
            {
               _loc14_ = _loc32_.var_74;
               if(_loc14_.var_112 != null)
               {
                  _loc26_ = _loc14_.var_112.var_224;
                  if(_loc26_ != null)
                  {
                     while(_loc26_.var_345.var_73 != null)
                     {
                        _loc27_ = _loc26_.var_345.method_105();
                        _loc27_.var_129 = false;
                        _loc27_.var_224 = null;
                        _loc27_.parent = _loc27_;
                        _loc27_.var_158 = 0;
                     }
                     _loc28_ = _loc26_;
                     _loc28_.next = ZPP_Island.var_72;
                     ZPP_Island.var_72 = _loc28_;
                  }
               }
               _loc14_.method_120();
               _loc14_.space = null;
               _loc32_ = _loc32_.next;
            }
            _loc33_ = _loc31_.name_19.var_73;
            while(_loc33_ != null)
            {
               _loc29_ = _loc33_.var_74;
               if(_loc29_.var_112 != null)
               {
                  _loc26_ = _loc29_.var_112.var_224;
                  if(_loc26_ != null)
                  {
                     while(_loc26_.var_345.var_73 != null)
                     {
                        _loc27_ = _loc26_.var_345.method_105();
                        _loc27_.var_129 = false;
                        _loc27_.var_224 = null;
                        _loc27_.parent = _loc27_;
                        _loc27_.var_158 = 0;
                     }
                     _loc28_ = _loc26_;
                     _loc28_.next = ZPP_Island.var_72;
                     ZPP_Island.var_72 = _loc28_;
                  }
               }
               _loc29_.method_120();
               _loc29_.space = null;
               _loc33_ = _loc33_.next;
            }
            _loc34_ = _loc31_.name_27.var_73;
            while(_loc34_ != null)
            {
               _loc35_ = _loc34_.var_74;
               _loc30_.add(_loc35_);
               _loc34_ = _loc34_.next;
            }
         }
         var_333.clear();
         live.clear();
         var_221.clear();
         var_114 = 0;
         time = 0;
         mrca1.clear();
         mrca2.clear();
         var_225.clear();
         var_148;
         ZPP_CbSetManager.clear();
      }
      
      public final function bodyCbWake(param1:ZPP_Body) : void
      {
         var _loc2_:* = null as ZNPNode_ZPP_BodyListener;
         var _loc3_:* = null as ZPP_BodyListener;
         var _loc4_:* = null as class_273;
         if(param1.type == class_223.var_188 && param1.var_134 != null)
         {
            if(var_156)
            {
               _loc2_ = param1.var_134.var_293.var_73;
               while(_loc2_ != null)
               {
                  _loc3_ = _loc2_.var_74;
                  if(_loc3_.event != class_223.var_450)
                  {
                     _loc2_ = _loc2_.next;
                  }
                  else
                  {
                     _loc4_ = push_callback(_loc3_);
                     _loc4_.event = class_223.var_450;
                     _loc4_.body = param1;
                     _loc2_ = _loc2_.next;
                  }
               }
            }
            else
            {
               param1.var_112.var_443 = true;
            }
         }
      }
      
      public final function bodyCbSleep(param1:ZPP_Body) : void
      {
         var _loc2_:* = null as ZNPNode_ZPP_BodyListener;
         var _loc3_:* = null as ZPP_BodyListener;
         var _loc4_:* = null as class_273;
         if(param1.type == class_223.var_188 && param1.var_134 != null)
         {
            _loc2_ = param1.var_134.var_293.var_73;
            while(_loc2_ != null)
            {
               _loc3_ = _loc2_.var_74;
               if(_loc3_.event != class_223.var_677)
               {
                  _loc2_ = _loc2_.next;
               }
               else
               {
                  _loc4_ = push_callback(_loc3_);
                  _loc4_.event = class_223.var_677;
                  _loc4_.body = param1;
                  _loc2_ = _loc2_.next;
               }
            }
         }
      }
      
      public final function bodies_subber(param1:Body) : void
      {
         method_281(param1.zpp_inner);
      }
      
      public final function bodies_adder(param1:Body) : Boolean
      {
         if(param1.zpp_inner.space != this)
         {
            if(param1.zpp_inner.space != null)
            {
               param1.zpp_inner.space.outer.zpp_inner.var_269.remove(param1);
            }
            method_283(param1.zpp_inner);
            return true;
         }
         return false;
      }
      
      public final function method_187(param1:Number, param2:Number, param3:ZPP_InteractionFilter, param4:class_205) : class_205
      {
         return var_166.method_187(param1,param2,param3,param4);
      }
      
      public final function bodiesInShape(param1:ZPP_Shape, param2:Boolean, param3:ZPP_InteractionFilter, param4:class_205) : class_205
      {
         return var_166.bodiesInShape(param1,param2,param3,param4);
      }
      
      public final function method_261(param1:Vec2, param2:Number, param3:Boolean, param4:ZPP_InteractionFilter, param5:class_205) : class_205
      {
         var _loc6_:ZPP_Vec2 = param1.zpp_inner;
         §§push(var_166);
         if(_loc6_._validate != null)
         {
            _loc6_._validate();
         }
         _loc6_ = param1.zpp_inner;
         §§push(param1.zpp_inner.x);
         if(_loc6_._validate != null)
         {
            _loc6_._validate();
         }
         return §§pop().method_261(§§pop(),param1.zpp_inner.y,param2,param3,param4,param5);
      }
      
      public final function method_201(param1:class_237, param2:Boolean, param3:Boolean, param4:ZPP_InteractionFilter, param5:class_205) : class_205
      {
         return var_166.method_201(param1.zpp_inner,param2,param3,param4,param5);
      }
      
      public final function method_747(param1:ZPP_Shape, param2:Boolean = false) : void
      {
         var _loc3_:* = null as ZPP_Body;
         if(!param2)
         {
            _loc3_ = param1.body;
            if(!_loc3_.name_29)
            {
               _loc3_.var_112.var_211 = var_114 + (!!var_156?0:1);
               if(_loc3_.type == class_223.var_216)
               {
                  _loc3_.var_261 = true;
               }
               if(_loc3_.var_112.var_129)
               {
                  method_115(_loc3_,false);
               }
            }
         }
         var_166.insert(param1);
         param1.method_121();
      }
      
      public final function add_callbackset(param1:ZPP_CallbackSet) : void
      {
         var _loc4_:* = null as ZNPNode_ZPP_CallbackSet;
         var _loc2_:class_283 = param1.int1.var_148;
         if(ZNPNode_ZPP_CallbackSet.var_72 == null)
         {
            _loc4_ = new ZNPNode_ZPP_CallbackSet();
         }
         else
         {
            _loc4_ = ZNPNode_ZPP_CallbackSet.var_72;
            ZNPNode_ZPP_CallbackSet.var_72 = _loc4_.next;
            _loc4_.next = null;
         }
         null;
         _loc4_.var_74 = param1;
         var _loc3_:ZNPNode_ZPP_CallbackSet = _loc4_;
         _loc3_.next = _loc2_.var_73;
         _loc2_.var_73 = _loc3_;
         _loc2_.name_2 = true;
         _loc2_.length = _loc2_.length + 1;
         param1;
         _loc2_ = param1.int2.var_148;
         if(ZNPNode_ZPP_CallbackSet.var_72 == null)
         {
            _loc4_ = new ZNPNode_ZPP_CallbackSet();
         }
         else
         {
            _loc4_ = ZNPNode_ZPP_CallbackSet.var_72;
            ZNPNode_ZPP_CallbackSet.var_72 = _loc4_.next;
            _loc4_.next = null;
         }
         null;
         _loc4_.var_74 = param1;
         _loc3_ = _loc4_;
         _loc3_.next = _loc2_.var_73;
         _loc2_.var_73 = _loc3_;
         _loc2_.name_2 = true;
         _loc2_.length = _loc2_.length + 1;
         param1;
         var _loc5_:ZPP_CallbackSet = var_446;
         param1.var_120 = true;
         var _loc6_:ZPP_CallbackSet = param1;
         _loc6_.next = _loc5_.next;
         _loc5_.next = _loc6_;
         _loc5_.name_2 = true;
         _loc5_.length = _loc5_.length + 1;
         param1;
      }
      
      public final function addListener(param1:ZPP_Listener) : void
      {
         param1.space = this;
         param1.method_121();
         if(param1.var_656 != null)
         {
            null;
         }
      }
      
      public final function method_303(param1:ZPP_Constraint) : void
      {
         param1.space = this;
         param1.method_121();
         if(param1.active)
         {
            param1.var_112.var_129 = true;
            method_165(param1,true);
         }
      }
      
      public final function method_276(param1:ZPP_Compound) : void
      {
         var _loc3_:* = null as ZPP_Body;
         var _loc5_:* = null as ZPP_Constraint;
         var _loc7_:* = null as ZPP_Compound;
         param1.space = this;
         param1.method_121();
         var _loc2_:ZNPNode_ZPP_Body = param1.name_30.var_73;
         while(_loc2_ != null)
         {
            _loc3_ = _loc2_.var_74;
            method_283(_loc3_);
            _loc2_ = _loc2_.next;
         }
         var _loc4_:ZNPNode_ZPP_Constraint = param1.name_19.var_73;
         while(_loc4_ != null)
         {
            _loc5_ = _loc4_.var_74;
            method_303(_loc5_);
            _loc4_ = _loc4_.next;
         }
         var _loc6_:ZNPNode_ZPP_Compound = param1.name_27.var_73;
         while(_loc6_ != null)
         {
            _loc7_ = _loc6_.var_74;
            method_276(_loc7_);
            _loc6_ = _loc6_.next;
         }
      }
      
      public final function method_283(param1:ZPP_Body, param2:int = -1) : void
      {
         var _loc5_:* = null as ZPP_Shape;
         param1.space = this;
         param1.method_121();
         param1.var_112.var_129 = true;
         var _loc3_:ZPP_Body = param1;
         if(!_loc3_.name_29)
         {
            _loc3_.var_112.var_211 = var_114 + (!!var_156?0:1);
            if(_loc3_.type == class_223.var_216)
            {
               _loc3_.var_261 = true;
            }
            if(_loc3_.var_112.var_129)
            {
               method_115(_loc3_,true);
            }
         }
         var _loc4_:ZNPNode_ZPP_Shape = param1.shapes.var_73;
         while(_loc4_ != null)
         {
            _loc5_ = _loc4_.var_74;
            var_166.insert(_loc5_);
            _loc5_.method_121();
            _loc4_ = _loc4_.next;
         }
         if(param1.type == class_223.var_240)
         {
            ;
            ZPP_Space.static_validation(param1);
         }
         else if(param1.type != class_223.var_188)
         {
            if(param2 != class_223.var_216)
            {
               var_297.add(param1);
            }
         }
      }
      
      public final function MRCA_chains(param1:ZPP_Shape, param2:ZPP_Shape) : void
      {
         var _loc3_:* = null as class_213;
         var _loc4_:* = null as ZNPNode_ZPP_Interactor;
         var _loc5_:* = null as ZNPNode_ZPP_Interactor;
         var _loc6_:* = null as ZPP_Interactor;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         _loc3_ = mrca1;
         while(_loc3_.var_73 != null)
         {
            _loc4_ = _loc3_.var_73;
            _loc3_.var_73 = _loc4_.next;
            _loc5_ = _loc4_;
            _loc5_.var_74 = null;
            _loc5_.next = ZNPNode_ZPP_Interactor.var_72;
            ZNPNode_ZPP_Interactor.var_72 = _loc5_;
            if(_loc3_.var_73 == null)
            {
               _loc3_.var_76 = true;
            }
            _loc3_.name_2 = true;
            _loc3_.length = _loc3_.length - 1;
         }
         _loc3_.var_76 = true;
         _loc3_ = mrca2;
         while(_loc3_.var_73 != null)
         {
            _loc4_ = _loc3_.var_73;
            _loc3_.var_73 = _loc4_.next;
            _loc5_ = _loc4_;
            _loc5_.var_74 = null;
            _loc5_.next = ZNPNode_ZPP_Interactor.var_72;
            ZNPNode_ZPP_Interactor.var_72 = _loc5_;
            if(_loc3_.var_73 == null)
            {
               _loc3_.var_76 = true;
            }
            _loc3_.name_2 = true;
            _loc3_.length = _loc3_.length - 1;
         }
         _loc3_.var_76 = true;
         if(param1.var_134 != null)
         {
            _loc3_ = mrca1;
            if(ZNPNode_ZPP_Interactor.var_72 == null)
            {
               _loc5_ = new ZNPNode_ZPP_Interactor();
            }
            else
            {
               _loc5_ = ZNPNode_ZPP_Interactor.var_72;
               ZNPNode_ZPP_Interactor.var_72 = _loc5_.next;
               _loc5_.next = null;
            }
            null;
            _loc5_.var_74 = param1;
            _loc4_ = _loc5_;
            _loc4_.next = _loc3_.var_73;
            _loc3_.var_73 = _loc4_;
            _loc3_.name_2 = true;
            _loc3_.length = _loc3_.length + 1;
            param1;
         }
         if(param1.body.var_134 != null)
         {
            _loc3_ = mrca1;
            _loc6_ = param1.body;
            if(ZNPNode_ZPP_Interactor.var_72 == null)
            {
               _loc5_ = new ZNPNode_ZPP_Interactor();
            }
            else
            {
               _loc5_ = ZNPNode_ZPP_Interactor.var_72;
               ZNPNode_ZPP_Interactor.var_72 = _loc5_.next;
               _loc5_.next = null;
            }
            null;
            _loc5_.var_74 = _loc6_;
            _loc4_ = _loc5_;
            _loc4_.next = _loc3_.var_73;
            _loc3_.var_73 = _loc4_;
            _loc3_.name_2 = true;
            _loc3_.length = _loc3_.length + 1;
            _loc6_;
         }
         if(param2.var_134 != null)
         {
            _loc3_ = mrca2;
            if(ZNPNode_ZPP_Interactor.var_72 == null)
            {
               _loc5_ = new ZNPNode_ZPP_Interactor();
            }
            else
            {
               _loc5_ = ZNPNode_ZPP_Interactor.var_72;
               ZNPNode_ZPP_Interactor.var_72 = _loc5_.next;
               _loc5_.next = null;
            }
            null;
            _loc5_.var_74 = param2;
            _loc4_ = _loc5_;
            _loc4_.next = _loc3_.var_73;
            _loc3_.var_73 = _loc4_;
            _loc3_.name_2 = true;
            _loc3_.length = _loc3_.length + 1;
            param2;
         }
         if(param2.body.var_134 != null)
         {
            _loc3_ = mrca2;
            _loc6_ = param2.body;
            if(ZNPNode_ZPP_Interactor.var_72 == null)
            {
               _loc5_ = new ZNPNode_ZPP_Interactor();
            }
            else
            {
               _loc5_ = ZNPNode_ZPP_Interactor.var_72;
               ZNPNode_ZPP_Interactor.var_72 = _loc5_.next;
               _loc5_.next = null;
            }
            null;
            _loc5_.var_74 = _loc6_;
            _loc4_ = _loc5_;
            _loc4_.next = _loc3_.var_73;
            _loc3_.var_73 = _loc4_;
            _loc3_.name_2 = true;
            _loc3_.length = _loc3_.length + 1;
            _loc6_;
         }
         var _loc7_:ZPP_Compound = param1.body.compound;
         var _loc8_:ZPP_Compound = param2.body.compound;
         while(_loc7_ != _loc8_)
         {
            if(_loc7_ == null)
            {
               _loc9_ = 0;
            }
            else
            {
               _loc9_ = _loc7_.depth;
            }
            if(_loc8_ == null)
            {
               _loc10_ = 0;
            }
            else
            {
               _loc10_ = _loc8_.depth;
            }
            if(_loc9_ < _loc10_)
            {
               if(_loc8_.var_134 != null)
               {
                  _loc3_ = mrca2;
                  if(ZNPNode_ZPP_Interactor.var_72 == null)
                  {
                     _loc5_ = new ZNPNode_ZPP_Interactor();
                  }
                  else
                  {
                     _loc5_ = ZNPNode_ZPP_Interactor.var_72;
                     ZNPNode_ZPP_Interactor.var_72 = _loc5_.next;
                     _loc5_.next = null;
                  }
                  null;
                  _loc5_.var_74 = _loc8_;
                  _loc4_ = _loc5_;
                  _loc4_.next = _loc3_.var_73;
                  _loc3_.var_73 = _loc4_;
                  _loc3_.name_2 = true;
                  _loc3_.length = _loc3_.length + 1;
                  _loc8_;
               }
               _loc8_ = _loc8_.compound;
            }
            else
            {
               if(_loc7_.var_134 != null)
               {
                  _loc3_ = mrca1;
                  if(ZNPNode_ZPP_Interactor.var_72 == null)
                  {
                     _loc5_ = new ZNPNode_ZPP_Interactor();
                  }
                  else
                  {
                     _loc5_ = ZNPNode_ZPP_Interactor.var_72;
                     ZNPNode_ZPP_Interactor.var_72 = _loc5_.next;
                     _loc5_.next = null;
                  }
                  null;
                  _loc5_.var_74 = _loc7_;
                  _loc4_ = _loc5_;
                  _loc4_.next = _loc3_.var_73;
                  _loc3_.var_73 = _loc4_;
                  _loc3_.name_2 = true;
                  _loc3_.length = _loc3_.length + 1;
                  _loc7_;
               }
               _loc7_ = _loc7_.compound;
            }
         }
      }
   }
}
