package model.genVo{

	import model.genVo.*;
	import model.IModelObject;
	import model.DeltaPacket;

	[Bindable]
	public dynamic class SecretminormapsknownbyVo implements IModelObject{

		private var _id:int;
		private var _minormapId:int;
		private var _realmId:int;

		public function SecretminormapsknownbyVo( id:int=0,
			minormapId:int=0,
			realmId:int=0) {

				_id=id;
				_minormapId=minormapId;
				_realmId=realmId;
		}

		public function getId():int{
			return _id;
		}

		public function get id():int {
			return _id;
		}
		public function get minormapId():int {
			return _minormapId;
		}
		public function get realmId():int {
			return _realmId;
		}

		public function set id(value:int):void {
			_id= value;
		}
		public function set minormapId(value:int):void {
			_minormapId= value;
		}
		public function set realmId(value:int):void {
			_realmId= value;
		}

		public function getAsXMLString():String {
			var x:XML = <SecretminormapsknownbyVo/>;
			x.@id = _id;
			x.@minormapId = _minormapId;
			x.@realmId = _realmId;
			return x.toXMLString();
		}

		public function getAsSubsetXMLString(omitProperties:Array):String {
			var x:XML = <SecretminormapsknownbyVo/>;
           if(!contains(omitProperties, 'id')){
			    x.@id = _id;
           }
           if(!contains(omitProperties, 'minormapId')){
			    x.@minormapId = _minormapId;
           }
           if(!contains(omitProperties, 'realmId')){
			    x.@realmId = _realmId;
           }
			return x.toXMLString();
		}

		public function setFromXMLAttributes(x:XML):void {
			_id = x.@id;
			_minormapId = x.@minormapId;
			_realmId = x.@realmId;
		}

		public function setFromXMLElements(x:XML):void {
			_id = Number(x.id.toString());
			_minormapId = Number(x.minormap_id.toString());
			_realmId = Number(x.realm_id.toString());
		}

		public function setFromCamelCaseObj(o:Object):void {
			_id = o.id;
			_minormapId = o.minormapId;
			_realmId = o.realmId;
		}

		public function setFromObj(o:Object):void {
			_id = o.id;
			_minormapId = o.minormap_id;
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
			var tableName:String = 'secretminormapsknownby';
			var sortClause:String = '';

			sqlString = 'UPDATE secretminormapsknownby SET ' + 
				'minormap_id = '+minormapId.toString()+', ' + 
				'realm_id = '+realmId.toString()+' ' + 
				'WHERE id='+id.toString()+';'; 
			return sqlString;
		}
	}
}
