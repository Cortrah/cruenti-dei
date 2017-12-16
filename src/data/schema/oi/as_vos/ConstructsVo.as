package model.genVo{

	import model.genVo.*;
	import model.IModelObject;
	import model.DeltaPacket;

	[Bindable]
	public dynamic class ConstructsVo implements IModelObject{

		private var _id:int;
		private var _name:String;
		private var _constructDescription:String;
		private var _locationId:int;
		private var _regionId:int;
		private var _realmId:int;
		private var _constructtypeId:int;
		private var _level:int;
		private var _currentInvestment:int;
		private var _notes:String;
		private var _displaySymbol:int;
		private var _displayX:int;
		private var _displayY:int;
		private var _isSecret:int;
		private var _code:String;
		private var _providesGp:int;
		private var _providesAp:int;
		private var _providesNfp:int;
		private var _providesMana:int;
		private var _cityForts:int;
		private var _providesSfp:int;

		public function ConstructsVo( id:int=0,
			name:String='',
			constructDescription:String='',
			locationId:int=0,
			regionId:int=0,
			realmId:int=0,
			constructtypeId:int=0,
			level:int=0,
			currentInvestment:int=0,
			notes:String='',
			displaySymbol:int=0,
			displayX:int=0,
			displayY:int=0,
			isSecret:int=0,
			code:String='',
			providesGp:int=0,
			providesAp:int=0,
			providesNfp:int=0,
			providesMana:int=0,
			cityForts:int=0,
			providesSfp:int=0) {

				_id=id;
				_name=name;
				_constructDescription=constructDescription;
				_locationId=locationId;
				_regionId=regionId;
				_realmId=realmId;
				_constructtypeId=constructtypeId;
				_level=level;
				_currentInvestment=currentInvestment;
				_notes=notes;
				_displaySymbol=displaySymbol;
				_displayX=displayX;
				_displayY=displayY;
				_isSecret=isSecret;
				_code=code;
				_providesGp=providesGp;
				_providesAp=providesAp;
				_providesNfp=providesNfp;
				_providesMana=providesMana;
				_cityForts=cityForts;
				_providesSfp=providesSfp;
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
		public function get constructDescription():String {
			return _constructDescription;
		}
		public function get locationId():int {
			return _locationId;
		}
		public function get regionId():int {
			return _regionId;
		}
		public function get realmId():int {
			return _realmId;
		}
		public function get constructtypeId():int {
			return _constructtypeId;
		}
		public function get level():int {
			return _level;
		}
		public function get currentInvestment():int {
			return _currentInvestment;
		}
		public function get notes():String {
			return _notes;
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
		public function get isSecret():int {
			return _isSecret;
		}
		public function get code():String {
			return _code;
		}
		public function get providesGp():int {
			return _providesGp;
		}
		public function get providesAp():int {
			return _providesAp;
		}
		public function get providesNfp():int {
			return _providesNfp;
		}
		public function get providesMana():int {
			return _providesMana;
		}
		public function get cityForts():int {
			return _cityForts;
		}
		public function get providesSfp():int {
			return _providesSfp;
		}

		public function set id(value:int):void {
			_id= value;
		}
		public function set name(value:String):void {
			_name= value;
		}
		public function set constructDescription(value:String):void {
			_constructDescription= value;
		}
		public function set locationId(value:int):void {
			_locationId= value;
		}
		public function set regionId(value:int):void {
			_regionId= value;
		}
		public function set realmId(value:int):void {
			_realmId= value;
		}
		public function set constructtypeId(value:int):void {
			_constructtypeId= value;
		}
		public function set level(value:int):void {
			_level= value;
		}
		public function set currentInvestment(value:int):void {
			_currentInvestment= value;
		}
		public function set notes(value:String):void {
			_notes= value;
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
		public function set isSecret(value:int):void {
			_isSecret= value;
		}
		public function set code(value:String):void {
			_code= value;
		}
		public function set providesGp(value:int):void {
			_providesGp= value;
		}
		public function set providesAp(value:int):void {
			_providesAp= value;
		}
		public function set providesNfp(value:int):void {
			_providesNfp= value;
		}
		public function set providesMana(value:int):void {
			_providesMana= value;
		}
		public function set cityForts(value:int):void {
			_cityForts= value;
		}
		public function set providesSfp(value:int):void {
			_providesSfp= value;
		}

		public function getAsXMLString():String {
			var x:XML = <ConstructsVo/>;
			x.@id = _id;
			x.@name = _name;
			x.@constructDescription = _constructDescription;
			x.@locationId = _locationId;
			x.@regionId = _regionId;
			x.@realmId = _realmId;
			x.@constructtypeId = _constructtypeId;
			x.@level = _level;
			x.@currentInvestment = _currentInvestment;
			x.@notes = _notes;
			x.@displaySymbol = _displaySymbol;
			x.@displayX = _displayX;
			x.@displayY = _displayY;
			x.@isSecret = _isSecret;
			x.@code = _code;
			x.@providesGp = _providesGp;
			x.@providesAp = _providesAp;
			x.@providesNfp = _providesNfp;
			x.@providesMana = _providesMana;
			x.@cityForts = _cityForts;
			x.@providesSfp = _providesSfp;
			return x.toXMLString();
		}

		public function getAsSubsetXMLString(omitProperties:Array):String {
			var x:XML = <ConstructsVo/>;
           if(!contains(omitProperties, 'id')){
			    x.@id = _id;
           }
           if(!contains(omitProperties, 'name')){
			    x.@name = _name;
           }
           if(!contains(omitProperties, 'constructDescription')){
			    x.@constructDescription = _constructDescription;
           }
           if(!contains(omitProperties, 'locationId')){
			    x.@locationId = _locationId;
           }
           if(!contains(omitProperties, 'regionId')){
			    x.@regionId = _regionId;
           }
           if(!contains(omitProperties, 'realmId')){
			    x.@realmId = _realmId;
           }
           if(!contains(omitProperties, 'constructtypeId')){
			    x.@constructtypeId = _constructtypeId;
           }
           if(!contains(omitProperties, 'level')){
			    x.@level = _level;
           }
           if(!contains(omitProperties, 'currentInvestment')){
			    x.@currentInvestment = _currentInvestment;
           }
           if(!contains(omitProperties, 'notes')){
			    x.@notes = _notes;
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
           if(!contains(omitProperties, 'isSecret')){
			    x.@isSecret = _isSecret;
           }
           if(!contains(omitProperties, 'code')){
			    x.@code = _code;
           }
           if(!contains(omitProperties, 'providesGp')){
			    x.@providesGp = _providesGp;
           }
           if(!contains(omitProperties, 'providesAp')){
			    x.@providesAp = _providesAp;
           }
           if(!contains(omitProperties, 'providesNfp')){
			    x.@providesNfp = _providesNfp;
           }
           if(!contains(omitProperties, 'providesMana')){
			    x.@providesMana = _providesMana;
           }
           if(!contains(omitProperties, 'cityForts')){
			    x.@cityForts = _cityForts;
           }
           if(!contains(omitProperties, 'providesSfp')){
			    x.@providesSfp = _providesSfp;
           }
			return x.toXMLString();
		}

		public function setFromXMLAttributes(x:XML):void {
			_id = x.@id;
			_name = x.@name;
			_constructDescription = x.@constructDescription;
			_locationId = x.@locationId;
			_regionId = x.@regionId;
			_realmId = x.@realmId;
			_constructtypeId = x.@constructtypeId;
			_level = x.@level;
			_currentInvestment = x.@currentInvestment;
			_notes = x.@notes;
			_displaySymbol = x.@displaySymbol;
			_displayX = x.@displayX;
			_displayY = x.@displayY;
			_isSecret = x.@isSecret;
			_code = x.@code;
			_providesGp = x.@providesGp;
			_providesAp = x.@providesAp;
			_providesNfp = x.@providesNfp;
			_providesMana = x.@providesMana;
			_cityForts = x.@cityForts;
			_providesSfp = x.@providesSfp;
		}

		public function setFromXMLElements(x:XML):void {
			_id = Number(x.id.toString());
			_name = x.name.toString();
			_constructDescription = x.construct_description.toString();
			_locationId = Number(x.location_id.toString());
			_regionId = Number(x.region_id.toString());
			_realmId = Number(x.realm_id.toString());
			_constructtypeId = Number(x.constructtype_id.toString());
			_level = Number(x.level.toString());
			_currentInvestment = Number(x.current_investment.toString());
			_notes = x.notes.toString();
			_displaySymbol = Number(x.display_symbol.toString());
			_displayX = Number(x.display_x.toString());
			_displayY = Number(x.display_y.toString());
			_isSecret = Number(x.is_secret.toString());
			_code = x.code.toString();
			_providesGp = Number(x.provides_gp.toString());
			_providesAp = Number(x.provides_ap.toString());
			_providesNfp = Number(x.provides_nfp.toString());
			_providesMana = Number(x.provides_mana.toString());
			_cityForts = Number(x.city_forts.toString());
			_providesSfp = Number(x.provides_sfp.toString());
		}

		public function setFromCamelCaseObj(o:Object):void {
			_id = o.id;
			_name = o.name;
			_constructDescription = o.constructDescription;
			_locationId = o.locationId;
			_regionId = o.regionId;
			_realmId = o.realmId;
			_constructtypeId = o.constructtypeId;
			_level = o.level;
			_currentInvestment = o.currentInvestment;
			_notes = o.notes;
			_displaySymbol = o.displaySymbol;
			_displayX = o.displayX;
			_displayY = o.displayY;
			_isSecret = o.isSecret;
			_code = o.code;
			_providesGp = o.providesGp;
			_providesAp = o.providesAp;
			_providesNfp = o.providesNfp;
			_providesMana = o.providesMana;
			_cityForts = o.cityForts;
			_providesSfp = o.providesSfp;
		}

		public function setFromObj(o:Object):void {
			_id = o.id;
			_name = o.name;
			_constructDescription = o.construct_description;
			_locationId = o.location_id;
			_regionId = o.region_id;
			_realmId = o.realm_id;
			_constructtypeId = o.constructtype_id;
			_level = o.level;
			_currentInvestment = o.current_investment;
			_notes = o.notes;
			_displaySymbol = o.display_symbol;
			_displayX = o.display_x;
			_displayY = o.display_y;
			_isSecret = o.is_secret;
			_code = o.code;
			_providesGp = o.provides_gp;
			_providesAp = o.provides_ap;
			_providesNfp = o.provides_nfp;
			_providesMana = o.provides_mana;
			_cityForts = o.city_forts;
			_providesSfp = o.provides_sfp;
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
			var tableName:String = 'constructs';
			var sortClause:String = '';

			sqlString = 'UPDATE constructs SET ' + 
				'name = "'+name.toString()+'", ' + 
				'construct_description = "'+constructDescription.toString()+'", ' + 
				'location_id = "'+locationId.toString()+'", ' + 
				'region_id = "'+regionId.toString()+'", ' + 
				'realm_id = "'+realmId.toString()+'", ' + 
				'constructtype_id = "'+constructtypeId.toString()+'", ' + 
				'level = "'+level.toString()+'", ' + 
				'current_investment = "'+currentInvestment.toString()+'", ' + 
				'notes = "'+notes.toString()+'", ' + 
				'display_symbol = "'+displaySymbol.toString()+'", ' + 
				'display_x = "'+displayX.toString()+'", ' + 
				'display_y = "'+displayY.toString()+'", ' + 
				'is_secret = "'+isSecret.toString()+'", ' + 
				'code = "'+code.toString()+'", ' + 
				'provides_gp = "'+providesGp.toString()+'", ' + 
				'provides_ap = "'+providesAp.toString()+'", ' + 
				'provides_nfp = "'+providesNfp.toString()+'", ' + 
				'provides_mana = "'+providesMana.toString()+'", ' + 
				'city_forts = "'+cityForts.toString()+'", ' + 
				'provides_sfp = "'+providesSfp.toString()+'" ' + 
				'WHERE id='+id.toString()+';'; 
			return sqlString;
		}
	}
}
