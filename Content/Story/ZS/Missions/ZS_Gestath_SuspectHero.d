//////////////////////////////////////////////////////////////////////////
//	ZS_Stay
//	=======
//	Der NSC steht bei diesem Tagesablauf-Zustand FEST auf seinem WP 
//////////////////////////////////////////////////////////////////////////
func void ZS_Gestath_SuspectHero ()
{
	//PrintDebugNpc			(PD_TA_FRAME,	"ZS_Stay");
	
	//-------- Wahrnehmungen --------
	B_SetPerception			(self);
	self.senses = 			SENSE_SEE|SENSE_HEAR|SENSE_SMELL;
	self.senses_range = 2500;
	
	//-------- Roderic Ghost Bugfix ------
	if(self.id == 26)
	{
		Npc_PercDisable  	(self, 	PERC_MOVENPC);	
	};
	//-------- Vorbereitungen --------
	if (Npc_HasReadiedWeapon(self))
	{
		AI_SetWalkmode			(self,	NPC_RUN);
	}
	else
	{
		AI_SetWalkmode			(self,	NPC_WALK);
	};
	
	//-------- Grobpositionierung --------
	AI_GotoWP				(self,	self.wp);						// Gehe zum Tagesablaufstart
	AI_AlignToWP			(self);
};

func void ZS_Gestath_SuspectHero_Loop ()
{
	//PrintDebugNpc			(PD_TA_LOOP,	"ZS_Stay_Loop");
	
	AI_WaitMS		(self,	250);
	AI_TurnToNpc	(self,hero);
	if(Npc_GetDistToNpc(self,hero)<1700)&&(!Npc_HasReadiedWeapon(self))
	{
	AI_ReadyRangedWeapon(self);	
	};
	if(Npc_GetDistToNpc(self,hero)<500)
	{
	AI_AimAt(self,hero);	
	};
};

func void ZS_Gestath_SuspectHero_End ()
{
	//PrintDebugNpc			(PD_TA_FRAME,	"ZS_Stay_End");
	self.senses	=			hero.senses;
	self.senses_range = 2000;
	
	C_StopLookAt			(self);
	AI_StopAim (self);
	AI_RemoveWeapon(self);
};
