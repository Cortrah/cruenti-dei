package model.genVo{

	import model.genVo.*;
	import model.IModelObject;
	import model.DeltaPacket;

	[Bindable]
	public dynamic class UnittypesbuildlocationtypesVo implements IModelObject{

		private var _id:int;
		private var _unittypesId:int;
		private var _buildlocationtypesId:int;

		public function UnittypesbuildlocationtypesVo( id:int=0,
			unittypesId:int=0,
			buildlocationtypesId:int=0) {

				_id=id;
				_unittypesId=unittypesId;
				_buildlocationtypesId=buildlocationtypesId;
		}

		public function getId():int{
			return _id;
		}

		public function get id():int {
			return _id;
		}
		public function get unittypesId():int {
			return _unittypesId;
		}
		public function get buildlocationtypesId():int {
			return _buildlocationtypesId;
		}

		public function set id(value:int):void {
			_id= value;
		}
		public function set unittypesId(value:int):void {
			_unittypesId= value;
		}
		public function set buildlocationtypesId(value:int):void {
			_buildlocationtypesId= value;
		}

		public function getAsXMLString():String {
			var x:XML = <UnittypesbuildlocationtypesVo/>;
			x.@id = _id;
			x.@unittypesId = _unittypesId;
			x.@buildlocationtypesId = _buildlocationtypesId;
			return x.toXMLString();
		}

		public function getAsSubsetXMLString(omitProperties:Array):String {
			var x:XML = <UnittypesbuildlocationtypesVo/>;
           if(!contains(omitProperties, 'id')){
			    x.@id = _id;
           }
           if(!contains(omitProperties, 'unittypesId')){
			    x.@unittypesId = _unittypesId;
           }
           if(!contains(omitProperties, 'buildlocationtypesId')){
			    x.@buildlocationtypesId = _buildlocationtypesId;
           }
			return x.toXMLString();
		}

		public function setFromXMLAttributes(x:XML):void {
			_id = x.@id;
			_unittypesId = x.@unittypesId;
			_buildlocationtypesId = x.@buildlocationtypesId;
		}

		public function setFromXMLElements(x:XML):void {
			_id = Number(x.id.toString());
			_unittypesId = Number(x.unittypes_id.toString());
			_buildlocationtypesId = Number(x.buildlocationtypes_id.toString());
		}

		public function setFromCamelCaseObj(o:Object):void {
			_id = o.id;
			_unittypesId = o.unittypesId;
			_buildlocationtypesId = o.buildlocationtypesId;
		}

		public function setFromObj(o:Object):void {
			_id = o.id;
			_unittypesId = o.unittypes_id;
			_buildlocationtypesId = o.buildlocationtypes_id;
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
			var tableName:String = 'unittypesbuildlocationtypes';
			var sortClause:String = '';

			sqlString = 'UPDATE unittypesbuildlocationtypes SET ' + 
				'unittypes_id = '+unittypesId.toString()+', ' + 
				'buildlocationtypes_id = '+buildlocationtypesId.toString()+' ' + 
				'WHERE id='+id.toString()+';'; 
			return sqlString;
		}
	}
}
