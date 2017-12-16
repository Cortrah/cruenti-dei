package model.genVo{

	import model.genVo.*;
	import model.IModelObject;
	import model.DeltaPacket;

	[Bindable]
	public dynamic class MinormapsVo implements IModelObject{

		private var _id:int;
		private var _code:String;
		private var _bg:String;
		private var _x:int;
		private var _y:int;
		private var _gameId:int;
		private var _isSecret:int;
		private var _name:String;

		public function MinormapsVo( id:int=0,
			code:String='',
			bg:String='',
			x:int=0,
			y:int=0,
			gameId:int=0,
			isSecret:int=0,
			name:String='') {

				_id=id;
				_code=code;
				_bg=bg;
				_x=x;
				_y=y;
				_gameId=gameId;
				_isSecret=isSecret;
				_name=name;
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
		public function get bg():String {
			return _bg;
		}
		public function get x():int {
			return _x;
		}
		public function get y():int {
			return _y;
		}
		public function get gameId():int {
			return _gameId;
		}
		public function get isSecret():int {
			return _isSecret;
		}
		public function get name():String {
			return _name;
		}

		public function set id(value:int):void {
			_id= value;
		}
		public function set code(value:String):void {
			_code= value;
		}
		public function set bg(value:String):void {
			_bg= value;
		}
		public function set x(value:int):void {
			_x= value;
		}
		public function set y(value:int):void {
			_y= value;
		}
		public function set gameId(value:int):void {
			_gameId= value;
		}
		public function set isSecret(value:int):void {
			_isSecret= value;
		}
		public function set name(value:String):void {
			_name= value;
		}

		public function getAsXMLString():String {
			var x:XML = <MinormapsVo/>;
			x.@id = _id;
			x.@code = _code;
			x.@bg = _bg;
			x.@x = _x;
			x.@y = _y;
			x.@gameId = _gameId;
			x.@isSecret = _isSecret;
			x.@name = _name;
			return x.toXMLString();
		}

		public function getAsSubsetXMLString(omitProperties:Array):String {
			var x:XML = <MinormapsVo/>;
           if(!contains(omitProperties, 'id')){
			    x.@id = _id;
           }
           if(!contains(omitProperties, 'code')){
			    x.@code = _code;
           }
           if(!contains(omitProperties, 'bg')){
			    x.@bg = _bg;
           }
           if(!contains(omitProperties, 'x')){
			    x.@x = _x;
           }
           if(!contains(omitProperties, 'y')){
			    x.@y = _y;
           }
           if(!contains(omitProperties, 'gameId')){
			    x.@gameId = _gameId;
           }
           if(!contains(omitProperties, 'isSecret')){
			    x.@isSecret = _isSecret;
           }
           if(!contains(omitProperties, 'name')){
			    x.@name = _name;
           }
			return x.toXMLString();
		}

		public function setFromXMLAttributes(x:XML):void {
			_id = x.@id;
			_code = x.@code;
			_bg = x.@bg;
			_x = x.@x;
			_y = x.@y;
			_gameId = x.@gameId;
			_isSecret = x.@isSecret;
			_name = x.@name;
		}

		public function setFromXMLElements(x:XML):void {
			_id = Number(x.id.toString());
			_code = x.code.toString();
			_bg = x.bg.toString();
			_x = Number(x.x.toString());
			_y = Number(x.y.toString());
			_gameId = Number(x.game_id.toString());
			_isSecret = Number(x.is_secret.toString());
			_name = x.name.toString();
		}

		public function setFromCamelCaseObj(o:Object):void {
			_id = o.id;
			_code = o.code;
			_bg = o.bg;
			_x = o.x;
			_y = o.y;
			_gameId = o.gameId;
			_isSecret = o.isSecret;
			_name = o.name;
		}

		public function setFromObj(o:Object):void {
			_id = o.id;
			_code = o.code;
			_bg = o.bg;
			_x = o.x;
			_y = o.y;
			_gameId = o.game_id;
			_isSecret = o.is_secret;
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
			var tableName:String = 'minormaps';
			var sortClause:String = '';

			sqlString = 'UPDATE minormaps SET ' + 
				'code = "'+code.toString()+'", ' + 
				'bg = "'+bg.toString()+'", ' + 
				'x = "'+x.toString()+'", ' + 
				'y = "'+y.toString()+'", ' + 
				'game_id = "'+gameId.toString()+'", ' + 
				'is_secret = "'+isSecret.toString()+'", ' + 
				'name = "'+name.toString()+'" ' + 
				'WHERE id='+id.toString()+';'; 
			return sqlString;
		}
	}
}
