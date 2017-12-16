package model.genVo{

	import model.genVo.*;
	import model.IModelObject;
	import model.DeltaPacket;

	[Bindable]
	public dynamic class LeadersVo implements IModelObject{

		private var _id:int;
		private var _homeregionId:int;
		private var _trainingId:int;
		private var _kindredId:int;
		private var _name:String;
		private var _code:String;
		private var _command:int;
		private var _loyalty:int;
		private var _combat:int;
		private var _diplomacy:int;
		private var _sorcery:int;
		private var _age:int;
		private var _sex:String;
		private var _notes:String;
		private var _caryingGp:int;
		private var _caryingAp:int;
		private var _displaySymbol:int;
		private var _displayX:int;
		private var _displayY:int;
		private var _locationId:int;
		private var _agenttypeId:int;
		private var _realmId:int;

		public function LeadersVo( id:int=0,
			homeregionId:int=0,
			trainingId:int=0,
			kindredId:int=0,
			name:String='',
			code:String='',
			command:int=0,
			loyalty:int=0,
			combat:int=0,
			diplomacy:int=0,
			sorcery:int=0,
			age:int=0,
			sex:String='',
			notes:String='',
			caryingGp:int=0,
			caryingAp:int=0,
			displaySymbol:int=0,
			displayX:int=0,
			displayY:int=0,
			locationId:int=0,
			agenttypeId:int=0,
			realmId:int=0) {

				_id=id;
				_homeregionId=homeregionId;
				_trainingId=trainingId;
				_kindredId=kindredId;
				_name=name;
				_code=code;
				_command=command;
				_loyalty=loyalty;
				_combat=combat;
				_diplomacy=diplomacy;
				_sorcery=sorcery;
				_age=age;
				_sex=sex;
				_notes=notes;
				_caryingGp=caryingGp;
				_caryingAp=caryingAp;
				_displaySymbol=displaySymbol;
				_displayX=displayX;
				_displayY=displayY;
				_locationId=locationId;
				_agenttypeId=agenttypeId;
				_realmId=realmId;
		}

		public function getId():int{
			return _id;
		}

		public function get id():int {
			return _id;
		}
		public function get homeregionId():int {
			return _homeregionId;
		}
		public function get trainingId():int {
			return _trainingId;
		}
		public function get kindredId():int {
			return _kindredId;
		}
		public function get name():String {
			return _name;
		}
		public function get code():String {
			return _code;
		}
		public function get command():int {
			return _command;
		}
		public function get loyalty():int {
			return _loyalty;
		}
		public function get combat():int {
			return _combat;
		}
		public function get diplomacy():int {
			return _diplomacy;
		}
		public function get sorcery():int {
			return _sorcery;
		}
		public function get age():int {
			return _age;
		}
		public function get sex():String {
			return _sex;
		}
		public function get notes():String {
			return _notes;
		}
		public function get caryingGp():int {
			return _caryingGp;
		}
		public function get caryingAp():int {
			return _caryingAp;
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
		public function get locationId():int {
			return _locationId;
		}
		public function get agenttypeId():int {
			return _agenttypeId;
		}
		public function get realmId():int {
			return _realmId;
		}

		public function set id(value:int):void {
			_id= value;
		}
		public function set homeregionId(value:int):void {
			_homeregionId= value;
		}
		public function set trainingId(value:int):void {
			_trainingId= value;
		}
		public function set kindredId(value:int):void {
			_kindredId= value;
		}
		public function set name(value:String):void {
			_name= value;
		}
		public function set code(value:String):void {
			_code= value;
		}
		public function set command(value:int):void {
			_command= value;
		}
		public function set loyalty(value:int):void {
			_loyalty= value;
		}
		public function set combat(value:int):void {
			_combat= value;
		}
		public function set diplomacy(value:int):void {
			_diplomacy= value;
		}
		public function set sorcery(value:int):void {
			_sorcery= value;
		}
		public function set age(value:int):void {
			_age= value;
		}
		public function set sex(value:String):void {
			_sex= value;
		}
		public function set notes(value:String):void {
			_notes= value;
		}
		public function set caryingGp(value:int):void {
			_caryingGp= value;
		}
		public function set caryingAp(value:int):void {
			_caryingAp= value;
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
		public function set locationId(value:int):void {
			_locationId= value;
		}
		public function set agenttypeId(value:int):void {
			_agenttypeId= value;
		}
		public function set realmId(value:int):void {
			_realmId= value;
		}

		public function getAsXMLString():String {
			var x:XML = <LeadersVo/>;
			x.@id = _id;
			x.@homeregionId = _homeregionId;
			x.@trainingId = _trainingId;
			x.@kindredId = _kindredId;
			x.@name = _name;
			x.@code = _code;
			x.@command = _command;
			x.@loyalty = _loyalty;
			x.@combat = _combat;
			x.@diplomacy = _diplomacy;
			x.@sorcery = _sorcery;
			x.@age = _age;
			x.@sex = _sex;
			x.@notes = _notes;
			x.@caryingGp = _caryingGp;
			x.@caryingAp = _caryingAp;
			x.@displaySymbol = _displaySymbol;
			x.@displayX = _displayX;
			x.@displayY = _displayY;
			x.@locationId = _locationId;
			x.@agenttypeId = _agenttypeId;
			x.@realmId = _realmId;
			return x.toXMLString();
		}

		public function getAsSubsetXMLString(omitProperties:Array):String {
			var x:XML = <LeadersVo/>;
           if(!contains(omitProperties, 'id')){
			    x.@id = _id;
           }
           if(!contains(omitProperties, 'homeregionId')){
			    x.@homeregionId = _homeregionId;
           }
           if(!contains(omitProperties, 'trainingId')){
			    x.@trainingId = _trainingId;
           }
           if(!contains(omitProperties, 'kindredId')){
			    x.@kindredId = _kindredId;
           }
           if(!contains(omitProperties, 'name')){
			    x.@name = _name;
           }
           if(!contains(omitProperties, 'code')){
			    x.@code = _code;
           }
           if(!contains(omitProperties, 'command')){
			    x.@command = _command;
           }
           if(!contains(omitProperties, 'loyalty')){
			    x.@loyalty = _loyalty;
           }
           if(!contains(omitProperties, 'combat')){
			    x.@combat = _combat;
           }
           if(!contains(omitProperties, 'diplomacy')){
			    x.@diplomacy = _diplomacy;
           }
           if(!contains(omitProperties, 'sorcery')){
			    x.@sorcery = _sorcery;
           }
           if(!contains(omitProperties, 'age')){
			    x.@age = _age;
           }
           if(!contains(omitProperties, 'sex')){
			    x.@sex = _sex;
           }
           if(!contains(omitProperties, 'notes')){
			    x.@notes = _notes;
           }
           if(!contains(omitProperties, 'caryingGp')){
			    x.@caryingGp = _caryingGp;
           }
           if(!contains(omitProperties, 'caryingAp')){
			    x.@caryingAp = _caryingAp;
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
           if(!contains(omitProperties, 'locationId')){
			    x.@locationId = _locationId;
           }
           if(!contains(omitProperties, 'agenttypeId')){
			    x.@agenttypeId = _agenttypeId;
           }
           if(!contains(omitProperties, 'realmId')){
			    x.@realmId = _realmId;
           }
			return x.toXMLString();
		}

		public function setFromXMLAttributes(x:XML):void {
			_id = x.@id;
			_homeregionId = x.@homeregionId;
			_trainingId = x.@trainingId;
			_kindredId = x.@kindredId;
			_name = x.@name;
			_code = x.@code;
			_command = x.@command;
			_loyalty = x.@loyalty;
			_combat = x.@combat;
			_diplomacy = x.@diplomacy;
			_sorcery = x.@sorcery;
			_age = x.@age;
			_sex = x.@sex;
			_notes = x.@notes;
			_caryingGp = x.@caryingGp;
			_caryingAp = x.@caryingAp;
			_displaySymbol = x.@displaySymbol;
			_displayX = x.@displayX;
			_displayY = x.@displayY;
			_locationId = x.@locationId;
			_agenttypeId = x.@agenttypeId;
			_realmId = x.@realmId;
		}

		public function setFromXMLElements(x:XML):void {
			_id = Number(x.id.toString());
			_homeregionId = Number(x.homeregion_id.toString());
			_trainingId = Number(x.training_id.toString());
			_kindredId = Number(x.kindred_id.toString());
			_name = x.name.toString();
			_code = x.code.toString();
			_command = Number(x.command.toString());
			_loyalty = Number(x.loyalty.toString());
			_combat = Number(x.combat.toString());
			_diplomacy = Number(x.diplomacy.toString());
			_sorcery = Number(x.sorcery.toString());
			_age = Number(x.age.toString());
			_sex = x.sex.toString();
			_notes = x.notes.toString();
			_caryingGp = Number(x.carying_gp.toString());
			_caryingAp = Number(x.carying_ap.toString());
			_displaySymbol = Number(x.display_symbol.toString());
			_displayX = Number(x.display_x.toString());
			_displayY = Number(x.display_y.toString());
			_locationId = Number(x.location_id.toString());
			_agenttypeId = Number(x.agenttype_id.toString());
			_realmId = Number(x.realm_id.toString());
		}

		public function setFromCamelCaseObj(o:Object):void {
			_id = o.id;
			_homeregionId = o.homeregionId;
			_trainingId = o.trainingId;
			_kindredId = o.kindredId;
			_name = o.name;
			_code = o.code;
			_command = o.command;
			_loyalty = o.loyalty;
			_combat = o.combat;
			_diplomacy = o.diplomacy;
			_sorcery = o.sorcery;
			_age = o.age;
			_sex = o.sex;
			_notes = o.notes;
			_caryingGp = o.caryingGp;
			_caryingAp = o.caryingAp;
			_displaySymbol = o.displaySymbol;
			_displayX = o.displayX;
			_displayY = o.displayY;
			_locationId = o.locationId;
			_agenttypeId = o.agenttypeId;
			_realmId = o.realmId;
		}

		public function setFromObj(o:Object):void {
			_id = o.id;
			_homeregionId = o.homeregion_id;
			_trainingId = o.training_id;
			_kindredId = o.kindred_id;
			_name = o.name;
			_code = o.code;
			_command = o.command;
			_loyalty = o.loyalty;
			_combat = o.combat;
			_diplomacy = o.diplomacy;
			_sorcery = o.sorcery;
			_age = o.age;
			_sex = o.sex;
			_notes = o.notes;
			_caryingGp = o.carying_gp;
			_caryingAp = o.carying_ap;
			_displaySymbol = o.display_symbol;
			_displayX = o.display_x;
			_displayY = o.display_y;
			_locationId = o.location_id;
			_agenttypeId = o.agenttype_id;
			_realmId = o.realm_id;
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
			var tableName:String = 'leaders';
			var sortClause:String = '';

			sqlString = 'UPDATE leaders SET ' + 
				'homeregion_id = '+homeregionId.toString()+', ' + 
				'training_id = '+trainingId.toString()+', ' + 
				'kindred_id = '+kindredId.toString()+', ' + 
				'name = "'+name.toString()+'", ' + 
				'code = "'+code.toString()+'", ' + 
				'command = "'+command.toString()+'", ' + 
				'loyalty = "'+loyalty.toString()+'", ' + 
				'combat = "'+combat.toString()+'", ' + 
				'diplomacy = "'+diplomacy.toString()+'", ' + 
				'sorcery = "'+sorcery.toString()+'", ' + 
				'age = "'+age.toString()+'", ' + 
				'sex = "'+sex.toString()+'", ' + 
				'notes = "'+notes.toString()+'", ' + 
				'carying_gp = "'+caryingGp.toString()+'", ' + 
				'carying_ap = "'+caryingAp.toString()+'", ' + 
				'display_symbol = "'+displaySymbol.toString()+'", ' + 
				'display_x = "'+displayX.toString()+'", ' + 
				'display_y = "'+displayY.toString()+'", ' + 
				'location_id = "'+locationId.toString()+'", ' + 
				'agenttype_id = "'+agenttypeId.toString()+'", ' + 
				'realm_id = "'+realmId.toString()+'" ' + 
				'WHERE id='+id.toString()+';'; 
			return sqlString;
		}
	}
}
