package model
{
	import flash.utils.Dictionary;
	
	public class Cities
	{
		public static var states:Array = new Array("alabama","alaska","arizona","arkansas","california",
			"colorado","connecticut","dc","delaware","florida","georgia","guam","hawaii","idaho",
			"illinois","indiana","iowa","kansas","kentucky","louisiana","maine","maryland","mass",
			"michigan","minnesota","mississippi","missouri","montana","n_carolina","nebraska",
			"nevada","new_jersey","new_mexico","new_york","n_hampshire","north_dakota","ohio",
			"oklahoma","oregon","pennsylvania","puerto_rico","rhode_island","s_carolina","south_dakota",
			"tennessee","texas","utah","vermont","virginia","washington","west_virginia","wisconsin","wyoming");
		
		public static var cities:Array = new Array("atlanta","austin","boston","chicago","dallas","denver","detroit",
			"houston","lasvegas","losangeles","miami","minneapolis","newyork","orangecounty","philadelphia",
			"phoenix","portland","raleigh","sacramento","sandiego","seattle","sfbay","washingtondc");
		
		public static var atlanta:Array = new Array("albany","asheville","athensga","atlanta","auburn","augusta","bham","boone","charlotte","chattanooga","columbia","columbus","cookeville","dothan","gadsden","greenville","hickory","huntsville","knoxville","macon","montgomery","nashville","nwga","savannah","statesboro","tallahassee","shoals","tricities","tuscaloosa","valdosta");
		public static var austin:Array = new Array("abilene","austin","beaumont","brownsville.en","cenla","collegestation","corpuschristi","dallas","nacogdoches","delrio","easttexas","galveston","houston","killeen","lafayette","lakecharles","laredo","lawton","lubbock","mcallen.en","odessa","sanangelo","sanantonio","sanmarcos","shreveport","texarkana","texoma","victoriatx","waco","wichitafalls");
		public static var boston:Array = new Array("albany","binghamton","boston","capecod","catskills","cnj","newlondon","glensfalls","hartford","hudsonvalley","jerseyshore","longisland","maine","nh","newhaven","newyork","newjersey","nwct","oneonta","plattsburgh","poconos","providence","scranton","southcoast","utica","burlington","westernmass","worcester");
		public static var chicago:Array = new Array("battlecreek","bloomington","chambana","chicago","decatur","dubuque","fortwayne","grandrapids","holland","indianapolis","jackson","janesville","kalamazoo","racine","kokomo","lansing","lasalle","madison","mattoon","milwaukee","muncie","muskegon","peoria","quadcities","rockford","sheboygan","southbend","swmi","terrehaute","tippecanoe");
		public static var dallas:Array = new Array("abilene","austin","beaumont","cenla","collegestation","dallas","nacogdoches","easttexas","fayetteville","fortsmith","galveston","houston","killeen","lakecharles","lawton","littlerock","monroe","enid","oklahomacity","sanangelo","sanantonio","sanmarcos","shreveport","stillwater","texarkana","texoma","tulsa","victoriatx","waco","wichitafalls");
		public static var denver:Array = new Array("albuquerque","amarillo","boulder","csd","clovis","cosprings","denver","eastco","farmington","fortcollins","grandisland","rockies","lincoln","logan","northplatte","nwks","ogden","provo","pueblo","rapidcity","roswell","salina","saltlakecity","santafe","scottsbluff","sd","swks","westslope","wichita","wyoming");
		public static var detroit:Array = new Array("akroncanton","annarbor","ashtabula","battlecreek","centralmich","cleveland","detroit","erie","flint","fortwayne","grandrapids","jackson","kalamazoo","lansing","limaohio","mansfield","monroe","porthuron","saginaw","sandusky","thumb","toledo","tuscarawas","youngstown");
		public static var houston:Array = new Array("abilene","austin","batonrouge","beaumont","brownsville.en","cenla","collegestation","corpuschristi","dallas","nacogdoches","easttexas","galveston","houma","houston","killeen","lafayette","lakecharles","laredo","mcallen.en","monroe","neworleans","sanangelo","sanantonio","sanmarcos","shreveport","natchez","texarkana","texoma","victoriatx","waco");
		public static var lasvegas:Array = new Array("bakersfield","elko","flagstaff","fresno","goldcountry","hanford","imperial","inlandempire","lasvegas","losangeles","merced","modesto","mohave","orangecounty","palmsprings","phoenix","prescott","provo","reno","sandiego","slo","santabarbara","santamaria","showlow","stgeorge","stockton","ventura","visalia","yuma");
		public static var losangeles:Array = new Array("bakersfield","flagstaff","fresno","goldcountry","hanford","imperial","inlandempire","lasvegas","losangeles","merced","modesto","mohave","monterey","orangecounty","palmsprings","phoenix","prescott","reno","sacramento","sandiego","slo","santabarbara","santamaria","sfbay","stgeorge","stockton","ventura","visalia","yuma");
		public static var miami:Array = new Array("albany","brunswick","charleston","daytona","dothan","keys","fortmyers","gainesville","cfl","hiltonhead","jacksonville","lakecity","lakeland","macon","ocala","okaloosa","orlando","panamacity","sarasota","savannah","miami","spacecoast","statesboro","staugustine","tallahassee","tampa","treasure","valdosta");
		public static var minneapolis:Array = new Array("ames","appleton","bemidji","brainerd","cedarrapids","desmoines","dubuque","duluth","eauclaire","fargo","fortdodge","grandforks","greenbay","iowacity","janesville","lacrosse","madison","mankato","masoncity","minneapolis","nesd","northernwi","quadcities","rochester","siouxcity","siouxfalls","marshall","stcloud","waterloo","wausau");
		public static var newyork:Array = new Array("albany","allentown","baltimore","binghamton","catskills","cnj","delaware","newlondon","harrisburg","hartford","hudsonvalley","jerseyshore","lancaster","longisland","newhaven","newyork","newjersey","nwct","oneonta","philadelphia","poconos","reading","providence","scranton","southcoast","southjersey","westernmass","williamsport","worcester","york");
		public static var orangecounty:Array = new Array("bakersfield","flagstaff","fresno","goldcountry","hanford","imperial","inlandempire","lasvegas","losangeles","merced","modesto","mohave","monterey","orangecounty","palmsprings","phoenix","prescott","reno","sacramento","sandiego","slo","santabarbara","santamaria","sfbay","stgeorge","stockton","ventura","visalia","yuma");
		public static var philadelphia:Array = new Array("allentown","annapolis","baltimore","binghamton","catskills","cnj","chambersburg","delaware","easternshore","martinsburg","frederick","fredericksburg","harrisburg","hudsonvalley","jerseyshore","lancaster","longisland","newhaven","newyork","newjersey","nwct","philadelphia","reading","scranton","smd","southjersey","pennstate","washingtondc","williamsport","york");
		public static var phoenix:Array = new Array("albuquerque","bakersfield","elpaso.en","farmington","flagstaff","imperial","inlandempire","lascruces.en","lasvegas","losangeles","mohave","orangecounty","palmsprings","phoenix","prescott","roswell","sandiego","santabarbara","santafe","showlow","sierravista","stgeorge","tucson","ventura","visalia","westslope","yuma");
		public static var portland:Array = new Array("bellingham","bend","corvallis","eastoregon","eugene","klamath","lewiston","medford","moseslake","olympic","oregoncoast","portland","pullman","roseburg","salem","seattle","siskiyou","skagit","spokane","kpr","wenatchee","yakima");
		public static var raleigh:Array = new Array("asheville","blacksburg","boone","charleston","charlotte","charlottesville","columbia","danville","eastnc","fayetteville","florencesc","fredericksburg","greensboro","greenville","harrisonburg","hickory","jacksonville","lynchburg","myrtlebeach","norfolk","outerbanks","raleigh","richmond","roanoke","smd","swv","swva","tricities","wilmington","winstonsalem");
		public static var sacramento:Array = new Array("bakersfield","bend","chico","elko","fresno","goldcountry","hanford","humboldt","klamath","losangeles","medford","mendocino","merced","modesto","monterey","oregoncoast","redding","reno","roseburg","sacramento","slo","santabarbara","santamaria","sfbay","siskiyou","stockton","susanville","ventura","visalia","yubasutter");
		public static var sandiego:Array = new Array("bakersfield","flagstaff","fresno","hanford","imperial","inlandempire","lasvegas","losangeles","merced","modesto","mohave","monterey","orangecounty","palmsprings","phoenix","prescott","sandiego","slo","santabarbara","santamaria","sfbay","showlow","sierravista","stgeorge","stockton","tucson","ventura","visalia","yuma");
		public static var seattle:Array = new Array("bellingham","bend","corvallis","eastoregon","eugene","lewiston","medford","moseslake","olympic","oregoncoast","portland","pullman","roseburg","salem","seattle","skagit","spokane","kpr","wenatchee","yakima");
		public static var sfbay:Array = new Array("bakersfield","chico","fresno","goldcountry","hanford","humboldt","inlandempire","klamath","lasvegas","losangeles","medford","mendocino","merced","modesto","monterey","orangecounty","redding","reno","roseburg","sacramento","slo","santabarbara","santamaria","sfbay","siskiyou","stockton","susanville","ventura","visalia","yubasutter");
		public static var washingtondc:Array = new Array("allentown","altoona","annapolis","baltimore","cnj","charlottesville","chambersburg","delaware","easternshore","martinsburg","frederick","fredericksburg","harrisburg","harrisonburg","jerseyshore","lancaster","lynchburg","morgantown","norfolk","philadelphia","reading","richmond","smd","southjersey","pennstate","washingtondc","westmd","williamsport","winchester","york");
		
		
		public static var alabama:Array = new Array("tuscaloosa","montgomery","mobile","huntsville","gadsden","shoals","dothan","bham","auburn");
		public static var alaska:Array = new Array("","","","","","","","","","","","");
		public static var arizona:Array = new Array("","","","","","","","","","","","");
		public static var arkansas:Array = new Array("","","","","","","","","","","","");
		public static var california:Array = new Array("","","","","","","","","","","","");
		public static var colorado:Array = new Array("","","","","","","","","","","","");
		public static var connecticut:Array = new Array("","","","","","","","","","","","","","","");
		public static var dc:Array = new Array("","","","","","","","","","","","");
		public static var delaware:Array = new Array("","","","","","","","","","","","");
		public static var florida:Array = new Array("","","","","","","","","","","","");
		public static var georgia:Array = new Array("","","","","","","","","","","","");
		public static var guam:Array = new Array("","","","","","","","","","","","");
		public static var hawaii:Array = new Array("","","","","","","","","","","","");
		public static var idaho:Array = new Array("","","","","","","","","","","","");
		public static var illinois:Array = new Array("","","","","","","","","","","","");
		public static var indiana:Array = new Array("","","","","","","","","","","","");
		public static var iowa:Array = new Array("","","","","","","","","","","","");
		public static var kansas:Array = new Array("","","","","","","","","","","","");
		public static var kentucky:Array = new Array("","","","","","","","","","","","");
		public static var louisiana:Array = new Array("","","","","","","","","","","","");
		public static var maine:Array = new Array("","","","","","","","","","","","");
		public static var maryland:Array = new Array("","","","","","","","","","","","");
		public static var mass:Array = new Array("","","","","","","","","","","","");
		public static var michigan:Array = new Array("","","","","","","","","","","","");
		public static var minnesota:Array = new Array("","","","","","","","","","","","");
		public static var mississippi:Array = new Array("","","","","","","","","","","","");
		public static var missouri:Array = new Array("","","","","","","","","","","","");
		public static var montana:Array = new Array("","","","","","","","","","","","");
		public static var n_carolina:Array = new Array("","","","","","","","","","","","");
		public static var nebraska:Array = new Array("","","","","","","","","","","","");
		public static var nevada:Array = new Array("","","","","","","","","","","","");
		public static var new_jersey:Array = new Array("","","","","","","","","","","","");
		public static var new_mexico:Array = new Array("","","","","","","","","","","","");
		public static var new_york:Array = new Array("","","","","","","","","","","","");
		public static var n_hampshire:Array = new Array("","","","","","","","","","","","");
		public static var north_dakota:Array = new Array("","","","","","","","","","","","");
		public static var ohio:Array = new Array("","","","","","","","","","","","");
		public static var oklahoma:Array = new Array("","","","","","","","","","","","");
		public static var oregon:Array = new Array("","","","","","","","","","","","");
		public static var pennsylvania:Array = new Array("","","","","","","","","","","","");
		public static var puerto_rico:Array = new Array("","","","","","","","","","","","");
		public static var rhode_island:Array = new Array("","","","","","","","","","","","");
		public static var s_carolina:Array = new Array("","","","","","","","","","","","");
		public static var south_dakota:Array = new Array("","","","","","","","","","","","");
		public static var tennessee:Array = new Array("","","","","","","","","","","","");
		public static var texas:Array = new Array("","","","","","","","","","","","");
		public static var utah:Array = new Array("","","","","","","","","","","","");
		public static var vermont:Array = new Array("","","","","","","","","","","","");
		public static var virginia:Array = new Array("","","","","","","","","","","","");
		public static var washington:Array = new Array("","","","","","","","","","","","");
		public static var west_virginia:Array = new Array("","","","","","","","","","","","");
		public static var wisconsin:Array = new Array("","","","","","","","","","","","");
		public static var wyoming:Array = new Array("","","","","","","","","","","","");
		
		public static var allCities:Array = new Array("abilene","akroncanton","albany","albuquerque","allentown","altoona","amarillo","ames","annapolis","annarbor","appleton","asheville","ashtabula","athensga","atlanta","auburn","augusta","austin",
			"bakersfield","baltimore","batonrouge","battlecreek","beaumont","bellingham","bemidji","bend","bham","binghamton","blacksburg","bloomington","boone","boston","boulder","brainerd","brownsville.en","brunswick","burlington",
			"capecod","catskills","cedarrapids","cenla","centralmich","cfl","chambana","chambersburg","charleston","charlotte","charlottesville","chattanooga","chicago","chico","cleveland","clovis","cnj","collegestation","columbia","columbus","cookeville","corpuschristi","corvallis","cosprings","csd",
			"dallas","danville","daytona","decatur","delaware","delrio","denver","desmoines","detroit","dothan","dubuque","duluth",
			"eastco","easternshore","eastnc","eastoregon","easttexas","eauclaire","elko","elpaso.en","enid","erie","eugene",
			"fargo","farmington","fayetteville","flagstaff","flint","florencesc","fortcollins","fortdodge","fortmyers","fortsmith","fortwayne","frederick","fredericksburg","fresno",
			"gadsden","gainesville","galveston","glensfalls","goldcountry","grandforks","grandisland","grandrapids","greenbay","greensboro","greenville",
			"hanford","harrisburg","harrisonburg","hartford","hickory","hiltonhead","holland","houma","houston","hudsonvalley","humboldt","huntsville",
			"imperial","indianapolis","inlandempire","iowacity","jackson","jacksonville","janesville","jerseyshore",
			"kalamazoo","keys","killeen","klamath","knoxville","kokomo","kpr",
			"lacrosse","lafayette","lakecharles","lakecity","lakeland","lancaster","lansing","laredo","lasalle","lascruces.en","lasvegas","lawton","lewiston","limaohio","lincoln","littlerock","logan","longisland","losangeles","lubbock","lynchburg",
			"macon","madison","maine","mankato","mansfield","marshall","martinsburg","masoncity","mattoon","mcallen.en","medford","mendocino","merced","miami","milwaukee","minneapolis","modesto","mohave","monroe","monterey","montgomery","morgantown","moseslake","muncie","muskegon","myrtlebeach",
			"nacogdoches","nashville","natchez","nesd","newhaven","newjersey","newlondon","neworleans","newyork","nh","norfolk","northernwi","northplatte","nwct","nwga","nwks",
			"ocala","odessa","ogden","okaloosa","oklahomacity","olympic","oneonta","orangecounty","oregoncoast","orlando","outerbanks",
			"palmsprings","panamacity","pennstate","peoria","philadelphia","phoenix","plattsburgh","poconos","porthuron","portland","prescott","providence","provo","pueblo","pullman",
			"quadcities","racine","raleigh","rapidcity","reading","redding","reno","richmond","roanoke","rochester","rockford","rockies","roseburg","roswell",
			"sacramento","saginaw","salem","salina","saltlakecity","sanangelo","sanantonio","sandiego","sandusky","sanmarcos","santabarbara","santafe","santamaria","sarasota","savannah","scottsbluff","scranton","sd","seattle","sfbay","sheboygan","shoals","showlow","shreveport","sierravista","siouxcity","siouxfalls","siskiyou","skagit","slo","smd","southbend","southcoast","southjersey","spacecoast","spokane","statesboro","staugustine","stcloud","stgeorge","stillwater","stockton","susanville","swks","swmi","swv","swva",
			"tallahassee","tampa","terrehaute","texarkana","texoma","thumb","tippecanoe","toledo","treasure","tricities","tucson","tulsa","tuscaloosa","tuscarawas",
			"utica","valdosta","ventura","victoriatx","visalia","waco","washingtondc","waterloo","wausau","wenatchee","westernmass","westmd","westslope","wichita","wichitafalls","williamsport","wilmington","winchester","winstonsalem","worcester","wyoming",
			"yakima","york","youngstown","yubasutter","yuma");
		
		
		
		public static function defineCategories():void{
			var categories:Dictionary = ApplicationData.categories;
			categories["all community"] = "ccc";
			categories["all event"] = "eee";
			categories["all for sale/wanted"] = "sss";
			categories["all gigs"] = "ggg";
			categories["all housing"] = "hhh";
			categories["all jobs"] = "jjj";
			categories["all personals"] = "ppp";
			categories["all resume"] = "res";
			categories["all services offered"] = "bbb";
		}	
		
		public static var categories:XML = 
			<root>
				<node value="ccc" label="community">
					<node value="act" label="activity partners"/>
					<node value="ats" label="artists"/>
					<node value="kid" label="childcare"/>
					<node value="com" label="general"/>
					<node value="grp" label="groups"/>
					<node value="vnn" label="local news and views"/>
					<node value="laf" label="lost &amp; found"/>
					<node value="muc" label="musicians"/>
					<node value="pet" label="pets"/>
					<node value="pol" label="politics"/>
					<node value="rid" label="rideshare"/>
					<node value="vol" label="volunteers"/>
				</node>
				<node value="eee" label="events">
					<node value="cls" label="classes"/> 
					<node value="eve" label="events"/> 
				</node>
				<node value="ggg" label="gigs">
					<node value="cpg" label="computer gigs"/>
					<node value="crg" label="creative gigs"/>
					<node value="cwg" label="crew gigs"/>
					<node value="dmg" label="domestic gigs"/>
					<node value="evg" label="event gigs"/>
					<node value="lbg" label="labor gigs"/>
					<node value="tlg" label="talent gigs"/>
					<node value="wrg" label="writing gigs"/>
				</node>
				<node value="hhh" label="housing">
					<node value="apa" label="apts/housing for rent"/>
					<node value="hou" label="apts wanted"/>
					<node value="swp" label="housing swap"/>
					<node value="hsw" label="housing wanted"/>
					<node value="off" label="office &amp; commercial"/>
					<node value="prk" label="parking &amp; storage"/>
					<node value="rea" label="real estate for sale"> 
						<node data-acat="rea" value="reb" label="real estate - by broker"/>
						<node data-acat="rea" value="reo" label="real estate - by owner"/>
					</node>
					<node value="rew" label="real estate wanted"/>
					<node value="roo" label="rooms &amp; shares"/>
					<node value="sha" label="rooms wanted"/>
					<node value="sub" label="sublets &amp; temporary"/>
					<node value="sbw" label="sublet/temp wanted"/>
					<node value="vac" label="vacation rentals"/>
				</node>
				<node value="jjj" label="jobs">
					<node value="ofc" label="admin/office jobs"/>
					<node value="bus" label="business jobs"/>
					<node value="csr" label="customer service jobs"/>
					<node value="edu" label="education jobs"/>
					<node value="egr" label="engineering jobs"/>
					<node value="etc" label="etcetera jobs"/>
					<node value="acc" label="finance jobs"/>
					<node value="fbh" label="food/bev/hosp jobs"/>
					<node value="lab" label="general labor jobs"/>
					<node value="gov" label="government jobs"/>
					<node value="hea" label="healthcare jobs"/>
					<node value="hum" label="human resource jobs"/>
					<node value="eng" label="internet engineering jobs"/>
					<node value="lgl" label="legal jobs"/>
					<node value="mnu" label="manufacturing jobs"/>
					<node value="mar" label="marketing jobs"/>
					<node value="med" label="media jobs"/>
					<node value="npo" label="nonprofit jobs"/>
					<node value="rej" label="real estate jobs"/>
					<node value="rfh" label="retail/food/hospitality jobs"/>
					<node value="ret" label="retail/wholesale jobs"/>
					<node value="sls" label="sales jobs"/>
					<node value="spa" label="salon/spa/fitness"/>
					<node value="sci" label="science jobs"/>
					<node value="sec" label="security jobs"/>
					<node value="trd" label="skilled trades jobs"/>
					<node value="sof" label="software jobs"/>
					<node value="sad" label="systems/networking jobs"/>
					<node value="tch" label="tech support jobs"/>
					<node value="trp" label="transport jobs"/>
					<node value="tfr" label="tv video radio jobs"/>
					<node value="web" label="web design jobs"/>
					<node value="wri" label="writing jobs"/>
				</node>
				<node value="ppp" label="personals">
					<node value="cas" label="casual encounters"/>
					<node value="m4m" label="men seeking men"/>
					<node value="m4w" label="men seeking women"/>
					<node value="msr" label="misc romance"/>
					<node value="mis" label="missed connections"/>
					<node value="rnr" label="rants &amp; raves"/>
					<node value="stp" label="strictly platonic"/>
					<node value="w4m" label="women seeking men"/>
					<node value="w4w" label="women seeking women"/>
				</node>
				<node value="res" label="All resumes"></node>
				<node value="sss" label="for sale">
					<node data-acat="sss" value="ssq" label="for sale by dealer"/>
					<node data-acat="sss" value="sso" label="for sale by owner"/>
					<node value="ata" label="antiques"> 
						<node data-acat="ata" value="atd" label="antiques - by dealer"/>
						<node data-acat="ata" value="atq" label="antiques - by owner"/>
					</node>
					<node value="ppa" label="appliances"> 
						<node data-acat="ppa" value="ppd" label="appliances - by dealer"/>
						<node data-acat="ppa" value="app" label="appliances - by owner"/>
					</node>
					<node value="ara" label="arts+crafts"> 
						<node data-acat="ara" value="ard" label="arts &amp; crafts - by dealer"/>
						<node data-acat="ara" value="art" label="arts &amp; crafts - by owner"/>
					</node>
					<node value="sna" label="atvs/utvs/snowmobiles"> 
						<node data-acat="sna" value="snd" label="atvs, utvs, snowmobiles - by dea"/>
						<node data-acat="sna" value="sno" label="atvs, utvs, snowmobiles - by own"/>
					</node>
					<node value="baa" label="baby+kids"> 
						<node data-acat="baa" value="bad" label="baby &amp; kid stuff - by dealer"/>
						<node data-acat="baa" value="bab" label="baby &amp; kid stuff - by owner"/>
					</node>
					<node value="bar"> barter</node>
					<node value="pta" label="auto parts"> 
						<node data-acat="pta" value="ptd" label="auto parts - by dealer"/>
						<node data-acat="pta" value="pts" label="auto parts - by owner"/>
					</node>
					<node value="bia" label="bikes"> 
						<node data-acat="bia" value="bid" label="bicycles - by dealer"/>
						<node data-acat="bia" value="bik" label="bicycles - by owner"/>
					</node>
					<node value="boo" label="boats"> 
						<node data-acat="boo" value="bod" label="boats - by dealer"/>
						<node data-acat="boo" value="boa" label="boats - by owner"/>
					</node>
					<node value="bka" label="books"> 
						<node data-acat="bka" value="bkd" label="books &amp; magazines - by dealer"/>
						<node data-acat="bka" value="bks" label="books &amp; magazines - by owner"/>
					</node>
					<node value="bfa" label="business"> 
						<node data-acat="bfa" value="bfd" label="business/commercial - by dealer"/>
						<node data-acat="bfa" value="bfs" label="business/commercial - by owner"/>
					</node>
					<node value="cla" label="clothes+acc"> 
						<node data-acat="cla" value="cld" label="clothing &amp; accessories - by deal"/>
						<node data-acat="cla" value="clo" label="clothing &amp; accessories - by owne"/>
					</node>
					<node value="cta" label="cars+trucks"> 
						<node data-acat="cta" value="ctd" label="cars &amp; trucks - by dealer"/>
						<node data-acat="cta" value="cto" label="cars &amp; trucks - by owner"/>
					</node>
					<node value="ema" label="cds/dvd/vhs">
						<node data-acat="ema" value="emq" label="cds / dvds / vhs - by dealer"/>
						<node data-acat="ema" value="emd" label="cds / dvds / vhs - by owner"/>
					</node>
					<node value="haa" label="beauty+hlth"> 
						<node data-acat="haa" value="had" label="health and beauty - by dealer"/>
						<node data-acat="haa" value="hab" label="health and beauty - by owner"/>
					</node>
					<node value="moa" label="cell phones"> 
						<node data-acat="moa" value="mod" label="cell phones - by dealer"/>
						<node data-acat="moa" value="mob" label="cell phones - by owner"/>
					</node>
					<node value="cba" label="collectibles"> 
						<node data-acat="cba" value="cbd" label="collectibles - by dealer"/>
						<node data-acat="cba" value="clt" label="collectibles - by owner"/>
					</node>
					<node value="sya" label="computers"> 
						<node data-acat="sya" value="syd" label="computers - by dealer"/>
						<node data-acat="sya" value="sys" label="computers - by owner"/>
					</node>
					<node value="ela" label="electronics">
						<node data-acat="ela" value="eld" label="electronics - by dealer"/>
						<node data-acat="ela" value="ele" label="electronics - by owner"/>
					</node>
					<node value="gra" label="farm+garden"> 
						<node data-acat="gra" value="grq" label="farm &amp; garden - by dealer"/>
						<node data-acat="gra" value="grd" label="farm &amp; garden - by owner"/>
					</node>
					<node value="zip"> free stuff</node>
					<node value="fua" label="furniture"> 
						<node data-acat="fua" value="fud" label="furniture - by dealer"/>
						<node data-acat="fua" value="fuo" label="furniture - by owner"/>
					</node>
					<node value="gms"> garage sales</node>
					<node value="foa" label="general"> 
						<node data-acat="foa" value="fod" label="general for sale - by dealer"/>
						<node data-acat="foa" value="for" label="general for sale - by owner"/>
					</node>
					<node value="hva" label="heavy equipment"> 
						<node data-acat="hva" value="hvd" label="heavy equipment - by dealer"/>
						<node data-acat="hva" value="hvo" label="heavy equipment - by owner"/>
					</node>
					<node value="hsa" label="household"> 
						<node data-acat="hsa" value="hsd" label="household items - by dealer"/>
						<node data-acat="hsa" value="hsh" label="household items - by owner"/>
					</node>
					<node value="jwa" label="jewelry"> 
						<node data-acat="jwa" value="jwd" label="jewelry - by dealer"/>
						<node data-acat="jwa" value="jwl" label="jewelry - by owner"/>
					</node>
					<node value="maa" label="materials"> 
						<node data-acat="maa" value="mad" label="materials - by dealer"/>
						<node data-acat="maa" value="mat" label="materials - by owner"/>
					</node>
					<node value="mpa" label="motorcycle parts &amp; acc"> 
						<node data-acat="mpa" value="mpd" label="motorcycle parts/acc - by dealer"/>
						<node data-acat="mpa" value="mpo" label="motorcycle parts/acc - by owner"/>
					</node>
					<node value="mca" label="motorcycles"> 
						<node data-acat="mca" value="mcd" label="motorcycles/scooters - by dealer"/>
						<node data-acat="mca" value="mcy" label="motorcycles/scooters - by owner"/>
					</node>
					<node value="msa" label="music instr"> 
						<node data-acat="msa" value="msd" label="musical instruments - by dealer"/>
						<node data-acat="msa" value="msg" label="musical instruments - by owner"/>
					</node>
					<node value="pha" label="photo+video"> 
						<node data-acat="pha" value="phd" label="photo/video - by dealer"/>
						<node data-acat="pha" value="pho" label="photo/video - by owner"/>
					</node>
					<node value="rva" label="recreational vehicles"> 
						<node data-acat="rva" value="rvd" label="rvs - by dealer"/>
						<node data-acat="rva" value="rvs" label="rvs - by owner"/>
					</node>
					<node value="sga" label="sporting"> 
						<node data-acat="sga" value="sgd" label="sporting goods - by dealer"/>
						<node data-acat="sga" value="spo" label="sporting goods - by owner"/>
					</node>
					<node value="tia" label="tickets"> 
						<node data-acat="tia" value="tid" label="tickets - by dealer"/>
						<node data-acat="tia" value="tix" label="tickets - by owner"/>
					</node>
					<node value="tla" label="tools"> 
						<node data-acat="tla" value="tld" label="tools - by dealer"/>
						<node data-acat="tla" value="tls" label="tools - by owner"/>
					</node>
					<node value="taa" label="toys+games"> 
						<node data-acat="taa" value="tad" label="toys &amp; games - by dealer"/>
						<node data-acat="taa" value="tag" label="toys &amp; games - by owner"/>
					</node>
					<node value="vga" label="video gaming"> 
						<node data-acat="vga" value="vgd" label="video gaming - by dealer"/>
						<node data-acat="vga" value="vgm" label="video gaming - by owner"/>
					</node>
					<node value="waa" label="wanted"> 
						<node data-acat="waa" value="wad" label="wanted - by dealer"/>
						<node data-acat="waa" value="wan" label="wanted - by owner"/>
					</node>
				</node>
				<node value="bbb" label="services">
					<node value="aos" label="automotive services"/>
					<node value="bts" label="beauty services"/>
					<node value="cps" label="computer services"/>
					<node value="crs" label="creative services"/>
					<node value="cys" label="cycle services"/>
					<node value="evs" label="event services"/>
					<node value="fgs" label="farm &amp; garden services"/>
					<node value="fns" label="financial services"/>
					<node value="hss" label="household services"/>
					<node value="lbs" label="labor &amp; moving"/>
					<node value="lgs" label="legal services"/>
					<node value="lss" label="lessons &amp; tutoring"/>
					<node value="mas" label="marine services"/>
					<node value="pas" label="pet services"/>
					<node value="rts" label="real estate services"/>
					<node value="sks" label="skilled trade services"/>
					<node value="biz" label="small biz ads"/>
					<node value="thp" label="therapeutic services"/>
					<node value="trv" label="travel/vacation"/>
					<node value="wet" label="write/edit/trans"/>
				</node>
			</root>;

		
	}
}