package model.genVo{

	import model.genVo.*;
	import model.IModelObject;
	import model.DeltaPacket;

	[Bindable]
	public dynamic class BordertypesVo implements IModelObject{

		private var _id:int;
		private var _name:String;
		private var _landCost:String;
		private var _airCost:String;
		private var _navalCost:String;
		private var _bordertypeEffect:String;
		private var _code:String;
		private var _isDirectional:int;

		public function BordertypesVo( id:int=0,
			name:String='',
			landCost:String='',
			airCost:String='',
			navalCost:String='',
			bordertypeEffect:String='',
			code:String='',
			isDirectional:int=0) {

				_id=id;
				_name=name;
				_landCost=landCost;
				_airCost=airCost;
				_navalCost=navalCost;
				_bordertypeEffect=bordertypeEffect;
				_code=code;
				_isDirectional=isDirectional;
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
		public function get landCost():String {
			return _landCost;
		}
		public function get airCost():String {
			return _airCost;
		}
		public function get navalCost():String {
			return _navalCost;
		}
		public function get bordertypeEffect():String {
			return _bordertypeEffect;
		}
		public function get code():String {
			return _code;
		}
		public function get isDirectional():int {
			return _isDirectional;
		}

		public function set id(value:int):void {
			_id= value;
		}
		public function set name(value:String):void {
			_name= value;
		}
		public function set landCost(value:String):void {
			_landCost= value;
		}
		public function set airCost(value:String):void {
			_airCost= value;
		}
		public function set navalCost(value:String):void {
			_navalCost= value;
		}
		public function set bordertypeEffect(value:String):void {
			_bordertypeEffect= value;
		}
		public function set code(value:String):void {
			_code= value;
		}
		public function set isDirectional(value:int):void {
			_isDirectional= value;
		}

		public function getAsXMLString():String {
			var x:XML = <BordertypesVo/>;
			x.@id = _id;
			x.@name = _name;
			x.@landCost = _landCost;
			x.@airCost = _airCost;
			x.@navalCost = _navalCost;
			x.@bordertypeEffect = _bordertypeEffect;
			x.@code = _code;
			x.@isDirectional = _isDirectional;
			return x.toXMLString();
		}

		public function getAsSubsetXMLString(omitProperties:Array):String {
			var x:XML = <BordertypesVo/>;
           if(!contains(omitProperties, 'id')){
			    x.@id = _id;
           }
           if(!contains(omitProperties, 'name')){
			    x.@name = _name;
           }
           if(!contains(omitProperties, 'landCost')){
			    x.@landCost = _landCost;
           }
           if(!contains(omitProperties, 'airCost')){
			    x.@airCost = _airCost;
           }
           if(!contains(omitProperties, 'navalCost')){
			    x.@navalCost = _navalCost;
           }
           if(!contains(omitProperties, 'bordertypeEffect')){
			    x.@bordertypeEffect = _bordertypeEffect;
           }
           if(!contains(omitProperties, 'code')){
			    x.@code = _code;
           }
           if(!contains(omitProperties, 'isDirectional')){
			    x.@isDirectional = _isDirectional;
           }
			return x.toXMLString();
		}

		public function setFromXMLAttributes(x:XML):void {
			_id = x.@id;
			_name = x.@name;
			_landCost = x.@landCost;
			_airCost = x.@airCost;
			_navalCost = x.@navalCost;
			_bordertypeEffect = x.@bordertypeEffect;
			_code = x.@code;
			_isDirectional = x.@isDirectional;
		}

		public function setFromXMLElements(x:XML):void {
			_id = Number(x.id.toString());
			_name = x.name.toString();
			_landCost = x.land_cost.toString();
			_airCost = x.air_cost.toString();
			_navalCost = x.naval_cost.toString();
			_bordertypeEffect = x.bordertype_effect.toString();
			_code = x.code.toString();
			_isDirectional = Number(x.is_directional.toString());
		}

		public function setFromCamelCaseObj(o:Object):void {
			_id = o.id;
			_name = o.name;
			_landCost = o.landCost;
			_airCost = o.airCost;
			_navalCost = o.navalCost;
			_bordertypeEffect = o.bordertypeEffect;
			_code = o.code;
			_isDirectional = o.isDirectional;
		}

		public function setFromObj(o:Object):void {
			_id = o.id;
			_name = o.name;
			_landCost = o.land_cost;
			_airCost = o.air_cost;
			_navalCost = o.naval_cost;
			_bordertypeEffect = o.bordertype_effect;
			_code = o.code;
			_isDirectional = o.is_directional;
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
			var tableName:String = 'bordertypes';
			var sortClause:String = '';

			sqlString = 'UPDATE bordertypes SET ' + 
				'name = "'+name.toString()+'", ' + 
				'land_cost = "'+landCost.toString()+'", ' + 
				'air_cost = "'+airCost.toString()+'", ' + 
				'naval_cost = "'+navalCost.toString()+'", ' + 
				'bordertype_effect = "'+bordertypeEffect.toString()+'", ' + 
				'code = "'+code.toString()+'", ' + 
				'is_directional = "'+isDirectional.toString()+'" ' + 
				'WHERE id='+id.toString()+';'; 
			return sqlString;
		}
	}
}
