--------------------------------------------------------------------------------
--  Function......... : getKeyLatched
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function OuyaController.getKeyLatched ( nPlayer, sKey, bState )
--------------------------------------------------------------------------------
	
	local ht, htPrev = this.getPlayerHash ( nPlayer )
    
    --Retrieve the current and previous state of the specified key
	local vCurrentState = hashtable.get ( ht, sKey )
    local vPreviousState = hashtable.get ( htPrev, sKey )
    
    --If the states have changed and the current state is the state specified
    if( vCurrentState ~= vPreviousState and vCurrentState == bState )
    then
        return true
    else
        return false
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
