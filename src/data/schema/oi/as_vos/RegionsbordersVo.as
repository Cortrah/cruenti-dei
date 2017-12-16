package model.genVo{

	import model.genVo.*;
	import model.IModelObject;
	import model.DeltaPacket;

	[Bindable]
	public dynamic class RegionsbordersVo implements IModelObject{

		private var _id:int;
		private var _sourceId:int;
		private var _sinkId:int;
		private var _bordertypeId:int;
		private var _isSecret:int;
		private var _name:String;

		public function RegionsbordersVo( id:int=0,
			sourceId:int=0,
			sinkId:int=0,
			bordertypeId:int=0,
			isSecret:int=0,
			name:String='') {

				_id=id;
				_sourceId=sourceId;
				_sinkId=sinkId;
				_bordertypeId=bordertypeId;
				_isSecret=isSecret;
				_name=name;
		}

		public function getId():int{
			return _id;
		}

		public function get id():int {
			return _id;
		}
		public function get sourceId():int {
			return _sourceId;
		}
		public function get sinkId():int {
			return _sinkId;
		}
		public function get bordertypeId():int {
			return _bordertypeId;
		}
		public function get isSecret():int {
			return _isSecret;
		}
		public function get name():String {
			return _name;
		}

		public function set id(value:int):void {
			_id= value;
		}
		public function set sourceId(value:int):void {
			_sourceId= value;
		}
		public function set sinkId(value:int):void {
			_sinkId= value;
		}
		public function set bordertypeId(value:int):void {
			_bordertypeId= value;
		}
		public function set isSecret(value:int):void {
			_isSecret= value;
		}
		public function set name(value:String):void {
			_name= value;
		}

		public function getAsXMLString():String {
			var x:XML = <RegionsbordersVo/>;
			x.@id = _id;
			x.@sourceId = _sourceId;
			x.@sinkId = _sinkId;
			x.@bordertypeId = _bordertypeId;
			x.@isSecret = _isSecret;
			x.@name = _name;
			return x.toXMLString();
		}

		public function getAsSubsetXMLString(omitProperties:Array):String {
			var x:XML = <RegionsbordersVo/>;
           if(!contains(omitProperties, 'id')){
			    x.@id = _id;
           }
           if(!contains(omitProperties, 'sourceId')){
			    x.@sourceId = _sourceId;
           }
           if(!contains(omitProperties, 'sinkId')){
			    x.@sinkId = _sinkId;
           }
           if(!contains(omitProperties, 'bordertypeId')){
			    x.@bordertypeId = _bordertypeId;
           }
           if(!contains(omitProperties, 'isSecret')){
			    x.@isSecret = _isSecret;
           }
           if(!contains(omitProperties, 'name')){
			    x.@name = _name;
           }
			return x.toXMLString();
		}

		public function setFromXMLAttributes(x:XML):void {
			_id = x.@id;
			_sourceId = x.@sourceId;
			_sinkId = x.@sinkId;
			_bordertypeId = x.@bordertypeId;
			_isSecret = x.@isSecret;
			_name = x.@name;
		}

		public function setFromXMLElements(x:XML):void {
			_id = Number(x.id.toString());
			_sourceId = Number(x.source_id.toString());
			_sinkId = Number(x.sink_id.toString());
			_bordertypeId = Number(x.bordertype_id.toString());
			_isSecret = Number(x.is_secret.toString());
			_name = x.name.toString();
		}

		public function setFromCamelCaseObj(o:Object):void {
			_id = o.id;
			_sourceId = o.sourceId;
			_sinkId = o.sinkId;
			_bordertypeId = o.bordertypeId;
			_isSecret = o.isSecret;
			_name = o.name;
		}

		public function setFromObj(o:Object):void {
			_id = o.id;
			_sourceId = o.source_id;
			_sinkId = o.sink_id;
			_bordertypeId = o.bordertype_id;
			_isSecret = o.is_secret;
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
			var tableName:String = 'regionsborders';
			var sortClause:String = '';

			sqlString = 'UPDATE regionsborders SET ' + 
				'source_id = '+sourceId.toString()+', ' + 
				'sink_id = '+sinkId.toString()+', ' + 
				'bordertype_id = '+bordertypeId.toString()+', ' + 
				'is_secret = '+isSecret.toString()+', ' + 
				'name = "'+name.toString()+'" ' + 
				'WHERE id='+id.toString()+';'; 
			return sqlString;
		}
	}
}
