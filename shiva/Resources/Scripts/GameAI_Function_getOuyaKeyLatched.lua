--------------------------------------------------------------------------------
--  Function......... : getOuyaKeyLatched
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function GameAI.getOuyaKeyLatched ( nPlayer, sKey, bState )
--------------------------------------------------------------------------------
	
	user.sendEventImmediate ( this.getUser ( ), "OuyaController", "onGetKeyLatched", nPlayer, sKey, bState )
    return user.getAIVariable ( this.getUser ( ), "OuyaController", "bResult" )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
