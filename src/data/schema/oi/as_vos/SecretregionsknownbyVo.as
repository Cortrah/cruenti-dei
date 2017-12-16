package model.genVo{

	import model.genVo.*;
	import model.IModelObject;
	import model.DeltaPacket;

	[Bindable]
	public dynamic class SecretregionsknownbyVo implements IModelObject{

		private var _id:int;
		private var _regionId:int;
		private var _realmId:int;

		public function SecretregionsknownbyVo( id:int=0,
			regionId:int=0,
			realmId:int=0) {

				_id=id;
				_regionId=regionId;
				_realmId=realmId;
		}

		public function getId():int{
			return _id;
		}

		public function get id():int {
			return _id;
		}
		public function get regionId():int {
			return _regionId;
		}
		public function get realmId():int {
			return _realmId;
		}

		public function set id(value:int):void {
			_id= value;
		}
		public function set regionId(value:int):void {
			_regionId= value;
		}
		public function set realmId(value:int):void {
			_realmId= value;
		}

		public function getAsXMLString():String {
			var x:XML = <SecretregionsknownbyVo/>;
			x.@id = _id;
			x.@regionId = _regionId;
			x.@realmId = _realmId;
			return x.toXMLString();
		}

		public function getAsSubsetXMLString(omitProperties:Array):String {
			var x:XML = <SecretregionsknownbyVo/>;
           if(!contains(omitProperties, 'id')){
			    x.@id = _id;
           }
           if(!contains(omitProperties, 'regionId')){
			    x.@regionId = _regionId;
           }
           if(!contains(omitProperties, 'realmId')){
			    x.@realmId = _realmId;
           }
			return x.toXMLString();
		}

		public function setFromXMLAttributes(x:XML):void {
			_id = x.@id;
			_regionId = x.@regionId;
			_realmId = x.@realmId;
		}

		public function setFromXMLElements(x:XML):void {
			_id = Number(x.id.toString());
			_regionId = Number(x.region_id.toString());
			_realmId = Number(x.realm_id.toString());
		}

		public function setFromCamelCaseObj(o:Object):void {
			_id = o.id;
			_regionId = o.regionId;
			_realmId = o.realmId;
		}

		public function setFromObj(o:Object):void {
			_id = o.id;
			_regionId = o.region_id;
			_realmId = o.realm_id;
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
			var tableName:String = 'secretregionsknownby';
			var sortClause:String = '';

			sqlString = 'UPDATE secretregionsknownby SET ' + 
				'region_id = '+regionId.toString()+', ' + 
				'realm_id = '+realmId.toString()+' ' + 
				'WHERE id='+id.toString()+';'; 
			return sqlString;
		}
	}
}
