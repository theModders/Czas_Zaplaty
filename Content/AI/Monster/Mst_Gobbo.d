/*************************************************************************
**	GreenGobbo Prototype												**
*************************************************************************/

PROTOTYPE Mst_Default_GreenGobbo(C_NPC)			
{
	name							=	"Goblin";
	guild							=	GIL_GOBBO;
	level							=	6;
//------------------------------------------------------------------
	attribute	[ATR_STRENGTH]		=	45;
	attribute	[ATR_DEXTERITY]		=	20;
	
	attribute	[ATR_HITPOINTS_MAX]	=	100;
	attribute	[ATR_HITPOINTS]		=	100;

	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
//------------------------------------------------------------------
	protection	[PROT_BLUNT]		=	22;
	protection	[PROT_EDGE]			=	22;
	protection	[PROT_POINT]		=	5;
	protection	[PROT_FIRE]			=	21;
	protection	[PROT_FLY]			=	0;
	protection	[PROT_MAGIC]		=	0;
//------------------------------------------------------------------
	damagetype 						=	DAM_EDGE;
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	0;
//	damage		[DAM_INDEX_FLY]		=	0;
//	damage		[DAM_INDEX_MAGIC]	=	0;
//------------------------------------------------------------------
	fight_tactic	=	FAI_GOBBO;
//------------------------------------------------------------------
	senses			=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	3000;		// 30m

 Npc_SetAivar(self,AIV_MM_Behaviour,		 PACKHUNTER);
	
 Npc_SetAivar(self,AIV_MM_PercRange,		 1500);
 Npc_SetAivar(self,AIV_MM_DrohRange,		 1000);
 Npc_SetAivar(self,AIV_MM_AttackRange,	 700);
 Npc_SetAivar(self,AIV_MM_DrohTime,		 4);
 Npc_SetAivar(self,AIV_MM_FollowTime,	 10);
 Npc_SetAivar(self,AIV_MM_FollowInWater,  FALSE);
//------------------------------------------------------------------
	start_aistate				= ZS_MM_AllScheduler;
 Npc_SetAivar(self,AIV_MM_SPECREACTTODAMAGE,  TRUE);	
 Npc_SetAivar(self,AIV_MM_RestStart, 	 OnlyRoutine);	
};
//------------------------------------------------------------------
func void Set_GreenGobbo_Visuals()
{
	Mdl_SetVisual			(self,	"Gobbo.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Gob_Body",		0,			DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


/*************************************************************************
**	Green Gobbo Club 													**
*************************************************************************/

INSTANCE GreenGobboClub	(Mst_Default_GreenGobbo)
{
	Set_GreenGobbo_Visuals();

	fight_tactic					=	FAI_MONSTER_COWARD;

	Npc_SetToFightMode (self, ItMw_1h_Club_01); //+5

	CreateInvItems (self, ItAt_GobKosc, 1);
	B_CreateGobboInv();
	Npc_SetAivar(self,AIV_MM_DAYTORESPAWN,  6);	
	B_SetMonsterLevel();	
	Npc_SetAivar(self,AIV_MM_REAL_ID,	ID_GOBBOCLUB);
	
};


/*************************************************************************
**	Green Gobbo Sword													**
*************************************************************************/

INSTANCE GreenGobboSword (Mst_Default_GreenGobbo)
{
	Set_GreenGobbo_Visuals();
	level = 8;
	
	Npc_SetToFightMode (self, ItMw_1H_Sword_Old_01); //+10
	attribute[ATR_STRENGTH] = 40; // da technisch im Faustkampf
	CreateInvItems (self, ItAt_GobKosc, 1);
	B_CreateGobboInv();
	Npc_SetAivar(self,AIV_MM_DAYTORESPAWN,  8);	
	B_SetMonsterLevel();	
	Npc_SetAivar(self,AIV_MM_REAL_ID,	ID_GOBBOSWORD);
	
};








