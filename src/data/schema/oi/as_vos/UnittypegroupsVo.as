package model.genVo{

	import model.genVo.*;
	import model.IModelObject;
	import model.DeltaPacket;

	[Bindable]
	public dynamic class UnittypegroupsVo implements IModelObject{

		private var _id:int;
		private var _unittypeId:int;
		private var _count:int;
		private var _homeregionId:int;
		private var _realmId:int;
		private var _displaySymbol:int;
		private var _displayX:int;
		private var _displayY:int;
		private var _name:String;
		private var _isAllied:int;
		private var _airCargoCapacity:Number;
		private var _groundCargoCapacity:Number;
		private var _navalCargoCapacity:Number;
		private var _airCargoUsed:Number;
		private var _groundCargoUsed:Number;
		private var _navalCargoUsed:Number;

		public function UnittypegroupsVo( id:int=0,
			unittypeId:int=0,
			count:int=0,
			homeregionId:int=0,
			realmId:int=0,
			displaySymbol:int=0,
			displayX:int=0,
			displayY:int=0,
			name:String='',
			isAllied:int=0,
			airCargoCapacity:Number=0.0,
			groundCargoCapacity:Number=0.0,
			navalCargoCapacity:Number=0.0,
			airCargoUsed:Number=0.0,
			groundCargoUsed:Number=0.0,
			navalCargoUsed:Number=0.0) {

				_id=id;
				_unittypeId=unittypeId;
				_count=count;
				_homeregionId=homeregionId;
				_realmId=realmId;
				_displaySymbol=displaySymbol;
				_displayX=displayX;
				_displayY=displayY;
				_name=name;
				_isAllied=isAllied;
				_airCargoCapacity=airCargoCapacity;
				_groundCargoCapacity=groundCargoCapacity;
				_navalCargoCapacity=navalCargoCapacity;
				_airCargoUsed=airCargoUsed;
				_groundCargoUsed=groundCargoUsed;
				_navalCargoUsed=navalCargoUsed;
		}

		public function getId():int{
			return _id;
		}

		public function get id():int {
			return _id;
		}
		public function get unittypeId():int {
			return _unittypeId;
		}
		public function get count():int {
			return _count;
		}
		public function get homeregionId():int {
			return _homeregionId;
		}
		public function get realmId():int {
			return _realmId;
		}
		public function get displaySymbol():int {
			return _displaySymbol;
		}
		public function get displayX():int {
			return _displayX;
		}
		public function get displayY():int {
			return _displayY;
		}
		public function get name():String {
			return _name;
		}
		public function get isAllied():int {
			return _isAllied;
		}
		public function get airCargoCapacity():Number {
			return _airCargoCapacity;
		}
		public function get groundCargoCapacity():Number {
			return _groundCargoCapacity;
		}
		public function get navalCargoCapacity():Number {
			return _navalCargoCapacity;
		}
		public function get airCargoUsed():Number {
			return _airCargoUsed;
		}
		public function get groundCargoUsed():Number {
			return _groundCargoUsed;
		}
		public function get navalCargoUsed():Number {
			return _navalCargoUsed;
		}

		public function set id(value:int):void {
			_id= value;
		}
		public function set unittypeId(value:int):void {
			_unittypeId= value;
		}
		public function set count(value:int):void {
			_count= value;
		}
		public function set homeregionId(value:int):void {
			_homeregionId= value;
		}
		public function set realmId(value:int):void {
			_realmId= value;
		}
		public function set displaySymbol(value:int):void {
			_displaySymbol= value;
		}
		public function set displayX(value:int):void {
			_displayX= value;
		}
		public function set displayY(value:int):void {
			_displayY= value;
		}
		public function set name(value:String):void {
			_name= value;
		}
		public function set isAllied(value:int):void {
			_isAllied= value;
		}
		public function set airCargoCapacity(value:Number):void {
			_airCargoCapacity= value;
		}
		public function set groundCargoCapacity(value:Number):void {
			_groundCargoCapacity= value;
		}
		public function set navalCargoCapacity(value:Number):void {
			_navalCargoCapacity= value;
		}
		public function set airCargoUsed(value:Number):void {
			_airCargoUsed= value;
		}
		public function set groundCargoUsed(value:Number):void {
			_groundCargoUsed= value;
		}
		public function set navalCargoUsed(value:Number):void {
			_navalCargoUsed= value;
		}

		public function getAsXMLString():String {
			var x:XML = <UnittypegroupsVo/>;
			x.@id = _id;
			x.@unittypeId = _unittypeId;
			x.@count = _count;
			x.@homeregionId = _homeregionId;
			x.@realmId = _realmId;
			x.@displaySymbol = _displaySymbol;
			x.@displayX = _displayX;
			x.@displayY = _displayY;
			x.@name = _name;
			x.@isAllied = _isAllied;
			x.@airCargoCapacity = _airCargoCapacity;
			x.@groundCargoCapacity = _groundCargoCapacity;
			x.@navalCargoCapacity = _navalCargoCapacity;
			x.@airCargoUsed = _airCargoUsed;
			x.@groundCargoUsed = _groundCargoUsed;
			x.@navalCargoUsed = _navalCargoUsed;
			return x.toXMLString();
		}

		public function getAsSubsetXMLString(omitProperties:Array):String {
			var x:XML = <UnittypegroupsVo/>;
           if(!contains(omitProperties, 'id')){
			    x.@id = _id;
           }
           if(!contains(omitProperties, 'unittypeId')){
			    x.@unittypeId = _unittypeId;
           }
           if(!contains(omitProperties, 'count')){
			    x.@count = _count;
           }
           if(!contains(omitProperties, 'homeregionId')){
			    x.@homeregionId = _homeregionId;
           }
           if(!contains(omitProperties, 'realmId')){
			    x.@realmId = _realmId;
           }
           if(!contains(omitProperties, 'displaySymbol')){
			    x.@displaySymbol = _displaySymbol;
           }
           if(!contains(omitProperties, 'displayX')){
			    x.@displayX = _displayX;
           }
           if(!contains(omitProperties, 'displayY')){
			    x.@displayY = _displayY;
           }
           if(!contains(omitProperties, 'name')){
			    x.@name = _name;
           }
           if(!contains(omitProperties, 'isAllied')){
			    x.@isAllied = _isAllied;
           }
           if(!contains(omitProperties, 'airCargoCapacity')){
			    x.@airCargoCapacity = _airCargoCapacity;
           }
           if(!contains(omitProperties, 'groundCargoCapacity')){
			    x.@groundCargoCapacity = _groundCargoCapacity;
           }
           if(!contains(omitProperties, 'navalCargoCapacity')){
			    x.@navalCargoCapacity = _navalCargoCapacity;
           }
           if(!contains(omitProperties, 'airCargoUsed')){
			    x.@airCargoUsed = _airCargoUsed;
           }
           if(!contains(omitProperties, 'groundCargoUsed')){
			    x.@groundCargoUsed = _groundCargoUsed;
           }
           if(!contains(omitProperties, 'navalCargoUsed')){
			    x.@navalCargoUsed = _navalCargoUsed;
           }
			return x.toXMLString();
		}

		public function setFromXMLAttributes(x:XML):void {
			_id = x.@id;
			_unittypeId = x.@unittypeId;
			_count = x.@count;
			_homeregionId = x.@homeregionId;
			_realmId = x.@realmId;
			_displaySymbol = x.@displaySymbol;
			_displayX = x.@displayX;
			_displayY = x.@displayY;
			_name = x.@name;
			_isAllied = x.@isAllied;
			_airCargoCapacity = x.@airCargoCapacity;
			_groundCargoCapacity = x.@groundCargoCapacity;
			_navalCargoCapacity = x.@navalCargoCapacity;
			_airCargoUsed = x.@airCargoUsed;
			_groundCargoUsed = x.@groundCargoUsed;
			_navalCargoUsed = x.@navalCargoUsed;
		}

		public function setFromXMLElements(x:XML):void {
			_id = Number(x.id.toString());
			_unittypeId = Number(x.unittype_id.toString());
			_count = Number(x.count.toString());
			_homeregionId = Number(x.homeregion_id.toString());
			_realmId = Number(x.realm_id.toString());
			_displaySymbol = Number(x.display_symbol.toString());
			_displayX = Number(x.display_x.toString());
			_displayY = Number(x.display_y.toString());
			_name = x.name.toString();
			_isAllied = Number(x.is_allied.toString());
			_airCargoCapacity = Number(x.air_cargo_capacity.toString());
			_groundCargoCapacity = Number(x.ground_cargo_capacity.toString());
			_navalCargoCapacity = Number(x.naval_cargo_capacity.toString());
			_airCargoUsed = Number(x.air_cargo_used.toString());
			_groundCargoUsed = Number(x.ground_cargo_used.toString());
			_navalCargoUsed = Number(x.naval_cargo_used.toString());
		}

		public function setFromCamelCaseObj(o:Object):void {
			_id = o.id;
			_unittypeId = o.unittypeId;
			_count = o.count;
			_homeregionId = o.homeregionId;
			_realmId = o.realmId;
			_displaySymbol = o.displaySymbol;
			_displayX = o.displayX;
			_displayY = o.displayY;
			_name = o.name;
			_isAllied = o.isAllied;
			_airCargoCapacity = o.airCargoCapacity;
			_groundCargoCapacity = o.groundCargoCapacity;
			_navalCargoCapacity = o.navalCargoCapacity;
			_airCargoUsed = o.airCargoUsed;
			_groundCargoUsed = o.groundCargoUsed;
			_navalCargoUsed = o.navalCargoUsed;
		}

		public function setFromObj(o:Object):void {
			_id = o.id;
			_unittypeId = o.unittype_id;
			_count = o.count;
			_homeregionId = o.homeregion_id;
			_realmId = o.realm_id;
			_displaySymbol = o.display_symbol;
			_displayX = o.display_x;
			_displayY = o.display_y;
			_name = o.name;
			_isAllied = o.is_allied;
			_airCargoCapacity = o.air_cargo_capacity;
			_groundCargoCapacity = o.ground_cargo_capacity;
			_navalCargoCapacity = o.naval_cargo_capacity;
			_airCargoUsed = o.air_cargo_used;
			_groundCargoUsed = o.ground_cargo_used;
			_navalCargoUsed = o.naval_cargo_used;
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
			var tableName:String = 'unittypegroups';
			var sortClause:String = '';

			sqlString = 'UPDATE unittypegroups SET ' + 
				'unittype_id = '+unittypeId.toString()+', ' + 
				'count = '+count.toString()+', ' + 
				'homeregion_id = '+homeregionId.toString()+', ' + 
				'realm_id = '+realmId.toString()+', ' + 
				'display_symbol = '+displaySymbol.toString()+', ' + 
				'display_x = '+displayX.toString()+', ' + 
				'display_y = '+displayY.toString()+', ' + 
				'name = "'+name.toString()+'", ' + 
				'is_allied = "'+isAllied.toString()+'", ' + 
				'air_cargo_capacity = "'+airCargoCapacity.toString()+'", ' + 
				'ground_cargo_capacity = "'+groundCargoCapacity.toString()+'", ' + 
				'naval_cargo_capacity = "'+navalCargoCapacity.toString()+'", ' + 
				'air_cargo_used = "'+airCargoUsed.toString()+'", ' + 
				'ground_cargo_used = "'+groundCargoUsed.toString()+'", ' + 
				'naval_cargo_used = "'+navalCargoUsed.toString()+'" ' + 
				'WHERE id='+id.toString()+';'; 
			return sqlString;
		}
	}
}
