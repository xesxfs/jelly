package package_33
{
   import flash.display.DisplayObject;
   import flash.display.Graphics;
   import flash.display.Shape;
   import nape.constraint.class_234;
   import nape.geom.Vec2;
   import nape.geom.Vec2Iterator;
   import nape.geom.Vec2List;
   import nape.geom.Vec3;
   import nape.geom.class_237;
   import nape.geom.class_242;
   import nape.geom.class_260;
   import nape.geom.class_268;
   import nape.geom.class_269;
   import nape.geom.class_271;
   import package_26.class_214;
   import package_26.class_251;
   import package_26.class_266;
   import package_29.Body;
   import package_29.class_210;
   import package_29.class_229;
   import package_29.class_231;
   import package_32.Circle;
   import package_32.Polygon;
   import package_32.class_226;
   import package_32.class_230;
   import package_32.class_270;
   import package_34.class_261;
   import package_34.class_264;
   import zpp_nape.callbacks.ZPP_CbSet;
   import zpp_nape.callbacks.ZPP_CbSetPair;
   import zpp_nape.callbacks.class_273;
   import zpp_nape.dynamics.ZPP_ColArbiter;
   import zpp_nape.dynamics.ZPP_Contact;
   import zpp_nape.dynamics.ZPP_FluidArbiter;
   import zpp_nape.dynamics.ZPP_InteractionFilter;
   import zpp_nape.dynamics.ZPP_SensorArbiter;
   import zpp_nape.geom.ZPP_AABB;
   import zpp_nape.geom.ZPP_CutInt;
   import zpp_nape.geom.ZPP_CutVert;
   import zpp_nape.geom.ZPP_GeomVert;
   import zpp_nape.geom.ZPP_Mat23;
   import zpp_nape.geom.ZPP_PartitionPair;
   import zpp_nape.geom.ZPP_PartitionVertex;
   import zpp_nape.geom.ZPP_PartitionedPoly;
   import zpp_nape.geom.ZPP_SimpleEvent;
   import zpp_nape.geom.ZPP_SimpleSeg;
   import zpp_nape.geom.ZPP_SimpleVert;
   import zpp_nape.geom.ZPP_SimplifyP;
   import zpp_nape.geom.ZPP_ToiEvent;
   import zpp_nape.geom.ZPP_Vec2;
   import zpp_nape.geom.class_262;
   import zpp_nape.geom.class_267;
   import zpp_nape.geom.class_274;
   import zpp_nape.geom.class_275;
   import zpp_nape.phys.class_244;
   import zpp_nape.phys.class_265;
   import zpp_nape.shape.ZPP_Edge;
   import zpp_nape.space.ZPP_AABBNode;
   import zpp_nape.space.ZPP_AABBPair;
   import zpp_nape.space.ZPP_CallbackSet;
   import zpp_nape.space.ZPP_Component;
   import zpp_nape.space.ZPP_Island;
   import zpp_nape.space.ZPP_SweepData;
   import zpp_nape.util.Hashable2_Boolfalse;
   import zpp_nape.util.ZNPNode_ConvexResult;
   import zpp_nape.util.ZNPNode_RayResult;
   import zpp_nape.util.ZNPNode_ZPP_AABBNode;
   import zpp_nape.util.ZNPNode_ZPP_AABBPair;
   import zpp_nape.util.ZNPNode_ZPP_Arbiter;
   import zpp_nape.util.ZNPNode_ZPP_Body;
   import zpp_nape.util.ZNPNode_ZPP_BodyListener;
   import zpp_nape.util.ZNPNode_ZPP_CallbackSet;
   import zpp_nape.util.ZNPNode_ZPP_CbSet;
   import zpp_nape.util.ZNPNode_ZPP_CbSetPair;
   import zpp_nape.util.ZNPNode_ZPP_CbType;
   import zpp_nape.util.ZNPNode_ZPP_ColArbiter;
   import zpp_nape.util.ZNPNode_ZPP_Component;
   import zpp_nape.util.ZNPNode_ZPP_Compound;
   import zpp_nape.util.ZNPNode_ZPP_Constraint;
   import zpp_nape.util.ZNPNode_ZPP_ConstraintListener;
   import zpp_nape.util.ZNPNode_ZPP_CutInt;
   import zpp_nape.util.ZNPNode_ZPP_CutVert;
   import zpp_nape.util.ZNPNode_ZPP_Edge;
   import zpp_nape.util.ZNPNode_ZPP_FluidArbiter;
   import zpp_nape.util.ZNPNode_ZPP_GeomPoly;
   import zpp_nape.util.ZNPNode_ZPP_GeomVert;
   import zpp_nape.util.ZNPNode_ZPP_InteractionGroup;
   import zpp_nape.util.ZNPNode_ZPP_InteractionListener;
   import zpp_nape.util.ZNPNode_ZPP_Interactor;
   import zpp_nape.util.ZNPNode_ZPP_Listener;
   import zpp_nape.util.ZNPNode_ZPP_PartitionVertex;
   import zpp_nape.util.ZNPNode_ZPP_PartitionedPoly;
   import zpp_nape.util.ZNPNode_ZPP_SensorArbiter;
   import zpp_nape.util.ZNPNode_ZPP_Shape;
   import zpp_nape.util.ZNPNode_ZPP_SimpleEvent;
   import zpp_nape.util.ZNPNode_ZPP_SimpleVert;
   import zpp_nape.util.ZNPNode_ZPP_SimplifyP;
   import zpp_nape.util.ZNPNode_ZPP_ToiEvent;
   import zpp_nape.util.ZNPNode_ZPP_Vec2;
   import zpp_nape.util.ZPP_Set_ZPP_Body;
   import zpp_nape.util.ZPP_Set_ZPP_CbSet;
   import zpp_nape.util.ZPP_Set_ZPP_CbSetPair;
   import zpp_nape.util.ZPP_Set_ZPP_PartitionPair;
   import zpp_nape.util.ZPP_Set_ZPP_PartitionVertex;
   import zpp_nape.util.ZPP_Set_ZPP_SimpleSeg;
   import zpp_nape.util.ZPP_Set_ZPP_SimpleVert;
   import zpp_nape.util.class_219;
   import zpp_nape.util.class_223;
   import zpp_nape.util.class_263;
   import zpp_nape.util.class_272;
   
   public class Debug
   {
       
      
      public var zpp_inner:class_272;
      
      public var var_752:Boolean;
      
      public var var_641:Boolean;
      
      public var var_572:Boolean;
      
      public var var_674:Boolean;
      
      public var var_695:Boolean;
      
      public var var_603:Boolean;
      
      public var var_667:Boolean;
      
      public var var_629:Boolean;
      
      public var var_780:Boolean;
      
      public var colour:Object;
      
      public function Debug()
      {
         var_780 = false;
         colour = null;
         var_695 = false;
         var_641 = false;
         var_752 = false;
         var_667 = false;
         var_629 = false;
         var_572 = false;
         var_674 = false;
         var_603 = false;
         zpp_inner = null;
         var_603 = false;
         var_674 = false;
         var_572 = false;
         var_629 = true;
         var_641 = true;
         var_667 = false;
         var_752 = false;
         var_695 = false;
         var_780 = false;
         colour = null;
      }
      
      public static function version() : String
      {
         return class_2.method_14(-1820302766);
      }
      
      public static function method_909() : void
      {
         var _loc1_:* = null as class_234;
         var _loc2_:* = null as class_210;
         var _loc3_:* = null as class_231;
         var _loc4_:* = null as class_229;
         var _loc5_:* = null as class_261;
         var _loc6_:* = null as class_264;
         var _loc7_:* = null as class_268;
         var _loc8_:* = null as class_271;
         var _loc9_:* = null as Vec2Iterator;
         var _loc10_:* = null as class_269;
         var _loc11_:* = null as class_226;
         var _loc12_:* = null as class_270;
         var _loc13_:* = null as class_266;
         var _loc14_:* = null as class_251;
         var _loc15_:* = null as class_214;
         var _loc16_:* = null as ZNPNode_ZPP_CbType;
         var _loc17_:* = null as ZNPNode_ZPP_CallbackSet;
         var _loc18_:* = null as class_244;
         var _loc19_:* = null as ZNPNode_ZPP_Shape;
         var _loc20_:* = null as class_265;
         var _loc21_:* = null as ZNPNode_ZPP_Body;
         var _loc22_:* = null as ZNPNode_ZPP_Constraint;
         var _loc23_:* = null as ZNPNode_ZPP_Compound;
         var _loc24_:* = null as ZPP_CbSetPair;
         var _loc25_:* = null as ZNPNode_ZPP_InteractionListener;
         var _loc26_:* = null as ZNPNode_ZPP_CbSet;
         var _loc27_:* = null as ZNPNode_ZPP_Interactor;
         var _loc28_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc29_:* = null as ZNPNode_ZPP_BodyListener;
         var _loc30_:* = null as ZPP_Set_ZPP_Body;
         var _loc31_:* = null as ZNPNode_ZPP_ConstraintListener;
         var _loc32_:* = null as ZPP_CbSet;
         var _loc33_:* = null as ZNPNode_ZPP_CbSetPair;
         var _loc34_:* = null as class_273;
         var _loc35_:* = null as ZPP_GeomVert;
         var _loc36_:* = null as class_262;
         var _loc37_:* = null as ZPP_Set_ZPP_CbSetPair;
         var _loc38_:* = null as ZPP_Mat23;
         var _loc39_:* = null as ZPP_CutVert;
         var _loc40_:* = null as ZPP_CutInt;
         var _loc41_:* = null as ZNPNode_ZPP_CutInt;
         var _loc42_:* = null as ZNPNode_ZPP_CutVert;
         var _loc43_:* = null as ZPP_Vec2;
         var _loc44_:* = null as ZNPNode_ZPP_PartitionVertex;
         var _loc45_:* = null as ZPP_PartitionVertex;
         var _loc46_:* = null as ZPP_Set_ZPP_PartitionVertex;
         var _loc47_:* = null as ZPP_PartitionedPoly;
         var _loc48_:* = null as class_274;
         var _loc49_:* = null as ZPP_SimplifyP;
         var _loc50_:* = null as ZNPNode_ZPP_PartitionedPoly;
         var _loc51_:* = null as ZNPNode_ZPP_SimplifyP;
         var _loc52_:* = null as ZPP_PartitionPair;
         var _loc53_:* = null as ZNPNode_ZPP_GeomVert;
         var _loc54_:* = null as ZPP_Set_ZPP_PartitionPair;
         var _loc55_:* = null as ZPP_AABB;
         var _loc56_:* = null as ZPP_ToiEvent;
         var _loc57_:* = null as ZPP_Set_ZPP_SimpleVert;
         var _loc58_:* = null as ZPP_SimpleVert;
         var _loc59_:* = null as ZPP_SimpleSeg;
         var _loc60_:* = null as ZPP_Set_ZPP_SimpleSeg;
         var _loc61_:* = null as class_263;
         var _loc62_:* = null as ZPP_SimpleEvent;
         var _loc63_:* = null as Hashable2_Boolfalse;
         var _loc64_:* = null as ZNPNode_ZPP_Vec2;
         var _loc65_:* = null as ZNPNode_ZPP_SimpleVert;
         var _loc66_:* = null as class_275;
         var _loc67_:* = null as class_267;
         var _loc68_:* = null as ZNPNode_ZPP_SimpleEvent;
         var _loc69_:* = null as ZNPNode_ZPP_AABBPair;
         var _loc70_:* = null as ZPP_Edge;
         var _loc71_:* = null as ZNPNode_ZPP_Edge;
         var _loc72_:* = null as ZPP_SweepData;
         var _loc73_:* = null as ZPP_AABBNode;
         var _loc74_:* = null as ZPP_AABBPair;
         var _loc75_:* = null as ZPP_Contact;
         var _loc76_:* = null as ZNPNode_ZPP_AABBNode;
         var _loc77_:* = null as ZNPNode_ZPP_Component;
         var _loc78_:* = null as ZPP_Island;
         var _loc79_:* = null as ZPP_Component;
         var _loc80_:* = null as ZPP_CallbackSet;
         var _loc81_:* = null as ZPP_Set_ZPP_CbSet;
         var _loc82_:* = null as ZNPNode_ZPP_InteractionGroup;
         var _loc83_:* = null as ZPP_InteractionFilter;
         var _loc84_:* = null as ZNPNode_ZPP_FluidArbiter;
         var _loc85_:* = null as ZNPNode_ZPP_ColArbiter;
         var _loc86_:* = null as ZNPNode_ZPP_SensorArbiter;
         var _loc87_:* = null as ZNPNode_ZPP_Listener;
         var _loc88_:* = null as ZPP_SensorArbiter;
         var _loc89_:* = null as ZPP_FluidArbiter;
         var _loc90_:* = null as ZNPNode_ZPP_ToiEvent;
         var _loc91_:* = null as ZPP_ColArbiter;
         var _loc92_:* = null as ZNPNode_ConvexResult;
         var _loc93_:* = null as ZNPNode_ZPP_GeomPoly;
         var _loc94_:* = null as ZNPNode_RayResult;
         var _loc95_:* = null as class_260;
         var _loc96_:* = null as Vec2;
         var _loc97_:* = null as Vec3;
         while(class_234.var_72 != null)
         {
            _loc1_ = class_234.var_72.var_106;
            class_234.var_72.var_106 = null;
            class_234.var_72 = _loc1_;
         }
         while(class_210.var_72 != null)
         {
            _loc2_ = class_210.var_72.var_106;
            class_210.var_72.var_106 = null;
            class_210.var_72 = _loc2_;
         }
         while(class_231.var_72 != null)
         {
            _loc3_ = class_231.var_72.var_106;
            class_231.var_72.var_106 = null;
            class_231.var_72 = _loc3_;
         }
         while(class_229.var_72 != null)
         {
            _loc4_ = class_229.var_72.var_106;
            class_229.var_72.var_106 = null;
            class_229.var_72 = _loc4_;
         }
         while(class_261.var_72 != null)
         {
            _loc5_ = class_261.var_72.var_106;
            class_261.var_72.var_106 = null;
            class_261.var_72 = _loc5_;
         }
         while(class_264.var_72 != null)
         {
            _loc6_ = class_264.var_72.var_106;
            class_264.var_72.var_106 = null;
            class_264.var_72 = _loc6_;
         }
         while(class_268.var_72 != null)
         {
            _loc7_ = class_268.var_72.var_106;
            class_268.var_72.var_106 = null;
            class_268.var_72 = _loc7_;
         }
         while(class_271.var_72 != null)
         {
            _loc8_ = class_271.var_72.var_106;
            class_271.var_72.var_106 = null;
            class_271.var_72 = _loc8_;
         }
         while(Vec2Iterator.var_72 != null)
         {
            _loc9_ = Vec2Iterator.var_72.var_106;
            Vec2Iterator.var_72.var_106 = null;
            Vec2Iterator.var_72 = _loc9_;
         }
         while(class_269.var_72 != null)
         {
            _loc10_ = class_269.var_72.var_106;
            class_269.var_72.var_106 = null;
            class_269.var_72 = _loc10_;
         }
         while(class_226.var_72 != null)
         {
            _loc11_ = class_226.var_72.var_106;
            class_226.var_72.var_106 = null;
            class_226.var_72 = _loc11_;
         }
         while(class_270.var_72 != null)
         {
            _loc12_ = class_270.var_72.var_106;
            class_270.var_72.var_106 = null;
            class_270.var_72 = _loc12_;
         }
         while(class_266.var_72 != null)
         {
            _loc13_ = class_266.var_72.var_106;
            class_266.var_72.var_106 = null;
            class_266.var_72 = _loc13_;
         }
         while(class_251.var_72 != null)
         {
            _loc14_ = class_251.var_72.var_106;
            class_251.var_72.var_106 = null;
            class_251.var_72 = _loc14_;
         }
         while(class_214.var_72 != null)
         {
            _loc15_ = class_214.var_72.var_106;
            class_214.var_72.var_106 = null;
            class_214.var_72 = _loc15_;
         }
         while(ZNPNode_ZPP_CbType.var_72 != null)
         {
            _loc16_ = ZNPNode_ZPP_CbType.var_72.next;
            ZNPNode_ZPP_CbType.var_72.next = null;
            ZNPNode_ZPP_CbType.var_72 = _loc16_;
         }
         while(ZNPNode_ZPP_CallbackSet.var_72 != null)
         {
            _loc17_ = ZNPNode_ZPP_CallbackSet.var_72.next;
            ZNPNode_ZPP_CallbackSet.var_72.next = null;
            ZNPNode_ZPP_CallbackSet.var_72 = _loc17_;
         }
         while(class_244.var_72 != null)
         {
            _loc18_ = class_244.var_72.next;
            class_244.var_72.next = null;
            class_244.var_72 = _loc18_;
         }
         while(ZNPNode_ZPP_Shape.var_72 != null)
         {
            _loc19_ = ZNPNode_ZPP_Shape.var_72.next;
            ZNPNode_ZPP_Shape.var_72.next = null;
            ZNPNode_ZPP_Shape.var_72 = _loc19_;
         }
         while(class_265.var_72 != null)
         {
            _loc20_ = class_265.var_72.next;
            class_265.var_72.next = null;
            class_265.var_72 = _loc20_;
         }
         while(ZNPNode_ZPP_Body.var_72 != null)
         {
            _loc21_ = ZNPNode_ZPP_Body.var_72.next;
            ZNPNode_ZPP_Body.var_72.next = null;
            ZNPNode_ZPP_Body.var_72 = _loc21_;
         }
         while(ZNPNode_ZPP_Constraint.var_72 != null)
         {
            _loc22_ = ZNPNode_ZPP_Constraint.var_72.next;
            ZNPNode_ZPP_Constraint.var_72.next = null;
            ZNPNode_ZPP_Constraint.var_72 = _loc22_;
         }
         while(ZNPNode_ZPP_Compound.var_72 != null)
         {
            _loc23_ = ZNPNode_ZPP_Compound.var_72.next;
            ZNPNode_ZPP_Compound.var_72.next = null;
            ZNPNode_ZPP_Compound.var_72 = _loc23_;
         }
         while(ZPP_CbSetPair.var_72 != null)
         {
            _loc24_ = ZPP_CbSetPair.var_72.next;
            ZPP_CbSetPair.var_72.next = null;
            ZPP_CbSetPair.var_72 = _loc24_;
         }
         while(ZNPNode_ZPP_InteractionListener.var_72 != null)
         {
            _loc25_ = ZNPNode_ZPP_InteractionListener.var_72.next;
            ZNPNode_ZPP_InteractionListener.var_72.next = null;
            ZNPNode_ZPP_InteractionListener.var_72 = _loc25_;
         }
         while(ZNPNode_ZPP_CbSet.var_72 != null)
         {
            _loc26_ = ZNPNode_ZPP_CbSet.var_72.next;
            ZNPNode_ZPP_CbSet.var_72.next = null;
            ZNPNode_ZPP_CbSet.var_72 = _loc26_;
         }
         while(ZNPNode_ZPP_Interactor.var_72 != null)
         {
            _loc27_ = ZNPNode_ZPP_Interactor.var_72.next;
            ZNPNode_ZPP_Interactor.var_72.next = null;
            ZNPNode_ZPP_Interactor.var_72 = _loc27_;
         }
         while(ZNPNode_ZPP_Arbiter.var_72 != null)
         {
            _loc28_ = ZNPNode_ZPP_Arbiter.var_72.next;
            ZNPNode_ZPP_Arbiter.var_72.next = null;
            ZNPNode_ZPP_Arbiter.var_72 = _loc28_;
         }
         while(ZNPNode_ZPP_BodyListener.var_72 != null)
         {
            _loc29_ = ZNPNode_ZPP_BodyListener.var_72.next;
            ZNPNode_ZPP_BodyListener.var_72.next = null;
            ZNPNode_ZPP_BodyListener.var_72 = _loc29_;
         }
         while(ZPP_Set_ZPP_Body.var_72 != null)
         {
            _loc30_ = ZPP_Set_ZPP_Body.var_72.next;
            ZPP_Set_ZPP_Body.var_72.next = null;
            ZPP_Set_ZPP_Body.var_72 = _loc30_;
         }
         while(ZNPNode_ZPP_ConstraintListener.var_72 != null)
         {
            _loc31_ = ZNPNode_ZPP_ConstraintListener.var_72.next;
            ZNPNode_ZPP_ConstraintListener.var_72.next = null;
            ZNPNode_ZPP_ConstraintListener.var_72 = _loc31_;
         }
         while(ZPP_CbSet.var_72 != null)
         {
            _loc32_ = ZPP_CbSet.var_72.next;
            ZPP_CbSet.var_72.next = null;
            ZPP_CbSet.var_72 = _loc32_;
         }
         while(ZNPNode_ZPP_CbSetPair.var_72 != null)
         {
            _loc33_ = ZNPNode_ZPP_CbSetPair.var_72.next;
            ZNPNode_ZPP_CbSetPair.var_72.next = null;
            ZNPNode_ZPP_CbSetPair.var_72 = _loc33_;
         }
         while(class_273.var_72 != null)
         {
            _loc34_ = class_273.var_72.next;
            class_273.var_72.next = null;
            class_273.var_72 = _loc34_;
         }
         while(ZPP_GeomVert.var_72 != null)
         {
            _loc35_ = ZPP_GeomVert.var_72.next;
            ZPP_GeomVert.var_72.next = null;
            ZPP_GeomVert.var_72 = _loc35_;
         }
         while(class_262.var_72 != null)
         {
            _loc36_ = class_262.var_72.next;
            class_262.var_72.next = null;
            class_262.var_72 = _loc36_;
         }
         while(ZPP_Set_ZPP_CbSetPair.var_72 != null)
         {
            _loc37_ = ZPP_Set_ZPP_CbSetPair.var_72.next;
            ZPP_Set_ZPP_CbSetPair.var_72.next = null;
            ZPP_Set_ZPP_CbSetPair.var_72 = _loc37_;
         }
         while(ZPP_Mat23.var_72 != null)
         {
            _loc38_ = ZPP_Mat23.var_72.next;
            ZPP_Mat23.var_72.next = null;
            ZPP_Mat23.var_72 = _loc38_;
         }
         while(ZPP_CutVert.var_72 != null)
         {
            _loc39_ = ZPP_CutVert.var_72.next;
            ZPP_CutVert.var_72.next = null;
            ZPP_CutVert.var_72 = _loc39_;
         }
         while(ZPP_CutInt.var_72 != null)
         {
            _loc40_ = ZPP_CutInt.var_72.next;
            ZPP_CutInt.var_72.next = null;
            ZPP_CutInt.var_72 = _loc40_;
         }
         while(ZNPNode_ZPP_CutInt.var_72 != null)
         {
            _loc41_ = ZNPNode_ZPP_CutInt.var_72.next;
            ZNPNode_ZPP_CutInt.var_72.next = null;
            ZNPNode_ZPP_CutInt.var_72 = _loc41_;
         }
         while(ZNPNode_ZPP_CutVert.var_72 != null)
         {
            _loc42_ = ZNPNode_ZPP_CutVert.var_72.next;
            ZNPNode_ZPP_CutVert.var_72.next = null;
            ZNPNode_ZPP_CutVert.var_72 = _loc42_;
         }
         while(ZPP_Vec2.var_72 != null)
         {
            _loc43_ = ZPP_Vec2.var_72.next;
            ZPP_Vec2.var_72.next = null;
            ZPP_Vec2.var_72 = _loc43_;
         }
         while(ZNPNode_ZPP_PartitionVertex.var_72 != null)
         {
            _loc44_ = ZNPNode_ZPP_PartitionVertex.var_72.next;
            ZNPNode_ZPP_PartitionVertex.var_72.next = null;
            ZNPNode_ZPP_PartitionVertex.var_72 = _loc44_;
         }
         while(ZPP_PartitionVertex.var_72 != null)
         {
            _loc45_ = ZPP_PartitionVertex.var_72.next;
            ZPP_PartitionVertex.var_72.next = null;
            ZPP_PartitionVertex.var_72 = _loc45_;
         }
         while(ZPP_Set_ZPP_PartitionVertex.var_72 != null)
         {
            _loc46_ = ZPP_Set_ZPP_PartitionVertex.var_72.next;
            ZPP_Set_ZPP_PartitionVertex.var_72.next = null;
            ZPP_Set_ZPP_PartitionVertex.var_72 = _loc46_;
         }
         while(ZPP_PartitionedPoly.var_72 != null)
         {
            _loc47_ = ZPP_PartitionedPoly.var_72.next;
            ZPP_PartitionedPoly.var_72.next = null;
            ZPP_PartitionedPoly.var_72 = _loc47_;
         }
         while(class_274.var_72 != null)
         {
            _loc48_ = class_274.var_72.next;
            class_274.var_72.next = null;
            class_274.var_72 = _loc48_;
         }
         while(ZPP_SimplifyP.var_72 != null)
         {
            _loc49_ = ZPP_SimplifyP.var_72.next;
            ZPP_SimplifyP.var_72.next = null;
            ZPP_SimplifyP.var_72 = _loc49_;
         }
         while(ZNPNode_ZPP_PartitionedPoly.var_72 != null)
         {
            _loc50_ = ZNPNode_ZPP_PartitionedPoly.var_72.next;
            ZNPNode_ZPP_PartitionedPoly.var_72.next = null;
            ZNPNode_ZPP_PartitionedPoly.var_72 = _loc50_;
         }
         while(ZNPNode_ZPP_SimplifyP.var_72 != null)
         {
            _loc51_ = ZNPNode_ZPP_SimplifyP.var_72.next;
            ZNPNode_ZPP_SimplifyP.var_72.next = null;
            ZNPNode_ZPP_SimplifyP.var_72 = _loc51_;
         }
         while(ZPP_PartitionPair.var_72 != null)
         {
            _loc52_ = ZPP_PartitionPair.var_72.next;
            ZPP_PartitionPair.var_72.next = null;
            ZPP_PartitionPair.var_72 = _loc52_;
         }
         while(ZNPNode_ZPP_GeomVert.var_72 != null)
         {
            _loc53_ = ZNPNode_ZPP_GeomVert.var_72.next;
            ZNPNode_ZPP_GeomVert.var_72.next = null;
            ZNPNode_ZPP_GeomVert.var_72 = _loc53_;
         }
         while(ZPP_Set_ZPP_PartitionPair.var_72 != null)
         {
            _loc54_ = ZPP_Set_ZPP_PartitionPair.var_72.next;
            ZPP_Set_ZPP_PartitionPair.var_72.next = null;
            ZPP_Set_ZPP_PartitionPair.var_72 = _loc54_;
         }
         while(ZPP_AABB.var_72 != null)
         {
            _loc55_ = ZPP_AABB.var_72.next;
            ZPP_AABB.var_72.next = null;
            ZPP_AABB.var_72 = _loc55_;
         }
         while(ZPP_ToiEvent.var_72 != null)
         {
            _loc56_ = ZPP_ToiEvent.var_72.next;
            ZPP_ToiEvent.var_72.next = null;
            ZPP_ToiEvent.var_72 = _loc56_;
         }
         while(ZPP_Set_ZPP_SimpleVert.var_72 != null)
         {
            _loc57_ = ZPP_Set_ZPP_SimpleVert.var_72.next;
            ZPP_Set_ZPP_SimpleVert.var_72.next = null;
            ZPP_Set_ZPP_SimpleVert.var_72 = _loc57_;
         }
         while(ZPP_SimpleVert.var_72 != null)
         {
            _loc58_ = ZPP_SimpleVert.var_72.next;
            ZPP_SimpleVert.var_72.next = null;
            ZPP_SimpleVert.var_72 = _loc58_;
         }
         while(ZPP_SimpleSeg.var_72 != null)
         {
            _loc59_ = ZPP_SimpleSeg.var_72.next;
            ZPP_SimpleSeg.var_72.next = null;
            ZPP_SimpleSeg.var_72 = _loc59_;
         }
         while(ZPP_Set_ZPP_SimpleSeg.var_72 != null)
         {
            _loc60_ = ZPP_Set_ZPP_SimpleSeg.var_72.next;
            ZPP_Set_ZPP_SimpleSeg.var_72.next = null;
            ZPP_Set_ZPP_SimpleSeg.var_72 = _loc60_;
         }
         while(class_263.var_72 != null)
         {
            _loc61_ = class_263.var_72.next;
            class_263.var_72.next = null;
            class_263.var_72 = _loc61_;
         }
         while(ZPP_SimpleEvent.var_72 != null)
         {
            _loc62_ = ZPP_SimpleEvent.var_72.next;
            ZPP_SimpleEvent.var_72.next = null;
            ZPP_SimpleEvent.var_72 = _loc62_;
         }
         while(Hashable2_Boolfalse.var_72 != null)
         {
            _loc63_ = Hashable2_Boolfalse.var_72.next;
            Hashable2_Boolfalse.var_72.next = null;
            Hashable2_Boolfalse.var_72 = _loc63_;
         }
         while(ZNPNode_ZPP_Vec2.var_72 != null)
         {
            _loc64_ = ZNPNode_ZPP_Vec2.var_72.next;
            ZNPNode_ZPP_Vec2.var_72.next = null;
            ZNPNode_ZPP_Vec2.var_72 = _loc64_;
         }
         while(ZNPNode_ZPP_SimpleVert.var_72 != null)
         {
            _loc65_ = ZNPNode_ZPP_SimpleVert.var_72.next;
            ZNPNode_ZPP_SimpleVert.var_72.next = null;
            ZNPNode_ZPP_SimpleVert.var_72 = _loc65_;
         }
         while(class_275.var_72 != null)
         {
            _loc66_ = class_275.var_72.next;
            class_275.var_72.next = null;
            class_275.var_72 = _loc66_;
         }
         while(class_267.var_72 != null)
         {
            _loc67_ = class_267.var_72.next;
            class_267.var_72.next = null;
            class_267.var_72 = _loc67_;
         }
         while(ZNPNode_ZPP_SimpleEvent.var_72 != null)
         {
            _loc68_ = ZNPNode_ZPP_SimpleEvent.var_72.next;
            ZNPNode_ZPP_SimpleEvent.var_72.next = null;
            ZNPNode_ZPP_SimpleEvent.var_72 = _loc68_;
         }
         while(ZNPNode_ZPP_AABBPair.var_72 != null)
         {
            _loc69_ = ZNPNode_ZPP_AABBPair.var_72.next;
            ZNPNode_ZPP_AABBPair.var_72.next = null;
            ZNPNode_ZPP_AABBPair.var_72 = _loc69_;
         }
         while(ZPP_Edge.var_72 != null)
         {
            _loc70_ = ZPP_Edge.var_72.next;
            ZPP_Edge.var_72.next = null;
            ZPP_Edge.var_72 = _loc70_;
         }
         while(ZNPNode_ZPP_Edge.var_72 != null)
         {
            _loc71_ = ZNPNode_ZPP_Edge.var_72.next;
            ZNPNode_ZPP_Edge.var_72.next = null;
            ZNPNode_ZPP_Edge.var_72 = _loc71_;
         }
         while(ZPP_SweepData.var_72 != null)
         {
            _loc72_ = ZPP_SweepData.var_72.next;
            ZPP_SweepData.var_72.next = null;
            ZPP_SweepData.var_72 = _loc72_;
         }
         while(ZPP_AABBNode.var_72 != null)
         {
            _loc73_ = ZPP_AABBNode.var_72.next;
            ZPP_AABBNode.var_72.next = null;
            ZPP_AABBNode.var_72 = _loc73_;
         }
         while(ZPP_AABBPair.var_72 != null)
         {
            _loc74_ = ZPP_AABBPair.var_72.next;
            ZPP_AABBPair.var_72.next = null;
            ZPP_AABBPair.var_72 = _loc74_;
         }
         while(ZPP_Contact.var_72 != null)
         {
            _loc75_ = ZPP_Contact.var_72.next;
            ZPP_Contact.var_72.next = null;
            ZPP_Contact.var_72 = _loc75_;
         }
         while(ZNPNode_ZPP_AABBNode.var_72 != null)
         {
            _loc76_ = ZNPNode_ZPP_AABBNode.var_72.next;
            ZNPNode_ZPP_AABBNode.var_72.next = null;
            ZNPNode_ZPP_AABBNode.var_72 = _loc76_;
         }
         while(ZNPNode_ZPP_Component.var_72 != null)
         {
            _loc77_ = ZNPNode_ZPP_Component.var_72.next;
            ZNPNode_ZPP_Component.var_72.next = null;
            ZNPNode_ZPP_Component.var_72 = _loc77_;
         }
         while(ZPP_Island.var_72 != null)
         {
            _loc78_ = ZPP_Island.var_72.next;
            ZPP_Island.var_72.next = null;
            ZPP_Island.var_72 = _loc78_;
         }
         while(ZPP_Component.var_72 != null)
         {
            _loc79_ = ZPP_Component.var_72.next;
            ZPP_Component.var_72.next = null;
            ZPP_Component.var_72 = _loc79_;
         }
         while(ZPP_CallbackSet.var_72 != null)
         {
            _loc80_ = ZPP_CallbackSet.var_72.next;
            ZPP_CallbackSet.var_72.next = null;
            ZPP_CallbackSet.var_72 = _loc80_;
         }
         while(ZPP_Set_ZPP_CbSet.var_72 != null)
         {
            _loc81_ = ZPP_Set_ZPP_CbSet.var_72.next;
            ZPP_Set_ZPP_CbSet.var_72.next = null;
            ZPP_Set_ZPP_CbSet.var_72 = _loc81_;
         }
         while(ZNPNode_ZPP_InteractionGroup.var_72 != null)
         {
            _loc82_ = ZNPNode_ZPP_InteractionGroup.var_72.next;
            ZNPNode_ZPP_InteractionGroup.var_72.next = null;
            ZNPNode_ZPP_InteractionGroup.var_72 = _loc82_;
         }
         while(ZPP_InteractionFilter.var_72 != null)
         {
            _loc83_ = ZPP_InteractionFilter.var_72.next;
            ZPP_InteractionFilter.var_72.next = null;
            ZPP_InteractionFilter.var_72 = _loc83_;
         }
         while(ZNPNode_ZPP_FluidArbiter.var_72 != null)
         {
            _loc84_ = ZNPNode_ZPP_FluidArbiter.var_72.next;
            ZNPNode_ZPP_FluidArbiter.var_72.next = null;
            ZNPNode_ZPP_FluidArbiter.var_72 = _loc84_;
         }
         while(ZNPNode_ZPP_ColArbiter.var_72 != null)
         {
            _loc85_ = ZNPNode_ZPP_ColArbiter.var_72.next;
            ZNPNode_ZPP_ColArbiter.var_72.next = null;
            ZNPNode_ZPP_ColArbiter.var_72 = _loc85_;
         }
         while(ZNPNode_ZPP_SensorArbiter.var_72 != null)
         {
            _loc86_ = ZNPNode_ZPP_SensorArbiter.var_72.next;
            ZNPNode_ZPP_SensorArbiter.var_72.next = null;
            ZNPNode_ZPP_SensorArbiter.var_72 = _loc86_;
         }
         while(ZNPNode_ZPP_Listener.var_72 != null)
         {
            _loc87_ = ZNPNode_ZPP_Listener.var_72.next;
            ZNPNode_ZPP_Listener.var_72.next = null;
            ZNPNode_ZPP_Listener.var_72 = _loc87_;
         }
         while(ZPP_SensorArbiter.var_72 != null)
         {
            _loc88_ = ZPP_SensorArbiter.var_72.next;
            ZPP_SensorArbiter.var_72.next = null;
            ZPP_SensorArbiter.var_72 = _loc88_;
         }
         while(ZPP_FluidArbiter.var_72 != null)
         {
            _loc89_ = ZPP_FluidArbiter.var_72.next;
            ZPP_FluidArbiter.var_72.next = null;
            ZPP_FluidArbiter.var_72 = _loc89_;
         }
         while(ZNPNode_ZPP_ToiEvent.var_72 != null)
         {
            _loc90_ = ZNPNode_ZPP_ToiEvent.var_72.next;
            ZNPNode_ZPP_ToiEvent.var_72.next = null;
            ZNPNode_ZPP_ToiEvent.var_72 = _loc90_;
         }
         while(ZPP_ColArbiter.var_72 != null)
         {
            _loc91_ = ZPP_ColArbiter.var_72.next;
            ZPP_ColArbiter.var_72.next = null;
            ZPP_ColArbiter.var_72 = _loc91_;
         }
         while(ZNPNode_ConvexResult.var_72 != null)
         {
            _loc92_ = ZNPNode_ConvexResult.var_72.next;
            ZNPNode_ConvexResult.var_72.next = null;
            ZNPNode_ConvexResult.var_72 = _loc92_;
         }
         while(ZNPNode_ZPP_GeomPoly.var_72 != null)
         {
            _loc93_ = ZNPNode_ZPP_GeomPoly.var_72.next;
            ZNPNode_ZPP_GeomPoly.var_72.next = null;
            ZNPNode_ZPP_GeomPoly.var_72 = _loc93_;
         }
         while(ZNPNode_RayResult.var_72 != null)
         {
            _loc94_ = ZNPNode_RayResult.var_72.next;
            ZNPNode_RayResult.var_72.next = null;
            ZNPNode_RayResult.var_72 = _loc94_;
         }
         while(class_219.var_550 != null)
         {
            _loc95_ = class_219.var_550.var_72;
            class_219.var_550.var_72 = null;
            class_219.var_550 = _loc95_;
         }
         while(class_219.poolVec2 != null)
         {
            _loc96_ = class_219.poolVec2.var_72;
            class_219.poolVec2.var_72 = null;
            class_219.poolVec2 = _loc96_;
         }
         while(class_219.poolVec3 != null)
         {
            _loc97_ = class_219.poolVec3.var_72;
            class_219.poolVec3.var_72 = null;
            class_219.poolVec3 = _loc97_;
         }
      }
      
      public static function method_749(param1:Body) : flash.display.Shape
      {
         var _loc10_:* = null as class_230;
         var _loc11_:* = null as package_32.Shape;
         var _loc12_:int = 0;
         var _loc13_:* = null as Circle;
         var _loc14_:* = null as Vec2;
         var _loc15_:* = null as ZPP_Vec2;
         var _loc16_:* = null as Polygon;
         var _loc18_:* = null as Vec2List;
         var _loc2_:flash.display.Shape = new flash.display.Shape();
         var _loc3_:Graphics = _loc2_.graphics;
         var _loc4_:int = 16777215 * Math.exp(-param1.var_150.id / 1500);
         var _loc5_:Number = ((_loc4_ & 16711680) >> 16) * 0.7;
         var _loc6_:Number = ((_loc4_ & 65280) >> 8) * 0.7;
         var _loc7_:Number = (_loc4_ & 255) * 0.7;
         var _loc8_:* = int(_loc5_) << 16 | int(_loc6_) << 8 | int(_loc7_);
         _loc3_.lineStyle(0.1,_loc8_,1);
         _loc10_ = param1.zpp_inner.var_222;
         _loc10_.zpp_inner.method_104();
         var _loc9_:class_226 = class_226.method_65(_loc10_);
         _loc9_.zpp_inner.zpp_inner.method_104();
         _loc10_ = _loc9_.zpp_inner;
         _loc10_.zpp_inner.method_104();
         if(_loc10_.zpp_inner.var_86)
         {
            _loc10_.zpp_inner.var_86 = false;
            _loc10_.zpp_inner.var_89 = _loc10_.zpp_inner.name_4.length;
         }
         _loc12_ = _loc10_.zpp_inner.var_89;
         _loc9_.var_98 = true;
         if(_loc9_.var_90 < _loc12_)
         {
            §§push(true);
         }
         else
         {
            _loc9_.var_106 = class_226.var_72;
            class_226.var_72 = _loc9_;
            _loc9_.zpp_inner = null;
            §§push(false);
         }
         return _loc2_;
      }
      
      public function set transform(param1:class_242) : class_242
      {
         if(zpp_inner.var_125 == null)
         {
            zpp_inner.method_386();
         }
         zpp_inner.var_125.outer.name_40(param1);
         if(zpp_inner.var_125 == null)
         {
            zpp_inner.method_386();
         }
         return zpp_inner.var_125.outer;
      }
      
      public function set method_563(param1:int) : int
      {
         if(zpp_inner.var_575)
         {
            zpp_inner.var_725.method_229(param1);
         }
         else
         {
            zpp_inner.var_726.method_229(param1);
         }
         return zpp_inner.var_234;
      }
      
      public function get transform() : class_242
      {
         if(zpp_inner.var_125 == null)
         {
            zpp_inner.method_386();
         }
         return zpp_inner.var_125.outer;
      }
      
      public function get display() : DisplayObject
      {
         var _loc1_:* = null as DisplayObject;
         if(zpp_inner.var_575)
         {
            _loc1_ = zpp_inner.var_725.var_827;
         }
         else
         {
            _loc1_ = zpp_inner.var_726.name_7;
         }
         return _loc1_;
      }
      
      public function get method_563() : int
      {
         return zpp_inner.var_234;
      }
      
      public function flush() : void
      {
      }
      
      public function method_387(param1:Vec2, param2:Vec2, param3:int, param4:int = 3, param5:Number = 3.0) : void
      {
      }
      
      public function method_435(param1:*, param2:int) : void
      {
      }
      
      public function method_253(param1:Vec2, param2:Vec2, param3:int) : void
      {
      }
      
      public function method_456(param1:Vec2, param2:Vec2, param3:Vec2, param4:int) : void
      {
      }
      
      public function method_445(param1:*, param2:int) : void
      {
      }
      
      public function method_305(param1:Vec2, param2:Number, param3:int) : void
      {
      }
      
      public function method_171(param1:Vec2, param2:Vec2, param3:Vec2, param4:int) : void
      {
      }
      
      public function drawCircle(param1:Vec2, param2:Number, param3:int) : void
      {
      }
      
      public function method_468(param1:class_237, param2:int) : void
      {
      }
      
      public function draw(param1:*) : void
      {
      }
      
      public function clear() : void
      {
      }
   }
}
