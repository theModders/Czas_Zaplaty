instance SLD_758_Soeldner (Npc_Default)
{
	//-------- primary data --------
	
	name =							Name_Soeldner;
	Npctype =						NPCTYPE_MINE_GUARD;
	guild =							GIL_SLV;       
	level =							12;
	
	voice =							11;
	id =							758;


	//-------- abilities --------

	attribute[ATR_STRENGTH] =		75;
	attribute[ATR_DEXTERITY] =		70;
	attribute[ATR_MANA_MAX] =		0;
	attribute[ATR_MANA] =			0;
	attribute[ATR_HITPOINTS_MAX] =	256;
	attribute[ATR_HITPOINTS] =		256;

	//-------- visuals --------
	// 				animations
	Mdl_SetVisual		(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds	(self,"Humans_Militia.mds");
	//				body mesh,head mesh,hairmesh,face-tex,hair-tex,skin	
	Mdl_SetVisualBody (self,"hum_body_Naked0",1,1,"Hum_Head_Pony",53,1,SLD_ARMOR_M);
	
	B_Scale (self);
	Mdl_SetModelFatness (self,0);
	
	fight_tactic	=	FAI_HUMAN_RANGED; 
	
	//-------- Talente --------
	//-------- Talente --------

	Npc_SetTalentSkill (self,NPC_TALENT_1H,2);
	Npc_SetTalentSkill (self,NPC_TALENT_2H,1);
	Npc_SetTalentSkill (self,NPC_TALENT_BOW,1);	

	//-------- inventory --------                                    

	EquipItem (self,MTR_MW_02);
	EquipItem (self,ItRw_Bow_Long_01);
	CreateInvItems(self,ItAmArrow,20);
	CreateInvItems (self,ItFoRice,7);
	CreateInvItems (self,ItFoLoaf,6);
	CreateInvItems (self,ItFoMutton,4);
	CreateInvItems(self,ItMiNugget,22);
	CreateInvItems (self,ItFoBooze,5);
	CreateInvItems (self,ItLsTorch,5);
	CreateInvItems (self,ItFo_Potion_Health_02,7);
	CreateInvItem (self,ItMi_Stuff_Barbknife_01);
	CreateInvItem (self,ItMi_Stuff_Amphore_01);
		

	//-------------Daily Routine-------------

	/*B_InitNPCAddins(self);*/		daily_routine = Rtn_FMCstart_758;

};

FUNC VOID Rtn_FMCstart_758 ()
{
	TA_GuardPalisade	(01,00,13,00,"FMC_PATH06");
	TA_GuardPalisade 	(13,00,01,00,"FMC_PATH06");
};


FUNC VOID Rtn_NC1_758 ()
{
	TA_Guard	(01,00,13,00,"NC_TAVERN_OUT_GUARD");
	TA_Guard 	(13,00,01,00,"NC_TAVERN_OUT_GUARD");
};


FUNC VOID Rtn_NC2_758 ()
{
	TA_GuardPalisade	(01,00,13,00,"FMC_PATH06");
	TA_GuardPalisade 	(13,00,01,00,"FMC_PATH06");
};


FUNC VOID Rtn_NC3_758 ()
{
	TA_Guard	(01,00,13,00,"LOCATION_15_IN_2");
	TA_Guard 	(13,00,01,00,"LOCATION_15_IN_2");
};


