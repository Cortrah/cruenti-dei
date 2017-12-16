package model.genVo{

	import model.genVo.*;
	import model.IModelObject;
	import model.DeltaPacket;

	[Bindable]
	public dynamic class ProvincesVo implements IModelObject{

		private var _id:int;
		private var _name:String;

		public function ProvincesVo( id:int=0,
			name:String='') {

				_id=id;
				_name=name;
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

		public function set id(value:int):void {
			_id= value;
		}
		public function set name(value:String):void {
			_name= value;
		}

		public function getAsXMLString():String {
			var x:XML = <ProvincesVo/>;
			x.@id = _id;
			x.@name = _name;
			return x.toXMLString();
		}

		public function getAsSubsetXMLString(omitProperties:Array):String {
			var x:XML = <ProvincesVo/>;
           if(!contains(omitProperties, 'id')){
			    x.@id = _id;
           }
           if(!contains(omitProperties, 'name')){
			    x.@name = _name;
           }
			return x.toXMLString();
		}

		public function setFromXMLAttributes(x:XML):void {
			_id = x.@id;
			_name = x.@name;
		}

		public function setFromXMLElements(x:XML):void {
			_id = Number(x.id.toString());
			_name = x.name.toString();
		}

		public function setFromCamelCaseObj(o:Object):void {
			_id = o.id;
			_name = o.name;
		}

		public function setFromObj(o:Object):void {
			_id = o.id;
			_name = o.name;
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
			var tableName:String = 'provinces';
			var sortClause:String = '';

			sqlString = 'UPDATE provinces SET ' + 
				'name = "'+name.toString()+'" ' + 
				'WHERE id='+id.toString()+';'; 
			return sqlString;
		}
	}
}
