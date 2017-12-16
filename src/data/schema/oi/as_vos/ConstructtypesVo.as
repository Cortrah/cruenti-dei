package model.genVo{

	import model.genVo.*;
	import model.IModelObject;
	import model.DeltaPacket;

	[Bindable]
	public dynamic class ConstructtypesVo implements IModelObject{

		private var _id:int;
		private var _name:String;
		private var _code:String;
		private var _gpCost:int;
		private var _apCost:int;
		private var _nfpCost:int;
		private var _manaCost:int;
		private var _upgradefromtypeId:int;
		private var _constructtypeEffect:String;
		private var _constructtypeDescription:String;
		private var _providesGp:int;
		private var _providesAp:int;
		private var _providesMana:int;
		private var _cityForts:int;
		private var _displaySymbol:int;
		private var _providesNfp:int;
		private var _providesSfp:int;

		public function ConstructtypesVo( id:int=0,
			name:String='',
			code:String='',
			gpCost:int=0,
			apCost:int=0,
			nfpCost:int=0,
			manaCost:int=0,
			upgradefromtypeId:int=0,
			constructtypeEffect:String='',
			constructtypeDescription:String='',
			providesGp:int=0,
			providesAp:int=0,
			providesMana:int=0,
			cityForts:int=0,
			displaySymbol:int=0,
			providesNfp:int=0,
			providesSfp:int=0) {

				_id=id;
				_name=name;
				_code=code;
				_gpCost=gpCost;
				_apCost=apCost;
				_nfpCost=nfpCost;
				_manaCost=manaCost;
				_upgradefromtypeId=upgradefromtypeId;
				_constructtypeEffect=constructtypeEffect;
				_constructtypeDescription=constructtypeDescription;
				_providesGp=providesGp;
				_providesAp=providesAp;
				_providesMana=providesMana;
				_cityForts=cityForts;
				_displaySymbol=displaySymbol;
				_providesNfp=providesNfp;
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
		public function get code():String {
			return _code;
		}
		public function get gpCost():int {
			return _gpCost;
		}
		public function get apCost():int {
			return _apCost;
		}
		public function get nfpCost():int {
			return _nfpCost;
		}
		public function get manaCost():int {
			return _manaCost;
		}
		public function get upgradefromtypeId():int {
			return _upgradefromtypeId;
		}
		public function get constructtypeEffect():String {
			return _constructtypeEffect;
		}
		public function get constructtypeDescription():String {
			return _constructtypeDescription;
		}
		public function get providesGp():int {
			return _providesGp;
		}
		public function get providesAp():int {
			return _providesAp;
		}
		public function get providesMana():int {
			return _providesMana;
		}
		public function get cityForts():int {
			return _cityForts;
		}
		public function get displaySymbol():int {
			return _displaySymbol;
		}
		public function get providesNfp():int {
			return _providesNfp;
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
		public function set code(value:String):void {
			_code= value;
		}
		public function set gpCost(value:int):void {
			_gpCost= value;
		}
		public function set apCost(value:int):void {
			_apCost= value;
		}
		public function set nfpCost(value:int):void {
			_nfpCost= value;
		}
		public function set manaCost(value:int):void {
			_manaCost= value;
		}
		public function set upgradefromtypeId(value:int):void {
			_upgradefromtypeId= value;
		}
		public function set constructtypeEffect(value:String):void {
			_constructtypeEffect= value;
		}
		public function set constructtypeDescription(value:String):void {
			_constructtypeDescription= value;
		}
		public function set providesGp(value:int):void {
			_providesGp= value;
		}
		public function set providesAp(value:int):void {
			_providesAp= value;
		}
		public function set providesMana(value:int):void {
			_providesMana= value;
		}
		public function set cityForts(value:int):void {
			_cityForts= value;
		}
		public function set displaySymbol(value:int):void {
			_displaySymbol= value;
		}
		public function set providesNfp(value:int):void {
			_providesNfp= value;
		}
		public function set providesSfp(value:int):void {
			_providesSfp= value;
		}

		public function getAsXMLString():String {
			var x:XML = <ConstructtypesVo/>;
			x.@id = _id;
			x.@name = _name;
			x.@code = _code;
			x.@gpCost = _gpCost;
			x.@apCost = _apCost;
			x.@nfpCost = _nfpCost;
			x.@manaCost = _manaCost;
			x.@upgradefromtypeId = _upgradefromtypeId;
			x.@constructtypeEffect = _constructtypeEffect;
			x.@constructtypeDescription = _constructtypeDescription;
			x.@providesGp = _providesGp;
			x.@providesAp = _providesAp;
			x.@providesMana = _providesMana;
			x.@cityForts = _cityForts;
			x.@displaySymbol = _displaySymbol;
			x.@providesNfp = _providesNfp;
			x.@providesSfp = _providesSfp;
			return x.toXMLString();
		}

		public function getAsSubsetXMLString(omitProperties:Array):String {
			var x:XML = <ConstructtypesVo/>;
           if(!contains(omitProperties, 'id')){
			    x.@id = _id;
           }
           if(!contains(omitProperties, 'name')){
			    x.@name = _name;
           }
           if(!contains(omitProperties, 'code')){
			    x.@code = _code;
           }
           if(!contains(omitProperties, 'gpCost')){
			    x.@gpCost = _gpCost;
           }
           if(!contains(omitProperties, 'apCost')){
			    x.@apCost = _apCost;
           }
           if(!contains(omitProperties, 'nfpCost')){
			    x.@nfpCost = _nfpCost;
           }
           if(!contains(omitProperties, 'manaCost')){
			    x.@manaCost = _manaCost;
           }
           if(!contains(omitProperties, 'upgradefromtypeId')){
			    x.@upgradefromtypeId = _upgradefromtypeId;
           }
           if(!contains(omitProperties, 'constructtypeEffect')){
			    x.@constructtypeEffect = _constructtypeEffect;
           }
           if(!contains(omitProperties, 'constructtypeDescription')){
			    x.@constructtypeDescription = _constructtypeDescription;
           }
           if(!contains(omitProperties, 'providesGp')){
			    x.@providesGp = _providesGp;
           }
           if(!contains(omitProperties, 'providesAp')){
			    x.@providesAp = _providesAp;
           }
           if(!contains(omitProperties, 'providesMana')){
			    x.@providesMana = _providesMana;
           }
           if(!contains(omitProperties, 'cityForts')){
			    x.@cityForts = _cityForts;
           }
           if(!contains(omitProperties, 'displaySymbol')){
			    x.@displaySymbol = _displaySymbol;
           }
           if(!contains(omitProperties, 'providesNfp')){
			    x.@providesNfp = _providesNfp;
           }
           if(!contains(omitProperties, 'providesSfp')){
			    x.@providesSfp = _providesSfp;
           }
			return x.toXMLString();
		}

		public function setFromXMLAttributes(x:XML):void {
			_id = x.@id;
			_name = x.@name;
			_code = x.@code;
			_gpCost = x.@gpCost;
			_apCost = x.@apCost;
			_nfpCost = x.@nfpCost;
			_manaCost = x.@manaCost;
			_upgradefromtypeId = x.@upgradefromtypeId;
			_constructtypeEffect = x.@constructtypeEffect;
			_constructtypeDescription = x.@constructtypeDescription;
			_providesGp = x.@providesGp;
			_providesAp = x.@providesAp;
			_providesMana = x.@providesMana;
			_cityForts = x.@cityForts;
			_displaySymbol = x.@displaySymbol;
			_providesNfp = x.@providesNfp;
			_providesSfp = x.@providesSfp;
		}

		public function setFromXMLElements(x:XML):void {
			_id = Number(x.id.toString());
			_name = x.name.toString();
			_code = x.code.toString();
			_gpCost = Number(x.gp_cost.toString());
			_apCost = Number(x.ap_cost.toString());
			_nfpCost = Number(x.nfp_cost.toString());
			_manaCost = Number(x.mana_cost.toString());
			_upgradefromtypeId = Number(x.upgradefromtype_id.toString());
			_constructtypeEffect = x.constructtype_effect.toString();
			_constructtypeDescription = x.constructtype_description.toString();
			_providesGp = Number(x.provides_gp.toString());
			_providesAp = Number(x.provides_ap.toString());
			_providesMana = Number(x.provides_mana.toString());
			_cityForts = Number(x.city_forts.toString());
			_displaySymbol = Number(x.display_symbol.toString());
			_providesNfp = Number(x.provides_nfp.toString());
			_providesSfp = Number(x.provides_sfp.toString());
		}

		public function setFromCamelCaseObj(o:Object):void {
			_id = o.id;
			_name = o.name;
			_code = o.code;
			_gpCost = o.gpCost;
			_apCost = o.apCost;
			_nfpCost = o.nfpCost;
			_manaCost = o.manaCost;
			_upgradefromtypeId = o.upgradefromtypeId;
			_constructtypeEffect = o.constructtypeEffect;
			_constructtypeDescription = o.constructtypeDescription;
			_providesGp = o.providesGp;
			_providesAp = o.providesAp;
			_providesMana = o.providesMana;
			_cityForts = o.cityForts;
			_displaySymbol = o.displaySymbol;
			_providesNfp = o.providesNfp;
			_providesSfp = o.providesSfp;
		}

		public function setFromObj(o:Object):void {
			_id = o.id;
			_name = o.name;
			_code = o.code;
			_gpCost = o.gp_cost;
			_apCost = o.ap_cost;
			_nfpCost = o.nfp_cost;
			_manaCost = o.mana_cost;
			_upgradefromtypeId = o.upgradefromtype_id;
			_constructtypeEffect = o.constructtype_effect;
			_constructtypeDescription = o.constructtype_description;
			_providesGp = o.provides_gp;
			_providesAp = o.provides_ap;
			_providesMana = o.provides_mana;
			_cityForts = o.city_forts;
			_displaySymbol = o.display_symbol;
			_providesNfp = o.provides_nfp;
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
			var tableName:String = 'constructtypes';
			var sortClause:String = '';

			sqlString = 'UPDATE constructtypes SET ' + 
				'name = "'+name.toString()+'", ' + 
				'code = "'+code.toString()+'", ' + 
				'gp_cost = "'+gpCost.toString()+'", ' + 
				'ap_cost = "'+apCost.toString()+'", ' + 
				'nfp_cost = "'+nfpCost.toString()+'", ' + 
				'mana_cost = "'+manaCost.toString()+'", ' + 
				'upgradefromtype_id = "'+upgradefromtypeId.toString()+'", ' + 
				'constructtype_effect = "'+constructtypeEffect.toString()+'", ' + 
				'constructtype_description = "'+constructtypeDescription.toString()+'", ' + 
				'provides_gp = "'+providesGp.toString()+'", ' + 
				'provides_ap = "'+providesAp.toString()+'", ' + 
				'provides_mana = "'+providesMana.toString()+'", ' + 
				'city_forts = "'+cityForts.toString()+'", ' + 
				'display_symbol = "'+displaySymbol.toString()+'", ' + 
				'provides_nfp = "'+providesNfp.toString()+'", ' + 
				'provides_sfp = "'+providesSfp.toString()+'" ' + 
				'WHERE id='+id.toString()+';'; 
			return sqlString;
		}
	}
}
