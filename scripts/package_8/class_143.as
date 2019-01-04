package package_8
{
   import flash.display.DisplayObject;
   import flash.filters.BitmapFilter;
   import package_15.class_59;
   import package_16.class_62;
   
   public final class class_143 extends class_32
   {
       
      
      private var _filter:BitmapFilter;
      
      public function class_143(param1:BitmapFilter = null)
      {
         super();
         priority = -10;
         this._filter = param1;
      }
      
      public function get filter() : BitmapFilter
      {
         return this._filter;
      }
      
      public function set filter(param1:BitmapFilter) : void
      {
         this._filter = param1;
      }
      
      override public function initialize(param1:class_59, param2:class_62) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(param2.image && param2.image is DisplayObject)
         {
            _loc3_ = param2.image;
            if(_loc3_.filters)
            {
               _loc4_ = _loc3_.filters;
               _loc4_.push(this._filter);
               _loc3_.filters = _loc4_;
            }
            else
            {
               _loc3_.filters = [this._filter];
            }
         }
      }
   }
}
