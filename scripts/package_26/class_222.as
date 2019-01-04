package package_26
{
   import package_32.class_230;
   import zpp_nape.dynamics.ZPP_InteractionFilter;
   import zpp_nape.util.ZPP_ShapeList;
   
   public final class class_222
   {
       
      
      public var zpp_inner:ZPP_InteractionFilter;
      
      public function class_222(param1:int = 1, param2:int = -1, param3:int = 1, param4:int = -1, param5:int = 1, param6:int = -1)
      {
         zpp_inner = null;
         if(ZPP_InteractionFilter.var_72 == null)
         {
            zpp_inner = new ZPP_InteractionFilter();
         }
         else
         {
            zpp_inner = ZPP_InteractionFilter.var_72;
            ZPP_InteractionFilter.var_72 = zpp_inner.next;
            zpp_inner.next = null;
         }
         null;
         zpp_inner.outer = this;
         if(zpp_inner.name_13 != param1)
         {
            zpp_inner.name_13 = param1;
            zpp_inner.invalidate();
         }
         zpp_inner.name_13;
         if(zpp_inner.name_14 != param2)
         {
            zpp_inner.name_14 = param2;
            zpp_inner.invalidate();
         }
         zpp_inner.name_14;
         if(zpp_inner.name_46 != param3)
         {
            zpp_inner.name_46 = param3;
            zpp_inner.invalidate();
         }
         zpp_inner.name_46;
         if(zpp_inner.name_48 != param4)
         {
            zpp_inner.name_48 = param4;
            zpp_inner.invalidate();
         }
         zpp_inner.name_48;
         if(zpp_inner.name_47 != param5)
         {
            zpp_inner.name_47 = param5;
            zpp_inner.invalidate();
         }
         zpp_inner.name_47;
         if(zpp_inner.name_43 != param6)
         {
            zpp_inner.name_43 = param6;
            zpp_inner.invalidate();
         }
         zpp_inner.name_43;
      }
      
      public final function toString() : String
      {
         return class_2.method_14(-1820302690) + StringTools.hex(zpp_inner.name_13,8) + "~" + StringTools.hex(zpp_inner.name_14,8) + class_2.method_14(-1820302524) + StringTools.hex(zpp_inner.name_46,8) + "~" + StringTools.hex(zpp_inner.name_48,8) + class_2.method_14(-1820302714) + StringTools.hex(zpp_inner.name_47,8) + "~" + StringTools.hex(zpp_inner.name_43,8) + class_2.method_14(-1820302790);
      }
      
      public final function method_741(param1:class_222) : Boolean
      {
         var _loc2_:ZPP_InteractionFilter = zpp_inner;
         var _loc3_:ZPP_InteractionFilter = param1.zpp_inner;
         return (_loc2_.name_48 & _loc3_.name_46) != 0 && (_loc3_.name_48 & _loc2_.name_46) != 0;
      }
      
      public final function method_912(param1:class_222) : Boolean
      {
         var _loc2_:ZPP_InteractionFilter = zpp_inner;
         var _loc3_:ZPP_InteractionFilter = param1.zpp_inner;
         return (_loc2_.name_43 & _loc3_.name_47) != 0 && (_loc3_.name_43 & _loc2_.name_47) != 0;
      }
      
      public final function method_890(param1:class_222) : Boolean
      {
         var _loc2_:ZPP_InteractionFilter = zpp_inner;
         var _loc3_:ZPP_InteractionFilter = param1.zpp_inner;
         return (_loc2_.name_14 & _loc3_.name_13) != 0 && (_loc3_.name_14 & _loc2_.name_13) != 0;
      }
      
      public function set name_48(param1:int) : int
      {
         if(zpp_inner.name_48 != param1)
         {
            zpp_inner.name_48 = param1;
            zpp_inner.invalidate();
         }
         return zpp_inner.name_48;
      }
      
      public function set name_46(param1:int) : int
      {
         if(zpp_inner.name_46 != param1)
         {
            zpp_inner.name_46 = param1;
            zpp_inner.invalidate();
         }
         return zpp_inner.name_46;
      }
      
      public function set name_43(param1:int) : int
      {
         if(zpp_inner.name_43 != param1)
         {
            zpp_inner.name_43 = param1;
            zpp_inner.invalidate();
         }
         return zpp_inner.name_43;
      }
      
      public function set name_47(param1:int) : int
      {
         if(zpp_inner.name_47 != param1)
         {
            zpp_inner.name_47 = param1;
            zpp_inner.invalidate();
         }
         return zpp_inner.name_47;
      }
      
      public function set name_14(param1:int) : int
      {
         if(zpp_inner.name_14 != param1)
         {
            zpp_inner.name_14 = param1;
            zpp_inner.invalidate();
         }
         return zpp_inner.name_14;
      }
      
      public function set name_13(param1:int) : int
      {
         if(zpp_inner.name_13 != param1)
         {
            zpp_inner.name_13 = param1;
            zpp_inner.invalidate();
         }
         return zpp_inner.name_13;
      }
      
      public function get name_21() : *
      {
         if(zpp_inner.name_21 == null)
         {
            zpp_inner.name_21 = {};
         }
         return zpp_inner.name_21;
      }
      
      public function get shapes() : class_230
      {
         if(zpp_inner.var_222 == null)
         {
            zpp_inner.var_222 = ZPP_ShapeList.method_65(zpp_inner.shapes,true);
         }
         return zpp_inner.var_222;
      }
      
      public function get name_48() : int
      {
         return zpp_inner.name_48;
      }
      
      public function get name_46() : int
      {
         return zpp_inner.name_46;
      }
      
      public function get name_43() : int
      {
         return zpp_inner.name_43;
      }
      
      public function get name_47() : int
      {
         return zpp_inner.name_47;
      }
      
      public function get name_14() : int
      {
         return zpp_inner.name_14;
      }
      
      public function get name_13() : int
      {
         return zpp_inner.name_13;
      }
      
      public final function copy() : class_222
      {
         return new class_222(zpp_inner.name_13,zpp_inner.name_14,zpp_inner.name_46,zpp_inner.name_48,zpp_inner.name_47,zpp_inner.name_43);
      }
   }
}
