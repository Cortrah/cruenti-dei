package model.genVo{

	import model.genVo.*;
	import model.IModelObject;
	import model.DeltaPacket;

	[Bindable]
	public dynamic class LocationsVo implements IModelObject{

		private var _id:int;
		private var _name:String;
		private var _regionId:int;
		private var _realmId:int;
		private var _isSecret:int;

		public function LocationsVo( id:int=0,
			name:String='',
			regionId:int=0,
			realmId:int=0,
			isSecret:int=0) {

				_id=id;
				_name=name;
				_regionId=regionId;
				_realmId=realmId;
				_isSecret=isSecret;
		}

		public function getId():int{
			return _id;
		}

		public function get id():int {
			return _id;
		}
		public function get name():String {
			return _name;
		}
		public function get regionId():int {
			return _regionId;
		}
		public function get realmId():int {
			return _realmId;
		}
		public function get isSecret():int {
			return _isSecret;
		}

		public function set id(value:int):void {
			_id= value;
		}
		public function set name(value:String):void {
			_name= value;
		}
		public function set regionId(value:int):void {
			_regionId= value;
		}
		public function set realmId(value:int):void {
			_realmId= value;
		}
		public function set isSecret(value:int):void {
			_isSecret= value;
		}

		public function getAsXMLString():String {
			var x:XML = <LocationsVo/>;
			x.@id = _id;
			x.@name = _name;
			x.@regionId = _regionId;
			x.@realmId = _realmId;
			x.@isSecret = _isSecret;
			return x.toXMLString();
		}

		public function getAsSubsetXMLString(omitProperties:Array):String {
			var x:XML = <LocationsVo/>;
           if(!contains(omitProperties, 'id')){
			    x.@id = _id;
           }
           if(!contains(omitProperties, 'name')){
			    x.@name = _name;
           }
           if(!contains(omitProperties, 'regionId')){
			    x.@regionId = _regionId;
           }
           if(!contains(omitProperties, 'realmId')){
			    x.@realmId = _realmId;
           }
           if(!contains(omitProperties, 'isSecret')){
			    x.@isSecret = _isSecret;
           }
			return x.toXMLString();
		}

		public function setFromXMLAttributes(x:XML):void {
			_id = x.@id;
			_name = x.@name;
			_regionId = x.@regionId;
			_realmId = x.@realmId;
			_isSecret = x.@isSecret;
		}

		public function setFromXMLElements(x:XML):void {
			_id = Number(x.id.toString());
			_name = x.name.toString();
			_regionId = Number(x.region_id.toString());
			_realmId = Number(x.realm_id.toString());
			_isSecret = Number(x.is_secret.toString());
		}

		public function setFromCamelCaseObj(o:Object):void {
			_id = o.id;
			_name = o.name;
			_regionId = o.regionId;
			_realmId = o.realmId;
			_isSecret = o.isSecret;
		}

		public function setFromObj(o:Object):void {
			_id = o.id;
			_name = o.name;
			_regionId = o.region_id;
			_realmId = o.realm_id;
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
			var tableName:String = 'locations';
			var sortClause:String = '';

			sqlString = 'UPDATE locations SET ' + 
				'name = "'+name.toString()+'", ' + 
				'region_id = "'+regionId.toString()+'", ' + 
				'realm_id = "'+realmId.toString()+'", ' + 
				'is_secret = "'+isSecret.toString()+'" ' + 
				'WHERE id='+id.toString()+';'; 
			return sqlString;
		}
	}
}
