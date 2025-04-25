
ATSWORDMANPOINTS <- 0
ATSWORDMANPOINTSX <- 0
CHANGQING_BLADE_SKILL0 <- -1
CHANGQING_BLADE_SKILL1 <- 229
CHANGQING_BLADE_SKILL2 <- 230
CHANGQING_BLADE_SKILL3 <- 231
CHANGQING_BLADE_SKILL4 <- 232
CHANGQING_BLADE_SKILL5 <- 233
CHANGQING_BLADE_SKILL6 <- 234
CHANGQING_BLADE_SKILL7 <- 235
CHANGQING_BLADE_SKILL8 <- 236
CHANGQING_BLADE_SKILL9 <- 238
CHANGQING_BLADE_SKILL10 <- 239
CHANGQING_BLADE_SKILL11 <- 240
CHANGQING_BLADE_SKILL12 <- 241
CHANGQING_BLADE_SKILL13 <- 243
CHANGQING_BLADE_SKILL14 <- 244
CHANGQING_BLADE_SKILL15 <- 245
CHANGQING_BLADE_SKILL16 <- 246
CHANGQING_BLADE_SKILL17 <- 247
CHANGQING_BLADE_SKILL18 <- 248
CHANGQING_BLADE_SKILL19 <- 228
CHANGQING_BLADE_SKILL20 <- 249

CHANGQING_BLADE_STATE1 <- 229
CHANGQING_BLADE_STATE2 <- 230
CHANGQING_BLADE_STATE3 <- 231
CHANGQING_BLADE_STATE4 <- 232
CHANGQING_BLADE_STATE5 <- 233
CHANGQING_BLADE_STATE6 <- 234
CHANGQING_BLADE_STATE7 <- 235
CHANGQING_BLADE_STATE8 <- 236
CHANGQING_BLADE_STATE9 <- 238
CHANGQING_BLADE_STATE10 <- 239
CHANGQING_BLADE_STATE11 <- 240
CHANGQING_BLADE_STATE12 <- 241
CHANGQING_BLADE_STATE13 <- 243
CHANGQING_BLADE_STATE14 <- 244
CHANGQING_BLADE_STATE15 <- 245
CHANGQING_BLADE_STATE16 <- 246
CHANGQING_BLADE_STATE17 <- 247
CHANGQING_BLADE_STATE18 <- 248
CHANGQING_BLADE_STATE19 <- 228
CHANGQING_BLADE_STATE20 <- 249

CAHNGQING_ATSWORDMAN_INFOS <- {
	["A"] = {
		[CHANGQING_BLADE_SKILL0] = [624,625,626,627,628,629,630],
		[CHANGQING_BLADE_SKILL1] = [636,637,632,633,634,635],
		[CHANGQING_BLADE_SKILL2] = [640,638,639],
		[CHANGQING_BLADE_SKILL3] = [641,642],
		[CHANGQING_BLADE_SKILL4] = [646,643,647,648,649,644,645],
		[CHANGQING_BLADE_SKILL5] = [652,653],
		[CHANGQING_BLADE_SKILL6] = [659,658,654,656],
		[CHANGQING_BLADE_SKILL7] = [660],
		[CHANGQING_BLADE_SKILL8] = [661,662],
		[CHANGQING_BLADE_SKILL9] = [672,670,669,668,667],
		[CHANGQING_BLADE_SKILL10] = [674,673],
		[CHANGQING_BLADE_SKILL11] = [678,677,675,676],
		[CHANGQING_BLADE_SKILL12] = [679,680,681],
		[CHANGQING_BLADE_SKILL13] = [683,682,684,685],
		[CHANGQING_BLADE_SKILL14] = [691,686,688,689],
		[CHANGQING_BLADE_SKILL15] = [693,692],
		[CHANGQING_BLADE_SKILL16] = [694,695,696],
		[CHANGQING_BLADE_SKILL17] = [698,699,697],
		[CHANGQING_BLADE_SKILL18] = [701,700],
		[CHANGQING_BLADE_SKILL19] = [631],
		[CHANGQING_BLADE_SKILL20] = [702,706,705,703,704]
	}
}

IRDSQRCharacter.pushScriptFiles("character/atswordman/changqing_751675335_common.nut");
IRDSQRCharacter.pushScriptFiles("character/atswordman/atswordman_common.nut");
IRDSQRCharacter.pushScriptFiles("character/atswordman/passive_skill_atswordman.nut");
IRDSQRCharacter.pushPassiveObj("character/atswordman/po_changqing_atswordman.nut", 24383);
IRDSQRCharacter.pushPassiveObj("character/atswordman/po_changqing_atswordmanex.nut", 24381);
IRDSQRCharacter.pushPassiveObj("character/atswordman/po_changqing_atswordmanexo.nut", 24387);

AIMPOINT_ATSWORDMAN <- 0 
IRDSQRCharacter.pushState(10, "character/atswordman/liftslash/liftslash.nut", "Liftslash", 86, 86);
IRDSQRCharacter.pushState(10, "character/atswordman/darkslash/darkslash.nut", "Darkslash", 143, 143);
IRDSQRCharacter.pushState(10, "character/atswordman/1_swordmaster/weaponcombo/weaponcombo.nut", "Weaponcombo", 147, 147);
IRDSQRCharacter.pushState(10, "character/atswordman/1_swordmaster/counterslash/counterslash.nut", "Counterslash", 144, 144);
IRDSQRCharacter.pushState(10, "character/atswordman/1_swordmaster/atspeedslash/atspeedslash.nut", "Atspeedslash", 145, 145);
IRDSQRCharacter.pushState(10, "character/atswordman/1_swordmaster/autoguard/autoguard.nut", "Autoguard", 126, 126);
IRDSQRCharacter.pushState(10, "character/atswordman/1_swordmaster/overdrive/overdrive.nut", "Overdrive", 146, 146);
IRDSQRCharacter.pushState(10, "character/atswordman/gorecross/gorecross.nut", "Gorecross", 94, 94);
IRDSQRCharacter.pushState(10, "character/atswordman/siryun/siryun.nut", "Siryun", 88, 88);
IRDSQRCharacter.pushState(10, "character/atswordman/mountaincrash/mountaincrash.nut", "Mountaincrash", 87, 87);
IRDSQRCharacter.pushState(10, "character/atswordman/guard/guard.nut", "Guard", 85, 85);
IRDSQRCharacter.pushState(10, "character/atswordman/atswordman_throw.nut", "ATSwordmanThrow", 13, -1);
IRDSQRCharacter.pushState(10, "character/atswordman/snakeshadow/snakeshadow.nut", "Snakeshadow", 91, 91);
IRDSQRCharacter.pushState(10, "character/atswordman/spinslash/spinslash.nut", "Spinslash", 93, 93);
IRDSQRCharacter.pushState(10, "character/atswordman/execution/execution.nut", "AtExecution", 134, 34);
IRDSQRCharacter.pushState(10, "character/atswordman/2_demonslayer/wildwhip/wildwhip.nut", "Wildwhip", 153, 153);
IRDSQRCharacter.pushState(10, "character/atswordman/2_demonslayer/blooddance/blooddance.nut", "Blooddance", 155, 155);
IRDSQRCharacter.pushState(10, "character/atswordman/2_demonslayer/splitdemonsword/splitdemonsword.nut", "Splitdemonsword", 156, 156);
IRDSQRCharacter.pushState(10, "character/atswordman/chainslash/chainslash.nut", "Chainslash", 132, 32);
IRDSQRCharacter.pushState(10, "character/atswordman/1_swordmaster/changesword/changesword.nut", "Changesword", 96, 96);
IRDSQRCharacter.pushState(10, "character/atswordman/1_swordmaster/upperslash/upperslash.nut", "Upperslash", 128, 128);
IRDSQRCharacter.pushState(10, "character/atswordman/1_swordmaster/illusionblade/illusionblade.nut", "Illusionblade", 131, 131);
IRDSQRCharacter.pushState(10, "character/atswordman/1_swordmaster/thunderslash/thunderslash.nut", "Thunderslash", 169, 132);
IRDSQRCharacter.pushState(10, "character/atswordman/1_swordmaster/halfmoon/halfmoon.nut", "Halfmoon", 133, 133);
IRDSQRCharacter.pushState(10, "character/atswordman/1_swordmaster/atflash/atflash.nut", "Atflash", 174, 134);
IRDSQRCharacter.pushState(10, "character/atswordman/1_swordmaster/excalibur/excalibur.nut", "Excalibur", 135, 135);
IRDSQRCharacter.pushState(10, "character/atswordman/4_darktempler/souldrain/souldrain.nut", "SoulDrain", 59, 59);
IRDSQRCharacter.pushState(10, "character/atswordman/4_darktempler/shadowhiding/shadowhiding.nut", "ShadowHiding", 60, 60);
IRDSQRCharacter.pushState(10, "character/atswordman/4_darktempler/shadowbinding/shadowbinding.nut", "ShadowBinding", 61, 61);
IRDSQRCharacter.pushState(10, "character/atswordman/4_darktempler/shadowlancer/shadowlancer.nut", "ShadowLancer", 63, 63);
IRDSQRCharacter.pushState(10, "character/atswordman/4_darktempler/shadowharvest/shadowharvest.nut", "ShadowHarvest", 64, 64);
IRDSQRCharacter.pushState(10, "character/atswordman/1_swordmaster/devilslash/devilslash.nut", "Devilslash", 136, 136);
IRDSQRCharacter.pushState(10, "character/atswordman/1_swordmaster/timeslash/timeslash.nut", "Timeslash", 142, 142);
IRDSQRCharacter.pushState(10, "character/atswordman/2_vegabond/inhalation/inhalation.nut", "Inhalation", 211, 211);
IRDSQRCharacter.pushState(10, "character/atswordman/2_vegabond/fivecircle/fivecircle.nut", "Fivecircle", 209, 209);
IRDSQRCharacter.pushState(10, "character/atswordman/2_vegabond/rapidstep/rapidstep.nut", "Rapidstep", 210, 210);
IRDSQRCharacter.pushState(10, "character/atswordman/2_vegabond/soarcut/soarcut.nut", "Soarcut", 213, 213);
IRDSQRCharacter.pushState(10, "character/atswordman/1_swordmaster/dragonupex/dragonupex.nut", "Dragonupex", 137, 137);
IRDSQRCharacter.pushState(10, "character/atswordman/1_swordmaster/magicswordshoot/magicswordshoot.nut", "Magicswordshoot", 138, 138);
IRDSQRCharacter.pushState(10, "character/atswordman/1_swordmaster/jackcatch/jackcatch.nut", "Jackcatch", 139, 139);
IRDSQRCharacter.pushState(10, "character/atswordman/1_swordmaster/breaksworddance/breaksworddance.nut", "Breaksworddance", 140, 140);
IRDSQRCharacter.pushState(10, "character/atswordman/1_swordmaster/laevateinn/laevateinn.nut", "Laevateinn", 141, 141);
IRDSQRCharacter.pushState(10, "character/atswordman/atswordman_throw.nut", "AtSwordman_Basic", 0, -1);
IRDSQRCharacter.pushState(10, "character/atswordman/2_demonslayer/whipswordbal/whipswordbal.nut", "Whipswordbal", 149, 149);
IRDSQRCharacter.pushState(10, "character/atswordman/2_demonslayer/snakedance/snakedance.nut", "Snakedance", 167, 167);
IRDSQRCharacter.pushState(10, "character/atswordman/2_demonslayer/atfrenzy/atfrenzy.nut", "Atfrenzy", 150, 150);
IRDSQRCharacter.pushState(10, "character/atswordman/2_demonslayer/pikesword/pikesword.nut", "Pikesword", 151, 151);
IRDSQRCharacter.pushState(10, "character/atswordman/2_demonslayer/clawblade/clawblade.nut", "Clawblade", 152, 152);
IRDSQRCharacter.pushState(10, "character/atswordman/atswordman_basic.nut", "AtSwordman_Basic2", 7, -1);
IRDSQRCharacter.pushState(10, "character/atswordman/atswordman_basic.nut", "AtSwordman_Basic3", 14, -1);
IRDSQRCharacter.pushState(10, "character/atswordman/2_demonslayer/groupdance/groupdance.nut", "Groupdance", 157, 157);
IRDSQRCharacter.pushState(10, "character/atswordman/2_demonslayer/darkstrike/darkstrike.nut", "Darkstrike", 158, 158);
IRDSQRCharacter.pushState(10, "character/atswordman/2_demonslayer/gigablade/gigablade.nut", "Gigablade", 160, 160);
IRDSQRCharacter.pushState(10, "character/atswordman/2_demonslayer/phnom/phnom.nut", "Phnom", 161, 161);
IRDSQRCharacter.pushState(10, "character/atswordman/2_demonslayer/blooddemonsword/blooddemonsword.nut", "Blooddemonsword", 162, 162);
IRDSQRCharacter.pushState(10, "character/atswordman/2_demonslayer/gigaslash/gigaslash.nut", "Gigaslash", 164, 164);
IRDSQRCharacter.pushState(10, "character/atswordman/2_demonslayer/ultimateblade/ultimateblade.nut", "Ultimateblade", 165, 165);
IRDSQRCharacter.pushState(10, "character/atswordman/2_demonslayer/ragnarok/ragnarok.nut", "Ragnarok", 166, 166);
IRDSQRCharacter.pushState(10, "character/atswordman/4_darktempler/madness/madness.nut", "Madness", 72, 72);
IRDSQRCharacter.pushState(10, "character/atswordman/4_darktempler/buckshot/buckshot.nut", "BuckShot", 75, 75);
IRDSQRCharacter.pushState(10, "character/atswordman/atswordman_basic.nut", "AtSwordman_Basic4", 115, -1);
IRDSQRCharacter.pushState(10, "character/atswordman/4_darktempler/scaffold/scaffold.nut", "Scaffold", 67, 67);
IRDSQRCharacter.pushState(10, "character/atswordman/4_darktempler/shadowpuppet/shadowpuppet.nut", "ShadowPuppet", 68, 68);
IRDSQRCharacter.pushState(10, "character/atswordman/4_darktempler/blackmirror/blackmirror.nut", "BlackMirror", 69, 69);
IRDSQRCharacter.pushState(10, "character/atswordman/4_darktempler/deadlycape/deadlycape.nut", "DeadlyCape", 70, 70);
IRDSQRCharacter.pushState(10, "character/atswordman/4_darktempler/destroyer/destroyer.nut", "Destroyer", 71, 71);
IRDSQRCharacter.pushState(10, "character/atswordman/4_darktempler/doomsday/doomsday.nut", "Doomsday", 74, 74);
IRDSQRCharacter.pushState(10, "character/atswordman/atswordman_basic.nut", "AtSwordman_Basic5", 108, -1);
IRDSQRCharacter.pushState(10, "character/atswordman/4_darktempler/congest/congest.nut", "Congest", 102, 76);
IRDSQRCharacter.pushState(10, "character/atswordman/2_vegabond/dualweapon/dualweapon.nut", "Dualweapon", 202, 202);
IRDSQRCharacter.pushState(10, "character/atswordman/2_vegabond/revolvingsword/revolvingsword.nut", "Revolvingsword", 227, 227);
IRDSQRCharacter.pushState(10, "character/atswordman/2_vegabond/threeside/threeside.nut", "Threeside", 204, 204);
IRDSQRCharacter.pushState(10, "character/atswordman/2_vegabond/earthpressure/earthpressure.nut", "Earthpressure", 214, 214);
IRDSQRCharacter.pushState(10, "character/atswordman/2_vegabond/nearblow/nearblow.nut", "Nearblow", 215, 215);
IRDSQRCharacter.pushState(10, "character/atswordman/2_vegabond/coalban/coalban.nut", "Coalban", 216, 216);
IRDSQRCharacter.pushState(10, "character/atswordman/4_darktempler/starfall/starfall.nut", "StarFall", 73, 73);
IRDSQRCharacter.pushState(10, "character/atswordman/4_darktempler/immolation/immolation.nut", "Immolation", 168, 168);
IRDSQRCharacter.pushState(10, "character/atswordman/4_darktempler/jihad/jihad.nut", "Jihad", 82, 82);
IRDSQRCharacter.pushState(10, "character/atswordman/4_darktempler/deusexray/deusexray.nut", "DeusExray", 199, 199);
IRDSQRCharacter.pushState(10, "character/atswordman/4_darktempler/punishment/punishment.nut", "Punishment", 81, 81);
IRDSQRCharacter.pushState(10, "character/atswordman/2_vegabond/overblowslash/overblowslash.nut", "Overblowslash", 217, 217);
IRDSQRCharacter.pushState(10, "character/atswordman/2_vegabond/blastsword/blastsword.nut", "Blastsword", 218, 218);
IRDSQRCharacter.pushState(10, "character/atswordman/2_vegabond/fistofexplosion/fistofexplosion.nut", "Fistofexplosion", 219, 219);
IRDSQRCharacter.pushState(10, "character/atswordman/2_vegabond/cometblade/cometblade.nut", "Cometblade", 220, 220);
IRDSQRCharacter.pushState(10, "character/atswordman/2_vegabond/fatalflower/fatalflower.nut", "Fatalflower", 221, 221);
IRDSQRCharacter.pushState(10, "character/atswordman/2_vegabond/zweivoltageex/zweivoltageex.nut", "Zweivoltageex", 222, 222);
IRDSQRCharacter.pushState(10, "character/atswordman/2_vegabond/bigjang/bigjang.nut", "Bigjang", 223, 223);
IRDSQRCharacter.pushState(10, "character/atswordman/2_vegabond/flowerbladedance/flowerbladedance.nut", "Flowerbladedance", 224, 224);
IRDSQRCharacter.pushState(10, "character/atswordman/2_vegabond/hermittriplestep/hermittriplestep.nut", "Hermittriplestep", 225, 225);
IRDSQRCharacter.pushState(10, "character/atswordman/2_vegabond/moonlightslash/moonlightslash.nut", "Moonlightslash", 226, 226);

IRDSQRCharacter.pushState(10, "character/atswordman/5_bladeshadows/doubleshot/doubleshot.nut", "DoubleShot", 236, 236);
IRDSQRCharacter.pushState(10, "character/atswordman/5_bladeshadows/trace/trace.nut", "Trace", 228, 228);
IRDSQRCharacter.pushState(10, "character/atswordman/5_bladeshadows/rustynail/rustynail.nut", "Rustynail", 243, 243);
IRDSQRCharacter.pushState(10, "character/atswordman/5_bladeshadows/sliceimpact/sliceimpact.nut", "SliceImpact", 247, 247);
IRDSQRCharacter.pushState(10, "character/atswordman/5_bladeshadows/dangeroushook/dangeroushook.nut", "DangerouShook", 233, 233);
IRDSQRCharacter.pushState(10, "character/atswordman/5_bladeshadows/blackout/blackout.nut", "BlackOut", 229, 229);
IRDSQRCharacter.pushState(10, "character/atswordman/5_bladeshadows/blendingpain/blendingpain.nut", "BlendingPain", 230, 230);
IRDSQRCharacter.pushState(10, "character/atswordman/5_bladeshadows/hangover/hangover.nut", "HangOver", 238, 238);
IRDSQRCharacter.pushState(10, "character/atswordman/5_bladeshadows/shatteredglass/shatteredglass.nut", "ShatteredGlass", 245, 245);
IRDSQRCharacter.pushState(10, "character/atswordman/5_bladeshadows/deepdusk/deepdusk.nut", "DeepDusk", 235, 235);
IRDSQRCharacter.pushState(10, "character/atswordman/5_bladeshadows/shakerblast/shakerblast.nut", "ShakerBlast", 244, 244);
IRDSQRCharacter.pushState(10, "character/atswordman/5_bladeshadows/wildflower/wildflower.nut", "WildFlower", 249, 249);
IRDSQRCharacter.pushState(10, "character/atswordman/5_bladeshadows/nightfall/nightfall.nut", "NightFall", 240, 240);
IRDSQRCharacter.pushState(10, "character/atswordman/5_bladeshadows/lastorder/lastorder.nut", "LastOrder", 239, 239);
IRDSQRCharacter.pushState(10, "character/atswordman/5_bladeshadows/showdown/showdown.nut", "ShowDown", 246, 246);
IRDSQRCharacter.pushState(10, "character/atswordman/5_bladeshadows/overpace/overpace.nut", "OverPace", 241, 241);
IRDSQRCharacter.pushState(10, "character/atswordman/5_bladeshadows/bullseye/bullseye.nut", "BullsEye", 231, 231);
IRDSQRCharacter.pushState(10, "character/atswordman/5_bladeshadows/straightshot/straightshot.nut", "StraightShot", 248, 248);
IRDSQRCharacter.pushState(10, "character/atswordman/5_bladeshadows/catharsis/catharsis.nut", "Catharsis", 232, 232);
IRDSQRCharacter.pushState(10, "character/atswordman/5_bladeshadows/daybreak/daybreak.nut", "DayBreak", 234, 234);


