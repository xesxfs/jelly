package package_32
{
   import nape.geom.Vec2;
   import nape.geom.class_237;
   import nape.geom.class_242;
   import package_26.class_222;
   import package_29.Body;
   import package_29.Interactor;
   import package_29.class_199;
   import package_29.class_240;
   import package_35.class_238;
   import zpp_nape.geom.ZPP_Vec2;
   import zpp_nape.geom.class_239;
   import zpp_nape.geom.class_241;
   import zpp_nape.phys.ZPP_Body;
   import zpp_nape.phys.class_265;
   import zpp_nape.shape.ZPP_Shape;
   import zpp_nape.util.class_219;
   import zpp_nape.util.class_223;
   
   public class Shape extends Interactor
   {
       
      
      public var zpp_inner:ZPP_Shape;
      
      public function Shape()
      {
         zpp_inner = null;
         super();
      }
      
      public final function translate(param1:Vec2) : Shape
      {
         var _loc2_:* = null as ZPP_Vec2;
         var _loc3_:* = null as Vec2;
         var _loc4_:* = null as ZPP_Vec2;
         zpp_inner.method_112(class_2.method_14(-1820302533));
         if(Number(param1.method_437()) > 0)
         {
            if(zpp_inner.type == class_223.var_131)
            {
               _loc2_ = param1.zpp_inner;
               §§push(zpp_inner.var_102);
               if(_loc2_._validate != null)
               {
                  _loc2_._validate();
               }
               _loc2_ = param1.zpp_inner;
               §§push(param1.zpp_inner.x);
               if(_loc2_._validate != null)
               {
                  _loc2_._validate();
               }
               §§pop().method_429(§§pop(),param1.zpp_inner.y);
            }
            else
            {
               _loc2_ = param1.zpp_inner;
               §§push(zpp_inner.name_6);
               if(_loc2_._validate != null)
               {
                  _loc2_._validate();
               }
               _loc2_ = param1.zpp_inner;
               §§push(param1.zpp_inner.x);
               if(_loc2_._validate != null)
               {
                  _loc2_._validate();
               }
               §§pop().method_429(§§pop(),param1.zpp_inner.y);
            }
         }
         if(param1.zpp_inner.name_5)
         {
            _loc2_ = param1.zpp_inner;
            param1.zpp_inner.outer = null;
            param1.zpp_inner = null;
            _loc3_ = param1;
            _loc3_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc3_;
            _loc4_ = _loc2_;
            if(_loc4_.outer != null)
            {
               _loc4_.outer.zpp_inner = null;
               _loc4_.outer = null;
            }
            _loc4_.var_103 = null;
            _loc4_._validate = null;
            _loc4_._invalidate = null;
            _loc4_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc4_;
         }
         else
         {
            false;
         }
         return this;
      }
      
      public final function transform(param1:class_242) : Shape
      {
         zpp_inner.method_112(class_2.method_14(-1820302675));
         if(zpp_inner.type == class_223.var_131)
         {
            if(param1.method_395())
            {
               zpp_inner.var_102.method_388(param1);
            }
         }
         else
         {
            zpp_inner.name_6.method_388(param1);
         }
         return this;
      }
      
      override public function toString() : String
      {
         var _loc1_:* = null as String;
         if(zpp_inner.type == class_223.var_131)
         {
            _loc1_ = "Circle";
         }
         else
         {
            _loc1_ = "Polygon";
         }
         return _loc1_ + "#" + var_150.id;
      }
      
      public function set sensorEnabled(param1:Boolean) : Boolean
      {
         zpp_inner.method_112("Shape::sensorEnabled");
         zpp_inner.sensorEnabled = param1;
         zpp_inner.method_106();
         return zpp_inner.sensorEnabled;
      }
      
      public function set material(param1:class_199) : class_199
      {
         zpp_inner.method_112("Shape::material");
         zpp_inner.method_323(param1.zpp_inner);
         return zpp_inner.material.method_109();
      }
      
      public function set localCOM(param1:Vec2) : Vec2
      {
         var _loc5_:* = null as ZPP_Vec2;
         var _loc7_:* = null as Vec2;
         var _loc8_:* = null as ZPP_Vec2;
         zpp_inner.method_112("Body::localCOM");
         if(zpp_inner.var_115 == null)
         {
            if(zpp_inner.type == class_223.var_131)
            {
               zpp_inner.var_102.method_128();
            }
            else
            {
               zpp_inner.name_6.method_128();
            }
         }
         var _loc2_:Vec2 = zpp_inner.var_115;
         _loc5_ = param1.zpp_inner;
         if(_loc5_._validate != null)
         {
            _loc5_._validate();
         }
         var _loc4_:Number = param1.zpp_inner.x;
         _loc5_ = param1.zpp_inner;
         if(_loc5_._validate != null)
         {
            _loc5_._validate();
         }
         var _loc6_:Number = param1.zpp_inner.y;
         _loc5_ = _loc2_.zpp_inner;
         §§push(false);
         if(_loc5_._validate != null)
         {
            _loc5_._validate();
         }
         if(_loc2_.zpp_inner.x == _loc4_)
         {
            §§pop();
            _loc5_ = _loc2_.zpp_inner;
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            §§push(_loc2_.zpp_inner.y == _loc6_);
         }
         if(!§§pop())
         {
            _loc2_.zpp_inner.x = _loc4_;
            _loc2_.zpp_inner.y = _loc6_;
            _loc5_ = _loc2_.zpp_inner;
            if(_loc5_._invalidate != null)
            {
               _loc5_._invalidate(_loc5_);
            }
         }
         var _loc3_:Vec2 = _loc2_;
         if(param1.zpp_inner.name_5)
         {
            _loc5_ = param1.zpp_inner;
            param1.zpp_inner.outer = null;
            param1.zpp_inner = null;
            _loc7_ = param1;
            _loc7_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc7_;
            _loc8_ = _loc5_;
            if(_loc8_.outer != null)
            {
               _loc8_.outer.zpp_inner = null;
               _loc8_.outer = null;
            }
            _loc8_.var_103 = null;
            _loc8_._validate = null;
            _loc8_._invalidate = null;
            _loc8_.next = ZPP_Vec2.var_72;
            ZPP_Vec2.var_72 = _loc8_;
         }
         _loc3_;
         if(zpp_inner.var_115 == null)
         {
            if(zpp_inner.type == class_223.var_131)
            {
               zpp_inner.var_102.method_128();
            }
            else
            {
               zpp_inner.name_6.method_128();
            }
         }
         return zpp_inner.var_115;
      }
      
      public function set fluidProperties(param1:class_240) : class_240
      {
         zpp_inner.method_219(param1.zpp_inner);
         zpp_inner.method_112("Shape::fluidProperties");
         if(zpp_inner.fluidProperties == null)
         {
            zpp_inner.method_219(new class_240().zpp_inner);
         }
         return zpp_inner.fluidProperties.method_109();
      }
      
      public function set fluidEnabled(param1:Boolean) : Boolean
      {
         var _loc2_:* = null as class_240;
         zpp_inner.method_112("Shape::fluidEnabled");
         zpp_inner.fluidEnabled = param1;
         if(!!param1 && zpp_inner.fluidProperties == null)
         {
            _loc2_ = new class_240();
            zpp_inner.method_219(_loc2_.zpp_inner);
            zpp_inner.method_112("Shape::fluidProperties");
            if(zpp_inner.fluidProperties == null)
            {
               zpp_inner.method_219(new class_240().zpp_inner);
            }
            zpp_inner.fluidProperties.method_109();
         }
         zpp_inner.method_106();
         return zpp_inner.fluidEnabled;
      }
      
      public function set filter(param1:class_222) : class_222
      {
         zpp_inner.method_112("Shape::filter");
         zpp_inner.method_330(param1.zpp_inner);
         return zpp_inner.filter.method_109();
      }
      
      public function set body(param1:Body) : Body
      {
         var _loc2_:* = null as class_230;
         zpp_inner.method_112("Shape::body");
         if((zpp_inner.body != null?zpp_inner.body.outer:null) != param1)
         {
            if(zpp_inner.body != null)
            {
               (zpp_inner.body != null?zpp_inner.body.outer:null).zpp_inner.var_222.remove(this);
            }
            if(param1 != null)
            {
               _loc2_ = param1.zpp_inner.var_222;
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
         if(zpp_inner.body != null)
         {
            return zpp_inner.body.outer;
         }
         return null;
      }
      
      public final function scale(param1:Number, param2:Number) : Shape
      {
         var _loc3_:Number = NaN;
         zpp_inner.method_112(class_2.method_14(-1820302413));
         if(zpp_inner.type == class_223.var_131)
         {
            _loc3_ = param1 * param1 - param2 * param2;
            if(_loc3_ * _loc3_ < class_238.name_8 * class_238.name_8)
            {
               zpp_inner.var_102.method_421(param1,param2);
            }
         }
         else
         {
            zpp_inner.name_6.method_421(param1,param2);
         }
         return this;
      }
      
      public final function rotate(param1:Number) : Shape
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         zpp_inner.method_112(class_2.method_14(-1820302700));
         var _loc2_:Number = param1 % (2 * Math.PI);
         if(_loc2_ != 0)
         {
            _loc3_ = Number(Math.cos(param1));
            _loc4_ = Number(Math.sin(param1));
            if(zpp_inner.type == class_223.var_131)
            {
               zpp_inner.var_102.method_410(_loc4_,_loc3_);
            }
            else
            {
               zpp_inner.name_6.method_410(_loc4_,_loc3_);
            }
         }
         return this;
      }
      
      public final function method_695() : Boolean
      {
         return zpp_inner.type == class_223.var_155;
      }
      
      public final function method_590() : Boolean
      {
         return zpp_inner.type == class_223.var_131;
      }
      
      public function get method_718() : Vec2
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Boolean = false;
         var _loc4_:* = null as Vec2;
         var _loc5_:Boolean = false;
         var _loc6_:* = null as ZPP_Vec2;
         if(zpp_inner.var_116 == null)
         {
            _loc1_ = zpp_inner.var_99;
            _loc2_ = zpp_inner.var_100;
            _loc3_ = false;
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
            _loc4_.zpp_inner.name_5 = _loc3_;
            zpp_inner.var_116 = _loc4_;
            zpp_inner.var_116.zpp_inner.var_120 = true;
            zpp_inner.var_116.zpp_inner.var_109 = true;
            zpp_inner.var_116.zpp_inner._validate = zpp_inner.method_122;
         }
         return zpp_inner.var_116;
      }
      
      public function get type() : class_243
      {
         return ZPP_Shape.var_406[zpp_inner.type];
      }
      
      public function get sensorEnabled() : Boolean
      {
         return zpp_inner.sensorEnabled;
      }
      
      public function get material() : class_199
      {
         return zpp_inner.material.method_109();
      }
      
      public function get localCOM() : Vec2
      {
         if(zpp_inner.var_115 == null)
         {
            if(zpp_inner.type == class_223.var_131)
            {
               zpp_inner.var_102.method_128();
            }
            else
            {
               zpp_inner.name_6.method_128();
            }
         }
         return zpp_inner.var_115;
      }
      
      public function get inertia() : Number
      {
         zpp_inner.method_164();
         return zpp_inner.inertia;
      }
      
      public function get fluidProperties() : class_240
      {
         zpp_inner.method_112(class_2.method_14(-1820302816));
         if(zpp_inner.fluidProperties == null)
         {
            zpp_inner.method_219(new class_240().zpp_inner);
         }
         return zpp_inner.fluidProperties.method_109();
      }
      
      public function get fluidEnabled() : Boolean
      {
         return zpp_inner.fluidEnabled;
      }
      
      public function get filter() : class_222
      {
         return zpp_inner.filter.method_109();
      }
      
      public function get method_650() : Polygon
      {
         if(zpp_inner.type == class_223.var_155)
         {
            return zpp_inner.name_6.outer_zn;
         }
         return null;
      }
      
      public function get method_834() : Circle
      {
         if(zpp_inner.type == class_223.var_131)
         {
            return zpp_inner.var_102.outer_zn;
         }
         return null;
      }
      
      public function get bounds() : class_237
      {
         return zpp_inner.name_3.method_109();
      }
      
      public function get body() : Body
      {
         if(zpp_inner.body != null)
         {
            return zpp_inner.body.outer;
         }
         return null;
      }
      
      public function get area() : Number
      {
         zpp_inner.method_164();
         return zpp_inner.area;
      }
      
      public function get name_59() : Number
      {
         zpp_inner.method_400();
         return zpp_inner.name_59;
      }
      
      public final function copy() : Shape
      {
         return zpp_inner.copy();
      }
      
      public final function contains(param1:Vec2) : Boolean
      {
         var _loc2_:* = null as ZPP_Vec2;
         var _loc4_:* = null as Vec2;
         var _loc5_:* = null as ZPP_Vec2;
         class_241.method_180(zpp_inner);
         _loc2_ = param1.zpp_inner;
         if(_loc2_._validate != null)
         {
            _loc2_._validate();
         }
         var _loc3_:Boolean = class_239.method_440(zpp_inner,param1.zpp_inner);
         if(param1.zpp_inner.name_5)
         {
            _loc2_ = param1.zpp_inner;
            param1.zpp_inner.outer = null;
            param1.zpp_inner = null;
            _loc4_ = param1;
            _loc4_.var_72 = class_219.poolVec2;
            class_219.poolVec2 = _loc4_;
            _loc5_ = _loc2_;
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
            true;
         }
         else
         {
            false;
         }
         return _loc3_;
      }
   }
}
