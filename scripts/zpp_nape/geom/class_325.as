package zpp_nape.geom
{
   import zpp_nape.util.Hashable2_Boolfalse;
   import zpp_nape.util.ZNPNode_ZPP_SimpleEvent;
   import zpp_nape.util.ZNPNode_ZPP_SimpleVert;
   import zpp_nape.util.ZPP_Set_ZPP_SimpleSeg;
   import zpp_nape.util.ZPP_Set_ZPP_SimpleVert;
   import zpp_nape.util.class_263;
   import zpp_nape.util.class_318;
   import zpp_nape.util.class_343;
   import zpp_nape.util.class_344;
   import zpp_nape.util.class_345;
   
   public final class class_325
   {
      
      public static var var_219:ZPP_SimpleSweep = null;
      
      public static var var_289:class_344 = null;
      
      public static var vertices:ZPP_Set_ZPP_SimpleVert = null;
      
      public static var var_178:class_263 = null;
      
      public static var var_220:class_263 = null;
      
      public static var var_999:class_345 = null;
      
      public static var var_1058:class_343 = null;
       
      
      public function class_325()
      {
      }
      
      public static function decompose(param1:ZPP_GeomVert, param2:class_318 = undefined) : class_318
      {
         var _loc7_:* = null as ZPP_GeomVert;
         var _loc8_:* = null as ZPP_GeomVert;
         var _loc9_:* = null as ZPP_SimpleVert;
         var _loc10_:* = null as ZPP_SimpleVert;
         var _loc11_:* = null as ZPP_Set_ZPP_SimpleVert;
         var _loc12_:* = null as ZPP_Set_ZPP_SimpleVert;
         var _loc13_:* = null as ZPP_SimpleEvent;
         var _loc14_:* = null as ZPP_SimpleEvent;
         var _loc15_:* = null as ZPP_SimpleEvent;
         var _loc16_:* = null as ZPP_SimpleSeg;
         var _loc17_:* = null as ZPP_SimpleSeg;
         var _loc18_:* = null as class_263;
         var _loc19_:* = null as class_263;
         var _loc20_:* = null as class_263;
         var _loc21_:* = null as Hashable2_Boolfalse;
         var _loc22_:* = null as Hashable2_Boolfalse;
         var _loc23_:* = null as ZPP_SimpleEvent;
         var _loc24_:* = null as ZPP_SimpleSeg;
         var _loc25_:* = null as ZPP_SimpleSeg;
         var _loc26_:* = false;
         var _loc27_:* = false;
         var _loc28_:* = false;
         var _loc29_:* = null as ZPP_SimpleVert;
         var _loc30_:* = null as ZPP_Set_ZPP_SimpleSeg;
         var _loc31_:* = null as ZPP_Set_ZPP_SimpleSeg;
         var _loc34_:int = 0;
         var _loc35_:* = null as Hashable2_Boolfalse;
         if(class_325.var_219 == null)
         {
            class_325.var_219 = new ZPP_SimpleSweep();
            class_325.var_289 = new class_344();
         }
         if(class_325.vertices == null)
         {
            if(ZPP_Set_ZPP_SimpleVert.var_72 == null)
            {
               class_325.vertices = new ZPP_Set_ZPP_SimpleVert();
            }
            else
            {
               class_325.vertices = ZPP_Set_ZPP_SimpleVert.var_72;
               ZPP_Set_ZPP_SimpleVert.var_72 = class_325.vertices.next;
               class_325.vertices.next = null;
            }
            null;
            class_325.vertices.lt = ZPP_SimpleVert.less_xy;
            class_325.vertices.name_9 = ZPP_SimpleVert.swap_nodes;
         }
         if(class_325.var_178 == null)
         {
            if(class_263.var_72 == null)
            {
               class_325.var_178 = new class_263();
            }
            else
            {
               class_325.var_178 = class_263.var_72;
               class_263.var_72 = class_325.var_178.next;
               class_325.var_178.next = null;
            }
            null;
            class_325.var_178.lt = ZPP_SimpleEvent.less_xy;
            class_325.var_178.name_9 = ZPP_SimpleEvent.swap_nodes;
         }
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:ZPP_GeomVert = param1;
         var _loc6_:ZPP_GeomVert = param1;
         if(_loc5_ != null)
         {
            _loc7_ = _loc5_;
            do
            {
               _loc8_ = _loc7_;
               if(ZPP_SimpleVert.var_72 == null)
               {
                  _loc10_ = new ZPP_SimpleVert();
               }
               else
               {
                  _loc10_ = ZPP_SimpleVert.var_72;
                  ZPP_SimpleVert.var_72 = _loc10_.next;
                  _loc10_.next = null;
               }
               null;
               _loc10_.x = _loc8_.x;
               _loc10_.y = _loc8_.y;
               _loc9_ = _loc10_;
               _loc12_ = class_325.vertices.parent;
               while(_loc12_ != null)
               {
                  if(class_325.vertices.lt(_loc9_,_loc12_.data))
                  {
                     _loc12_ = _loc12_.var_75;
                     continue;
                  }
                  if(class_325.vertices.lt(_loc12_.data,_loc9_))
                  {
                     _loc12_ = _loc12_.next;
                     continue;
                  }
                  break;
               }
               _loc11_ = _loc12_;
               if(_loc11_ != null)
               {
                  _loc10_ = _loc9_;
                  _loc10_.var_180.clear();
                  _loc10_.var_138 = null;
                  _loc10_.var_154 = false;
                  _loc10_.next = ZPP_SimpleVert.var_72;
                  ZPP_SimpleVert.var_72 = _loc10_;
                  _loc9_ = _loc11_.data;
               }
               else
               {
                  _loc9_.var_138 = class_325.vertices.insert(_loc9_);
               }
               if(_loc4_ != null)
               {
                  if(ZPP_SimpleEvent.var_72 == null)
                  {
                     _loc14_ = new ZPP_SimpleEvent();
                  }
                  else
                  {
                     _loc14_ = ZPP_SimpleEvent.var_72;
                     ZPP_SimpleEvent.var_72 = _loc14_.next;
                     _loc14_.next = null;
                  }
                  null;
                  _loc14_.vertex = _loc4_;
                  _loc13_ = _loc14_;
                  if(ZPP_SimpleEvent.var_72 == null)
                  {
                     _loc15_ = new ZPP_SimpleEvent();
                  }
                  else
                  {
                     _loc15_ = ZPP_SimpleEvent.var_72;
                     ZPP_SimpleEvent.var_72 = _loc15_.next;
                     _loc15_.next = null;
                  }
                  null;
                  _loc15_.vertex = _loc9_;
                  _loc14_ = _loc15_;
                  if(ZPP_SimpleEvent.less_xy(_loc13_,_loc14_))
                  {
                     _loc13_.type = 1;
                     _loc14_.type = 2;
                     _loc16_ = ZPP_SimpleSeg.method_65(_loc4_,_loc9_);
                  }
                  else
                  {
                     _loc13_.type = 2;
                     _loc14_.type = 1;
                     _loc16_ = ZPP_SimpleSeg.method_65(_loc9_,_loc4_);
                  }
                  _loc17_ = _loc16_;
                  _loc14_.var_260 = _loc17_;
                  _loc13_.var_260 = _loc17_;
                  class_325.var_178.insert(_loc13_);
                  class_325.var_178.insert(_loc14_);
                  _loc4_.var_180.insert(_loc9_);
                  _loc9_.var_180.insert(_loc4_);
               }
               _loc4_ = _loc9_;
               if(_loc3_ == null)
               {
                  _loc3_ = _loc9_;
               }
               _loc7_ = _loc7_.next;
            }
            while(_loc7_ != _loc6_);
            
         }
         if(ZPP_SimpleEvent.var_72 == null)
         {
            _loc14_ = new ZPP_SimpleEvent();
         }
         else
         {
            _loc14_ = ZPP_SimpleEvent.var_72;
            ZPP_SimpleEvent.var_72 = _loc14_.next;
            _loc14_.next = null;
         }
         null;
         _loc14_.vertex = _loc4_;
         _loc13_ = _loc14_;
         if(ZPP_SimpleEvent.var_72 == null)
         {
            _loc15_ = new ZPP_SimpleEvent();
         }
         else
         {
            _loc15_ = ZPP_SimpleEvent.var_72;
            ZPP_SimpleEvent.var_72 = _loc15_.next;
            _loc15_.next = null;
         }
         null;
         _loc15_.vertex = _loc3_;
         _loc14_ = _loc15_;
         if(ZPP_SimpleEvent.less_xy(_loc13_,_loc14_))
         {
            _loc13_.type = 1;
            _loc14_.type = 2;
            _loc16_ = ZPP_SimpleSeg.method_65(_loc4_,_loc3_);
         }
         else
         {
            _loc13_.type = 2;
            _loc14_.type = 1;
            _loc16_ = ZPP_SimpleSeg.method_65(_loc3_,_loc4_);
         }
         _loc17_ = _loc16_;
         _loc14_.var_260 = _loc17_;
         _loc13_.var_260 = _loc17_;
         class_325.var_178.insert(_loc13_);
         class_325.var_178.insert(_loc14_);
         _loc4_.var_180.insert(_loc3_);
         _loc3_.var_180.insert(_loc4_);
         if(class_325.var_220 == null)
         {
            if(class_263.var_72 == null)
            {
               class_325.var_220 = new class_263();
            }
            else
            {
               class_325.var_220 = class_263.var_72;
               class_263.var_72 = class_325.var_220.next;
               class_325.var_220.next = null;
            }
            null;
            class_325.var_220.lt = ZPP_SimpleEvent.less_xy;
         }
         while(!class_325.var_178.empty())
         {
            _loc13_ = class_325.var_178.method_208();
            class_325.var_219.var_402 = _loc13_.vertex.x;
            if(_loc13_.type == 1)
            {
               _loc16_ = _loc13_.var_260;
               class_325.var_219.add(_loc16_);
               if(_loc16_.next != null && _loc16_ != null && !(_loc16_.next.id < _loc16_.id?Boolean(class_325.var_289.has(_loc16_.next.id,_loc16_.id)):Boolean(class_325.var_289.has(_loc16_.id,_loc16_.next.id))))
               {
                  class_325.var_219;
                  _loc14_ = ZPP_SimpleSweep.intersection(_loc16_.next,_loc16_);
                  if(_loc14_ != null)
                  {
                     if(_loc14_.vertex.x >= class_325.var_219.var_402)
                     {
                        _loc19_ = class_325.var_178.parent;
                        while(_loc19_ != null)
                        {
                           if(class_325.var_178.lt(_loc14_,_loc19_.data))
                           {
                              _loc19_ = _loc19_.var_75;
                              continue;
                           }
                           if(class_325.var_178.lt(_loc19_.data,_loc14_))
                           {
                              _loc19_ = _loc19_.next;
                              continue;
                           }
                           break;
                        }
                        _loc18_ = _loc19_;
                        if(_loc18_ == null)
                        {
                           _loc20_ = class_325.var_220.parent;
                           while(_loc20_ != null)
                           {
                              if(class_325.var_220.lt(_loc14_,_loc20_.data))
                              {
                                 _loc20_ = _loc20_.var_75;
                                 continue;
                              }
                              if(class_325.var_220.lt(_loc20_.data,_loc14_))
                              {
                                 _loc20_ = _loc20_.next;
                                 continue;
                              }
                              break;
                           }
                           _loc19_ = _loc20_;
                           if(_loc19_ != null)
                           {
                              _loc9_ = _loc14_.vertex;
                              _loc9_.var_180.clear();
                              _loc9_.var_138 = null;
                              _loc9_.var_154 = false;
                              _loc9_.next = ZPP_SimpleVert.var_72;
                              ZPP_SimpleVert.var_72 = _loc9_;
                              _loc14_.vertex = _loc19_.data.vertex;
                              _loc19_.data = _loc14_;
                              class_325.var_178.insert(_loc14_);
                           }
                           else
                           {
                              class_325.var_178.insert(_loc14_);
                              class_325.var_220.insert(_loc14_);
                           }
                           if(_loc16_.next.id < _loc16_.id)
                           {
                              §§push(class_325.var_289);
                              if(Hashable2_Boolfalse.var_72 == null)
                              {
                                 _loc22_ = new Hashable2_Boolfalse();
                              }
                              else
                              {
                                 _loc22_ = Hashable2_Boolfalse.var_72;
                                 Hashable2_Boolfalse.var_72 = _loc22_.next;
                                 _loc22_.next = null;
                              }
                              null;
                              _loc22_.id = _loc16_.next.id;
                              _loc22_.var_179 = _loc16_.id;
                              _loc21_ = _loc22_;
                              _loc21_.value = true;
                              §§pop().add(_loc21_);
                           }
                           else
                           {
                              §§push(class_325.var_289);
                              if(Hashable2_Boolfalse.var_72 == null)
                              {
                                 _loc22_ = new Hashable2_Boolfalse();
                              }
                              else
                              {
                                 _loc22_ = Hashable2_Boolfalse.var_72;
                                 Hashable2_Boolfalse.var_72 = _loc22_.next;
                                 _loc22_.next = null;
                              }
                              null;
                              _loc22_.id = _loc16_.id;
                              _loc22_.var_179 = _loc16_.next.id;
                              _loc21_ = _loc22_;
                              _loc21_.value = true;
                              §§pop().add(_loc21_);
                           }
                        }
                        else
                        {
                           _loc15_ = _loc18_.data;
                           _loc9_ = _loc14_.vertex;
                           _loc9_.var_180.clear();
                           _loc9_.var_138 = null;
                           _loc9_.var_154 = false;
                           _loc9_.next = ZPP_SimpleVert.var_72;
                           ZPP_SimpleVert.var_72 = _loc9_;
                           _loc23_ = _loc14_;
                           _loc23_.vertex = null;
                           _loc17_ = null;
                           _loc23_.segment2 = _loc17_;
                           _loc23_.var_260 = _loc17_;
                           _loc23_.var_138 = null;
                           _loc23_.next = ZPP_SimpleEvent.var_72;
                           ZPP_SimpleEvent.var_72 = _loc23_;
                        }
                     }
                     else
                     {
                        _loc9_ = _loc14_.vertex;
                        _loc9_.var_180.clear();
                        _loc9_.var_138 = null;
                        _loc9_.var_154 = false;
                        _loc9_.next = ZPP_SimpleVert.var_72;
                        ZPP_SimpleVert.var_72 = _loc9_;
                        _loc15_ = _loc14_;
                        _loc15_.vertex = null;
                        _loc17_ = null;
                        _loc15_.segment2 = _loc17_;
                        _loc15_.var_260 = _loc17_;
                        _loc15_.var_138 = null;
                        _loc15_.next = ZPP_SimpleEvent.var_72;
                        ZPP_SimpleEvent.var_72 = _loc15_;
                     }
                  }
               }
               if(_loc16_ != null && _loc16_.var_75 != null && !(_loc16_.id < _loc16_.var_75.id?Boolean(class_325.var_289.has(_loc16_.id,_loc16_.var_75.id)):Boolean(class_325.var_289.has(_loc16_.var_75.id,_loc16_.id))))
               {
                  class_325.var_219;
                  _loc14_ = ZPP_SimpleSweep.intersection(_loc16_,_loc16_.var_75);
                  if(_loc14_ != null)
                  {
                     if(_loc14_.vertex.x >= class_325.var_219.var_402)
                     {
                        _loc19_ = class_325.var_178.parent;
                        while(_loc19_ != null)
                        {
                           if(class_325.var_178.lt(_loc14_,_loc19_.data))
                           {
                              _loc19_ = _loc19_.var_75;
                              continue;
                           }
                           if(class_325.var_178.lt(_loc19_.data,_loc14_))
                           {
                              _loc19_ = _loc19_.next;
                              continue;
                           }
                           break;
                        }
                        _loc18_ = _loc19_;
                        if(_loc18_ == null)
                        {
                           _loc20_ = class_325.var_220.parent;
                           while(_loc20_ != null)
                           {
                              if(class_325.var_220.lt(_loc14_,_loc20_.data))
                              {
                                 _loc20_ = _loc20_.var_75;
                                 continue;
                              }
                              if(class_325.var_220.lt(_loc20_.data,_loc14_))
                              {
                                 _loc20_ = _loc20_.next;
                                 continue;
                              }
                              break;
                           }
                           _loc19_ = _loc20_;
                           if(_loc19_ != null)
                           {
                              _loc9_ = _loc14_.vertex;
                              _loc9_.var_180.clear();
                              _loc9_.var_138 = null;
                              _loc9_.var_154 = false;
                              _loc9_.next = ZPP_SimpleVert.var_72;
                              ZPP_SimpleVert.var_72 = _loc9_;
                              _loc14_.vertex = _loc19_.data.vertex;
                              _loc19_.data = _loc14_;
                              class_325.var_178.insert(_loc14_);
                           }
                           else
                           {
                              class_325.var_178.insert(_loc14_);
                              class_325.var_220.insert(_loc14_);
                           }
                           if(_loc16_.id < _loc16_.var_75.id)
                           {
                              §§push(class_325.var_289);
                              if(Hashable2_Boolfalse.var_72 == null)
                              {
                                 _loc22_ = new Hashable2_Boolfalse();
                              }
                              else
                              {
                                 _loc22_ = Hashable2_Boolfalse.var_72;
                                 Hashable2_Boolfalse.var_72 = _loc22_.next;
                                 _loc22_.next = null;
                              }
                              null;
                              _loc22_.id = _loc16_.id;
                              _loc22_.var_179 = _loc16_.var_75.id;
                              _loc21_ = _loc22_;
                              _loc21_.value = true;
                              §§pop().add(_loc21_);
                           }
                           else
                           {
                              §§push(class_325.var_289);
                              if(Hashable2_Boolfalse.var_72 == null)
                              {
                                 _loc22_ = new Hashable2_Boolfalse();
                              }
                              else
                              {
                                 _loc22_ = Hashable2_Boolfalse.var_72;
                                 Hashable2_Boolfalse.var_72 = _loc22_.next;
                                 _loc22_.next = null;
                              }
                              null;
                              _loc22_.id = _loc16_.var_75.id;
                              _loc22_.var_179 = _loc16_.id;
                              _loc21_ = _loc22_;
                              _loc21_.value = true;
                              §§pop().add(_loc21_);
                           }
                        }
                        else
                        {
                           _loc15_ = _loc18_.data;
                           _loc9_ = _loc14_.vertex;
                           _loc9_.var_180.clear();
                           _loc9_.var_138 = null;
                           _loc9_.var_154 = false;
                           _loc9_.next = ZPP_SimpleVert.var_72;
                           ZPP_SimpleVert.var_72 = _loc9_;
                           _loc23_ = _loc14_;
                           _loc23_.vertex = null;
                           _loc17_ = null;
                           _loc23_.segment2 = _loc17_;
                           _loc23_.var_260 = _loc17_;
                           _loc23_.var_138 = null;
                           _loc23_.next = ZPP_SimpleEvent.var_72;
                           ZPP_SimpleEvent.var_72 = _loc23_;
                        }
                     }
                     else
                     {
                        _loc9_ = _loc14_.vertex;
                        _loc9_.var_180.clear();
                        _loc9_.var_138 = null;
                        _loc9_.var_154 = false;
                        _loc9_.next = ZPP_SimpleVert.var_72;
                        ZPP_SimpleVert.var_72 = _loc9_;
                        _loc15_ = _loc14_;
                        _loc15_.vertex = null;
                        _loc17_ = null;
                        _loc15_.segment2 = _loc17_;
                        _loc15_.var_260 = _loc17_;
                        _loc15_.var_138 = null;
                        _loc15_.next = ZPP_SimpleEvent.var_72;
                        ZPP_SimpleEvent.var_72 = _loc15_;
                     }
                  }
               }
            }
            else if(_loc13_.type == 2)
            {
               _loc16_ = _loc13_.var_260;
               if(_loc16_.var_138 != null)
               {
                  _loc17_ = _loc16_.next;
                  _loc24_ = _loc16_.var_75;
                  class_325.var_219.remove(_loc16_);
                  _loc25_ = _loc16_;
                  _loc9_ = null;
                  _loc25_.right = _loc9_;
                  _loc25_.left = _loc9_;
                  _loc25_.var_75 = null;
                  _loc25_.var_138 = null;
                  _loc25_.vertices.clear();
                  _loc25_.next = ZPP_SimpleSeg.var_72;
                  ZPP_SimpleSeg.var_72 = _loc25_;
                  if(_loc17_ != null && _loc24_ != null && !(_loc17_.id < _loc24_.id?Boolean(class_325.var_289.has(_loc17_.id,_loc24_.id)):Boolean(class_325.var_289.has(_loc24_.id,_loc17_.id))))
                  {
                     class_325.var_219;
                     _loc14_ = ZPP_SimpleSweep.intersection(_loc17_,_loc24_);
                     if(_loc14_ != null)
                     {
                        if(_loc14_.vertex.x >= class_325.var_219.var_402)
                        {
                           _loc19_ = class_325.var_178.parent;
                           while(_loc19_ != null)
                           {
                              if(class_325.var_178.lt(_loc14_,_loc19_.data))
                              {
                                 _loc19_ = _loc19_.var_75;
                                 continue;
                              }
                              if(class_325.var_178.lt(_loc19_.data,_loc14_))
                              {
                                 _loc19_ = _loc19_.next;
                                 continue;
                              }
                              break;
                           }
                           _loc18_ = _loc19_;
                           if(_loc18_ == null)
                           {
                              _loc20_ = class_325.var_220.parent;
                              while(_loc20_ != null)
                              {
                                 if(class_325.var_220.lt(_loc14_,_loc20_.data))
                                 {
                                    _loc20_ = _loc20_.var_75;
                                    continue;
                                 }
                                 if(class_325.var_220.lt(_loc20_.data,_loc14_))
                                 {
                                    _loc20_ = _loc20_.next;
                                    continue;
                                 }
                                 break;
                              }
                              _loc19_ = _loc20_;
                              if(_loc19_ != null)
                              {
                                 _loc9_ = _loc14_.vertex;
                                 _loc9_.var_180.clear();
                                 _loc9_.var_138 = null;
                                 _loc9_.var_154 = false;
                                 _loc9_.next = ZPP_SimpleVert.var_72;
                                 ZPP_SimpleVert.var_72 = _loc9_;
                                 _loc14_.vertex = _loc19_.data.vertex;
                                 _loc19_.data = _loc14_;
                                 class_325.var_178.insert(_loc14_);
                              }
                              else
                              {
                                 class_325.var_178.insert(_loc14_);
                                 class_325.var_220.insert(_loc14_);
                              }
                              if(_loc17_.id < _loc24_.id)
                              {
                                 §§push(class_325.var_289);
                                 if(Hashable2_Boolfalse.var_72 == null)
                                 {
                                    _loc22_ = new Hashable2_Boolfalse();
                                 }
                                 else
                                 {
                                    _loc22_ = Hashable2_Boolfalse.var_72;
                                    Hashable2_Boolfalse.var_72 = _loc22_.next;
                                    _loc22_.next = null;
                                 }
                                 null;
                                 _loc22_.id = _loc17_.id;
                                 _loc22_.var_179 = _loc24_.id;
                                 _loc21_ = _loc22_;
                                 _loc21_.value = true;
                                 §§pop().add(_loc21_);
                              }
                              else
                              {
                                 §§push(class_325.var_289);
                                 if(Hashable2_Boolfalse.var_72 == null)
                                 {
                                    _loc22_ = new Hashable2_Boolfalse();
                                 }
                                 else
                                 {
                                    _loc22_ = Hashable2_Boolfalse.var_72;
                                    Hashable2_Boolfalse.var_72 = _loc22_.next;
                                    _loc22_.next = null;
                                 }
                                 null;
                                 _loc22_.id = _loc24_.id;
                                 _loc22_.var_179 = _loc17_.id;
                                 _loc21_ = _loc22_;
                                 _loc21_.value = true;
                                 §§pop().add(_loc21_);
                              }
                           }
                           else
                           {
                              _loc15_ = _loc18_.data;
                              _loc9_ = _loc14_.vertex;
                              _loc9_.var_180.clear();
                              _loc9_.var_138 = null;
                              _loc9_.var_154 = false;
                              _loc9_.next = ZPP_SimpleVert.var_72;
                              ZPP_SimpleVert.var_72 = _loc9_;
                              _loc23_ = _loc14_;
                              _loc23_.vertex = null;
                              _loc25_ = null;
                              _loc23_.segment2 = _loc25_;
                              _loc23_.var_260 = _loc25_;
                              _loc23_.var_138 = null;
                              _loc23_.next = ZPP_SimpleEvent.var_72;
                              ZPP_SimpleEvent.var_72 = _loc23_;
                           }
                        }
                        else
                        {
                           _loc9_ = _loc14_.vertex;
                           _loc9_.var_180.clear();
                           _loc9_.var_138 = null;
                           _loc9_.var_154 = false;
                           _loc9_.next = ZPP_SimpleVert.var_72;
                           ZPP_SimpleVert.var_72 = _loc9_;
                           _loc15_ = _loc14_;
                           _loc15_.vertex = null;
                           _loc25_ = null;
                           _loc15_.segment2 = _loc25_;
                           _loc15_.var_260 = _loc25_;
                           _loc15_.var_138 = null;
                           _loc15_.next = ZPP_SimpleEvent.var_72;
                           ZPP_SimpleEvent.var_72 = _loc15_;
                        }
                     }
                  }
               }
            }
            else
            {
               _loc9_ = _loc13_.vertex;
               _loc26_ = _loc9_.var_138 == null;
               _loc16_ = _loc13_.var_260;
               _loc17_ = _loc13_.segment2;
               if(_loc17_.next != _loc16_)
               {
                  _loc24_ = _loc16_;
                  _loc16_ = _loc17_;
                  _loc17_ = _loc24_;
               }
               _loc11_ = _loc16_.vertices.parent;
               while(_loc11_ != null)
               {
                  if(_loc16_.vertices.lt(_loc9_,_loc11_.data))
                  {
                     _loc11_ = _loc11_.var_75;
                     continue;
                  }
                  if(_loc16_.vertices.lt(_loc11_.data,_loc9_))
                  {
                     _loc11_ = _loc11_.next;
                     continue;
                  }
                  break;
               }
               _loc27_ = _loc11_ == null;
               _loc11_ = _loc17_.vertices.parent;
               while(_loc11_ != null)
               {
                  if(_loc17_.vertices.lt(_loc9_,_loc11_.data))
                  {
                     _loc11_ = _loc11_.var_75;
                     continue;
                  }
                  if(_loc17_.vertices.lt(_loc11_.data,_loc9_))
                  {
                     _loc11_ = _loc11_.next;
                     continue;
                  }
                  break;
               }
               _loc28_ = _loc11_ == null;
               if(_loc27_)
               {
                  _loc11_ = _loc16_.vertices.insert(_loc9_);
                  if(_loc9_ == _loc16_.left)
                  {
                     _loc10_ = _loc9_;
                  }
                  else
                  {
                     _loc16_.vertices;
                     _loc10_ = ZPP_Set_ZPP_SimpleVert.predecessor_node(_loc11_).data;
                  }
                  if(_loc9_ == _loc16_.right)
                  {
                     _loc29_ = _loc9_;
                  }
                  else
                  {
                     _loc16_.vertices;
                     _loc29_ = ZPP_Set_ZPP_SimpleVert.successor_node(_loc11_).data;
                  }
                  _loc10_.var_180.remove(_loc29_);
                  if(_loc9_ != _loc10_)
                  {
                     _loc10_.var_180.insert(_loc9_);
                  }
                  _loc29_.var_180.remove(_loc10_);
                  if(_loc9_ != _loc29_)
                  {
                     _loc29_.var_180.insert(_loc9_);
                  }
                  if(_loc9_ != _loc10_)
                  {
                     _loc9_.var_180.insert(_loc10_);
                  }
                  if(_loc9_ != _loc29_)
                  {
                     _loc9_.var_180.insert(_loc29_);
                  }
               }
               if(_loc28_)
               {
                  _loc11_ = _loc17_.vertices.insert(_loc9_);
                  if(_loc9_ == _loc17_.left)
                  {
                     _loc10_ = _loc9_;
                  }
                  else
                  {
                     _loc17_.vertices;
                     _loc10_ = ZPP_Set_ZPP_SimpleVert.predecessor_node(_loc11_).data;
                  }
                  if(_loc9_ == _loc17_.right)
                  {
                     _loc29_ = _loc9_;
                  }
                  else
                  {
                     _loc17_.vertices;
                     _loc29_ = ZPP_Set_ZPP_SimpleVert.successor_node(_loc11_).data;
                  }
                  _loc10_.var_180.remove(_loc29_);
                  if(_loc9_ != _loc10_)
                  {
                     _loc10_.var_180.insert(_loc9_);
                  }
                  _loc29_.var_180.remove(_loc10_);
                  if(_loc9_ != _loc29_)
                  {
                     _loc29_.var_180.insert(_loc9_);
                  }
                  if(_loc9_ != _loc10_)
                  {
                     _loc9_.var_180.insert(_loc10_);
                  }
                  if(_loc9_ != _loc29_)
                  {
                     _loc9_.var_180.insert(_loc29_);
                  }
               }
               if(_loc26_)
               {
                  _loc9_.var_138 = class_325.vertices.insert(_loc9_);
               }
               _loc9_.var_154 = true;
               if(_loc26_)
               {
                  _loc30_ = _loc16_.var_138;
                  _loc31_ = _loc17_.var_138;
                  _loc30_.data = _loc17_;
                  _loc31_.data = _loc16_;
                  _loc16_.var_138 = _loc31_;
                  _loc17_.var_138 = _loc30_;
                  _loc17_.next = _loc16_.next;
                  _loc16_.next = _loc17_;
                  _loc16_.var_75 = _loc17_.var_75;
                  _loc17_.var_75 = _loc16_;
                  if(_loc16_.var_75 != null)
                  {
                     _loc16_.var_75.next = _loc16_;
                  }
                  if(_loc17_.next != null)
                  {
                     _loc17_.next.var_75 = _loc17_;
                  }
               }
               if(_loc17_.next != null && _loc17_ != null && !(_loc17_.next.id < _loc17_.id?Boolean(class_325.var_289.has(_loc17_.next.id,_loc17_.id)):Boolean(class_325.var_289.has(_loc17_.id,_loc17_.next.id))))
               {
                  class_325.var_219;
                  _loc14_ = ZPP_SimpleSweep.intersection(_loc17_.next,_loc17_);
                  if(_loc14_ != null)
                  {
                     if(_loc14_.vertex.x >= class_325.var_219.var_402)
                     {
                        _loc19_ = class_325.var_178.parent;
                        while(_loc19_ != null)
                        {
                           if(class_325.var_178.lt(_loc14_,_loc19_.data))
                           {
                              _loc19_ = _loc19_.var_75;
                              continue;
                           }
                           if(class_325.var_178.lt(_loc19_.data,_loc14_))
                           {
                              _loc19_ = _loc19_.next;
                              continue;
                           }
                           break;
                        }
                        _loc18_ = _loc19_;
                        if(_loc18_ == null)
                        {
                           _loc20_ = class_325.var_220.parent;
                           while(_loc20_ != null)
                           {
                              if(class_325.var_220.lt(_loc14_,_loc20_.data))
                              {
                                 _loc20_ = _loc20_.var_75;
                                 continue;
                              }
                              if(class_325.var_220.lt(_loc20_.data,_loc14_))
                              {
                                 _loc20_ = _loc20_.next;
                                 continue;
                              }
                              break;
                           }
                           _loc19_ = _loc20_;
                           if(_loc19_ != null)
                           {
                              _loc10_ = _loc14_.vertex;
                              _loc10_.var_180.clear();
                              _loc10_.var_138 = null;
                              _loc10_.var_154 = false;
                              _loc10_.next = ZPP_SimpleVert.var_72;
                              ZPP_SimpleVert.var_72 = _loc10_;
                              _loc14_.vertex = _loc19_.data.vertex;
                              _loc19_.data = _loc14_;
                              class_325.var_178.insert(_loc14_);
                           }
                           else
                           {
                              class_325.var_178.insert(_loc14_);
                              class_325.var_220.insert(_loc14_);
                           }
                           if(_loc17_.next.id < _loc17_.id)
                           {
                              §§push(class_325.var_289);
                              if(Hashable2_Boolfalse.var_72 == null)
                              {
                                 _loc22_ = new Hashable2_Boolfalse();
                              }
                              else
                              {
                                 _loc22_ = Hashable2_Boolfalse.var_72;
                                 Hashable2_Boolfalse.var_72 = _loc22_.next;
                                 _loc22_.next = null;
                              }
                              null;
                              _loc22_.id = _loc17_.next.id;
                              _loc22_.var_179 = _loc17_.id;
                              _loc21_ = _loc22_;
                              _loc21_.value = true;
                              §§pop().add(_loc21_);
                           }
                           else
                           {
                              §§push(class_325.var_289);
                              if(Hashable2_Boolfalse.var_72 == null)
                              {
                                 _loc22_ = new Hashable2_Boolfalse();
                              }
                              else
                              {
                                 _loc22_ = Hashable2_Boolfalse.var_72;
                                 Hashable2_Boolfalse.var_72 = _loc22_.next;
                                 _loc22_.next = null;
                              }
                              null;
                              _loc22_.id = _loc17_.id;
                              _loc22_.var_179 = _loc17_.next.id;
                              _loc21_ = _loc22_;
                              _loc21_.value = true;
                              §§pop().add(_loc21_);
                           }
                        }
                        else
                        {
                           _loc15_ = _loc18_.data;
                           _loc10_ = _loc14_.vertex;
                           _loc10_.var_180.clear();
                           _loc10_.var_138 = null;
                           _loc10_.var_154 = false;
                           _loc10_.next = ZPP_SimpleVert.var_72;
                           ZPP_SimpleVert.var_72 = _loc10_;
                           _loc23_ = _loc14_;
                           _loc23_.vertex = null;
                           _loc24_ = null;
                           _loc23_.segment2 = _loc24_;
                           _loc23_.var_260 = _loc24_;
                           _loc23_.var_138 = null;
                           _loc23_.next = ZPP_SimpleEvent.var_72;
                           ZPP_SimpleEvent.var_72 = _loc23_;
                        }
                     }
                     else
                     {
                        _loc10_ = _loc14_.vertex;
                        _loc10_.var_180.clear();
                        _loc10_.var_138 = null;
                        _loc10_.var_154 = false;
                        _loc10_.next = ZPP_SimpleVert.var_72;
                        ZPP_SimpleVert.var_72 = _loc10_;
                        _loc15_ = _loc14_;
                        _loc15_.vertex = null;
                        _loc24_ = null;
                        _loc15_.segment2 = _loc24_;
                        _loc15_.var_260 = _loc24_;
                        _loc15_.var_138 = null;
                        _loc15_.next = ZPP_SimpleEvent.var_72;
                        ZPP_SimpleEvent.var_72 = _loc15_;
                     }
                  }
               }
               if(_loc16_ != null && _loc16_.var_75 != null && !(_loc16_.id < _loc16_.var_75.id?Boolean(class_325.var_289.has(_loc16_.id,_loc16_.var_75.id)):Boolean(class_325.var_289.has(_loc16_.var_75.id,_loc16_.id))))
               {
                  class_325.var_219;
                  _loc14_ = ZPP_SimpleSweep.intersection(_loc16_,_loc16_.var_75);
                  if(_loc14_ != null)
                  {
                     if(_loc14_.vertex.x >= class_325.var_219.var_402)
                     {
                        _loc19_ = class_325.var_178.parent;
                        while(_loc19_ != null)
                        {
                           if(class_325.var_178.lt(_loc14_,_loc19_.data))
                           {
                              _loc19_ = _loc19_.var_75;
                              continue;
                           }
                           if(class_325.var_178.lt(_loc19_.data,_loc14_))
                           {
                              _loc19_ = _loc19_.next;
                              continue;
                           }
                           break;
                        }
                        _loc18_ = _loc19_;
                        if(_loc18_ == null)
                        {
                           _loc20_ = class_325.var_220.parent;
                           while(_loc20_ != null)
                           {
                              if(class_325.var_220.lt(_loc14_,_loc20_.data))
                              {
                                 _loc20_ = _loc20_.var_75;
                                 continue;
                              }
                              if(class_325.var_220.lt(_loc20_.data,_loc14_))
                              {
                                 _loc20_ = _loc20_.next;
                                 continue;
                              }
                              break;
                           }
                           _loc19_ = _loc20_;
                           if(_loc19_ != null)
                           {
                              _loc10_ = _loc14_.vertex;
                              _loc10_.var_180.clear();
                              _loc10_.var_138 = null;
                              _loc10_.var_154 = false;
                              _loc10_.next = ZPP_SimpleVert.var_72;
                              ZPP_SimpleVert.var_72 = _loc10_;
                              _loc14_.vertex = _loc19_.data.vertex;
                              _loc19_.data = _loc14_;
                              class_325.var_178.insert(_loc14_);
                           }
                           else
                           {
                              class_325.var_178.insert(_loc14_);
                              class_325.var_220.insert(_loc14_);
                           }
                           if(_loc16_.id < _loc16_.var_75.id)
                           {
                              §§push(class_325.var_289);
                              if(Hashable2_Boolfalse.var_72 == null)
                              {
                                 _loc22_ = new Hashable2_Boolfalse();
                              }
                              else
                              {
                                 _loc22_ = Hashable2_Boolfalse.var_72;
                                 Hashable2_Boolfalse.var_72 = _loc22_.next;
                                 _loc22_.next = null;
                              }
                              null;
                              _loc22_.id = _loc16_.id;
                              _loc22_.var_179 = _loc16_.var_75.id;
                              _loc21_ = _loc22_;
                              _loc21_.value = true;
                              §§pop().add(_loc21_);
                           }
                           else
                           {
                              §§push(class_325.var_289);
                              if(Hashable2_Boolfalse.var_72 == null)
                              {
                                 _loc22_ = new Hashable2_Boolfalse();
                              }
                              else
                              {
                                 _loc22_ = Hashable2_Boolfalse.var_72;
                                 Hashable2_Boolfalse.var_72 = _loc22_.next;
                                 _loc22_.next = null;
                              }
                              null;
                              _loc22_.id = _loc16_.var_75.id;
                              _loc22_.var_179 = _loc16_.id;
                              _loc21_ = _loc22_;
                              _loc21_.value = true;
                              §§pop().add(_loc21_);
                           }
                        }
                        else
                        {
                           _loc15_ = _loc18_.data;
                           _loc10_ = _loc14_.vertex;
                           _loc10_.var_180.clear();
                           _loc10_.var_138 = null;
                           _loc10_.var_154 = false;
                           _loc10_.next = ZPP_SimpleVert.var_72;
                           ZPP_SimpleVert.var_72 = _loc10_;
                           _loc23_ = _loc14_;
                           _loc23_.vertex = null;
                           _loc24_ = null;
                           _loc23_.segment2 = _loc24_;
                           _loc23_.var_260 = _loc24_;
                           _loc23_.var_138 = null;
                           _loc23_.next = ZPP_SimpleEvent.var_72;
                           ZPP_SimpleEvent.var_72 = _loc23_;
                        }
                     }
                     else
                     {
                        _loc10_ = _loc14_.vertex;
                        _loc10_.var_180.clear();
                        _loc10_.var_138 = null;
                        _loc10_.var_154 = false;
                        _loc10_.next = ZPP_SimpleVert.var_72;
                        ZPP_SimpleVert.var_72 = _loc10_;
                        _loc15_ = _loc14_;
                        _loc15_.vertex = null;
                        _loc24_ = null;
                        _loc15_.segment2 = _loc24_;
                        _loc15_.var_260 = _loc24_;
                        _loc15_.var_138 = null;
                        _loc15_.next = ZPP_SimpleEvent.var_72;
                        ZPP_SimpleEvent.var_72 = _loc15_;
                     }
                  }
               }
               class_325.var_220.remove(_loc13_);
            }
            _loc14_ = _loc13_;
            _loc14_.vertex = null;
            _loc16_ = null;
            _loc14_.segment2 = _loc16_;
            _loc14_.var_260 = _loc16_;
            _loc14_.var_138 = null;
            _loc14_.next = ZPP_SimpleEvent.var_72;
            ZPP_SimpleEvent.var_72 = _loc14_;
         }
         var _loc32_:int = 0;
         var _loc33_:int = class_325.var_289.var_280.length;
         while(_loc32_ < _loc33_)
         {
            _loc32_++;
            _loc34_ = _loc32_;
            _loc21_ = class_325.var_289.var_280[_loc34_];
            if(_loc21_ != null)
            {
               while(_loc21_ != null)
               {
                  _loc22_ = _loc21_.var_305;
                  _loc21_.var_305 = null;
                  _loc35_ = _loc21_;
                  _loc35_.next = Hashable2_Boolfalse.var_72;
                  Hashable2_Boolfalse.var_72 = _loc35_;
                  _loc21_ = _loc22_;
               }
               class_325.var_289.var_280[_loc34_] = null;
            }
         }
         if(param2 == null)
         {
            param2 = new class_318();
         }
         while(!class_325.vertices.empty())
         {
            class_325.method_689(class_325.vertices,param2);
         }
         return param2;
      }
      
      public static function method_689(param1:ZPP_Set_ZPP_SimpleVert, param2:class_318) : void
      {
         var _loc7_:* = null as ZPP_Set_ZPP_SimpleVert;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = null as ZPP_GeomVert;
         var _loc15_:* = null as ZPP_GeomVert;
         var _loc16_:* = null as ZPP_SimpleVert;
         var _loc17_:* = null as ZPP_Set_ZPP_SimpleVert;
         var _loc18_:* = null as ZPP_SimpleVert;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         var _loc21_:* = NaN;
         var _loc3_:* = null;
         var _loc4_:ZPP_SimpleVert = param1.name_41();
         var _loc5_:ZPP_SimpleVert = _loc4_;
         var _loc6_:ZPP_Set_ZPP_SimpleVert = _loc4_.var_180.parent;
         if(_loc6_.var_75 == null)
         {
            _loc7_ = _loc6_.next;
         }
         else
         {
            _loc7_ = _loc6_.var_75;
         }
         var _loc8_:ZPP_SimpleVert = _loc6_.data;
         var _loc9_:ZPP_SimpleVert = _loc7_.data;
         _loc10_ = 0;
         _loc11_ = 0;
         _loc10_ = Number(_loc4_.x - _loc8_.x);
         _loc11_ = Number(_loc4_.y - _loc8_.y);
         _loc12_ = 0;
         _loc13_ = 0;
         _loc12_ = Number(_loc9_.x - _loc4_.x);
         _loc13_ = Number(_loc9_.y - _loc4_.y);
         if(_loc13_ * _loc10_ - _loc12_ * _loc11_ < 0)
         {
            _loc9_ = _loc8_;
         }
         if(ZPP_GeomVert.var_72 == null)
         {
            _loc15_ = new ZPP_GeomVert();
         }
         else
         {
            _loc15_ = ZPP_GeomVert.var_72;
            ZPP_GeomVert.var_72 = _loc15_.next;
            _loc15_.next = null;
         }
         _loc15_.var_154 = false;
         _loc15_.x = _loc4_.x;
         _loc15_.y = _loc4_.y;
         _loc14_ = _loc15_;
         if(_loc3_ == null)
         {
            _loc15_ = _loc14_;
            _loc14_.next = _loc15_;
            _loc15_ = _loc15_;
            _loc14_.var_75 = _loc15_;
            _loc3_ = _loc15_;
         }
         else
         {
            _loc14_.var_75 = _loc3_;
            _loc14_.next = _loc3_.next;
            _loc3_.next.var_75 = _loc14_;
            _loc3_.next = _loc14_;
         }
         _loc3_ = _loc14_;
         _loc3_.var_154 = _loc4_.var_154;
         while(true)
         {
            _loc4_.var_180.remove(_loc9_);
            _loc9_.var_180.remove(_loc4_);
            if(_loc9_ == _loc5_)
            {
               break;
            }
            if(ZPP_GeomVert.var_72 == null)
            {
               _loc15_ = new ZPP_GeomVert();
            }
            else
            {
               _loc15_ = ZPP_GeomVert.var_72;
               ZPP_GeomVert.var_72 = _loc15_.next;
               _loc15_.next = null;
            }
            _loc15_.var_154 = false;
            _loc15_.x = _loc9_.x;
            _loc15_.y = _loc9_.y;
            _loc14_ = _loc15_;
            if(_loc3_ == null)
            {
               _loc15_ = _loc14_;
               _loc14_.next = _loc15_;
               _loc15_ = _loc15_;
               _loc14_.var_75 = _loc15_;
               _loc3_ = _loc15_;
            }
            else
            {
               _loc14_.var_75 = _loc3_;
               _loc14_.next = _loc3_.next;
               _loc3_.next.var_75 = _loc14_;
               _loc3_.next = _loc14_;
            }
            _loc3_ = _loc14_;
            _loc3_.var_154 = _loc9_.var_154;
            if(_loc9_.var_180.singular())
            {
               if(_loc4_.var_180.empty())
               {
                  param1.remove(_loc4_);
                  _loc16_ = _loc4_;
                  _loc16_.var_180.clear();
                  _loc16_.var_138 = null;
                  _loc16_.var_154 = false;
                  _loc16_.next = ZPP_SimpleVert.var_72;
                  ZPP_SimpleVert.var_72 = _loc16_;
               }
               _loc4_ = _loc9_;
               _loc9_ = _loc9_.var_180.parent.data;
            }
            else
            {
               _loc16_ = null;
               _loc10_ = 0;
               if(!_loc9_.var_180.empty())
               {
                  _loc17_ = _loc9_.var_180.parent;
                  while(_loc17_.var_75 != null)
                  {
                     _loc17_ = _loc17_.var_75;
                  }
                  while(_loc17_ != null)
                  {
                     _loc18_ = _loc17_.data;
                     if(_loc16_ == null)
                     {
                        _loc16_ = _loc18_;
                        _loc11_ = 0;
                        _loc12_ = 0;
                        _loc11_ = Number(_loc9_.x - _loc4_.x);
                        _loc12_ = Number(_loc9_.y - _loc4_.y);
                        _loc13_ = 0;
                        _loc19_ = 0;
                        _loc13_ = Number(_loc18_.x - _loc9_.x);
                        _loc19_ = Number(_loc18_.y - _loc9_.y);
                        _loc10_ = Number(_loc19_ * _loc11_ - _loc13_ * _loc12_);
                     }
                     else
                     {
                        _loc12_ = 0;
                        _loc13_ = 0;
                        _loc12_ = Number(_loc9_.x - _loc4_.x);
                        _loc13_ = Number(_loc9_.y - _loc4_.y);
                        _loc19_ = 0;
                        _loc20_ = 0;
                        _loc19_ = Number(_loc18_.x - _loc9_.x);
                        _loc20_ = Number(_loc18_.y - _loc9_.y);
                        _loc11_ = Number(_loc20_ * _loc12_ - _loc19_ * _loc13_);
                        if(_loc11_ > 0 && _loc10_ <= 0)
                        {
                           _loc16_ = _loc18_;
                           _loc10_ = Number(_loc11_);
                        }
                        else if(_loc10_ * _loc11_ >= 0)
                        {
                           _loc13_ = 0;
                           _loc19_ = 0;
                           _loc13_ = Number(_loc9_.x - _loc18_.x);
                           _loc19_ = Number(_loc9_.y - _loc18_.y);
                           _loc20_ = 0;
                           _loc21_ = 0;
                           _loc20_ = Number(_loc16_.x - _loc9_.x);
                           _loc21_ = Number(_loc16_.y - _loc9_.y);
                           _loc12_ = Number(_loc21_ * _loc13_ - _loc20_ * _loc19_);
                           if(_loc12_ > 0)
                           {
                              _loc16_ = _loc18_;
                              _loc10_ = Number(_loc11_);
                           }
                        }
                     }
                     if(_loc17_.next != null)
                     {
                        _loc17_ = _loc17_.next;
                        while(_loc17_.var_75 != null)
                        {
                           _loc17_ = _loc17_.var_75;
                        }
                     }
                     else
                     {
                        while(_loc17_.parent != null && _loc17_ == _loc17_.parent.next)
                        {
                           _loc17_ = _loc17_.parent;
                        }
                        _loc17_ = _loc17_.parent;
                     }
                  }
               }
               if(_loc4_.var_180.empty())
               {
                  param1.remove(_loc4_);
                  _loc18_ = _loc4_;
                  _loc18_.var_180.clear();
                  _loc18_.var_138 = null;
                  _loc18_.var_154 = false;
                  _loc18_.next = ZPP_SimpleVert.var_72;
                  ZPP_SimpleVert.var_72 = _loc18_;
               }
               _loc4_ = _loc9_;
               _loc9_ = _loc16_;
            }
         }
         if(_loc4_.var_180.empty())
         {
            param1.remove(_loc4_);
            _loc16_ = _loc4_;
            _loc16_.var_180.clear();
            _loc16_.var_138 = null;
            _loc16_.var_154 = false;
            _loc16_.next = ZPP_SimpleVert.var_72;
            ZPP_SimpleVert.var_72 = _loc16_;
         }
         param1.remove(_loc5_);
         _loc16_ = _loc5_;
         _loc16_.var_180.clear();
         _loc16_.var_138 = null;
         _loc16_.var_154 = false;
         _loc16_.next = ZPP_SimpleVert.var_72;
         ZPP_SimpleVert.var_72 = _loc16_;
         param2.add(_loc3_);
      }
      
      public static function isSimple(param1:ZPP_GeomVert) : Boolean
      {
         var _loc3_:* = null as class_345;
         var _loc6_:* = null as ZPP_GeomVert;
         var _loc7_:* = null as ZPP_GeomVert;
         var _loc8_:* = null as ZPP_SimpleVert;
         var _loc10_:* = null as class_343;
         var _loc12_:* = null as ZPP_SimpleVert;
         var _loc13_:* = null as ZPP_SimpleEvent;
         var _loc14_:* = null as ZPP_SimpleEvent;
         var _loc15_:* = null as ZPP_SimpleEvent;
         var _loc16_:* = null as ZPP_SimpleSeg;
         var _loc17_:* = null as ZNPNode_ZPP_SimpleEvent;
         var _loc18_:* = null as ZNPNode_ZPP_SimpleEvent;
         var _loc19_:* = null as ZNPNode_ZPP_SimpleEvent;
         var _loc20_:* = null as ZNPNode_ZPP_SimpleEvent;
         var _loc21_:* = null as ZNPNode_ZPP_SimpleEvent;
         var _loc22_:* = 0;
         var _loc23_:int = 0;
         var _loc24_:int = 0;
         var _loc25_:int = 0;
         var _loc27_:* = null as ZPP_SimpleSeg;
         if(class_325.var_219 == null)
         {
            class_325.var_219 = new ZPP_SimpleSweep();
            class_325.var_289 = new class_344();
         }
         var _loc2_:class_345 = class_325.var_999;
         if(_loc2_ == null)
         {
            _loc3_ = new class_345();
            class_325.var_999 = _loc3_;
            _loc2_ = _loc3_;
         }
         var _loc4_:ZPP_GeomVert = param1;
         var _loc5_:ZPP_GeomVert = param1;
         if(_loc4_ != null)
         {
            _loc6_ = _loc4_;
            do
            {
               _loc7_ = _loc6_;
               §§push(_loc2_);
               if(ZPP_SimpleVert.var_72 == null)
               {
                  _loc8_ = new ZPP_SimpleVert();
               }
               else
               {
                  _loc8_ = ZPP_SimpleVert.var_72;
                  ZPP_SimpleVert.var_72 = _loc8_.next;
                  _loc8_.next = null;
               }
               null;
               _loc8_.x = _loc7_.x;
               _loc8_.y = _loc7_.y;
               §§pop().add(_loc8_);
               _loc6_ = _loc6_.next;
            }
            while(_loc6_ != _loc5_);
            
         }
         var _loc9_:class_343 = class_325.var_1058;
         if(_loc9_ == null)
         {
            _loc10_ = new class_343();
            class_325.var_1058 = _loc10_;
            _loc9_ = _loc10_;
         }
         var _loc11_:ZNPNode_ZPP_SimpleVert = _loc2_.var_73;
         _loc8_ = _loc11_.var_74;
         _loc11_ = _loc11_.next;
         while(_loc11_ != null)
         {
            _loc12_ = _loc11_.var_74;
            §§push(_loc9_);
            if(ZPP_SimpleEvent.var_72 == null)
            {
               _loc14_ = new ZPP_SimpleEvent();
            }
            else
            {
               _loc14_ = ZPP_SimpleEvent.var_72;
               ZPP_SimpleEvent.var_72 = _loc14_.next;
               _loc14_.next = null;
            }
            null;
            _loc14_.vertex = _loc8_;
            _loc13_ = §§pop().add(_loc14_);
            §§push(_loc9_);
            if(ZPP_SimpleEvent.var_72 == null)
            {
               _loc15_ = new ZPP_SimpleEvent();
            }
            else
            {
               _loc15_ = ZPP_SimpleEvent.var_72;
               ZPP_SimpleEvent.var_72 = _loc15_.next;
               _loc15_.next = null;
            }
            null;
            _loc15_.vertex = _loc12_;
            _loc14_ = §§pop().add(_loc15_);
            §§push(_loc13_);
            if(ZPP_SimpleEvent.less_xy(_loc13_,_loc14_))
            {
               _loc13_.type = 1;
               _loc14_.type = 2;
               _loc16_ = ZPP_SimpleSeg.method_65(_loc8_,_loc12_);
               _loc14_.var_260 = _loc16_;
               §§push(_loc16_);
            }
            else
            {
               _loc13_.type = 2;
               _loc14_.type = 1;
               _loc16_ = ZPP_SimpleSeg.method_65(_loc12_,_loc8_);
               _loc14_.var_260 = _loc16_;
               §§push(_loc16_);
            }
            §§pop().var_260 = §§pop();
            _loc8_ = _loc12_;
            _loc11_ = _loc11_.next;
         }
         _loc12_ = _loc2_.var_73.var_74;
         §§push(_loc9_);
         if(ZPP_SimpleEvent.var_72 == null)
         {
            _loc14_ = new ZPP_SimpleEvent();
         }
         else
         {
            _loc14_ = ZPP_SimpleEvent.var_72;
            ZPP_SimpleEvent.var_72 = _loc14_.next;
            _loc14_.next = null;
         }
         null;
         _loc14_.vertex = _loc8_;
         _loc13_ = §§pop().add(_loc14_);
         §§push(_loc9_);
         if(ZPP_SimpleEvent.var_72 == null)
         {
            _loc15_ = new ZPP_SimpleEvent();
         }
         else
         {
            _loc15_ = ZPP_SimpleEvent.var_72;
            ZPP_SimpleEvent.var_72 = _loc15_.next;
            _loc15_.next = null;
         }
         null;
         _loc15_.vertex = _loc12_;
         _loc14_ = §§pop().add(_loc15_);
         §§push(_loc13_);
         if(ZPP_SimpleEvent.less_xy(_loc13_,_loc14_))
         {
            _loc13_.type = 1;
            _loc14_.type = 2;
            _loc16_ = ZPP_SimpleSeg.method_65(_loc8_,_loc12_);
            _loc14_.var_260 = _loc16_;
            §§push(_loc16_);
         }
         else
         {
            _loc13_.type = 2;
            _loc14_.type = 1;
            _loc16_ = ZPP_SimpleSeg.method_65(_loc12_,_loc8_);
            _loc14_.var_260 = _loc16_;
            §§push(_loc16_);
         }
         §§pop().var_260 = §§pop();
         _loc10_ = _loc9_;
         if(_loc10_.var_73 != null && _loc10_.var_73.next != null)
         {
            _loc17_ = _loc10_.var_73;
            _loc18_ = null;
            _loc19_ = null;
            _loc20_ = null;
            _loc21_ = null;
            _loc22_ = 1;
            do
            {
               _loc23_ = 0;
               _loc19_ = _loc17_;
               _loc17_ = null;
               _loc18_ = _loc17_;
               while(_loc19_ != null)
               {
                  _loc23_++;
                  _loc20_ = _loc19_;
                  _loc24_ = 0;
                  _loc25_ = _loc22_;
                  while(_loc20_ != null && _loc24_ < _loc22_)
                  {
                     _loc24_++;
                     _loc20_ = _loc20_.next;
                  }
                  while(_loc24_ > 0 || _loc25_ > 0 && _loc20_ != null)
                  {
                     if(_loc24_ == 0)
                     {
                        _loc21_ = _loc20_;
                        _loc20_ = _loc20_.next;
                        _loc25_--;
                     }
                     else if(_loc25_ == 0 || _loc20_ == null)
                     {
                        _loc21_ = _loc19_;
                        _loc19_ = _loc19_.next;
                        _loc24_--;
                     }
                     else if(ZPP_SimpleEvent.less_xy(_loc19_.var_74,_loc20_.var_74))
                     {
                        _loc21_ = _loc19_;
                        _loc19_ = _loc19_.next;
                        _loc24_--;
                     }
                     else
                     {
                        _loc21_ = _loc20_;
                        _loc20_ = _loc20_.next;
                        _loc25_--;
                     }
                     if(_loc18_ != null)
                     {
                        _loc18_.next = _loc21_;
                     }
                     else
                     {
                        _loc17_ = _loc21_;
                     }
                     _loc18_ = _loc21_;
                  }
                  _loc19_ = _loc20_;
               }
               _loc18_.next = null;
               _loc22_ = _loc22_ << 1;
            }
            while(_loc23_ > 1);
            
            _loc10_.var_73 = _loc17_;
            _loc10_.name_2 = true;
            _loc10_.var_76 = true;
         }
         var _loc26_:Boolean = true;
         while(_loc9_.var_73 != null)
         {
            _loc13_ = _loc9_.method_105();
            _loc16_ = _loc13_.var_260;
            if(_loc13_.type == 1)
            {
               class_325.var_219.add(_loc16_);
               class_325.var_219;
               if(ZPP_SimpleSweep.method_373(_loc16_,_loc16_.next) || ZPP_SimpleSweep.method_373(_loc16_,_loc16_.var_75))
               {
                  _loc26_ = false;
                  break;
               }
            }
            else if(_loc13_.type == 2)
            {
               class_325.var_219;
               if(ZPP_SimpleSweep.method_373(_loc16_.var_75,_loc16_.next))
               {
                  _loc26_ = false;
                  break;
               }
               class_325.var_219.remove(_loc16_);
               _loc27_ = _loc16_;
               _loc8_ = null;
               _loc27_.right = _loc8_;
               _loc27_.left = _loc8_;
               _loc27_.var_75 = null;
               _loc27_.var_138 = null;
               _loc27_.vertices.clear();
               _loc27_.next = ZPP_SimpleSeg.var_72;
               ZPP_SimpleSeg.var_72 = _loc27_;
            }
            _loc14_ = _loc13_;
            _loc14_.vertex = null;
            _loc27_ = null;
            _loc14_.segment2 = _loc27_;
            _loc14_.var_260 = _loc27_;
            _loc14_.var_138 = null;
            _loc14_.next = ZPP_SimpleEvent.var_72;
            ZPP_SimpleEvent.var_72 = _loc14_;
         }
         while(_loc9_.var_73 != null)
         {
            _loc13_ = _loc9_.method_105();
            if(_loc13_.type == 2)
            {
               _loc16_ = _loc13_.var_260;
               _loc8_ = null;
               _loc16_.right = _loc8_;
               _loc16_.left = _loc8_;
               _loc16_.var_75 = null;
               _loc16_.var_138 = null;
               _loc16_.vertices.clear();
               _loc16_.next = ZPP_SimpleSeg.var_72;
               ZPP_SimpleSeg.var_72 = _loc16_;
            }
            _loc14_ = _loc13_;
            _loc14_.vertex = null;
            _loc16_ = null;
            _loc14_.segment2 = _loc16_;
            _loc14_.var_260 = _loc16_;
            _loc14_.var_138 = null;
            _loc14_.next = ZPP_SimpleEvent.var_72;
            ZPP_SimpleEvent.var_72 = _loc14_;
         }
         class_325.var_219.clear();
         while(_loc2_.var_73 != null)
         {
            _loc8_ = _loc2_.method_105();
            _loc8_.var_180.clear();
            _loc8_.var_138 = null;
            _loc8_.var_154 = false;
            _loc8_.next = ZPP_SimpleVert.var_72;
            ZPP_SimpleVert.var_72 = _loc8_;
         }
         return _loc26_;
      }
   }
}
