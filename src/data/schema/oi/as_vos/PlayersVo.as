package model.genVo{

	import model.genVo.*;
	import model.IModelObject;
	import model.DeltaPacket;

	[Bindable]
	public dynamic class PlayersVo implements IModelObject{

		private var _id:int;
		private var _gameId:int;
		private var _realmId:int;
		private var _firstName:String;
		private var _lastName:String;
		private var _email:String;
		private var _password:String;
		private var _credits:int;
		private var _name:String;

		public function PlayersVo( id:int=0,
			gameId:int=0,
			realmId:int=0,
			firstName:String='',
			lastName:String='',
			email:String='',
			password:String='',
			credits:int=0,
			name:String='') {

				_id=id;
				_gameId=gameId;
				_realmId=realmId;
				_firstName=firstName;
				_lastName=lastName;
				_email=email;
				_password=password;
				_credits=credits;
				_name=name;
		}

		public function getId():int{
			return _id;
		}

		public function get id():int {
			return _id;
		}
		public function get gameId():int {
			return _gameId;
		}
		public function get realmId():int {
			return _realmId;
		}
		public function get firstName():String {
			return _firstName;
		}
		public function get lastName():String {
			return _lastName;
		}
		public function get email():String {
			return _email;
		}
		public function get password():String {
			return _password;
		}
		public function get credits():int {
			return _credits;
		}
		public function get name():String {
			return _name;
		}

		public function set id(value:int):void {
			_id= value;
		}
		public function set gameId(value:int):void {
			_gameId= value;
		}
		public function set realmId(value:int):void {
			_realmId= value;
		}
		public function set firstName(value:String):void {
			_firstName= value;
		}
		public function set lastName(value:String):void {
			_lastName= value;
		}
		public function set email(value:String):void {
			_email= value;
		}
		public function set password(value:String):void {
			_password= value;
		}
		public function set credits(value:int):void {
			_credits= value;
		}
		public function set name(value:String):void {
			_name= value;
		}

		public function getAsXMLString():String {
			var x:XML = <PlayersVo/>;
			x.@id = _id;
			x.@gameId = _gameId;
			x.@realmId = _realmId;
			x.@firstName = _firstName;
			x.@lastName = _lastName;
			x.@email = _email;
			x.@password = _password;
			x.@credits = _credits;
			x.@name = _name;
			return x.toXMLString();
		}

		public function getAsSubsetXMLString(omitProperties:Array):String {
			var x:XML = <PlayersVo/>;
           if(!contains(omitProperties, 'id')){
			    x.@id = _id;
           }
           if(!contains(omitProperties, 'gameId')){
			    x.@gameId = _gameId;
           }
           if(!contains(omitProperties, 'realmId')){
			    x.@realmId = _realmId;
           }
           if(!contains(omitProperties, 'firstName')){
			    x.@firstName = _firstName;
           }
           if(!contains(omitProperties, 'lastName')){
			    x.@lastName = _lastName;
           }
           if(!contains(omitProperties, 'email')){
			    x.@email = _email;
           }
           if(!contains(omitProperties, 'password')){
			    x.@password = _password;
           }
           if(!contains(omitProperties, 'credits')){
			    x.@credits = _credits;
           }
           if(!contains(omitProperties, 'name')){
			    x.@name = _name;
           }
			return x.toXMLString();
		}

		public function setFromXMLAttributes(x:XML):void {
			_id = x.@id;
			_gameId = x.@gameId;
			_realmId = x.@realmId;
			_firstName = x.@firstName;
			_lastName = x.@lastName;
			_email = x.@email;
			_password = x.@password;
			_credits = x.@credits;
			_name = x.@name;
		}

		public function setFromXMLElements(x:XML):void {
			_id = Number(x.id.toString());
			_gameId = Number(x.game_id.toString());
			_realmId = Number(x.realm_id.toString());
			_firstName = x.first_name.toString();
			_lastName = x.last_name.toString();
			_email = x.email.toString();
			_password = x.password.toString();
			_credits = Number(x.credits.toString());
			_name = x.name.toString();
		}

		public function setFromCamelCaseObj(o:Object):void {
			_id = o.id;
			_gameId = o.gameId;
			_realmId = o.realmId;
			_firstName = o.firstName;
			_lastName = o.lastName;
			_email = o.email;
			_password = o.password;
			_credits = o.credits;
			_name = o.name;
		}

		public function setFromObj(o:Object):void {
			_id = o.id;
			_gameId = o.game_id;
			_realmId = o.realm_id;
			_firstName = o.first_name;
			_lastName = o.last_name;
			_email = o.email;
			_password = o.password;
			_credits = o.credits;
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
			var tableName:String = 'players';
			var sortClause:String = '';

			sqlString = 'UPDATE players SET ' + 
				'game_id = '+gameId.toString()+', ' + 
				'realm_id = '+realmId.toString()+', ' + 
				'first_name = "'+firstName.toString()+'", ' + 
				'last_name = "'+lastName.toString()+'", ' + 
				'email = "'+email.toString()+'", ' + 
				'password = "'+password.toString()+'", ' + 
				'credits = "'+credits.toString()+'", ' + 
				'name = "'+name.toString()+'" ' + 
				'WHERE id='+id.toString()+';'; 
			return sqlString;
		}
	}
}
