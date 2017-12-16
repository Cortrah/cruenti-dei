package model.genVo{

	import model.genVo.*;
	import model.IModelObject;
	import model.DeltaPacket;

	[Bindable]
	public dynamic class RealmstradepartnersVo implements IModelObject{

		private var _id:int;
		private var _partnerRealm1Id:int;
		private var _partnerRealm2Id:int;

		public function RealmstradepartnersVo( id:int=0,
			partnerRealm1Id:int=0,
			partnerRealm2Id:int=0) {

				_id=id;
				_partnerRealm1Id=partnerRealm1Id;
				_partnerRealm2Id=partnerRealm2Id;
		}

		public function getId():int{
			return _id;
		}

		public function get id():int {
			return _id;
		}
		public function get partnerRealm1Id():int {
			return _partnerRealm1Id;
		}
		public function get partnerRealm2Id():int {
			return _partnerRealm2Id;
		}

		public function set id(value:int):void {
			_id= value;
		}
		public function set partnerRealm1Id(value:int):void {
			_partnerRealm1Id= value;
		}
		public function set partnerRealm2Id(value:int):void {
			_partnerRealm2Id= value;
		}

		public function getAsXMLString():String {
			var x:XML = <RealmstradepartnersVo/>;
			x.@id = _id;
			x.@partnerRealm1Id = _partnerRealm1Id;
			x.@partnerRealm2Id = _partnerRealm2Id;
			return x.toXMLString();
		}

		public function getAsSubsetXMLString(omitProperties:Array):String {
			var x:XML = <RealmstradepartnersVo/>;
           if(!contains(omitProperties, 'id')){
			    x.@id = _id;
           }
           if(!contains(omitProperties, 'partnerRealm1Id')){
			    x.@partnerRealm1Id = _partnerRealm1Id;
           }
           if(!contains(omitProperties, 'partnerRealm2Id')){
			    x.@partnerRealm2Id = _partnerRealm2Id;
           }
			return x.toXMLString();
		}

		public function setFromXMLAttributes(x:XML):void {
			_id = x.@id;
			_partnerRealm1Id = x.@partnerRealm1Id;
			_partnerRealm2Id = x.@partnerRealm2Id;
		}

		public function setFromXMLElements(x:XML):void {
			_id = Number(x.id.toString());
			_partnerRealm1Id = Number(x.partner_realm1_id.toString());
			_partnerRealm2Id = Number(x.partner_realm2_id.toString());
		}

		public function setFromCamelCaseObj(o:Object):void {
			_id = o.id;
			_partnerRealm1Id = o.partnerRealm1Id;
			_partnerRealm2Id = o.partnerRealm2Id;
		}

		public function setFromObj(o:Object):void {
			_id = o.id;
			_partnerRealm1Id = o.partner_realm1_id;
			_partnerRealm2Id = o.partner_realm2_id;
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
			var tableName:String = 'realmstradepartners';
			var sortClause:String = '';

			sqlString = 'UPDATE realmstradepartners SET ' + 
				'partner_realm1_id = '+partnerRealm1Id.toString()+', ' + 
				'partner_realm2_id = '+partnerRealm2Id.toString()+' ' + 
				'WHERE id='+id.toString()+';'; 
			return sqlString;
		}
	}
}
