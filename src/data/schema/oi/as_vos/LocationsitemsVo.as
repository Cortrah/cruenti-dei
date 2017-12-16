package model.genVo{

	import model.genVo.*;
	import model.IModelObject;
	import model.DeltaPacket;

	[Bindable]
	public dynamic class LocationsitemsVo implements IModelObject{

		private var _id:int;
		private var _itemId:int;
		private var _locationId:int;
		private var _name:String;

		public function LocationsitemsVo( id:int=0,
			itemId:int=0,
			locationId:int=0,
			name:String='') {

				_id=id;
				_itemId=itemId;
				_locationId=locationId;
				_name=name;
		}

		public function getId():int{
			return _id;
		}

		public function get id():int {
			return _id;
		}
		public function get itemId():int {
			return _itemId;
		}
		public function get locationId():int {
			return _locationId;
		}
		public function get name():String {
			return _name;
		}

		public function set id(value:int):void {
			_id= value;
		}
		public function set itemId(value:int):void {
			_itemId= value;
		}
		public function set locationId(value:int):void {
			_locationId= value;
		}
		public function set name(value:String):void {
			_name= value;
		}

		public function getAsXMLString():String {
			var x:XML = <LocationsitemsVo/>;
			x.@id = _id;
			x.@itemId = _itemId;
			x.@locationId = _locationId;
			x.@name = _name;
			return x.toXMLString();
		}

		public function getAsSubsetXMLString(omitProperties:Array):String {
			var x:XML = <LocationsitemsVo/>;
           if(!contains(omitProperties, 'id')){
			    x.@id = _id;
           }
           if(!contains(omitProperties, 'itemId')){
			    x.@itemId = _itemId;
           }
           if(!contains(omitProperties, 'locationId')){
			    x.@locationId = _locationId;
           }
           if(!contains(omitProperties, 'name')){
			    x.@name = _name;
           }
			return x.toXMLString();
		}

		public function setFromXMLAttributes(x:XML):void {
			_id = x.@id;
			_itemId = x.@itemId;
			_locationId = x.@locationId;
			_name = x.@name;
		}

		public function setFromXMLElements(x:XML):void {
			_id = Number(x.id.toString());
			_itemId = Number(x.item_id.toString());
			_locationId = Number(x.location_id.toString());
			_name = x.name.toString();
		}

		public function setFromCamelCaseObj(o:Object):void {
			_id = o.id;
			_itemId = o.itemId;
			_locationId = o.locationId;
			_name = o.name;
		}

		public function setFromObj(o:Object):void {
			_id = o.id;
			_itemId = o.item_id;
			_locationId = o.location_id;
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
			var tableName:String = 'locationsitems';
			var sortClause:String = '';

			sqlString = 'UPDATE locationsitems SET ' + 
				'item_id = '+itemId.toString()+', ' + 
				'location_id = '+locationId.toString()+', ' + 
				'name = "'+name.toString()+'" ' + 
				'WHERE id='+id.toString()+';'; 
			return sqlString;
		}
	}
}
