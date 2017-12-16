package model.genVo{

	import model.genVo.*;
	import model.IModelObject;
	import model.DeltaPacket;

	[Bindable]
	public dynamic class SecretunittypesknownbyVo implements IModelObject{

		private var _id:int;
		private var _realmId:int;
		private var _unittypeId:int;

		public function SecretunittypesknownbyVo( id:int=0,
			realmId:int=0,
			unittypeId:int=0) {

				_id=id;
				_realmId=realmId;
				_unittypeId=unittypeId;
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
		public function get unittypeId():int {
			return _unittypeId;
		}

		public function set id(value:int):void {
			_id= value;
		}
		public function set realmId(value:int):void {
			_realmId= value;
		}
		public function set unittypeId(value:int):void {
			_unittypeId= value;
		}

		public function getAsXMLString():String {
			var x:XML = <SecretunittypesknownbyVo/>;
			x.@id = _id;
			x.@realmId = _realmId;
			x.@unittypeId = _unittypeId;
			return x.toXMLString();
		}

		public function getAsSubsetXMLString(omitProperties:Array):String {
			var x:XML = <SecretunittypesknownbyVo/>;
           if(!contains(omitProperties, 'id')){
			    x.@id = _id;
           }
           if(!contains(omitProperties, 'realmId')){
			    x.@realmId = _realmId;
           }
           if(!contains(omitProperties, 'unittypeId')){
			    x.@unittypeId = _unittypeId;
           }
			return x.toXMLString();
		}

		public function setFromXMLAttributes(x:XML):void {
			_id = x.@id;
			_realmId = x.@realmId;
			_unittypeId = x.@unittypeId;
		}

		public function setFromXMLElements(x:XML):void {
			_id = Number(x.id.toString());
			_realmId = Number(x.realm_id.toString());
			_unittypeId = Number(x.unittype_id.toString());
		}

		public function setFromCamelCaseObj(o:Object):void {
			_id = o.id;
			_realmId = o.realmId;
			_unittypeId = o.unittypeId;
		}

		public function setFromObj(o:Object):void {
			_id = o.id;
			_realmId = o.realm_id;
			_unittypeId = o.unittype_id;
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
			var tableName:String = 'secretunittypesknownby';
			var sortClause:String = '';

			sqlString = 'UPDATE secretunittypesknownby SET ' + 
				'realm_id = '+realmId.toString()+', ' + 
				'unittype_id = '+unittypeId.toString()+' ' + 
				'WHERE id='+id.toString()+';'; 
			return sqlString;
		}
	}
}
