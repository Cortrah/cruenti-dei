package model.genVo{

	import model.genVo.*;
	import model.IModelObject;
	import model.DeltaPacket;

	[Bindable]
	public dynamic class RegionsfeaturesVo implements IModelObject{

		private var _id:int;
		private var _featuretypeId:int;
		private var _regionId:int;
		private var _displaySymbol:int;
		private var _displayX:int;
		private var _displayY:int;
		private var _name:String;
		private var _isSecret:int;

		public function RegionsfeaturesVo( id:int=0,
			featuretypeId:int=0,
			regionId:int=0,
			displaySymbol:int=0,
			displayX:int=0,
			displayY:int=0,
			name:String='',
			isSecret:int=0) {

				_id=id;
				_featuretypeId=featuretypeId;
				_regionId=regionId;
				_displaySymbol=displaySymbol;
				_displayX=displayX;
				_displayY=displayY;
				_name=name;
				_isSecret=isSecret;
		}

		public function getId():int{
			return _id;
		}

		public function get id():int {
			return _id;
		}
		public function get featuretypeId():int {
			return _featuretypeId;
		}
		public function get regionId():int {
			return _regionId;
		}
		public function get displaySymbol():int {
			return _displaySymbol;
		}
		public function get displayX():int {
			return _displayX;
		}
		public function get displayY():int {
			return _displayY;
		}
		public function get name():String {
			return _name;
		}
		public function get isSecret():int {
			return _isSecret;
		}

		public function set id(value:int):void {
			_id= value;
		}
		public function set featuretypeId(value:int):void {
			_featuretypeId= value;
		}
		public function set regionId(value:int):void {
			_regionId= value;
		}
		public function set displaySymbol(value:int):void {
			_displaySymbol= value;
		}
		public function set displayX(value:int):void {
			_displayX= value;
		}
		public function set displayY(value:int):void {
			_displayY= value;
		}
		public function set name(value:String):void {
			_name= value;
		}
		public function set isSecret(value:int):void {
			_isSecret= value;
		}

		public function getAsXMLString():String {
			var x:XML = <RegionsfeaturesVo/>;
			x.@id = _id;
			x.@featuretypeId = _featuretypeId;
			x.@regionId = _regionId;
			x.@displaySymbol = _displaySymbol;
			x.@displayX = _displayX;
			x.@displayY = _displayY;
			x.@name = _name;
			x.@isSecret = _isSecret;
			return x.toXMLString();
		}

		public function getAsSubsetXMLString(omitProperties:Array):String {
			var x:XML = <RegionsfeaturesVo/>;
           if(!contains(omitProperties, 'id')){
			    x.@id = _id;
           }
           if(!contains(omitProperties, 'featuretypeId')){
			    x.@featuretypeId = _featuretypeId;
           }
           if(!contains(omitProperties, 'regionId')){
			    x.@regionId = _regionId;
           }
           if(!contains(omitProperties, 'displaySymbol')){
			    x.@displaySymbol = _displaySymbol;
           }
           if(!contains(omitProperties, 'displayX')){
			    x.@displayX = _displayX;
           }
           if(!contains(omitProperties, 'displayY')){
			    x.@displayY = _displayY;
           }
           if(!contains(omitProperties, 'name')){
			    x.@name = _name;
           }
           if(!contains(omitProperties, 'isSecret')){
			    x.@isSecret = _isSecret;
           }
			return x.toXMLString();
		}

		public function setFromXMLAttributes(x:XML):void {
			_id = x.@id;
			_featuretypeId = x.@featuretypeId;
			_regionId = x.@regionId;
			_displaySymbol = x.@displaySymbol;
			_displayX = x.@displayX;
			_displayY = x.@displayY;
			_name = x.@name;
			_isSecret = x.@isSecret;
		}

		public function setFromXMLElements(x:XML):void {
			_id = Number(x.id.toString());
			_featuretypeId = Number(x.featuretype_id.toString());
			_regionId = Number(x.region_id.toString());
			_displaySymbol = Number(x.display_symbol.toString());
			_displayX = Number(x.display_x.toString());
			_displayY = Number(x.display_y.toString());
			_name = x.name.toString();
			_isSecret = Number(x.is_secret.toString());
		}

		public function setFromCamelCaseObj(o:Object):void {
			_id = o.id;
			_featuretypeId = o.featuretypeId;
			_regionId = o.regionId;
			_displaySymbol = o.displaySymbol;
			_displayX = o.displayX;
			_displayY = o.displayY;
			_name = o.name;
			_isSecret = o.isSecret;
		}

		public function setFromObj(o:Object):void {
			_id = o.id;
			_featuretypeId = o.featuretype_id;
			_regionId = o.region_id;
			_displaySymbol = o.display_symbol;
			_displayX = o.display_x;
			_displayY = o.display_y;
			_name = o.name;
			_isSecret = o.is_secret;
		}

		public function getDeltaPacket(modelObject:IModelObject):DeltaPacket {
           return new DeltaPacket();
		}

		public function contains(propertyArray:Array, s:String) {
           var i = propertyArray.length;
           while (i--) {
               if (propertyArray[i] === s) {
                   return true;
               }
           }
		    return false;
		}

		public function matchesId(id:int):Boolean {
			if(_id == id){
				return true;
			} else {
				return false;
			}
		}

		public function getSaveSql():String{
			var sqlString:String = '';
			var tableName:String = 'regionsfeatures';
			var sortClause:String = '';

			sqlString = 'UPDATE regionsfeatures SET ' + 
				'featuretype_id = '+featuretypeId.toString()+', ' + 
				'region_id = '+regionId.toString()+', ' + 
				'display_symbol = '+displaySymbol.toString()+', ' + 
				'display_x = '+displayX.toString()+', ' + 
				'display_y = '+displayY.toString()+', ' + 
				'name = "'+name.toString()+'", ' + 
				'is_secret = "'+isSecret.toString()+'" ' + 
				'WHERE id='+id.toString()+';'; 
			return sqlString;
		}
	}
}
