/*************************************************************************
**	Demon Prototype														**
*************************************************************************/

PROTOTYPE Mst_Default_Demon(C_Npc)			
{
	name							=	"Demon ognia";
	guild							=	GIL_DEMON;
	Npc_SetAivar(self,AIV_MM_REAL_ID, 	ID_DEMON);
	level							=	50;
//--------------------------------------------------------	
	attribute	[ATR_STRENGTH]		=	140;
	attribute	[ATR_DEXTERITY]		=	75;
	
	attribute	[ATR_HITPOINTS_MAX]	=	500;
	attribute	[ATR_HITPOINTS]		=	500;

	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
//--------------------------------------------------------
	protection	[PROT_BLUNT]		=	140;
	protection	[PROT_EDGE]			=	140;
	protection	[PROT_POINT]		=	50;
	protection	[PROT_FIRE]			=	500;
	protection	[PROT_FLY]			=	50;
	protection	[PROT_MAGIC]		=	500;
//--------------------------------------------------------
	damagetype 						=	DAM_FIRE;
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	0;
//	damage		[DAM_INDEX_FLY]		=	0;
//	damage		[DAM_INDEX_MAGIC]	=	0;
//--------------------------------------------------------
	fight_tactic					=	FAI_DEMON;
	
//--------------------------------------------------------
	senses							=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range					=	3000;

 Npc_SetAivar(self,AIV_MM_Behaviour,				PASSIVE);
	
 Npc_SetAivar(self,AIV_MM_PercRange,				2800);
 Npc_SetAivar(self,AIV_MM_DrohRange,				2500);
 Npc_SetAivar(self,AIV_MM_AttackRange,			2000);
 Npc_SetAivar(self,AIV_MM_DrohTime,				3);
 Npc_SetAivar(self,AIV_MM_FollowTime,			10);
 Npc_SetAivar(self,AIV_MM_FollowInWater, 		TRUE);
 Npc_SetAivar(self,AIV_MM_SPECREACTTODAMAGE,  TRUE);	
//-------------------------------------------------------------
	start_aistate					=	ZS_MM_AllScheduler;
	//Npc_SetAivar(Npc_SetAivar,AIV_MM_RestStart, 			OnlyRoutine);
};
//-------------------------------------------------------------
func void Set_Demon_Visuals()
{
	Mdl_SetVisual			(self,	"Demon.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Dem_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};

/*************************************************************************
**	Demon    															**
*************************************************************************/

INSTANCE Demon (Mst_Default_Demon)
{
	Set_Demon_Visuals();
	Npc_SetToFistMode(self);
	Npc_SetAivar(self,AIV_MM_DAYTORESPAWN,  999);	
	Npc_SetAivar(self,AIV_MM_MAXLEVEL,  75);
	B_SetMonsterLevel();	
};

/*************************************************************************
**	Summoned Demon  													**
*************************************************************************/

INSTANCE SummonedByPC_Demon (Mst_Default_Demon)
{
	Set_Demon_Visuals();

	Npc_SetToFistMode(self);
	senses							= SENSE_HEAR | SENSE_SEE;
	start_aistate					= ZS_MM_SummonedByPC;
	Npc_SetAivar(self,AIV_MM_DistToMaster,  400);
	Npc_SetAivar(self,AIV_MM_TimeLooseHP, 	 1);
	Party_AddNpc(self);
	Npc_SetAivar(self,AIV_MM_DAYTORESPAWN,  999);	//never
	Npc_SetAivar(self,AIV_MM_MAXLEVEL,  75);
	B_SetMonsterLevel();		
	level = 0;
};

INSTANCE SummonedByNPC_Demon (Mst_Default_Demon)
{
	Set_Demon_Visuals();
	Npc_SetToFistMode(self);
//---------------------------------------
	start_aistate	=	ZS_MM_Summoned;
	Npc_SetAivar(self,AIV_MM_DAYTORESPAWN,  999);	//never
	Npc_SetAivar(self,AIV_MM_MAXLEVEL,  75);
	B_SetMonsterLevel();	
};

/*************************************************************************
**	Xardas' zahmer D�mon    															**
*************************************************************************/

INSTANCE XardasDemon (Mst_Default_Demon)
{
	flags 					= NPC_FLAG_IMMORTAL;
	npctype					= NPCTYPE_FRIEND;
	guild					= GIL_DEMON;

 Npc_SetAivar(self,AIV_MM_REAL_ID,	 ID_DEMON);

	Set_Demon_Visuals();
	Npc_SetToFistMode(self);

	start_aistate	= ZS_XardasDemon;	//Einsetzen bei WP "DT_E1_06"
};

/*************************************************************************
**	OTDemon    															**
*************************************************************************/

INSTANCE OTDemon (Mst_Default_Demon)
{
	name							=	"Pomniejszy demon";
	guild							=	GIL_DEMON;
	level							=	40;
//--------------------------------------------------------	
	attribute	[ATR_STRENGTH]		=	110;
	attribute	[ATR_DEXTERITY]		=	130;
	
	attribute	[ATR_HITPOINTS_MAX]	=	400;
	attribute	[ATR_HITPOINTS]		=	250;

	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
//--------------------------------------------------------
	protection	[PROT_BLUNT]		=	100;
	protection	[PROT_EDGE]			=	100;
	protection	[PROT_POINT]		=	30;
	protection	[PROT_FIRE]			=	500;
	protection	[PROT_FLY]			=	1000;
	protection	[PROT_MAGIC]		=	30;
//--------------------------------------------------------
	damagetype 						=	DAM_EDGE;

//--------------------------------------------------------
	Set_Demon_Visuals();
	Npc_SetToFistMode(self);
	Npc_SetAivar(self,AIV_MM_DAYTORESPAWN,  20);	
	Npc_SetAivar(self,AIV_MM_MAXLEVEL,  100);
	B_SetMonsterLevel();	
};

INSTANCE Guard_Demon (Mst_Default_Demon)
{
	name							=	"Demon ognia";
	guild							=	GIL_DEMON;
	level							=	20;
//--------------------------------------------------------	
	attribute	[ATR_STRENGTH]		=	75;
	attribute	[ATR_DEXTERITY]		=	75;
	
	attribute	[ATR_HITPOINTS_MAX]	=	125;
	attribute	[ATR_HITPOINTS]		=	125;

	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
//--------------------------------------------------------
	protection	[PROT_BLUNT]		=	35;
	protection	[PROT_EDGE]			=	35;
	protection	[PROT_POINT]		=	10;
	protection	[PROT_FIRE]			=	50;
	protection	[PROT_FLY]			=	100;
	protection	[PROT_MAGIC]		=	15;
//--------------------------------------------------------
	damagetype 						=	DAM_FIRE;

//--------------------------------------------------------
	Set_Demon_Visuals();
	Npc_SetToFistMode(self);
	Npc_SetAivar(self,AIV_MM_DAYTORESPAWN,  999);	//never
	Npc_SetAivar(self,AIV_MM_MAXLEVEL,  45);
	B_SetMonsterLevel();	
};


