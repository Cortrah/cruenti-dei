package model.genVo{

	import model.genVo.*;
	import model.IModelObject;
	import model.DeltaPacket;

	[Bindable]
	public dynamic class SecretlocationsknownbyVo implements IModelObject{

		private var _id:int;
		private var _realmId:int;
		private var _locationId:int;

		public function SecretlocationsknownbyVo( id:int=0,
			realmId:int=0,
			locationId:int=0) {

				_id=id;
				_realmId=realmId;
				_locationId=locationId;
		}

		public function getId():int{
			return _id;
		}

		public function get id():int {
			return _id;
		}
		public function get realmId():int {
			return _realmId;
		}
		public function get locationId():int {
			return _locationId;
		}

		public function set id(value:int):void {
			_id= value;
		}
		public function set realmId(value:int):void {
			_realmId= value;
		}
		public function set locationId(value:int):void {
			_locationId= value;
		}

		public function getAsXMLString():String {
			var x:XML = <SecretlocationsknownbyVo/>;
			x.@id = _id;
			x.@realmId = _realmId;
			x.@locationId = _locationId;
			return x.toXMLString();
		}

		public function getAsSubsetXMLString(omitProperties:Array):String {
			var x:XML = <SecretlocationsknownbyVo/>;
           if(!contains(omitProperties, 'id')){
			    x.@id = _id;
           }
           if(!contains(omitProperties, 'realmId')){
			    x.@realmId = _realmId;
           }
           if(!contains(omitProperties, 'locationId')){
			    x.@locationId = _locationId;
           }
			return x.toXMLString();
		}

		public function setFromXMLAttributes(x:XML):void {
			_id = x.@id;
			_realmId = x.@realmId;
			_locationId = x.@locationId;
		}

		public function setFromXMLElements(x:XML):void {
			_id = Number(x.id.toString());
			_realmId = Number(x.realm_id.toString());
			_locationId = Number(x.location_id.toString());
		}

		public function setFromCamelCaseObj(o:Object):void {
			_id = o.id;
			_realmId = o.realmId;
			_locationId = o.locationId;
		}

		public function setFromObj(o:Object):void {
			_id = o.id;
			_realmId = o.realm_id;
			_locationId = o.location_id;
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
			var tableName:String = 'secretlocationsknownby';
			var sortClause:String = '';

			sqlString = 'UPDATE secretlocationsknownby SET ' + 
				'realm_id = '+realmId.toString()+', ' + 
				'location_id = '+locationId.toString()+' ' + 
				'WHERE id='+id.toString()+';'; 
			return sqlString;
		}
	}
}
