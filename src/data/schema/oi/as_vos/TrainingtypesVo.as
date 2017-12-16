package model.genVo{

	import model.genVo.*;
	import model.IModelObject;
	import model.DeltaPacket;

	[Bindable]
	public dynamic class TrainingtypesVo implements IModelObject{

		private var _id:int;
		private var _code:String;
		private var _name:String;
		private var _trainingEffect:String;
		private var _trainingDescription:String;

		public function TrainingtypesVo( id:int=0,
			code:String='',
			name:String='',
			trainingEffect:String='',
			trainingDescription:String='') {

				_id=id;
				_code=code;
				_name=name;
				_trainingEffect=trainingEffect;
				_trainingDescription=trainingDescription;
		}

		public function getId():int{
			return _id;
		}

		public function get id():int {
			return _id;
		}
		public function get code():String {
			return _code;
		}
		public function get name():String {
			return _name;
		}
		public function get trainingEffect():String {
			return _trainingEffect;
		}
		public function get trainingDescription():String {
			return _trainingDescription;
		}

		public function set id(value:int):void {
			_id= value;
		}
		public function set code(value:String):void {
			_code= value;
		}
		public function set name(value:String):void {
			_name= value;
		}
		public function set trainingEffect(value:String):void {
			_trainingEffect= value;
		}
		public function set trainingDescription(value:String):void {
			_trainingDescription= value;
		}

		public function getAsXMLString():String {
			var x:XML = <TrainingtypesVo/>;
			x.@id = _id;
			x.@code = _code;
			x.@name = _name;
			x.@trainingEffect = _trainingEffect;
			x.@trainingDescription = _trainingDescription;
			return x.toXMLString();
		}

		public function getAsSubsetXMLString(omitProperties:Array):String {
			var x:XML = <TrainingtypesVo/>;
           if(!contains(omitProperties, 'id')){
			    x.@id = _id;
           }
           if(!contains(omitProperties, 'code')){
			    x.@code = _code;
           }
           if(!contains(omitProperties, 'name')){
			    x.@name = _name;
           }
           if(!contains(omitProperties, 'trainingEffect')){
			    x.@trainingEffect = _trainingEffect;
           }
           if(!contains(omitProperties, 'trainingDescription')){
			    x.@trainingDescription = _trainingDescription;
           }
			return x.toXMLString();
		}

		public function setFromXMLAttributes(x:XML):void {
			_id = x.@id;
			_code = x.@code;
			_name = x.@name;
			_trainingEffect = x.@trainingEffect;
			_trainingDescription = x.@trainingDescription;
		}

		public function setFromXMLElements(x:XML):void {
			_id = Number(x.id.toString());
			_code = x.code.toString();
			_name = x.name.toString();
			_trainingEffect = x.training_effect.toString();
			_trainingDescription = x.training_description.toString();
		}

		public function setFromCamelCaseObj(o:Object):void {
			_id = o.id;
			_code = o.code;
			_name = o.name;
			_trainingEffect = o.trainingEffect;
			_trainingDescription = o.trainingDescription;
		}

		public function setFromObj(o:Object):void {
			_id = o.id;
			_code = o.code;
			_name = o.name;
			_trainingEffect = o.training_effect;
			_trainingDescription = o.training_description;
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
			var tableName:String = 'trainingtypes';
			var sortClause:String = '';

			sqlString = 'UPDATE trainingtypes SET ' + 
				'code = "'+code.toString()+'", ' + 
				'name = "'+name.toString()+'", ' + 
				'training_effect = "'+trainingEffect.toString()+'", ' + 
				'training_description = "'+trainingDescription.toString()+'" ' + 
				'WHERE id='+id.toString()+';'; 
			return sqlString;
		}
	}
}
