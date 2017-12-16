package model.genVo{

	import model.genVo.*;
	import model.IModelObject;
	import model.DeltaPacket;

	[Bindable]
	public dynamic class SpellsreligionsVo implements IModelObject{

		private var _id:int;
		private var _spelltypeId:int;
		private var _realmId:int;

		public function SpellsreligionsVo( id:int=0,
			spelltypeId:int=0,
			realmId:int=0) {

				_id=id;
				_spelltypeId=spelltypeId;
				_realmId=realmId;
		}

		public function getId():int{
			return _id;
		}

		public function get id():int {
			return _id;
		}
		public function get spelltypeId():int {
			return _spelltypeId;
		}
		public function get realmId():int {
			return _realmId;
		}

		public function set id(value:int):void {
			_id= value;
		}
		public function set spelltypeId(value:int):void {
			_spelltypeId= value;
		}
		public function set realmId(value:int):void {
			_realmId= value;
		}

		public function getAsXMLString():String {
			var x:XML = <SpellsreligionsVo/>;
			x.@id = _id;
			x.@spelltypeId = _spelltypeId;
			x.@realmId = _realmId;
			return x.toXMLString();
		}

		public function getAsSubsetXMLString(omitProperties:Array):String {
			var x:XML = <SpellsreligionsVo/>;
           if(!contains(omitProperties, 'id')){
			    x.@id = _id;
           }
           if(!contains(omitProperties, 'spelltypeId')){
			    x.@spelltypeId = _spelltypeId;
           }
           if(!contains(omitProperties, 'realmId')){
			    x.@realmId = _realmId;
           }
			return x.toXMLString();
		}

		public function setFromXMLAttributes(x:XML):void {
			_id = x.@id;
			_spelltypeId = x.@spelltypeId;
			_realmId = x.@realmId;
		}

		public function setFromXMLElements(x:XML):void {
			_id = Number(x.id.toString());
			_spelltypeId = Number(x.spelltype_id.toString());
			_realmId = Number(x.realm_id.toString());
		}

		public function setFromCamelCaseObj(o:Object):void {
			_id = o.id;
			_spelltypeId = o.spelltypeId;
			_realmId = o.realmId;
		}

		public function setFromObj(o:Object):void {
			_id = o.id;
			_spelltypeId = o.spelltype_id;
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
			var tableName:String = 'spellsreligions';
			var sortClause:String = '';

			sqlString = 'UPDATE spellsreligions SET ' + 
				'spelltype_id = '+spelltypeId.toString()+', ' + 
				'realm_id = '+realmId.toString()+' ' + 
				'WHERE id='+id.toString()+';'; 
			return sqlString;
		}
	}
}
