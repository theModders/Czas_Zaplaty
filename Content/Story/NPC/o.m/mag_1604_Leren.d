instance mag_1604_Leren (Npc_Default)
{
	//-------- primary data --------
	
	name 		=	"Leren";
	npctype		=	NPCTYPE_MAIN;
	guild 		=	GIL_MAG;  
   flags =	NPC_FLAG_IMMORTAL;   
	level 		=	50;
	voice 		=	14;
	id 			=	1604;

	//-------- abilities --------
	attribute[ATR_STRENGTH] 	= 45;
	attribute[ATR_DEXTERITY] 	= 55;
	attribute[ATR_MANA_MAX] 	= 1100;
	attribute[ATR_MANA] 		= 1100;
	attribute[ATR_HITPOINTS_MAX]= 600;
	attribute[ATR_HITPOINTS] 	= 600;

	//-------- visuals --------
	// 				animations
	Mdl_SetVisual		(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds	(self,"Humans_Mage.mds");
	//			body mesh     ,bdytex,skin,head mesh     ,headtex,teethtex,ruestung	
	Mdl_SetVisualBody (self,"hum_body_Naked0",1,1,"Hum_Head_Bald",78,4,MAG_ARMOR_H);
	
	B_Scale (self);
	Mdl_SetModelFatness (self,0);
	
	fight_tactic	=	FAI_HUMAN_MAGE;	
	
	//-------- Talente --------
	Npc_SetTalentSkill	(self,HACK_NPC_TALENT_MAGE,6);			
	Npc_SetAivar(self,TALENT_MAGIC_CIRCLE,  (		6));
	Npc_SetTalentSkill (self,NPC_TALENT_1H,1);	
			
	//-------- Spells --------        
	CreateInvItem 		(self,ItArRuneBreathOfDeath);
//	CreateInvItem 		(self,ItArRuneThunderbolt);


	//-------- inventory --------                                    
	EquipItem (self,MAG_MW_01);
	//-------------Daily Routine-------------
	/*B_InitNPCAddins(self);*/		daily_routine = Rtn_prestart_1604;
};
FUNC VOID Rtn_prestart_1604 ()
{	
   TA_SitAround	(03,20,05,30,"PATHMAGE");
   TA_SitAround	(05,31,02,19,"PATHMAGE");
};
FUNC VOID Rtn_start_1604 ()
{
   TA_SmallTalk (07,30,21,00,"TALK_MAGES");//Parvez
   TA_PracticeMagic (21,00,22,00,"HC_BRIDGE_ON");
   TA_SitAround (22,00,07,30,"WAY_PATHMAGE");
};
Func Void Rtn_rytual_1604 ()
{
   TA_SmallTalk (05,00,22,00,"TALK_MAGES");//Parvez
   TA_SitAround (22,00,23,10,"WAY_PATHMAGE");	
   TA_Leren_RytualKatrakanat(23,10,04,59,"OW_PATH_02"); 	 
};
Func Void Rtn_rytualAfter_1604 ()
{
	TA_Stay(23,10,23,09,"OW_PATH_02"); 	 
};
FUNC VOID Rtn_RodneyMage_1604 () 
{ 
	TA_Speech (0,00,12,00,"TALK_MAGES"); 
	TA_Speech (12,00,0,00,"TALK_MAGES"); 
};
FUNC VOID Rtn_start2_1604 ()
{
   TA_SmallTalk (07,30,21,00,"TALK_MAGES");//Parvez
   TA_PracticeMagic (21,00,22,00,"HC_BRIDGE_ON");
   TA_SmallTalk (22,30,00,00,"TALK_MAGES");//Rodney
   TA_SitAround (00,00,07,30,"WAY_PATHMAGE");
}; 
FUNC VOID Rtn_fight_1604 ()
{
	TA_Stay		(00,00,00,10,"OCR_OUTSIDE_HUT_1");
	TA_Stay		(00,10,00,20,"OCR_OUTSIDE_HUT_2");
	TA_Stay		(00,20,00,30,"OCR_OUTSIDE_HUT_3");
	TA_Stay		(00,30,00,40,"OCR_OUTSIDE_HUT_4");
	TA_Stay		(00,40,00,50,"OCR_OUTSIDE_HUT_5");
	TA_Stay		(00,50,01,00,"OCR_OUTSIDE_HUT_6");
	TA_Stay		(01,00,01,10,"OCR_OUTSIDE_HUT_7");
	TA_Stay		(01,10,01,20,"OCR_OUTSIDE_HUT_8");
	TA_Stay		(01,20,01,30,"OCR_OUTSIDE_HUT_9");
	TA_Stay		(01,30,01,40,"OCR_OUTSIDE_HUT_10");
	TA_Stay		(01,40,01,50,"OCR_OUTSIDE_HUT_11");
	TA_Stay		(01,50,02,00,"OCR_OUTSIDE_HUT_12");
	TA_Stay		(02,00,02,10,"OCR_OUTSIDE_HUT_13");
	TA_Stay		(02,10,02,20,"OCR_OUTSIDE_HUT_14");
	TA_Stay		(02,20,02,30,"OCR_OUTSIDE_HUT_15");
	TA_Stay		(02,30,02,40,"OCR_OUTSIDE_HUT_16");
	TA_Stay		(02,40,02,50,"OCR_OUTSIDE_HUT_17");
	TA_Stay		(02,50,03,00,"OCR_OUTSIDE_HUT_18");
	TA_Stay		(03,00,03,10,"OCR_OUTSIDE_HUT_19");
	TA_Stay		(03,10,03,20,"OCR_OUTSIDE_HUT_20");
	TA_Stay		(03,20,03,30,"OCR_OUTSIDE_HUT_21");
	TA_Stay		(03,30,03,40,"OCR_OUTSIDE_HUT_22");
	TA_Stay		(03,40,03,50,"OCR_OUTSIDE_HUT_23");
	TA_Stay		(03,50,04,00,"OCR_OUTSIDE_HUT_24");
	TA_Stay		(04,00,04,10,"OCR_OUTSIDE_HUT_25");
	TA_Stay		(04,10,04,20,"OCR_OUTSIDE_HUT_26");
	TA_Stay		(04,20,04,30,"OCR_OUTSIDE_HUT_27");
	TA_Stay		(04,30,04,40,"OCR_OUTSIDE_HUT_28");
	TA_Stay		(04,40,04,50,"OCR_OUTSIDE_HUT_29");
	TA_Stay		(04,50,05,00,"OCR_OUTSIDE_HUT_30");
	TA_Stay		(05,00,05,10,"OCR_OUTSIDE_HUT_31");
	TA_Stay		(05,10,05,20,"OCR_OUTSIDE_HUT_32");
	TA_Stay		(05,20,05,30,"OCR_OUTSIDE_HUT_33");
	TA_Stay		(05,30,05,40,"OCR_OUTSIDE_HUT_34");
	TA_Stay		(05,40,05,50,"OCR_OUTSIDE_HUT_35");
	TA_Stay		(05,50,06,00,"OCR_OUTSIDE_HUT_36");
	TA_Stay		(06,00,06,10,"OCR_OUTSIDE_HUT_37");
	TA_Stay		(06,10,06,20,"OCR_OUTSIDE_HUT_38");
	TA_Stay		(06,20,06,30,"OCR_OUTSIDE_HUT_39");
	TA_Stay		(06,30,06,40,"OCR_OUTSIDE_HUT_40");
	TA_Stay		(06,40,06,50,"OCR_OUTSIDE_HUT_41");
	TA_Stay		(06,50,07,00,"OCR_OUTSIDE_HUT_42");
	TA_Stay		(06,00,07,10,"OCR_OUTSIDE_HUT_43");
	TA_Stay		(07,10,07,20,"OCR_OUTSIDE_HUT_44");
	TA_Stay		(07,20,07,30,"OCR_OUTSIDE_HUT_45");
	TA_Stay		(07,30,07,40,"OCR_OUTSIDE_HUT_46");
	TA_Stay		(07,40,07,50,"OCR_OUTSIDE_HUT_47");
	TA_Stay		(07,50,08,00,"OCR_OUTSIDE_HUT_48");
	TA_Stay		(08,00,08,10,"OCR_OUTSIDE_HUT_49");
	TA_Stay		(08,10,08,20,"OCR_OUTSIDE_HUT_50");
	TA_Stay		(08,20,08,30,"OCR_OUTSIDE_HUT_51");
	TA_Stay		(08,30,08,40,"OCR_OUTSIDE_HUT_52");
	TA_Stay		(08,40,08,50,"OCR_OUTSIDE_HUT_53");
	TA_Stay		(08,50,09,00,"OCR_OUTSIDE_HUT_54");
	TA_Stay		(09,00,09,10,"OCR_OUTSIDE_HUT_55");
	TA_Stay		(09,10,09,20,"OCR_OUTSIDE_HUT_56");
	TA_Stay		(09,20,09,30,"OCR_OUTSIDE_HUT_57");
	TA_Stay		(09,30,09,40,"OCR_OUTSIDE_HUT_58");
	TA_Stay		(09,40,09,50,"OCR_OUTSIDE_HUT_59");
	TA_Stay		(09,50,10,00,"PRZYWISIELCU");
	TA_Stay		(10,00,10,10,"PRZYWISIELCU");
	TA_Stay		(10,10,10,20,"OCR_OUTSIDE_HUT_62");
	TA_Stay		(10,20,10,30,"OCR_OUTSIDE_HU_63");
	TA_Stay		(10,30,10,40,"OCR_OUTSIDE_HU_64");
	TA_Stay		(10,40,10,50,"OCR_OUTSIDE_HUT_65");
	TA_Stay		(10,50,10,00,"OCR_OUTSIDE_HUT_66");
	TA_Stay		(11,00,11,10,"OCR_OUTSIDE_HUT_67");
	TA_Stay		(11,10,11,20,"OCR_OUTSIDE_HUT_68");
	TA_Stay		(11,20,11,30,"OCR_OUTSIDE_HUT_69");
	TA_Stay		(11,30,11,40,"OCR_OUTSIDE_HUT_70");
	TA_Stay		(11,40,11,50,"OCR_OUTSIDE_HUT_71");
	TA_Stay		(11,50,12,00,"OCR_OUTSIDE_HUT_72");
	TA_Stay		(12,00,12,10,"OCR_OUTSIDE_HUT_73");
	TA_Stay		(12,10,11,20,"OCR_OUTSIDE_HUT_74");
	TA_Stay		(12,20,11,30,"OCR_OUTSIDE_HUT_75");
	TA_Stay		(12,30,11,40,"OCR_OUTSIDE_HUT_76");
	TA_Stay		(12,40,11,50,"OCR_OUTSIDE_HUT_77");
	TA_Stay		(12,50,12,00,"OCR_OUTSIDE_HUT_73");
	TA_Stay		(13,00,12,10,"OCR_OUTSIDE_HUT_21");
	TA_Stay		(13,00,13,10,"OCR_OUTSIDE_HUT_35");
	TA_Stay		(13,10,13,20,"OCR_OUTSIDE_HUT_44");
	TA_Stay		(13,20,13,30,"OCR_OUTSIDE_HUT_55");
	TA_Stay		(13,30,13,40,"OCR_OUTSIDE_HUT_66");
	TA_Stay		(13,40,13,50,"OCR_OUTSIDE_HUT_77");
	TA_Stay		(13,50,14,00,"OCR_OUTSIDE_HUT_11");
	TA_Stay		(14,00,14,10,"OCR_OUTSIDE_HUT_22");
	TA_Stay		(14,10,14,20,"OCR_OUTSIDE_HUT_33");
	TA_Stay		(14,20,14,30,"OCR_OUTSIDE_HUT_44");
	TA_Stay		(14,30,14,40,"OCR_OUTSIDE_HUT_55");
	TA_Stay		(14,40,14,50,"OCR_OUTSIDE_HUT_66");
	TA_Stay		(14,50,15,00,"OCR_OUTSIDE_HUT_66");
	TA_Stay		(15,00,15,10,"OCR_OUTSIDE_HUT_77");
	TA_Stay		(15,10,15,20,"OCR_OUTSIDE_HUT_11");
	TA_Stay		(15,20,15,30,"OCR_OUTSIDE_HUT_11");
	TA_Stay		(15,30,15,40,"OCR_OUTSIDE_HUT_11");
	TA_Stay		(15,40,15,50,"OCR_OUTSIDE_HUT_22");
	TA_Stay		(15,50,16,00,"OCR_OUTSIDE_HUT_22");
	TA_Stay		(16,00,16,10,"OCR_OUTSIDE_HUT_22");
	TA_Stay		(16,10,16,20,"OCR_OUTSIDE_HUT_33");
	TA_Stay		(16,20,16,30,"OCR_OUTSIDE_HUT_44");
	TA_Stay		(16,30,16,40,"OCR_OUTSIDE_HUT_55");
	TA_Stay		(16,40,16,50,"OCR_OUTSIDE_HUT_66");
	TA_Stay		(16,50,17,00,"OCR_OUTSIDE_HUT_77");
	TA_Stay		(17,00,17,10,"OCR_OUTSIDE_HUT_11");
	TA_Stay		(17,10,17,20,"OCR_OUTSIDE_HUT_22");
	TA_Stay		(17,20,17,30,"OCR_OUTSIDE_HUT_33");
	TA_Stay		(17,30,17,40,"OCR_OUTSIDE_HUT_33");
	TA_Stay		(17,40,17,50,"OCR_OUTSIDE_HUT_33");
	TA_Stay		(17,50,18,00,"OCR_OUTSIDE_HUT_44");
	TA_Stay		(18,00,18,10,"OCR_OUTSIDE_HUT_55");
	TA_Stay		(18,10,18,20,"OCR_OUTSIDE_HUT_55");
	TA_Stay		(18,20,18,30,"OCR_OUTSIDE_HUT_66");
	TA_Stay		(18,30,18,40,"OCR_OUTSIDE_HUT_66");
	TA_Stay		(18,40,18,50,"OCR_OUTSIDE_HUT_77");
	TA_Stay		(18,50,19,00,"OCR_OUTSIDE_HUT_77");
	TA_Stay		(19,00,19,10,"OCR_OUTSIDE_HUT_11");
	TA_Stay		(19,10,19,20,"OCR_OUTSIDE_HUT_19");
	TA_Stay		(19,20,19,30,"OCR_OUTSIDE_HUT_22");
	TA_Stay		(19,30,19,40,"OCR_OUTSIDE_HUT_22");
	TA_Stay		(19,40,19,50,"OCR_OUTSIDE_HUT_22");
	TA_Stay		(19,50,20,00,"OCR_OUTSIDE_HUT_33");
	TA_Stay		(20,00,20,10,"OCR_OUTSIDE_HUT_33");
	TA_Stay		(20,10,20,20,"OCR_OUTSIDE_HUT_33");
	TA_Stay		(20,20,20,30,"OCR_OUTSIDE_HUT_33");
	TA_Stay		(20,30,20,40,"OCR_OUTSIDE_HUT_44");
	TA_Stay		(20,40,20,50,"OCR_OUTSIDE_HUT_44");
	TA_Stay		(20,50,21,00,"OCR_OUTSIDE_HUT_44");
	TA_Stay		(21,00,21,10,"OCR_OUTSIDE_HUT_66");
	TA_Stay		(21,10,21,20,"OCR_OUTSIDE_HUT_44");
	TA_Stay		(21,20,21,30,"OCR_OUTSIDE_HUT_66");
	TA_Stay		(21,30,21,40,"OCR_OUTSIDE_HUT_66");
	TA_Stay		(21,40,21,50,"OCR_OUTSIDE_HUT_55");
	TA_Stay		(21,50,22,00,"OCR_OUTSIDE_HUT_66");
	TA_Stay		(22,00,22,10,"OCR_OUTSIDE_HUT_66");
	TA_Stay		(22,10,22,20,"OCR_OUTSIDE_HUT_11");
	TA_Stay		(22,20,22,30,"OCR_OUTSIDE_HUT_44");
	TA_Stay		(22,30,22,40,"OCR_OUTSIDE_HUT_33");
	TA_Stay		(22,40,22,50,"OCR_OUTSIDE_HUT_22");
	TA_Stay		(22,50,23,00,"OCR_OUTSIDE_HUT_76");
	TA_Stay		(23,00,23,10,"OCR_OUTSIDE_HUT_66");
	TA_Stay		(23,10,23,20,"OCR_OUTSIDE_HUT_44");
	TA_Stay		(23,20,23,30,"OCR_OUTSIDE_HUT_33");
	TA_Stay		(23,30,23,31,"OCR_OUTSIDE_HUT_11");
	TA_PracticeMagic	(23,31,00,00,"OCC_CORNER_2");
};
Func Void Rtn_Alarm_1604 ()
{
   TA_KillingGRDs(08,00,07,59,"HC_MAGE1"); 
};

FUNC VOID Rtn_Challenge_1604 ()
{	
	TA_KillingGRDs (18,00,19,00,"OM_CHALLENGE_TEAM_B");
	TA_KillingGRDs (19,00,18,00,"OM_CHALLENGE_TEAM_B");
};
Func Void Rtn_Fan_1604 ()
{
	TA_ChallengeFans(08,00,07,59,"OM_FAN_1"); 
};

FUNC VOID Rtn_RITUAL_1604 ()
{
   TA_Stay (22,00,08,00,"PATH_NEW_AROUND_PSI29");
   TA_Stay (08,00,22,00,"PATH_NEW_AROUND_PSI29");
};

FUNC VOID Rtn_RITUAL1_1604 ()
{
   TA_PracticeMagic (22,00,08,00,"PATH_NEW_AROUND_PSI29");
   TA_PracticeMagic (08,00,22,00,"PATH_NEW_AROUND_PSI29");
};