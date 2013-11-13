instance Grd_624_Gardist (Npc_Default)
{
	//-------- primary data --------
	
	name 		=	NAME_Gardist;
	npctype		= 	npctype_guard;
	guild 		=	GIL_GRD;
	level 		=	15;
	voice 		=	6;
	id 			=	624;
	
	//-------- abilities --------
	attribute[ATR_STRENGTH] 	= 70;
	attribute[ATR_DEXTERITY] 	= 90;
	attribute[ATR_MANA_MAX] 	= 0;
	attribute[ATR_MANA] 		= 0;
	attribute[ATR_HITPOINTS_MAX]= 220;
	attribute[ATR_HITPOINTS] 	= 220;
	
	//-------- visuals --------
	// 			animations
	Mdl_SetVisual		(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds	(self,"Humans_Militia.mds");
	//			body mesh     ,bdytex,skin,head mesh     ,headtex,teethtex,ruestung	
	Mdl_SetVisualBody (self,"hum_body_Naked0",0,1,"Hum_Head_Pony",81,1,GRD_ARMOR_L);
        
	B_Scale (self);
    	Mdl_SetModelFatness(self,0);
    	
    	fight_tactic	=	FAI_HUMAN_RANGED;

	//-------- Talente -------- 
				
	Npc_SetTalentSkill (self,NPC_TALENT_1H,2);
	Npc_SetTalentSkill (self,NPC_TALENT_2H,1);
	Npc_SetTalentSkill (self,NPC_TALENT_CROSSBOW,1);		
			
	//-------- inventory --------
	
	EquipItem	(self,GRD_MW_01);
	EquipItem	(self,GRD_RW_02);
	CreateInvItems	(self,ItAmBolt,30);
	CreateInvItem	(self,ItFo_Gin);
	CreateInvItem	(self,ItFoApple);
	CreateInvItem	(self,ItLsTorch);
	
	//-------------Daily Routine-------------
	/*B_InitNPCAddins(self);*/		daily_routine = Rtn_start_624;
};

FUNC VOID Rtn_start_624 ()
{
	TA_STAND		(00,00,00,15,"NC_EN_PATH2_08");
	TA_STAND		(00,16,00,30,"NC_EN_PATH2_06");
	TA_STAND		(00,30,00,45,"NC_EN_PATH2_03");
	TA_STAND		(00,46,00,59,"NC_EN_PATH2_09");
	
	TA_STAND		(01,00,01,15,"NC_EN_PATH2_08");
	TA_STAND		(01,16,01,30,"NC_EN_PATH2_06");
	TA_STAND		(01,30,01,45,"NC_EN_PATH2_03");
	TA_STAND		(01,46,01,59,"NC_EN_PATH2_09");
	
	TA_STAND		(02,00,02,15,"NC_EN_PATH2_08");
	TA_STAND		(02,16,02,30,"NC_EN_PATH2_06");
	TA_STAND		(02,30,02,45,"NC_EN_PATH2_03");
	TA_STAND		(02,46,02,59,"NC_EN_PATH2_09");
	
	TA_STAND		(03,00,03,15,"NC_EN_PATH2_08");
	TA_STAND		(03,16,03,30,"NC_EN_PATH2_06");
	TA_STAND		(03,30,03,45,"NC_EN_PATH2_03");
	TA_STAND		(03,46,03,59,"NC_EN_PATH2_09");
	
	TA_STAND		(04,00,04,15,"NC_EN_PATH2_08");
	TA_STAND		(04,16,04,30,"NC_EN_PATH2_06");
	TA_STAND		(04,30,04,45,"NC_EN_PATH2_03");
	TA_STAND		(04,46,04,59,"NC_EN_PATH2_09");
	
	TA_STAND		(05,00,05,15,"NC_EN_PATH2_08");
	TA_STAND		(05,16,05,30,"NC_EN_PATH2_06");
	TA_STAND		(05,30,05,45,"NC_EN_PATH2_03");
	TA_STAND		(05,46,05,59,"NC_EN_PATH2_09");
	
	TA_STAND		(06,00,06,15,"NC_EN_PATH2_08");
	TA_STAND		(06,16,06,30,"NC_EN_PATH2_06");
	TA_STAND		(06,30,06,45,"NC_EN_PATH2_03");
	TA_STAND		(06,46,06,59,"NC_EN_PATH2_09");
	
	TA_STAND		(07,00,07,15,"NC_EN_PATH2_08");
	TA_STAND		(07,16,07,30,"NC_EN_PATH2_06");
	TA_STAND		(07,30,07,45,"NC_EN_PATH2_03");
	TA_STAND		(07,46,07,59,"NC_EN_PATH2_09");
	
	TA_STAND		(08,00,08,15,"NC_EN_PATH2_08");
	TA_STAND		(08,16,08,30,"NC_EN_PATH2_06");
	TA_STAND		(08,30,08,45,"NC_EN_PATH2_03");
	TA_STAND		(08,46,08,59,"NC_EN_PATH2_09");
	
	TA_STAND		(09,00,09,15,"NC_EN_PATH2_08");
	TA_STAND		(09,16,09,30,"NC_EN_PATH2_06");
	TA_STAND		(09,30,09,45,"NC_EN_PATH2_03");
	TA_STAND		(09,46,09,59,"NC_EN_PATH2_09");
	
	TA_STAND		(10,00,10,15,"NC_EN_PATH2_08");
	TA_STAND		(10,16,10,30,"NC_EN_PATH2_06");
	TA_STAND		(10,30,10,45,"NC_EN_PATH2_03");
	TA_STAND		(10,46,10,59,"NC_EN_PATH2_09");
	
	TA_STAND		(11,00,11,15,"NC_EN_PATH2_08");
	TA_STAND		(11,16,11,30,"NC_EN_PATH2_06");
	TA_STAND		(11,30,11,45,"NC_EN_PATH2_03");
	TA_STAND		(11,46,11,59,"NC_EN_PATH2_09");
	
	TA_STAND		(12,00,12,15,"NC_EN_PATH2_08");
	TA_STAND		(12,16,12,30,"NC_EN_PATH2_06");
	TA_STAND		(12,30,12,45,"NC_EN_PATH2_03");
	TA_STAND		(12,46,12,59,"NC_EN_PATH2_09");
	
	TA_STAND		(13,00,13,15,"NC_EN_PATH2_08");
	TA_STAND		(13,16,13,30,"NC_EN_PATH2_06");
	TA_STAND		(13,30,13,45,"NC_EN_PATH2_03");
	TA_STAND		(13,46,13,59,"NC_EN_PATH2_09");
	
	TA_STAND		(14,00,14,15,"NC_EN_PATH2_08");
	TA_STAND		(14,16,14,30,"NC_EN_PATH2_06");
	TA_STAND		(14,30,14,45,"NC_EN_PATH2_03");
	TA_STAND		(14,46,14,59,"NC_EN_PATH2_09");
	
	TA_STAND		(15,00,15,15,"NC_EN_PATH2_08");
	TA_STAND		(15,16,15,30,"NC_EN_PATH2_06");
	TA_STAND		(15,30,15,45,"NC_EN_PATH2_03");
	TA_STAND		(15,46,15,59,"NC_EN_PATH2_09");
	
	TA_STAND		(16,00,16,15,"NC_EN_PATH2_08");
	TA_STAND		(16,16,16,30,"NC_EN_PATH2_06");
	TA_STAND		(16,30,16,45,"NC_EN_PATH2_03");
	TA_STAND		(16,46,16,59,"NC_EN_PATH2_09");
	
	TA_STAND		(17,00,17,15,"NC_EN_PATH2_08");
	TA_STAND		(17,16,17,30,"NC_EN_PATH2_06");
	TA_STAND		(17,30,17,45,"NC_EN_PATH2_03");
	TA_STAND		(17,46,17,59,"NC_EN_PATH2_09");
	
	TA_STAND		(18,00,18,15,"NC_EN_PATH2_08");
	TA_STAND		(18,16,18,30,"NC_EN_PATH2_06");
	TA_STAND		(18,30,18,45,"NC_EN_PATH2_03");
	TA_STAND		(18,46,18,59,"NC_EN_PATH2_09");
	
	TA_STAND		(19,00,19,15,"NC_EN_PATH2_08");
	TA_STAND		(19,16,19,30,"NC_EN_PATH2_06");
	TA_STAND		(19,30,19,45,"NC_EN_PATH2_03");
	TA_STAND		(19,46,19,59,"NC_EN_PATH2_09");
	
	TA_STAND		(20,00,20,15,"NC_EN_PATH2_08");
	TA_STAND		(20,16,20,30,"NC_EN_PATH2_06");
	TA_STAND		(20,30,20,45,"NC_EN_PATH2_03");
	TA_STAND		(20,46,20,59,"NC_EN_PATH2_09");
	
	TA_STAND		(21,00,21,15,"NC_EN_PATH2_08");
	TA_STAND		(21,16,21,30,"NC_EN_PATH2_06");
	TA_STAND		(21,30,21,45,"NC_EN_PATH2_03");
	TA_STAND		(21,46,21,59,"NC_EN_PATH2_09");
	
	TA_STAND		(22,00,22,15,"NC_EN_PATH2_08");
	TA_STAND		(22,16,22,30,"NC_EN_PATH2_06");
	TA_STAND		(22,30,22,45,"NC_EN_PATH2_03");
	TA_STAND		(22,46,22,59,"NC_EN_PATH2_09");
	
	TA_STAND		(23,00,23,15,"NC_EN_PATH2_08");
	TA_STAND		(23,16,23,30,"NC_EN_PATH2_06");
	TA_STAND		(23,30,23,45,"NC_EN_PATH2_03");
	TA_STAND		(23,46,23,59,"NC_EN_PATH2_09");
};



