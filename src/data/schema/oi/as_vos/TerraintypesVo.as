package model.genVo{

	import model.genVo.*;
	import model.IModelObject;
	import model.DeltaPacket;

	[Bindable]
	public dynamic class TerraintypesVo implements IModelObject{

		private var _id:int;
		private var _name:String;
		private var _landCost:int;
		private var _airCost:int;
		private var _navalCost:int;
		private var _displaySymbol:int;
		private var _displayX:int;
		private var _displayY:int;
		private var _terrainDescription:String;
		private var _code:String;

		public function TerraintypesVo( id:int=0,
			name:String='',
			landCost:int=0,
			airCost:int=0,
			navalCost:int=0,
			displaySymbol:int=0,
			displayX:int=0,
			displayY:int=0,
			terrainDescription:String='',
			code:String='') {

				_id=id;
				_name=name;
				_landCost=landCost;
				_airCost=airCost;
				_navalCost=navalCost;
				_displaySymbol=displaySymbol;
				_displayX=displayX;
				_displayY=displayY;
				_terrainDescription=terrainDescription;
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
		public function get landCost():int {
			return _landCost;
		}
		public function get airCost():int {
			return _airCost;
		}
		public function get navalCost():int {
			return _navalCost;
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
		public function get terrainDescription():String {
			return _terrainDescription;
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
		public function set landCost(value:int):void {
			_landCost= value;
		}
		public function set airCost(value:int):void {
			_airCost= value;
		}
		public function set navalCost(value:int):void {
			_navalCost= value;
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
		public function set terrainDescription(value:String):void {
			_terrainDescription= value;
		}
		public function set code(value:String):void {
			_code= value;
		}

		public function getAsXMLString():String {
			var x:XML = <TerraintypesVo/>;
			x.@id = _id;
			x.@name = _name;
			x.@landCost = _landCost;
			x.@airCost = _airCost;
			x.@navalCost = _navalCost;
			x.@displaySymbol = _displaySymbol;
			x.@displayX = _displayX;
			x.@displayY = _displayY;
			x.@terrainDescription = _terrainDescription;
			x.@code = _code;
			return x.toXMLString();
		}

		public function getAsSubsetXMLString(omitProperties:Array):String {
			var x:XML = <TerraintypesVo/>;
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
           if(!contains(omitProperties, 'displaySymbol')){
			    x.@displaySymbol = _displaySymbol;
           }
           if(!contains(omitProperties, 'displayX')){
			    x.@displayX = _displayX;
           }
           if(!contains(omitProperties, 'displayY')){
			    x.@displayY = _displayY;
           }
           if(!contains(omitProperties, 'terrainDescription')){
			    x.@terrainDescription = _terrainDescription;
           }
           if(!contains(omitProperties, 'code')){
			    x.@code = _code;
           }
			return x.toXMLString();
		}

		public function setFromXMLAttributes(x:XML):void {
			_id = x.@id;
			_name = x.@name;
			_landCost = x.@landCost;
			_airCost = x.@airCost;
			_navalCost = x.@navalCost;
			_displaySymbol = x.@displaySymbol;
			_displayX = x.@displayX;
			_displayY = x.@displayY;
			_terrainDescription = x.@terrainDescription;
			_code = x.@code;
		}

		public function setFromXMLElements(x:XML):void {
			_id = Number(x.id.toString());
			_name = x.name.toString();
			_landCost = Number(x.land_cost.toString());
			_airCost = Number(x.air_cost.toString());
			_navalCost = Number(x.naval_cost.toString());
			_displaySymbol = Number(x.display_symbol.toString());
			_displayX = Number(x.display_x.toString());
			_displayY = Number(x.display_y.toString());
			_terrainDescription = x.terrain_description.toString();
			_code = x.code.toString();
		}

		public function setFromCamelCaseObj(o:Object):void {
			_id = o.id;
			_name = o.name;
			_landCost = o.landCost;
			_airCost = o.airCost;
			_navalCost = o.navalCost;
			_displaySymbol = o.displaySymbol;
			_displayX = o.displayX;
			_displayY = o.displayY;
			_terrainDescription = o.terrainDescription;
			_code = o.code;
		}

		public function setFromObj(o:Object):void {
			_id = o.id;
			_name = o.name;
			_landCost = o.land_cost;
			_airCost = o.air_cost;
			_navalCost = o.naval_cost;
			_displaySymbol = o.display_symbol;
			_displayX = o.display_x;
			_displayY = o.display_y;
			_terrainDescription = o.terrain_description;
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
			var tableName:String = 'terraintypes';
			var sortClause:String = '';

			sqlString = 'UPDATE terraintypes SET ' + 
				'name = "'+name.toString()+'", ' + 
				'land_cost = "'+landCost.toString()+'", ' + 
				'air_cost = "'+airCost.toString()+'", ' + 
				'naval_cost = "'+navalCost.toString()+'", ' + 
				'display_symbol = "'+displaySymbol.toString()+'", ' + 
				'display_x = "'+displayX.toString()+'", ' + 
				'display_y = "'+displayY.toString()+'", ' + 
				'terrain_description = "'+terrainDescription.toString()+'", ' + 
				'code = "'+code.toString()+'" ' + 
				'WHERE id='+id.toString()+';'; 
			return sqlString;
		}
	}
}
