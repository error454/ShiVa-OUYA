--------------------------------------------------------------------------------
--  Function......... : getKey
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function OuyaController.getKey ( nPlayer, sKey )
--------------------------------------------------------------------------------
    
	return hashtable.get ( this.getPlayerHash ( nPlayer ), sKey )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
