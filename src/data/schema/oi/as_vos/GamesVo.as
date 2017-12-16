package model.genVo{

	import model.genVo.*;
	import model.IModelObject;
	import model.DeltaPacket;

	[Bindable]
	public dynamic class GamesVo implements IModelObject{

		private var _id:int;
		private var _title:String;
		private var _turn:int;
		private var _year:int;

		public function GamesVo( id:int=0,
			title:String='',
			turn:int=0,
			year:int=0) {

				_id=id;
				_title=title;
				_turn=turn;
				_year=year;
		}

		public function getId():int{
			return _id;
		}

		public function get id():int {
			return _id;
		}
		public function get title():String {
			return _title;
		}
		public function get turn():int {
			return _turn;
		}
		public function get year():int {
			return _year;
		}

		public function set id(value:int):void {
			_id= value;
		}
		public function set title(value:String):void {
			_title= value;
		}
		public function set turn(value:int):void {
			_turn= value;
		}
		public function set year(value:int):void {
			_year= value;
		}

		public function getAsXMLString():String {
			var x:XML = <GamesVo/>;
			x.@id = _id;
			x.@title = _title;
			x.@turn = _turn;
			x.@year = _year;
			return x.toXMLString();
		}

		public function getAsSubsetXMLString(omitProperties:Array):String {
			var x:XML = <GamesVo/>;
           if(!contains(omitProperties, 'id')){
			    x.@id = _id;
           }
           if(!contains(omitProperties, 'title')){
			    x.@title = _title;
           }
           if(!contains(omitProperties, 'turn')){
			    x.@turn = _turn;
           }
           if(!contains(omitProperties, 'year')){
			    x.@year = _year;
           }
			return x.toXMLString();
		}

		public function setFromXMLAttributes(x:XML):void {
			_id = x.@id;
			_title = x.@title;
			_turn = x.@turn;
			_year = x.@year;
		}

		public function setFromXMLElements(x:XML):void {
			_id = Number(x.id.toString());
			_title = x.title.toString();
			_turn = Number(x.turn.toString());
			_year = Number(x.year.toString());
		}

		public function setFromCamelCaseObj(o:Object):void {
			_id = o.id;
			_title = o.title;
			_turn = o.turn;
			_year = o.year;
		}

		public function setFromObj(o:Object):void {
			_id = o.id;
			_title = o.title;
			_turn = o.turn;
			_year = o.year;
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
			var tableName:String = 'games';
			var sortClause:String = '';

			sqlString = 'UPDATE games SET ' + 
				'title = "'+title.toString()+'", ' + 
				'turn = "'+turn.toString()+'", ' + 
				'year = "'+year.toString()+'" ' + 
				'WHERE id='+id.toString()+';'; 
			return sqlString;
		}
	}
}
