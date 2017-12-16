package model.genVo{

	import model.genVo.*;
	import model.IModelObject;
	import model.DeltaPacket;

	[Bindable]
	public dynamic class SecretregionsbordersknownbyVo implements IModelObject{

		private var _id:int;
		private var _regionsbordersId:int;
		private var _realmId:int;

		public function SecretregionsbordersknownbyVo( id:int=0,
			regionsbordersId:int=0,
			realmId:int=0) {

				_id=id;
				_regionsbordersId=regionsbordersId;
				_realmId=realmId;
		}

		public function getId():int{
			return _id;
		}

		public function get id():int {
			return _id;
		}
		public function get regionsbordersId():int {
			return _regionsbordersId;
		}
		public function get realmId():int {
			return _realmId;
		}

		public function set id(value:int):void {
			_id= value;
		}
		public function set regionsbordersId(value:int):void {
			_regionsbordersId= value;
		}
		public function set realmId(value:int):void {
			_realmId= value;
		}

		public function getAsXMLString():String {
			var x:XML = <SecretregionsbordersknownbyVo/>;
			x.@id = _id;
			x.@regionsbordersId = _regionsbordersId;
			x.@realmId = _realmId;
			return x.toXMLString();
		}

		public function getAsSubsetXMLString(omitProperties:Array):String {
			var x:XML = <SecretregionsbordersknownbyVo/>;
           if(!contains(omitProperties, 'id')){
			    x.@id = _id;
           }
           if(!contains(omitProperties, 'regionsbordersId')){
			    x.@regionsbordersId = _regionsbordersId;
           }
           if(!contains(omitProperties, 'realmId')){
			    x.@realmId = _realmId;
           }
			return x.toXMLString();
		}

		public function setFromXMLAttributes(x:XML):void {
			_id = x.@id;
			_regionsbordersId = x.@regionsbordersId;
			_realmId = x.@realmId;
		}

		public function setFromXMLElements(x:XML):void {
			_id = Number(x.id.toString());
			_regionsbordersId = Number(x.regionsborders_id.toString());
			_realmId = Number(x.realm_id.toString());
		}

		public function setFromCamelCaseObj(o:Object):void {
			_id = o.id;
			_regionsbordersId = o.regionsbordersId;
			_realmId = o.realmId;
		}

		public function setFromObj(o:Object):void {
			_id = o.id;
			_regionsbordersId = o.regionsborders_id;
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
			var tableName:String = 'secretregionsbordersknownby';
			var sortClause:String = '';

			sqlString = 'UPDATE secretregionsbordersknownby SET ' + 
				'regionsborders_id = '+regionsbordersId.toString()+', ' + 
				'realm_id = '+realmId.toString()+' ' + 
				'WHERE id='+id.toString()+';'; 
			return sqlString;
		}
	}
}
