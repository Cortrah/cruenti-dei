package model.genVo{

	import model.genVo.*;
	import model.IModelObject;
	import model.DeltaPacket;

	[Bindable]
	public dynamic class SecretregionsfeaturesknownbyVo implements IModelObject{

		private var _id:int;
		private var _regionsfeatureId:int;
		private var _realmId:int;

		public function SecretregionsfeaturesknownbyVo( id:int=0,
			regionsfeatureId:int=0,
			realmId:int=0) {

				_id=id;
				_regionsfeatureId=regionsfeatureId;
				_realmId=realmId;
		}

		public function getId():int{
			return _id;
		}

		public function get id():int {
			return _id;
		}
		public function get regionsfeatureId():int {
			return _regionsfeatureId;
		}
		public function get realmId():int {
			return _realmId;
		}

		public function set id(value:int):void {
			_id= value;
		}
		public function set regionsfeatureId(value:int):void {
			_regionsfeatureId= value;
		}
		public function set realmId(value:int):void {
			_realmId= value;
		}

		public function getAsXMLString():String {
			var x:XML = <SecretregionsfeaturesknownbyVo/>;
			x.@id = _id;
			x.@regionsfeatureId = _regionsfeatureId;
			x.@realmId = _realmId;
			return x.toXMLString();
		}

		public function getAsSubsetXMLString(omitProperties:Array):String {
			var x:XML = <SecretregionsfeaturesknownbyVo/>;
           if(!contains(omitProperties, 'id')){
			    x.@id = _id;
           }
           if(!contains(omitProperties, 'regionsfeatureId')){
			    x.@regionsfeatureId = _regionsfeatureId;
           }
           if(!contains(omitProperties, 'realmId')){
			    x.@realmId = _realmId;
           }
			return x.toXMLString();
		}

		public function setFromXMLAttributes(x:XML):void {
			_id = x.@id;
			_regionsfeatureId = x.@regionsfeatureId;
			_realmId = x.@realmId;
		}

		public function setFromXMLElements(x:XML):void {
			_id = Number(x.id.toString());
			_regionsfeatureId = Number(x.regionsfeature_id.toString());
			_realmId = Number(x.realm_id.toString());
		}

		public function setFromCamelCaseObj(o:Object):void {
			_id = o.id;
			_regionsfeatureId = o.regionsfeatureId;
			_realmId = o.realmId;
		}

		public function setFromObj(o:Object):void {
			_id = o.id;
			_regionsfeatureId = o.regionsfeature_id;
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
			var tableName:String = 'secretregionsfeaturesknownby';
			var sortClause:String = '';

			sqlString = 'UPDATE secretregionsfeaturesknownby SET ' + 
				'regionsfeature_id = '+regionsfeatureId.toString()+', ' + 
				'realm_id = '+realmId.toString()+' ' + 
				'WHERE id='+id.toString()+';'; 
			return sqlString;
		}
	}
}