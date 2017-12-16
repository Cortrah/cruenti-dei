package model.genVo{

	import model.genVo.*;
	import model.IModelObject;
	import model.DeltaPacket;

	[Bindable]
	public dynamic class LeadersitemsVo implements IModelObject{

		private var _id:int;
		private var _leaderId:int;
		private var _itemId:int;
		private var _name:String;

		public function LeadersitemsVo( id:int=0,
			leaderId:int=0,
			itemId:int=0,
			name:String='') {

				_id=id;
				_leaderId=leaderId;
				_itemId=itemId;
				_name=name;
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
		public function get itemId():int {
			return _itemId;
		}
		public function get name():String {
			return _name;
		}

		public function set id(value:int):void {
			_id= value;
		}
		public function set leaderId(value:int):void {
			_leaderId= value;
		}
		public function set itemId(value:int):void {
			_itemId= value;
		}
		public function set name(value:String):void {
			_name= value;
		}

		public function getAsXMLString():String {
			var x:XML = <LeadersitemsVo/>;
			x.@id = _id;
			x.@leaderId = _leaderId;
			x.@itemId = _itemId;
			x.@name = _name;
			return x.toXMLString();
		}

		public function getAsSubsetXMLString(omitProperties:Array):String {
			var x:XML = <LeadersitemsVo/>;
           if(!contains(omitProperties, 'id')){
			    x.@id = _id;
           }
           if(!contains(omitProperties, 'leaderId')){
			    x.@leaderId = _leaderId;
           }
           if(!contains(omitProperties, 'itemId')){
			    x.@itemId = _itemId;
           }
           if(!contains(omitProperties, 'name')){
			    x.@name = _name;
           }
			return x.toXMLString();
		}

		public function setFromXMLAttributes(x:XML):void {
			_id = x.@id;
			_leaderId = x.@leaderId;
			_itemId = x.@itemId;
			_name = x.@name;
		}

		public function setFromXMLElements(x:XML):void {
			_id = Number(x.id.toString());
			_leaderId = Number(x.leader_id.toString());
			_itemId = Number(x.item_id.toString());
			_name = x.name.toString();
		}

		public function setFromCamelCaseObj(o:Object):void {
			_id = o.id;
			_leaderId = o.leaderId;
			_itemId = o.itemId;
			_name = o.name;
		}

		public function setFromObj(o:Object):void {
			_id = o.id;
			_leaderId = o.leader_id;
			_itemId = o.item_id;
			_name = o.name;
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
			var tableName:String = 'leadersitems';
			var sortClause:String = '';

			sqlString = 'UPDATE leadersitems SET ' + 
				'leader_id = '+leaderId.toString()+', ' + 
				'item_id = '+itemId.toString()+', ' + 
				'name = "'+name.toString()+'" ' + 
				'WHERE id='+id.toString()+';'; 
			return sqlString;
		}
	}
}
