instance SLD_701_Orik (Npc_Default)
{
	//-------- primary data --------
	
	name =					"Orik";
	Npctype =				Npctype_Main;
	guild =					GIL_SLV;
	level =					18;
	
	voice =					8;
	id =					701;

	//-------- abilities --------

	attribute[ATR_STRENGTH] =		180;
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
	Mdl_SetVisualBody (self,"hum_body_Naked0",0,3,"Hum_Head_FatBald",8,0,SLD_ARMOR_H);
	
	B_Scale (self);
	Mdl_SetModelFatness (self,0);
	
	fight_tactic	=	FAI_HUMAN_MASTER; 
	
	//-------- Talente --------
	
	Npc_SetTalentSkill (self,NPC_TALENT_1H,1);
	Npc_SetTalentSkill (self,NPC_TALENT_2H,1);


	//-------- inventory --------                                    
	
	EquipItem (self,Oriks_Axt);
	EquipItem (self,ItRw_Bow_Long_01);
	CreateInvItems(self,ItAmArrow,20);
	CreateInvItems (self,ItFoRice,7);
	CreateInvItems (self,ItFoLoaf,5);
	CreateInvItems (self,ItFoMutton,4);
	CreateInvItems(self,ItMiNugget,19);
	CreateInvItems (self,ItFoBooze,5);
	CreateInvItems (self,ItLsTorch,5);
	CreateInvItems (self,ItFo_Potion_Health_02,9);
	CreateInvItem (self,ItMi_Stuff_Barbknife_01);
	CreateInvItem (self,ItMi_Stuff_Amphore_01);
	
	//-------------Daily Routine-------------

	daily_routine = Rtn_start_701;
};

FUNC VOID Rtn_NC2_701 ()
{
	TA_Smalltalk   	(07,00,19,00,"NC_SMALL_CAVE_CENTER");
	TA_Boss			(19,00,00,00,"NC_HUT05_OUT");
	TA_Sleep		(00,00,07,00,"NC_HUT05_IN");	
};

FUNC VOID Rtn_start_701 ()
{
	TA_Boss   	(07,00,19,00,"LOCATION_19_03_PEMTAGRAM_MOVEMENT");
	TA_Boss			(19,00,07,00,"LOCATION_19_03_PEMTAGRAM_MOVEMENT");
};

FUNC VOID Rtn_NC1_701 ()
{
	TA_Boss   	(07,00,19,00,"NC_RICEBUNKER_10");
	TA_Boss			(19,00,07,00,"NC_RICEBUNKER_10");
};

FUNC VOID Rtn_NC3_701 ()
{
	TA_Boss   	(07,00,19,00,"SPAWN_OW_STARTSCAVNGERBO_01_02");
	TA_Boss			(19,00,07,00,"SPAWN_OW_STARTSCAVNGERBO_01_02");
};

FUNC VOID Rtn_FOLLOW_701 ()
{
   TA_FollowPC(04,00,11,00,"OW_PATH_169");
   TA_FollowPC(11,00,04,00,"OW_PATH_169");
};