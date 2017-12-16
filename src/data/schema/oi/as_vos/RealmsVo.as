package model.genVo{

	import model.genVo.*;
	import model.IModelObject;
	import model.DeltaPacket;

	[Bindable]
	public dynamic class RealmsVo implements IModelObject{

		private var _id:int;
		private var _name:String;
		private var _religionId:int;
		private var _realmType:String;
		private var _religiousStrength:Number;
		private var _isi:Number;
		private var _tv:int;
		private var _mana:int;
		private var _regionGp:int;
		private var _urbanGp:int;
		private var _ictGp:int;
		private var _pwbGp:Number;
		private var _savedGp:Number;
		private var _prodAp:Number;
		private var _savedAp:Number;
		private var _totalAp:Number;
		private var _nfp:Number;
		private var _sfp:Number;
		private var _armySupport:Number;
		private var _cavQr:int;
		private var _infQr:int;
		private var _sgeQr:int;
		private var _navQr:int;
		private var _airQr:int;
		private var _nsrQr:int;
		private var _irQr:int;
		private var _blQr:int;
		private var _rsQr:Number;
		private var _cavInvestment:int;
		private var _infInvestment:int;
		private var _sgeInvestment:int;
		private var _navInvestment:int;
		private var _airInvestment:int;
		private var _irInvestment:int;
		private var _blInvestment:int;
		private var _nsrInvestment:int;
		private var _notes:String;
		private var _gmOnlyNotes:String;
		private var _displayColor:int;
		private var _corruptionPercentage:int;
		private var _plaguePercentage:int;
		private var _isSecret:int;
		private var _homeregionId:int;
		private var _realmDescription:String;
		private var _capitallocationId:int;

		public function RealmsVo( id:int=0,
			name:String='',
			religionId:int=0,
			realmType:String='',
			religiousStrength:Number=0.0,
			isi:Number=0.0,
			tv:int=0,
			mana:int=0,
			regionGp:int=0,
			urbanGp:int=0,
			ictGp:int=0,
			pwbGp:Number=0.0,
			savedGp:Number=0.0,
			prodAp:Number=0.0,
			savedAp:Number=0.0,
			totalAp:Number=0.0,
			nfp:Number=0.0,
			sfp:Number=0.0,
			armySupport:Number=0.0,
			cavQr:int=0,
			infQr:int=0,
			sgeQr:int=0,
			navQr:int=0,
			airQr:int=0,
			nsrQr:int=0,
			irQr:int=0,
			blQr:int=0,
			rsQr:Number=0.0,
			cavInvestment:int=0,
			infInvestment:int=0,
			sgeInvestment:int=0,
			navInvestment:int=0,
			airInvestment:int=0,
			irInvestment:int=0,
			blInvestment:int=0,
			nsrInvestment:int=0,
			notes:String='',
			gmOnlyNotes:String='',
			displayColor:int=0,
			corruptionPercentage:int=0,
			plaguePercentage:int=0,
			isSecret:int=0,
			homeregionId:int=0,
			realmDescription:String='',
			capitallocationId:int=0) {

				_id=id;
				_name=name;
				_religionId=religionId;
				_realmType=realmType;
				_religiousStrength=religiousStrength;
				_isi=isi;
				_tv=tv;
				_mana=mana;
				_regionGp=regionGp;
				_urbanGp=urbanGp;
				_ictGp=ictGp;
				_pwbGp=pwbGp;
				_savedGp=savedGp;
				_prodAp=prodAp;
				_savedAp=savedAp;
				_totalAp=totalAp;
				_nfp=nfp;
				_sfp=sfp;
				_armySupport=armySupport;
				_cavQr=cavQr;
				_infQr=infQr;
				_sgeQr=sgeQr;
				_navQr=navQr;
				_airQr=airQr;
				_nsrQr=nsrQr;
				_irQr=irQr;
				_blQr=blQr;
				_rsQr=rsQr;
				_cavInvestment=cavInvestment;
				_infInvestment=infInvestment;
				_sgeInvestment=sgeInvestment;
				_navInvestment=navInvestment;
				_airInvestment=airInvestment;
				_irInvestment=irInvestment;
				_blInvestment=blInvestment;
				_nsrInvestment=nsrInvestment;
				_notes=notes;
				_gmOnlyNotes=gmOnlyNotes;
				_displayColor=displayColor;
				_corruptionPercentage=corruptionPercentage;
				_plaguePercentage=plaguePercentage;
				_isSecret=isSecret;
				_homeregionId=homeregionId;
				_realmDescription=realmDescription;
				_capitallocationId=capitallocationId;
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
		public function get religionId():int {
			return _religionId;
		}
		public function get realmType():String {
			return _realmType;
		}
		public function get religiousStrength():Number {
			return _religiousStrength;
		}
		public function get isi():Number {
			return _isi;
		}
		public function get tv():int {
			return _tv;
		}
		public function get mana():int {
			return _mana;
		}
		public function get regionGp():int {
			return _regionGp;
		}
		public function get urbanGp():int {
			return _urbanGp;
		}
		public function get ictGp():int {
			return _ictGp;
		}
		public function get pwbGp():Number {
			return _pwbGp;
		}
		public function get savedGp():Number {
			return _savedGp;
		}
		public function get prodAp():Number {
			return _prodAp;
		}
		public function get savedAp():Number {
			return _savedAp;
		}
		public function get totalAp():Number {
			return _totalAp;
		}
		public function get nfp():Number {
			return _nfp;
		}
		public function get sfp():Number {
			return _sfp;
		}
		public function get armySupport():Number {
			return _armySupport;
		}
		public function get cavQr():int {
			return _cavQr;
		}
		public function get infQr():int {
			return _infQr;
		}
		public function get sgeQr():int {
			return _sgeQr;
		}
		public function get navQr():int {
			return _navQr;
		}
		public function get airQr():int {
			return _airQr;
		}
		public function get nsrQr():int {
			return _nsrQr;
		}
		public function get irQr():int {
			return _irQr;
		}
		public function get blQr():int {
			return _blQr;
		}
		public function get rsQr():Number {
			return _rsQr;
		}
		public function get cavInvestment():int {
			return _cavInvestment;
		}
		public function get infInvestment():int {
			return _infInvestment;
		}
		public function get sgeInvestment():int {
			return _sgeInvestment;
		}
		public function get navInvestment():int {
			return _navInvestment;
		}
		public function get airInvestment():int {
			return _airInvestment;
		}
		public function get irInvestment():int {
			return _irInvestment;
		}
		public function get blInvestment():int {
			return _blInvestment;
		}
		public function get nsrInvestment():int {
			return _nsrInvestment;
		}
		public function get notes():String {
			return _notes;
		}
		public function get gmOnlyNotes():String {
			return _gmOnlyNotes;
		}
		public function get displayColor():int {
			return _displayColor;
		}
		public function get corruptionPercentage():int {
			return _corruptionPercentage;
		}
		public function get plaguePercentage():int {
			return _plaguePercentage;
		}
		public function get isSecret():int {
			return _isSecret;
		}
		public function get homeregionId():int {
			return _homeregionId;
		}
		public function get realmDescription():String {
			return _realmDescription;
		}
		public function get capitallocationId():int {
			return _capitallocationId;
		}

		public function set id(value:int):void {
			_id= value;
		}
		public function set name(value:String):void {
			_name= value;
		}
		public function set religionId(value:int):void {
			_religionId= value;
		}
		public function set realmType(value:String):void {
			_realmType= value;
		}
		public function set religiousStrength(value:Number):void {
			_religiousStrength= value;
		}
		public function set isi(value:Number):void {
			_isi= value;
		}
		public function set tv(value:int):void {
			_tv= value;
		}
		public function set mana(value:int):void {
			_mana= value;
		}
		public function set regionGp(value:int):void {
			_regionGp= value;
		}
		public function set urbanGp(value:int):void {
			_urbanGp= value;
		}
		public function set ictGp(value:int):void {
			_ictGp= value;
		}
		public function set pwbGp(value:Number):void {
			_pwbGp= value;
		}
		public function set savedGp(value:Number):void {
			_savedGp= value;
		}
		public function set prodAp(value:Number):void {
			_prodAp= value;
		}
		public function set savedAp(value:Number):void {
			_savedAp= value;
		}
		public function set totalAp(value:Number):void {
			_totalAp= value;
		}
		public function set nfp(value:Number):void {
			_nfp= value;
		}
		public function set sfp(value:Number):void {
			_sfp= value;
		}
		public function set armySupport(value:Number):void {
			_armySupport= value;
		}
		public function set cavQr(value:int):void {
			_cavQr= value;
		}
		public function set infQr(value:int):void {
			_infQr= value;
		}
		public function set sgeQr(value:int):void {
			_sgeQr= value;
		}
		public function set navQr(value:int):void {
			_navQr= value;
		}
		public function set airQr(value:int):void {
			_airQr= value;
		}
		public function set nsrQr(value:int):void {
			_nsrQr= value;
		}
		public function set irQr(value:int):void {
			_irQr= value;
		}
		public function set blQr(value:int):void {
			_blQr= value;
		}
		public function set rsQr(value:Number):void {
			_rsQr= value;
		}
		public function set cavInvestment(value:int):void {
			_cavInvestment= value;
		}
		public function set infInvestment(value:int):void {
			_infInvestment= value;
		}
		public function set sgeInvestment(value:int):void {
			_sgeInvestment= value;
		}
		public function set navInvestment(value:int):void {
			_navInvestment= value;
		}
		public function set airInvestment(value:int):void {
			_airInvestment= value;
		}
		public function set irInvestment(value:int):void {
			_irInvestment= value;
		}
		public function set blInvestment(value:int):void {
			_blInvestment= value;
		}
		public function set nsrInvestment(value:int):void {
			_nsrInvestment= value;
		}
		public function set notes(value:String):void {
			_notes= value;
		}
		public function set gmOnlyNotes(value:String):void {
			_gmOnlyNotes= value;
		}
		public function set displayColor(value:int):void {
			_displayColor= value;
		}
		public function set corruptionPercentage(value:int):void {
			_corruptionPercentage= value;
		}
		public function set plaguePercentage(value:int):void {
			_plaguePercentage= value;
		}
		public function set isSecret(value:int):void {
			_isSecret= value;
		}
		public function set homeregionId(value:int):void {
			_homeregionId= value;
		}
		public function set realmDescription(value:String):void {
			_realmDescription= value;
		}
		public function set capitallocationId(value:int):void {
			_capitallocationId= value;
		}

		public function getAsXMLString():String {
			var x:XML = <RealmsVo/>;
			x.@id = _id;
			x.@name = _name;
			x.@religionId = _religionId;
			x.@realmType = _realmType;
			x.@religiousStrength = _religiousStrength;
			x.@isi = _isi;
			x.@tv = _tv;
			x.@mana = _mana;
			x.@regionGp = _regionGp;
			x.@urbanGp = _urbanGp;
			x.@ictGp = _ictGp;
			x.@pwbGp = _pwbGp;
			x.@savedGp = _savedGp;
			x.@prodAp = _prodAp;
			x.@savedAp = _savedAp;
			x.@totalAp = _totalAp;
			x.@nfp = _nfp;
			x.@sfp = _sfp;
			x.@armySupport = _armySupport;
			x.@cavQr = _cavQr;
			x.@infQr = _infQr;
			x.@sgeQr = _sgeQr;
			x.@navQr = _navQr;
			x.@airQr = _airQr;
			x.@nsrQr = _nsrQr;
			x.@irQr = _irQr;
			x.@blQr = _blQr;
			x.@rsQr = _rsQr;
			x.@cavInvestment = _cavInvestment;
			x.@infInvestment = _infInvestment;
			x.@sgeInvestment = _sgeInvestment;
			x.@navInvestment = _navInvestment;
			x.@airInvestment = _airInvestment;
			x.@irInvestment = _irInvestment;
			x.@blInvestment = _blInvestment;
			x.@nsrInvestment = _nsrInvestment;
			x.@notes = _notes;
			x.@gmOnlyNotes = _gmOnlyNotes;
			x.@displayColor = _displayColor;
			x.@corruptionPercentage = _corruptionPercentage;
			x.@plaguePercentage = _plaguePercentage;
			x.@isSecret = _isSecret;
			x.@homeregionId = _homeregionId;
			x.@realmDescription = _realmDescription;
			x.@capitallocationId = _capitallocationId;
			return x.toXMLString();
		}

		public function getAsSubsetXMLString(omitProperties:Array):String {
			var x:XML = <RealmsVo/>;
           if(!contains(omitProperties, 'id')){
			    x.@id = _id;
           }
           if(!contains(omitProperties, 'name')){
			    x.@name = _name;
           }
           if(!contains(omitProperties, 'religionId')){
			    x.@religionId = _religionId;
           }
           if(!contains(omitProperties, 'realmType')){
			    x.@realmType = _realmType;
           }
           if(!contains(omitProperties, 'religiousStrength')){
			    x.@religiousStrength = _religiousStrength;
           }
           if(!contains(omitProperties, 'isi')){
			    x.@isi = _isi;
           }
           if(!contains(omitProperties, 'tv')){
			    x.@tv = _tv;
           }
           if(!contains(omitProperties, 'mana')){
			    x.@mana = _mana;
           }
           if(!contains(omitProperties, 'regionGp')){
			    x.@regionGp = _regionGp;
           }
           if(!contains(omitProperties, 'urbanGp')){
			    x.@urbanGp = _urbanGp;
           }
           if(!contains(omitProperties, 'ictGp')){
			    x.@ictGp = _ictGp;
           }
           if(!contains(omitProperties, 'pwbGp')){
			    x.@pwbGp = _pwbGp;
           }
           if(!contains(omitProperties, 'savedGp')){
			    x.@savedGp = _savedGp;
           }
           if(!contains(omitProperties, 'prodAp')){
			    x.@prodAp = _prodAp;
           }
           if(!contains(omitProperties, 'savedAp')){
			    x.@savedAp = _savedAp;
           }
           if(!contains(omitProperties, 'totalAp')){
			    x.@totalAp = _totalAp;
           }
           if(!contains(omitProperties, 'nfp')){
			    x.@nfp = _nfp;
           }
           if(!contains(omitProperties, 'sfp')){
			    x.@sfp = _sfp;
           }
           if(!contains(omitProperties, 'armySupport')){
			    x.@armySupport = _armySupport;
           }
           if(!contains(omitProperties, 'cavQr')){
			    x.@cavQr = _cavQr;
           }
           if(!contains(omitProperties, 'infQr')){
			    x.@infQr = _infQr;
           }
           if(!contains(omitProperties, 'sgeQr')){
			    x.@sgeQr = _sgeQr;
           }
           if(!contains(omitProperties, 'navQr')){
			    x.@navQr = _navQr;
           }
           if(!contains(omitProperties, 'airQr')){
			    x.@airQr = _airQr;
           }
           if(!contains(omitProperties, 'nsrQr')){
			    x.@nsrQr = _nsrQr;
           }
           if(!contains(omitProperties, 'irQr')){
			    x.@irQr = _irQr;
           }
           if(!contains(omitProperties, 'blQr')){
			    x.@blQr = _blQr;
           }
           if(!contains(omitProperties, 'rsQr')){
			    x.@rsQr = _rsQr;
           }
           if(!contains(omitProperties, 'cavInvestment')){
			    x.@cavInvestment = _cavInvestment;
           }
           if(!contains(omitProperties, 'infInvestment')){
			    x.@infInvestment = _infInvestment;
           }
           if(!contains(omitProperties, 'sgeInvestment')){
			    x.@sgeInvestment = _sgeInvestment;
           }
           if(!contains(omitProperties, 'navInvestment')){
			    x.@navInvestment = _navInvestment;
           }
           if(!contains(omitProperties, 'airInvestment')){
			    x.@airInvestment = _airInvestment;
           }
           if(!contains(omitProperties, 'irInvestment')){
			    x.@irInvestment = _irInvestment;
           }
           if(!contains(omitProperties, 'blInvestment')){
			    x.@blInvestment = _blInvestment;
           }
           if(!contains(omitProperties, 'nsrInvestment')){
			    x.@nsrInvestment = _nsrInvestment;
           }
           if(!contains(omitProperties, 'notes')){
			    x.@notes = _notes;
           }
           if(!contains(omitProperties, 'gmOnlyNotes')){
			    x.@gmOnlyNotes = _gmOnlyNotes;
           }
           if(!contains(omitProperties, 'displayColor')){
			    x.@displayColor = _displayColor;
           }
           if(!contains(omitProperties, 'corruptionPercentage')){
			    x.@corruptionPercentage = _corruptionPercentage;
           }
           if(!contains(omitProperties, 'plaguePercentage')){
			    x.@plaguePercentage = _plaguePercentage;
           }
           if(!contains(omitProperties, 'isSecret')){
			    x.@isSecret = _isSecret;
           }
           if(!contains(omitProperties, 'homeregionId')){
			    x.@homeregionId = _homeregionId;
           }
           if(!contains(omitProperties, 'realmDescription')){
			    x.@realmDescription = _realmDescription;
           }
           if(!contains(omitProperties, 'capitallocationId')){
			    x.@capitallocationId = _capitallocationId;
           }
			return x.toXMLString();
		}

		public function setFromXMLAttributes(x:XML):void {
			_id = x.@id;
			_name = x.@name;
			_religionId = x.@religionId;
			_realmType = x.@realmType;
			_religiousStrength = x.@religiousStrength;
			_isi = x.@isi;
			_tv = x.@tv;
			_mana = x.@mana;
			_regionGp = x.@regionGp;
			_urbanGp = x.@urbanGp;
			_ictGp = x.@ictGp;
			_pwbGp = x.@pwbGp;
			_savedGp = x.@savedGp;
			_prodAp = x.@prodAp;
			_savedAp = x.@savedAp;
			_totalAp = x.@totalAp;
			_nfp = x.@nfp;
			_sfp = x.@sfp;
			_armySupport = x.@armySupport;
			_cavQr = x.@cavQr;
			_infQr = x.@infQr;
			_sgeQr = x.@sgeQr;
			_navQr = x.@navQr;
			_airQr = x.@airQr;
			_nsrQr = x.@nsrQr;
			_irQr = x.@irQr;
			_blQr = x.@blQr;
			_rsQr = x.@rsQr;
			_cavInvestment = x.@cavInvestment;
			_infInvestment = x.@infInvestment;
			_sgeInvestment = x.@sgeInvestment;
			_navInvestment = x.@navInvestment;
			_airInvestment = x.@airInvestment;
			_irInvestment = x.@irInvestment;
			_blInvestment = x.@blInvestment;
			_nsrInvestment = x.@nsrInvestment;
			_notes = x.@notes;
			_gmOnlyNotes = x.@gmOnlyNotes;
			_displayColor = x.@displayColor;
			_corruptionPercentage = x.@corruptionPercentage;
			_plaguePercentage = x.@plaguePercentage;
			_isSecret = x.@isSecret;
			_homeregionId = x.@homeregionId;
			_realmDescription = x.@realmDescription;
			_capitallocationId = x.@capitallocationId;
		}

		public function setFromXMLElements(x:XML):void {
			_id = Number(x.id.toString());
			_name = x.name.toString();
			_religionId = Number(x.religion_id.toString());
			_realmType = x.realm_type.toString();
			_religiousStrength = Number(x.religious_strength.toString());
			_isi = Number(x.isi.toString());
			_tv = Number(x.tv.toString());
			_mana = Number(x.mana.toString());
			_regionGp = Number(x.region_gp.toString());
			_urbanGp = Number(x.urban_gp.toString());
			_ictGp = Number(x.ict_gp.toString());
			_pwbGp = Number(x.pwb_gp.toString());
			_savedGp = Number(x.saved_gp.toString());
			_prodAp = Number(x.prod_ap.toString());
			_savedAp = Number(x.saved_ap.toString());
			_totalAp = Number(x.total_ap.toString());
			_nfp = Number(x.nfp.toString());
			_sfp = Number(x.sfp.toString());
			_armySupport = Number(x.army_support.toString());
			_cavQr = Number(x.cav_qr.toString());
			_infQr = Number(x.inf_qr.toString());
			_sgeQr = Number(x.sge_qr.toString());
			_navQr = Number(x.nav_qr.toString());
			_airQr = Number(x.air_qr.toString());
			_nsrQr = Number(x.nsr_qr.toString());
			_irQr = Number(x.ir_qr.toString());
			_blQr = Number(x.bl_qr.toString());
			_rsQr = Number(x.rs_qr.toString());
			_cavInvestment = Number(x.cav_investment.toString());
			_infInvestment = Number(x.inf_investment.toString());
			_sgeInvestment = Number(x.sge_investment.toString());
			_navInvestment = Number(x.nav_investment.toString());
			_airInvestment = Number(x.air_investment.toString());
			_irInvestment = Number(x.ir_investment.toString());
			_blInvestment = Number(x.bl_investment.toString());
			_nsrInvestment = Number(x.nsr_investment.toString());
			_notes = x.notes.toString();
			_gmOnlyNotes = x.gm_only_notes.toString();
			_displayColor = Number(x.display_color.toString());
			_corruptionPercentage = Number(x.corruption_percentage.toString());
			_plaguePercentage = Number(x.plague_percentage.toString());
			_isSecret = Number(x.is_secret.toString());
			_homeregionId = Number(x.homeregion_id.toString());
			_realmDescription = x.realm_description.toString();
			_capitallocationId = Number(x.capitallocation_id.toString());
		}

		public function setFromCamelCaseObj(o:Object):void {
			_id = o.id;
			_name = o.name;
			_religionId = o.religionId;
			_realmType = o.realmType;
			_religiousStrength = o.religiousStrength;
			_isi = o.isi;
			_tv = o.tv;
			_mana = o.mana;
			_regionGp = o.regionGp;
			_urbanGp = o.urbanGp;
			_ictGp = o.ictGp;
			_pwbGp = o.pwbGp;
			_savedGp = o.savedGp;
			_prodAp = o.prodAp;
			_savedAp = o.savedAp;
			_totalAp = o.totalAp;
			_nfp = o.nfp;
			_sfp = o.sfp;
			_armySupport = o.armySupport;
			_cavQr = o.cavQr;
			_infQr = o.infQr;
			_sgeQr = o.sgeQr;
			_navQr = o.navQr;
			_airQr = o.airQr;
			_nsrQr = o.nsrQr;
			_irQr = o.irQr;
			_blQr = o.blQr;
			_rsQr = o.rsQr;
			_cavInvestment = o.cavInvestment;
			_infInvestment = o.infInvestment;
			_sgeInvestment = o.sgeInvestment;
			_navInvestment = o.navInvestment;
			_airInvestment = o.airInvestment;
			_irInvestment = o.irInvestment;
			_blInvestment = o.blInvestment;
			_nsrInvestment = o.nsrInvestment;
			_notes = o.notes;
			_gmOnlyNotes = o.gmOnlyNotes;
			_displayColor = o.displayColor;
			_corruptionPercentage = o.corruptionPercentage;
			_plaguePercentage = o.plaguePercentage;
			_isSecret = o.isSecret;
			_homeregionId = o.homeregionId;
			_realmDescription = o.realmDescription;
			_capitallocationId = o.capitallocationId;
		}

		public function setFromObj(o:Object):void {
			_id = o.id;
			_name = o.name;
			_religionId = o.religion_id;
			_realmType = o.realm_type;
			_religiousStrength = o.religious_strength;
			_isi = o.isi;
			_tv = o.tv;
			_mana = o.mana;
			_regionGp = o.region_gp;
			_urbanGp = o.urban_gp;
			_ictGp = o.ict_gp;
			_pwbGp = o.pwb_gp;
			_savedGp = o.saved_gp;
			_prodAp = o.prod_ap;
			_savedAp = o.saved_ap;
			_totalAp = o.total_ap;
			_nfp = o.nfp;
			_sfp = o.sfp;
			_armySupport = o.army_support;
			_cavQr = o.cav_qr;
			_infQr = o.inf_qr;
			_sgeQr = o.sge_qr;
			_navQr = o.nav_qr;
			_airQr = o.air_qr;
			_nsrQr = o.nsr_qr;
			_irQr = o.ir_qr;
			_blQr = o.bl_qr;
			_rsQr = o.rs_qr;
			_cavInvestment = o.cav_investment;
			_infInvestment = o.inf_investment;
			_sgeInvestment = o.sge_investment;
			_navInvestment = o.nav_investment;
			_airInvestment = o.air_investment;
			_irInvestment = o.ir_investment;
			_blInvestment = o.bl_investment;
			_nsrInvestment = o.nsr_investment;
			_notes = o.notes;
			_gmOnlyNotes = o.gm_only_notes;
			_displayColor = o.display_color;
			_corruptionPercentage = o.corruption_percentage;
			_plaguePercentage = o.plague_percentage;
			_isSecret = o.is_secret;
			_homeregionId = o.homeregion_id;
			_realmDescription = o.realm_description;
			_capitallocationId = o.capitallocation_id;
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
			var tableName:String = 'realms';
			var sortClause:String = '';

			sqlString = 'UPDATE realms SET ' + 
				'name = "'+name.toString()+'", ' + 
				'religion_id = "'+religionId.toString()+'", ' + 
				'realm_type = "'+realmType.toString()+'", ' + 
				'religious_strength = "'+religiousStrength.toString()+'", ' + 
				'isi = "'+isi.toString()+'", ' + 
				'tv = "'+tv.toString()+'", ' + 
				'mana = "'+mana.toString()+'", ' + 
				'region_gp = "'+regionGp.toString()+'", ' + 
				'urban_gp = "'+urbanGp.toString()+'", ' + 
				'ict_gp = "'+ictGp.toString()+'", ' + 
				'pwb_gp = "'+pwbGp.toString()+'", ' + 
				'saved_gp = "'+savedGp.toString()+'", ' + 
				'prod_ap = "'+prodAp.toString()+'", ' + 
				'saved_ap = "'+savedAp.toString()+'", ' + 
				'total_ap = "'+totalAp.toString()+'", ' + 
				'nfp = "'+nfp.toString()+'", ' + 
				'sfp = "'+sfp.toString()+'", ' + 
				'army_support = "'+armySupport.toString()+'", ' + 
				'cav_qr = "'+cavQr.toString()+'", ' + 
				'inf_qr = "'+infQr.toString()+'", ' + 
				'sge_qr = "'+sgeQr.toString()+'", ' + 
				'nav_qr = "'+navQr.toString()+'", ' + 
				'air_qr = "'+airQr.toString()+'", ' + 
				'nsr_qr = "'+nsrQr.toString()+'", ' + 
				'ir_qr = "'+irQr.toString()+'", ' + 
				'bl_qr = "'+blQr.toString()+'", ' + 
				'rs_qr = "'+rsQr.toString()+'", ' + 
				'cav_investment = "'+cavInvestment.toString()+'", ' + 
				'inf_investment = "'+infInvestment.toString()+'", ' + 
				'sge_investment = "'+sgeInvestment.toString()+'", ' + 
				'nav_investment = "'+navInvestment.toString()+'", ' + 
				'air_investment = "'+airInvestment.toString()+'", ' + 
				'ir_investment = "'+irInvestment.toString()+'", ' + 
				'bl_investment = "'+blInvestment.toString()+'", ' + 
				'nsr_investment = "'+nsrInvestment.toString()+'", ' + 
				'notes = "'+notes.toString()+'", ' + 
				'gm_only_notes = "'+gmOnlyNotes.toString()+'", ' + 
				'display_color = "'+displayColor.toString()+'", ' + 
				'corruption_percentage = "'+corruptionPercentage.toString()+'", ' + 
				'plague_percentage = "'+plaguePercentage.toString()+'", ' + 
				'is_secret = "'+isSecret.toString()+'", ' + 
				'homeregion_id = "'+homeregionId.toString()+'", ' + 
				'realm_description = "'+realmDescription.toString()+'", ' + 
				'capitallocation_id = "'+capitallocationId.toString()+'" ' + 
				'WHERE id='+id.toString()+';'; 
			return sqlString;
		}
	}
}
