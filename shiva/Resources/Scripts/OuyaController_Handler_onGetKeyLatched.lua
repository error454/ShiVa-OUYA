--------------------------------------------------------------------------------
--  Handler.......... : onGetKeyLatched
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function OuyaController.onGetKeyLatched ( nPlayer, sKey, bState )
--------------------------------------------------------------------------------
	
	local vResult = this.getKeyLatched ( nPlayer, sKey, bState )
    this.bResult ( vResult )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
