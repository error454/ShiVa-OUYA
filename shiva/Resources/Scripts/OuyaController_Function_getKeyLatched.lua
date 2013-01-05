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
    local vPreviousState
    if( hashtable.getSize ( htPrev ) > 0 )
    then
        vPreviousState = hashtable.get ( htPrev, sKey )
    else
        return false
    end
    
    --If the states have changed and the current state is the state specified
    if( vCurrentState ~= vPreviousState and vCurrentState == bState )
    then
        --Set the last key state to the current state, we do this because 
        --key states only change when keys are pressed and we only want this
        --state to be triggered when the state of keys changes.
        hashtable.set ( htPrev, sKey, vCurrentState )
        return true
    else
        return false
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
