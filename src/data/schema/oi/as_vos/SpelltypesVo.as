package model.genVo{

	import model.genVo.*;
	import model.IModelObject;
	import model.DeltaPacket;

	[Bindable]
	public dynamic class SpelltypesVo implements IModelObject{

		private var _id:int;
		private var _name:String;
		private var _level:String;
		private var _nsr:int;
		private var _manaInitialCost:int;
		private var _timeToCast:int;
		private var _whenToCast:String;
		private var _isAllowMultipleCasters:int;
		private var _effect:String;
		private var _description:String;
		private var _isSecret:int;
		private var _manaPerUnitCost:int;
		private var _code:String;

		public function SpelltypesVo( id:int=0,
			name:String='',
			level:String='',
			nsr:int=0,
			manaInitialCost:int=0,
			timeToCast:int=0,
			whenToCast:String='',
			isAllowMultipleCasters:int=0,
			effect:String='',
			description:String='',
			isSecret:int=0,
			manaPerUnitCost:int=0,
			code:String='') {

				_id=id;
				_name=name;
				_level=level;
				_nsr=nsr;
				_manaInitialCost=manaInitialCost;
				_timeToCast=timeToCast;
				_whenToCast=whenToCast;
				_isAllowMultipleCasters=isAllowMultipleCasters;
				_effect=effect;
				_description=description;
				_isSecret=isSecret;
				_manaPerUnitCost=manaPerUnitCost;
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
		public function get level():String {
			return _level;
		}
		public function get nsr():int {
			return _nsr;
		}
		public function get manaInitialCost():int {
			return _manaInitialCost;
		}
		public function get timeToCast():int {
			return _timeToCast;
		}
		public function get whenToCast():String {
			return _whenToCast;
		}
		public function get isAllowMultipleCasters():int {
			return _isAllowMultipleCasters;
		}
		public function get effect():String {
			return _effect;
		}
		public function get description():String {
			return _description;
		}
		public function get isSecret():int {
			return _isSecret;
		}
		public function get manaPerUnitCost():int {
			return _manaPerUnitCost;
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
		public function set level(value:String):void {
			_level= value;
		}
		public function set nsr(value:int):void {
			_nsr= value;
		}
		public function set manaInitialCost(value:int):void {
			_manaInitialCost= value;
		}
		public function set timeToCast(value:int):void {
			_timeToCast= value;
		}
		public function set whenToCast(value:String):void {
			_whenToCast= value;
		}
		public function set isAllowMultipleCasters(value:int):void {
			_isAllowMultipleCasters= value;
		}
		public function set effect(value:String):void {
			_effect= value;
		}
		public function set description(value:String):void {
			_description= value;
		}
		public function set isSecret(value:int):void {
			_isSecret= value;
		}
		public function set manaPerUnitCost(value:int):void {
			_manaPerUnitCost= value;
		}
		public function set code(value:String):void {
			_code= value;
		}

		public function getAsXMLString():String {
			var x:XML = <SpelltypesVo/>;
			x.@id = _id;
			x.@name = _name;
			x.@level = _level;
			x.@nsr = _nsr;
			x.@manaInitialCost = _manaInitialCost;
			x.@timeToCast = _timeToCast;
			x.@whenToCast = _whenToCast;
			x.@isAllowMultipleCasters = _isAllowMultipleCasters;
			x.@effect = _effect;
			x.@description = _description;
			x.@isSecret = _isSecret;
			x.@manaPerUnitCost = _manaPerUnitCost;
			x.@code = _code;
			return x.toXMLString();
		}

		public function getAsSubsetXMLString(omitProperties:Array):String {
			var x:XML = <SpelltypesVo/>;
           if(!contains(omitProperties, 'id')){
			    x.@id = _id;
           }
           if(!contains(omitProperties, 'name')){
			    x.@name = _name;
           }
           if(!contains(omitProperties, 'level')){
			    x.@level = _level;
           }
           if(!contains(omitProperties, 'nsr')){
			    x.@nsr = _nsr;
           }
           if(!contains(omitProperties, 'manaInitialCost')){
			    x.@manaInitialCost = _manaInitialCost;
           }
           if(!contains(omitProperties, 'timeToCast')){
			    x.@timeToCast = _timeToCast;
           }
           if(!contains(omitProperties, 'whenToCast')){
			    x.@whenToCast = _whenToCast;
           }
           if(!contains(omitProperties, 'isAllowMultipleCasters')){
			    x.@isAllowMultipleCasters = _isAllowMultipleCasters;
           }
           if(!contains(omitProperties, 'effect')){
			    x.@effect = _effect;
           }
           if(!contains(omitProperties, 'description')){
			    x.@description = _description;
           }
           if(!contains(omitProperties, 'isSecret')){
			    x.@isSecret = _isSecret;
           }
           if(!contains(omitProperties, 'manaPerUnitCost')){
			    x.@manaPerUnitCost = _manaPerUnitCost;
           }
           if(!contains(omitProperties, 'code')){
			    x.@code = _code;
           }
			return x.toXMLString();
		}

		public function setFromXMLAttributes(x:XML):void {
			_id = x.@id;
			_name = x.@name;
			_level = x.@level;
			_nsr = x.@nsr;
			_manaInitialCost = x.@manaInitialCost;
			_timeToCast = x.@timeToCast;
			_whenToCast = x.@whenToCast;
			_isAllowMultipleCasters = x.@isAllowMultipleCasters;
			_effect = x.@effect;
			_description = x.@description;
			_isSecret = x.@isSecret;
			_manaPerUnitCost = x.@manaPerUnitCost;
			_code = x.@code;
		}

		public function setFromXMLElements(x:XML):void {
			_id = Number(x.id.toString());
			_name = x.name.toString();
			_level = x.level.toString();
			_nsr = Number(x.nsr.toString());
			_manaInitialCost = Number(x.mana_initial_cost.toString());
			_timeToCast = Number(x.time_to_cast.toString());
			_whenToCast = x.when_to_cast.toString();
			_isAllowMultipleCasters = Number(x.is_allow_multiple_casters.toString());
			_effect = x.effect.toString();
			_description = x.description.toString();
			_isSecret = Number(x.is_secret.toString());
			_manaPerUnitCost = Number(x.mana_per_unit_cost.toString());
			_code = x.code.toString();
		}

		public function setFromCamelCaseObj(o:Object):void {
			_id = o.id;
			_name = o.name;
			_level = o.level;
			_nsr = o.nsr;
			_manaInitialCost = o.manaInitialCost;
			_timeToCast = o.timeToCast;
			_whenToCast = o.whenToCast;
			_isAllowMultipleCasters = o.isAllowMultipleCasters;
			_effect = o.effect;
			_description = o.description;
			_isSecret = o.isSecret;
			_manaPerUnitCost = o.manaPerUnitCost;
			_code = o.code;
		}

		public function setFromObj(o:Object):void {
			_id = o.id;
			_name = o.name;
			_level = o.level;
			_nsr = o.nsr;
			_manaInitialCost = o.mana_initial_cost;
			_timeToCast = o.time_to_cast;
			_whenToCast = o.when_to_cast;
			_isAllowMultipleCasters = o.is_allow_multiple_casters;
			_effect = o.effect;
			_description = o.description;
			_isSecret = o.is_secret;
			_manaPerUnitCost = o.mana_per_unit_cost;
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
			var tableName:String = 'spelltypes';
			var sortClause:String = '';

			sqlString = 'UPDATE spelltypes SET ' + 
				'name = "'+name.toString()+'", ' + 
				'level = "'+level.toString()+'", ' + 
				'nsr = "'+nsr.toString()+'", ' + 
				'mana_initial_cost = "'+manaInitialCost.toString()+'", ' + 
				'time_to_cast = "'+timeToCast.toString()+'", ' + 
				'when_to_cast = "'+whenToCast.toString()+'", ' + 
				'is_allow_multiple_casters = "'+isAllowMultipleCasters.toString()+'", ' + 
				'effect = "'+effect.toString()+'", ' + 
				'description = "'+description.toString()+'", ' + 
				'is_secret = "'+isSecret.toString()+'", ' + 
				'mana_per_unit_cost = "'+manaPerUnitCost.toString()+'", ' + 
				'code = "'+code.toString()+'" ' + 
				'WHERE id='+id.toString()+';'; 
			return sqlString;
		}
	}
}
