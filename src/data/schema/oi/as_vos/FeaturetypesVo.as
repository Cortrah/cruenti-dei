package model.genVo{

	import model.genVo.*;
	import model.IModelObject;
	import model.DeltaPacket;

	[Bindable]
	public dynamic class FeaturetypesVo implements IModelObject{

		private var _id:int;
		private var _name:String;
		private var _featureDescription:String;
		private var _code:String;

		public function FeaturetypesVo( id:int=0,
			name:String='',
			featureDescription:String='',
			code:String='') {

				_id=id;
				_name=name;
				_featureDescription=featureDescription;
				_code=code;
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
		public function get featureDescription():String {
			return _featureDescription;
		}
		public function get code():String {
			return _code;
		}

		public function set id(value:int):void {
			_id= value;
		}
		public function set name(value:String):void {
			_name= value;
		}
		public function set featureDescription(value:String):void {
			_featureDescription= value;
		}
		public function set code(value:String):void {
			_code= value;
		}

		public function getAsXMLString():String {
			var x:XML = <FeaturetypesVo/>;
			x.@id = _id;
			x.@name = _name;
			x.@featureDescription = _featureDescription;
			x.@code = _code;
			return x.toXMLString();
		}

		public function getAsSubsetXMLString(omitProperties:Array):String {
			var x:XML = <FeaturetypesVo/>;
           if(!contains(omitProperties, 'id')){
			    x.@id = _id;
           }
           if(!contains(omitProperties, 'name')){
			    x.@name = _name;
           }
           if(!contains(omitProperties, 'featureDescription')){
			    x.@featureDescription = _featureDescription;
           }
           if(!contains(omitProperties, 'code')){
			    x.@code = _code;
           }
			return x.toXMLString();
		}

		public function setFromXMLAttributes(x:XML):void {
			_id = x.@id;
			_name = x.@name;
			_featureDescription = x.@featureDescription;
			_code = x.@code;
		}

		public function setFromXMLElements(x:XML):void {
			_id = Number(x.id.toString());
			_name = x.name.toString();
			_featureDescription = x.feature_description.toString();
			_code = x.code.toString();
		}

		public function setFromCamelCaseObj(o:Object):void {
			_id = o.id;
			_name = o.name;
			_featureDescription = o.featureDescription;
			_code = o.code;
		}

		public function setFromObj(o:Object):void {
			_id = o.id;
			_name = o.name;
			_featureDescription = o.feature_description;
			_code = o.code;
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
			var tableName:String = 'featuretypes';
			var sortClause:String = '';

			sqlString = 'UPDATE featuretypes SET ' + 
				'name = "'+name.toString()+'", ' + 
				'feature_description = "'+featureDescription.toString()+'", ' + 
				'code = "'+code.toString()+'" ' + 
				'WHERE id='+id.toString()+';'; 
			return sqlString;
		}
	}
}
