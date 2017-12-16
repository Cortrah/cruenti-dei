package model.genVo{

	import model.genVo.*;
	import model.IModelObject;
	import model.DeltaPacket;

	[Bindable]
	public dynamic class RegionsVo implements IModelObject{

		private var _id:int;
		private var _name:String;
		private var _mapId:int;
		private var _minormapId:int;
		private var _minormapQuadrant:String;
		private var _religionId:int;
		private var _gp:int;
		private var _ap:int;
		private var _nfp:int;
		private var _mana:int;
		private var _pwb:int;
		private var _tv:int;
		private var _isHasRoad:int;
		private var _isBordersVolcano:int;
		private var _isInimical:int;
		private var _isFloating:int;
		private var _isFlying:int;
		private var _resistance:int;
		private var _terrainId:int;
		private var _displayPath:String;
		private var _pathX:int;
		private var _pathY:int;
		private var _kindredId:int;
		private var _locationId:int;
		private var _notes:String;
		private var _statusmult:Number;
		private var _provinceId:int;
		private var _isSecret:int;
		private var _allegiancetypeId:int;
		private var _realmId:int;
		private var _secondtributorrealmId:int;
		private var _status:String;
		private var _gmOnlyNotes:String;

		public function RegionsVo( id:int=0,
			name:String='',
			mapId:int=0,
			minormapId:int=0,
			minormapQuadrant:String='',
			religionId:int=0,
			gp:int=0,
			ap:int=0,
			nfp:int=0,
			mana:int=0,
			pwb:int=0,
			tv:int=0,
			isHasRoad:int=0,
			isBordersVolcano:int=0,
			isInimical:int=0,
			isFloating:int=0,
			isFlying:int=0,
			resistance:int=0,
			terrainId:int=0,
			displayPath:String='',
			pathX:int=0,
			pathY:int=0,
			kindredId:int=0,
			locationId:int=0,
			notes:String='',
			statusmult:Number=0.0,
			provinceId:int=0,
			isSecret:int=0,
			allegiancetypeId:int=0,
			realmId:int=0,
			secondtributorrealmId:int=0,
			status:String='',
			gmOnlyNotes:String='') {

				_id=id;
				_name=name;
				_mapId=mapId;
				_minormapId=minormapId;
				_minormapQuadrant=minormapQuadrant;
				_religionId=religionId;
				_gp=gp;
				_ap=ap;
				_nfp=nfp;
				_mana=mana;
				_pwb=pwb;
				_tv=tv;
				_isHasRoad=isHasRoad;
				_isBordersVolcano=isBordersVolcano;
				_isInimical=isInimical;
				_isFloating=isFloating;
				_isFlying=isFlying;
				_resistance=resistance;
				_terrainId=terrainId;
				_displayPath=displayPath;
				_pathX=pathX;
				_pathY=pathY;
				_kindredId=kindredId;
				_locationId=locationId;
				_notes=notes;
				_statusmult=statusmult;
				_provinceId=provinceId;
				_isSecret=isSecret;
				_allegiancetypeId=allegiancetypeId;
				_realmId=realmId;
				_secondtributorrealmId=secondtributorrealmId;
				_status=status;
				_gmOnlyNotes=gmOnlyNotes;
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
		public function get mapId():int {
			return _mapId;
		}
		public function get minormapId():int {
			return _minormapId;
		}
		public function get minormapQuadrant():String {
			return _minormapQuadrant;
		}
		public function get religionId():int {
			return _religionId;
		}
		public function get gp():int {
			return _gp;
		}
		public function get ap():int {
			return _ap;
		}
		public function get nfp():int {
			return _nfp;
		}
		public function get mana():int {
			return _mana;
		}
		public function get pwb():int {
			return _pwb;
		}
		public function get tv():int {
			return _tv;
		}
		public function get isHasRoad():int {
			return _isHasRoad;
		}
		public function get isBordersVolcano():int {
			return _isBordersVolcano;
		}
		public function get isInimical():int {
			return _isInimical;
		}
		public function get isFloating():int {
			return _isFloating;
		}
		public function get isFlying():int {
			return _isFlying;
		}
		public function get resistance():int {
			return _resistance;
		}
		public function get terrainId():int {
			return _terrainId;
		}
		public function get displayPath():String {
			return _displayPath;
		}
		public function get pathX():int {
			return _pathX;
		}
		public function get pathY():int {
			return _pathY;
		}
		public function get kindredId():int {
			return _kindredId;
		}
		public function get locationId():int {
			return _locationId;
		}
		public function get notes():String {
			return _notes;
		}
		public function get statusmult():Number {
			return _statusmult;
		}
		public function get provinceId():int {
			return _provinceId;
		}
		public function get isSecret():int {
			return _isSecret;
		}
		public function get allegiancetypeId():int {
			return _allegiancetypeId;
		}
		public function get realmId():int {
			return _realmId;
		}
		public function get secondtributorrealmId():int {
			return _secondtributorrealmId;
		}
		public function get status():String {
			return _status;
		}
		public function get gmOnlyNotes():String {
			return _gmOnlyNotes;
		}

		public function set id(value:int):void {
			_id= value;
		}
		public function set name(value:String):void {
			_name= value;
		}
		public function set mapId(value:int):void {
			_mapId= value;
		}
		public function set minormapId(value:int):void {
			_minormapId= value;
		}
		public function set minormapQuadrant(value:String):void {
			_minormapQuadrant= value;
		}
		public function set religionId(value:int):void {
			_religionId= value;
		}
		public function set gp(value:int):void {
			_gp= value;
		}
		public function set ap(value:int):void {
			_ap= value;
		}
		public function set nfp(value:int):void {
			_nfp= value;
		}
		public function set mana(value:int):void {
			_mana= value;
		}
		public function set pwb(value:int):void {
			_pwb= value;
		}
		public function set tv(value:int):void {
			_tv= value;
		}
		public function set isHasRoad(value:int):void {
			_isHasRoad= value;
		}
		public function set isBordersVolcano(value:int):void {
			_isBordersVolcano= value;
		}
		public function set isInimical(value:int):void {
			_isInimical= value;
		}
		public function set isFloating(value:int):void {
			_isFloating= value;
		}
		public function set isFlying(value:int):void {
			_isFlying= value;
		}
		public function set resistance(value:int):void {
			_resistance= value;
		}
		public function set terrainId(value:int):void {
			_terrainId= value;
		}
		public function set displayPath(value:String):void {
			_displayPath= value;
		}
		public function set pathX(value:int):void {
			_pathX= value;
		}
		public function set pathY(value:int):void {
			_pathY= value;
		}
		public function set kindredId(value:int):void {
			_kindredId= value;
		}
		public function set locationId(value:int):void {
			_locationId= value;
		}
		public function set notes(value:String):void {
			_notes= value;
		}
		public function set statusmult(value:Number):void {
			_statusmult= value;
		}
		public function set provinceId(value:int):void {
			_provinceId= value;
		}
		public function set isSecret(value:int):void {
			_isSecret= value;
		}
		public function set allegiancetypeId(value:int):void {
			_allegiancetypeId= value;
		}
		public function set realmId(value:int):void {
			_realmId= value;
		}
		public function set secondtributorrealmId(value:int):void {
			_secondtributorrealmId= value;
		}
		public function set status(value:String):void {
			_status= value;
		}
		public function set gmOnlyNotes(value:String):void {
			_gmOnlyNotes= value;
		}

		public function getAsXMLString():String {
			var x:XML = <RegionsVo/>;
			x.@id = _id;
			x.@name = _name;
			x.@mapId = _mapId;
			x.@minormapId = _minormapId;
			x.@minormapQuadrant = _minormapQuadrant;
			x.@religionId = _religionId;
			x.@gp = _gp;
			x.@ap = _ap;
			x.@nfp = _nfp;
			x.@mana = _mana;
			x.@pwb = _pwb;
			x.@tv = _tv;
			x.@isHasRoad = _isHasRoad;
			x.@isBordersVolcano = _isBordersVolcano;
			x.@isInimical = _isInimical;
			x.@isFloating = _isFloating;
			x.@isFlying = _isFlying;
			x.@resistance = _resistance;
			x.@terrainId = _terrainId;
			x.@displayPath = _displayPath;
			x.@pathX = _pathX;
			x.@pathY = _pathY;
			x.@kindredId = _kindredId;
			x.@locationId = _locationId;
			x.@notes = _notes;
			x.@statusmult = _statusmult;
			x.@provinceId = _provinceId;
			x.@isSecret = _isSecret;
			x.@allegiancetypeId = _allegiancetypeId;
			x.@realmId = _realmId;
			x.@secondtributorrealmId = _secondtributorrealmId;
			x.@status = _status;
			x.@gmOnlyNotes = _gmOnlyNotes;
			return x.toXMLString();
		}

		public function getAsSubsetXMLString(omitProperties:Array):String {
			var x:XML = <RegionsVo/>;
           if(!contains(omitProperties, 'id')){
			    x.@id = _id;
           }
           if(!contains(omitProperties, 'name')){
			    x.@name = _name;
           }
           if(!contains(omitProperties, 'mapId')){
			    x.@mapId = _mapId;
           }
           if(!contains(omitProperties, 'minormapId')){
			    x.@minormapId = _minormapId;
           }
           if(!contains(omitProperties, 'minormapQuadrant')){
			    x.@minormapQuadrant = _minormapQuadrant;
           }
           if(!contains(omitProperties, 'religionId')){
			    x.@religionId = _religionId;
           }
           if(!contains(omitProperties, 'gp')){
			    x.@gp = _gp;
           }
           if(!contains(omitProperties, 'ap')){
			    x.@ap = _ap;
           }
           if(!contains(omitProperties, 'nfp')){
			    x.@nfp = _nfp;
           }
           if(!contains(omitProperties, 'mana')){
			    x.@mana = _mana;
           }
           if(!contains(omitProperties, 'pwb')){
			    x.@pwb = _pwb;
           }
           if(!contains(omitProperties, 'tv')){
			    x.@tv = _tv;
           }
           if(!contains(omitProperties, 'isHasRoad')){
			    x.@isHasRoad = _isHasRoad;
           }
           if(!contains(omitProperties, 'isBordersVolcano')){
			    x.@isBordersVolcano = _isBordersVolcano;
           }
           if(!contains(omitProperties, 'isInimical')){
			    x.@isInimical = _isInimical;
           }
           if(!contains(omitProperties, 'isFloating')){
			    x.@isFloating = _isFloating;
           }
           if(!contains(omitProperties, 'isFlying')){
			    x.@isFlying = _isFlying;
           }
           if(!contains(omitProperties, 'resistance')){
			    x.@resistance = _resistance;
           }
           if(!contains(omitProperties, 'terrainId')){
			    x.@terrainId = _terrainId;
           }
           if(!contains(omitProperties, 'displayPath')){
			    x.@displayPath = _displayPath;
           }
           if(!contains(omitProperties, 'pathX')){
			    x.@pathX = _pathX;
           }
           if(!contains(omitProperties, 'pathY')){
			    x.@pathY = _pathY;
           }
           if(!contains(omitProperties, 'kindredId')){
			    x.@kindredId = _kindredId;
           }
           if(!contains(omitProperties, 'locationId')){
			    x.@locationId = _locationId;
           }
           if(!contains(omitProperties, 'notes')){
			    x.@notes = _notes;
           }
           if(!contains(omitProperties, 'statusmult')){
			    x.@statusmult = _statusmult;
           }
           if(!contains(omitProperties, 'provinceId')){
			    x.@provinceId = _provinceId;
           }
           if(!contains(omitProperties, 'isSecret')){
			    x.@isSecret = _isSecret;
           }
           if(!contains(omitProperties, 'allegiancetypeId')){
			    x.@allegiancetypeId = _allegiancetypeId;
           }
           if(!contains(omitProperties, 'realmId')){
			    x.@realmId = _realmId;
           }
           if(!contains(omitProperties, 'secondtributorrealmId')){
			    x.@secondtributorrealmId = _secondtributorrealmId;
           }
           if(!contains(omitProperties, 'status')){
			    x.@status = _status;
           }
           if(!contains(omitProperties, 'gmOnlyNotes')){
			    x.@gmOnlyNotes = _gmOnlyNotes;
           }
			return x.toXMLString();
		}

		public function setFromXMLAttributes(x:XML):void {
			_id = x.@id;
			_name = x.@name;
			_mapId = x.@mapId;
			_minormapId = x.@minormapId;
			_minormapQuadrant = x.@minormapQuadrant;
			_religionId = x.@religionId;
			_gp = x.@gp;
			_ap = x.@ap;
			_nfp = x.@nfp;
			_mana = x.@mana;
			_pwb = x.@pwb;
			_tv = x.@tv;
			_isHasRoad = x.@isHasRoad;
			_isBordersVolcano = x.@isBordersVolcano;
			_isInimical = x.@isInimical;
			_isFloating = x.@isFloating;
			_isFlying = x.@isFlying;
			_resistance = x.@resistance;
			_terrainId = x.@terrainId;
			_displayPath = x.@displayPath;
			_pathX = x.@pathX;
			_pathY = x.@pathY;
			_kindredId = x.@kindredId;
			_locationId = x.@locationId;
			_notes = x.@notes;
			_statusmult = x.@statusmult;
			_provinceId = x.@provinceId;
			_isSecret = x.@isSecret;
			_allegiancetypeId = x.@allegiancetypeId;
			_realmId = x.@realmId;
			_secondtributorrealmId = x.@secondtributorrealmId;
			_status = x.@status;
			_gmOnlyNotes = x.@gmOnlyNotes;
		}

		public function setFromXMLElements(x:XML):void {
			_id = Number(x.id.toString());
			_name = x.name.toString();
			_mapId = Number(x.map_id.toString());
			_minormapId = Number(x.minormap_id.toString());
			_minormapQuadrant = x.minormap_quadrant.toString();
			_religionId = Number(x.religion_id.toString());
			_gp = Number(x.gp.toString());
			_ap = Number(x.ap.toString());
			_nfp = Number(x.nfp.toString());
			_mana = Number(x.mana.toString());
			_pwb = Number(x.pwb.toString());
			_tv = Number(x.tv.toString());
			_isHasRoad = Number(x.is_has_road.toString());
			_isBordersVolcano = Number(x.is_borders_volcano.toString());
			_isInimical = Number(x.is_inimical.toString());
			_isFloating = Number(x.is_floating.toString());
			_isFlying = Number(x.is_flying.toString());
			_resistance = Number(x.resistance.toString());
			_terrainId = Number(x.terrain_id.toString());
			_displayPath = x.display_path.toString();
			_pathX = Number(x.path_x.toString());
			_pathY = Number(x.path_y.toString());
			_kindredId = Number(x.kindred_id.toString());
			_locationId = Number(x.location_id.toString());
			_notes = x.notes.toString();
			_statusmult = Number(x.statusmult.toString());
			_provinceId = Number(x.province_id.toString());
			_isSecret = Number(x.is_secret.toString());
			_allegiancetypeId = Number(x.allegiancetype_id.toString());
			_realmId = Number(x.realm_id.toString());
			_secondtributorrealmId = Number(x.secondtributorrealm_id.toString());
			_status = x.status.toString();
			_gmOnlyNotes = x.gm_only_notes.toString();
		}

		public function setFromCamelCaseObj(o:Object):void {
			_id = o.id;
			_name = o.name;
			_mapId = o.mapId;
			_minormapId = o.minormapId;
			_minormapQuadrant = o.minormapQuadrant;
			_religionId = o.religionId;
			_gp = o.gp;
			_ap = o.ap;
			_nfp = o.nfp;
			_mana = o.mana;
			_pwb = o.pwb;
			_tv = o.tv;
			_isHasRoad = o.isHasRoad;
			_isBordersVolcano = o.isBordersVolcano;
			_isInimical = o.isInimical;
			_isFloating = o.isFloating;
			_isFlying = o.isFlying;
			_resistance = o.resistance;
			_terrainId = o.terrainId;
			_displayPath = o.displayPath;
			_pathX = o.pathX;
			_pathY = o.pathY;
			_kindredId = o.kindredId;
			_locationId = o.locationId;
			_notes = o.notes;
			_statusmult = o.statusmult;
			_provinceId = o.provinceId;
			_isSecret = o.isSecret;
			_allegiancetypeId = o.allegiancetypeId;
			_realmId = o.realmId;
			_secondtributorrealmId = o.secondtributorrealmId;
			_status = o.status;
			_gmOnlyNotes = o.gmOnlyNotes;
		}

		public function setFromObj(o:Object):void {
			_id = o.id;
			_name = o.name;
			_mapId = o.map_id;
			_minormapId = o.minormap_id;
			_minormapQuadrant = o.minormap_quadrant;
			_religionId = o.religion_id;
			_gp = o.gp;
			_ap = o.ap;
			_nfp = o.nfp;
			_mana = o.mana;
			_pwb = o.pwb;
			_tv = o.tv;
			_isHasRoad = o.is_has_road;
			_isBordersVolcano = o.is_borders_volcano;
			_isInimical = o.is_inimical;
			_isFloating = o.is_floating;
			_isFlying = o.is_flying;
			_resistance = o.resistance;
			_terrainId = o.terrain_id;
			_displayPath = o.display_path;
			_pathX = o.path_x;
			_pathY = o.path_y;
			_kindredId = o.kindred_id;
			_locationId = o.location_id;
			_notes = o.notes;
			_statusmult = o.statusmult;
			_provinceId = o.province_id;
			_isSecret = o.is_secret;
			_allegiancetypeId = o.allegiancetype_id;
			_realmId = o.realm_id;
			_secondtributorrealmId = o.secondtributorrealm_id;
			_status = o.status;
			_gmOnlyNotes = o.gm_only_notes;
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
			var tableName:String = 'regions';
			var sortClause:String = '';

			sqlString = 'UPDATE regions SET ' + 
				'name = "'+name.toString()+'", ' + 
				'map_id = "'+mapId.toString()+'", ' + 
				'minormap_id = "'+minormapId.toString()+'", ' + 
				'minormap_quadrant = "'+minormapQuadrant.toString()+'", ' + 
				'religion_id = "'+religionId.toString()+'", ' + 
				'gp = "'+gp.toString()+'", ' + 
				'ap = "'+ap.toString()+'", ' + 
				'nfp = "'+nfp.toString()+'", ' + 
				'mana = "'+mana.toString()+'", ' + 
				'pwb = "'+pwb.toString()+'", ' + 
				'tv = "'+tv.toString()+'", ' + 
				'is_has_road = "'+isHasRoad.toString()+'", ' + 
				'is_borders_volcano = "'+isBordersVolcano.toString()+'", ' + 
				'is_inimical = "'+isInimical.toString()+'", ' + 
				'is_floating = "'+isFloating.toString()+'", ' + 
				'is_flying = "'+isFlying.toString()+'", ' + 
				'resistance = "'+resistance.toString()+'", ' + 
				'terrain_id = "'+terrainId.toString()+'", ' + 
				'display_path = "'+displayPath.toString()+'", ' + 
				'path_x = "'+pathX.toString()+'", ' + 
				'path_y = "'+pathY.toString()+'", ' + 
				'kindred_id = "'+kindredId.toString()+'", ' + 
				'location_id = "'+locationId.toString()+'", ' + 
				'notes = "'+notes.toString()+'", ' + 
				'statusmult = "'+statusmult.toString()+'", ' + 
				'province_id = "'+provinceId.toString()+'", ' + 
				'is_secret = "'+isSecret.toString()+'", ' + 
				'allegiancetype_id = "'+allegiancetypeId.toString()+'", ' + 
				'realm_id = "'+realmId.toString()+'", ' + 
				'secondtributorrealm_id = "'+secondtributorrealmId.toString()+'", ' + 
				'status = "'+status.toString()+'", ' + 
				'gm_only_notes = "'+gmOnlyNotes.toString()+'" ' + 
				'WHERE id='+id.toString()+';'; 
			return sqlString;
		}
	}
}
