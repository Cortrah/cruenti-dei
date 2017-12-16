package model.genVo{

	import model.genVo.*;
	import model.IModelObject;
	import model.DeltaPacket;

	[Bindable]
	public dynamic class DbinfoVo implements IModelObject{

		private var _id:int;
		private var _version:int;

		public function DbinfoVo( id:int=0,
			version:int=0) {

				_id=id;
				_version=version;
		}

		public function getId():int{
			return _id;
		}

		public function get id():int {
			return _id;
		}
		public function get version():int {
			return _version;
		}

		public function set id(value:int):void {
			_id= value;
		}
		public function set version(value:int):void {
			_version= value;
		}

		public function getAsXMLString():String {
			var x:XML = <DbinfoVo/>;
			x.@id = _id;
			x.@version = _version;
			return x.toXMLString();
		}

		public function getAsSubsetXMLString(omitProperties:Array):String {
			var x:XML = <DbinfoVo/>;
           if(!contains(omitProperties, 'id')){
			    x.@id = _id;
           }
           if(!contains(omitProperties, 'version')){
			    x.@version = _version;
           }
			return x.toXMLString();
		}

		public function setFromXMLAttributes(x:XML):void {
			_id = x.@id;
			_version = x.@version;
		}

		public function setFromXMLElements(x:XML):void {
			_id = Number(x.id.toString());
			_version = Number(x.version.toString());
		}

		public function setFromCamelCaseObj(o:Object):void {
			_id = o.id;
			_version = o.version;
		}

		public function setFromObj(o:Object):void {
			_id = o.id;
			_version = o.version;
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
			var tableName:String = 'dbinfo';
			var sortClause:String = '';

			sqlString = 'UPDATE dbinfo SET ' + 
				'version = '+version.toString()+' ' + 
				'WHERE id='+id.toString()+';'; 
			return sqlString;
		}
	}
}
