package nape.constraint
{
   import nape.geom.Vec3;
   import nape.geom.class_217;
   import package_29.Body;
   import package_29.Compound;
   import package_31.class_197;
   import package_34.class_216;
   import zpp_nape.callbacks.ZPP_CbType;
   import zpp_nape.constraint.ZPP_Constraint;
   import zpp_nape.phys.ZPP_Compound;
   import zpp_nape.space.ZPP_Component;
   import zpp_nape.space.ZPP_Space;
   
   public class Constraint
   {
       
      
      public var zpp_inner:ZPP_Constraint;
      
      public var var_323:Boolean;
      
      public function Constraint()
      {
         var_323 = true;
         zpp_inner.method_175(ZPP_CbType.ANY_CONSTRAINT.zpp_inner);
      }
      
      public static function toString() : String
      {
         return class_2.method_14(-1820302632);
      }
      
      public function method_161(param1:Function) : void
      {
      }
      
      public function set name_45(param1:Boolean) : Boolean
      {
         if(zpp_inner.name_45 != param1)
         {
            zpp_inner.name_45 = param1;
            zpp_inner.method_106();
         }
         return zpp_inner.name_45;
      }
      
      public function set space(param1:class_197) : class_197
      {
         var _loc2_:* = null as class_218;
         if((zpp_inner.space == null?null:zpp_inner.space.outer) != param1)
         {
            if(zpp_inner.var_112 != null)
            {
               zpp_inner.var_112.var_443 = false;
            }
            zpp_inner.method_239();
            if(zpp_inner.space != null)
            {
               zpp_inner.space.outer.zpp_inner.var_185.remove(this);
            }
            if(param1 != null)
            {
               _loc2_ = param1.zpp_inner.var_185;
               if(_loc2_.zpp_inner.var_111)
               {
                  _loc2_.push(this);
               }
               else
               {
                  _loc2_.unshift(this);
               }
            }
            else
            {
               zpp_inner.space = null;
            }
         }
         if(zpp_inner.space == null)
         {
            return null;
         }
         return zpp_inner.space.outer;
      }
      
      public function set name_65(param1:Boolean) : Boolean
      {
         zpp_inner.name_65 = param1;
         return zpp_inner.name_65;
      }
      
      public function set name_61(param1:Number) : Number
      {
         if(zpp_inner.name_61 != param1)
         {
            zpp_inner.name_61 = param1;
            zpp_inner.method_106();
         }
         return zpp_inner.name_61;
      }
      
      public function set name_50(param1:Number) : Number
      {
         if(zpp_inner.name_50 != param1)
         {
            zpp_inner.name_50 = param1;
            zpp_inner.method_106();
         }
         return zpp_inner.name_50;
      }
      
      public function set name_36(param1:Boolean) : Boolean
      {
         if(zpp_inner.name_36 != param1)
         {
            zpp_inner.name_36 = param1;
            zpp_inner.method_106();
         }
         return zpp_inner.name_36;
      }
      
      public function set name_56(param1:Number) : Number
      {
         if(zpp_inner.name_56 != param1)
         {
            zpp_inner.name_56 = param1;
            if(!zpp_inner.name_45)
            {
               zpp_inner.method_106();
            }
         }
         return zpp_inner.name_56;
      }
      
      public function set name_57(param1:Number) : Number
      {
         if(zpp_inner.name_57 != param1)
         {
            zpp_inner.name_57 = param1;
            if(!zpp_inner.name_45)
            {
               zpp_inner.method_106();
            }
         }
         return zpp_inner.name_57;
      }
      
      public function set compound(param1:Compound) : Compound
      {
         var _loc2_:* = null as class_218;
         if((zpp_inner.compound == null?null:zpp_inner.compound.outer) != param1)
         {
            if(param1 != null)
            {
               _loc2_ = param1.zpp_inner.var_185;
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
      
      public function set name_62(param1:Boolean) : Boolean
      {
         if(zpp_inner.name_62 != param1)
         {
            zpp_inner.name_62 = param1;
            zpp_inner.method_106();
         }
         return zpp_inner.name_62;
      }
      
      public function set name_60(param1:Boolean) : Boolean
      {
         if(zpp_inner.name_60 != param1)
         {
            zpp_inner.name_60 = param1;
            zpp_inner.method_106();
         }
         return zpp_inner.name_60;
      }
      
      public function set active(param1:Boolean) : Boolean
      {
         if(zpp_inner.active != param1)
         {
            if(zpp_inner.var_112 != null)
            {
               zpp_inner.var_112.var_443 = false;
            }
            zpp_inner.method_239();
            if(param1)
            {
               zpp_inner.active = param1;
               zpp_inner.activate();
               if(zpp_inner.space != null)
               {
                  if(zpp_inner.var_112 != null)
                  {
                     zpp_inner.var_112.var_129 = true;
                  }
                  zpp_inner.space.method_165(zpp_inner,true);
               }
            }
            else
            {
               if(zpp_inner.space != null)
               {
                  zpp_inner.method_106();
                  zpp_inner.space.var_221.remove(zpp_inner);
               }
               zpp_inner.active = param1;
               zpp_inner.deactivate();
            }
         }
         return zpp_inner.active;
      }
      
      public function method_659() : class_217
      {
         return null;
      }
      
      public function get name_21() : *
      {
         if(zpp_inner.name_21 == null)
         {
            zpp_inner.name_21 = {};
         }
         return zpp_inner.name_21;
      }
      
      public function get name_45() : Boolean
      {
         return zpp_inner.name_45;
      }
      
      public function get space() : class_197
      {
         if(zpp_inner.space == null)
         {
            return null;
         }
         return zpp_inner.space.outer;
      }
      
      public function get name_65() : Boolean
      {
         return zpp_inner.name_65;
      }
      
      public function get name_61() : Number
      {
         return zpp_inner.name_61;
      }
      
      public function get name_50() : Number
      {
         return zpp_inner.name_50;
      }
      
      public function get method_510() : Boolean
      {
         return zpp_inner.var_112.var_129;
      }
      
      public function get name_36() : Boolean
      {
         return zpp_inner.name_36;
      }
      
      public function get name_56() : Number
      {
         return zpp_inner.name_56;
      }
      
      public function get name_57() : Number
      {
         return zpp_inner.name_57;
      }
      
      public function get compound() : Compound
      {
         if(zpp_inner.compound == null)
         {
            return null;
         }
         return zpp_inner.compound.outer;
      }
      
      public function get name_10() : class_216
      {
         if(zpp_inner.var_251 == null)
         {
            zpp_inner.method_236();
         }
         return zpp_inner.var_251;
      }
      
      public function get name_62() : Boolean
      {
         return zpp_inner.name_62;
      }
      
      public function get name_60() : Boolean
      {
         return zpp_inner.name_60;
      }
      
      public function get active() : Boolean
      {
         return zpp_inner.active;
      }
      
      public final function copy() : Constraint
      {
         return zpp_inner.copy();
      }
      
      public function method_262(param1:Body) : Vec3
      {
         return null;
      }
   }
}
