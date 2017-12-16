package model.genVo{

	import model.genVo.*;
	import model.IModelObject;
	import model.DeltaPacket;

	[Bindable]
	public dynamic class ItemsVo implements IModelObject{

		private var _id:int;
		private var _code:String;
		private var _name:String;
		private var _manaCost:int;
		private var _apCost:int;
		private var _nfpCost:int;
		private var _gpCost:int;
		private var _itemDescription:String;
		private var _itemEffect:String;
		private var _spellId:int;
		private var _manaCharge:int;
		private var _blankCost:int;
		private var _realmId:int;

		public function ItemsVo( id:int=0,
			code:String='',
			name:String='',
			manaCost:int=0,
			apCost:int=0,
			nfpCost:int=0,
			gpCost:int=0,
			itemDescription:String='',
			itemEffect:String='',
			spellId:int=0,
			manaCharge:int=0,
			blankCost:int=0,
			realmId:int=0) {

				_id=id;
				_code=code;
				_name=name;
				_manaCost=manaCost;
				_apCost=apCost;
				_nfpCost=nfpCost;
				_gpCost=gpCost;
				_itemDescription=itemDescription;
				_itemEffect=itemEffect;
				_spellId=spellId;
				_manaCharge=manaCharge;
				_blankCost=blankCost;
				_realmId=realmId;
		}

		public function getId():int{
			return _id;
		}

		public function get id():int {
			return _id;
		}
		public function get code():String {
			return _code;
		}
		public function get name():String {
			return _name;
		}
		public function get manaCost():int {
			return _manaCost;
		}
		public function get apCost():int {
			return _apCost;
		}
		public function get nfpCost():int {
			return _nfpCost;
		}
		public function get gpCost():int {
			return _gpCost;
		}
		public function get itemDescription():String {
			return _itemDescription;
		}
		public function get itemEffect():String {
			return _itemEffect;
		}
		public function get spellId():int {
			return _spellId;
		}
		public function get manaCharge():int {
			return _manaCharge;
		}
		public function get blankCost():int {
			return _blankCost;
		}
		public function get realmId():int {
			return _realmId;
		}

		public function set id(value:int):void {
			_id= value;
		}
		public function set code(value:String):void {
			_code= value;
		}
		public function set name(value:String):void {
			_name= value;
		}
		public function set manaCost(value:int):void {
			_manaCost= value;
		}
		public function set apCost(value:int):void {
			_apCost= value;
		}
		public function set nfpCost(value:int):void {
			_nfpCost= value;
		}
		public function set gpCost(value:int):void {
			_gpCost= value;
		}
		public function set itemDescription(value:String):void {
			_itemDescription= value;
		}
		public function set itemEffect(value:String):void {
			_itemEffect= value;
		}
		public function set spellId(value:int):void {
			_spellId= value;
		}
		public function set manaCharge(value:int):void {
			_manaCharge= value;
		}
		public function set blankCost(value:int):void {
			_blankCost= value;
		}
		public function set realmId(value:int):void {
			_realmId= value;
		}

		public function getAsXMLString():String {
			var x:XML = <ItemsVo/>;
			x.@id = _id;
			x.@code = _code;
			x.@name = _name;
			x.@manaCost = _manaCost;
			x.@apCost = _apCost;
			x.@nfpCost = _nfpCost;
			x.@gpCost = _gpCost;
			x.@itemDescription = _itemDescription;
			x.@itemEffect = _itemEffect;
			x.@spellId = _spellId;
			x.@manaCharge = _manaCharge;
			x.@blankCost = _blankCost;
			x.@realmId = _realmId;
			return x.toXMLString();
		}

		public function getAsSubsetXMLString(omitProperties:Array):String {
			var x:XML = <ItemsVo/>;
           if(!contains(omitProperties, 'id')){
			    x.@id = _id;
           }
           if(!contains(omitProperties, 'code')){
			    x.@code = _code;
           }
           if(!contains(omitProperties, 'name')){
			    x.@name = _name;
           }
           if(!contains(omitProperties, 'manaCost')){
			    x.@manaCost = _manaCost;
           }
           if(!contains(omitProperties, 'apCost')){
			    x.@apCost = _apCost;
           }
           if(!contains(omitProperties, 'nfpCost')){
			    x.@nfpCost = _nfpCost;
           }
           if(!contains(omitProperties, 'gpCost')){
			    x.@gpCost = _gpCost;
           }
           if(!contains(omitProperties, 'itemDescription')){
			    x.@itemDescription = _itemDescription;
           }
           if(!contains(omitProperties, 'itemEffect')){
			    x.@itemEffect = _itemEffect;
           }
           if(!contains(omitProperties, 'spellId')){
			    x.@spellId = _spellId;
           }
           if(!contains(omitProperties, 'manaCharge')){
			    x.@manaCharge = _manaCharge;
           }
           if(!contains(omitProperties, 'blankCost')){
			    x.@blankCost = _blankCost;
           }
           if(!contains(omitProperties, 'realmId')){
			    x.@realmId = _realmId;
           }
			return x.toXMLString();
		}

		public function setFromXMLAttributes(x:XML):void {
			_id = x.@id;
			_code = x.@code;
			_name = x.@name;
			_manaCost = x.@manaCost;
			_apCost = x.@apCost;
			_nfpCost = x.@nfpCost;
			_gpCost = x.@gpCost;
			_itemDescription = x.@itemDescription;
			_itemEffect = x.@itemEffect;
			_spellId = x.@spellId;
			_manaCharge = x.@manaCharge;
			_blankCost = x.@blankCost;
			_realmId = x.@realmId;
		}

		public function setFromXMLElements(x:XML):void {
			_id = Number(x.id.toString());
			_code = x.code.toString();
			_name = x.name.toString();
			_manaCost = Number(x.mana_cost.toString());
			_apCost = Number(x.ap_cost.toString());
			_nfpCost = Number(x.nfp_cost.toString());
			_gpCost = Number(x.gp_cost.toString());
			_itemDescription = x.item_description.toString();
			_itemEffect = x.item_effect.toString();
			_spellId = Number(x.spell_id.toString());
			_manaCharge = Number(x.mana_charge.toString());
			_blankCost = Number(x.blank_cost.toString());
			_realmId = Number(x.realm_id.toString());
		}

		public function setFromCamelCaseObj(o:Object):void {
			_id = o.id;
			_code = o.code;
			_name = o.name;
			_manaCost = o.manaCost;
			_apCost = o.apCost;
			_nfpCost = o.nfpCost;
			_gpCost = o.gpCost;
			_itemDescription = o.itemDescription;
			_itemEffect = o.itemEffect;
			_spellId = o.spellId;
			_manaCharge = o.manaCharge;
			_blankCost = o.blankCost;
			_realmId = o.realmId;
		}

		public function setFromObj(o:Object):void {
			_id = o.id;
			_code = o.code;
			_name = o.name;
			_manaCost = o.mana_cost;
			_apCost = o.ap_cost;
			_nfpCost = o.nfp_cost;
			_gpCost = o.gp_cost;
			_itemDescription = o.item_description;
			_itemEffect = o.item_effect;
			_spellId = o.spell_id;
			_manaCharge = o.mana_charge;
			_blankCost = o.blank_cost;
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
			var tableName:String = 'items';
			var sortClause:String = '';

			sqlString = 'UPDATE items SET ' + 
				'code = "'+code.toString()+'", ' + 
				'name = "'+name.toString()+'", ' + 
				'mana_cost = "'+manaCost.toString()+'", ' + 
				'ap_cost = "'+apCost.toString()+'", ' + 
				'nfp_cost = "'+nfpCost.toString()+'", ' + 
				'gp_cost = "'+gpCost.toString()+'", ' + 
				'item_description = "'+itemDescription.toString()+'", ' + 
				'item_effect = "'+itemEffect.toString()+'", ' + 
				'spell_id = "'+spellId.toString()+'", ' + 
				'mana_charge = "'+manaCharge.toString()+'", ' + 
				'blank_cost = "'+blankCost.toString()+'", ' + 
				'realm_id = "'+realmId.toString()+'" ' + 
				'WHERE id='+id.toString()+';'; 
			return sqlString;
		}
	}
}
