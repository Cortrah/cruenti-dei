package model.genVo{

	import model.genVo.*;
	import model.IModelObject;
	import model.DeltaPacket;

	[Bindable]
	public dynamic class UnittypesVo implements IModelObject{

		private var _id:int;
		private var _code:String;
		private var _name:String;
		private var _costGp:int;
		private var _costAp:int;
		private var _costNfp:int;
		private var _costCargo:int;
		private var _mta:int;
		private var _move:int;
		private var _react:int;
		private var _cargoCapacity:int;
		private var _underlandsMove:int;
		private var _mtu:int;
		private var _gq:int;
		private var _mq:int;
		private var _movementtypeId:int;
		private var _description:String;
		private var _qrtype:String;
		private var _isAllied:int;

		public function UnittypesVo( id:int=0,
			code:String='',
			name:String='',
			costGp:int=0,
			costAp:int=0,
			costNfp:int=0,
			costCargo:int=0,
			mta:int=0,
			move:int=0,
			react:int=0,
			cargoCapacity:int=0,
			underlandsMove:int=0,
			mtu:int=0,
			gq:int=0,
			mq:int=0,
			movementtypeId:int=0,
			description:String='',
			qrtype:String='',
			isAllied:int=0) {

				_id=id;
				_code=code;
				_name=name;
				_costGp=costGp;
				_costAp=costAp;
				_costNfp=costNfp;
				_costCargo=costCargo;
				_mta=mta;
				_move=move;
				_react=react;
				_cargoCapacity=cargoCapacity;
				_underlandsMove=underlandsMove;
				_mtu=mtu;
				_gq=gq;
				_mq=mq;
				_movementtypeId=movementtypeId;
				_description=description;
				_qrtype=qrtype;
				_isAllied=isAllied;
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
		public function get costGp():int {
			return _costGp;
		}
		public function get costAp():int {
			return _costAp;
		}
		public function get costNfp():int {
			return _costNfp;
		}
		public function get costCargo():int {
			return _costCargo;
		}
		public function get mta():int {
			return _mta;
		}
		public function get move():int {
			return _move;
		}
		public function get react():int {
			return _react;
		}
		public function get cargoCapacity():int {
			return _cargoCapacity;
		}
		public function get underlandsMove():int {
			return _underlandsMove;
		}
		public function get mtu():int {
			return _mtu;
		}
		public function get gq():int {
			return _gq;
		}
		public function get mq():int {
			return _mq;
		}
		public function get movementtypeId():int {
			return _movementtypeId;
		}
		public function get description():String {
			return _description;
		}
		public function get qrtype():String {
			return _qrtype;
		}
		public function get isAllied():int {
			return _isAllied;
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
		public function set costGp(value:int):void {
			_costGp= value;
		}
		public function set costAp(value:int):void {
			_costAp= value;
		}
		public function set costNfp(value:int):void {
			_costNfp= value;
		}
		public function set costCargo(value:int):void {
			_costCargo= value;
		}
		public function set mta(value:int):void {
			_mta= value;
		}
		public function set move(value:int):void {
			_move= value;
		}
		public function set react(value:int):void {
			_react= value;
		}
		public function set cargoCapacity(value:int):void {
			_cargoCapacity= value;
		}
		public function set underlandsMove(value:int):void {
			_underlandsMove= value;
		}
		public function set mtu(value:int):void {
			_mtu= value;
		}
		public function set gq(value:int):void {
			_gq= value;
		}
		public function set mq(value:int):void {
			_mq= value;
		}
		public function set movementtypeId(value:int):void {
			_movementtypeId= value;
		}
		public function set description(value:String):void {
			_description= value;
		}
		public function set qrtype(value:String):void {
			_qrtype= value;
		}
		public function set isAllied(value:int):void {
			_isAllied= value;
		}

		public function getAsXMLString():String {
			var x:XML = <UnittypesVo/>;
			x.@id = _id;
			x.@code = _code;
			x.@name = _name;
			x.@costGp = _costGp;
			x.@costAp = _costAp;
			x.@costNfp = _costNfp;
			x.@costCargo = _costCargo;
			x.@mta = _mta;
			x.@move = _move;
			x.@react = _react;
			x.@cargoCapacity = _cargoCapacity;
			x.@underlandsMove = _underlandsMove;
			x.@mtu = _mtu;
			x.@gq = _gq;
			x.@mq = _mq;
			x.@movementtypeId = _movementtypeId;
			x.@description = _description;
			x.@qrtype = _qrtype;
			x.@isAllied = _isAllied;
			return x.toXMLString();
		}

		public function getAsSubsetXMLString(omitProperties:Array):String {
			var x:XML = <UnittypesVo/>;
           if(!contains(omitProperties, 'id')){
			    x.@id = _id;
           }
           if(!contains(omitProperties, 'code')){
			    x.@code = _code;
           }
           if(!contains(omitProperties, 'name')){
			    x.@name = _name;
           }
           if(!contains(omitProperties, 'costGp')){
			    x.@costGp = _costGp;
           }
           if(!contains(omitProperties, 'costAp')){
			    x.@costAp = _costAp;
           }
           if(!contains(omitProperties, 'costNfp')){
			    x.@costNfp = _costNfp;
           }
           if(!contains(omitProperties, 'costCargo')){
			    x.@costCargo = _costCargo;
           }
           if(!contains(omitProperties, 'mta')){
			    x.@mta = _mta;
           }
           if(!contains(omitProperties, 'move')){
			    x.@move = _move;
           }
           if(!contains(omitProperties, 'react')){
			    x.@react = _react;
           }
           if(!contains(omitProperties, 'cargoCapacity')){
			    x.@cargoCapacity = _cargoCapacity;
           }
           if(!contains(omitProperties, 'underlandsMove')){
			    x.@underlandsMove = _underlandsMove;
           }
           if(!contains(omitProperties, 'mtu')){
			    x.@mtu = _mtu;
           }
           if(!contains(omitProperties, 'gq')){
			    x.@gq = _gq;
           }
           if(!contains(omitProperties, 'mq')){
			    x.@mq = _mq;
           }
           if(!contains(omitProperties, 'movementtypeId')){
			    x.@movementtypeId = _movementtypeId;
           }
           if(!contains(omitProperties, 'description')){
			    x.@description = _description;
           }
           if(!contains(omitProperties, 'qrtype')){
			    x.@qrtype = _qrtype;
           }
           if(!contains(omitProperties, 'isAllied')){
			    x.@isAllied = _isAllied;
           }
			return x.toXMLString();
		}

		public function setFromXMLAttributes(x:XML):void {
			_id = x.@id;
			_code = x.@code;
			_name = x.@name;
			_costGp = x.@costGp;
			_costAp = x.@costAp;
			_costNfp = x.@costNfp;
			_costCargo = x.@costCargo;
			_mta = x.@mta;
			_move = x.@move;
			_react = x.@react;
			_cargoCapacity = x.@cargoCapacity;
			_underlandsMove = x.@underlandsMove;
			_mtu = x.@mtu;
			_gq = x.@gq;
			_mq = x.@mq;
			_movementtypeId = x.@movementtypeId;
			_description = x.@description;
			_qrtype = x.@qrtype;
			_isAllied = x.@isAllied;
		}

		public function setFromXMLElements(x:XML):void {
			_id = Number(x.id.toString());
			_code = x.code.toString();
			_name = x.name.toString();
			_costGp = Number(x.cost_gp.toString());
			_costAp = Number(x.cost_ap.toString());
			_costNfp = Number(x.cost_nfp.toString());
			_costCargo = Number(x.cost_cargo.toString());
			_mta = Number(x.mta.toString());
			_move = Number(x.move.toString());
			_react = Number(x.react.toString());
			_cargoCapacity = Number(x.cargo_capacity.toString());
			_underlandsMove = Number(x.underlands_move.toString());
			_mtu = Number(x.mtu.toString());
			_gq = Number(x.gq.toString());
			_mq = Number(x.mq.toString());
			_movementtypeId = Number(x.movementtype_id.toString());
			_description = x.description.toString();
			_qrtype = x.qrtype.toString();
			_isAllied = Number(x.is_allied.toString());
		}

		public function setFromCamelCaseObj(o:Object):void {
			_id = o.id;
			_code = o.code;
			_name = o.name;
			_costGp = o.costGp;
			_costAp = o.costAp;
			_costNfp = o.costNfp;
			_costCargo = o.costCargo;
			_mta = o.mta;
			_move = o.move;
			_react = o.react;
			_cargoCapacity = o.cargoCapacity;
			_underlandsMove = o.underlandsMove;
			_mtu = o.mtu;
			_gq = o.gq;
			_mq = o.mq;
			_movementtypeId = o.movementtypeId;
			_description = o.description;
			_qrtype = o.qrtype;
			_isAllied = o.isAllied;
		}

		public function setFromObj(o:Object):void {
			_id = o.id;
			_code = o.code;
			_name = o.name;
			_costGp = o.cost_gp;
			_costAp = o.cost_ap;
			_costNfp = o.cost_nfp;
			_costCargo = o.cost_cargo;
			_mta = o.mta;
			_move = o.move;
			_react = o.react;
			_cargoCapacity = o.cargo_capacity;
			_underlandsMove = o.underlands_move;
			_mtu = o.mtu;
			_gq = o.gq;
			_mq = o.mq;
			_movementtypeId = o.movementtype_id;
			_description = o.description;
			_qrtype = o.qrtype;
			_isAllied = o.is_allied;
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
			var tableName:String = 'unittypes';
			var sortClause:String = '';

			sqlString = 'UPDATE unittypes SET ' + 
				'code = "'+code.toString()+'", ' + 
				'name = "'+name.toString()+'", ' + 
				'cost_gp = "'+costGp.toString()+'", ' + 
				'cost_ap = "'+costAp.toString()+'", ' + 
				'cost_nfp = "'+costNfp.toString()+'", ' + 
				'cost_cargo = "'+costCargo.toString()+'", ' + 
				'mta = "'+mta.toString()+'", ' + 
				'move = "'+move.toString()+'", ' + 
				'react = "'+react.toString()+'", ' + 
				'cargo_capacity = "'+cargoCapacity.toString()+'", ' + 
				'underlands_move = "'+underlandsMove.toString()+'", ' + 
				'mtu = "'+mtu.toString()+'", ' + 
				'gq = "'+gq.toString()+'", ' + 
				'mq = "'+mq.toString()+'", ' + 
				'movementtype_id = "'+movementtypeId.toString()+'", ' + 
				'description = "'+description.toString()+'", ' + 
				'qrtype = "'+qrtype.toString()+'", ' + 
				'is_allied = "'+isAllied.toString()+'" ' + 
				'WHERE id='+id.toString()+';'; 
			return sqlString;
		}
	}
}
