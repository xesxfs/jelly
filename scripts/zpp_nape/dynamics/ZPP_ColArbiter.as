package zpp_nape.dynamics
{
   import flash.class_189;
   import nape.geom.Vec2;
   import package_26.CollisionArbiter;
   import package_26.class_328;
   import package_26.class_329;
   import zpp_nape.geom.ZPP_Vec2;
   import zpp_nape.shape.ZPP_Edge;
   import zpp_nape.shape.ZPP_Shape;
   import zpp_nape.util.ZPP_ContactList;
   import zpp_nape.util.class_219;
   
   public final class ZPP_ColArbiter extends ZPP_Arbiter
   {
      
      public static var FACE1:int = 0;
      
      public static var FACE2:int = 1;
      
      public static var CIRCLE:int = 2;
      
      public static var var_72:ZPP_ColArbiter = null;
       
      
      public var var_231:Vec2;
      
      public var var_226:class_328;
      
      public var var_382:Boolean;
      
      public var var_381:Boolean;
      
      public var var_379:Boolean;
      
      public var var_376:Boolean;
      
      public var var_311:Number;
      
      public var var_369:Number;
      
      public var stat_fric:Number;
      
      public var var_622:Boolean;
      
      public var s2:ZPP_Shape;
      
      public var s1:ZPP_Shape;
      
      public var rt2b:Number;
      
      public var rt2a:Number;
      
      public var rt1b:Number;
      
      public var rt1a:Number;
      
      public var rn2b:Number;
      
      public var rn2a:Number;
      
      public var rn1b:Number;
      
      public var rn1a:Number;
      
      public var rfric:Number;
      
      public var var_642:Boolean;
      
      public var var_159:Number;
      
      public var radius:Number;
      
      public var var_527:Number;
      
      public var var_605:int;
      
      public var var_197:Number;
      
      public var outer_zn:CollisionArbiter;
      
      public var oc2:ZPP_Contact;
      
      public var oc1:ZPP_Contact;
      
      public var ny:Number;
      
      public var nx:Number;
      
      public var next:ZPP_ColArbiter;
      
      public var var_600:Boolean;
      
      public var var_786:Number;
      
      public var var_121:Number;
      
      public var var_122:Number;
      
      public var var_173:Number;
      
      public var var_171:Number;
      
      public var var_172:Number;
      
      public var k2y:Number;
      
      public var k2x:Number;
      
      public var k1y:Number;
      
      public var k1x:Number;
      
      public var var_170:Number;
      
      public var var_268:ZPP_IContact;
      
      public var var_481:Boolean;
      
      public var var_270:Boolean;
      
      public var dyn_fric:Number;
      
      public var name_24:ZPP_Contact;
      
      public var c2:ZPP_IContact;
      
      public var c1:ZPP_IContact;
      
      public var var_681:Number;
      
      public var var_746:int;
      
      public var __ref_edge2:ZPP_Edge;
      
      public var __ref_edge1:ZPP_Edge;
      
      public var var_648:Number;
      
      public var var_309:Number;
      
      public var var_640:Number;
      
      public function ZPP_ColArbiter()
      {
         var_197 = 0;
         var_600 = false;
         var_622 = false;
         next = null;
         var_481 = false;
         var_270 = false;
         oc2 = null;
         c2 = null;
         oc1 = null;
         c1 = null;
         var_746 = 0;
         __ref_edge2 = null;
         __ref_edge1 = null;
         var_681 = 0;
         var_642 = false;
         radius = 0;
         var_786 = 0;
         var_121 = 0;
         var_122 = 0;
         var_311 = 0;
         var_369 = 0;
         k2y = 0;
         k2x = 0;
         k1y = 0;
         k1x = 0;
         rt2b = 0;
         rn2b = 0;
         rt2a = 0;
         rn2a = 0;
         rt1b = 0;
         rn1b = 0;
         rt1a = 0;
         rn1a = 0;
         var_170 = 0;
         var_527 = 0;
         var_648 = 0;
         var_309 = 0;
         var_640 = 0;
         var_173 = 0;
         var_171 = 0;
         var_172 = 0;
         var_231 = null;
         ny = 0;
         nx = 0;
         var_268 = null;
         var_226 = null;
         name_24 = null;
         s2 = null;
         s1 = null;
         var_381 = false;
         var_379 = false;
         var_382 = false;
         var_376 = false;
         rfric = 0;
         var_159 = 0;
         stat_fric = 0;
         dyn_fric = 0;
         outer_zn = null;
         super();
         var_197 = -1;
         name_24 = new ZPP_Contact();
         var_268 = new ZPP_IContact();
         type = ZPP_Arbiter.var_292;
         var_128 = this;
      }
      
      public static function contacts_adder(param1:class_329) : Boolean
      {
         return false;
      }
      
      public final function method_152() : void
      {
         var_226 = ZPP_ContactList.method_65(name_24,true);
         var_226.zpp_inner.var_164 = !var_600;
         ;
         var_226.zpp_inner.var_130 = ZPP_ColArbiter.contacts_adder;
         var_226.zpp_inner.var_126 = true;
         var_226.zpp_inner.var_110 = contacts_subber;
      }
      
      public final function normal_validate() : void
      {
         if(var_265)
         {
            class_189.var_771 = new Error();
            throw class_2.method_14(-1820302444);
         }
         var_231.zpp_inner.x = nx;
         var_231.zpp_inner.y = ny;
         if(ws1.id > ws2.id)
         {
            var_231.zpp_inner.x = -var_231.zpp_inner.x;
            var_231.zpp_inner.y = -var_231.zpp_inner.y;
         }
      }
      
      public final function method_221() : void
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
         _loc2_.zpp_inner.name_5 = false;
         var_231 = _loc2_;
         var_231.zpp_inner.var_109 = true;
         var_231.zpp_inner.var_120 = true;
         var_231.zpp_inner._validate = normal_validate;
      }
      
      public final function contacts_subber(param1:class_329) : void
      {
         var _loc6_:* = null as ZPP_Contact;
         var _loc7_:* = null as ZPP_Contact;
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:ZPP_IContact = var_268.next;
         var _loc5_:ZPP_Contact = name_24.next;
         while(_loc5_ != null)
         {
            _loc6_ = _loc5_;
            if(_loc6_ == param1.zpp_inner)
            {
               name_24.erase(_loc2_);
               var_268.erase(_loc3_);
               _loc7_ = _loc6_;
               _loc7_.name_20 = null;
               _loc7_.next = ZPP_Contact.var_72;
               ZPP_Contact.var_72 = _loc7_;
               break;
            }
            _loc2_ = _loc5_;
            _loc3_ = _loc4_;
            _loc4_ = _loc4_.next;
            _loc5_ = _loc5_.next;
         }
      }
   }
}
