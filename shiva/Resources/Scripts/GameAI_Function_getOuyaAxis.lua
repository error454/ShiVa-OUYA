--------------------------------------------------------------------------------
--  Function......... : getOuyaAxis
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function GameAI.getOuyaAxis ( nPlayer, sAxis )
--------------------------------------------------------------------------------
	
	user.sendEventImmediate ( this.getUser ( ), "OuyaController", "onGetAxis", nPlayer, sKey )
    return user.getAIVariable ( this.getUser ( ), "OuyaController", "nResult" )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
