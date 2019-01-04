package mx.utils
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.getQualifiedClassName;
   import flash.xml.XMLNode;
   import mx.collections.IList;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class ObjectUtil
   {
      
      mx_internal static const VERSION:String = "4.6.0.23201";
      
      private static var defaultToStringExcludes:Array = ["password","credentials"];
      
      private static var refCount:int = 0;
      
      private static var CLASS_INFO_CACHE:Object = {};
       
      
      public function ObjectUtil()
      {
         super();
      }
      
      public static function compare(param1:Object, param2:Object, param3:int = -1) : int
      {
         return internalCompare(param1,param2,0,param3,new Dictionary(true));
      }
      
      public static function copy(param1:Object) : Object
      {
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeObject(param1);
         _loc2_.position = 0;
         var _loc3_:Object = _loc2_.readObject();
         return _loc3_;
      }
      
      public static function clone(param1:Object) : Object
      {
         var _loc2_:Object = copy(param1);
         cloneInternal(_loc2_,param1);
         return _loc2_;
      }
      
      private static function cloneInternal(param1:Object, param2:Object) : void
      {
         var _loc4_:* = null;
         var _loc5_:* = undefined;
         if(param2 && param2.hasOwnProperty("uid"))
         {
            param1.uid = param2.uid;
         }
         var _loc3_:Object = getClassInfo(param2);
         for each(_loc5_ in _loc3_.properties)
         {
            _loc4_ = param2[_loc5_];
            if(_loc4_ && _loc4_.hasOwnProperty("uid"))
            {
               cloneInternal(param1[_loc5_],_loc4_);
            }
         }
      }
      
      public static function isSimple(param1:Object) : Boolean
      {
         var _loc2_:* = typeof param1;
         switch(_loc2_)
         {
            case "number":
            case "string":
            case "boolean":
               return true;
            case "object":
               return param1 is Date || param1 is Array;
            default:
               return false;
         }
      }
      
      public static function numericCompare(param1:Number, param2:Number) : int
      {
         if(isNaN(param1) && isNaN(param2))
         {
            return 0;
         }
         if(isNaN(param1))
         {
            return 1;
         }
         if(isNaN(param2))
         {
            return -1;
         }
         if(param1 < param2)
         {
            return -1;
         }
         if(param1 > param2)
         {
            return 1;
         }
         return 0;
      }
      
      public static function stringCompare(param1:String, param2:String, param3:Boolean = false) : int
      {
         if(param1 == null && param2 == null)
         {
            return 0;
         }
         if(param1 == null)
         {
            return 1;
         }
         if(param2 == null)
         {
            return -1;
         }
         if(param3)
         {
            param1 = param1.toLocaleLowerCase();
            param2 = param2.toLocaleLowerCase();
         }
         var _loc4_:int = param1.localeCompare(param2);
         if(_loc4_ < -1)
         {
            _loc4_ = -1;
         }
         else if(_loc4_ > 1)
         {
            _loc4_ = 1;
         }
         return _loc4_;
      }
      
      public static function dateCompare(param1:Date, param2:Date) : int
      {
         if(param1 == null && param2 == null)
         {
            return 0;
         }
         if(param1 == null)
         {
            return 1;
         }
         if(param2 == null)
         {
            return -1;
         }
         var _loc3_:Number = param1.getTime();
         var _loc4_:Number = param2.getTime();
         if(_loc3_ < _loc4_)
         {
            return -1;
         }
         if(_loc3_ > _loc4_)
         {
            return 1;
         }
         return 0;
      }
      
      public static function toString(param1:Object, param2:Array = null, param3:Array = null) : String
      {
         if(param3 == null)
         {
            param3 = defaultToStringExcludes;
         }
         refCount = 0;
         return internalToString(param1,0,null,param2,param3);
      }
      
      private static function internalToString(param1:Object, param2:int = 0, param3:Dictionary = null, param4:Array = null, param5:Array = null) : String
      {
         var str:String = null;
         var classInfo:Object = null;
         var properties:Array = null;
         var isArray:Boolean = false;
         var isDict:Boolean = false;
         var prop:* = undefined;
         var var_1158:int = 0;
         var var_1002:Object = null;
         var value:Object = param1;
         var indent:int = param2;
         var refs:Dictionary = param3;
         var namespaceURIs:Array = param4;
         var exclude:Array = param5;
         var type:String = value == null?"null":typeof value;
         switch(type)
         {
            case "boolean":
            case "number":
               return value.toString();
            case "string":
               return "\"" + value.toString() + "\"";
            case "object":
               if(value is Date)
               {
                  return value.toString();
               }
               if(value is XMLNode)
               {
                  return value.toString();
               }
               if(value is Class)
               {
                  return "(" + getQualifiedClassName(value) + ")";
               }
               classInfo = getClassInfo(value,exclude,{
                  "includeReadOnly":true,
                  "uris":namespaceURIs
               });
               properties = classInfo.properties;
               str = "(" + classInfo.name + ")";
               if(refs == null)
               {
                  refs = new Dictionary(true);
               }
               try
               {
                  var_1002 = refs[value];
                  if(var_1002 != null)
                  {
                     str = str + ("#" + int(var_1002));
                     return str;
                  }
               }
               catch(e:Error)
               {
                  return String(value);
               }
               if(value != null)
               {
                  str = str + ("#" + refCount.toString());
                  refs[value] = refCount;
                  refCount++;
               }
               isArray = value is Array;
               isDict = value is Dictionary;
               indent = indent + 2;
               var_1158 = 0;
               while(var_1158 < properties.length)
               {
                  str = newline(str,indent);
                  prop = properties[var_1158];
                  if(isArray)
                  {
                     str = str + "[";
                  }
                  else if(isDict)
                  {
                     str = str + "{";
                  }
                  if(isDict)
                  {
                     str = str + internalToString(prop,indent,refs,namespaceURIs,exclude);
                  }
                  else
                  {
                     str = str + prop.toString();
                  }
                  if(isArray)
                  {
                     str = str + "] ";
                  }
                  else if(isDict)
                  {
                     str = str + "} = ";
                  }
                  else
                  {
                     str = str + " = ";
                  }
                  try
                  {
                     str = str + internalToString(value[prop],indent,refs,namespaceURIs,exclude);
                  }
                  catch(e:Error)
                  {
                     str = str + "?";
                  }
                  var_1158++;
               }
               indent = indent - 2;
               return str;
            case "xml":
               return value.toXMLString();
            default:
               return "(" + type + ")";
         }
      }
      
      private static function newline(param1:String, param2:int = 0) : String
      {
         var _loc3_:* = param1;
         _loc3_ = _loc3_ + "\n";
         var _loc4_:int = 0;
         while(_loc4_ < param2)
         {
            _loc3_ = _loc3_ + " ";
            _loc4_++;
         }
         return _loc3_;
      }
      
      private static function internalCompare(param1:Object, param2:Object, param3:int, param4:int, param5:Dictionary) : int
      {
         var _loc9_:int = 0;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc13_:* = null;
         var _loc14_:Boolean = false;
         var _loc15_:* = null;
         var _loc16_:* = null;
         var _loc17_:* = null;
         var _loc18_:int = 0;
         if(param1 == null && param2 == null)
         {
            return 0;
         }
         if(param1 == null)
         {
            return 1;
         }
         if(param2 == null)
         {
            return -1;
         }
         if(param1 is ObjectProxy)
         {
            param1 = ObjectProxy(param1).object_proxy::object;
         }
         if(param2 is ObjectProxy)
         {
            param2 = ObjectProxy(param2).object_proxy::object;
         }
         var _loc6_:* = typeof param1;
         var _loc7_:* = typeof param2;
         var _loc8_:int = 0;
         if(_loc6_ == _loc7_)
         {
            switch(_loc6_)
            {
               case "boolean":
                  _loc8_ = numericCompare(Number(param1),Number(param2));
                  break;
               case "number":
                  _loc8_ = numericCompare(param1 as Number,param2 as Number);
                  break;
               case "string":
                  _loc8_ = stringCompare(param1 as String,param2 as String);
                  break;
               case "object":
                  _loc9_ = param4 > 0?int(param4 - 1):int(param4);
                  _loc10_ = getRef(param1,param5);
                  _loc11_ = getRef(param2,param5);
                  if(_loc10_ == _loc11_)
                  {
                     return 0;
                  }
                  param5[_loc11_] = _loc10_;
                  if(param4 != -1 && param3 > param4)
                  {
                     _loc8_ = stringCompare(param1.toString(),param2.toString());
                     break;
                  }
                  if(param1 is Array && param2 is Array)
                  {
                     _loc8_ = arrayCompare(param1 as Array,param2 as Array,param3,param4,param5);
                     break;
                  }
                  if(param1 is Date && param2 is Date)
                  {
                     _loc8_ = dateCompare(param1 as Date,param2 as Date);
                     break;
                  }
                  if(param1 is IList && param2 is IList)
                  {
                     _loc8_ = listCompare(param1 as IList,param2 as IList,param3,param4,param5);
                     break;
                  }
                  if(param1 is ByteArray && param2 is ByteArray)
                  {
                     _loc8_ = byteArrayCompare(param1 as ByteArray,param2 as ByteArray);
                     break;
                  }
                  if(getQualifiedClassName(param1) == getQualifiedClassName(param2))
                  {
                     _loc12_ = getClassInfo(param1).properties;
                     _loc14_ = isDynamicObject(param1);
                     if(_loc14_)
                     {
                        _loc13_ = getClassInfo(param2).properties;
                        _loc8_ = arrayCompare(_loc12_,_loc13_,param3,_loc9_,param5);
                        if(_loc8_ != 0)
                        {
                           return _loc8_;
                        }
                     }
                     _loc18_ = 0;
                     while(_loc18_ < _loc12_.length)
                     {
                        _loc15_ = _loc12_[_loc18_];
                        _loc16_ = param1[_loc15_];
                        _loc17_ = param2[_loc15_];
                        _loc8_ = internalCompare(_loc16_,_loc17_,param3 + 1,_loc9_,param5);
                        if(_loc8_ != 0)
                        {
                           return _loc8_;
                        }
                        _loc18_++;
                     }
                     break;
                  }
                  return 1;
            }
            return _loc8_;
         }
         return stringCompare(_loc6_,_loc7_);
      }
      
      public static function getClassInfo(param1:Object, param2:Array = null, param3:Object = null) : Object
      {
         var var_324:int = 0;
         var var_49:int = 0;
         var result:Object = null;
         var cacheKey:String = null;
         var className:String = null;
         var classAlias:String = null;
         var properties:XMLList = null;
         var prop:XML = null;
         var metadataInfo:Object = null;
         var classInfo:XML = null;
         var numericIndex:Boolean = false;
         var key:* = undefined;
         var p:String = null;
         var pi:Number = NaN;
         var uris:Array = null;
         var uri:String = null;
         var qName:QName = null;
         var var_1158:int = 0;
         var var_1166:Object = param1;
         var name_22:Array = param2;
         var name_32:Object = param3;
         if(var_1166 is ObjectProxy)
         {
            var_1166 = ObjectProxy(var_1166).object_proxy::object;
         }
         if(name_32 == null)
         {
            name_32 = {
               "uris":null,
               "includeReadOnly":true,
               "includeTransient":true
            };
         }
         var propertyNames:Array = [];
         var var_1189:Boolean = false;
         if(typeof var_1166 == "xml")
         {
            className = "XML";
            properties = var_1166.text();
            if(properties.length())
            {
               propertyNames.push("package_3");
            }
            properties = var_1166.attributes();
         }
         else
         {
            classInfo = DescribeTypeCache.describeType(var_1166).typeDescription;
            className = classInfo.@name.toString();
            classAlias = classInfo.@alias.toString();
            var_1189 = classInfo.@isDynamic.toString() == "true";
            if(name_32.includeReadOnly)
            {
               properties = classInfo..accessor.(@access != "writeonly") + classInfo..variable;
            }
            else
            {
               properties = classInfo..accessor.(@access == "readwrite") + classInfo..variable;
            }
            numericIndex = false;
         }
         if(!var_1189)
         {
            cacheKey = getCacheKey(var_1166,name_22,name_32);
            result = CLASS_INFO_CACHE[cacheKey];
            if(result != null)
            {
               return result;
            }
         }
         result = {};
         result["name"] = className;
         result["alias"] = classAlias;
         result["properties"] = propertyNames;
         result["dynamic"] = var_1189;
         result["metadata"] = metadataInfo = recordMetadata(properties);
         var excludeObject:Object = {};
         if(name_22)
         {
            var_324 = name_22.length;
            var_49 = 0;
            while(var_49 < var_324)
            {
               excludeObject[name_22[var_49]] = 1;
               var_49++;
            }
         }
         var isArray:Boolean = className == "Array";
         var isDict:Boolean = className == "flash.utils::Dictionary";
         if(isDict)
         {
            for(key in var_1166)
            {
               propertyNames.push(key);
            }
         }
         else if(var_1189)
         {
            for(p in var_1166)
            {
               if(excludeObject[p] != 1)
               {
                  if(isArray)
                  {
                     pi = parseInt(p);
                     if(isNaN(pi))
                     {
                        propertyNames.push(new QName("",p));
                     }
                     else
                     {
                        propertyNames.push(pi);
                     }
                  }
                  else
                  {
                     propertyNames.push(new QName("",p));
                  }
               }
            }
            numericIndex = isArray && !isNaN(Number(p));
         }
         if(!(isArray || isDict || className == "Object"))
         {
            if(className == "XML")
            {
               var_324 = properties.length();
               var_49 = 0;
               while(var_49 < var_324)
               {
                  p = properties[var_49].name();
                  if(excludeObject[p] != 1)
                  {
                     propertyNames.push(new QName("","@" + p));
                  }
                  var_49++;
               }
            }
            else
            {
               var_324 = properties.length();
               uris = name_32.uris;
               var_49 = 0;
               while(var_49 < var_324)
               {
                  prop = properties[var_49];
                  p = prop.@name.toString();
                  uri = prop.@uri.toString();
                  if(excludeObject[p] != 1)
                  {
                     if(!(!name_32.includeTransient && internalHasMetadata(metadataInfo,p,"Transient")))
                     {
                        if(uris != null)
                        {
                           if(uris.length == 1 && uris[0] == "package_3")
                           {
                              qName = new QName(uri,p);
                              try
                              {
                                 var_1166[qName];
                                 propertyNames.push();
                              }
                              catch(e:Error)
                              {
                              }
                           }
                           else
                           {
                              var_1158 = 0;
                              while(var_1158 < uris.length)
                              {
                                 uri = uris[var_1158];
                                 if(prop.@uri.toString() == uri)
                                 {
                                    qName = new QName(uri,p);
                                    try
                                    {
                                       var_1166[qName];
                                       propertyNames.push(qName);
                                    }
                                    catch(e:Error)
                                    {
                                    }
                                 }
                                 var_1158++;
                              }
                           }
                        }
                        else if(uri.length == 0)
                        {
                           qName = new QName(uri,p);
                           try
                           {
                              var_1166[qName];
                              propertyNames.push(qName);
                           }
                           catch(e:Error)
                           {
                           }
                        }
                     }
                  }
                  var_49++;
               }
            }
         }
         propertyNames.sort(Array.CASEINSENSITIVE | (!!numericIndex?Array.NUMERIC:0));
         if(!isDict)
         {
            var_49 = 0;
            while(var_49 < propertyNames.length - 1)
            {
               if(propertyNames[var_49].toString() == propertyNames[var_49 + 1].toString())
               {
                  propertyNames.splice(var_49,1);
                  var_49--;
               }
               var_49++;
            }
         }
         if(!var_1189)
         {
            cacheKey = getCacheKey(var_1166,name_22,name_32);
            CLASS_INFO_CACHE[cacheKey] = result;
         }
         return result;
      }
      
      public static function hasMetadata(param1:Object, param2:String, param3:String, param4:Array = null, param5:Object = null) : Boolean
      {
         var _loc6_:Object = getClassInfo(param1,param4,param5);
         var _loc7_:Object = _loc6_["metadata"];
         return internalHasMetadata(_loc7_,param2,param3);
      }
      
      public static function isDynamicObject(param1:Object) : Boolean
      {
         var var_1166:Object = param1;
         try
         {
            var_1166["wootHackwoot"];
         }
         catch(e:Error)
         {
            return false;
         }
         return true;
      }
      
      private static function internalHasMetadata(param1:Object, param2:String, param3:String) : Boolean
      {
         var _loc4_:* = null;
         if(param1 != null)
         {
            _loc4_ = param1[param2];
            if(_loc4_ != null)
            {
               if(_loc4_[param3] != null)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      private static function recordMetadata(param1:XMLList) : Object
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc13_:* = null;
         var _loc14_:* = null;
         var _loc15_:* = null;
         var _loc2_:* = null;
         try
         {
            for each(_loc3_ in param1)
            {
               _loc4_ = _loc3_.attribute("name").toString();
               _loc5_ = _loc3_.metadata;
               if(_loc5_.length() > 0)
               {
                  if(_loc2_ == null)
                  {
                     _loc2_ = {};
                  }
                  _loc6_ = {};
                  _loc2_[_loc4_] = _loc6_;
                  for each(_loc7_ in _loc5_)
                  {
                     _loc8_ = _loc7_.attribute("name").toString();
                     _loc9_ = _loc7_.arg;
                     _loc10_ = {};
                     for each(_loc11_ in _loc9_)
                     {
                        _loc13_ = _loc11_.attribute("key").toString();
                        if(_loc13_ != null)
                        {
                           _loc14_ = _loc11_.attribute("value").toString();
                           _loc10_[_loc13_] = _loc14_;
                        }
                     }
                     _loc12_ = _loc6_[_loc8_];
                     if(_loc12_ != null)
                     {
                        if(_loc12_ is Array)
                        {
                           _loc15_ = _loc12_ as Array;
                        }
                        else
                        {
                           _loc15_ = [_loc12_];
                           delete _loc6_[_loc8_];
                        }
                        _loc15_.push(_loc10_);
                        _loc12_ = _loc15_;
                     }
                     else
                     {
                        _loc12_ = _loc10_;
                     }
                     _loc6_[_loc8_] = _loc12_;
                  }
               }
            }
         }
         catch(e:Error)
         {
         }
         return _loc2_;
      }
      
      private static function getCacheKey(param1:Object, param2:Array = null, param3:Object = null) : String
      {
         var _loc5_:int = 0;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc4_:String = getQualifiedClassName(param1);
         if(param2 != null)
         {
            _loc5_ = 0;
            while(_loc5_ < param2.length)
            {
               _loc6_ = param2[_loc5_] as String;
               if(_loc6_ != null)
               {
                  _loc4_ = _loc4_ + _loc6_;
               }
               _loc5_++;
            }
         }
         if(param3 != null)
         {
            for(_loc7_ in param3)
            {
               _loc4_ = _loc4_ + _loc7_;
               _loc8_ = param3[_loc7_] as String;
               if(_loc8_ != null)
               {
                  _loc4_ = _loc4_ + _loc8_;
               }
            }
         }
         return _loc4_;
      }
      
      private static function arrayCompare(param1:Array, param2:Array, param3:int, param4:int, param5:Dictionary) : int
      {
         var _loc7_:* = null;
         var _loc6_:int = 0;
         if(param1.length != param2.length)
         {
            if(param1.length < param2.length)
            {
               _loc6_ = -1;
            }
            else
            {
               _loc6_ = 1;
            }
         }
         else
         {
            for(_loc7_ in param1)
            {
               if(param2.hasOwnProperty(_loc7_))
               {
                  _loc6_ = internalCompare(param1[_loc7_],param2[_loc7_],param3,param4,param5);
                  if(_loc6_ != 0)
                  {
                     return _loc6_;
                  }
                  continue;
               }
               return -1;
            }
            for(_loc7_ in param2)
            {
               if(!param1.hasOwnProperty(_loc7_))
               {
                  return 1;
               }
            }
         }
         return _loc6_;
      }
      
      private static function byteArrayCompare(param1:ByteArray, param2:ByteArray) : int
      {
         var _loc4_:int = 0;
         var _loc3_:int = 0;
         if(param1 == param2)
         {
            return _loc3_;
         }
         if(param1.length != param2.length)
         {
            if(param1.length < param2.length)
            {
               _loc3_ = -1;
            }
            else
            {
               _loc3_ = 1;
            }
         }
         else
         {
            _loc4_ = 0;
            while(_loc4_ < param1.length)
            {
               _loc3_ = numericCompare(param1[_loc4_],param2[_loc4_]);
               if(_loc3_ != 0)
               {
                  _loc4_ = param1.length;
               }
               _loc4_++;
            }
         }
         return _loc3_;
      }
      
      private static function listCompare(param1:IList, param2:IList, param3:int, param4:int, param5:Dictionary) : int
      {
         var _loc7_:int = 0;
         var _loc6_:int = 0;
         if(param1.length != param2.length)
         {
            if(param1.length < param2.length)
            {
               _loc6_ = -1;
            }
            else
            {
               _loc6_ = 1;
            }
         }
         else
         {
            _loc7_ = 0;
            while(_loc7_ < param1.length)
            {
               _loc6_ = internalCompare(param1.getItemAt(_loc7_),param2.getItemAt(_loc7_),param3 + 1,param4,param5);
               if(_loc6_ != 0)
               {
                  _loc7_ = param1.length;
               }
               _loc7_++;
            }
         }
         return _loc6_;
      }
      
      private static function getRef(param1:Object, param2:Dictionary) : Object
      {
         var _loc3_:Object = param2[param1];
         while(_loc3_ && _loc3_ != param2[_loc3_])
         {
            _loc3_ = param2[_loc3_];
         }
         if(!_loc3_)
         {
            _loc3_ = param1;
         }
         if(_loc3_ != param2[param1])
         {
            param2[param1] = _loc3_;
         }
         return _loc3_;
      }
   }
}
