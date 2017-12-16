package model.genVo{

	import model.genVo.*;
	import model.IModelObject;
	import model.DeltaPacket;

	[Bindable]
	public dynamic class KindredVo implements IModelObject{

		private var _id:int;
		private var _name:String;
		private var _code:String;
		private var _ageOfMajority:int;
		private var _averageLifeExpectancy:int;
		private var _averageCouth:int;
		private var _averageFerocity:int;
		private var _averageInteligence:int;
		private var _averageLoyalty:int;
		private var _isAmphibian:int;
		private var _isFlyer:int;
		private var _isArmored:int;
		private var _isVacumprotected:int;
		private var _kindredDescription:String;

		public function KindredVo( id:int=0,
			name:String='',
			code:String='',
			ageOfMajority:int=0,
			averageLifeExpectancy:int=0,
			averageCouth:int=0,
			averageFerocity:int=0,
			averageInteligence:int=0,
			averageLoyalty:int=0,
			isAmphibian:int=0,
			isFlyer:int=0,
			isArmored:int=0,
			isVacumprotected:int=0,
			kindredDescription:String='') {

				_id=id;
				_name=name;
				_code=code;
				_ageOfMajority=ageOfMajority;
				_averageLifeExpectancy=averageLifeExpectancy;
				_averageCouth=averageCouth;
				_averageFerocity=averageFerocity;
				_averageInteligence=averageInteligence;
				_averageLoyalty=averageLoyalty;
				_isAmphibian=isAmphibian;
				_isFlyer=isFlyer;
				_isArmored=isArmored;
				_isVacumprotected=isVacumprotected;
				_kindredDescription=kindredDescription;
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
		public function get ageOfMajority():int {
			return _ageOfMajority;
		}
		public function get averageLifeExpectancy():int {
			return _averageLifeExpectancy;
		}
		public function get averageCouth():int {
			return _averageCouth;
		}
		public function get averageFerocity():int {
			return _averageFerocity;
		}
		public function get averageInteligence():int {
			return _averageInteligence;
		}
		public function get averageLoyalty():int {
			return _averageLoyalty;
		}
		public function get isAmphibian():int {
			return _isAmphibian;
		}
		public function get isFlyer():int {
			return _isFlyer;
		}
		public function get isArmored():int {
			return _isArmored;
		}
		public function get isVacumprotected():int {
			return _isVacumprotected;
		}
		public function get kindredDescription():String {
			return _kindredDescription;
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
		public function set ageOfMajority(value:int):void {
			_ageOfMajority= value;
		}
		public function set averageLifeExpectancy(value:int):void {
			_averageLifeExpectancy= value;
		}
		public function set averageCouth(value:int):void {
			_averageCouth= value;
		}
		public function set averageFerocity(value:int):void {
			_averageFerocity= value;
		}
		public function set averageInteligence(value:int):void {
			_averageInteligence= value;
		}
		public function set averageLoyalty(value:int):void {
			_averageLoyalty= value;
		}
		public function set isAmphibian(value:int):void {
			_isAmphibian= value;
		}
		public function set isFlyer(value:int):void {
			_isFlyer= value;
		}
		public function set isArmored(value:int):void {
			_isArmored= value;
		}
		public function set isVacumprotected(value:int):void {
			_isVacumprotected= value;
		}
		public function set kindredDescription(value:String):void {
			_kindredDescription= value;
		}

		public function getAsXMLString():String {
			var x:XML = <KindredVo/>;
			x.@id = _id;
			x.@name = _name;
			x.@code = _code;
			x.@ageOfMajority = _ageOfMajority;
			x.@averageLifeExpectancy = _averageLifeExpectancy;
			x.@averageCouth = _averageCouth;
			x.@averageFerocity = _averageFerocity;
			x.@averageInteligence = _averageInteligence;
			x.@averageLoyalty = _averageLoyalty;
			x.@isAmphibian = _isAmphibian;
			x.@isFlyer = _isFlyer;
			x.@isArmored = _isArmored;
			x.@isVacumprotected = _isVacumprotected;
			x.@kindredDescription = _kindredDescription;
			return x.toXMLString();
		}

		public function getAsSubsetXMLString(omitProperties:Array):String {
			var x:XML = <KindredVo/>;
           if(!contains(omitProperties, 'id')){
			    x.@id = _id;
           }
           if(!contains(omitProperties, 'name')){
			    x.@name = _name;
           }
           if(!contains(omitProperties, 'code')){
			    x.@code = _code;
           }
           if(!contains(omitProperties, 'ageOfMajority')){
			    x.@ageOfMajority = _ageOfMajority;
           }
           if(!contains(omitProperties, 'averageLifeExpectancy')){
			    x.@averageLifeExpectancy = _averageLifeExpectancy;
           }
           if(!contains(omitProperties, 'averageCouth')){
			    x.@averageCouth = _averageCouth;
           }
           if(!contains(omitProperties, 'averageFerocity')){
			    x.@averageFerocity = _averageFerocity;
           }
           if(!contains(omitProperties, 'averageInteligence')){
			    x.@averageInteligence = _averageInteligence;
           }
           if(!contains(omitProperties, 'averageLoyalty')){
			    x.@averageLoyalty = _averageLoyalty;
           }
           if(!contains(omitProperties, 'isAmphibian')){
			    x.@isAmphibian = _isAmphibian;
           }
           if(!contains(omitProperties, 'isFlyer')){
			    x.@isFlyer = _isFlyer;
           }
           if(!contains(omitProperties, 'isArmored')){
			    x.@isArmored = _isArmored;
           }
           if(!contains(omitProperties, 'isVacumprotected')){
			    x.@isVacumprotected = _isVacumprotected;
           }
           if(!contains(omitProperties, 'kindredDescription')){
			    x.@kindredDescription = _kindredDescription;
           }
			return x.toXMLString();
		}

		public function setFromXMLAttributes(x:XML):void {
			_id = x.@id;
			_name = x.@name;
			_code = x.@code;
			_ageOfMajority = x.@ageOfMajority;
			_averageLifeExpectancy = x.@averageLifeExpectancy;
			_averageCouth = x.@averageCouth;
			_averageFerocity = x.@averageFerocity;
			_averageInteligence = x.@averageInteligence;
			_averageLoyalty = x.@averageLoyalty;
			_isAmphibian = x.@isAmphibian;
			_isFlyer = x.@isFlyer;
			_isArmored = x.@isArmored;
			_isVacumprotected = x.@isVacumprotected;
			_kindredDescription = x.@kindredDescription;
		}

		public function setFromXMLElements(x:XML):void {
			_id = Number(x.id.toString());
			_name = x.name.toString();
			_code = x.code.toString();
			_ageOfMajority = Number(x.age_of_majority.toString());
			_averageLifeExpectancy = Number(x.average_life_expectancy.toString());
			_averageCouth = Number(x.average_couth.toString());
			_averageFerocity = Number(x.average_ferocity.toString());
			_averageInteligence = Number(x.average_inteligence.toString());
			_averageLoyalty = Number(x.average_loyalty.toString());
			_isAmphibian = Number(x.is_amphibian.toString());
			_isFlyer = Number(x.is_flyer.toString());
			_isArmored = Number(x.is_armored.toString());
			_isVacumprotected = Number(x.is_vacumprotected.toString());
			_kindredDescription = x.kindred_description.toString();
		}

		public function setFromCamelCaseObj(o:Object):void {
			_id = o.id;
			_name = o.name;
			_code = o.code;
			_ageOfMajority = o.ageOfMajority;
			_averageLifeExpectancy = o.averageLifeExpectancy;
			_averageCouth = o.averageCouth;
			_averageFerocity = o.averageFerocity;
			_averageInteligence = o.averageInteligence;
			_averageLoyalty = o.averageLoyalty;
			_isAmphibian = o.isAmphibian;
			_isFlyer = o.isFlyer;
			_isArmored = o.isArmored;
			_isVacumprotected = o.isVacumprotected;
			_kindredDescription = o.kindredDescription;
		}

		public function setFromObj(o:Object):void {
			_id = o.id;
			_name = o.name;
			_code = o.code;
			_ageOfMajority = o.age_of_majority;
			_averageLifeExpectancy = o.average_life_expectancy;
			_averageCouth = o.average_couth;
			_averageFerocity = o.average_ferocity;
			_averageInteligence = o.average_inteligence;
			_averageLoyalty = o.average_loyalty;
			_isAmphibian = o.is_amphibian;
			_isFlyer = o.is_flyer;
			_isArmored = o.is_armored;
			_isVacumprotected = o.is_vacumprotected;
			_kindredDescription = o.kindred_description;
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
			var tableName:String = 'kindred';
			var sortClause:String = '';

			sqlString = 'UPDATE kindred SET ' + 
				'name = "'+name.toString()+'", ' + 
				'code = "'+code.toString()+'", ' + 
				'age_of_majority = "'+ageOfMajority.toString()+'", ' + 
				'average_life_expectancy = "'+averageLifeExpectancy.toString()+'", ' + 
				'average_couth = "'+averageCouth.toString()+'", ' + 
				'average_ferocity = "'+averageFerocity.toString()+'", ' + 
				'average_inteligence = "'+averageInteligence.toString()+'", ' + 
				'average_loyalty = "'+averageLoyalty.toString()+'", ' + 
				'is_amphibian = "'+isAmphibian.toString()+'", ' + 
				'is_flyer = "'+isFlyer.toString()+'", ' + 
				'is_armored = "'+isArmored.toString()+'", ' + 
				'is_vacumprotected = "'+isVacumprotected.toString()+'", ' + 
				'kindred_description = "'+kindredDescription.toString()+'" ' + 
				'WHERE id='+id.toString()+';'; 
			return sqlString;
		}
	}
}
