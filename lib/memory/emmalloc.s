	.text
	.file	"emmalloc.cpp"
	.section	.text.__cxx_global_var_init,"",@
	.type	__cxx_global_var_init,@function # -- Begin function __cxx_global_var_init
__cxx_global_var_init:                  # @__cxx_global_var_init
	.local  	i32
# %bb.0:
	get_global	$push2=, __stack_pointer
	i32.const	$push3=, 32
	i32.sub 	$push12=, $pop2, $pop3
	tee_local	$push11=, 0, $pop12
	i32.const	$push0=, -1
	i32.store	20($pop11), $pop0
	get_local	$push13=, 0
	i32.const	$push1=, 0
	i32.store	8($pop13), $pop1
	i32.const	$push10=, 0
	i32.const	$push9=, 0
	i32.store	_ZL11firstRegion($pop10), $pop9
	get_local	$push14=, 0
	i32.const	$push8=, 0
	i32.store	16($pop14), $pop8
	get_local	$push16=, 0
	get_local	$push15=, 0
	i32.const	$push4=, 16
	i32.add 	$push5=, $pop15, $pop4
	i32.store	24($pop16), $pop5
	get_local	$push18=, 0
	get_local	$push17=, 0
	i32.const	$push6=, 8
	i32.add 	$push7=, $pop17, $pop6
	i32.store	28($pop18), $pop7
                                        # fallthrough-return
	end_function
.Lfunc_end0:
	.size	__cxx_global_var_init, .Lfunc_end0-__cxx_global_var_init
                                        # -- End function
	.section	.text.__cxx_global_var_init.1,"",@
	.type	__cxx_global_var_init.1,@function # -- Begin function __cxx_global_var_init.1
__cxx_global_var_init.1:                # @__cxx_global_var_init.1
	.local  	i32
# %bb.0:
	get_global	$push2=, __stack_pointer
	i32.const	$push3=, 32
	i32.sub 	$push12=, $pop2, $pop3
	tee_local	$push11=, 0, $pop12
	i32.const	$push0=, -1
	i32.store	20($pop11), $pop0
	get_local	$push13=, 0
	i32.const	$push1=, 0
	i32.store	8($pop13), $pop1
	i32.const	$push10=, 0
	i32.const	$push9=, 0
	i32.store	_ZL10lastRegion($pop10), $pop9
	get_local	$push14=, 0
	i32.const	$push8=, 0
	i32.store	16($pop14), $pop8
	get_local	$push16=, 0
	get_local	$push15=, 0
	i32.const	$push4=, 16
	i32.add 	$push5=, $pop15, $pop4
	i32.store	24($pop16), $pop5
	get_local	$push18=, 0
	get_local	$push17=, 0
	i32.const	$push6=, 8
	i32.add 	$push7=, $pop17, $pop6
	i32.store	28($pop18), $pop7
                                        # fallthrough-return
	end_function
.Lfunc_end1:
	.size	__cxx_global_var_init.1, .Lfunc_end1-__cxx_global_var_init.1
                                        # -- End function
	.section	.text.__cxx_global_var_init.2,"",@
	.type	__cxx_global_var_init.2,@function # -- Begin function __cxx_global_var_init.2
__cxx_global_var_init.2:                # @__cxx_global_var_init.2
	.local  	i32
# %bb.0:
	get_global	$push32=, __stack_pointer
	i32.const	$push33=, 768
	i32.sub 	$push289=, $pop32, $pop33
	tee_local	$push288=, 0, $pop289
	set_global	__stack_pointer, $pop288
	i32.const	$push1=, 0
	i64.const	$push0=, 0
	i64.store	_ZL9freeLists($pop1), $pop0
	get_local	$push290=, 0
	i32.const	$push2=, -1
	i32.store	260($pop290), $pop2
	get_local	$push291=, 0
	i32.const	$push287=, 0
	i32.store	248($pop291), $pop287
	get_local	$push292=, 0
	i32.const	$push286=, 0
	i32.store	752($pop292), $pop286
	get_local	$push293=, 0
	i32.const	$push285=, 0
	i32.store	240($pop293), $pop285
	get_local	$push294=, 0
	i32.const	$push284=, 0
	i32.store	736($pop294), $pop284
	get_local	$push295=, 0
	i32.const	$push283=, 0
	i32.store	256($pop295), $pop283
	get_local	$push296=, 0
	i32.const	$push282=, -1
	i32.store	756($pop296), $pop282
	get_local	$push297=, 0
	i32.const	$push281=, -1
	i32.store	740($pop297), $pop281
	i32.const	$push280=, 0
	i32.const	$push279=, 0
	i32.store	_ZL9freeLists+8($pop280), $pop279
	get_local	$push298=, 0
	i32.const	$push278=, 0
	i32.store	232($pop298), $pop278
	get_local	$push300=, 0
	get_local	$push299=, 0
	i32.const	$push36=, 256
	i32.add 	$push37=, $pop299, $pop36
	i32.store	264($pop300), $pop37
	get_local	$push302=, 0
	get_local	$push301=, 0
	i32.const	$push38=, 248
	i32.add 	$push39=, $pop301, $pop38
	i32.store	764($pop302), $pop39
	get_local	$push304=, 0
	get_local	$push303=, 0
	i32.const	$push40=, 752
	i32.add 	$push41=, $pop303, $pop40
	i32.store	760($pop304), $pop41
	get_local	$push306=, 0
	get_local	$push305=, 0
	i32.const	$push42=, 240
	i32.add 	$push43=, $pop305, $pop42
	i32.store	748($pop306), $pop43
	get_local	$push308=, 0
	get_local	$push307=, 0
	i32.const	$push44=, 736
	i32.add 	$push45=, $pop307, $pop44
	i32.store	744($pop308), $pop45
	get_local	$push309=, 0
	i32.const	$push277=, 0
	i32.store	720($pop309), $pop277
	get_local	$push311=, 0
	get_local	$push310=, 0
	i32.const	$push46=, 232
	i32.add 	$push47=, $pop310, $pop46
	i32.store	732($pop311), $pop47
	get_local	$push313=, 0
	get_local	$push312=, 0
	i32.const	$push48=, 720
	i32.add 	$push49=, $pop312, $pop48
	i32.store	728($pop313), $pop49
	get_local	$push314=, 0
	i32.const	$push276=, -1
	i32.store	724($pop314), $pop276
	i32.const	$push275=, 0
	i32.const	$push274=, 0
	i32.store	_ZL9freeLists+12($pop275), $pop274
	get_local	$push316=, 0
	get_local	$push315=, 0
	i32.load	$push3=, 720($pop315)
	i32.store	224($pop316), $pop3
	get_local	$push317=, 0
	i32.const	$push273=, 0
	i32.store	704($pop317), $pop273
	get_local	$push319=, 0
	get_local	$push318=, 0
	i32.const	$push50=, 224
	i32.add 	$push51=, $pop318, $pop50
	i32.store	716($pop319), $pop51
	get_local	$push321=, 0
	get_local	$push320=, 0
	i32.const	$push52=, 704
	i32.add 	$push53=, $pop320, $pop52
	i32.store	712($pop321), $pop53
	get_local	$push322=, 0
	i32.const	$push272=, -1
	i32.store	708($pop322), $pop272
	i32.const	$push271=, 0
	i32.const	$push270=, 0
	i32.store	_ZL9freeLists+16($pop271), $pop270
	get_local	$push324=, 0
	get_local	$push323=, 0
	i32.load	$push4=, 704($pop323)
	i32.store	216($pop324), $pop4
	get_local	$push325=, 0
	i32.const	$push269=, 0
	i32.store	688($pop325), $pop269
	get_local	$push327=, 0
	get_local	$push326=, 0
	i32.const	$push54=, 216
	i32.add 	$push55=, $pop326, $pop54
	i32.store	700($pop327), $pop55
	get_local	$push329=, 0
	get_local	$push328=, 0
	i32.const	$push56=, 688
	i32.add 	$push57=, $pop328, $pop56
	i32.store	696($pop329), $pop57
	get_local	$push330=, 0
	i32.const	$push268=, -1
	i32.store	692($pop330), $pop268
	i32.const	$push267=, 0
	i32.const	$push266=, 0
	i32.store	_ZL9freeLists+20($pop267), $pop266
	get_local	$push332=, 0
	get_local	$push331=, 0
	i32.load	$push5=, 688($pop331)
	i32.store	208($pop332), $pop5
	get_local	$push333=, 0
	i32.const	$push265=, 0
	i32.store	672($pop333), $pop265
	get_local	$push335=, 0
	get_local	$push334=, 0
	i32.const	$push58=, 208
	i32.add 	$push59=, $pop334, $pop58
	i32.store	684($pop335), $pop59
	get_local	$push337=, 0
	get_local	$push336=, 0
	i32.const	$push60=, 672
	i32.add 	$push61=, $pop336, $pop60
	i32.store	680($pop337), $pop61
	get_local	$push338=, 0
	i32.const	$push264=, -1
	i32.store	676($pop338), $pop264
	i32.const	$push263=, 0
	i32.const	$push262=, 0
	i32.store	_ZL9freeLists+24($pop263), $pop262
	get_local	$push340=, 0
	get_local	$push339=, 0
	i32.load	$push6=, 672($pop339)
	i32.store	200($pop340), $pop6
	get_local	$push341=, 0
	i32.const	$push261=, 0
	i32.store	656($pop341), $pop261
	get_local	$push343=, 0
	get_local	$push342=, 0
	i32.const	$push62=, 200
	i32.add 	$push63=, $pop342, $pop62
	i32.store	668($pop343), $pop63
	get_local	$push345=, 0
	get_local	$push344=, 0
	i32.const	$push64=, 656
	i32.add 	$push65=, $pop344, $pop64
	i32.store	664($pop345), $pop65
	get_local	$push346=, 0
	i32.const	$push260=, -1
	i32.store	660($pop346), $pop260
	i32.const	$push259=, 0
	i32.const	$push258=, 0
	i32.store	_ZL9freeLists+28($pop259), $pop258
	get_local	$push348=, 0
	get_local	$push347=, 0
	i32.load	$push7=, 656($pop347)
	i32.store	192($pop348), $pop7
	get_local	$push349=, 0
	i32.const	$push257=, 0
	i32.store	640($pop349), $pop257
	get_local	$push351=, 0
	get_local	$push350=, 0
	i32.const	$push66=, 192
	i32.add 	$push67=, $pop350, $pop66
	i32.store	652($pop351), $pop67
	get_local	$push353=, 0
	get_local	$push352=, 0
	i32.const	$push68=, 640
	i32.add 	$push69=, $pop352, $pop68
	i32.store	648($pop353), $pop69
	get_local	$push354=, 0
	i32.const	$push256=, -1
	i32.store	644($pop354), $pop256
	i32.const	$push255=, 0
	i32.const	$push254=, 0
	i32.store	_ZL9freeLists+32($pop255), $pop254
	get_local	$push356=, 0
	get_local	$push355=, 0
	i32.load	$push8=, 640($pop355)
	i32.store	184($pop356), $pop8
	get_local	$push357=, 0
	i32.const	$push253=, 0
	i32.store	624($pop357), $pop253
	get_local	$push359=, 0
	get_local	$push358=, 0
	i32.const	$push70=, 184
	i32.add 	$push71=, $pop358, $pop70
	i32.store	636($pop359), $pop71
	get_local	$push361=, 0
	get_local	$push360=, 0
	i32.const	$push72=, 624
	i32.add 	$push73=, $pop360, $pop72
	i32.store	632($pop361), $pop73
	get_local	$push362=, 0
	i32.const	$push252=, -1
	i32.store	628($pop362), $pop252
	i32.const	$push251=, 0
	i32.const	$push250=, 0
	i32.store	_ZL9freeLists+36($pop251), $pop250
	get_local	$push364=, 0
	get_local	$push363=, 0
	i32.load	$push9=, 624($pop363)
	i32.store	176($pop364), $pop9
	get_local	$push365=, 0
	i32.const	$push249=, 0
	i32.store	608($pop365), $pop249
	get_local	$push367=, 0
	get_local	$push366=, 0
	i32.const	$push74=, 176
	i32.add 	$push75=, $pop366, $pop74
	i32.store	620($pop367), $pop75
	get_local	$push369=, 0
	get_local	$push368=, 0
	i32.const	$push76=, 608
	i32.add 	$push77=, $pop368, $pop76
	i32.store	616($pop369), $pop77
	get_local	$push370=, 0
	i32.const	$push248=, -1
	i32.store	612($pop370), $pop248
	i32.const	$push247=, 0
	i32.const	$push246=, 0
	i32.store	_ZL9freeLists+40($pop247), $pop246
	get_local	$push372=, 0
	get_local	$push371=, 0
	i32.load	$push10=, 608($pop371)
	i32.store	168($pop372), $pop10
	get_local	$push373=, 0
	i32.const	$push245=, 0
	i32.store	592($pop373), $pop245
	get_local	$push375=, 0
	get_local	$push374=, 0
	i32.const	$push78=, 168
	i32.add 	$push79=, $pop374, $pop78
	i32.store	604($pop375), $pop79
	get_local	$push377=, 0
	get_local	$push376=, 0
	i32.const	$push80=, 592
	i32.add 	$push81=, $pop376, $pop80
	i32.store	600($pop377), $pop81
	get_local	$push378=, 0
	i32.const	$push244=, -1
	i32.store	596($pop378), $pop244
	i32.const	$push243=, 0
	i32.const	$push242=, 0
	i32.store	_ZL9freeLists+44($pop243), $pop242
	get_local	$push380=, 0
	get_local	$push379=, 0
	i32.load	$push11=, 592($pop379)
	i32.store	160($pop380), $pop11
	get_local	$push381=, 0
	i32.const	$push241=, 0
	i32.store	576($pop381), $pop241
	get_local	$push383=, 0
	get_local	$push382=, 0
	i32.const	$push82=, 160
	i32.add 	$push83=, $pop382, $pop82
	i32.store	588($pop383), $pop83
	get_local	$push385=, 0
	get_local	$push384=, 0
	i32.const	$push84=, 576
	i32.add 	$push85=, $pop384, $pop84
	i32.store	584($pop385), $pop85
	get_local	$push386=, 0
	i32.const	$push240=, -1
	i32.store	580($pop386), $pop240
	i32.const	$push239=, 0
	i32.const	$push238=, 0
	i32.store	_ZL9freeLists+48($pop239), $pop238
	get_local	$push388=, 0
	get_local	$push387=, 0
	i32.load	$push12=, 576($pop387)
	i32.store	152($pop388), $pop12
	get_local	$push389=, 0
	i32.const	$push237=, 0
	i32.store	560($pop389), $pop237
	get_local	$push391=, 0
	get_local	$push390=, 0
	i32.const	$push86=, 152
	i32.add 	$push87=, $pop390, $pop86
	i32.store	572($pop391), $pop87
	get_local	$push393=, 0
	get_local	$push392=, 0
	i32.const	$push88=, 560
	i32.add 	$push89=, $pop392, $pop88
	i32.store	568($pop393), $pop89
	get_local	$push394=, 0
	i32.const	$push236=, -1
	i32.store	564($pop394), $pop236
	i32.const	$push235=, 0
	i32.const	$push234=, 0
	i32.store	_ZL9freeLists+52($pop235), $pop234
	get_local	$push396=, 0
	get_local	$push395=, 0
	i32.load	$push13=, 560($pop395)
	i32.store	144($pop396), $pop13
	get_local	$push397=, 0
	i32.const	$push233=, 0
	i32.store	544($pop397), $pop233
	get_local	$push399=, 0
	get_local	$push398=, 0
	i32.const	$push90=, 144
	i32.add 	$push91=, $pop398, $pop90
	i32.store	556($pop399), $pop91
	get_local	$push401=, 0
	get_local	$push400=, 0
	i32.const	$push92=, 544
	i32.add 	$push93=, $pop400, $pop92
	i32.store	552($pop401), $pop93
	get_local	$push402=, 0
	i32.const	$push232=, -1
	i32.store	548($pop402), $pop232
	i32.const	$push231=, 0
	i32.const	$push230=, 0
	i32.store	_ZL9freeLists+56($pop231), $pop230
	get_local	$push404=, 0
	get_local	$push403=, 0
	i32.load	$push14=, 544($pop403)
	i32.store	136($pop404), $pop14
	get_local	$push405=, 0
	i32.const	$push229=, 0
	i32.store	528($pop405), $pop229
	get_local	$push407=, 0
	get_local	$push406=, 0
	i32.const	$push94=, 136
	i32.add 	$push95=, $pop406, $pop94
	i32.store	540($pop407), $pop95
	get_local	$push409=, 0
	get_local	$push408=, 0
	i32.const	$push96=, 528
	i32.add 	$push97=, $pop408, $pop96
	i32.store	536($pop409), $pop97
	get_local	$push410=, 0
	i32.const	$push228=, -1
	i32.store	532($pop410), $pop228
	i32.const	$push227=, 0
	i32.const	$push226=, 0
	i32.store	_ZL9freeLists+60($pop227), $pop226
	get_local	$push412=, 0
	get_local	$push411=, 0
	i32.load	$push15=, 528($pop411)
	i32.store	128($pop412), $pop15
	get_local	$push413=, 0
	i32.const	$push225=, 0
	i32.store	512($pop413), $pop225
	get_local	$push415=, 0
	get_local	$push414=, 0
	i32.const	$push98=, 128
	i32.add 	$push99=, $pop414, $pop98
	i32.store	524($pop415), $pop99
	get_local	$push417=, 0
	get_local	$push416=, 0
	i32.const	$push100=, 512
	i32.add 	$push101=, $pop416, $pop100
	i32.store	520($pop417), $pop101
	get_local	$push418=, 0
	i32.const	$push224=, -1
	i32.store	516($pop418), $pop224
	i32.const	$push223=, 0
	i32.const	$push222=, 0
	i32.store	_ZL9freeLists+64($pop223), $pop222
	get_local	$push420=, 0
	get_local	$push419=, 0
	i32.load	$push16=, 512($pop419)
	i32.store	120($pop420), $pop16
	get_local	$push421=, 0
	i32.const	$push221=, 0
	i32.store	496($pop421), $pop221
	get_local	$push423=, 0
	get_local	$push422=, 0
	i32.const	$push102=, 120
	i32.add 	$push103=, $pop422, $pop102
	i32.store	508($pop423), $pop103
	get_local	$push425=, 0
	get_local	$push424=, 0
	i32.const	$push104=, 496
	i32.add 	$push105=, $pop424, $pop104
	i32.store	504($pop425), $pop105
	get_local	$push426=, 0
	i32.const	$push220=, -1
	i32.store	500($pop426), $pop220
	i32.const	$push219=, 0
	i32.const	$push218=, 0
	i32.store	_ZL9freeLists+68($pop219), $pop218
	get_local	$push428=, 0
	get_local	$push427=, 0
	i32.load	$push17=, 496($pop427)
	i32.store	112($pop428), $pop17
	get_local	$push429=, 0
	i32.const	$push217=, 0
	i32.store	480($pop429), $pop217
	get_local	$push431=, 0
	get_local	$push430=, 0
	i32.const	$push106=, 112
	i32.add 	$push107=, $pop430, $pop106
	i32.store	492($pop431), $pop107
	get_local	$push433=, 0
	get_local	$push432=, 0
	i32.const	$push108=, 480
	i32.add 	$push109=, $pop432, $pop108
	i32.store	488($pop433), $pop109
	get_local	$push434=, 0
	i32.const	$push216=, -1
	i32.store	484($pop434), $pop216
	i32.const	$push215=, 0
	i32.const	$push214=, 0
	i32.store	_ZL9freeLists+72($pop215), $pop214
	get_local	$push436=, 0
	get_local	$push435=, 0
	i32.load	$push18=, 480($pop435)
	i32.store	104($pop436), $pop18
	get_local	$push437=, 0
	i32.const	$push213=, 0
	i32.store	464($pop437), $pop213
	get_local	$push439=, 0
	get_local	$push438=, 0
	i32.const	$push110=, 104
	i32.add 	$push111=, $pop438, $pop110
	i32.store	476($pop439), $pop111
	get_local	$push441=, 0
	get_local	$push440=, 0
	i32.const	$push112=, 464
	i32.add 	$push113=, $pop440, $pop112
	i32.store	472($pop441), $pop113
	get_local	$push442=, 0
	i32.const	$push212=, -1
	i32.store	468($pop442), $pop212
	i32.const	$push211=, 0
	i32.const	$push210=, 0
	i32.store	_ZL9freeLists+76($pop211), $pop210
	get_local	$push444=, 0
	get_local	$push443=, 0
	i32.load	$push19=, 464($pop443)
	i32.store	96($pop444), $pop19
	get_local	$push445=, 0
	i32.const	$push209=, 0
	i32.store	448($pop445), $pop209
	get_local	$push447=, 0
	get_local	$push446=, 0
	i32.const	$push114=, 96
	i32.add 	$push115=, $pop446, $pop114
	i32.store	460($pop447), $pop115
	get_local	$push449=, 0
	get_local	$push448=, 0
	i32.const	$push116=, 448
	i32.add 	$push117=, $pop448, $pop116
	i32.store	456($pop449), $pop117
	get_local	$push450=, 0
	i32.const	$push208=, -1
	i32.store	452($pop450), $pop208
	i32.const	$push207=, 0
	i32.const	$push206=, 0
	i32.store	_ZL9freeLists+80($pop207), $pop206
	get_local	$push452=, 0
	get_local	$push451=, 0
	i32.load	$push20=, 448($pop451)
	i32.store	88($pop452), $pop20
	get_local	$push453=, 0
	i32.const	$push205=, 0
	i32.store	432($pop453), $pop205
	get_local	$push455=, 0
	get_local	$push454=, 0
	i32.const	$push118=, 88
	i32.add 	$push119=, $pop454, $pop118
	i32.store	444($pop455), $pop119
	get_local	$push457=, 0
	get_local	$push456=, 0
	i32.const	$push120=, 432
	i32.add 	$push121=, $pop456, $pop120
	i32.store	440($pop457), $pop121
	get_local	$push458=, 0
	i32.const	$push204=, -1
	i32.store	436($pop458), $pop204
	i32.const	$push203=, 0
	i32.const	$push202=, 0
	i32.store	_ZL9freeLists+84($pop203), $pop202
	get_local	$push460=, 0
	get_local	$push459=, 0
	i32.load	$push21=, 432($pop459)
	i32.store	80($pop460), $pop21
	get_local	$push461=, 0
	i32.const	$push201=, 0
	i32.store	416($pop461), $pop201
	get_local	$push463=, 0
	get_local	$push462=, 0
	i32.const	$push122=, 80
	i32.add 	$push123=, $pop462, $pop122
	i32.store	428($pop463), $pop123
	get_local	$push465=, 0
	get_local	$push464=, 0
	i32.const	$push124=, 416
	i32.add 	$push125=, $pop464, $pop124
	i32.store	424($pop465), $pop125
	get_local	$push466=, 0
	i32.const	$push200=, -1
	i32.store	420($pop466), $pop200
	i32.const	$push199=, 0
	i32.const	$push198=, 0
	i32.store	_ZL9freeLists+88($pop199), $pop198
	get_local	$push468=, 0
	get_local	$push467=, 0
	i32.load	$push22=, 416($pop467)
	i32.store	72($pop468), $pop22
	get_local	$push469=, 0
	i32.const	$push197=, 0
	i32.store	400($pop469), $pop197
	get_local	$push471=, 0
	get_local	$push470=, 0
	i32.const	$push126=, 72
	i32.add 	$push127=, $pop470, $pop126
	i32.store	412($pop471), $pop127
	get_local	$push473=, 0
	get_local	$push472=, 0
	i32.const	$push128=, 400
	i32.add 	$push129=, $pop472, $pop128
	i32.store	408($pop473), $pop129
	get_local	$push474=, 0
	i32.const	$push196=, -1
	i32.store	404($pop474), $pop196
	i32.const	$push195=, 0
	i32.const	$push194=, 0
	i32.store	_ZL9freeLists+92($pop195), $pop194
	get_local	$push476=, 0
	get_local	$push475=, 0
	i32.load	$push23=, 400($pop475)
	i32.store	64($pop476), $pop23
	get_local	$push477=, 0
	i32.const	$push193=, 0
	i32.store	384($pop477), $pop193
	get_local	$push479=, 0
	get_local	$push478=, 0
	i32.const	$push130=, 64
	i32.add 	$push131=, $pop478, $pop130
	i32.store	396($pop479), $pop131
	get_local	$push481=, 0
	get_local	$push480=, 0
	i32.const	$push132=, 384
	i32.add 	$push133=, $pop480, $pop132
	i32.store	392($pop481), $pop133
	get_local	$push482=, 0
	i32.const	$push192=, -1
	i32.store	388($pop482), $pop192
	i32.const	$push191=, 0
	i32.const	$push190=, 0
	i32.store	_ZL9freeLists+96($pop191), $pop190
	get_local	$push484=, 0
	get_local	$push483=, 0
	i32.load	$push24=, 384($pop483)
	i32.store	56($pop484), $pop24
	get_local	$push485=, 0
	i32.const	$push189=, 0
	i32.store	368($pop485), $pop189
	get_local	$push487=, 0
	get_local	$push486=, 0
	i32.const	$push134=, 56
	i32.add 	$push135=, $pop486, $pop134
	i32.store	380($pop487), $pop135
	get_local	$push489=, 0
	get_local	$push488=, 0
	i32.const	$push136=, 368
	i32.add 	$push137=, $pop488, $pop136
	i32.store	376($pop489), $pop137
	get_local	$push490=, 0
	i32.const	$push188=, -1
	i32.store	372($pop490), $pop188
	i32.const	$push187=, 0
	i32.const	$push186=, 0
	i32.store	_ZL9freeLists+100($pop187), $pop186
	get_local	$push492=, 0
	get_local	$push491=, 0
	i32.load	$push25=, 368($pop491)
	i32.store	48($pop492), $pop25
	get_local	$push493=, 0
	i32.const	$push185=, 0
	i32.store	352($pop493), $pop185
	get_local	$push495=, 0
	get_local	$push494=, 0
	i32.const	$push138=, 48
	i32.add 	$push139=, $pop494, $pop138
	i32.store	364($pop495), $pop139
	get_local	$push497=, 0
	get_local	$push496=, 0
	i32.const	$push140=, 352
	i32.add 	$push141=, $pop496, $pop140
	i32.store	360($pop497), $pop141
	get_local	$push498=, 0
	i32.const	$push184=, -1
	i32.store	356($pop498), $pop184
	i32.const	$push183=, 0
	i32.const	$push182=, 0
	i32.store	_ZL9freeLists+104($pop183), $pop182
	get_local	$push500=, 0
	get_local	$push499=, 0
	i32.load	$push26=, 352($pop499)
	i32.store	40($pop500), $pop26
	get_local	$push501=, 0
	i32.const	$push181=, 0
	i32.store	336($pop501), $pop181
	get_local	$push503=, 0
	get_local	$push502=, 0
	i32.const	$push142=, 40
	i32.add 	$push143=, $pop502, $pop142
	i32.store	348($pop503), $pop143
	get_local	$push505=, 0
	get_local	$push504=, 0
	i32.const	$push144=, 336
	i32.add 	$push145=, $pop504, $pop144
	i32.store	344($pop505), $pop145
	get_local	$push506=, 0
	i32.const	$push180=, -1
	i32.store	340($pop506), $pop180
	i32.const	$push179=, 0
	i32.const	$push178=, 0
	i32.store	_ZL9freeLists+108($pop179), $pop178
	get_local	$push508=, 0
	get_local	$push507=, 0
	i32.load	$push27=, 336($pop507)
	i32.store	32($pop508), $pop27
	get_local	$push509=, 0
	i32.const	$push177=, 0
	i32.store	320($pop509), $pop177
	get_local	$push511=, 0
	get_local	$push510=, 0
	i32.const	$push146=, 32
	i32.add 	$push147=, $pop510, $pop146
	i32.store	332($pop511), $pop147
	get_local	$push513=, 0
	get_local	$push512=, 0
	i32.const	$push148=, 320
	i32.add 	$push149=, $pop512, $pop148
	i32.store	328($pop513), $pop149
	get_local	$push514=, 0
	i32.const	$push176=, -1
	i32.store	324($pop514), $pop176
	i32.const	$push175=, 0
	i32.const	$push174=, 0
	i32.store	_ZL9freeLists+112($pop175), $pop174
	get_local	$push516=, 0
	get_local	$push515=, 0
	i32.load	$push28=, 320($pop515)
	i32.store	24($pop516), $pop28
	get_local	$push517=, 0
	i32.const	$push173=, 0
	i32.store	304($pop517), $pop173
	get_local	$push519=, 0
	get_local	$push518=, 0
	i32.const	$push150=, 24
	i32.add 	$push151=, $pop518, $pop150
	i32.store	316($pop519), $pop151
	get_local	$push521=, 0
	get_local	$push520=, 0
	i32.const	$push152=, 304
	i32.add 	$push153=, $pop520, $pop152
	i32.store	312($pop521), $pop153
	get_local	$push522=, 0
	i32.const	$push172=, -1
	i32.store	308($pop522), $pop172
	i32.const	$push171=, 0
	i32.const	$push170=, 0
	i32.store	_ZL9freeLists+116($pop171), $pop170
	get_local	$push524=, 0
	get_local	$push523=, 0
	i32.load	$push29=, 304($pop523)
	i32.store	16($pop524), $pop29
	get_local	$push525=, 0
	i32.const	$push169=, 0
	i32.store	288($pop525), $pop169
	get_local	$push527=, 0
	get_local	$push526=, 0
	i32.const	$push154=, 16
	i32.add 	$push155=, $pop526, $pop154
	i32.store	300($pop527), $pop155
	get_local	$push529=, 0
	get_local	$push528=, 0
	i32.const	$push156=, 288
	i32.add 	$push157=, $pop528, $pop156
	i32.store	296($pop529), $pop157
	get_local	$push530=, 0
	i32.const	$push168=, -1
	i32.store	292($pop530), $pop168
	i32.const	$push167=, 0
	i32.const	$push166=, 0
	i32.store	_ZL9freeLists+120($pop167), $pop166
	get_local	$push532=, 0
	get_local	$push531=, 0
	i32.load	$push30=, 288($pop531)
	i32.store	8($pop532), $pop30
	get_local	$push533=, 0
	i32.const	$push165=, 0
	i32.store	272($pop533), $pop165
	get_local	$push535=, 0
	get_local	$push534=, 0
	i32.const	$push158=, 8
	i32.add 	$push159=, $pop534, $pop158
	i32.store	284($pop535), $pop159
	get_local	$push537=, 0
	get_local	$push536=, 0
	i32.const	$push160=, 272
	i32.add 	$push161=, $pop536, $pop160
	i32.store	280($pop537), $pop161
	get_local	$push538=, 0
	i32.const	$push164=, -1
	i32.store	276($pop538), $pop164
	get_local	$push540=, 0
	get_local	$push539=, 0
	i32.load	$push31=, 272($pop539)
	i32.store	0($pop540), $pop31
	i32.const	$push163=, 0
	i32.const	$push162=, 0
	i32.store	_ZL9freeLists+124($pop163), $pop162
	get_local	$push542=, 0
	get_local	$push541=, 0
	i32.store	268($pop542), $pop541
	get_local	$push543=, 0
	i32.const	$push34=, 768
	i32.add 	$push35=, $pop543, $pop34
	set_global	__stack_pointer, $pop35
                                        # fallthrough-return
	end_function
.Lfunc_end2:
	.size	__cxx_global_var_init.2, .Lfunc_end2-__cxx_global_var_init.2
                                        # -- End function
	.section	.text._Z31emmalloc_blank_slate_from_orbitv,"",@
	.weak	_Z31emmalloc_blank_slate_from_orbitv # -- Begin function _Z31emmalloc_blank_slate_from_orbitv
	.type	_Z31emmalloc_blank_slate_from_orbitv,@function
_Z31emmalloc_blank_slate_from_orbitv:   # @_Z31emmalloc_blank_slate_from_orbitv
	.local  	i32
# %bb.0:
	get_global	$push30=, __stack_pointer
	i32.const	$push31=, 80
	i32.sub 	$push39=, $pop30, $pop31
	tee_local	$push38=, 0, $pop39
	i32.const	$push0=, 0
	i32.store	28($pop38), $pop0
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                # label1:
	get_local	$push45=, 0
	i32.load	$push2=, 28($pop45)
	i32.const	$push3=, 32
	i32.ge_u	$push1=, $pop2, $pop3
	br_if   	1, $pop1        # 1: down to label0
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	get_local	$push47=, 0
	get_local	$push46=, 0
	i32.const	$push33=, 32
	i32.add 	$push26=, $pop46, $pop33
	i32.store	40($pop47), $pop26
	get_local	$push48=, 0
	i32.const	$push25=, 4294967295
	i32.store	36($pop48), $pop25
	get_local	$push49=, 0
	i32.load	$push24=, 40($pop49)
	i32.const	$push16=, 0
	i32.store	0($pop24), $pop16
	get_local	$push51=, 0
	get_local	$push50=, 0
	i32.load	$push23=, 32($pop50)
	i32.store	24($pop51), $pop23
	get_local	$push53=, 0
	get_local	$push52=, 0
	i32.const	$push32=, 24
	i32.add 	$push22=, $pop52, $pop32
	i32.store	76($pop53), $pop22
	i32.const	$push17=, _ZL9freeLists
	get_local	$push54=, 0
	i32.load	$push21=, 28($pop54)
	i32.const	$push18=, 2
	i32.shl 	$push19=, $pop21, $pop18
	i32.add 	$push20=, $pop17, $pop19
	i32.const	$push40=, 0
	i32.store	0($pop20), $pop40
# %bb.3:                                #   in Loop: Header=BB3_1 Depth=1
	get_local	$push56=, 0
	get_local	$push55=, 0
	i32.load	$push29=, 28($pop55)
	i32.const	$push27=, 1
	i32.add 	$push28=, $pop29, $pop27
	i32.store	28($pop56), $pop28
	br      	0               # 0: up to label1
.LBB3_4:
	end_loop
	end_block                       # label0:
	get_local	$push58=, 0
	get_local	$push57=, 0
	i32.const	$push37=, 64
	i32.add 	$push15=, $pop57, $pop37
	i32.store	72($pop58), $pop15
	get_local	$push59=, 0
	i32.const	$push9=, 4294967295
	i32.store	68($pop59), $pop9
	get_local	$push60=, 0
	i32.load	$push14=, 72($pop60)
	i32.const	$push5=, 0
	i32.store	0($pop14), $pop5
	get_local	$push62=, 0
	get_local	$push61=, 0
	i32.load	$push13=, 64($pop61)
	i32.store	16($pop62), $pop13
	get_local	$push64=, 0
	get_local	$push63=, 0
	i32.const	$push36=, 16
	i32.add 	$push12=, $pop63, $pop36
	i32.store	60($pop64), $pop12
	i32.const	$push11=, 0
	i32.const	$push44=, 0
	i32.store	_ZL11firstRegion($pop11), $pop44
	get_local	$push66=, 0
	get_local	$push65=, 0
	i32.const	$push35=, 48
	i32.add 	$push10=, $pop65, $pop35
	i32.store	56($pop66), $pop10
	get_local	$push67=, 0
	i32.const	$push43=, 4294967295
	i32.store	52($pop67), $pop43
	get_local	$push68=, 0
	i32.load	$push8=, 56($pop68)
	i32.const	$push42=, 0
	i32.store	0($pop8), $pop42
	get_local	$push70=, 0
	get_local	$push69=, 0
	i32.load	$push7=, 48($pop69)
	i32.store	8($pop70), $pop7
	get_local	$push72=, 0
	get_local	$push71=, 0
	i32.const	$push34=, 8
	i32.add 	$push6=, $pop71, $pop34
	i32.store	44($pop72), $pop6
	i32.const	$push4=, 0
	i32.const	$push41=, 0
	i32.store	_ZL10lastRegion($pop4), $pop41
                                        # fallthrough-return
	end_function
.Lfunc_end3:
	.size	_Z31emmalloc_blank_slate_from_orbitv, .Lfunc_end3-_Z31emmalloc_blank_slate_from_orbitv
                                        # -- End function
	.section	.text.malloc,"",@
	.weak	malloc                  # -- Begin function malloc
	.type	malloc,@function
malloc:                                 # @malloc
	.param  	i32
	.result 	i32
	.local  	i32
# %bb.0:
	get_global	$push2=, __stack_pointer
	i32.const	$push3=, 16
	i32.sub 	$push7=, $pop2, $pop3
	tee_local	$push6=, 1, $pop7
	set_global	__stack_pointer, $pop6
	get_local	$push9=, 1
	get_local	$push8=, 0
	i32.store	12($pop9), $pop8
	get_local	$push11=, 1
	get_local	$push10=, 1
	i32.load	$push1=, 12($pop10)
	i32.call	$push0=, _ZL15emmalloc_mallocj@FUNCTION, $pop1
	i32.store	8($pop11), $pop0
	get_local	$push13=, 1
	i32.load	$push12=, 8($pop13)
	set_local	0, $pop12
	get_local	$push14=, 1
	i32.const	$push4=, 16
	i32.add 	$push5=, $pop14, $pop4
	set_global	__stack_pointer, $pop5
	get_local	$push15=, 0
                                        # fallthrough-return: $pop15
	end_function
.Lfunc_end4:
	.size	malloc, .Lfunc_end4-malloc
                                        # -- End function
	.section	.text._ZL15emmalloc_mallocj,"",@
	.type	_ZL15emmalloc_mallocj,@function # -- Begin function _ZL15emmalloc_mallocj
_ZL15emmalloc_mallocj:                  # @_ZL15emmalloc_mallocj
	.param  	i32
	.result 	i32
	.local  	i32
# %bb.0:
	get_global	$push34=, __stack_pointer
	i32.const	$push35=, 64
	i32.sub 	$push43=, $pop34, $pop35
	tee_local	$push42=, 1, $pop43
	set_global	__stack_pointer, $pop42
	get_local	$push47=, 1
	get_local	$push46=, 0
	i32.store	24($pop47), $pop46
	block   	
	block   	
	get_local	$push48=, 1
	i32.load	$push0=, 24($pop48)
	br_if   	0, $pop0        # 0: down to label3
# %bb.1:
	get_local	$push50=, 1
	get_local	$push49=, 1
	i32.const	$push39=, 32
	i32.add 	$push33=, $pop49, $pop39
	i32.store	40($pop50), $pop33
	get_local	$push51=, 1
	i32.const	$push32=, 4294967295
	i32.store	36($pop51), $pop32
	get_local	$push52=, 1
	i32.load	$push31=, 40($pop52)
	i32.const	$push28=, 0
	i32.store	0($pop31), $pop28
	get_local	$push54=, 1
	get_local	$push53=, 1
	i32.load	$push30=, 32($pop53)
	i32.store	16($pop54), $pop30
	get_local	$push56=, 1
	get_local	$push55=, 1
	i32.const	$push38=, 16
	i32.add 	$push29=, $pop55, $pop38
	i32.store	44($pop56), $pop29
	get_local	$push57=, 1
	i32.const	$push44=, 0
	i32.store	28($pop57), $pop44
	br      	1               # 1: down to label2
.LBB5_2:
	end_block                       # label3:
	get_local	$push59=, 1
	get_local	$push58=, 1
	i32.load	$push5=, 24($pop58)
	i32.call	$push4=, _ZL15tryFromFreeListj@FUNCTION, $pop5
	i32.store	12($pop59), $pop4
	block   	
	get_local	$push60=, 1
	i32.load	$push2=, 12($pop60)
	i32.const	$push3=, 0
	i32.ne  	$push1=, $pop2, $pop3
	br_if   	0, $pop1        # 0: down to label4
# %bb.3:
	get_local	$push62=, 1
	get_local	$push61=, 1
	i32.load	$push10=, 24($pop61)
	i32.call	$push9=, _ZL13newAllocationj@FUNCTION, $pop10
	i32.store	12($pop62), $pop9
	block   	
	get_local	$push63=, 1
	i32.load	$push7=, 12($pop63)
	i32.const	$push8=, 0
	i32.ne  	$push6=, $pop7, $pop8
	br_if   	0, $pop6        # 0: down to label5
# %bb.4:
	get_local	$push65=, 1
	get_local	$push64=, 1
	i32.const	$push41=, 48
	i32.add 	$push16=, $pop64, $pop41
	i32.store	56($pop65), $pop16
	get_local	$push66=, 1
	i32.const	$push15=, 4294967295
	i32.store	52($pop66), $pop15
	get_local	$push67=, 1
	i32.load	$push14=, 56($pop67)
	i32.const	$push11=, 0
	i32.store	0($pop14), $pop11
	get_local	$push69=, 1
	get_local	$push68=, 1
	i32.load	$push13=, 48($pop68)
	i32.store	8($pop69), $pop13
	get_local	$push71=, 1
	get_local	$push70=, 1
	i32.const	$push40=, 8
	i32.add 	$push12=, $pop70, $pop40
	i32.store	60($pop71), $pop12
	get_local	$push72=, 1
	i32.const	$push45=, 0
	i32.store	28($pop72), $pop45
	br      	2               # 2: down to label2
.LBB5_5:
	end_block                       # label5:
.LBB5_6:
	end_block                       # label4:
	block   	
	get_local	$push73=, 1
	i32.load	$push21=, 12($pop73)
	i32.call	$push18=, _ZL8getAfterP6Region@FUNCTION, $pop21
	i32.const	$push20=, 0
	i32.call	$push19=, sbrk@FUNCTION, $pop20
	i32.le_u	$push17=, $pop18, $pop19
	br_if   	0, $pop17       # 0: down to label6
# %bb.7:
	i32.const	$push22=, .L.str
	i32.const	$push23=, .L.str.3
	i32.const	$push24=, 823
	i32.const	$push25=, .L__func__._ZL15emmalloc_mallocj
	call    	__assert_fail@FUNCTION, $pop22, $pop23, $pop24, $pop25
	unreachable
.LBB5_8:
	end_block                       # label6:
	get_local	$push75=, 1
	get_local	$push74=, 1
	i32.load	$push27=, 12($pop74)
	i32.call	$push26=, _ZL10getPayloadP6Region@FUNCTION, $pop27
	i32.store	28($pop75), $pop26
.LBB5_9:
	end_block                       # label2:
	get_local	$push77=, 1
	i32.load	$push76=, 28($pop77)
	set_local	0, $pop76
	get_local	$push78=, 1
	i32.const	$push36=, 64
	i32.add 	$push37=, $pop78, $pop36
	set_global	__stack_pointer, $pop37
	get_local	$push79=, 0
                                        # fallthrough-return: $pop79
	end_function
.Lfunc_end5:
	.size	_ZL15emmalloc_mallocj, .Lfunc_end5-_ZL15emmalloc_mallocj
                                        # -- End function
	.section	.text.free,"",@
	.weak	free                    # -- Begin function free
	.type	free,@function
free:                                   # @free
	.param  	i32
	.local  	i32
# %bb.0:
	get_global	$push1=, __stack_pointer
	i32.const	$push2=, 16
	i32.sub 	$push6=, $pop1, $pop2
	tee_local	$push5=, 1, $pop6
	set_global	__stack_pointer, $pop5
	get_local	$push8=, 1
	get_local	$push7=, 0
	i32.store	12($pop8), $pop7
	get_local	$push9=, 1
	i32.load	$push0=, 12($pop9)
	call    	_ZL13emmalloc_freePv@FUNCTION, $pop0
	get_local	$push10=, 1
	i32.const	$push3=, 16
	i32.add 	$push4=, $pop10, $pop3
	set_global	__stack_pointer, $pop4
                                        # fallthrough-return
	end_function
.Lfunc_end6:
	.size	free, .Lfunc_end6-free
                                        # -- End function
	.section	.text._ZL13emmalloc_freePv,"",@
	.type	_ZL13emmalloc_freePv,@function # -- Begin function _ZL13emmalloc_freePv
_ZL13emmalloc_freePv:                   # @_ZL13emmalloc_freePv
	.param  	i32
	.local  	i32
# %bb.0:
	get_global	$push9=, __stack_pointer
	i32.const	$push10=, 32
	i32.sub 	$push17=, $pop9, $pop10
	tee_local	$push16=, 1, $pop17
	set_global	__stack_pointer, $pop16
	get_local	$push19=, 1
	get_local	$push18=, 0
	i32.store	12($pop19), $pop18
	get_local	$push21=, 1
	i32.load	$push20=, 12($pop21)
	set_local	0, $pop20
	get_local	$push23=, 1
	get_local	$push22=, 1
	i32.const	$push14=, 16
	i32.add 	$push6=, $pop22, $pop14
	i32.store	24($pop23), $pop6
	get_local	$push24=, 1
	i32.const	$push5=, 4294967295
	i32.store	20($pop24), $pop5
	get_local	$push25=, 1
	i32.load	$push4=, 24($pop25)
	i32.const	$push1=, 0
	i32.store	0($pop4), $pop1
	get_local	$push27=, 1
	get_local	$push26=, 1
	i32.load	$push3=, 16($pop26)
	i32.store	8($pop27), $pop3
	get_local	$push29=, 1
	get_local	$push28=, 1
	i32.const	$push13=, 8
	i32.add 	$push2=, $pop28, $pop13
	i32.store	28($pop29), $pop2
	block   	
	block   	
	get_local	$push30=, 0
	i32.const	$push15=, 0
	i32.ne  	$push0=, $pop30, $pop15
	br_if   	0, $pop0        # 0: down to label8
# %bb.1:
	br      	1               # 1: down to label7
.LBB7_2:
	end_block                       # label8:
	get_local	$push31=, 1
	i32.load	$push8=, 12($pop31)
	i32.call	$push7=, _ZL11fromPayloadPv@FUNCTION, $pop8
	call    	_ZL9stopUsingP6Region@FUNCTION, $pop7
.LBB7_3:
	end_block                       # label7:
	get_local	$push32=, 1
	i32.const	$push11=, 32
	i32.add 	$push12=, $pop32, $pop11
	set_global	__stack_pointer, $pop12
                                        # fallthrough-return
	end_function
.Lfunc_end7:
	.size	_ZL13emmalloc_freePv, .Lfunc_end7-_ZL13emmalloc_freePv
                                        # -- End function
	.section	.text.calloc,"",@
	.weak	calloc                  # -- Begin function calloc
	.type	calloc,@function
calloc:                                 # @calloc
	.param  	i32, i32
	.result 	i32
	.local  	i32
# %bb.0:
	get_global	$push3=, __stack_pointer
	i32.const	$push4=, 16
	i32.sub 	$push8=, $pop3, $pop4
	tee_local	$push7=, 2, $pop8
	set_global	__stack_pointer, $pop7
	get_local	$push10=, 2
	get_local	$push9=, 0
	i32.store	12($pop10), $pop9
	get_local	$push12=, 2
	get_local	$push11=, 1
	i32.store	8($pop12), $pop11
	get_local	$push15=, 2
	get_local	$push13=, 2
	i32.load	$push2=, 12($pop13)
	get_local	$push14=, 2
	i32.load	$push1=, 8($pop14)
	i32.call	$push0=, _ZL15emmalloc_callocjj@FUNCTION, $pop2, $pop1
	i32.store	4($pop15), $pop0
	get_local	$push17=, 2
	i32.load	$push16=, 4($pop17)
	set_local	1, $pop16
	get_local	$push18=, 2
	i32.const	$push5=, 16
	i32.add 	$push6=, $pop18, $pop5
	set_global	__stack_pointer, $pop6
	get_local	$push19=, 1
                                        # fallthrough-return: $pop19
	end_function
.Lfunc_end8:
	.size	calloc, .Lfunc_end8-calloc
                                        # -- End function
	.section	.text._ZL15emmalloc_callocjj,"",@
	.type	_ZL15emmalloc_callocjj,@function # -- Begin function _ZL15emmalloc_callocjj
_ZL15emmalloc_callocjj:                 # @_ZL15emmalloc_callocjj
	.param  	i32, i32
	.result 	i32
	.local  	i32
# %bb.0:
	get_global	$push19=, __stack_pointer
	i32.const	$push20=, 48
	i32.sub 	$push26=, $pop19, $pop20
	tee_local	$push25=, 2, $pop26
	set_global	__stack_pointer, $pop25
	get_local	$push29=, 2
	get_local	$push28=, 0
	i32.store	24($pop29), $pop28
	get_local	$push31=, 2
	get_local	$push30=, 1
	i32.store	20($pop31), $pop30
	get_local	$push34=, 2
	get_local	$push32=, 2
	i32.load	$push6=, 24($pop32)
	get_local	$push33=, 2
	i32.load	$push5=, 20($pop33)
	i32.mul 	$push4=, $pop6, $pop5
	i32.call	$push3=, _ZL15emmalloc_mallocj@FUNCTION, $pop4
	i32.store	16($pop34), $pop3
	block   	
	block   	
	get_local	$push35=, 2
	i32.load	$push1=, 16($pop35)
	i32.const	$push2=, 0
	i32.ne  	$push0=, $pop1, $pop2
	br_if   	0, $pop0        # 0: down to label10
# %bb.1:
	get_local	$push37=, 2
	get_local	$push36=, 2
	i32.const	$push24=, 32
	i32.add 	$push12=, $pop36, $pop24
	i32.store	40($pop37), $pop12
	get_local	$push38=, 2
	i32.const	$push11=, 4294967295
	i32.store	36($pop38), $pop11
	get_local	$push39=, 2
	i32.load	$push10=, 40($pop39)
	i32.const	$push7=, 0
	i32.store	0($pop10), $pop7
	get_local	$push41=, 2
	get_local	$push40=, 2
	i32.load	$push9=, 32($pop40)
	i32.store	8($pop41), $pop9
	get_local	$push43=, 2
	get_local	$push42=, 2
	i32.const	$push23=, 8
	i32.add 	$push8=, $pop42, $pop23
	i32.store	44($pop43), $pop8
	get_local	$push44=, 2
	i32.const	$push27=, 0
	i32.store	28($pop44), $pop27
	br      	1               # 1: down to label9
.LBB9_2:
	end_block                       # label10:
	get_local	$push45=, 2
	i32.load	$push18=, 16($pop45)
	i32.const	$push14=, 0
	get_local	$push46=, 2
	i32.load	$push17=, 24($pop46)
	get_local	$push47=, 2
	i32.load	$push16=, 20($pop47)
	i32.mul 	$push15=, $pop17, $pop16
	i32.call	$push48=, memset@FUNCTION, $pop18, $pop14, $pop15
	drop	$pop48
	get_local	$push50=, 2
	get_local	$push49=, 2
	i32.load	$push13=, 16($pop49)
	i32.store	28($pop50), $pop13
.LBB9_3:
	end_block                       # label9:
	get_local	$push52=, 2
	i32.load	$push51=, 28($pop52)
	set_local	1, $pop51
	get_local	$push53=, 2
	i32.const	$push21=, 48
	i32.add 	$push22=, $pop53, $pop21
	set_global	__stack_pointer, $pop22
	get_local	$push54=, 1
                                        # fallthrough-return: $pop54
	end_function
.Lfunc_end9:
	.size	_ZL15emmalloc_callocjj, .Lfunc_end9-_ZL15emmalloc_callocjj
                                        # -- End function
	.section	.text.realloc,"",@
	.weak	realloc                 # -- Begin function realloc
	.type	realloc,@function
realloc:                                # @realloc
	.param  	i32, i32
	.result 	i32
	.local  	i32
# %bb.0:
	get_global	$push3=, __stack_pointer
	i32.const	$push4=, 16
	i32.sub 	$push8=, $pop3, $pop4
	tee_local	$push7=, 2, $pop8
	set_global	__stack_pointer, $pop7
	get_local	$push10=, 2
	get_local	$push9=, 0
	i32.store	12($pop10), $pop9
	get_local	$push12=, 2
	get_local	$push11=, 1
	i32.store	8($pop12), $pop11
	get_local	$push15=, 2
	get_local	$push13=, 2
	i32.load	$push2=, 12($pop13)
	get_local	$push14=, 2
	i32.load	$push1=, 8($pop14)
	i32.call	$push0=, _ZL16emmalloc_reallocPvj@FUNCTION, $pop2, $pop1
	i32.store	4($pop15), $pop0
	get_local	$push17=, 2
	i32.load	$push16=, 4($pop17)
	set_local	1, $pop16
	get_local	$push18=, 2
	i32.const	$push5=, 16
	i32.add 	$push6=, $pop18, $pop5
	set_global	__stack_pointer, $pop6
	get_local	$push19=, 1
                                        # fallthrough-return: $pop19
	end_function
.Lfunc_end10:
	.size	realloc, .Lfunc_end10-realloc
                                        # -- End function
	.section	.text._ZL16emmalloc_reallocPvj,"",@
	.type	_ZL16emmalloc_reallocPvj,@function # -- Begin function _ZL16emmalloc_reallocPvj
_ZL16emmalloc_reallocPvj:               # @_ZL16emmalloc_reallocPvj
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32
# %bb.0:
	get_global	$push99=, __stack_pointer
	i32.const	$push100=, 64
	i32.sub 	$push107=, $pop99, $pop100
	tee_local	$push106=, 2, $pop107
	set_global	__stack_pointer, $pop106
	get_local	$push111=, 2
	get_local	$push110=, 0
	i32.store	24($pop111), $pop110
	get_local	$push113=, 2
	get_local	$push112=, 1
	i32.store	20($pop113), $pop112
	block   	
	block   	
	get_local	$push114=, 2
	i32.load	$push1=, 24($pop114)
	i32.const	$push2=, 0
	i32.ne  	$push0=, $pop1, $pop2
	br_if   	0, $pop0        # 0: down to label12
# %bb.1:
	get_local	$push116=, 2
	get_local	$push115=, 2
	i32.load	$push4=, 20($pop115)
	i32.call	$push3=, _ZL15emmalloc_mallocj@FUNCTION, $pop4
	i32.store	28($pop116), $pop3
	br      	1               # 1: down to label11
.LBB11_2:
	end_block                       # label12:
	block   	
	get_local	$push117=, 2
	i32.load	$push5=, 20($pop117)
	br_if   	0, $pop5        # 0: down to label13
# %bb.3:
	get_local	$push118=, 2
	i32.load	$push12=, 24($pop118)
	call    	_ZL13emmalloc_freePv@FUNCTION, $pop12
	get_local	$push120=, 2
	get_local	$push119=, 2
	i32.const	$push105=, 32
	i32.add 	$push11=, $pop119, $pop105
	i32.store	40($pop120), $pop11
	get_local	$push121=, 2
	i32.const	$push10=, 4294967295
	i32.store	36($pop121), $pop10
	get_local	$push122=, 2
	i32.load	$push9=, 40($pop122)
	i32.const	$push6=, 0
	i32.store	0($pop9), $pop6
	get_local	$push124=, 2
	get_local	$push123=, 2
	i32.load	$push8=, 32($pop123)
	i32.store	16($pop124), $pop8
	get_local	$push126=, 2
	get_local	$push125=, 2
	i32.const	$push104=, 16
	i32.add 	$push7=, $pop125, $pop104
	i32.store	44($pop126), $pop7
	get_local	$push127=, 2
	i32.const	$push108=, 0
	i32.store	28($pop127), $pop108
	br      	1               # 1: down to label11
.LBB11_4:
	end_block                       # label13:
	get_local	$push129=, 2
	get_local	$push128=, 2
	i32.load	$push16=, 24($pop128)
	i32.call	$push15=, _ZL11fromPayloadPv@FUNCTION, $pop16
	i32.store	12($pop129), $pop15
	block   	
	get_local	$push130=, 2
	i32.load	$push14=, 12($pop130)
	i32.call	$push13=, _ZN6Region7getUsedEv@FUNCTION, $pop14
	br_if   	0, $pop13       # 0: down to label14
# %bb.5:
	i32.const	$push17=, .L.str.16
	i32.const	$push18=, .L.str.3
	i32.const	$push19=, 848
	i32.const	$push20=, .L__func__._ZL16emmalloc_reallocPvj
	call    	__assert_fail@FUNCTION, $pop17, $pop18, $pop19, $pop20
	unreachable
.LBB11_6:
	end_block                       # label14:
	block   	
	get_local	$push131=, 2
	i32.load	$push22=, 20($pop131)
	get_local	$push132=, 2
	i32.load	$push24=, 12($pop132)
	i32.call	$push23=, _ZL13getMaxPayloadP6Region@FUNCTION, $pop24
	i32.gt_u	$push21=, $pop22, $pop23
	br_if   	0, $pop21       # 0: down to label15
# %bb.7:
	get_local	$push133=, 2
	i32.load	$push98=, 12($pop133)
	i32.const	$push97=, 1
	call    	_ZN6Region7setUsedEj@FUNCTION, $pop98, $pop97
	get_local	$push134=, 2
	i32.load	$push96=, 12($pop134)
	get_local	$push135=, 2
	i32.load	$push95=, 20($pop135)
	call    	_ZL22possiblySplitRemainderP6Regionj@FUNCTION, $pop96, $pop95
	get_local	$push137=, 2
	get_local	$push136=, 2
	i32.load	$push94=, 24($pop136)
	i32.store	28($pop137), $pop94
	br      	1               # 1: down to label11
.LBB11_8:
	end_block                       # label15:
	get_local	$push139=, 2
	get_local	$push138=, 2
	i32.load	$push29=, 12($pop138)
	i32.call	$push28=, _ZN6Region4nextEv@FUNCTION, $pop29
	i32.store	8($pop139), $pop28
	block   	
	get_local	$push140=, 2
	i32.load	$push26=, 8($pop140)
	i32.const	$push27=, 0
	i32.eq  	$push25=, $pop26, $pop27
	br_if   	0, $pop25       # 0: down to label16
# %bb.9:
	get_local	$push141=, 2
	i32.load	$push31=, 8($pop141)
	i32.call	$push30=, _ZN6Region7getUsedEv@FUNCTION, $pop31
	br_if   	0, $pop30       # 0: down to label16
# %bb.10:
	get_local	$push142=, 2
	i32.load	$push39=, 8($pop142)
	call    	_ZL18removeFromFreeListP6Region@FUNCTION, $pop39
	get_local	$push143=, 2
	i32.load	$push38=, 12($pop143)
	get_local	$push144=, 2
	i32.load	$push37=, 8($pop144)
	i32.call	$push36=, _ZN6Region12getTotalSizeEv@FUNCTION, $pop37
	call    	_ZN6Region12incTotalSizeEj@FUNCTION, $pop38, $pop36
	block   	
	block   	
	get_local	$push145=, 2
	i32.load	$push33=, 8($pop145)
	i32.const	$push35=, 0
	i32.load	$push34=, _ZL10lastRegion($pop35)
	i32.eq  	$push32=, $pop33, $pop34
	br_if   	0, $pop32       # 0: down to label18
# %bb.11:
	get_local	$push147=, 2
	i32.load	$push146=, 12($pop147)
	set_local	1, $pop146
	get_local	$push148=, 2
	i32.load	$push44=, 8($pop148)
	i32.call	$push43=, _ZN6Region4nextEv@FUNCTION, $pop44
	i32.call	$push42=, _ZN6Region4prevEv@FUNCTION, $pop43
	get_local	$push149=, 1
	i32.store	0($pop42), $pop149
	br      	1               # 1: down to label17
.LBB11_12:
	end_block                       # label18:
	i32.const	$push40=, 0
	get_local	$push150=, 2
	i32.load	$push41=, 12($pop150)
	i32.store	_ZL10lastRegion($pop40), $pop41
.LBB11_13:
	end_block                       # label17:
.LBB11_14:
	end_block                       # label16:
	block   	
	get_local	$push151=, 2
	i32.load	$push46=, 20($pop151)
	get_local	$push152=, 2
	i32.load	$push48=, 12($pop152)
	i32.call	$push47=, _ZL13getMaxPayloadP6Region@FUNCTION, $pop48
	i32.gt_u	$push45=, $pop46, $pop47
	br_if   	0, $pop45       # 0: down to label19
# %bb.15:
	get_local	$push153=, 2
	i32.load	$push93=, 12($pop153)
	i32.const	$push92=, 1
	call    	_ZN6Region7setUsedEj@FUNCTION, $pop93, $pop92
	get_local	$push154=, 2
	i32.load	$push91=, 12($pop154)
	get_local	$push155=, 2
	i32.load	$push90=, 20($pop155)
	call    	_ZL22possiblySplitRemainderP6Regionj@FUNCTION, $pop91, $pop90
	get_local	$push157=, 2
	get_local	$push156=, 2
	i32.load	$push89=, 24($pop156)
	i32.store	28($pop157), $pop89
	br      	1               # 1: down to label11
.LBB11_16:
	end_block                       # label19:
	get_local	$push159=, 2
	get_local	$push158=, 2
	i32.load	$push53=, 20($pop158)
	i32.call	$push52=, _ZL15tryFromFreeListj@FUNCTION, $pop53
	i32.store	4($pop159), $pop52
	block   	
	get_local	$push160=, 2
	i32.load	$push50=, 4($pop160)
	i32.const	$push51=, 0
	i32.ne  	$push49=, $pop50, $pop51
	br_if   	0, $pop49       # 0: down to label20
# %bb.17:
	get_local	$push161=, 2
	i32.load	$push55=, 12($pop161)
	i32.const	$push57=, 0
	i32.load	$push56=, _ZL10lastRegion($pop57)
	i32.ne  	$push54=, $pop55, $pop56
	br_if   	0, $pop54       # 0: down to label20
# %bb.18:
	block   	
	get_local	$push162=, 2
	i32.load	$push59=, 20($pop162)
	i32.call	$push58=, _ZL16extendLastRegionj@FUNCTION, $pop59
	i32.eqz 	$push200=, $pop58
	br_if   	0, $pop200      # 0: down to label21
# %bb.19:
	block   	
	get_local	$push163=, 2
	i32.load	$push61=, 4($pop163)
	i32.const	$push62=, 0
	i32.eq  	$push60=, $pop61, $pop62
	br_if   	0, $pop60       # 0: down to label22
# %bb.20:
	get_local	$push164=, 2
	i32.load	$push63=, 4($pop164)
	call    	_ZL9stopUsingP6Region@FUNCTION, $pop63
.LBB11_21:
	end_block                       # label22:
	get_local	$push166=, 2
	get_local	$push165=, 2
	i32.load	$push64=, 24($pop165)
	i32.store	28($pop166), $pop64
	br      	2               # 2: down to label11
.LBB11_22:
	end_block                       # label21:
# %bb.23:
.LBB11_24:
	end_block                       # label20:
	block   	
	get_local	$push167=, 2
	i32.load	$push66=, 4($pop167)
	i32.const	$push67=, 0
	i32.ne  	$push65=, $pop66, $pop67
	br_if   	0, $pop65       # 0: down to label23
# %bb.25:
	get_local	$push169=, 2
	get_local	$push168=, 2
	i32.load	$push72=, 20($pop168)
	i32.call	$push71=, _ZL13newAllocationj@FUNCTION, $pop72
	i32.store	4($pop169), $pop71
	block   	
	get_local	$push170=, 2
	i32.load	$push69=, 4($pop170)
	i32.const	$push70=, 0
	i32.ne  	$push68=, $pop69, $pop70
	br_if   	0, $pop68       # 0: down to label24
# %bb.26:
	get_local	$push172=, 2
	get_local	$push171=, 2
	i32.const	$push103=, 48
	i32.add 	$push78=, $pop171, $pop103
	i32.store	56($pop172), $pop78
	get_local	$push173=, 2
	i32.const	$push77=, 4294967295
	i32.store	52($pop173), $pop77
	get_local	$push174=, 2
	i32.load	$push76=, 56($pop174)
	i32.const	$push73=, 0
	i32.store	0($pop76), $pop73
	get_local	$push176=, 2
	get_local	$push175=, 2
	i32.load	$push75=, 48($pop175)
	i32.store	0($pop176), $pop75
	get_local	$push177=, 2
	get_local	$push74=, 2
	i32.store	60($pop177), $pop74
	get_local	$push178=, 2
	i32.const	$push109=, 0
	i32.store	28($pop178), $pop109
	br      	2               # 2: down to label11
.LBB11_27:
	end_block                       # label24:
.LBB11_28:
	end_block                       # label23:
	get_local	$push179=, 2
	i32.load	$push84=, 4($pop179)
	i32.call	$push180=, _ZL10getPayloadP6Region@FUNCTION, $pop84
	set_local	1, $pop180
	get_local	$push181=, 2
	i32.load	$push83=, 12($pop181)
	i32.call	$push182=, _ZL10getPayloadP6Region@FUNCTION, $pop83
	set_local	0, $pop182
	block   	
	block   	
	get_local	$push183=, 2
	i32.load	$push80=, 20($pop183)
	get_local	$push184=, 2
	i32.load	$push82=, 12($pop184)
	i32.call	$push81=, _ZL13getMaxPayloadP6Region@FUNCTION, $pop82
	i32.ge_u	$push79=, $pop80, $pop81
	br_if   	0, $pop79       # 0: down to label26
# %bb.29:
	get_local	$push186=, 2
	i32.load	$push185=, 20($pop186)
	set_local	3, $pop185
	br      	1               # 1: down to label25
.LBB11_30:
	end_block                       # label26:
	get_local	$push187=, 2
	i32.load	$push85=, 12($pop187)
	i32.call	$push188=, _ZL13getMaxPayloadP6Region@FUNCTION, $pop85
	set_local	3, $pop188
.LBB11_31:
	end_block                       # label25:
	get_local	$push192=, 1
	get_local	$push191=, 0
	get_local	$push190=, 3
	i32.call	$push189=, memcpy@FUNCTION, $pop192, $pop191, $pop190
	drop	$pop189
	get_local	$push193=, 2
	i32.load	$push88=, 12($pop193)
	call    	_ZL9stopUsingP6Region@FUNCTION, $pop88
	get_local	$push195=, 2
	get_local	$push194=, 2
	i32.load	$push87=, 4($pop194)
	i32.call	$push86=, _ZL10getPayloadP6Region@FUNCTION, $pop87
	i32.store	28($pop195), $pop86
.LBB11_32:
	end_block                       # label11:
	get_local	$push197=, 2
	i32.load	$push196=, 28($pop197)
	set_local	1, $pop196
	get_local	$push198=, 2
	i32.const	$push101=, 64
	i32.add 	$push102=, $pop198, $pop101
	set_global	__stack_pointer, $pop102
	get_local	$push199=, 1
                                        # fallthrough-return: $pop199
	end_function
.Lfunc_end11:
	.size	_ZL16emmalloc_reallocPvj, .Lfunc_end11-_ZL16emmalloc_reallocPvj
                                        # -- End function
	.section	.text.posix_memalign,"",@
	.weak	posix_memalign          # -- Begin function posix_memalign
	.type	posix_memalign,@function
posix_memalign:                         # @posix_memalign
	.param  	i32, i32, i32
	.result 	i32
	.local  	i32
# %bb.0:
	get_global	$push4=, __stack_pointer
	i32.const	$push5=, 16
	i32.sub 	$push9=, $pop4, $pop5
	tee_local	$push8=, 3, $pop9
	set_global	__stack_pointer, $pop8
	get_local	$push11=, 3
	get_local	$push10=, 0
	i32.store	12($pop11), $pop10
	get_local	$push13=, 3
	get_local	$push12=, 1
	i32.store	8($pop13), $pop12
	get_local	$push15=, 3
	get_local	$push14=, 2
	i32.store	4($pop15), $pop14
	get_local	$push19=, 3
	get_local	$push16=, 3
	i32.load	$push3=, 12($pop16)
	get_local	$push17=, 3
	i32.load	$push2=, 8($pop17)
	get_local	$push18=, 3
	i32.load	$push1=, 4($pop18)
	i32.call	$push0=, _ZL23emmalloc_posix_memalignPPvjj@FUNCTION, $pop3, $pop2, $pop1
	i32.store	0($pop19), $pop0
	get_local	$push21=, 3
	i32.load	$push20=, 0($pop21)
	set_local	2, $pop20
	get_local	$push22=, 3
	i32.const	$push6=, 16
	i32.add 	$push7=, $pop22, $pop6
	set_global	__stack_pointer, $pop7
	get_local	$push23=, 2
                                        # fallthrough-return: $pop23
	end_function
.Lfunc_end12:
	.size	posix_memalign, .Lfunc_end12-posix_memalign
                                        # -- End function
	.section	.text._ZL23emmalloc_posix_memalignPPvjj,"",@
	.type	_ZL23emmalloc_posix_memalignPPvjj,@function # -- Begin function _ZL23emmalloc_posix_memalignPPvjj
_ZL23emmalloc_posix_memalignPPvjj:      # @_ZL23emmalloc_posix_memalignPPvjj
	.param  	i32, i32, i32
	.result 	i32
	.local  	i32
# %bb.0:
	get_global	$push30=, __stack_pointer
	i32.const	$push31=, 48
	i32.sub 	$push38=, $pop30, $pop31
	tee_local	$push37=, 3, $pop38
	set_global	__stack_pointer, $pop37
	get_local	$push40=, 3
	get_local	$push39=, 0
	i32.store	24($pop40), $pop39
	get_local	$push42=, 3
	get_local	$push41=, 1
	i32.store	20($pop42), $pop41
	get_local	$push44=, 3
	get_local	$push43=, 2
	i32.store	16($pop44), $pop43
	get_local	$push46=, 3
	get_local	$push45=, 3
	i32.const	$push35=, 32
	i32.add 	$push10=, $pop45, $pop35
	i32.store	40($pop46), $pop10
	get_local	$push47=, 3
	i32.const	$push9=, 4294967295
	i32.store	36($pop47), $pop9
	get_local	$push48=, 3
	i32.load	$push8=, 40($pop48)
	i32.const	$push4=, 0
	i32.store	0($pop8), $pop4
	get_local	$push50=, 3
	get_local	$push49=, 3
	i32.load	$push7=, 32($pop49)
	i32.store	8($pop50), $pop7
	get_local	$push52=, 3
	get_local	$push51=, 3
	i32.const	$push34=, 8
	i32.add 	$push6=, $pop51, $pop34
	i32.store	44($pop52), $pop6
	get_local	$push53=, 3
	i32.load	$push5=, 24($pop53)
	i32.const	$push36=, 0
	i32.store	0($pop5), $pop36
	block   	
	block   	
	block   	
	get_local	$push54=, 3
	i32.load	$push3=, 20($pop54)
	i32.call	$push2=, _ZL10isPowerOf2j@FUNCTION, $pop3
	i32.const	$push0=, 1
	i32.and 	$push1=, $pop2, $pop0
	i32.eqz 	$push76=, $pop1
	br_if   	0, $pop76       # 0: down to label29
# %bb.1:
	get_local	$push55=, 3
	i32.load	$push12=, 20($pop55)
	i32.call	$push11=, _ZL17isMultipleOfSizeTj@FUNCTION, $pop12
	br_if   	1, $pop11       # 1: down to label28
.LBB13_2:
	end_block                       # label29:
	get_local	$push56=, 3
	i32.const	$push13=, 22
	i32.store	28($pop56), $pop13
	br      	1               # 1: down to label27
.LBB13_3:
	end_block                       # label28:
	block   	
	get_local	$push57=, 3
	i32.load	$push14=, 16($pop57)
	br_if   	0, $pop14       # 0: down to label30
# %bb.4:
	get_local	$push58=, 3
	i32.const	$push29=, 0
	i32.store	28($pop58), $pop29
	br      	1               # 1: down to label27
.LBB13_5:
	end_block                       # label30:
	block   	
	block   	
	get_local	$push59=, 3
	i32.load	$push16=, 20($pop59)
	i32.const	$push17=, 8
	i32.gt_u	$push15=, $pop16, $pop17
	br_if   	0, $pop15       # 0: down to label32
# %bb.6:
	get_local	$push60=, 3
	i32.load	$push22=, 16($pop60)
	i32.call	$push61=, _ZL15emmalloc_mallocj@FUNCTION, $pop22
	set_local	2, $pop61
	get_local	$push62=, 3
	i32.load	$push21=, 24($pop62)
	get_local	$push63=, 2
	i32.store	0($pop21), $pop63
	br      	1               # 1: down to label31
.LBB13_7:
	end_block                       # label32:
	get_local	$push64=, 3
	i32.load	$push20=, 16($pop64)
	get_local	$push65=, 3
	i32.load	$push19=, 20($pop65)
	i32.call	$push66=, _ZL17alignedAllocationjj@FUNCTION, $pop20, $pop19
	set_local	2, $pop66
	get_local	$push67=, 3
	i32.load	$push18=, 24($pop67)
	get_local	$push68=, 2
	i32.store	0($pop18), $pop68
.LBB13_8:
	end_block                       # label31:
	block   	
	get_local	$push69=, 3
	i32.load	$push26=, 24($pop69)
	i32.load	$push24=, 0($pop26)
	i32.const	$push25=, 0
	i32.ne  	$push23=, $pop24, $pop25
	br_if   	0, $pop23       # 0: down to label33
# %bb.9:
	get_local	$push70=, 3
	i32.const	$push27=, 12
	i32.store	28($pop70), $pop27
	br      	1               # 1: down to label27
.LBB13_10:
	end_block                       # label33:
	get_local	$push71=, 3
	i32.const	$push28=, 0
	i32.store	28($pop71), $pop28
.LBB13_11:
	end_block                       # label27:
	get_local	$push73=, 3
	i32.load	$push72=, 28($pop73)
	set_local	2, $pop72
	get_local	$push74=, 3
	i32.const	$push32=, 48
	i32.add 	$push33=, $pop74, $pop32
	set_global	__stack_pointer, $pop33
	get_local	$push75=, 2
                                        # fallthrough-return: $pop75
	end_function
.Lfunc_end13:
	.size	_ZL23emmalloc_posix_memalignPPvjj, .Lfunc_end13-_ZL23emmalloc_posix_memalignPPvjj
                                        # -- End function
	.section	.text.memalign,"",@
	.weak	memalign                # -- Begin function memalign
	.type	memalign,@function
memalign:                               # @memalign
	.param  	i32, i32
	.result 	i32
	.local  	i32
# %bb.0:
	get_global	$push3=, __stack_pointer
	i32.const	$push4=, 16
	i32.sub 	$push8=, $pop3, $pop4
	tee_local	$push7=, 2, $pop8
	set_global	__stack_pointer, $pop7
	get_local	$push10=, 2
	get_local	$push9=, 0
	i32.store	12($pop10), $pop9
	get_local	$push12=, 2
	get_local	$push11=, 1
	i32.store	8($pop12), $pop11
	get_local	$push15=, 2
	get_local	$push13=, 2
	i32.load	$push2=, 12($pop13)
	get_local	$push14=, 2
	i32.load	$push1=, 8($pop14)
	i32.call	$push0=, _ZL17emmalloc_memalignjj@FUNCTION, $pop2, $pop1
	i32.store	4($pop15), $pop0
	get_local	$push17=, 2
	i32.load	$push16=, 4($pop17)
	set_local	1, $pop16
	get_local	$push18=, 2
	i32.const	$push5=, 16
	i32.add 	$push6=, $pop18, $pop5
	set_global	__stack_pointer, $pop6
	get_local	$push19=, 1
                                        # fallthrough-return: $pop19
	end_function
.Lfunc_end14:
	.size	memalign, .Lfunc_end14-memalign
                                        # -- End function
	.section	.text._ZL17emmalloc_memalignjj,"",@
	.type	_ZL17emmalloc_memalignjj,@function # -- Begin function _ZL17emmalloc_memalignjj
_ZL17emmalloc_memalignjj:               # @_ZL17emmalloc_memalignjj
	.param  	i32, i32
	.result 	i32
	.local  	i32
# %bb.0:
	get_global	$push11=, __stack_pointer
	i32.const	$push12=, 48
	i32.sub 	$push19=, $pop11, $pop12
	tee_local	$push18=, 2, $pop19
	set_global	__stack_pointer, $pop18
	get_local	$push22=, 2
	get_local	$push21=, 0
	i32.store	24($pop22), $pop21
	get_local	$push24=, 2
	get_local	$push23=, 1
	i32.store	20($pop24), $pop23
	block   	
	block   	
	get_local	$push25=, 2
	i32.const	$push15=, 16
	i32.add 	$push1=, $pop25, $pop15
	get_local	$push26=, 2
	i32.load	$push3=, 24($pop26)
	get_local	$push27=, 2
	i32.load	$push2=, 20($pop27)
	i32.call	$push0=, _ZL23emmalloc_posix_memalignPPvjj@FUNCTION, $pop1, $pop3, $pop2
	i32.eqz 	$push43=, $pop0
	br_if   	0, $pop43       # 0: down to label35
# %bb.1:
	get_local	$push29=, 2
	get_local	$push28=, 2
	i32.const	$push17=, 32
	i32.add 	$push10=, $pop28, $pop17
	i32.store	40($pop29), $pop10
	get_local	$push30=, 2
	i32.const	$push9=, 4294967295
	i32.store	36($pop30), $pop9
	get_local	$push31=, 2
	i32.load	$push8=, 40($pop31)
	i32.const	$push5=, 0
	i32.store	0($pop8), $pop5
	get_local	$push33=, 2
	get_local	$push32=, 2
	i32.load	$push7=, 32($pop32)
	i32.store	8($pop33), $pop7
	get_local	$push35=, 2
	get_local	$push34=, 2
	i32.const	$push16=, 8
	i32.add 	$push6=, $pop34, $pop16
	i32.store	44($pop35), $pop6
	get_local	$push36=, 2
	i32.const	$push20=, 0
	i32.store	28($pop36), $pop20
	br      	1               # 1: down to label34
.LBB15_2:
	end_block                       # label35:
	get_local	$push38=, 2
	get_local	$push37=, 2
	i32.load	$push4=, 16($pop37)
	i32.store	28($pop38), $pop4
.LBB15_3:
	end_block                       # label34:
	get_local	$push40=, 2
	i32.load	$push39=, 28($pop40)
	set_local	1, $pop39
	get_local	$push41=, 2
	i32.const	$push13=, 48
	i32.add 	$push14=, $pop41, $pop13
	set_global	__stack_pointer, $pop14
	get_local	$push42=, 1
                                        # fallthrough-return: $pop42
	end_function
.Lfunc_end15:
	.size	_ZL17emmalloc_memalignjj, .Lfunc_end15-_ZL17emmalloc_memalignjj
                                        # -- End function
	.section	.text.mallinfo,"",@
	.weak	mallinfo                # -- Begin function mallinfo
	.type	mallinfo,@function
mallinfo:                               # @mallinfo
	.param  	i32
# %bb.0:
	get_local	$push0=, 0
	call    	_ZL17emmalloc_mallinfov@FUNCTION, $pop0
                                        # fallthrough-return
	end_function
.Lfunc_end16:
	.size	mallinfo, .Lfunc_end16-mallinfo
                                        # -- End function
	.section	.text._ZL17emmalloc_mallinfov,"",@
	.type	_ZL17emmalloc_mallinfov,@function # -- Begin function _ZL17emmalloc_mallinfov
_ZL17emmalloc_mallinfov:                # @_ZL17emmalloc_mallinfov
	.param  	i32
	.local  	i32
# %bb.0:
	get_global	$push29=, __stack_pointer
	i32.const	$push30=, 16
	i32.sub 	$push44=, $pop29, $pop30
	tee_local	$push43=, 1, $pop44
	set_global	__stack_pointer, $pop43
	get_local	$push45=, 0
	i32.const	$push2=, 0
	i32.store	0($pop45), $pop2
	get_local	$push46=, 0
	i32.const	$push42=, 0
	i32.store	4($pop46), $pop42
	get_local	$push47=, 0
	i32.const	$push41=, 0
	i32.store	8($pop47), $pop41
	get_local	$push48=, 0
	i32.const	$push40=, 0
	i32.store	12($pop48), $pop40
	get_local	$push49=, 0
	i32.const	$push39=, 0
	i32.store	16($pop49), $pop39
	get_local	$push50=, 0
	i32.const	$push38=, 0
	i32.store	20($pop50), $pop38
	get_local	$push51=, 0
	i32.const	$push37=, 0
	i32.store	24($pop51), $pop37
	get_local	$push52=, 0
	i32.const	$push36=, 0
	i32.store	28($pop52), $pop36
	get_local	$push53=, 0
	i32.const	$push35=, 0
	i32.store	4($pop53), $pop35
	get_local	$push54=, 0
	i32.const	$push34=, 0
	i32.store	36($pop54), $pop34
	block   	
	i32.const	$push3=, 0
	i32.load	$push1=, _ZL11firstRegion($pop3)
	i32.const	$push33=, 0
	i32.eq  	$push0=, $pop1, $pop33
	br_if   	0, $pop0        # 0: down to label36
# %bb.1:
	get_local	$push55=, 0
	i32.const	$push10=, 0
	i32.call	$push9=, sbrk@FUNCTION, $pop10
	i32.const	$push7=, 0
	i32.load	$push8=, _ZL11firstRegion($pop7)
	i32.sub 	$push6=, $pop9, $pop8
	i32.store	0($pop55), $pop6
	get_local	$push56=, 1
	i32.const	$push4=, 0
	i32.load	$push5=, _ZL11firstRegion($pop4)
	i32.store	12($pop56), $pop5
.LBB17_2:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                # label38:
	get_local	$push57=, 1
	i32.load	$push12=, 12($pop57)
	i32.const	$push13=, 0
	i32.eq  	$push11=, $pop12, $pop13
	br_if   	1, $pop11       # 1: down to label37
# %bb.3:                                #   in Loop: Header=BB17_2 Depth=1
	block   	
	block   	
	get_local	$push58=, 1
	i32.load	$push15=, 12($pop58)
	i32.call	$push14=, _ZN6Region7getUsedEv@FUNCTION, $pop15
	i32.eqz 	$push70=, $pop14
	br_if   	0, $pop70       # 0: down to label40
# %bb.4:                                #   in Loop: Header=BB17_2 Depth=1
	get_local	$push61=, 0
	get_local	$push59=, 1
	i32.load	$push26=, 12($pop59)
	i32.call	$push25=, _ZL13getMaxPayloadP6Region@FUNCTION, $pop26
	get_local	$push60=, 0
	i32.load	$push24=, 28($pop60)
	i32.add 	$push23=, $pop25, $pop24
	i32.store	28($pop61), $pop23
	br      	1               # 1: down to label39
.LBB17_5:                               #   in Loop: Header=BB17_2 Depth=1
	end_block                       # label40:
	get_local	$push64=, 0
	get_local	$push62=, 1
	i32.load	$push22=, 12($pop62)
	i32.call	$push21=, _ZL13getMaxPayloadP6Region@FUNCTION, $pop22
	get_local	$push63=, 0
	i32.load	$push20=, 32($pop63)
	i32.add 	$push19=, $pop21, $pop20
	i32.store	32($pop64), $pop19
	get_local	$push66=, 0
	get_local	$push65=, 0
	i32.load	$push18=, 4($pop65)
	i32.const	$push16=, 1
	i32.add 	$push17=, $pop18, $pop16
	i32.store	4($pop66), $pop17
.LBB17_6:                               #   in Loop: Header=BB17_2 Depth=1
	end_block                       # label39:
	get_local	$push68=, 1
	get_local	$push67=, 1
	i32.load	$push28=, 12($pop67)
	i32.call	$push27=, _ZN6Region4nextEv@FUNCTION, $pop28
	i32.store	12($pop68), $pop27
	br      	0               # 0: up to label38
.LBB17_7:
	end_loop
	end_block                       # label37:
.LBB17_8:
	end_block                       # label36:
	get_local	$push69=, 1
	i32.const	$push31=, 16
	i32.add 	$push32=, $pop69, $pop31
	set_global	__stack_pointer, $pop32
                                        # fallthrough-return
	end_function
.Lfunc_end17:
	.size	_ZL17emmalloc_mallinfov, .Lfunc_end17-_ZL17emmalloc_mallinfov
                                        # -- End function
	.section	.text._ZL15tryFromFreeListj,"",@
	.type	_ZL15tryFromFreeListj,@function # -- Begin function _ZL15tryFromFreeListj
_ZL15tryFromFreeListj:                  # @_ZL15tryFromFreeListj
	.param  	i32
	.result 	i32
	.local  	i32
# %bb.0:
	get_global	$push64=, __stack_pointer
	i32.const	$push65=, 48
	i32.sub 	$push70=, $pop64, $pop65
	tee_local	$push69=, 1, $pop70
	set_global	__stack_pointer, $pop69
	get_local	$push73=, 1
	get_local	$push72=, 0
	i32.store	24($pop73), $pop72
	get_local	$push75=, 1
	get_local	$push74=, 1
	i32.load	$push4=, 24($pop74)
	i32.call	$push3=, _ZL25getBigEnoughFreeListIndexj@FUNCTION, $pop4
	i32.store	20($pop75), $pop3
	block   	
	block   	
	get_local	$push76=, 1
	i32.load	$push1=, 20($pop76)
	i32.const	$push2=, 3
	i32.le_u	$push0=, $pop1, $pop2
	br_if   	0, $pop0        # 0: down to label42
# %bb.1:
	get_local	$push77=, 1
	i32.load	$push6=, 24($pop77)
	get_local	$push78=, 1
	i32.load	$push8=, 20($pop78)
	i32.call	$push7=, _ZL26getMinSizeForFreeListIndexj@FUNCTION, $pop8
	i32.ge_u	$push5=, $pop6, $pop7
	br_if   	0, $pop5        # 0: down to label42
# %bb.2:
	get_local	$push80=, 1
	i32.const	$push11=, _ZL9freeLists
	get_local	$push79=, 1
	i32.load	$push17=, 20($pop79)
	i32.const	$push15=, 1
	i32.sub 	$push16=, $pop17, $pop15
	i32.const	$push12=, 2
	i32.shl 	$push13=, $pop16, $pop12
	i32.add 	$push14=, $pop11, $pop13
	i32.load	$push10=, 0($pop14)
	i32.store	16($pop80), $pop10
	get_local	$push81=, 1
	i32.const	$push9=, 0
	i32.store	12($pop81), $pop9
.LBB18_3:                               # =>This Inner Loop Header: Depth=1
	loop    	                # label43:
	i32.const	$push82=, 0
	set_local	0, $pop82
	block   	
	get_local	$push83=, 1
	i32.load	$push19=, 16($pop83)
	i32.const	$push20=, 0
	i32.eq  	$push18=, $pop19, $pop20
	br_if   	0, $pop18       # 0: down to label44
# %bb.4:                                #   in Loop: Header=BB18_3 Depth=1
	get_local	$push84=, 1
	i32.load	$push21=, 12($pop84)
	i32.const	$push22=, 32
	i32.lt_u	$push85=, $pop21, $pop22
	set_local	0, $pop85
.LBB18_5:                               #   in Loop: Header=BB18_3 Depth=1
	end_block                       # label44:
	block   	
	get_local	$push86=, 0
	i32.const	$push23=, 1
	i32.and 	$push24=, $pop86, $pop23
	i32.eqz 	$push119=, $pop24
	br_if   	0, $pop119      # 0: down to label45
# %bb.6:                                #   in Loop: Header=BB18_3 Depth=1
	get_local	$push88=, 1
	get_local	$push87=, 1
	i32.load	$push54=, 16($pop87)
	i32.call	$push53=, _ZL12fromFreeInfoP8FreeInfo@FUNCTION, $pop54
	i32.store	8($pop88), $pop53
	block   	
	get_local	$push89=, 1
	i32.load	$push52=, 8($pop89)
	i32.call	$push50=, _ZL13getMaxPayloadP6Region@FUNCTION, $pop52
	get_local	$push90=, 1
	i32.load	$push51=, 24($pop90)
	i32.lt_u	$push49=, $pop50, $pop51
	br_if   	0, $pop49       # 0: down to label46
# %bb.7:
	get_local	$push93=, 1
	get_local	$push91=, 1
	i32.load	$push63=, 16($pop91)
	get_local	$push92=, 1
	i32.load	$push62=, 24($pop92)
	i32.call	$push61=, _ZL11useFreeInfoP8FreeInfoj@FUNCTION, $pop63, $pop62
	i32.store	28($pop93), $pop61
	br      	4               # 4: down to label41
.LBB18_8:                               #   in Loop: Header=BB18_3 Depth=1
	end_block                       # label46:
	get_local	$push95=, 1
	get_local	$push94=, 1
	i32.load	$push60=, 16($pop94)
	i32.call	$push59=, _ZN8FreeInfo4nextEv@FUNCTION, $pop60
	i32.load	$push58=, 0($pop59)
	i32.store	16($pop95), $pop58
	get_local	$push97=, 1
	get_local	$push96=, 1
	i32.load	$push57=, 12($pop96)
	i32.const	$push55=, 1
	i32.add 	$push56=, $pop57, $pop55
	i32.store	12($pop97), $pop56
	br      	1               # 1: up to label43
.LBB18_9:
	end_block                       # label45:
	end_loop
.LBB18_10:
	end_block                       # label42:
.LBB18_11:                              # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                # label48:
	get_local	$push98=, 1
	i32.load	$push26=, 20($pop98)
	i32.const	$push27=, 32
	i32.ge_u	$push25=, $pop26, $pop27
	br_if   	1, $pop25       # 1: down to label47
# %bb.12:                               #   in Loop: Header=BB18_11 Depth=1
	get_local	$push100=, 1
	i32.const	$push38=, _ZL9freeLists
	get_local	$push99=, 1
	i32.load	$push42=, 20($pop99)
	i32.const	$push39=, 2
	i32.shl 	$push40=, $pop42, $pop39
	i32.add 	$push41=, $pop38, $pop40
	i32.load	$push37=, 0($pop41)
	i32.store	4($pop100), $pop37
	block   	
	get_local	$push101=, 1
	i32.load	$push35=, 4($pop101)
	i32.const	$push36=, 0
	i32.eq  	$push34=, $pop35, $pop36
	br_if   	0, $pop34       # 0: down to label49
# %bb.13:
	get_local	$push104=, 1
	get_local	$push102=, 1
	i32.load	$push48=, 4($pop102)
	get_local	$push103=, 1
	i32.load	$push47=, 24($pop103)
	i32.call	$push46=, _ZL11useFreeInfoP8FreeInfoj@FUNCTION, $pop48, $pop47
	i32.store	28($pop104), $pop46
	br      	3               # 3: down to label41
.LBB18_14:                              #   in Loop: Header=BB18_11 Depth=1
	end_block                       # label49:
	get_local	$push106=, 1
	get_local	$push105=, 1
	i32.load	$push45=, 20($pop105)
	i32.const	$push43=, 1
	i32.add 	$push44=, $pop45, $pop43
	i32.store	20($pop106), $pop44
	br      	0               # 0: up to label48
.LBB18_15:
	end_loop
	end_block                       # label47:
	get_local	$push108=, 1
	get_local	$push107=, 1
	i32.const	$push68=, 32
	i32.add 	$push33=, $pop107, $pop68
	i32.store	40($pop108), $pop33
	get_local	$push109=, 1
	i32.const	$push32=, 4294967295
	i32.store	36($pop109), $pop32
	get_local	$push110=, 1
	i32.load	$push31=, 40($pop110)
	i32.const	$push28=, 0
	i32.store	0($pop31), $pop28
	get_local	$push112=, 1
	get_local	$push111=, 1
	i32.load	$push30=, 32($pop111)
	i32.store	0($pop112), $pop30
	get_local	$push113=, 1
	get_local	$push29=, 1
	i32.store	44($pop113), $pop29
	get_local	$push114=, 1
	i32.const	$push71=, 0
	i32.store	28($pop114), $pop71
.LBB18_16:
	end_block                       # label41:
	get_local	$push116=, 1
	i32.load	$push115=, 28($pop116)
	set_local	0, $pop115
	get_local	$push117=, 1
	i32.const	$push66=, 48
	i32.add 	$push67=, $pop117, $pop66
	set_global	__stack_pointer, $pop67
	get_local	$push118=, 0
                                        # fallthrough-return: $pop118
	end_function
.Lfunc_end18:
	.size	_ZL15tryFromFreeListj, .Lfunc_end18-_ZL15tryFromFreeListj
                                        # -- End function
	.section	.text._ZL13newAllocationj,"",@
	.type	_ZL13newAllocationj,@function # -- Begin function _ZL13newAllocationj
_ZL13newAllocationj:                    # @_ZL13newAllocationj
	.param  	i32
	.result 	i32
	.local  	i32
# %bb.0:
	get_global	$push33=, __stack_pointer
	i32.const	$push34=, 32
	i32.sub 	$push39=, $pop33, $pop34
	tee_local	$push38=, 1, $pop39
	set_global	__stack_pointer, $pop38
	get_local	$push43=, 1
	get_local	$push42=, 0
	i32.store	8($pop43), $pop42
	block   	
	get_local	$push44=, 1
	i32.load	$push1=, 8($pop44)
	i32.const	$push2=, 0
	i32.gt_u	$push0=, $pop1, $pop2
	br_if   	0, $pop0        # 0: down to label50
# %bb.1:
	i32.const	$push3=, .L.str.4
	i32.const	$push4=, .L.str.3
	i32.const	$push5=, 782
	i32.const	$push6=, .L__func__._ZL13newAllocationj
	call    	__assert_fail@FUNCTION, $pop3, $pop4, $pop5, $pop6
	unreachable
.LBB19_2:
	end_block                       # label50:
	block   	
	block   	
	i32.const	$push10=, 0
	i32.load	$push8=, _ZL10lastRegion($pop10)
	i32.const	$push9=, 0
	i32.eq  	$push7=, $pop8, $pop9
	br_if   	0, $pop7        # 0: down to label52
# %bb.3:
	block   	
	i32.const	$push12=, 0
	i32.load	$push13=, _ZL10lastRegion($pop12)
	i32.call	$push11=, _ZN6Region7getUsedEv@FUNCTION, $pop13
	br_if   	0, $pop11       # 0: down to label53
# %bb.4:
	i32.const	$push19=, 0
	i32.load	$push20=, _ZL10lastRegion($pop19)
	i32.const	$push18=, 1
	call    	_ZN6Region7setUsedEj@FUNCTION, $pop20, $pop18
	i32.const	$push16=, 0
	i32.load	$push17=, _ZL10lastRegion($pop16)
	call    	_ZL18removeFromFreeListP6Region@FUNCTION, $pop17
	block   	
	get_local	$push45=, 1
	i32.load	$push15=, 8($pop45)
	i32.call	$push14=, _ZL16extendLastRegionj@FUNCTION, $pop15
	i32.eqz 	$push61=, $pop14
	br_if   	0, $pop61       # 0: down to label54
# %bb.5:
	get_local	$push46=, 1
	i32.const	$push29=, 0
	i32.load	$push30=, _ZL10lastRegion($pop29)
	i32.store	12($pop46), $pop30
	br      	3               # 3: down to label51
.LBB19_6:
	end_block                       # label54:
	i32.const	$push27=, 0
	i32.load	$push28=, _ZL10lastRegion($pop27)
	i32.const	$push21=, 0
	call    	_ZN6Region7setUsedEj@FUNCTION, $pop28, $pop21
	get_local	$push48=, 1
	get_local	$push47=, 1
	i32.const	$push37=, 16
	i32.add 	$push26=, $pop47, $pop37
	i32.store	24($pop48), $pop26
	get_local	$push49=, 1
	i32.const	$push25=, 4294967295
	i32.store	20($pop49), $pop25
	get_local	$push50=, 1
	i32.load	$push24=, 24($pop50)
	i32.const	$push41=, 0
	i32.store	0($pop24), $pop41
	get_local	$push52=, 1
	get_local	$push51=, 1
	i32.load	$push23=, 16($pop51)
	i32.store	0($pop52), $pop23
	get_local	$push53=, 1
	get_local	$push22=, 1
	i32.store	28($pop53), $pop22
	get_local	$push54=, 1
	i32.const	$push40=, 0
	i32.store	12($pop54), $pop40
	br      	2               # 2: down to label51
.LBB19_7:
	end_block                       # label53:
.LBB19_8:
	end_block                       # label52:
	get_local	$push56=, 1
	get_local	$push55=, 1
	i32.load	$push32=, 8($pop55)
	i32.call	$push31=, _ZL14allocateRegionj@FUNCTION, $pop32
	i32.store	12($pop56), $pop31
.LBB19_9:
	end_block                       # label51:
	get_local	$push58=, 1
	i32.load	$push57=, 12($pop58)
	set_local	0, $pop57
	get_local	$push59=, 1
	i32.const	$push35=, 32
	i32.add 	$push36=, $pop59, $pop35
	set_global	__stack_pointer, $pop36
	get_local	$push60=, 0
                                        # fallthrough-return: $pop60
	end_function
.Lfunc_end19:
	.size	_ZL13newAllocationj, .Lfunc_end19-_ZL13newAllocationj
                                        # -- End function
	.section	.text._ZL8getAfterP6Region,"",@
	.type	_ZL8getAfterP6Region,@function # -- Begin function _ZL8getAfterP6Region
_ZL8getAfterP6Region:                   # @_ZL8getAfterP6Region
	.param  	i32
	.result 	i32
	.local  	i32, i32
# %bb.0:
	get_global	$push2=, __stack_pointer
	i32.const	$push3=, 16
	i32.sub 	$push7=, $pop2, $pop3
	tee_local	$push6=, 1, $pop7
	set_global	__stack_pointer, $pop6
	get_local	$push9=, 1
	get_local	$push8=, 0
	i32.store	12($pop9), $pop8
	get_local	$push11=, 1
	i32.load	$push10=, 12($pop11)
	set_local	0, $pop10
	get_local	$push12=, 1
	i32.load	$push1=, 12($pop12)
	i32.call	$push13=, _ZN6Region12getTotalSizeEv@FUNCTION, $pop1
	set_local	2, $pop13
	get_local	$push14=, 1
	i32.const	$push4=, 16
	i32.add 	$push5=, $pop14, $pop4
	set_global	__stack_pointer, $pop5
	get_local	$push16=, 0
	get_local	$push15=, 2
	i32.add 	$push0=, $pop16, $pop15
                                        # fallthrough-return: $pop0
	end_function
.Lfunc_end20:
	.size	_ZL8getAfterP6Region, .Lfunc_end20-_ZL8getAfterP6Region
                                        # -- End function
	.section	.text._ZL10getPayloadP6Region,"",@
	.type	_ZL10getPayloadP6Region,@function # -- Begin function _ZL10getPayloadP6Region
_ZL10getPayloadP6Region:                # @_ZL10getPayloadP6Region
	.param  	i32
	.result 	i32
	.local  	i32
# %bb.0:
	get_global	$push17=, __stack_pointer
	i32.const	$push18=, 16
	i32.sub 	$push22=, $pop17, $pop18
	tee_local	$push21=, 1, $pop22
	set_global	__stack_pointer, $pop21
	get_local	$push24=, 1
	get_local	$push23=, 0
	i32.store	12($pop24), $pop23
	block   	
	get_local	$push25=, 1
	i32.load	$push5=, 12($pop25)
	i32.call	$push4=, _ZN6Region8freeInfoEv@FUNCTION, $pop5
	get_local	$push26=, 1
	i32.load	$push3=, 12($pop26)
	i32.sub 	$push1=, $pop4, $pop3
	i32.const	$push2=, 8
	i32.eq  	$push0=, $pop1, $pop2
	br_if   	0, $pop0        # 0: down to label55
# %bb.1:
	i32.const	$push6=, .L.str.15
	i32.const	$push7=, .L.str.3
	i32.const	$push8=, 205
	i32.const	$push9=, .L__func__._ZL10getPayloadP6Region
	call    	__assert_fail@FUNCTION, $pop6, $pop7, $pop8, $pop9
	unreachable
.LBB21_2:
	end_block                       # label55:
	block   	
	get_local	$push27=, 1
	i32.load	$push11=, 12($pop27)
	i32.call	$push10=, _ZN6Region7getUsedEv@FUNCTION, $pop11
	br_if   	0, $pop10       # 0: down to label56
# %bb.3:
	i32.const	$push12=, .L.str.16
	i32.const	$push13=, .L.str.3
	i32.const	$push14=, 206
	i32.const	$push15=, .L__func__._ZL10getPayloadP6Region
	call    	__assert_fail@FUNCTION, $pop12, $pop13, $pop14, $pop15
	unreachable
.LBB21_4:
	end_block                       # label56:
	get_local	$push28=, 1
	i32.load	$push16=, 12($pop28)
	i32.call	$push29=, _ZN6Region7payloadEv@FUNCTION, $pop16
	set_local	0, $pop29
	get_local	$push30=, 1
	i32.const	$push19=, 16
	i32.add 	$push20=, $pop30, $pop19
	set_global	__stack_pointer, $pop20
	get_local	$push31=, 0
                                        # fallthrough-return: $pop31
	end_function
.Lfunc_end21:
	.size	_ZL10getPayloadP6Region, .Lfunc_end21-_ZL10getPayloadP6Region
                                        # -- End function
	.section	.text._ZL25getBigEnoughFreeListIndexj,"",@
	.type	_ZL25getBigEnoughFreeListIndexj,@function # -- Begin function _ZL25getBigEnoughFreeListIndexj
_ZL25getBigEnoughFreeListIndexj:        # @_ZL25getBigEnoughFreeListIndexj
	.param  	i32
	.result 	i32
	.local  	i32
# %bb.0:
	get_global	$push16=, __stack_pointer
	i32.const	$push17=, 16
	i32.sub 	$push21=, $pop16, $pop17
	tee_local	$push20=, 1, $pop21
	set_global	__stack_pointer, $pop20
	get_local	$push23=, 1
	get_local	$push22=, 0
	i32.store	12($pop23), $pop22
	block   	
	get_local	$push24=, 1
	i32.load	$push1=, 12($pop24)
	i32.const	$push2=, 0
	i32.gt_u	$push0=, $pop1, $pop2
	br_if   	0, $pop0        # 0: down to label57
# %bb.1:
	i32.const	$push3=, .L.str.4
	i32.const	$push4=, .L.str.3
	i32.const	$push5=, 274
	i32.const	$push6=, .L__func__._ZL25getBigEnoughFreeListIndexj
	call    	__assert_fail@FUNCTION, $pop3, $pop4, $pop5, $pop6
	unreachable
.LBB22_2:
	end_block                       # label57:
	get_local	$push26=, 1
	get_local	$push25=, 1
	i32.load	$push12=, 12($pop25)
	i32.call	$push11=, _ZL16getFreeListIndexj@FUNCTION, $pop12
	i32.store	8($pop26), $pop11
	block   	
	get_local	$push27=, 1
	i32.load	$push10=, 12($pop27)
	i32.call	$push9=, _ZL10isPowerOf2j@FUNCTION, $pop10
	i32.const	$push7=, 1
	i32.and 	$push8=, $pop9, $pop7
	br_if   	0, $pop8        # 0: down to label58
# %bb.3:
	get_local	$push29=, 1
	get_local	$push28=, 1
	i32.load	$push15=, 8($pop28)
	i32.const	$push13=, 1
	i32.add 	$push14=, $pop15, $pop13
	i32.store	8($pop29), $pop14
.LBB22_4:
	end_block                       # label58:
	get_local	$push31=, 1
	i32.load	$push30=, 8($pop31)
	set_local	0, $pop30
	get_local	$push32=, 1
	i32.const	$push18=, 16
	i32.add 	$push19=, $pop32, $pop18
	set_global	__stack_pointer, $pop19
	get_local	$push33=, 0
                                        # fallthrough-return: $pop33
	end_function
.Lfunc_end22:
	.size	_ZL25getBigEnoughFreeListIndexj, .Lfunc_end22-_ZL25getBigEnoughFreeListIndexj
                                        # -- End function
	.section	.text._ZL26getMinSizeForFreeListIndexj,"",@
	.type	_ZL26getMinSizeForFreeListIndexj,@function # -- Begin function _ZL26getMinSizeForFreeListIndexj
_ZL26getMinSizeForFreeListIndexj:       # @_ZL26getMinSizeForFreeListIndexj
	.param  	i32
	.result 	i32
	.local  	i32
# %bb.0:
	get_global	$push3=, __stack_pointer
	i32.const	$push4=, 16
	i32.sub 	$push6=, $pop3, $pop4
	tee_local	$push5=, 1, $pop6
	get_local	$push7=, 0
	i32.store	12($pop5), $pop7
	i32.const	$push0=, 1
	get_local	$push8=, 1
	i32.load	$push2=, 12($pop8)
	i32.shl 	$push1=, $pop0, $pop2
                                        # fallthrough-return: $pop1
	end_function
.Lfunc_end23:
	.size	_ZL26getMinSizeForFreeListIndexj, .Lfunc_end23-_ZL26getMinSizeForFreeListIndexj
                                        # -- End function
	.section	.text._ZL12fromFreeInfoP8FreeInfo,"",@
	.type	_ZL12fromFreeInfoP8FreeInfo,@function # -- Begin function _ZL12fromFreeInfoP8FreeInfo
_ZL12fromFreeInfoP8FreeInfo:            # @_ZL12fromFreeInfoP8FreeInfo
	.param  	i32
	.result 	i32
	.local  	i32
# %bb.0:
	get_global	$push3=, __stack_pointer
	i32.const	$push4=, 16
	i32.sub 	$push6=, $pop3, $pop4
	tee_local	$push5=, 1, $pop6
	get_local	$push7=, 0
	i32.store	12($pop5), $pop7
	get_local	$push8=, 1
	i32.load	$push2=, 12($pop8)
	i32.const	$push0=, -8
	i32.add 	$push1=, $pop2, $pop0
                                        # fallthrough-return: $pop1
	end_function
.Lfunc_end24:
	.size	_ZL12fromFreeInfoP8FreeInfo, .Lfunc_end24-_ZL12fromFreeInfoP8FreeInfo
                                        # -- End function
	.section	.text._ZL13getMaxPayloadP6Region,"",@
	.type	_ZL13getMaxPayloadP6Region,@function # -- Begin function _ZL13getMaxPayloadP6Region
_ZL13getMaxPayloadP6Region:             # @_ZL13getMaxPayloadP6Region
	.param  	i32
	.result 	i32
	.local  	i32
# %bb.0:
	get_global	$push3=, __stack_pointer
	i32.const	$push4=, 16
	i32.sub 	$push8=, $pop3, $pop4
	tee_local	$push7=, 1, $pop8
	set_global	__stack_pointer, $pop7
	get_local	$push10=, 1
	get_local	$push9=, 0
	i32.store	12($pop10), $pop9
	get_local	$push11=, 1
	i32.load	$push2=, 12($pop11)
	i32.call	$push12=, _ZN6Region12getTotalSizeEv@FUNCTION, $pop2
	set_local	0, $pop12
	get_local	$push13=, 1
	i32.const	$push5=, 16
	i32.add 	$push6=, $pop13, $pop5
	set_global	__stack_pointer, $pop6
	get_local	$push14=, 0
	i32.const	$push0=, 8
	i32.sub 	$push1=, $pop14, $pop0
                                        # fallthrough-return: $pop1
	end_function
.Lfunc_end25:
	.size	_ZL13getMaxPayloadP6Region, .Lfunc_end25-_ZL13getMaxPayloadP6Region
                                        # -- End function
	.section	.text._ZL11useFreeInfoP8FreeInfoj,"",@
	.type	_ZL11useFreeInfoP8FreeInfoj,@function # -- Begin function _ZL11useFreeInfoP8FreeInfoj
_ZL11useFreeInfoP8FreeInfoj:            # @_ZL11useFreeInfoP8FreeInfoj
	.param  	i32, i32
	.result 	i32
	.local  	i32
# %bb.0:
	get_global	$push5=, __stack_pointer
	i32.const	$push6=, 16
	i32.sub 	$push10=, $pop5, $pop6
	tee_local	$push9=, 2, $pop10
	set_global	__stack_pointer, $pop9
	get_local	$push12=, 2
	get_local	$push11=, 0
	i32.store	12($pop12), $pop11
	get_local	$push14=, 2
	get_local	$push13=, 1
	i32.store	8($pop14), $pop13
	get_local	$push16=, 2
	get_local	$push15=, 2
	i32.load	$push4=, 12($pop15)
	i32.call	$push3=, _ZL12fromFreeInfoP8FreeInfo@FUNCTION, $pop4
	i32.store	4($pop16), $pop3
	get_local	$push17=, 2
	i32.load	$push2=, 4($pop17)
	call    	_ZL18removeFromFreeListP6Region@FUNCTION, $pop2
	get_local	$push18=, 2
	i32.load	$push1=, 4($pop18)
	get_local	$push19=, 2
	i32.load	$push0=, 8($pop19)
	call    	_ZL9useRegionP6Regionj@FUNCTION, $pop1, $pop0
	get_local	$push21=, 2
	i32.load	$push20=, 4($pop21)
	set_local	1, $pop20
	get_local	$push22=, 2
	i32.const	$push7=, 16
	i32.add 	$push8=, $pop22, $pop7
	set_global	__stack_pointer, $pop8
	get_local	$push23=, 1
                                        # fallthrough-return: $pop23
	end_function
.Lfunc_end26:
	.size	_ZL11useFreeInfoP8FreeInfoj, .Lfunc_end26-_ZL11useFreeInfoP8FreeInfoj
                                        # -- End function
	.section	.text._ZN8FreeInfo4nextEv,"",@
	.hidden	_ZN8FreeInfo4nextEv     # -- Begin function _ZN8FreeInfo4nextEv
	.weak	_ZN8FreeInfo4nextEv
	.type	_ZN8FreeInfo4nextEv,@function
_ZN8FreeInfo4nextEv:                    # @_ZN8FreeInfo4nextEv
	.param  	i32
	.result 	i32
	.local  	i32
# %bb.0:
	get_global	$push3=, __stack_pointer
	i32.const	$push4=, 16
	i32.sub 	$push6=, $pop3, $pop4
	tee_local	$push5=, 1, $pop6
	get_local	$push7=, 0
	i32.store	12($pop5), $pop7
	get_local	$push8=, 1
	i32.load	$push2=, 12($pop8)
	i32.const	$push0=, 4
	i32.add 	$push1=, $pop2, $pop0
                                        # fallthrough-return: $pop1
	end_function
.Lfunc_end27:
	.size	_ZN8FreeInfo4nextEv, .Lfunc_end27-_ZN8FreeInfo4nextEv
                                        # -- End function
	.section	.text._ZL16getFreeListIndexj,"",@
	.type	_ZL16getFreeListIndexj,@function # -- Begin function _ZL16getFreeListIndexj
_ZL16getFreeListIndexj:                 # @_ZL16getFreeListIndexj
	.param  	i32
	.result 	i32
	.local  	i32
# %bb.0:
	get_global	$push23=, __stack_pointer
	i32.const	$push24=, 16
	i32.sub 	$push28=, $pop23, $pop24
	tee_local	$push27=, 1, $pop28
	set_global	__stack_pointer, $pop27
	get_local	$push30=, 1
	get_local	$push29=, 0
	i32.store	12($pop30), $pop29
	block   	
	get_local	$push31=, 1
	i32.load	$push1=, 12($pop31)
	i32.const	$push2=, 0
	i32.gt_u	$push0=, $pop1, $pop2
	br_if   	0, $pop0        # 0: down to label59
# %bb.1:
	i32.const	$push3=, .L.str.4
	i32.const	$push4=, .L.str.3
	i32.const	$push5=, 258
	i32.const	$push6=, .L__func__._ZL16getFreeListIndexj
	call    	__assert_fail@FUNCTION, $pop3, $pop4, $pop5, $pop6
	unreachable
.LBB28_2:
	end_block                       # label59:
	block   	
	get_local	$push32=, 1
	i32.load	$push8=, 12($pop32)
	i32.const	$push9=, 8
	i32.ge_u	$push7=, $pop8, $pop9
	br_if   	0, $pop7        # 0: down to label60
# %bb.3:
	get_local	$push33=, 1
	i32.const	$push10=, 8
	i32.store	12($pop33), $pop10
.LBB28_4:
	end_block                       # label60:
	get_local	$push35=, 1
	get_local	$push34=, 1
	i32.load	$push15=, 12($pop34)
	i32.call	$push14=, _ZL18lowerBoundPowerOf2j@FUNCTION, $pop15
	i32.store	8($pop35), $pop14
	block   	
	block   	
	i32.const	$push12=, 3
	get_local	$push36=, 1
	i32.load	$push13=, 8($pop36)
	i32.gt_u	$push11=, $pop12, $pop13
	br_if   	0, $pop11       # 0: down to label62
# %bb.5:
	get_local	$push37=, 1
	i32.load	$push17=, 8($pop37)
	i32.const	$push18=, 32
	i32.lt_u	$push16=, $pop17, $pop18
	br_if   	1, $pop16       # 1: down to label61
.LBB28_6:
	end_block                       # label62:
	i32.const	$push19=, .L.str.5
	i32.const	$push20=, .L.str.3
	i32.const	$push21=, 263
	i32.const	$push22=, .L__func__._ZL16getFreeListIndexj
	call    	__assert_fail@FUNCTION, $pop19, $pop20, $pop21, $pop22
	unreachable
.LBB28_7:
	end_block                       # label61:
	get_local	$push39=, 1
	i32.load	$push38=, 8($pop39)
	set_local	0, $pop38
	get_local	$push40=, 1
	i32.const	$push25=, 16
	i32.add 	$push26=, $pop40, $pop25
	set_global	__stack_pointer, $pop26
	get_local	$push41=, 0
                                        # fallthrough-return: $pop41
	end_function
.Lfunc_end28:
	.size	_ZL16getFreeListIndexj, .Lfunc_end28-_ZL16getFreeListIndexj
                                        # -- End function
	.section	.text._ZL10isPowerOf2j,"",@
	.type	_ZL10isPowerOf2j,@function # -- Begin function _ZL10isPowerOf2j
_ZL10isPowerOf2j:                       # @_ZL10isPowerOf2j
	.param  	i32
	.result 	i32
	.local  	i32
# %bb.0:
	get_global	$push4=, __stack_pointer
	i32.const	$push5=, 16
	i32.sub 	$push7=, $pop4, $pop5
	tee_local	$push6=, 1, $pop7
	get_local	$push8=, 0
	i32.store	12($pop6), $pop8
	get_local	$push9=, 1
	i32.load	$push3=, 12($pop9)
	i32.popcnt	$push1=, $pop3
	i32.const	$push2=, 1
	i32.eq  	$push0=, $pop1, $pop2
                                        # fallthrough-return: $pop0
	end_function
.Lfunc_end29:
	.size	_ZL10isPowerOf2j, .Lfunc_end29-_ZL10isPowerOf2j
                                        # -- End function
	.section	.text._ZL18lowerBoundPowerOf2j,"",@
	.type	_ZL18lowerBoundPowerOf2j,@function # -- Begin function _ZL18lowerBoundPowerOf2j
_ZL18lowerBoundPowerOf2j:               # @_ZL18lowerBoundPowerOf2j
	.param  	i32
	.result 	i32
	.local  	i32
# %bb.0:
	get_global	$push7=, __stack_pointer
	i32.const	$push8=, 16
	i32.sub 	$push10=, $pop7, $pop8
	tee_local	$push9=, 1, $pop10
	get_local	$push11=, 0
	i32.store	8($pop9), $pop11
	block   	
	block   	
	get_local	$push12=, 1
	i32.load	$push0=, 8($pop12)
	br_if   	0, $pop0        # 0: down to label64
# %bb.1:
	get_local	$push13=, 1
	i32.const	$push5=, 1
	i32.store	12($pop13), $pop5
	br      	1               # 1: down to label63
.LBB30_2:
	end_block                       # label64:
	get_local	$push15=, 1
	i32.const	$push1=, 31
	get_local	$push14=, 1
	i32.load	$push4=, 8($pop14)
	i32.clz 	$push2=, $pop4
	i32.sub 	$push3=, $pop1, $pop2
	i32.store	12($pop15), $pop3
.LBB30_3:
	end_block                       # label63:
	get_local	$push16=, 1
	i32.load	$push6=, 12($pop16)
                                        # fallthrough-return: $pop6
	end_function
.Lfunc_end30:
	.size	_ZL18lowerBoundPowerOf2j, .Lfunc_end30-_ZL18lowerBoundPowerOf2j
                                        # -- End function
	.section	.text._ZN6Region12getTotalSizeEv,"",@
	.hidden	_ZN6Region12getTotalSizeEv # -- Begin function _ZN6Region12getTotalSizeEv
	.weak	_ZN6Region12getTotalSizeEv
	.type	_ZN6Region12getTotalSizeEv,@function
_ZN6Region12getTotalSizeEv:             # @_ZN6Region12getTotalSizeEv
	.param  	i32
	.result 	i32
	.local  	i32
# %bb.0:
	get_global	$push4=, __stack_pointer
	i32.const	$push5=, 16
	i32.sub 	$push7=, $pop4, $pop5
	tee_local	$push6=, 1, $pop7
	get_local	$push8=, 0
	i32.store	12($pop6), $pop8
	get_local	$push9=, 1
	i32.load	$push3=, 12($pop9)
	i32.load	$push2=, 0($pop3)
	i32.const	$push0=, 1
	i32.shr_u	$push1=, $pop2, $pop0
                                        # fallthrough-return: $pop1
	end_function
.Lfunc_end31:
	.size	_ZN6Region12getTotalSizeEv, .Lfunc_end31-_ZN6Region12getTotalSizeEv
                                        # -- End function
	.section	.text._ZL18removeFromFreeListP6Region,"",@
	.type	_ZL18removeFromFreeListP6Region,@function # -- Begin function _ZL18removeFromFreeListP6Region
_ZL18removeFromFreeListP6Region:        # @_ZL18removeFromFreeListP6Region
	.param  	i32
	.local  	i32
# %bb.0:
	get_global	$push42=, __stack_pointer
	i32.const	$push43=, 16
	i32.sub 	$push47=, $pop42, $pop43
	tee_local	$push46=, 1, $pop47
	set_global	__stack_pointer, $pop46
	get_local	$push49=, 1
	get_local	$push48=, 0
	i32.store	12($pop49), $pop48
	get_local	$push51=, 1
	get_local	$push50=, 1
	i32.load	$push12=, 12($pop50)
	i32.call	$push11=, _ZL13getMaxPayloadP6Region@FUNCTION, $pop12
	i32.call	$push10=, _ZL16getFreeListIndexj@FUNCTION, $pop11
	i32.store	8($pop51), $pop10
	get_local	$push53=, 1
	get_local	$push52=, 1
	i32.load	$push9=, 12($pop52)
	i32.call	$push8=, _ZN6Region8freeInfoEv@FUNCTION, $pop9
	i32.store	4($pop53), $pop8
	block   	
	i32.const	$push3=, _ZL9freeLists
	get_local	$push54=, 1
	i32.load	$push7=, 8($pop54)
	i32.const	$push4=, 2
	i32.shl 	$push5=, $pop7, $pop4
	i32.add 	$push6=, $pop3, $pop5
	i32.load	$push1=, 0($pop6)
	get_local	$push55=, 1
	i32.load	$push2=, 4($pop55)
	i32.ne  	$push0=, $pop1, $pop2
	br_if   	0, $pop0        # 0: down to label65
# %bb.1:
	get_local	$push56=, 1
	i32.load	$push19=, 4($pop56)
	i32.call	$push57=, _ZN8FreeInfo4nextEv@FUNCTION, $pop19
	set_local	0, $pop57
	i32.const	$push13=, _ZL9freeLists
	get_local	$push58=, 1
	i32.load	$push17=, 8($pop58)
	i32.const	$push14=, 2
	i32.shl 	$push15=, $pop17, $pop14
	i32.add 	$push16=, $pop13, $pop15
	get_local	$push59=, 0
	i32.load	$push18=, 0($pop59)
	i32.store	0($pop16), $pop18
.LBB32_2:
	end_block                       # label65:
	block   	
	get_local	$push60=, 1
	i32.load	$push24=, 4($pop60)
	i32.call	$push23=, _ZN8FreeInfo4prevEv@FUNCTION, $pop24
	i32.load	$push21=, 0($pop23)
	i32.const	$push22=, 0
	i32.eq  	$push20=, $pop21, $pop22
	br_if   	0, $pop20       # 0: down to label66
# %bb.3:
	get_local	$push61=, 1
	i32.load	$push30=, 4($pop61)
	i32.call	$push29=, _ZN8FreeInfo4nextEv@FUNCTION, $pop30
	i32.load	$push62=, 0($pop29)
	set_local	0, $pop62
	get_local	$push63=, 1
	i32.load	$push28=, 4($pop63)
	i32.call	$push27=, _ZN8FreeInfo4prevEv@FUNCTION, $pop28
	i32.load	$push26=, 0($pop27)
	i32.call	$push25=, _ZN8FreeInfo4nextEv@FUNCTION, $pop26
	get_local	$push64=, 0
	i32.store	0($pop25), $pop64
.LBB32_4:
	end_block                       # label66:
	block   	
	get_local	$push65=, 1
	i32.load	$push35=, 4($pop65)
	i32.call	$push34=, _ZN8FreeInfo4nextEv@FUNCTION, $pop35
	i32.load	$push32=, 0($pop34)
	i32.const	$push33=, 0
	i32.eq  	$push31=, $pop32, $pop33
	br_if   	0, $pop31       # 0: down to label67
# %bb.5:
	get_local	$push66=, 1
	i32.load	$push41=, 4($pop66)
	i32.call	$push40=, _ZN8FreeInfo4prevEv@FUNCTION, $pop41
	i32.load	$push67=, 0($pop40)
	set_local	0, $pop67
	get_local	$push68=, 1
	i32.load	$push39=, 4($pop68)
	i32.call	$push38=, _ZN8FreeInfo4nextEv@FUNCTION, $pop39
	i32.load	$push37=, 0($pop38)
	i32.call	$push36=, _ZN8FreeInfo4prevEv@FUNCTION, $pop37
	get_local	$push69=, 0
	i32.store	0($pop36), $pop69
.LBB32_6:
	end_block                       # label67:
	get_local	$push70=, 1
	i32.const	$push44=, 16
	i32.add 	$push45=, $pop70, $pop44
	set_global	__stack_pointer, $pop45
                                        # fallthrough-return
	end_function
.Lfunc_end32:
	.size	_ZL18removeFromFreeListP6Region, .Lfunc_end32-_ZL18removeFromFreeListP6Region
                                        # -- End function
	.section	.text._ZL9useRegionP6Regionj,"",@
	.type	_ZL9useRegionP6Regionj,@function # -- Begin function _ZL9useRegionP6Regionj
_ZL9useRegionP6Regionj:                 # @_ZL9useRegionP6Regionj
	.param  	i32, i32
	.local  	i32
# %bb.0:
	get_global	$push11=, __stack_pointer
	i32.const	$push12=, 16
	i32.sub 	$push16=, $pop11, $pop12
	tee_local	$push15=, 2, $pop16
	set_global	__stack_pointer, $pop15
	get_local	$push18=, 2
	get_local	$push17=, 0
	i32.store	12($pop18), $pop17
	get_local	$push20=, 2
	get_local	$push19=, 1
	i32.store	8($pop20), $pop19
	block   	
	get_local	$push21=, 2
	i32.load	$push1=, 8($pop21)
	i32.const	$push2=, 0
	i32.gt_u	$push0=, $pop1, $pop2
	br_if   	0, $pop0        # 0: down to label68
# %bb.1:
	i32.const	$push3=, .L.str.4
	i32.const	$push4=, .L.str.3
	i32.const	$push5=, 489
	i32.const	$push6=, .L__func__._ZL9useRegionP6Regionj
	call    	__assert_fail@FUNCTION, $pop3, $pop4, $pop5, $pop6
	unreachable
.LBB33_2:
	end_block                       # label68:
	get_local	$push22=, 2
	i32.load	$push10=, 12($pop22)
	i32.const	$push9=, 1
	call    	_ZN6Region7setUsedEj@FUNCTION, $pop10, $pop9
	get_local	$push23=, 2
	i32.load	$push8=, 12($pop23)
	get_local	$push24=, 2
	i32.load	$push7=, 8($pop24)
	call    	_ZL22possiblySplitRemainderP6Regionj@FUNCTION, $pop8, $pop7
	get_local	$push25=, 2
	i32.const	$push13=, 16
	i32.add 	$push14=, $pop25, $pop13
	set_global	__stack_pointer, $pop14
                                        # fallthrough-return
	end_function
.Lfunc_end33:
	.size	_ZL9useRegionP6Regionj, .Lfunc_end33-_ZL9useRegionP6Regionj
                                        # -- End function
	.section	.text._ZN6Region8freeInfoEv,"",@
	.hidden	_ZN6Region8freeInfoEv   # -- Begin function _ZN6Region8freeInfoEv
	.weak	_ZN6Region8freeInfoEv
	.type	_ZN6Region8freeInfoEv,@function
_ZN6Region8freeInfoEv:                  # @_ZN6Region8freeInfoEv
	.param  	i32
	.result 	i32
	.local  	i32
# %bb.0:
	get_global	$push3=, __stack_pointer
	i32.const	$push4=, 16
	i32.sub 	$push6=, $pop3, $pop4
	tee_local	$push5=, 1, $pop6
	get_local	$push7=, 0
	i32.store	12($pop5), $pop7
	get_local	$push8=, 1
	i32.load	$push2=, 12($pop8)
	i32.const	$push0=, 8
	i32.add 	$push1=, $pop2, $pop0
                                        # fallthrough-return: $pop1
	end_function
.Lfunc_end34:
	.size	_ZN6Region8freeInfoEv, .Lfunc_end34-_ZN6Region8freeInfoEv
                                        # -- End function
	.section	.text._ZN8FreeInfo4prevEv,"",@
	.hidden	_ZN8FreeInfo4prevEv     # -- Begin function _ZN8FreeInfo4prevEv
	.weak	_ZN8FreeInfo4prevEv
	.type	_ZN8FreeInfo4prevEv,@function
_ZN8FreeInfo4prevEv:                    # @_ZN8FreeInfo4prevEv
	.param  	i32
	.result 	i32
	.local  	i32
# %bb.0:
	get_global	$push1=, __stack_pointer
	i32.const	$push2=, 16
	i32.sub 	$push4=, $pop1, $pop2
	tee_local	$push3=, 1, $pop4
	get_local	$push5=, 0
	i32.store	12($pop3), $pop5
	get_local	$push6=, 1
	i32.load	$push0=, 12($pop6)
                                        # fallthrough-return: $pop0
	end_function
.Lfunc_end35:
	.size	_ZN8FreeInfo4prevEv, .Lfunc_end35-_ZN8FreeInfo4prevEv
                                        # -- End function
	.section	.text._ZN6Region7setUsedEj,"",@
	.hidden	_ZN6Region7setUsedEj    # -- Begin function _ZN6Region7setUsedEj
	.weak	_ZN6Region7setUsedEj
	.type	_ZN6Region7setUsedEj,@function
_ZN6Region7setUsedEj:                   # @_ZN6Region7setUsedEj
	.param  	i32, i32
	.local  	i32
# %bb.0:
	get_global	$push7=, __stack_pointer
	i32.const	$push8=, 16
	i32.sub 	$push12=, $pop7, $pop8
	tee_local	$push11=, 2, $pop12
	get_local	$push13=, 0
	i32.store	12($pop11), $pop13
	get_local	$push15=, 2
	get_local	$push14=, 1
	i32.store	8($pop15), $pop14
	get_local	$push16=, 2
	i32.load	$push10=, 12($pop16)
	tee_local	$push9=, 1, $pop10
	get_local	$push17=, 1
	i32.load	$push5=, 0($pop17)
	i32.const	$push1=, -2
	i32.and 	$push2=, $pop5, $pop1
	get_local	$push18=, 2
	i32.load	$push6=, 8($pop18)
	i32.const	$push3=, 1
	i32.and 	$push4=, $pop6, $pop3
	i32.or  	$push0=, $pop2, $pop4
	i32.store	0($pop9), $pop0
                                        # fallthrough-return
	end_function
.Lfunc_end36:
	.size	_ZN6Region7setUsedEj, .Lfunc_end36-_ZN6Region7setUsedEj
                                        # -- End function
	.section	.text._ZL22possiblySplitRemainderP6Regionj,"",@
	.type	_ZL22possiblySplitRemainderP6Regionj,@function # -- Begin function _ZL22possiblySplitRemainderP6Regionj
_ZL22possiblySplitRemainderP6Regionj:   # @_ZL22possiblySplitRemainderP6Regionj
	.param  	i32, i32
	.local  	i32
# %bb.0:
	get_global	$push74=, __stack_pointer
	i32.const	$push75=, 32
	i32.sub 	$push79=, $pop74, $pop75
	tee_local	$push78=, 2, $pop79
	set_global	__stack_pointer, $pop78
	get_local	$push81=, 2
	get_local	$push80=, 0
	i32.store	28($pop81), $pop80
	get_local	$push83=, 2
	get_local	$push82=, 1
	i32.store	24($pop83), $pop82
	get_local	$push85=, 2
	get_local	$push84=, 2
	i32.load	$push4=, 28($pop84)
	i32.call	$push3=, _ZL13getMaxPayloadP6Region@FUNCTION, $pop4
	i32.store	20($pop85), $pop3
	block   	
	get_local	$push86=, 2
	i32.load	$push1=, 20($pop86)
	get_local	$push87=, 2
	i32.load	$push2=, 24($pop87)
	i32.ge_u	$push0=, $pop1, $pop2
	br_if   	0, $pop0        # 0: down to label69
# %bb.1:
	i32.const	$push5=, .L.str.6
	i32.const	$push6=, .L.str.3
	i32.const	$push7=, 438
	i32.const	$push8=, .L__func__._ZL22possiblySplitRemainderP6Regionj
	call    	__assert_fail@FUNCTION, $pop5, $pop6, $pop7, $pop8
	unreachable
.LBB37_2:
	end_block                       # label69:
	get_local	$push90=, 2
	get_local	$push88=, 2
	i32.load	$push15=, 20($pop88)
	get_local	$push89=, 2
	i32.load	$push14=, 24($pop89)
	i32.sub 	$push13=, $pop15, $pop14
	i32.store	16($pop90), $pop13
	block   	
	block   	
	get_local	$push91=, 2
	i32.load	$push10=, 28($pop91)
	i32.const	$push12=, 0
	i32.load	$push11=, _ZL10lastRegion($pop12)
	i32.ne  	$push9=, $pop10, $pop11
	br_if   	0, $pop9        # 0: down to label71
# %bb.3:
	get_local	$push92=, 2
	i32.load	$push17=, 16($pop92)
	i32.const	$push18=, 8
	i32.lt_u	$push16=, $pop17, $pop18
	br_if   	0, $pop16       # 0: down to label71
# %bb.4:
	get_local	$push93=, 2
	i32.load	$push20=, 16($pop93)
	i32.const	$push21=, 16
	i32.ge_u	$push19=, $pop20, $pop21
	br_if   	0, $pop19       # 0: down to label71
# %bb.5:
	block   	
	block   	
	get_local	$push94=, 2
	i32.load	$push25=, 20($pop94)
	i32.const	$push23=, 8
	i32.add 	$push24=, $pop25, $pop23
	i32.call	$push22=, _ZL16extendLastRegionj@FUNCTION, $pop24
	i32.eqz 	$push125=, $pop22
	br_if   	0, $pop125      # 0: down to label73
# %bb.6:
	get_local	$push96=, 2
	get_local	$push95=, 2
	i32.load	$push31=, 16($pop95)
	i32.const	$push29=, 8
	i32.add 	$push30=, $pop31, $pop29
	i32.store	16($pop96), $pop30
	block   	
	get_local	$push97=, 2
	i32.load	$push27=, 16($pop97)
	i32.const	$push28=, 16
	i32.ge_u	$push26=, $pop27, $pop28
	br_if   	0, $pop26       # 0: down to label74
# %bb.7:
	i32.const	$push32=, .L.str.7
	i32.const	$push33=, .L.str.3
	i32.const	$push34=, 455
	i32.const	$push35=, .L__func__._ZL22possiblySplitRemainderP6Regionj
	call    	__assert_fail@FUNCTION, $pop32, $pop33, $pop34, $pop35
	unreachable
.LBB37_8:
	end_block                       # label74:
	br      	1               # 1: down to label72
.LBB37_9:
	end_block                       # label73:
	br      	2               # 2: down to label70
.LBB37_10:
	end_block                       # label72:
.LBB37_11:
	end_block                       # label71:
	get_local	$push98=, 2
	i32.load	$push37=, 16($pop98)
	i32.const	$push38=, 16
	i32.lt_u	$push36=, $pop37, $pop38
	br_if   	0, $pop36       # 0: down to label70
# %bb.12:
	get_local	$push100=, 2
	get_local	$push99=, 2
	i32.load	$push55=, 28($pop99)
	i32.call	$push54=, _ZL8getAfterP6Region@FUNCTION, $pop55
	i32.store	12($pop100), $pop54
	get_local	$push103=, 2
	get_local	$push101=, 2
	i32.load	$push53=, 28($pop101)
	i32.call	$push52=, _ZL10getPayloadP6Region@FUNCTION, $pop53
	get_local	$push102=, 2
	i32.load	$push51=, 24($pop102)
	i32.add 	$push50=, $pop52, $pop51
	i32.call	$push49=, _ZL14alignUpPointerPv@FUNCTION, $pop50
	i32.store	8($pop103), $pop49
	get_local	$push104=, 2
	i32.load	$push48=, 28($pop104)
	get_local	$push105=, 2
	i32.load	$push47=, 8($pop105)
	get_local	$push106=, 2
	i32.load	$push46=, 28($pop106)
	i32.sub 	$push45=, $pop47, $pop46
	call    	_ZN6Region12setTotalSizeEj@FUNCTION, $pop48, $pop45
	get_local	$push109=, 2
	get_local	$push107=, 2
	i32.load	$push44=, 12($pop107)
	get_local	$push108=, 2
	i32.load	$push43=, 8($pop108)
	i32.sub 	$push42=, $pop44, $pop43
	i32.store	4($pop109), $pop42
	block   	
	get_local	$push110=, 2
	i32.load	$push40=, 4($pop110)
	i32.const	$push41=, 16
	i32.ge_u	$push39=, $pop40, $pop41
	br_if   	0, $pop39       # 0: down to label75
# %bb.13:
	i32.const	$push56=, .L.str.8
	i32.const	$push57=, .L.str.3
	i32.const	$push58=, 470
	i32.const	$push59=, .L__func__._ZL22possiblySplitRemainderP6Regionj
	call    	__assert_fail@FUNCTION, $pop56, $pop57, $pop58, $pop59
	unreachable
.LBB37_14:
	end_block                       # label75:
	get_local	$push111=, 2
	i32.load	$push67=, 8($pop111)
	get_local	$push112=, 2
	i32.load	$push66=, 4($pop112)
	call    	_ZN6Region12setTotalSizeEj@FUNCTION, $pop67, $pop66
	get_local	$push114=, 2
	i32.load	$push113=, 28($pop114)
	set_local	1, $pop113
	get_local	$push115=, 2
	i32.load	$push65=, 8($pop115)
	i32.call	$push64=, _ZN6Region4prevEv@FUNCTION, $pop65
	get_local	$push116=, 1
	i32.store	0($pop64), $pop116
	block   	
	block   	
	get_local	$push117=, 2
	i32.load	$push61=, 28($pop117)
	i32.const	$push63=, 0
	i32.load	$push62=, _ZL10lastRegion($pop63)
	i32.eq  	$push60=, $pop61, $pop62
	br_if   	0, $pop60       # 0: down to label77
# %bb.15:
	get_local	$push119=, 2
	i32.load	$push118=, 8($pop119)
	set_local	1, $pop118
	get_local	$push120=, 2
	i32.load	$push72=, 8($pop120)
	i32.call	$push71=, _ZN6Region4nextEv@FUNCTION, $pop72
	i32.call	$push70=, _ZN6Region4prevEv@FUNCTION, $pop71
	get_local	$push121=, 1
	i32.store	0($pop70), $pop121
	br      	1               # 1: down to label76
.LBB37_16:
	end_block                       # label77:
	i32.const	$push68=, 0
	get_local	$push122=, 2
	i32.load	$push69=, 8($pop122)
	i32.store	_ZL10lastRegion($pop68), $pop69
.LBB37_17:
	end_block                       # label76:
	get_local	$push123=, 2
	i32.load	$push73=, 8($pop123)
	call    	_ZL9stopUsingP6Region@FUNCTION, $pop73
.LBB37_18:
	end_block                       # label70:
	get_local	$push124=, 2
	i32.const	$push76=, 32
	i32.add 	$push77=, $pop124, $pop76
	set_global	__stack_pointer, $pop77
                                        # fallthrough-return
	end_function
.Lfunc_end37:
	.size	_ZL22possiblySplitRemainderP6Regionj, .Lfunc_end37-_ZL22possiblySplitRemainderP6Regionj
                                        # -- End function
	.section	.text._ZL16extendLastRegionj,"",@
	.type	_ZL16extendLastRegionj,@function # -- Begin function _ZL16extendLastRegionj
_ZL16extendLastRegionj:                 # @_ZL16extendLastRegionj
	.param  	i32
	.result 	i32
	.local  	i32
# %bb.0:
	get_global	$push26=, __stack_pointer
	i32.const	$push27=, 32
	i32.sub 	$push31=, $pop26, $pop27
	tee_local	$push30=, 1, $pop31
	set_global	__stack_pointer, $pop30
	get_local	$push33=, 1
	get_local	$push32=, 0
	i32.store	24($pop33), $pop32
	get_local	$push34=, 1
	i32.const	$push10=, 0
	i32.load	$push11=, _ZL10lastRegion($pop10)
	i32.call	$push9=, _ZL13getMaxPayloadP6Region@FUNCTION, $pop11
	i32.store	20($pop34), $pop9
	get_local	$push37=, 1
	get_local	$push35=, 1
	i32.load	$push8=, 24($pop35)
	i32.call	$push7=, _ZL7alignUpj@FUNCTION, $pop8
	get_local	$push36=, 1
	i32.load	$push6=, 20($pop36)
	i32.sub 	$push5=, $pop7, $pop6
	i32.store	16($pop37), $pop5
	get_local	$push39=, 1
	get_local	$push38=, 1
	i32.load	$push4=, 16($pop38)
	i32.call	$push3=, sbrk@FUNCTION, $pop4
	i32.store	12($pop39), $pop3
	block   	
	block   	
	get_local	$push40=, 1
	i32.load	$push1=, 12($pop40)
	i32.const	$push2=, 4294967295
	i32.ne  	$push0=, $pop1, $pop2
	br_if   	0, $pop0        # 0: down to label79
# %bb.1:
	get_local	$push41=, 1
	i32.const	$push25=, 0
	i32.store	28($pop41), $pop25
	br      	1               # 1: down to label78
.LBB38_2:
	end_block                       # label79:
	block   	
	get_local	$push42=, 1
	i32.load	$push13=, 12($pop42)
	i32.const	$push15=, 0
	i32.load	$push16=, _ZL10lastRegion($pop15)
	i32.call	$push14=, _ZL8getAfterP6Region@FUNCTION, $pop16
	i32.eq  	$push12=, $pop13, $pop14
	br_if   	0, $pop12       # 0: down to label80
# %bb.3:
	i32.const	$push17=, .L.str.9
	i32.const	$push18=, .L.str.3
	i32.const	$push19=, 427
	i32.const	$push20=, .L__func__._ZL16extendLastRegionj
	call    	__assert_fail@FUNCTION, $pop17, $pop18, $pop19, $pop20
	unreachable
.LBB38_4:
	end_block                       # label80:
	i32.const	$push23=, 0
	i32.load	$push24=, _ZL10lastRegion($pop23)
	get_local	$push43=, 1
	i32.load	$push22=, 16($pop43)
	call    	_ZL10growRegionP6Regionj@FUNCTION, $pop24, $pop22
	get_local	$push44=, 1
	i32.const	$push21=, 1
	i32.store	28($pop44), $pop21
.LBB38_5:
	end_block                       # label78:
	get_local	$push46=, 1
	i32.load	$push45=, 28($pop46)
	set_local	0, $pop45
	get_local	$push47=, 1
	i32.const	$push28=, 32
	i32.add 	$push29=, $pop47, $pop28
	set_global	__stack_pointer, $pop29
	get_local	$push48=, 0
                                        # fallthrough-return: $pop48
	end_function
.Lfunc_end38:
	.size	_ZL16extendLastRegionj, .Lfunc_end38-_ZL16extendLastRegionj
                                        # -- End function
	.section	.text._ZL14alignUpPointerPv,"",@
	.type	_ZL14alignUpPointerPv,@function # -- Begin function _ZL14alignUpPointerPv
_ZL14alignUpPointerPv:                  # @_ZL14alignUpPointerPv
	.param  	i32
	.result 	i32
	.local  	i32
# %bb.0:
	get_global	$push1=, __stack_pointer
	i32.const	$push2=, 16
	i32.sub 	$push6=, $pop1, $pop2
	tee_local	$push5=, 1, $pop6
	set_global	__stack_pointer, $pop5
	get_local	$push8=, 1
	get_local	$push7=, 0
	i32.store	12($pop8), $pop7
	get_local	$push9=, 1
	i32.load	$push0=, 12($pop9)
	i32.call	$push10=, _ZL7alignUpj@FUNCTION, $pop0
	set_local	0, $pop10
	get_local	$push11=, 1
	i32.const	$push3=, 16
	i32.add 	$push4=, $pop11, $pop3
	set_global	__stack_pointer, $pop4
	get_local	$push12=, 0
                                        # fallthrough-return: $pop12
	end_function
.Lfunc_end39:
	.size	_ZL14alignUpPointerPv, .Lfunc_end39-_ZL14alignUpPointerPv
                                        # -- End function
	.section	.text._ZN6Region12setTotalSizeEj,"",@
	.hidden	_ZN6Region12setTotalSizeEj # -- Begin function _ZN6Region12setTotalSizeEj
	.weak	_ZN6Region12setTotalSizeEj
	.type	_ZN6Region12setTotalSizeEj,@function
_ZN6Region12setTotalSizeEj:             # @_ZN6Region12setTotalSizeEj
	.param  	i32, i32
	.local  	i32
# %bb.0:
	get_global	$push9=, __stack_pointer
	i32.const	$push10=, 16
	i32.sub 	$push14=, $pop9, $pop10
	tee_local	$push13=, 2, $pop14
	get_local	$push15=, 0
	i32.store	12($pop13), $pop15
	get_local	$push17=, 2
	get_local	$push16=, 1
	i32.store	8($pop17), $pop16
	get_local	$push18=, 2
	i32.load	$push12=, 12($pop18)
	tee_local	$push11=, 1, $pop12
	get_local	$push19=, 1
	i32.load	$push7=, 0($pop19)
	i32.const	$push1=, 1
	i32.and 	$push2=, $pop7, $pop1
	get_local	$push20=, 2
	i32.load	$push8=, 8($pop20)
	i32.const	$push5=, 2147483647
	i32.and 	$push6=, $pop8, $pop5
	i32.const	$push3=, 1
	i32.shl 	$push4=, $pop6, $pop3
	i32.or  	$push0=, $pop2, $pop4
	i32.store	0($pop11), $pop0
                                        # fallthrough-return
	end_function
.Lfunc_end40:
	.size	_ZN6Region12setTotalSizeEj, .Lfunc_end40-_ZN6Region12setTotalSizeEj
                                        # -- End function
	.section	.text._ZN6Region4prevEv,"",@
	.hidden	_ZN6Region4prevEv       # -- Begin function _ZN6Region4prevEv
	.weak	_ZN6Region4prevEv
	.type	_ZN6Region4prevEv,@function
_ZN6Region4prevEv:                      # @_ZN6Region4prevEv
	.param  	i32
	.result 	i32
	.local  	i32
# %bb.0:
	get_global	$push3=, __stack_pointer
	i32.const	$push4=, 16
	i32.sub 	$push6=, $pop3, $pop4
	tee_local	$push5=, 1, $pop6
	get_local	$push7=, 0
	i32.store	12($pop5), $pop7
	get_local	$push8=, 1
	i32.load	$push2=, 12($pop8)
	i32.const	$push0=, 4
	i32.add 	$push1=, $pop2, $pop0
                                        # fallthrough-return: $pop1
	end_function
.Lfunc_end41:
	.size	_ZN6Region4prevEv, .Lfunc_end41-_ZN6Region4prevEv
                                        # -- End function
	.section	.text._ZN6Region4nextEv,"",@
	.hidden	_ZN6Region4nextEv       # -- Begin function _ZN6Region4nextEv
	.weak	_ZN6Region4nextEv
	.type	_ZN6Region4nextEv,@function
_ZN6Region4nextEv:                      # @_ZN6Region4nextEv
	.param  	i32
	.result 	i32
	.local  	i32
# %bb.0:
	get_global	$push11=, __stack_pointer
	i32.const	$push12=, 32
	i32.sub 	$push19=, $pop11, $pop12
	tee_local	$push18=, 1, $pop19
	set_global	__stack_pointer, $pop18
	get_local	$push22=, 1
	get_local	$push21=, 0
	i32.store	8($pop22), $pop21
	block   	
	block   	
	get_local	$push23=, 1
	i32.load	$push17=, 8($pop23)
	tee_local	$push16=, 0, $pop17
	i32.const	$push2=, 0
	i32.load	$push1=, _ZL10lastRegion($pop2)
	i32.eq  	$push0=, $pop16, $pop1
	br_if   	0, $pop0        # 0: down to label82
# %bb.1:
	get_local	$push26=, 1
	get_local	$push25=, 0
	get_local	$push24=, 0
	i32.call	$push10=, _ZN6Region12getTotalSizeEv@FUNCTION, $pop24
	i32.add 	$push9=, $pop25, $pop10
	i32.store	12($pop26), $pop9
	br      	1               # 1: down to label81
.LBB42_2:
	end_block                       # label82:
	get_local	$push28=, 1
	get_local	$push27=, 1
	i32.const	$push15=, 16
	i32.add 	$push8=, $pop27, $pop15
	i32.store	24($pop28), $pop8
	get_local	$push29=, 1
	i32.const	$push7=, 4294967295
	i32.store	20($pop29), $pop7
	get_local	$push30=, 1
	i32.load	$push6=, 24($pop30)
	i32.const	$push3=, 0
	i32.store	0($pop6), $pop3
	get_local	$push32=, 1
	get_local	$push31=, 1
	i32.load	$push5=, 16($pop31)
	i32.store	0($pop32), $pop5
	get_local	$push33=, 1
	get_local	$push4=, 1
	i32.store	28($pop33), $pop4
	get_local	$push34=, 1
	i32.const	$push20=, 0
	i32.store	12($pop34), $pop20
.LBB42_3:
	end_block                       # label81:
	get_local	$push36=, 1
	i32.load	$push35=, 12($pop36)
	set_local	0, $pop35
	get_local	$push37=, 1
	i32.const	$push13=, 32
	i32.add 	$push14=, $pop37, $pop13
	set_global	__stack_pointer, $pop14
	get_local	$push38=, 0
                                        # fallthrough-return: $pop38
	end_function
.Lfunc_end42:
	.size	_ZN6Region4nextEv, .Lfunc_end42-_ZN6Region4nextEv
                                        # -- End function
	.section	.text._ZL9stopUsingP6Region,"",@
	.type	_ZL9stopUsingP6Region,@function # -- Begin function _ZL9stopUsingP6Region
_ZL9stopUsingP6Region:                  # @_ZL9stopUsingP6Region
	.param  	i32
	.local  	i32
# %bb.0:
	get_global	$push5=, __stack_pointer
	i32.const	$push6=, 16
	i32.sub 	$push10=, $pop5, $pop6
	tee_local	$push9=, 1, $pop10
	set_global	__stack_pointer, $pop9
	get_local	$push12=, 1
	get_local	$push11=, 0
	i32.store	12($pop12), $pop11
	get_local	$push13=, 1
	i32.load	$push3=, 12($pop13)
	i32.const	$push2=, 0
	call    	_ZN6Region7setUsedEj@FUNCTION, $pop3, $pop2
	block   	
	get_local	$push14=, 1
	i32.load	$push1=, 12($pop14)
	i32.call	$push0=, _ZL27mergeIntoExistingFreeRegionP6Region@FUNCTION, $pop1
	br_if   	0, $pop0        # 0: down to label83
# %bb.1:
	get_local	$push15=, 1
	i32.load	$push4=, 12($pop15)
	call    	_ZL13addToFreeListP6Region@FUNCTION, $pop4
.LBB43_2:
	end_block                       # label83:
	get_local	$push16=, 1
	i32.const	$push7=, 16
	i32.add 	$push8=, $pop16, $pop7
	set_global	__stack_pointer, $pop8
                                        # fallthrough-return
	end_function
.Lfunc_end43:
	.size	_ZL9stopUsingP6Region, .Lfunc_end43-_ZL9stopUsingP6Region
                                        # -- End function
	.section	.text._ZL7alignUpj,"",@
	.type	_ZL7alignUpj,@function  # -- Begin function _ZL7alignUpj
_ZL7alignUpj:                           # @_ZL7alignUpj
	.param  	i32
	.result 	i32
	.local  	i32
# %bb.0:
	get_global	$push7=, __stack_pointer
	i32.const	$push8=, 16
	i32.sub 	$push10=, $pop7, $pop8
	tee_local	$push9=, 1, $pop10
	get_local	$push11=, 0
	i32.store	12($pop9), $pop11
	get_local	$push12=, 1
	i32.load	$push6=, 12($pop12)
	i32.const	$push4=, 8
	i32.add 	$push5=, $pop6, $pop4
	i32.const	$push2=, 1
	i32.sub 	$push3=, $pop5, $pop2
	i32.const	$push0=, -8
	i32.and 	$push1=, $pop3, $pop0
                                        # fallthrough-return: $pop1
	end_function
.Lfunc_end44:
	.size	_ZL7alignUpj, .Lfunc_end44-_ZL7alignUpj
                                        # -- End function
	.section	.text._ZL10growRegionP6Regionj,"",@
	.type	_ZL10growRegionP6Regionj,@function # -- Begin function _ZL10growRegionP6Regionj
_ZL10growRegionP6Regionj:               # @_ZL10growRegionP6Regionj
	.param  	i32, i32
	.local  	i32
# %bb.0:
	get_global	$push8=, __stack_pointer
	i32.const	$push9=, 16
	i32.sub 	$push13=, $pop8, $pop9
	tee_local	$push12=, 2, $pop13
	set_global	__stack_pointer, $pop12
	get_local	$push15=, 2
	get_local	$push14=, 0
	i32.store	12($pop15), $pop14
	get_local	$push17=, 2
	get_local	$push16=, 1
	i32.store	8($pop17), $pop16
	block   	
	get_local	$push18=, 2
	i32.load	$push1=, 12($pop18)
	i32.call	$push0=, _ZN6Region7getUsedEv@FUNCTION, $pop1
	br_if   	0, $pop0        # 0: down to label84
# %bb.1:
	get_local	$push19=, 2
	i32.load	$push2=, 12($pop19)
	call    	_ZL18removeFromFreeListP6Region@FUNCTION, $pop2
.LBB45_2:
	end_block                       # label84:
	get_local	$push20=, 2
	i32.load	$push6=, 12($pop20)
	get_local	$push21=, 2
	i32.load	$push5=, 8($pop21)
	call    	_ZN6Region12incTotalSizeEj@FUNCTION, $pop6, $pop5
	block   	
	get_local	$push22=, 2
	i32.load	$push4=, 12($pop22)
	i32.call	$push3=, _ZN6Region7getUsedEv@FUNCTION, $pop4
	br_if   	0, $pop3        # 0: down to label85
# %bb.3:
	get_local	$push23=, 2
	i32.load	$push7=, 12($pop23)
	call    	_ZL13addToFreeListP6Region@FUNCTION, $pop7
.LBB45_4:
	end_block                       # label85:
	get_local	$push24=, 2
	i32.const	$push10=, 16
	i32.add 	$push11=, $pop24, $pop10
	set_global	__stack_pointer, $pop11
                                        # fallthrough-return
	end_function
.Lfunc_end45:
	.size	_ZL10growRegionP6Regionj, .Lfunc_end45-_ZL10growRegionP6Regionj
                                        # -- End function
	.section	.text._ZN6Region7getUsedEv,"",@
	.hidden	_ZN6Region7getUsedEv    # -- Begin function _ZN6Region7getUsedEv
	.weak	_ZN6Region7getUsedEv
	.type	_ZN6Region7getUsedEv,@function
_ZN6Region7getUsedEv:                   # @_ZN6Region7getUsedEv
	.param  	i32
	.result 	i32
	.local  	i32
# %bb.0:
	get_global	$push4=, __stack_pointer
	i32.const	$push5=, 16
	i32.sub 	$push7=, $pop4, $pop5
	tee_local	$push6=, 1, $pop7
	get_local	$push8=, 0
	i32.store	12($pop6), $pop8
	get_local	$push9=, 1
	i32.load	$push3=, 12($pop9)
	i32.load	$push2=, 0($pop3)
	i32.const	$push0=, 1
	i32.and 	$push1=, $pop2, $pop0
                                        # fallthrough-return: $pop1
	end_function
.Lfunc_end46:
	.size	_ZN6Region7getUsedEv, .Lfunc_end46-_ZN6Region7getUsedEv
                                        # -- End function
	.section	.text._ZN6Region12incTotalSizeEj,"",@
	.hidden	_ZN6Region12incTotalSizeEj # -- Begin function _ZN6Region12incTotalSizeEj
	.weak	_ZN6Region12incTotalSizeEj
	.type	_ZN6Region12incTotalSizeEj,@function
_ZN6Region12incTotalSizeEj:             # @_ZN6Region12incTotalSizeEj
	.param  	i32, i32
	.local  	i32
# %bb.0:
	get_global	$push13=, __stack_pointer
	i32.const	$push14=, 16
	i32.sub 	$push18=, $pop13, $pop14
	tee_local	$push17=, 2, $pop18
	get_local	$push19=, 0
	i32.store	12($pop17), $pop19
	get_local	$push21=, 2
	get_local	$push20=, 1
	i32.store	8($pop21), $pop20
	get_local	$push22=, 2
	i32.load	$push16=, 12($pop22)
	tee_local	$push15=, 1, $pop16
	get_local	$push23=, 1
	i32.load	$push7=, 0($pop23)
	i32.const	$push1=, 1
	i32.and 	$push2=, $pop7, $pop1
	get_local	$push24=, 1
	i32.load	$push11=, 0($pop24)
	i32.const	$push9=, 1
	i32.shr_u	$push10=, $pop11, $pop9
	get_local	$push25=, 2
	i32.load	$push12=, 8($pop25)
	i32.add 	$push8=, $pop10, $pop12
	i32.const	$push5=, 2147483647
	i32.and 	$push6=, $pop8, $pop5
	i32.const	$push3=, 1
	i32.shl 	$push4=, $pop6, $pop3
	i32.or  	$push0=, $pop2, $pop4
	i32.store	0($pop15), $pop0
                                        # fallthrough-return
	end_function
.Lfunc_end47:
	.size	_ZN6Region12incTotalSizeEj, .Lfunc_end47-_ZN6Region12incTotalSizeEj
                                        # -- End function
	.section	.text._ZL13addToFreeListP6Region,"",@
	.type	_ZL13addToFreeListP6Region,@function # -- Begin function _ZL13addToFreeListP6Region
_ZL13addToFreeListP6Region:             # @_ZL13addToFreeListP6Region
	.param  	i32
	.local  	i32
# %bb.0:
	get_global	$push39=, __stack_pointer
	i32.const	$push40=, 48
	i32.sub 	$push46=, $pop39, $pop40
	tee_local	$push45=, 1, $pop46
	set_global	__stack_pointer, $pop45
	get_local	$push51=, 1
	get_local	$push50=, 0
	i32.store	28($pop51), $pop50
	block   	
	get_local	$push52=, 1
	i32.load	$push4=, 28($pop52)
	i32.call	$push1=, _ZL8getAfterP6Region@FUNCTION, $pop4
	i32.const	$push3=, 0
	i32.call	$push2=, sbrk@FUNCTION, $pop3
	i32.le_u	$push0=, $pop1, $pop2
	br_if   	0, $pop0        # 0: down to label86
# %bb.1:
	i32.const	$push5=, .L.str
	i32.const	$push6=, .L.str.3
	i32.const	$push7=, 316
	i32.const	$push8=, .L__func__._ZL13addToFreeListP6Region
	call    	__assert_fail@FUNCTION, $pop5, $pop6, $pop7, $pop8
	unreachable
.LBB48_2:
	end_block                       # label86:
	get_local	$push54=, 1
	get_local	$push53=, 1
	i32.load	$push36=, 28($pop53)
	i32.call	$push35=, _ZL13getMaxPayloadP6Region@FUNCTION, $pop36
	i32.call	$push34=, _ZL16getFreeListIndexj@FUNCTION, $pop35
	i32.store	24($pop54), $pop34
	get_local	$push56=, 1
	get_local	$push55=, 1
	i32.load	$push33=, 28($pop55)
	i32.call	$push32=, _ZN6Region8freeInfoEv@FUNCTION, $pop33
	i32.store	20($pop56), $pop32
	get_local	$push58=, 1
	i32.const	$push21=, _ZL9freeLists
	get_local	$push57=, 1
	i32.load	$push31=, 24($pop57)
	i32.const	$push28=, 2
	i32.shl 	$push29=, $pop31, $pop28
	i32.add 	$push30=, $pop21, $pop29
	i32.load	$push27=, 0($pop30)
	i32.store	16($pop58), $pop27
	i32.const	$push49=, _ZL9freeLists
	get_local	$push59=, 1
	i32.load	$push25=, 24($pop59)
	i32.const	$push22=, 2
	i32.shl 	$push23=, $pop25, $pop22
	i32.add 	$push24=, $pop49, $pop23
	get_local	$push60=, 1
	i32.load	$push26=, 20($pop60)
	i32.store	0($pop24), $pop26
	get_local	$push62=, 1
	get_local	$push61=, 1
	i32.const	$push44=, 32
	i32.add 	$push20=, $pop61, $pop44
	i32.store	40($pop62), $pop20
	get_local	$push63=, 1
	i32.const	$push19=, 4294967295
	i32.store	36($pop63), $pop19
	get_local	$push64=, 1
	i32.load	$push18=, 40($pop64)
	i32.const	$push11=, 0
	i32.store	0($pop18), $pop11
	get_local	$push66=, 1
	get_local	$push65=, 1
	i32.load	$push17=, 32($pop65)
	i32.store	8($pop66), $pop17
	get_local	$push68=, 1
	get_local	$push67=, 1
	i32.const	$push43=, 8
	i32.add 	$push16=, $pop67, $pop43
	i32.store	44($pop68), $pop16
	get_local	$push69=, 1
	i32.load	$push15=, 20($pop69)
	i32.call	$push14=, _ZN8FreeInfo4prevEv@FUNCTION, $pop15
	i32.const	$push48=, 0
	i32.store	0($pop14), $pop48
	get_local	$push71=, 1
	i32.load	$push70=, 16($pop71)
	set_local	0, $pop70
	get_local	$push72=, 1
	i32.load	$push13=, 20($pop72)
	i32.call	$push12=, _ZN8FreeInfo4nextEv@FUNCTION, $pop13
	get_local	$push73=, 0
	i32.store	0($pop12), $pop73
	block   	
	get_local	$push74=, 1
	i32.load	$push10=, 16($pop74)
	i32.const	$push47=, 0
	i32.eq  	$push9=, $pop10, $pop47
	br_if   	0, $pop9        # 0: down to label87
# %bb.3:
	get_local	$push76=, 1
	i32.load	$push75=, 20($pop76)
	set_local	0, $pop75
	get_local	$push77=, 1
	i32.load	$push38=, 16($pop77)
	i32.call	$push37=, _ZN8FreeInfo4prevEv@FUNCTION, $pop38
	get_local	$push78=, 0
	i32.store	0($pop37), $pop78
.LBB48_4:
	end_block                       # label87:
	get_local	$push79=, 1
	i32.const	$push41=, 48
	i32.add 	$push42=, $pop79, $pop41
	set_global	__stack_pointer, $pop42
                                        # fallthrough-return
	end_function
.Lfunc_end48:
	.size	_ZL13addToFreeListP6Region, .Lfunc_end48-_ZL13addToFreeListP6Region
                                        # -- End function
	.section	.text._ZL27mergeIntoExistingFreeRegionP6Region,"",@
	.type	_ZL27mergeIntoExistingFreeRegionP6Region,@function # -- Begin function _ZL27mergeIntoExistingFreeRegionP6Region
_ZL27mergeIntoExistingFreeRegionP6Region: # @_ZL27mergeIntoExistingFreeRegionP6Region
	.param  	i32
	.result 	i32
	.local  	i32
# %bb.0:
	get_global	$push79=, __stack_pointer
	i32.const	$push80=, 32
	i32.sub 	$push84=, $pop79, $pop80
	tee_local	$push83=, 1, $pop84
	set_global	__stack_pointer, $pop83
	get_local	$push87=, 1
	get_local	$push86=, 0
	i32.store	24($pop87), $pop86
	block   	
	get_local	$push88=, 1
	i32.load	$push4=, 24($pop88)
	i32.call	$push1=, _ZL8getAfterP6Region@FUNCTION, $pop4
	i32.const	$push3=, 0
	i32.call	$push2=, sbrk@FUNCTION, $pop3
	i32.le_u	$push0=, $pop1, $pop2
	br_if   	0, $pop0        # 0: down to label88
# %bb.1:
	i32.const	$push5=, .L.str
	i32.const	$push6=, .L.str.3
	i32.const	$push7=, 334
	i32.const	$push8=, .L__func__._ZL27mergeIntoExistingFreeRegionP6Region
	call    	__assert_fail@FUNCTION, $pop5, $pop6, $pop7, $pop8
	unreachable
.LBB49_2:
	end_block                       # label88:
	get_local	$push89=, 1
	i32.const	$push11=, 0
	i32.store	20($pop89), $pop11
	get_local	$push91=, 1
	get_local	$push90=, 1
	i32.load	$push16=, 24($pop90)
	i32.call	$push15=, _ZN6Region4prevEv@FUNCTION, $pop16
	i32.load	$push14=, 0($pop15)
	i32.store	16($pop91), $pop14
	get_local	$push93=, 1
	get_local	$push92=, 1
	i32.load	$push13=, 24($pop92)
	i32.call	$push12=, _ZN6Region4nextEv@FUNCTION, $pop13
	i32.store	12($pop93), $pop12
	block   	
	block   	
	get_local	$push94=, 1
	i32.load	$push10=, 16($pop94)
	i32.const	$push85=, 0
	i32.eq  	$push9=, $pop10, $pop85
	br_if   	0, $pop9        # 0: down to label90
# %bb.3:
	get_local	$push95=, 1
	i32.load	$push18=, 16($pop95)
	i32.call	$push17=, _ZN6Region7getUsedEv@FUNCTION, $pop18
	br_if   	0, $pop17       # 0: down to label90
# %bb.4:
	get_local	$push96=, 1
	i32.load	$push25=, 16($pop96)
	call    	_ZL18removeFromFreeListP6Region@FUNCTION, $pop25
	get_local	$push97=, 1
	i32.load	$push24=, 16($pop97)
	get_local	$push98=, 1
	i32.load	$push23=, 24($pop98)
	i32.call	$push22=, _ZN6Region12getTotalSizeEv@FUNCTION, $pop23
	call    	_ZN6Region12incTotalSizeEj@FUNCTION, $pop24, $pop22
	block   	
	block   	
	get_local	$push99=, 1
	i32.load	$push20=, 12($pop99)
	i32.const	$push21=, 0
	i32.eq  	$push19=, $pop20, $pop21
	br_if   	0, $pop19       # 0: down to label92
# %bb.5:
	get_local	$push101=, 1
	i32.load	$push100=, 16($pop101)
	set_local	0, $pop100
	get_local	$push102=, 1
	i32.load	$push37=, 12($pop102)
	i32.call	$push36=, _ZN6Region4prevEv@FUNCTION, $pop37
	get_local	$push103=, 0
	i32.store	0($pop36), $pop103
	br      	1               # 1: down to label91
.LBB49_6:
	end_block                       # label92:
	block   	
	get_local	$push104=, 1
	i32.load	$push27=, 24($pop104)
	i32.const	$push29=, 0
	i32.load	$push28=, _ZL10lastRegion($pop29)
	i32.eq  	$push26=, $pop27, $pop28
	br_if   	0, $pop26       # 0: down to label93
# %bb.7:
	i32.const	$push30=, .L.str.10
	i32.const	$push31=, .L.str.3
	i32.const	$push32=, 348
	i32.const	$push33=, .L__func__._ZL27mergeIntoExistingFreeRegionP6Region
	call    	__assert_fail@FUNCTION, $pop30, $pop31, $pop32, $pop33
	unreachable
.LBB49_8:
	end_block                       # label93:
	i32.const	$push34=, 0
	get_local	$push105=, 1
	i32.load	$push35=, 16($pop105)
	i32.store	_ZL10lastRegion($pop34), $pop35
.LBB49_9:
	end_block                       # label91:
	block   	
	get_local	$push106=, 1
	i32.load	$push39=, 12($pop106)
	i32.const	$push40=, 0
	i32.eq  	$push38=, $pop39, $pop40
	br_if   	0, $pop38       # 0: down to label94
# %bb.10:
	block   	
	get_local	$push107=, 1
	i32.load	$push42=, 12($pop107)
	i32.call	$push41=, _ZN6Region7getUsedEv@FUNCTION, $pop42
	br_if   	0, $pop41       # 0: down to label95
# %bb.11:
	get_local	$push108=, 1
	i32.load	$push50=, 12($pop108)
	call    	_ZL18removeFromFreeListP6Region@FUNCTION, $pop50
	get_local	$push109=, 1
	i32.load	$push49=, 16($pop109)
	get_local	$push110=, 1
	i32.load	$push48=, 12($pop110)
	i32.call	$push47=, _ZN6Region12getTotalSizeEv@FUNCTION, $pop48
	call    	_ZN6Region12incTotalSizeEj@FUNCTION, $pop49, $pop47
	block   	
	block   	
	get_local	$push111=, 1
	i32.load	$push44=, 12($pop111)
	i32.const	$push46=, 0
	i32.load	$push45=, _ZL10lastRegion($pop46)
	i32.eq  	$push43=, $pop44, $pop45
	br_if   	0, $pop43       # 0: down to label97
# %bb.12:
	get_local	$push113=, 1
	i32.load	$push112=, 16($pop113)
	set_local	0, $pop112
	get_local	$push114=, 1
	i32.load	$push55=, 12($pop114)
	i32.call	$push54=, _ZN6Region4nextEv@FUNCTION, $pop55
	i32.call	$push53=, _ZN6Region4prevEv@FUNCTION, $pop54
	get_local	$push115=, 0
	i32.store	0($pop53), $pop115
	br      	1               # 1: down to label96
.LBB49_13:
	end_block                       # label97:
	i32.const	$push51=, 0
	get_local	$push116=, 1
	i32.load	$push52=, 16($pop116)
	i32.store	_ZL10lastRegion($pop51), $pop52
.LBB49_14:
	end_block                       # label96:
.LBB49_15:
	end_block                       # label95:
.LBB49_16:
	end_block                       # label94:
	get_local	$push117=, 1
	i32.load	$push57=, 16($pop117)
	call    	_ZL13addToFreeListP6Region@FUNCTION, $pop57
	get_local	$push118=, 1
	i32.const	$push56=, 1
	i32.store	28($pop118), $pop56
	br      	1               # 1: down to label89
.LBB49_17:
	end_block                       # label90:
	block   	
	get_local	$push119=, 1
	i32.load	$push59=, 12($pop119)
	i32.const	$push60=, 0
	i32.eq  	$push58=, $pop59, $pop60
	br_if   	0, $pop58       # 0: down to label98
# %bb.18:
	get_local	$push120=, 1
	i32.load	$push62=, 12($pop120)
	i32.call	$push61=, _ZN6Region7getUsedEv@FUNCTION, $pop62
	br_if   	0, $pop61       # 0: down to label98
# %bb.19:
	get_local	$push121=, 1
	i32.load	$push70=, 12($pop121)
	call    	_ZL18removeFromFreeListP6Region@FUNCTION, $pop70
	get_local	$push122=, 1
	i32.load	$push69=, 24($pop122)
	get_local	$push123=, 1
	i32.load	$push68=, 12($pop123)
	i32.call	$push67=, _ZN6Region12getTotalSizeEv@FUNCTION, $pop68
	call    	_ZN6Region12incTotalSizeEj@FUNCTION, $pop69, $pop67
	block   	
	block   	
	get_local	$push124=, 1
	i32.load	$push64=, 12($pop124)
	i32.const	$push66=, 0
	i32.load	$push65=, _ZL10lastRegion($pop66)
	i32.eq  	$push63=, $pop64, $pop65
	br_if   	0, $pop63       # 0: down to label100
# %bb.20:
	get_local	$push126=, 1
	i32.load	$push125=, 24($pop126)
	set_local	0, $pop125
	get_local	$push127=, 1
	i32.load	$push75=, 12($pop127)
	i32.call	$push74=, _ZN6Region4nextEv@FUNCTION, $pop75
	i32.call	$push73=, _ZN6Region4prevEv@FUNCTION, $pop74
	get_local	$push128=, 0
	i32.store	0($pop73), $pop128
	br      	1               # 1: down to label99
.LBB49_21:
	end_block                       # label100:
	i32.const	$push71=, 0
	get_local	$push129=, 1
	i32.load	$push72=, 24($pop129)
	i32.store	_ZL10lastRegion($pop71), $pop72
.LBB49_22:
	end_block                       # label99:
	get_local	$push130=, 1
	i32.load	$push77=, 24($pop130)
	call    	_ZL13addToFreeListP6Region@FUNCTION, $pop77
	get_local	$push131=, 1
	i32.const	$push76=, 1
	i32.store	28($pop131), $pop76
	br      	1               # 1: down to label89
.LBB49_23:
	end_block                       # label98:
	get_local	$push132=, 1
	i32.const	$push78=, 0
	i32.store	28($pop132), $pop78
.LBB49_24:
	end_block                       # label89:
	get_local	$push134=, 1
	i32.load	$push133=, 28($pop134)
	set_local	0, $pop133
	get_local	$push135=, 1
	i32.const	$push81=, 32
	i32.add 	$push82=, $pop135, $pop81
	set_global	__stack_pointer, $pop82
	get_local	$push136=, 0
                                        # fallthrough-return: $pop136
	end_function
.Lfunc_end49:
	.size	_ZL27mergeIntoExistingFreeRegionP6Region, .Lfunc_end49-_ZL27mergeIntoExistingFreeRegionP6Region
                                        # -- End function
	.section	.text._ZL14allocateRegionj,"",@
	.type	_ZL14allocateRegionj,@function # -- Begin function _ZL14allocateRegionj
_ZL14allocateRegionj:                   # @_ZL14allocateRegionj
	.param  	i32
	.result 	i32
	.local  	i32
# %bb.0:
	get_global	$push86=, __stack_pointer
	i32.const	$push87=, 80
	i32.sub 	$push95=, $pop86, $pop87
	tee_local	$push94=, 1, $pop95
	set_global	__stack_pointer, $pop94
	get_local	$push99=, 1
	get_local	$push98=, 0
	i32.store	40($pop99), $pop98
	get_local	$push101=, 1
	get_local	$push100=, 1
	i32.load	$push8=, 40($pop100)
	i32.call	$push7=, _ZL7alignUpj@FUNCTION, $pop8
	i32.const	$push5=, 8
	i32.add 	$push6=, $pop7, $pop5
	i32.store	36($pop101), $pop6
	get_local	$push103=, 1
	get_local	$push102=, 1
	i32.load	$push4=, 36($pop102)
	i32.call	$push3=, sbrk@FUNCTION, $pop4
	i32.store	32($pop103), $pop3
	block   	
	block   	
	get_local	$push104=, 1
	i32.load	$push1=, 32($pop104)
	i32.const	$push2=, 4294967295
	i32.ne  	$push0=, $pop1, $pop2
	br_if   	0, $pop0        # 0: down to label102
# %bb.1:
	get_local	$push106=, 1
	get_local	$push105=, 1
	i32.const	$push91=, 48
	i32.add 	$push85=, $pop105, $pop91
	i32.store	56($pop106), $pop85
	get_local	$push107=, 1
	i32.const	$push84=, 4294967295
	i32.store	52($pop107), $pop84
	get_local	$push108=, 1
	i32.load	$push83=, 56($pop108)
	i32.const	$push80=, 0
	i32.store	0($pop83), $pop80
	get_local	$push110=, 1
	get_local	$push109=, 1
	i32.load	$push82=, 48($pop109)
	i32.store	24($pop110), $pop82
	get_local	$push112=, 1
	get_local	$push111=, 1
	i32.const	$push90=, 24
	i32.add 	$push81=, $pop111, $pop90
	i32.store	60($pop112), $pop81
	get_local	$push113=, 1
	i32.const	$push96=, 0
	i32.store	44($pop113), $pop96
	br      	1               # 1: down to label101
.LBB50_2:
	end_block                       # label102:
	get_local	$push115=, 1
	get_local	$push114=, 1
	i32.load	$push13=, 32($pop114)
	i32.call	$push12=, _ZL14alignUpPointerPv@FUNCTION, $pop13
	i32.store	20($pop115), $pop12
	block   	
	get_local	$push116=, 1
	i32.load	$push10=, 32($pop116)
	get_local	$push117=, 1
	i32.load	$push11=, 20($pop117)
	i32.eq  	$push9=, $pop10, $pop11
	br_if   	0, $pop9        # 0: down to label103
# %bb.3:
	get_local	$push120=, 1
	get_local	$push118=, 1
	i32.load	$push21=, 20($pop118)
	get_local	$push119=, 1
	i32.load	$push20=, 32($pop119)
	i32.sub 	$push19=, $pop21, $pop20
	i32.store	16($pop120), $pop19
	get_local	$push122=, 1
	get_local	$push121=, 1
	i32.load	$push18=, 16($pop121)
	i32.call	$push17=, sbrk@FUNCTION, $pop18
	i32.store	12($pop122), $pop17
	block   	
	get_local	$push123=, 1
	i32.load	$push15=, 12($pop123)
	i32.const	$push16=, 4294967295
	i32.ne  	$push14=, $pop15, $pop16
	br_if   	0, $pop14       # 0: down to label104
# %bb.4:
	get_local	$push125=, 1
	get_local	$push124=, 1
	i32.const	$push93=, 64
	i32.add 	$push79=, $pop124, $pop93
	i32.store	72($pop125), $pop79
	get_local	$push126=, 1
	i32.const	$push78=, 4294967295
	i32.store	68($pop126), $pop78
	get_local	$push127=, 1
	i32.load	$push77=, 72($pop127)
	i32.const	$push74=, 0
	i32.store	0($pop77), $pop74
	get_local	$push129=, 1
	get_local	$push128=, 1
	i32.load	$push76=, 64($pop128)
	i32.store	8($pop129), $pop76
	get_local	$push131=, 1
	get_local	$push130=, 1
	i32.const	$push92=, 8
	i32.add 	$push75=, $pop130, $pop92
	i32.store	76($pop131), $pop75
	get_local	$push132=, 1
	i32.const	$push97=, 0
	i32.store	44($pop132), $pop97
	br      	2               # 2: down to label101
.LBB50_5:
	end_block                       # label104:
	block   	
	get_local	$push133=, 1
	i32.load	$push23=, 12($pop133)
	get_local	$push134=, 1
	i32.load	$push26=, 32($pop134)
	get_local	$push135=, 1
	i32.load	$push25=, 36($pop135)
	i32.add 	$push24=, $pop26, $pop25
	i32.eq  	$push22=, $pop23, $pop24
	br_if   	0, $pop22       # 0: down to label105
# %bb.6:
	i32.const	$push27=, .L.str.11
	i32.const	$push28=, .L.str.3
	i32.const	$push29=, 748
	i32.const	$push30=, .L__func__._ZL14allocateRegionj
	call    	__assert_fail@FUNCTION, $pop27, $pop28, $pop29, $pop30
	unreachable
.LBB50_7:
	end_block                       # label105:
	block   	
	i32.const	$push34=, 0
	i32.load	$push32=, _ZL10lastRegion($pop34)
	i32.const	$push33=, 0
	i32.eq  	$push31=, $pop32, $pop33
	br_if   	0, $pop31       # 0: down to label106
# %bb.8:
	i32.const	$push70=, .L.str.12
	i32.const	$push71=, .L.str.3
	i32.const	$push72=, 750
	i32.const	$push73=, .L__func__._ZL14allocateRegionj
	call    	__assert_fail@FUNCTION, $pop70, $pop71, $pop72, $pop73
	unreachable
.LBB50_9:
	end_block                       # label106:
.LBB50_10:
	end_block                       # label103:
	get_local	$push137=, 1
	get_local	$push136=, 1
	i32.load	$push39=, 20($pop136)
	i32.store	4($pop137), $pop39
	block   	
	block   	
	i32.const	$push38=, 0
	i32.load	$push36=, _ZL10lastRegion($pop38)
	i32.const	$push37=, 0
	i32.ne  	$push35=, $pop36, $pop37
	br_if   	0, $pop35       # 0: down to label108
# %bb.11:
	block   	
	i32.const	$push43=, 0
	i32.load	$push41=, _ZL11firstRegion($pop43)
	i32.const	$push42=, 0
	i32.eq  	$push40=, $pop41, $pop42
	br_if   	0, $pop40       # 0: down to label109
# %bb.12:
	i32.const	$push48=, .L.str.13
	i32.const	$push49=, .L.str.3
	i32.const	$push50=, 759
	i32.const	$push51=, .L__func__._ZL14allocateRegionj
	call    	__assert_fail@FUNCTION, $pop48, $pop49, $pop50, $pop51
	unreachable
.LBB50_13:
	end_block                       # label109:
	i32.const	$push46=, 0
	get_local	$push138=, 1
	i32.load	$push47=, 4($pop138)
	i32.store	_ZL11firstRegion($pop46), $pop47
	i32.const	$push44=, 0
	get_local	$push139=, 1
	i32.load	$push45=, 4($pop139)
	i32.store	_ZL10lastRegion($pop44), $pop45
	br      	1               # 1: down to label107
.LBB50_14:
	end_block                       # label108:
	block   	
	i32.const	$push55=, 0
	i32.load	$push53=, _ZL11firstRegion($pop55)
	i32.const	$push54=, 0
	i32.ne  	$push52=, $pop53, $pop54
	br_if   	0, $pop52       # 0: down to label110
# %bb.15:
	i32.const	$push56=, .L.str.14
	i32.const	$push57=, .L.str.3
	i32.const	$push58=, 763
	i32.const	$push59=, .L__func__._ZL14allocateRegionj
	call    	__assert_fail@FUNCTION, $pop56, $pop57, $pop58, $pop59
	unreachable
.LBB50_16:
	end_block                       # label110:
	i32.const	$push64=, 0
	i32.load	$push140=, _ZL10lastRegion($pop64)
	set_local	0, $pop140
	get_local	$push141=, 1
	i32.load	$push63=, 4($pop141)
	i32.call	$push62=, _ZN6Region4prevEv@FUNCTION, $pop63
	get_local	$push142=, 0
	i32.store	0($pop62), $pop142
	i32.const	$push60=, 0
	get_local	$push143=, 1
	i32.load	$push61=, 4($pop143)
	i32.store	_ZL10lastRegion($pop60), $pop61
.LBB50_17:
	end_block                       # label107:
	get_local	$push144=, 1
	i32.load	$push69=, 4($pop144)
	get_local	$push145=, 1
	i32.load	$push68=, 36($pop145)
	call    	_ZN6Region12setTotalSizeEj@FUNCTION, $pop69, $pop68
	get_local	$push146=, 1
	i32.load	$push67=, 4($pop146)
	i32.const	$push66=, 1
	call    	_ZN6Region7setUsedEj@FUNCTION, $pop67, $pop66
	get_local	$push148=, 1
	get_local	$push147=, 1
	i32.load	$push65=, 4($pop147)
	i32.store	44($pop148), $pop65
.LBB50_18:
	end_block                       # label101:
	get_local	$push150=, 1
	i32.load	$push149=, 44($pop150)
	set_local	0, $pop149
	get_local	$push151=, 1
	i32.const	$push88=, 80
	i32.add 	$push89=, $pop151, $pop88
	set_global	__stack_pointer, $pop89
	get_local	$push152=, 0
                                        # fallthrough-return: $pop152
	end_function
.Lfunc_end50:
	.size	_ZL14allocateRegionj, .Lfunc_end50-_ZL14allocateRegionj
                                        # -- End function
	.section	.text._ZN6Region7payloadEv,"",@
	.hidden	_ZN6Region7payloadEv    # -- Begin function _ZN6Region7payloadEv
	.weak	_ZN6Region7payloadEv
	.type	_ZN6Region7payloadEv,@function
_ZN6Region7payloadEv:                   # @_ZN6Region7payloadEv
	.param  	i32
	.result 	i32
	.local  	i32
# %bb.0:
	get_global	$push3=, __stack_pointer
	i32.const	$push4=, 16
	i32.sub 	$push6=, $pop3, $pop4
	tee_local	$push5=, 1, $pop6
	get_local	$push7=, 0
	i32.store	12($pop5), $pop7
	get_local	$push8=, 1
	i32.load	$push2=, 12($pop8)
	i32.const	$push0=, 8
	i32.add 	$push1=, $pop2, $pop0
                                        # fallthrough-return: $pop1
	end_function
.Lfunc_end51:
	.size	_ZN6Region7payloadEv, .Lfunc_end51-_ZN6Region7payloadEv
                                        # -- End function
	.section	.text._ZL11fromPayloadPv,"",@
	.type	_ZL11fromPayloadPv,@function # -- Begin function _ZL11fromPayloadPv
_ZL11fromPayloadPv:                     # @_ZL11fromPayloadPv
	.param  	i32
	.result 	i32
	.local  	i32
# %bb.0:
	get_global	$push3=, __stack_pointer
	i32.const	$push4=, 16
	i32.sub 	$push6=, $pop3, $pop4
	tee_local	$push5=, 1, $pop6
	get_local	$push7=, 0
	i32.store	12($pop5), $pop7
	get_local	$push8=, 1
	i32.load	$push2=, 12($pop8)
	i32.const	$push0=, -8
	i32.add 	$push1=, $pop2, $pop0
                                        # fallthrough-return: $pop1
	end_function
.Lfunc_end52:
	.size	_ZL11fromPayloadPv, .Lfunc_end52-_ZL11fromPayloadPv
                                        # -- End function
	.section	.text._ZL17isMultipleOfSizeTj,"",@
	.type	_ZL17isMultipleOfSizeTj,@function # -- Begin function _ZL17isMultipleOfSizeTj
_ZL17isMultipleOfSizeTj:                # @_ZL17isMultipleOfSizeTj
	.param  	i32
	.result 	i32
	.local  	i32
# %bb.0:
	get_global	$push5=, __stack_pointer
	i32.const	$push6=, 16
	i32.sub 	$push8=, $pop5, $pop6
	tee_local	$push7=, 1, $pop8
	get_local	$push9=, 0
	i32.store	12($pop7), $pop9
	get_local	$push10=, 1
	i32.load	$push4=, 12($pop10)
	i32.const	$push3=, 3
	i32.and 	$push1=, $pop4, $pop3
	i32.const	$push2=, 0
	i32.eq  	$push0=, $pop1, $pop2
                                        # fallthrough-return: $pop0
	end_function
.Lfunc_end53:
	.size	_ZL17isMultipleOfSizeTj, .Lfunc_end53-_ZL17isMultipleOfSizeTj
                                        # -- End function
	.section	.text._ZL17alignedAllocationjj,"",@
	.type	_ZL17alignedAllocationjj,@function # -- Begin function _ZL17alignedAllocationjj
_ZL17alignedAllocationjj:               # @_ZL17alignedAllocationjj
	.param  	i32, i32
	.result 	i32
	.local  	i32
# %bb.0:
	get_global	$push118=, __stack_pointer
	i32.const	$push119=, 112
	i32.sub 	$push129=, $pop118, $pop119
	tee_local	$push128=, 2, $pop129
	set_global	__stack_pointer, $pop128
	get_local	$push134=, 2
	get_local	$push133=, 0
	i32.store	48($pop134), $pop133
	get_local	$push136=, 2
	get_local	$push135=, 1
	i32.store	44($pop136), $pop135
	block   	
	get_local	$push137=, 2
	i32.load	$push1=, 44($pop137)
	i32.const	$push2=, 8
	i32.gt_u	$push0=, $pop1, $pop2
	br_if   	0, $pop0        # 0: down to label111
# %bb.1:
	i32.const	$push3=, .L.str.17
	i32.const	$push4=, .L.str.3
	i32.const	$push5=, 949
	i32.const	$push6=, .L__func__._ZL17alignedAllocationjj
	call    	__assert_fail@FUNCTION, $pop3, $pop4, $pop5, $pop6
	unreachable
.LBB54_2:
	end_block                       # label111:
	block   	
	get_local	$push138=, 2
	i32.load	$push9=, 44($pop138)
	i32.const	$push7=, 7
	i32.and 	$push8=, $pop9, $pop7
	i32.eqz 	$push208=, $pop8
	br_if   	0, $pop208      # 0: down to label112
# %bb.3:
	i32.const	$push10=, .L.str.18
	i32.const	$push11=, .L.str.3
	i32.const	$push12=, 950
	i32.const	$push13=, .L__func__._ZL17alignedAllocationjj
	call    	__assert_fail@FUNCTION, $pop10, $pop11, $pop12, $pop13
	unreachable
.LBB54_4:
	end_block                       # label112:
	get_local	$push141=, 2
	get_local	$push139=, 2
	i32.load	$push20=, 48($pop139)
	get_local	$push140=, 2
	i32.load	$push19=, 44($pop140)
	i32.add 	$push18=, $pop20, $pop19
	i32.call	$push17=, _ZL15tryFromFreeListj@FUNCTION, $pop18
	i32.store	40($pop141), $pop17
	block   	
	block   	
	get_local	$push142=, 2
	i32.load	$push15=, 40($pop142)
	i32.const	$push16=, 0
	i32.eq  	$push14=, $pop15, $pop16
	br_if   	0, $pop14       # 0: down to label114
# %bb.5:
	get_local	$push143=, 2
	i32.load	$push24=, 40($pop143)
	i32.call	$push23=, _ZL10getPayloadP6Region@FUNCTION, $pop24
	get_local	$push144=, 2
	i32.load	$push22=, 44($pop144)
	i32.rem_u	$push21=, $pop23, $pop22
	br_if   	0, $pop21       # 0: down to label114
# %bb.6:
	get_local	$push146=, 2
	get_local	$push145=, 2
	i32.load	$push117=, 40($pop145)
	i32.call	$push116=, _ZL10getPayloadP6Region@FUNCTION, $pop117
	i32.store	52($pop146), $pop116
	br      	1               # 1: down to label113
.LBB54_7:
	end_block                       # label114:
	block   	
	get_local	$push147=, 2
	i32.load	$push26=, 40($pop147)
	i32.const	$push27=, 0
	i32.eq  	$push25=, $pop26, $pop27
	br_if   	0, $pop25       # 0: down to label115
# %bb.8:
	get_local	$push148=, 2
	i32.load	$push28=, 40($pop148)
	call    	_ZL9stopUsingP6Region@FUNCTION, $pop28
.LBB54_9:
	end_block                       # label115:
# %bb.10:
	block   	
	i32.const	$push32=, 0
	i32.load	$push30=, _ZL10lastRegion($pop32)
	i32.const	$push31=, 0
	i32.ne  	$push29=, $pop30, $pop31
	br_if   	0, $pop29       # 0: down to label116
# %bb.11:
	get_local	$push149=, 2
	i32.const	$push37=, 16
	i32.call	$push36=, _ZL15emmalloc_mallocj@FUNCTION, $pop37
	i32.store	36($pop149), $pop36
	block   	
	get_local	$push150=, 2
	i32.load	$push34=, 36($pop150)
	i32.const	$push35=, 0
	i32.ne  	$push33=, $pop34, $pop35
	br_if   	0, $pop33       # 0: down to label117
# %bb.12:
	get_local	$push152=, 2
	get_local	$push151=, 2
	i32.const	$push127=, 56
	i32.add 	$push43=, $pop151, $pop127
	i32.store	68($pop152), $pop43
	get_local	$push153=, 2
	i32.const	$push42=, 4294967295
	i32.store	64($pop153), $pop42
	get_local	$push154=, 2
	i32.load	$push41=, 68($pop154)
	i32.const	$push38=, 0
	i32.store	0($pop41), $pop38
	get_local	$push156=, 2
	get_local	$push155=, 2
	i32.load	$push40=, 56($pop155)
	i32.store	32($pop156), $pop40
	get_local	$push158=, 2
	get_local	$push157=, 2
	i32.const	$push126=, 32
	i32.add 	$push39=, $pop157, $pop126
	i32.store	72($pop158), $pop39
	get_local	$push159=, 2
	i32.const	$push130=, 0
	i32.store	52($pop159), $pop130
	br      	2               # 2: down to label113
.LBB54_13:
	end_block                       # label117:
.LBB54_14:
	end_block                       # label116:
	get_local	$push160=, 2
	i32.const	$push51=, 0
	i32.load	$push52=, _ZL10lastRegion($pop51)
	i32.call	$push50=, _ZL8getAfterP6Region@FUNCTION, $pop52
	i32.const	$push48=, 8
	i32.add 	$push49=, $pop50, $pop48
	i32.store	28($pop160), $pop49
	get_local	$push163=, 2
	get_local	$push161=, 2
	i32.load	$push47=, 28($pop161)
	get_local	$push162=, 2
	i32.load	$push46=, 44($pop162)
	i32.rem_u	$push45=, $pop47, $pop46
	i32.store	24($pop163), $pop45
	block   	
	get_local	$push164=, 2
	i32.load	$push44=, 24($pop164)
	i32.eqz 	$push209=, $pop44
	br_if   	0, $pop209      # 0: down to label118
# %bb.15:
	get_local	$push167=, 2
	get_local	$push165=, 2
	i32.load	$push58=, 44($pop165)
	get_local	$push166=, 2
	i32.load	$push57=, 24($pop166)
	i32.sub 	$push56=, $pop58, $pop57
	i32.store	20($pop167), $pop56
	block   	
	get_local	$push168=, 2
	i32.load	$push55=, 20($pop168)
	i32.const	$push53=, 7
	i32.and 	$push54=, $pop55, $pop53
	i32.eqz 	$push210=, $pop54
	br_if   	0, $pop210      # 0: down to label119
# %bb.16:
	i32.const	$push59=, .L.str.19
	i32.const	$push60=, .L.str.3
	i32.const	$push61=, 982
	i32.const	$push62=, .L__func__._ZL17alignedAllocationjj
	call    	__assert_fail@FUNCTION, $pop59, $pop60, $pop61, $pop62
	unreachable
.LBB54_17:
	end_block                       # label119:
	block   	
	i32.const	$push67=, 0
	i32.load	$push68=, _ZL10lastRegion($pop67)
	i32.call	$push66=, _ZL13getMaxPayloadP6Region@FUNCTION, $pop68
	get_local	$push169=, 2
	i32.load	$push65=, 20($pop169)
	i32.add 	$push64=, $pop66, $pop65
	i32.call	$push63=, _ZL16extendLastRegionj@FUNCTION, $pop64
	br_if   	0, $pop63       # 0: down to label120
# %bb.18:
	get_local	$push171=, 2
	get_local	$push170=, 2
	i32.const	$push125=, 96
	i32.add 	$push74=, $pop170, $pop125
	i32.store	104($pop171), $pop74
	get_local	$push172=, 2
	i32.const	$push73=, 4294967295
	i32.store	100($pop172), $pop73
	get_local	$push173=, 2
	i32.load	$push72=, 104($pop173)
	i32.const	$push69=, 0
	i32.store	0($pop72), $pop69
	get_local	$push175=, 2
	get_local	$push174=, 2
	i32.load	$push71=, 96($pop174)
	i32.store	16($pop175), $pop71
	get_local	$push177=, 2
	get_local	$push176=, 2
	i32.const	$push124=, 16
	i32.add 	$push70=, $pop176, $pop124
	i32.store	108($pop177), $pop70
	get_local	$push178=, 2
	i32.const	$push131=, 0
	i32.store	52($pop178), $pop131
	br      	2               # 2: down to label113
.LBB54_19:
	end_block                       # label120:
	get_local	$push179=, 2
	i32.const	$push82=, 0
	i32.load	$push83=, _ZL10lastRegion($pop82)
	i32.call	$push81=, _ZL8getAfterP6Region@FUNCTION, $pop83
	i32.const	$push79=, 8
	i32.add 	$push80=, $pop81, $pop79
	i32.store	28($pop179), $pop80
	get_local	$push182=, 2
	get_local	$push180=, 2
	i32.load	$push78=, 28($pop180)
	get_local	$push181=, 2
	i32.load	$push77=, 44($pop181)
	i32.rem_u	$push76=, $pop78, $pop77
	i32.store	24($pop182), $pop76
	block   	
	get_local	$push183=, 2
	i32.load	$push75=, 24($pop183)
	i32.eqz 	$push211=, $pop75
	br_if   	0, $pop211      # 0: down to label121
# %bb.20:
	i32.const	$push84=, .L.str.20
	i32.const	$push85=, .L.str.3
	i32.const	$push86=, 988
	i32.const	$push87=, .L__func__._ZL17alignedAllocationjj
	call    	__assert_fail@FUNCTION, $pop84, $pop85, $pop86, $pop87
	unreachable
.LBB54_21:
	end_block                       # label121:
.LBB54_22:
	end_block                       # label118:
	get_local	$push185=, 2
	get_local	$push184=, 2
	i32.load	$push92=, 48($pop184)
	i32.call	$push91=, _ZL14allocateRegionj@FUNCTION, $pop92
	i32.store	12($pop185), $pop91
	block   	
	get_local	$push186=, 2
	i32.load	$push89=, 12($pop186)
	i32.const	$push90=, 0
	i32.ne  	$push88=, $pop89, $pop90
	br_if   	0, $pop88       # 0: down to label122
# %bb.23:
	get_local	$push188=, 2
	get_local	$push187=, 2
	i32.const	$push123=, 80
	i32.add 	$push98=, $pop187, $pop123
	i32.store	92($pop188), $pop98
	get_local	$push189=, 2
	i32.const	$push97=, 4294967295
	i32.store	88($pop189), $pop97
	get_local	$push190=, 2
	i32.load	$push96=, 92($pop190)
	i32.const	$push93=, 0
	i32.store	0($pop96), $pop93
	get_local	$push192=, 2
	get_local	$push191=, 2
	i32.load	$push95=, 80($pop191)
	i32.store	8($pop192), $pop95
	get_local	$push194=, 2
	get_local	$push193=, 2
	i32.const	$push122=, 8
	i32.add 	$push94=, $pop193, $pop122
	i32.store	76($pop194), $pop94
	get_local	$push195=, 2
	i32.const	$push132=, 0
	i32.store	52($pop195), $pop132
	br      	1               # 1: down to label113
.LBB54_24:
	end_block                       # label122:
	get_local	$push197=, 2
	get_local	$push196=, 2
	i32.load	$push103=, 12($pop196)
	i32.call	$push102=, _ZL10getPayloadP6Region@FUNCTION, $pop103
	i32.store	4($pop197), $pop102
	block   	
	get_local	$push198=, 2
	i32.load	$push100=, 4($pop198)
	get_local	$push199=, 2
	i32.load	$push101=, 28($pop199)
	i32.eq  	$push99=, $pop100, $pop101
	br_if   	0, $pop99       # 0: down to label123
# %bb.25:
	i32.const	$push104=, .L.str.21
	i32.const	$push105=, .L.str.3
	i32.const	$push106=, 993
	i32.const	$push107=, .L__func__._ZL17alignedAllocationjj
	call    	__assert_fail@FUNCTION, $pop104, $pop105, $pop106, $pop107
	unreachable
.LBB54_26:
	end_block                       # label123:
	block   	
	get_local	$push200=, 2
	i32.load	$push110=, 4($pop200)
	get_local	$push201=, 2
	i32.load	$push109=, 44($pop201)
	i32.rem_u	$push108=, $pop110, $pop109
	i32.eqz 	$push212=, $pop108
	br_if   	0, $pop212      # 0: down to label124
# %bb.27:
	i32.const	$push111=, .L.str.22
	i32.const	$push112=, .L.str.3
	i32.const	$push113=, 994
	i32.const	$push114=, .L__func__._ZL17alignedAllocationjj
	call    	__assert_fail@FUNCTION, $pop111, $pop112, $pop113, $pop114
	unreachable
.LBB54_28:
	end_block                       # label124:
	get_local	$push203=, 2
	get_local	$push202=, 2
	i32.load	$push115=, 4($pop202)
	i32.store	52($pop203), $pop115
.LBB54_29:
	end_block                       # label113:
	get_local	$push205=, 2
	i32.load	$push204=, 52($pop205)
	set_local	1, $pop204
	get_local	$push206=, 2
	i32.const	$push120=, 112
	i32.add 	$push121=, $pop206, $pop120
	set_global	__stack_pointer, $pop121
	get_local	$push207=, 1
                                        # fallthrough-return: $pop207
	end_function
.Lfunc_end54:
	.size	_ZL17alignedAllocationjj, .Lfunc_end54-_ZL17alignedAllocationjj
                                        # -- End function
	.section	.text._GLOBAL__sub_I_emmalloc.cpp,"",@
	.type	_GLOBAL__sub_I_emmalloc.cpp,@function # -- Begin function _GLOBAL__sub_I_emmalloc.cpp
_GLOBAL__sub_I_emmalloc.cpp:            # @_GLOBAL__sub_I_emmalloc.cpp
# %bb.0:
	call    	__cxx_global_var_init@FUNCTION
	call    	__cxx_global_var_init.1@FUNCTION
	call    	__cxx_global_var_init.2@FUNCTION
                                        # fallthrough-return
	end_function
.Lfunc_end55:
	.size	_GLOBAL__sub_I_emmalloc.cpp, .Lfunc_end55-_GLOBAL__sub_I_emmalloc.cpp
                                        # -- End function
	.type	_ZL11firstRegion,@object # @_ZL11firstRegion
	.section	.bss._ZL11firstRegion,"",@
	.p2align	2
_ZL11firstRegion:
	.int32	0
	.size	_ZL11firstRegion, 4

	.type	_ZL10lastRegion,@object # @_ZL10lastRegion
	.section	.bss._ZL10lastRegion,"",@
	.p2align	2
_ZL10lastRegion:
	.int32	0
	.size	_ZL10lastRegion, 4

	.type	_ZL9freeLists,@object   # @_ZL9freeLists
	.section	.bss._ZL9freeLists,"",@
	.p2align	4
_ZL9freeLists:
	.skip	128
	.size	_ZL9freeLists, 128

	.type	.L.str,@object          # @.str
	.section	.rodata..L.str,"",@
.L.str:
	.asciz	"getAfter(region) <= sbrk(0)"
	.size	.L.str, 28

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata..L.str.3,"",@
.L.str.3:
	.asciz	"emmalloc.cpp"
	.size	.L.str.3, 13

	.type	.L__func__._ZL15emmalloc_mallocj,@object # @__func__._ZL15emmalloc_mallocj
	.section	.rodata..L__func__._ZL15emmalloc_mallocj,"",@
.L__func__._ZL15emmalloc_mallocj:
	.asciz	"emmalloc_malloc"
	.size	.L__func__._ZL15emmalloc_mallocj, 16

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata..L.str.4,"",@
.L.str.4:
	.asciz	"size > 0"
	.size	.L.str.4, 9

	.type	.L__func__._ZL25getBigEnoughFreeListIndexj,@object # @__func__._ZL25getBigEnoughFreeListIndexj
	.section	.rodata..L__func__._ZL25getBigEnoughFreeListIndexj,"",@
.L__func__._ZL25getBigEnoughFreeListIndexj:
	.asciz	"getBigEnoughFreeListIndex"
	.size	.L__func__._ZL25getBigEnoughFreeListIndexj, 26

	.type	.L__func__._ZL16getFreeListIndexj,@object # @__func__._ZL16getFreeListIndexj
	.section	.rodata..L__func__._ZL16getFreeListIndexj,"",@
.L__func__._ZL16getFreeListIndexj:
	.asciz	"getFreeListIndex"
	.size	.L__func__._ZL16getFreeListIndexj, 17

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata..L.str.5,"",@
.L.str.5:
	.asciz	"MIN_FREELIST_INDEX <= index && index < MAX_FREELIST_INDEX"
	.size	.L.str.5, 58

	.type	.L__func__._ZL9useRegionP6Regionj,@object # @__func__._ZL9useRegionP6Regionj
	.section	.rodata..L__func__._ZL9useRegionP6Regionj,"",@
.L__func__._ZL9useRegionP6Regionj:
	.asciz	"useRegion"
	.size	.L__func__._ZL9useRegionP6Regionj, 10

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata..L.str.6,"",@
.L.str.6:
	.asciz	"payloadSize >= size"
	.size	.L.str.6, 20

	.type	.L__func__._ZL22possiblySplitRemainderP6Regionj,@object # @__func__._ZL22possiblySplitRemainderP6Regionj
	.section	.rodata..L__func__._ZL22possiblySplitRemainderP6Regionj,"",@
.L__func__._ZL22possiblySplitRemainderP6Regionj:
	.asciz	"possiblySplitRemainder"
	.size	.L__func__._ZL22possiblySplitRemainderP6Regionj, 23

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata..L.str.7,"",@
.L.str.7:
	.asciz	"extra >= MIN_REGION_SIZE"
	.size	.L.str.7, 25

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata..L.str.8,"",@
.L.str.8:
	.asciz	"totalSplitSize >= MIN_REGION_SIZE"
	.size	.L.str.8, 34

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata..L.str.9,"",@
.L.str.9:
	.asciz	"ptr == getAfter(lastRegion)"
	.size	.L.str.9, 28

	.type	.L__func__._ZL16extendLastRegionj,@object # @__func__._ZL16extendLastRegionj
	.section	.rodata..L__func__._ZL16extendLastRegionj,"",@
.L__func__._ZL16extendLastRegionj:
	.asciz	"extendLastRegion"
	.size	.L__func__._ZL16extendLastRegionj, 17

	.type	.L__func__._ZL13addToFreeListP6Region,@object # @__func__._ZL13addToFreeListP6Region
	.section	.rodata..L__func__._ZL13addToFreeListP6Region,"",@
.L__func__._ZL13addToFreeListP6Region:
	.asciz	"addToFreeList"
	.size	.L__func__._ZL13addToFreeListP6Region, 14

	.type	.L__func__._ZL27mergeIntoExistingFreeRegionP6Region,@object # @__func__._ZL27mergeIntoExistingFreeRegionP6Region
	.section	.rodata..L__func__._ZL27mergeIntoExistingFreeRegionP6Region,"",@
.L__func__._ZL27mergeIntoExistingFreeRegionP6Region:
	.asciz	"mergeIntoExistingFreeRegion"
	.size	.L__func__._ZL27mergeIntoExistingFreeRegionP6Region, 28

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata..L.str.10,"",@
.L.str.10:
	.asciz	"region == lastRegion"
	.size	.L.str.10, 21

	.type	.L__func__._ZL13newAllocationj,@object # @__func__._ZL13newAllocationj
	.section	.rodata..L__func__._ZL13newAllocationj,"",@
.L__func__._ZL13newAllocationj:
	.asciz	"newAllocation"
	.size	.L__func__._ZL13newAllocationj, 14

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata..L.str.11,"",@
.L.str.11:
	.asciz	"(char*)extraPtr == (char*)ptr + sbrkSize"
	.size	.L.str.11, 41

	.type	.L__func__._ZL14allocateRegionj,@object # @__func__._ZL14allocateRegionj
	.section	.rodata..L__func__._ZL14allocateRegionj,"",@
.L__func__._ZL14allocateRegionj:
	.asciz	"allocateRegion"
	.size	.L__func__._ZL14allocateRegionj, 15

	.type	.L.str.12,@object       # @.str.12
	.section	.rodata..L.str.12,"",@
.L.str.12:
	.asciz	"!lastRegion"
	.size	.L.str.12, 12

	.type	.L.str.13,@object       # @.str.13
	.section	.rodata..L.str.13,"",@
.L.str.13:
	.asciz	"!firstRegion"
	.size	.L.str.13, 13

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata..L.str.14,"",@
.L.str.14:
	.asciz	"firstRegion"
	.size	.L.str.14, 12

	.type	.L.str.15,@object       # @.str.15
	.section	.rodata..L.str.15,"",@
.L.str.15:
	.asciz	"((char*)&region->freeInfo()) - ((char*)region) == METADATA_SIZE"
	.size	.L.str.15, 64

	.type	.L__func__._ZL10getPayloadP6Region,@object # @__func__._ZL10getPayloadP6Region
	.section	.rodata..L__func__._ZL10getPayloadP6Region,"",@
.L__func__._ZL10getPayloadP6Region:
	.asciz	"getPayload"
	.size	.L__func__._ZL10getPayloadP6Region, 11

	.type	.L.str.16,@object       # @.str.16
	.section	.rodata..L.str.16,"",@
.L.str.16:
	.asciz	"region->getUsed()"
	.size	.L.str.16, 18

	.type	.L__func__._ZL16emmalloc_reallocPvj,@object # @__func__._ZL16emmalloc_reallocPvj
	.section	.rodata..L__func__._ZL16emmalloc_reallocPvj,"",@
.L__func__._ZL16emmalloc_reallocPvj:
	.asciz	"emmalloc_realloc"
	.size	.L__func__._ZL16emmalloc_reallocPvj, 17

	.type	.L.str.17,@object       # @.str.17
	.section	.rodata..L.str.17,"",@
.L.str.17:
	.asciz	"alignment > ALIGNMENT"
	.size	.L.str.17, 22

	.type	.L__func__._ZL17alignedAllocationjj,@object # @__func__._ZL17alignedAllocationjj
	.section	.rodata..L__func__._ZL17alignedAllocationjj,"",@
.L__func__._ZL17alignedAllocationjj:
	.asciz	"alignedAllocation"
	.size	.L__func__._ZL17alignedAllocationjj, 18

	.type	.L.str.18,@object       # @.str.18
	.section	.rodata..L.str.18,"",@
.L.str.18:
	.asciz	"alignment % ALIGNMENT == 0"
	.size	.L.str.18, 27

	.type	.L.str.19,@object       # @.str.19
	.section	.rodata..L.str.19,"",@
.L.str.19:
	.asciz	"extra % ALIGNMENT == 0"
	.size	.L.str.19, 23

	.type	.L.str.20,@object       # @.str.20
	.section	.rodata..L.str.20,"",@
.L.str.20:
	.asciz	"error == 0"
	.size	.L.str.20, 11

	.type	.L.str.21,@object       # @.str.21
	.section	.rodata..L.str.21,"",@
.L.str.21:
	.asciz	"size_t(ptr) == address"
	.size	.L.str.21, 23

	.type	.L.str.22,@object       # @.str.22
	.section	.rodata..L.str.22,"",@
.L.str.22:
	.asciz	"size_t(ptr) % alignment == 0"
	.size	.L.str.22, 29

	.section	.init_array,"",@
	.p2align	2
	.int32	_GLOBAL__sub_I_emmalloc.cpp@FUNCTION

	.weak	emscripten_builtin_malloc
	.type	emscripten_builtin_malloc,@function
	.hidden	emscripten_builtin_malloc
emscripten_builtin_malloc = malloc@FUNCTION
	.weak	emscripten_builtin_free
	.type	emscripten_builtin_free,@function
	.hidden	emscripten_builtin_free
emscripten_builtin_free = free@FUNCTION
	.ident	"clang version 6.0.0 (tags/RELEASE_600/final)"
	.functype	sbrk, i32, i32
	.functype	__assert_fail, void, i32, i32, i32, i32
