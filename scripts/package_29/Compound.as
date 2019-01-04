package package_29
{
   import nape.constraint.Constraint;
   import nape.constraint.class_218;
   import nape.constraint.class_234;
   import nape.geom.Vec2;
   import package_31.class_197;
   import package_32.class_230;
   import zpp_nape.callbacks.ZPP_CbType;
   import zpp_nape.geom.ZPP_Vec2;
   import zpp_nape.phys.ZPP_Compound;
   import zpp_nape.space.ZPP_Space;
   import zpp_nape.util.ZNPNode_ZPP_Shape;
   import zpp_nape.util.class_219;
   
   public final class Compound extends Interactor
   {
       
      
      public var zpp_inner:ZPP_Compound;
      
      public function Compound()
      {
         zpp_inner = null;
         super();
         zpp_inner = new ZPP_Compound();
         zpp_inner.outer = this;
         zpp_inner.var_307 = this;
         var_150 = zpp_inner;
         zpp_inner.method_175(ZPP_CbType.ANY_COMPOUND.zpp_inner);
      }
      
      public final function method_368(param1:Function) : void
      {
         var _loc3_:* = null as class_218;
         var _loc4_:* = null as Constraint;
         var _loc5_:int = 0;
         var _loc7_:* = null as class_235;
         var _loc8_:* = null as Compound;
         _loc3_ = zpp_inner.var_185;
         _loc3_.zpp_inner.method_104();
         var _loc2_:class_234 = class_234.method_65(_loc3_);
         _loc2_.zpp_inner.zpp_inner.method_104();
         _loc3_ = _loc2_.zpp_inner;
         _loc3_.zpp_inner.method_104();
         if(_loc3_.zpp_inner.var_86)
         {
            _loc3_.zpp_inner.var_86 = false;
            _loc3_.zpp_inner.var_89 = _loc3_.zpp_inner.name_4.length;
         }
         _loc5_ = _loc3_.zpp_inner.var_89;
         _loc2_.var_98 = true;
         if(_loc2_.var_90 < _loc5_)
         {
            §§push(true);
         }
         else
         {
            _loc2_.var_106 = class_234.var_72;
            class_234.var_72 = _loc2_;
            _loc2_.zpp_inner = null;
            §§push(false);
         }
         _loc7_ = zpp_inner.var_241;
         _loc7_.zpp_inner.method_104();
         var _loc6_:class_229 = class_229.method_65(_loc7_);
         _loc6_.zpp_inner.zpp_inner.method_104();
         _loc7_ = _loc6_.zpp_inner;
         _loc7_.zpp_inner.method_104();
         if(_loc7_.zpp_inner.var_86)
         {
            _loc7_.zpp_inner.var_86 = false;
            _loc7_.zpp_inner.var_89 = _loc7_.zpp_inner.name_4.length;
         }
         _loc5_ = _loc7_.zpp_inner.var_89;
         _loc6_.var_98 = true;
         if(_loc6_.var_90 < _loc5_)
         {
            §§push(true);
         }
         else
         {
            _loc6_.var_106 = class_229.var_72;
            class_229.var_72 = _loc6_;
            _loc6_.zpp_inner = null;
            §§push(false);
         }
      }
      
      public final function method_401(param1:Function) : void
      {
         var _loc3_:* = null as class_235;
         var _loc4_:* = null as Compound;
         var _loc5_:int = 0;
         _loc3_ = zpp_inner.var_241;
         _loc3_.zpp_inner.method_104();
         var _loc2_:class_229 = class_229.method_65(_loc3_);
         _loc2_.zpp_inner.zpp_inner.method_104();
         _loc3_ = _loc2_.zpp_inner;
         _loc3_.zpp_inner.method_104();
         if(_loc3_.zpp_inner.var_86)
         {
            _loc3_.zpp_inner.var_86 = false;
            _loc3_.zpp_inner.var_89 = _loc3_.zpp_inner.name_4.length;
         }
         _loc5_ = _loc3_.zpp_inner.var_89;
         _loc2_.var_98 = true;
         if(_loc2_.var_90 < _loc5_)
         {
            §§push(true);
         }
         else
         {
            _loc2_.var_106 = class_229.var_72;
            class_229.var_72 = _loc2_;
            _loc2_.zpp_inner = null;
            §§push(false);
         }
      }
      
      public final function method_161(param1:Function) : void
      {
         var _loc3_:* = null as class_205;
         var _loc4_:* = null as Body;
         var _loc5_:int = 0;
         var _loc7_:* = null as class_235;
         var _loc8_:* = null as Compound;
         _loc3_ = zpp_inner.var_269;
         _loc3_.zpp_inner.method_104();
         var _loc2_:class_231 = class_231.method_65(_loc3_);
         _loc2_.zpp_inner.zpp_inner.method_104();
         _loc3_ = _loc2_.zpp_inner;
         _loc3_.zpp_inner.method_104();
         if(_loc3_.zpp_inner.var_86)
         {
            _loc3_.zpp_inner.var_86 = false;
            _loc3_.zpp_inner.var_89 = _loc3_.zpp_inner.name_4.length;
         }
         _loc5_ = _loc3_.zpp_inner.var_89;
         _loc2_.var_98 = true;
         if(_loc2_.var_90 < _loc5_)
         {
            §§push(true);
         }
         else
         {
            _loc2_.var_106 = class_231.var_72;
            class_231.var_72 = _loc2_;
            _loc2_.zpp_inner = null;
            §§push(false);
         }
         _loc7_ = zpp_inner.var_241;
         _loc7_.zpp_inner.method_104();
         var _loc6_:class_229 = class_229.method_65(_loc7_);
         _loc6_.zpp_inner.zpp_inner.method_104();
         _loc7_ = _loc6_.zpp_inner;
         _loc7_.zpp_inner.method_104();
         if(_loc7_.zpp_inner.var_86)
         {
            _loc7_.zpp_inner.var_86 = false;
            _loc7_.zpp_inner.var_89 = _loc7_.zpp_inner.name_4.length;
         }
         _loc5_ = _loc7_.zpp_inner.var_89;
         _loc6_.var_98 = true;
         if(_loc6_.var_90 < _loc5_)
         {
            §§push(true);
         }
         else
         {
            _loc6_.var_106 = class_229.var_72;
            class_229.var_72 = _loc6_;
            _loc6_.zpp_inner = null;
            §§push(false);
         }
      }
      
      public final function translate(param1:Vec2) : Compound
      {
         var _loc3_:* = null as ZPP_Vec2;
         var _loc4_:* = null as Vec2;
         var _loc5_:* = null as ZPP_Vec2;
         var translation:Vec2 = param1;
         var _loc2_:Boolean = translation.zpp_inner.name_5;
         translation.zpp_inner.name_5 = false;
         method_161(function(param1:Body):void
         {
            if(param1.zpp_inner.var_245 == null)
            {
               param1.zpp_inner.method_185();
            }
            param1.zpp_inner.var_245.method_282(translation);
         });
         translation.zpp_inner.name_5 = _loc2_;
         if(translation.zpp_inner.name_5)
         {
            _loc3_ = translation.zpp_inner;
            translation.zpp_inner.outer = null;
            translation.zpp_inner = null;
            _loc4_ = translation;
            _loc4_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc4_;
            _loc5_ = _loc3_;
            if(_loc5_.outer != null)
            {
               _loc5_.outer.zpp_inner = null;
               _loc5_.outer = null;
            }
            _loc5_.var_103 = null;
            _loc5_._validate = null;
            _loc5_._invalidate = null;
            _loc5_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc5_;
         }
         else
         {
            false;
         }
         return this;
      }
      
      override public function toString() : String
      {
         return "Compound" + var_150.id;
      }
      
      public function set space(param1:class_197) : class_197
      {
         var _loc2_:* = null as class_235;
         zpp_inner.method_112("Compound::space");
         if((zpp_inner.space == null?null:zpp_inner.space.outer) != param1)
         {
            if(param1 != null)
            {
               _loc2_ = param1.zpp_inner.var_241;
               if(_loc2_.zpp_inner.var_111)
               {
                  _loc2_.push(this);
               }
               else
               {
                  _loc2_.unshift(this);
               }
            }
         }
         if(zpp_inner.space == null)
         {
            return null;
         }
         return zpp_inner.space.outer;
      }
      
      public function set compound(param1:Compound) : Compound
      {
         var _loc2_:* = null as class_235;
         zpp_inner.method_112("Compound::compound");
         if((zpp_inner.compound == null?null:zpp_inner.compound.outer) != param1)
         {
            if(param1 != null)
            {
               _loc2_ = param1.zpp_inner.var_241;
               if(_loc2_.zpp_inner.var_111)
               {
                  _loc2_.push(this);
               }
               else
               {
                  _loc2_.unshift(this);
               }
            }
         }
         if(zpp_inner.compound == null)
         {
            return null;
         }
         return zpp_inner.compound.outer;
      }
      
      public final function rotate(param1:Vec2, param2:Number) : Compound
      {
         var _loc4_:* = null as ZPP_Vec2;
         var _loc5_:* = null as Vec2;
         var _loc6_:* = null as ZPP_Vec2;
         var centre:Vec2 = param1;
         var angle:Number = param2;
         var _loc3_:Boolean = centre.zpp_inner.name_5;
         centre.zpp_inner.name_5 = false;
         method_161(function(param1:Body):void
         {
            param1.rotate(centre,angle);
         });
         centre.zpp_inner.name_5 = _loc3_;
         if(centre.zpp_inner.name_5)
         {
            _loc4_ = centre.zpp_inner;
            centre.zpp_inner.outer = null;
            centre.zpp_inner = null;
            _loc5_ = centre;
            _loc5_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc5_;
            _loc6_ = _loc4_;
            if(_loc6_.outer != null)
            {
               _loc6_.outer.zpp_inner = null;
               _loc6_.outer = null;
            }
            _loc6_.var_103 = null;
            _loc6_._validate = null;
            _loc6_._invalidate = null;
            _loc6_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc6_;
         }
         else
         {
            false;
         }
         return this;
      }
      
      public function get space() : class_197
      {
         if(zpp_inner.space == null)
         {
            return null;
         }
         return zpp_inner.space.outer;
      }
      
      public function get name_19() : class_218
      {
         return zpp_inner.var_185;
      }
      
      public function get name_27() : class_235
      {
         return zpp_inner.var_241;
      }
      
      public function get compound() : Compound
      {
         if(zpp_inner.compound == null)
         {
            return null;
         }
         return zpp_inner.compound.outer;
      }
      
      public function get name_30() : class_205
      {
         return zpp_inner.var_269;
      }
      
      public final function copy() : Compound
      {
         return zpp_inner.copy();
      }
      
      public final function method_505() : void
      {
         zpp_inner.method_505();
      }
      
      public final function method_815(param1:Boolean = false) : Vec2
      {
         var _loc2_:* = null as Vec2;
         var _loc3_:Boolean = false;
         var _loc4_:* = null as ZPP_Vec2;
         if(class_219.poolVec2 == null)
         {
            _loc2_ = new Vec2();
         }
         else
         {
            _loc2_ = class_219.poolVec2;
            class_219.poolVec2 = _loc2_.var_72;
            _loc2_.var_72 = null;
         }
         if(_loc2_.zpp_inner == null)
         {
            _loc3_ = false;
            if(ZPP_Vec2.var_72 == null)
            {
               _loc4_ = new ZPP_Vec2();
            }
            else
            {
               _loc4_ = ZPP_Vec2.var_72;
               ZPP_Vec2.var_72 = _loc4_.next;
               _loc4_.next = null;
            }
            _loc4_.name_5 = false;
            _loc4_.var_109 = _loc3_;
            _loc4_.x = 0;
            _loc4_.y = 0;
            _loc2_.zpp_inner = _loc4_;
            _loc2_.zpp_inner.outer = _loc2_;
         }
         else
         {
            _loc4_ = _loc2_.zpp_inner;
            §§push(false);
            if(_loc4_._validate != null)
            {
               _loc4_._validate();
            }
            if(_loc2_.zpp_inner.x == 0)
            {
               §§pop();
               _loc4_ = _loc2_.zpp_inner;
               if(_loc4_._validate != null)
               {
                  _loc4_._validate();
               }
               §§push(_loc2_.zpp_inner.y == 0);
            }
            if(!§§pop())
            {
               _loc2_.zpp_inner.x = 0;
               _loc2_.zpp_inner.y = 0;
               _loc4_ = _loc2_.zpp_inner;
               if(_loc4_._invalidate != null)
               {
                  _loc4_._invalidate(_loc4_);
               }
            }
            _loc2_;
         }
         _loc2_.zpp_inner.name_5 = param1;
         var var_1164:Vec2 = _loc2_;
         var var_1119:Number = 0;
         method_161(function(param1:Body):void
         {
            var _loc3_:Number = NaN;
            var _loc4_:Number = NaN;
            var _loc5_:Boolean = false;
            var _loc6_:* = null as Vec2;
            var _loc7_:Boolean = false;
            var _loc8_:* = null as ZPP_Vec2;
            var _loc2_:class_230 = param1.zpp_inner.var_222;
            if(_loc2_.zpp_inner.name_4.var_73 != null)
            {
               §§push(var_1164);
               if(param1.zpp_inner.var_116 == null)
               {
                  _loc3_ = param1.zpp_inner.var_99;
                  _loc4_ = param1.zpp_inner.var_100;
                  _loc5_ = false;
                  if(class_219.poolVec2 == null)
                  {
                     _loc6_ = new Vec2();
                  }
                  else
                  {
                     _loc6_ = class_219.poolVec2;
                     class_219.poolVec2 = _loc6_.var_72;
                     _loc6_.var_72 = null;
                  }
                  if(_loc6_.zpp_inner == null)
                  {
                     _loc7_ = false;
                     if(ZPP_Vec2.var_72 == null)
                     {
                        _loc8_ = new ZPP_Vec2();
                     }
                     else
                     {
                        _loc8_ = ZPP_Vec2.var_72;
                        ZPP_Vec2.var_72 = _loc8_.next;
                        _loc8_.next = null;
                     }
                     _loc8_.name_5 = false;
                     _loc8_.var_109 = _loc7_;
                     _loc8_.x = _loc3_;
                     _loc8_.y = _loc4_;
                     _loc6_.zpp_inner = _loc8_;
                     _loc6_.zpp_inner.outer = _loc6_;
                  }
                  else
                  {
                     _loc8_ = _loc6_.zpp_inner;
                     §§push(false);
                     if(_loc8_._validate != null)
                     {
                        _loc8_._validate();
                     }
                     if(_loc6_.zpp_inner.x == _loc3_)
                     {
                        §§pop();
                        _loc8_ = _loc6_.zpp_inner;
                        if(_loc8_._validate != null)
                        {
                           _loc8_._validate();
                        }
                        §§push(_loc6_.zpp_inner.y == _loc4_);
                     }
                     if(!§§pop())
                     {
                        _loc6_.zpp_inner.x = _loc3_;
                        _loc6_.zpp_inner.y = _loc4_;
                        _loc8_ = _loc6_.zpp_inner;
                        if(_loc8_._invalidate != null)
                        {
                           _loc8_._invalidate(_loc8_);
                        }
                     }
                     _loc6_;
                  }
                  _loc6_.zpp_inner.name_5 = _loc5_;
                  param1.zpp_inner.var_116 = _loc6_;
                  param1.zpp_inner.var_116.zpp_inner.var_120 = true;
                  param1.zpp_inner.var_116.zpp_inner.var_109 = true;
                  param1.zpp_inner.var_116.zpp_inner._validate = param1.zpp_inner.method_122;
               }
               param1.zpp_inner.method_136();
               §§pop().method_282(param1.zpp_inner.var_116.method_392(param1.zpp_inner.var_263,true));
               param1.zpp_inner.method_136();
               var_1119 = Number(var_1119 + param1.zpp_inner.var_263);
            }
         });
         var_1164.method_360(1 / var_1119);
         return var_1164;
      }
   }
}
