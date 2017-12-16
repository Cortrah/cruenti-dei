package model.genVo{

	import model.genVo.*;
	import model.IModelObject;
	import model.DeltaPacket;

	[Bindable]
	public dynamic class LeaderactionsVo implements IModelObject{

		private var _id:int;
		private var _name:String;
		private var _code:String;
		private var _gpCost:int;
		private var _apCost:int;
		private var _nfpCost:int;
		private var _manaCost:int;
		private var _movementCost:int;
		private var _actioncategoryId:int;
		private var _effect:String;
		private var _description:String;
		private var _atlocationId:int;
		private var _isUsesroads:int;
		private var _startingPhase:int;
		private var _isSecret:int;
		private var _monitorLevel:String;
		private var _sfpCost:int;
		private var _totalManaCost:int;
		private var _isWithothers:int;
		private var _isPrimarytarget:int;
		private var _unitytypeId:int;
		private var _unittypeCode:String;
		private var _unitCount:int;
		private var _itemId:int;
		private var _itemName:String;
		private var _tolocationId:int;
		private var _otherlocationId:int;
		private var _movementtypeId:int;
		private var _notes:String;
		private var _actionXml:String;
		private var _feedbackTemplate:String;
		private var _queryTemplate:String;

		public function LeaderactionsVo( id:int=0,
			name:String='',
			code:String='',
			gpCost:int=0,
			apCost:int=0,
			nfpCost:int=0,
			manaCost:int=0,
			movementCost:int=0,
			actioncategoryId:int=0,
			effect:String='',
			description:String='',
			atlocationId:int=0,
			isUsesroads:int=0,
			startingPhase:int=0,
			isSecret:int=0,
			monitorLevel:String='',
			sfpCost:int=0,
			totalManaCost:int=0,
			isWithothers:int=0,
			isPrimarytarget:int=0,
			unitytypeId:int=0,
			unittypeCode:String='',
			unitCount:int=0,
			itemId:int=0,
			itemName:String='',
			tolocationId:int=0,
			otherlocationId:int=0,
			movementtypeId:int=0,
			notes:String='',
			actionXml:String='',
			feedbackTemplate:String='',
			queryTemplate:String='') {

				_id=id;
				_name=name;
				_code=code;
				_gpCost=gpCost;
				_apCost=apCost;
				_nfpCost=nfpCost;
				_manaCost=manaCost;
				_movementCost=movementCost;
				_actioncategoryId=actioncategoryId;
				_effect=effect;
				_description=description;
				_atlocationId=atlocationId;
				_isUsesroads=isUsesroads;
				_startingPhase=startingPhase;
				_isSecret=isSecret;
				_monitorLevel=monitorLevel;
				_sfpCost=sfpCost;
				_totalManaCost=totalManaCost;
				_isWithothers=isWithothers;
				_isPrimarytarget=isPrimarytarget;
				_unitytypeId=unitytypeId;
				_unittypeCode=unittypeCode;
				_unitCount=unitCount;
				_itemId=itemId;
				_itemName=itemName;
				_tolocationId=tolocationId;
				_otherlocationId=otherlocationId;
				_movementtypeId=movementtypeId;
				_notes=notes;
				_actionXml=actionXml;
				_feedbackTemplate=feedbackTemplate;
				_queryTemplate=queryTemplate;
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
		public function get movementCost():int {
			return _movementCost;
		}
		public function get actioncategoryId():int {
			return _actioncategoryId;
		}
		public function get effect():String {
			return _effect;
		}
		public function get description():String {
			return _description;
		}
		public function get atlocationId():int {
			return _atlocationId;
		}
		public function get isUsesroads():int {
			return _isUsesroads;
		}
		public function get startingPhase():int {
			return _startingPhase;
		}
		public function get isSecret():int {
			return _isSecret;
		}
		public function get monitorLevel():String {
			return _monitorLevel;
		}
		public function get sfpCost():int {
			return _sfpCost;
		}
		public function get totalManaCost():int {
			return _totalManaCost;
		}
		public function get isWithothers():int {
			return _isWithothers;
		}
		public function get isPrimarytarget():int {
			return _isPrimarytarget;
		}
		public function get unitytypeId():int {
			return _unitytypeId;
		}
		public function get unittypeCode():String {
			return _unittypeCode;
		}
		public function get unitCount():int {
			return _unitCount;
		}
		public function get itemId():int {
			return _itemId;
		}
		public function get itemName():String {
			return _itemName;
		}
		public function get tolocationId():int {
			return _tolocationId;
		}
		public function get otherlocationId():int {
			return _otherlocationId;
		}
		public function get movementtypeId():int {
			return _movementtypeId;
		}
		public function get notes():String {
			return _notes;
		}
		public function get actionXml():String {
			return _actionXml;
		}
		public function get feedbackTemplate():String {
			return _feedbackTemplate;
		}
		public function get queryTemplate():String {
			return _queryTemplate;
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
		public function set movementCost(value:int):void {
			_movementCost= value;
		}
		public function set actioncategoryId(value:int):void {
			_actioncategoryId= value;
		}
		public function set effect(value:String):void {
			_effect= value;
		}
		public function set description(value:String):void {
			_description= value;
		}
		public function set atlocationId(value:int):void {
			_atlocationId= value;
		}
		public function set isUsesroads(value:int):void {
			_isUsesroads= value;
		}
		public function set startingPhase(value:int):void {
			_startingPhase= value;
		}
		public function set isSecret(value:int):void {
			_isSecret= value;
		}
		public function set monitorLevel(value:String):void {
			_monitorLevel= value;
		}
		public function set sfpCost(value:int):void {
			_sfpCost= value;
		}
		public function set totalManaCost(value:int):void {
			_totalManaCost= value;
		}
		public function set isWithothers(value:int):void {
			_isWithothers= value;
		}
		public function set isPrimarytarget(value:int):void {
			_isPrimarytarget= value;
		}
		public function set unitytypeId(value:int):void {
			_unitytypeId= value;
		}
		public function set unittypeCode(value:String):void {
			_unittypeCode= value;
		}
		public function set unitCount(value:int):void {
			_unitCount= value;
		}
		public function set itemId(value:int):void {
			_itemId= value;
		}
		public function set itemName(value:String):void {
			_itemName= value;
		}
		public function set tolocationId(value:int):void {
			_tolocationId= value;
		}
		public function set otherlocationId(value:int):void {
			_otherlocationId= value;
		}
		public function set movementtypeId(value:int):void {
			_movementtypeId= value;
		}
		public function set notes(value:String):void {
			_notes= value;
		}
		public function set actionXml(value:String):void {
			_actionXml= value;
		}
		public function set feedbackTemplate(value:String):void {
			_feedbackTemplate= value;
		}
		public function set queryTemplate(value:String):void {
			_queryTemplate= value;
		}

		public function getAsXMLString():String {
			var x:XML = <LeaderactionsVo/>;
			x.@id = _id;
			x.@name = _name;
			x.@code = _code;
			x.@gpCost = _gpCost;
			x.@apCost = _apCost;
			x.@nfpCost = _nfpCost;
			x.@manaCost = _manaCost;
			x.@movementCost = _movementCost;
			x.@actioncategoryId = _actioncategoryId;
			x.@effect = _effect;
			x.@description = _description;
			x.@atlocationId = _atlocationId;
			x.@isUsesroads = _isUsesroads;
			x.@startingPhase = _startingPhase;
			x.@isSecret = _isSecret;
			x.@monitorLevel = _monitorLevel;
			x.@sfpCost = _sfpCost;
			x.@totalManaCost = _totalManaCost;
			x.@isWithothers = _isWithothers;
			x.@isPrimarytarget = _isPrimarytarget;
			x.@unitytypeId = _unitytypeId;
			x.@unittypeCode = _unittypeCode;
			x.@unitCount = _unitCount;
			x.@itemId = _itemId;
			x.@itemName = _itemName;
			x.@tolocationId = _tolocationId;
			x.@otherlocationId = _otherlocationId;
			x.@movementtypeId = _movementtypeId;
			x.@notes = _notes;
			x.@actionXml = _actionXml;
			x.@feedbackTemplate = _feedbackTemplate;
			x.@queryTemplate = _queryTemplate;
			return x.toXMLString();
		}

		public function getAsSubsetXMLString(omitProperties:Array):String {
			var x:XML = <LeaderactionsVo/>;
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
           if(!contains(omitProperties, 'movementCost')){
			    x.@movementCost = _movementCost;
           }
           if(!contains(omitProperties, 'actioncategoryId')){
			    x.@actioncategoryId = _actioncategoryId;
           }
           if(!contains(omitProperties, 'effect')){
			    x.@effect = _effect;
           }
           if(!contains(omitProperties, 'description')){
			    x.@description = _description;
           }
           if(!contains(omitProperties, 'atlocationId')){
			    x.@atlocationId = _atlocationId;
           }
           if(!contains(omitProperties, 'isUsesroads')){
			    x.@isUsesroads = _isUsesroads;
           }
           if(!contains(omitProperties, 'startingPhase')){
			    x.@startingPhase = _startingPhase;
           }
           if(!contains(omitProperties, 'isSecret')){
			    x.@isSecret = _isSecret;
           }
           if(!contains(omitProperties, 'monitorLevel')){
			    x.@monitorLevel = _monitorLevel;
           }
           if(!contains(omitProperties, 'sfpCost')){
			    x.@sfpCost = _sfpCost;
           }
           if(!contains(omitProperties, 'totalManaCost')){
			    x.@totalManaCost = _totalManaCost;
           }
           if(!contains(omitProperties, 'isWithothers')){
			    x.@isWithothers = _isWithothers;
           }
           if(!contains(omitProperties, 'isPrimarytarget')){
			    x.@isPrimarytarget = _isPrimarytarget;
           }
           if(!contains(omitProperties, 'unitytypeId')){
			    x.@unitytypeId = _unitytypeId;
           }
           if(!contains(omitProperties, 'unittypeCode')){
			    x.@unittypeCode = _unittypeCode;
           }
           if(!contains(omitProperties, 'unitCount')){
			    x.@unitCount = _unitCount;
           }
           if(!contains(omitProperties, 'itemId')){
			    x.@itemId = _itemId;
           }
           if(!contains(omitProperties, 'itemName')){
			    x.@itemName = _itemName;
           }
           if(!contains(omitProperties, 'tolocationId')){
			    x.@tolocationId = _tolocationId;
           }
           if(!contains(omitProperties, 'otherlocationId')){
			    x.@otherlocationId = _otherlocationId;
           }
           if(!contains(omitProperties, 'movementtypeId')){
			    x.@movementtypeId = _movementtypeId;
           }
           if(!contains(omitProperties, 'notes')){
			    x.@notes = _notes;
           }
           if(!contains(omitProperties, 'actionXml')){
			    x.@actionXml = _actionXml;
           }
           if(!contains(omitProperties, 'feedbackTemplate')){
			    x.@feedbackTemplate = _feedbackTemplate;
           }
           if(!contains(omitProperties, 'queryTemplate')){
			    x.@queryTemplate = _queryTemplate;
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
			_movementCost = x.@movementCost;
			_actioncategoryId = x.@actioncategoryId;
			_effect = x.@effect;
			_description = x.@description;
			_atlocationId = x.@atlocationId;
			_isUsesroads = x.@isUsesroads;
			_startingPhase = x.@startingPhase;
			_isSecret = x.@isSecret;
			_monitorLevel = x.@monitorLevel;
			_sfpCost = x.@sfpCost;
			_totalManaCost = x.@totalManaCost;
			_isWithothers = x.@isWithothers;
			_isPrimarytarget = x.@isPrimarytarget;
			_unitytypeId = x.@unitytypeId;
			_unittypeCode = x.@unittypeCode;
			_unitCount = x.@unitCount;
			_itemId = x.@itemId;
			_itemName = x.@itemName;
			_tolocationId = x.@tolocationId;
			_otherlocationId = x.@otherlocationId;
			_movementtypeId = x.@movementtypeId;
			_notes = x.@notes;
			_actionXml = x.@actionXml;
			_feedbackTemplate = x.@feedbackTemplate;
			_queryTemplate = x.@queryTemplate;
		}

		public function setFromXMLElements(x:XML):void {
			_id = Number(x.id.toString());
			_name = x.name.toString();
			_code = x.code.toString();
			_gpCost = Number(x.gp_cost.toString());
			_apCost = Number(x.ap_cost.toString());
			_nfpCost = Number(x.nfp_cost.toString());
			_manaCost = Number(x.mana_cost.toString());
			_movementCost = Number(x.movement_cost.toString());
			_actioncategoryId = Number(x.actioncategory_id.toString());
			_effect = x.effect.toString();
			_description = x.description.toString();
			_atlocationId = Number(x.atlocation_id.toString());
			_isUsesroads = Number(x.is_usesroads.toString());
			_startingPhase = Number(x.starting_phase.toString());
			_isSecret = Number(x.is_secret.toString());
			_monitorLevel = x.monitor_level.toString();
			_sfpCost = Number(x.sfp_cost.toString());
			_totalManaCost = Number(x.total_mana_cost.toString());
			_isWithothers = Number(x.is_withothers.toString());
			_isPrimarytarget = Number(x.is_primarytarget.toString());
			_unitytypeId = Number(x.unitytype_id.toString());
			_unittypeCode = x.unittype_code.toString();
			_unitCount = Number(x.unit_count.toString());
			_itemId = Number(x.item_id.toString());
			_itemName = x.item_name.toString();
			_tolocationId = Number(x.tolocation_id.toString());
			_otherlocationId = Number(x.otherlocation_id.toString());
			_movementtypeId = Number(x.movementtype_id.toString());
			_notes = x.notes.toString();
			_actionXml = x.action_xml.toString();
			_feedbackTemplate = x.feedback_template.toString();
			_queryTemplate = x.query_template.toString();
		}

		public function setFromCamelCaseObj(o:Object):void {
			_id = o.id;
			_name = o.name;
			_code = o.code;
			_gpCost = o.gpCost;
			_apCost = o.apCost;
			_nfpCost = o.nfpCost;
			_manaCost = o.manaCost;
			_movementCost = o.movementCost;
			_actioncategoryId = o.actioncategoryId;
			_effect = o.effect;
			_description = o.description;
			_atlocationId = o.atlocationId;
			_isUsesroads = o.isUsesroads;
			_startingPhase = o.startingPhase;
			_isSecret = o.isSecret;
			_monitorLevel = o.monitorLevel;
			_sfpCost = o.sfpCost;
			_totalManaCost = o.totalManaCost;
			_isWithothers = o.isWithothers;
			_isPrimarytarget = o.isPrimarytarget;
			_unitytypeId = o.unitytypeId;
			_unittypeCode = o.unittypeCode;
			_unitCount = o.unitCount;
			_itemId = o.itemId;
			_itemName = o.itemName;
			_tolocationId = o.tolocationId;
			_otherlocationId = o.otherlocationId;
			_movementtypeId = o.movementtypeId;
			_notes = o.notes;
			_actionXml = o.actionXml;
			_feedbackTemplate = o.feedbackTemplate;
			_queryTemplate = o.queryTemplate;
		}

		public function setFromObj(o:Object):void {
			_id = o.id;
			_name = o.name;
			_code = o.code;
			_gpCost = o.gp_cost;
			_apCost = o.ap_cost;
			_nfpCost = o.nfp_cost;
			_manaCost = o.mana_cost;
			_movementCost = o.movement_cost;
			_actioncategoryId = o.actioncategory_id;
			_effect = o.effect;
			_description = o.description;
			_atlocationId = o.atlocation_id;
			_isUsesroads = o.is_usesroads;
			_startingPhase = o.starting_phase;
			_isSecret = o.is_secret;
			_monitorLevel = o.monitor_level;
			_sfpCost = o.sfp_cost;
			_totalManaCost = o.total_mana_cost;
			_isWithothers = o.is_withothers;
			_isPrimarytarget = o.is_primarytarget;
			_unitytypeId = o.unitytype_id;
			_unittypeCode = o.unittype_code;
			_unitCount = o.unit_count;
			_itemId = o.item_id;
			_itemName = o.item_name;
			_tolocationId = o.tolocation_id;
			_otherlocationId = o.otherlocation_id;
			_movementtypeId = o.movementtype_id;
			_notes = o.notes;
			_actionXml = o.action_xml;
			_feedbackTemplate = o.feedback_template;
			_queryTemplate = o.query_template;
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
			var tableName:String = 'leaderactions';
			var sortClause:String = '';

			sqlString = 'UPDATE leaderactions SET ' + 
				'name = "'+name.toString()+'", ' + 
				'code = "'+code.toString()+'", ' + 
				'gp_cost = "'+gpCost.toString()+'", ' + 
				'ap_cost = "'+apCost.toString()+'", ' + 
				'nfp_cost = "'+nfpCost.toString()+'", ' + 
				'mana_cost = "'+manaCost.toString()+'", ' + 
				'movement_cost = "'+movementCost.toString()+'", ' + 
				'actioncategory_id = "'+actioncategoryId.toString()+'", ' + 
				'effect = "'+effect.toString()+'", ' + 
				'description = "'+description.toString()+'", ' + 
				'atlocation_id = "'+atlocationId.toString()+'", ' + 
				'is_usesroads = "'+isUsesroads.toString()+'", ' + 
				'starting_phase = "'+startingPhase.toString()+'", ' + 
				'is_secret = "'+isSecret.toString()+'", ' + 
				'monitor_level = "'+monitorLevel.toString()+'", ' + 
				'sfp_cost = "'+sfpCost.toString()+'", ' + 
				'total_mana_cost = "'+totalManaCost.toString()+'", ' + 
				'is_withothers = "'+isWithothers.toString()+'", ' + 
				'is_primarytarget = "'+isPrimarytarget.toString()+'", ' + 
				'unitytype_id = "'+unitytypeId.toString()+'", ' + 
				'unittype_code = "'+unittypeCode.toString()+'", ' + 
				'unit_count = "'+unitCount.toString()+'", ' + 
				'item_id = "'+itemId.toString()+'", ' + 
				'item_name = "'+itemName.toString()+'", ' + 
				'tolocation_id = "'+tolocationId.toString()+'", ' + 
				'otherlocation_id = "'+otherlocationId.toString()+'", ' + 
				'movementtype_id = "'+movementtypeId.toString()+'", ' + 
				'notes = "'+notes.toString()+'", ' + 
				'action_xml = "'+actionXml.toString()+'", ' + 
				'feedback_template = "'+feedbackTemplate.toString()+'", ' + 
				'query_template = "'+queryTemplate.toString()+'" ' + 
				'WHERE id='+id.toString()+';'; 
			return sqlString;
		}
	}
}
