func void ZS_CatchThief ()
//10.5. Fertig wenn -->Taschendiebstahl von Item mit Besitzflag unterscheiden geht das so??? 
{	
	////PrintDebugNpc		( PD_ZS_FRAME, "ZS_CatchThief" );		
	//PRINTGlobals		( PD_ZS_CHECK);
	C_ZSInit			( );
	
	Npc_PercEnable  	( self,	PERC_ASSESSDAMAGE  		,	ZS_ReactToDamage	);		
	Npc_PercEnable  	( self,	PERC_OBSERVEINTRUDER	,	B_ObserveIntruder 	);	
	Npc_PercEnable  	( self,	PERC_ASSESSFIGHTSOUND	,	B_AssessFightSound	);
	Npc_PercEnable  	( self,	PERC_ASSESSWARN			, 	B_AssessWarn 		);		
	Npc_PercEnable  	( self, PERC_ASSESSTALK			,	B_AssessTalk 			);		
	Npc_PercEnable  	( self, PERC_ASSESSMAGIC		,	B_AssessMagic		);
	
	B_AssessAndMemorize	( NEWS_THEFT, NEWS_SOURCE_WITNESS, self, other, self);
//CHANGED June 23, 2009 
// 	if (Npc_GetAivar(self,AIV_ITEMSCHWEIN) == FALSE)
// 	{
// 		B_FullStop 			( self);
// 		B_WhirlAround 		( self, other);
// 	};
	B_PrintDebug("ZS_CatchThief");
	AI_StartState 		( self, ZS_AssessEnemy, 0, "");
};
