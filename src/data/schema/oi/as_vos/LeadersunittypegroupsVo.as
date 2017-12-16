package model.genVo{

	import model.genVo.*;
	import model.IModelObject;
	import model.DeltaPacket;

	[Bindable]
	public dynamic class LeadersunittypegroupsVo implements IModelObject{

		private var _id:int;
		private var _leaderId:int;
		private var _unittypegroupId:int;
		private var _name:String;
		private var _code:String;
		private var _airCargoCapacity:Number;
		private var _navalCargoCapacity:Number;
		private var _groundCargoCapacity:Number;
		private var _airCargoUsed:Number;
		private var _navalCargoUsed:Number;
		private var _groundCargoUsed:Number;

		public function LeadersunittypegroupsVo( id:int=0,
			leaderId:int=0,
			unittypegroupId:int=0,
			name:String='',
			code:String='',
			airCargoCapacity:Number=0.0,
			navalCargoCapacity:Number=0.0,
			groundCargoCapacity:Number=0.0,
			airCargoUsed:Number=0.0,
			navalCargoUsed:Number=0.0,
			groundCargoUsed:Number=0.0) {

				_id=id;
				_leaderId=leaderId;
				_unittypegroupId=unittypegroupId;
				_name=name;
				_code=code;
				_airCargoCapacity=airCargoCapacity;
				_navalCargoCapacity=navalCargoCapacity;
				_groundCargoCapacity=groundCargoCapacity;
				_airCargoUsed=airCargoUsed;
				_navalCargoUsed=navalCargoUsed;
				_groundCargoUsed=groundCargoUsed;
		}

		public function getId():int{
			return _id;
		}

		public function get id():int {
			return _id;
		}
		public function get leaderId():int {
			return _leaderId;
		}
		public function get unittypegroupId():int {
			return _unittypegroupId;
		}
		public function get name():String {
			return _name;
		}
		public function get code():String {
			return _code;
		}
		public function get airCargoCapacity():Number {
			return _airCargoCapacity;
		}
		public function get navalCargoCapacity():Number {
			return _navalCargoCapacity;
		}
		public function get groundCargoCapacity():Number {
			return _groundCargoCapacity;
		}
		public function get airCargoUsed():Number {
			return _airCargoUsed;
		}
		public function get navalCargoUsed():Number {
			return _navalCargoUsed;
		}
		public function get groundCargoUsed():Number {
			return _groundCargoUsed;
		}

		public function set id(value:int):void {
			_id= value;
		}
		public function set leaderId(value:int):void {
			_leaderId= value;
		}
		public function set unittypegroupId(value:int):void {
			_unittypegroupId= value;
		}
		public function set name(value:String):void {
			_name= value;
		}
		public function set code(value:String):void {
			_code= value;
		}
		public function set airCargoCapacity(value:Number):void {
			_airCargoCapacity= value;
		}
		public function set navalCargoCapacity(value:Number):void {
			_navalCargoCapacity= value;
		}
		public function set groundCargoCapacity(value:Number):void {
			_groundCargoCapacity= value;
		}
		public function set airCargoUsed(value:Number):void {
			_airCargoUsed= value;
		}
		public function set navalCargoUsed(value:Number):void {
			_navalCargoUsed= value;
		}
		public function set groundCargoUsed(value:Number):void {
			_groundCargoUsed= value;
		}

		public function getAsXMLString():String {
			var x:XML = <LeadersunittypegroupsVo/>;
			x.@id = _id;
			x.@leaderId = _leaderId;
			x.@unittypegroupId = _unittypegroupId;
			x.@name = _name;
			x.@code = _code;
			x.@airCargoCapacity = _airCargoCapacity;
			x.@navalCargoCapacity = _navalCargoCapacity;
			x.@groundCargoCapacity = _groundCargoCapacity;
			x.@airCargoUsed = _airCargoUsed;
			x.@navalCargoUsed = _navalCargoUsed;
			x.@groundCargoUsed = _groundCargoUsed;
			return x.toXMLString();
		}

		public function getAsSubsetXMLString(omitProperties:Array):String {
			var x:XML = <LeadersunittypegroupsVo/>;
           if(!contains(omitProperties, 'id')){
			    x.@id = _id;
           }
           if(!contains(omitProperties, 'leaderId')){
			    x.@leaderId = _leaderId;
           }
           if(!contains(omitProperties, 'unittypegroupId')){
			    x.@unittypegroupId = _unittypegroupId;
           }
           if(!contains(omitProperties, 'name')){
			    x.@name = _name;
           }
           if(!contains(omitProperties, 'code')){
			    x.@code = _code;
           }
           if(!contains(omitProperties, 'airCargoCapacity')){
			    x.@airCargoCapacity = _airCargoCapacity;
           }
           if(!contains(omitProperties, 'navalCargoCapacity')){
			    x.@navalCargoCapacity = _navalCargoCapacity;
           }
           if(!contains(omitProperties, 'groundCargoCapacity')){
			    x.@groundCargoCapacity = _groundCargoCapacity;
           }
           if(!contains(omitProperties, 'airCargoUsed')){
			    x.@airCargoUsed = _airCargoUsed;
           }
           if(!contains(omitProperties, 'navalCargoUsed')){
			    x.@navalCargoUsed = _navalCargoUsed;
           }
           if(!contains(omitProperties, 'groundCargoUsed')){
			    x.@groundCargoUsed = _groundCargoUsed;
           }
			return x.toXMLString();
		}

		public function setFromXMLAttributes(x:XML):void {
			_id = x.@id;
			_leaderId = x.@leaderId;
			_unittypegroupId = x.@unittypegroupId;
			_name = x.@name;
			_code = x.@code;
			_airCargoCapacity = x.@airCargoCapacity;
			_navalCargoCapacity = x.@navalCargoCapacity;
			_groundCargoCapacity = x.@groundCargoCapacity;
			_airCargoUsed = x.@airCargoUsed;
			_navalCargoUsed = x.@navalCargoUsed;
			_groundCargoUsed = x.@groundCargoUsed;
		}

		public function setFromXMLElements(x:XML):void {
			_id = Number(x.id.toString());
			_leaderId = Number(x.leader_id.toString());
			_unittypegroupId = Number(x.unittypegroup_id.toString());
			_name = x.name.toString();
			_code = x.code.toString();
			_airCargoCapacity = Number(x.air_cargo_capacity.toString());
			_navalCargoCapacity = Number(x.naval_cargo_capacity.toString());
			_groundCargoCapacity = Number(x.ground_cargo_capacity.toString());
			_airCargoUsed = Number(x.air_cargo_used.toString());
			_navalCargoUsed = Number(x.naval_cargo_used.toString());
			_groundCargoUsed = Number(x.ground_cargo_used.toString());
		}

		public function setFromCamelCaseObj(o:Object):void {
			_id = o.id;
			_leaderId = o.leaderId;
			_unittypegroupId = o.unittypegroupId;
			_name = o.name;
			_code = o.code;
			_airCargoCapacity = o.airCargoCapacity;
			_navalCargoCapacity = o.navalCargoCapacity;
			_groundCargoCapacity = o.groundCargoCapacity;
			_airCargoUsed = o.airCargoUsed;
			_navalCargoUsed = o.navalCargoUsed;
			_groundCargoUsed = o.groundCargoUsed;
		}

		public function setFromObj(o:Object):void {
			_id = o.id;
			_leaderId = o.leader_id;
			_unittypegroupId = o.unittypegroup_id;
			_name = o.name;
			_code = o.code;
			_airCargoCapacity = o.air_cargo_capacity;
			_navalCargoCapacity = o.naval_cargo_capacity;
			_groundCargoCapacity = o.ground_cargo_capacity;
			_airCargoUsed = o.air_cargo_used;
			_navalCargoUsed = o.naval_cargo_used;
			_groundCargoUsed = o.ground_cargo_used;
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
			var tableName:String = 'leadersunittypegroups';
			var sortClause:String = '';

			sqlString = 'UPDATE leadersunittypegroups SET ' + 
				'leader_id = '+leaderId.toString()+', ' + 
				'unittypegroup_id = '+unittypegroupId.toString()+', ' + 
				'name = "'+name.toString()+'", ' + 
				'code = "'+code.toString()+'", ' + 
				'air_cargo_capacity = "'+airCargoCapacity.toString()+'", ' + 
				'naval_cargo_capacity = "'+navalCargoCapacity.toString()+'", ' + 
				'ground_cargo_capacity = "'+groundCargoCapacity.toString()+'", ' + 
				'air_cargo_used = "'+airCargoUsed.toString()+'", ' + 
				'naval_cargo_used = "'+navalCargoUsed.toString()+'", ' + 
				'ground_cargo_used = "'+groundCargoUsed.toString()+'" ' + 
				'WHERE id='+id.toString()+';'; 
			return sqlString;
		}
	}
}
