package model.genVo{

	import model.genVo.*;
	import model.IModelObject;
	import model.DeltaPacket;

	[Bindable]
	public dynamic class SecretconstructsknownbyVo implements IModelObject{

		private var _id:int;
		private var _realmId:int;
		private var _constructId:int;

		public function SecretconstructsknownbyVo( id:int=0,
			realmId:int=0,
			constructId:int=0) {

				_id=id;
				_realmId=realmId;
				_constructId=constructId;
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
		public function get constructId():int {
			return _constructId;
		}

		public function set id(value:int):void {
			_id= value;
		}
		public function set realmId(value:int):void {
			_realmId= value;
		}
		public function set constructId(value:int):void {
			_constructId= value;
		}

		public function getAsXMLString():String {
			var x:XML = <SecretconstructsknownbyVo/>;
			x.@id = _id;
			x.@realmId = _realmId;
			x.@constructId = _constructId;
			return x.toXMLString();
		}

		public function getAsSubsetXMLString(omitProperties:Array):String {
			var x:XML = <SecretconstructsknownbyVo/>;
           if(!contains(omitProperties, 'id')){
			    x.@id = _id;
           }
           if(!contains(omitProperties, 'realmId')){
			    x.@realmId = _realmId;
           }
           if(!contains(omitProperties, 'constructId')){
			    x.@constructId = _constructId;
           }
			return x.toXMLString();
		}

		public function setFromXMLAttributes(x:XML):void {
			_id = x.@id;
			_realmId = x.@realmId;
			_constructId = x.@constructId;
		}

		public function setFromXMLElements(x:XML):void {
			_id = Number(x.id.toString());
			_realmId = Number(x.realm_id.toString());
			_constructId = Number(x.construct_id.toString());
		}

		public function setFromCamelCaseObj(o:Object):void {
			_id = o.id;
			_realmId = o.realmId;
			_constructId = o.constructId;
		}

		public function setFromObj(o:Object):void {
			_id = o.id;
			_realmId = o.realm_id;
			_constructId = o.construct_id;
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
			var tableName:String = 'secretconstructsknownby';
			var sortClause:String = '';

			sqlString = 'UPDATE secretconstructsknownby SET ' + 
				'realm_id = '+realmId.toString()+', ' + 
				'construct_id = '+constructId.toString()+' ' + 
				'WHERE id='+id.toString()+';'; 
			return sqlString;
		}
	}
}
