package model.genVo{

	import model.genVo.*;
	import model.IModelObject;
	import model.DeltaPacket;

	[Bindable]
	public dynamic class ReligionsVo implements IModelObject{

		private var _id:int;
		private var _name:String;
		private var _religionEffect:String;
		private var _religionDescription:String;

		public function ReligionsVo( id:int=0,
			name:String='',
			religionEffect:String='',
			religionDescription:String='') {

				_id=id;
				_name=name;
				_religionEffect=religionEffect;
				_religionDescription=religionDescription;
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
		public function get religionEffect():String {
			return _religionEffect;
		}
		public function get religionDescription():String {
			return _religionDescription;
		}

		public function set id(value:int):void {
			_id= value;
		}
		public function set name(value:String):void {
			_name= value;
		}
		public function set religionEffect(value:String):void {
			_religionEffect= value;
		}
		public function set religionDescription(value:String):void {
			_religionDescription= value;
		}

		public function getAsXMLString():String {
			var x:XML = <ReligionsVo/>;
			x.@id = _id;
			x.@name = _name;
			x.@religionEffect = _religionEffect;
			x.@religionDescription = _religionDescription;
			return x.toXMLString();
		}

		public function getAsSubsetXMLString(omitProperties:Array):String {
			var x:XML = <ReligionsVo/>;
           if(!contains(omitProperties, 'id')){
			    x.@id = _id;
           }
           if(!contains(omitProperties, 'name')){
			    x.@name = _name;
           }
           if(!contains(omitProperties, 'religionEffect')){
			    x.@religionEffect = _religionEffect;
           }
           if(!contains(omitProperties, 'religionDescription')){
			    x.@religionDescription = _religionDescription;
           }
			return x.toXMLString();
		}

		public function setFromXMLAttributes(x:XML):void {
			_id = x.@id;
			_name = x.@name;
			_religionEffect = x.@religionEffect;
			_religionDescription = x.@religionDescription;
		}

		public function setFromXMLElements(x:XML):void {
			_id = Number(x.id.toString());
			_name = x.name.toString();
			_religionEffect = x.religion_effect.toString();
			_religionDescription = x.religion_description.toString();
		}

		public function setFromCamelCaseObj(o:Object):void {
			_id = o.id;
			_name = o.name;
			_religionEffect = o.religionEffect;
			_religionDescription = o.religionDescription;
		}

		public function setFromObj(o:Object):void {
			_id = o.id;
			_name = o.name;
			_religionEffect = o.religion_effect;
			_religionDescription = o.religion_description;
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
			var tableName:String = 'religions';
			var sortClause:String = '';

			sqlString = 'UPDATE religions SET ' + 
				'name = "'+name.toString()+'", ' + 
				'religion_effect = "'+religionEffect.toString()+'", ' + 
				'religion_description = "'+religionDescription.toString()+'" ' + 
				'WHERE id='+id.toString()+';'; 
			return sqlString;
		}
	}
}
