package package_26
{
   import nape.geom.Vec2;
   import nape.geom.Vec3;
   import package_29.Body;
   import zpp_nape.dynamics.ZPP_Arbiter;
   import zpp_nape.dynamics.ZPP_ColArbiter;
   import zpp_nape.dynamics.ZPP_Contact;
   import zpp_nape.dynamics.ZPP_IContact;
   
   public final class class_329
   {
       
      
      public var zpp_inner:ZPP_Contact;
      
      public function class_329()
      {
         zpp_inner = null;
      }
      
      public final function method_172(param1:Body = undefined) : Vec3
      {
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc2_:ZPP_ColArbiter = zpp_inner.name_20.var_128;
         var _loc3_:ZPP_IContact = zpp_inner.name_4;
         var _loc4_:Number = _loc3_.var_142;
         var _loc5_:Number = _loc3_.var_208;
         var _loc6_:Number = _loc2_.var_170;
         if(param1 == null)
         {
            return Vec3.method_65(_loc2_.nx * _loc4_ - _loc2_.ny * _loc5_,Number(_loc2_.ny * _loc4_ + _loc2_.nx * _loc5_),_loc6_);
         }
         _loc7_ = _loc2_.nx * _loc4_ - _loc2_.ny * _loc5_;
         _loc8_ = Number(_loc2_.ny * _loc4_ + _loc2_.nx * _loc5_);
         if(param1 == _loc2_.b1.outer)
         {
            return Vec3.method_65(-_loc7_,-_loc8_,-(_loc8_ * _loc3_.r1x - _loc7_ * _loc3_.r1y) - _loc6_);
         }
         return Vec3.method_65(_loc7_,_loc8_,Number(_loc8_ * _loc3_.r2x - _loc7_ * _loc3_.r2y + _loc6_));
      }
      
      public final function toString() : String
      {
         if(zpp_inner.name_20 == null || zpp_inner.name_20.var_265)
         {
            return class_2.method_14(-1820302561);
         }
         return class_2.method_14(-1820302795);
      }
      
      public final function method_290(param1:Body = undefined) : Vec3
      {
         var _loc2_:ZPP_ColArbiter = zpp_inner.name_20.var_128;
         var _loc3_:ZPP_IContact = zpp_inner.name_4;
         var _loc4_:Number = _loc3_.var_208;
         if(param1 == null)
         {
            return Vec3.method_65(-_loc2_.ny * _loc4_,_loc2_.nx * _loc4_);
         }
         if(param1 == _loc2_.b1.outer)
         {
            return Vec3.method_65(_loc2_.ny * _loc4_,-_loc2_.nx * _loc4_,-(_loc3_.r1x * _loc2_.nx + _loc3_.r1y * _loc2_.ny) * _loc4_);
         }
         return Vec3.method_65(-_loc2_.ny * _loc4_,_loc2_.nx * _loc4_,(_loc3_.r2x * _loc2_.nx + _loc3_.r2y * _loc2_.ny) * _loc4_);
      }
      
      public final function method_340(param1:Body = undefined) : Number
      {
         var _loc2_:ZPP_ColArbiter = zpp_inner.name_20.var_128;
         var _loc3_:Number = zpp_inner.name_20.var_128.var_170;
         if(param1 == null)
         {
            return _loc3_;
         }
         if(param1 == _loc2_.b1.outer)
         {
            return -_loc3_;
         }
         return _loc3_;
      }
      
      public final function method_271(param1:Body = undefined) : Vec3
      {
         var _loc2_:ZPP_ColArbiter = zpp_inner.name_20.var_128;
         var _loc3_:ZPP_IContact = zpp_inner.name_4;
         var _loc4_:Number = _loc3_.var_142;
         if(param1 == null)
         {
            return Vec3.method_65(_loc2_.nx * _loc4_,_loc2_.ny * _loc4_);
         }
         if(param1 == _loc2_.b1.outer)
         {
            return Vec3.method_65(_loc2_.nx * -_loc4_,_loc2_.ny * -_loc4_,-(_loc2_.ny * _loc3_.r1x - _loc2_.nx * _loc3_.r1y) * _loc4_);
         }
         return Vec3.method_65(_loc2_.nx * _loc4_,_loc2_.ny * _loc4_,(_loc2_.ny * _loc3_.r2x - _loc2_.nx * _loc3_.r2y) * _loc4_);
      }
      
      public function get position() : Vec2
      {
         if(zpp_inner.var_157 == null)
         {
            zpp_inner.method_123();
         }
         return zpp_inner.var_157;
      }
      
      public function get method_881() : Number
      {
         return -zpp_inner.var_334;
      }
      
      public function get name_52() : Number
      {
         return zpp_inner.name_4.name_52;
      }
      
      public function get name_23() : Boolean
      {
         return zpp_inner.name_23;
      }
      
      public function get name_20() : CollisionArbiter
      {
         var _loc1_:* = null as class_252;
         if(zpp_inner.name_20 == null)
         {
            return null;
         }
         _loc1_ = zpp_inner.name_20.outer;
         if(_loc1_.zpp_inner.type == ZPP_Arbiter.var_292)
         {
            return _loc1_.zpp_inner.var_128.outer_zn;
         }
         return null;
      }
   }
}
