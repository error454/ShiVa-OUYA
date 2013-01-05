--------------------------------------------------------------------------------
--  Handler.......... : onOuyaMotionEvent
--  Author........... : 
--  Description...... : playerNum is from 0-3, all other arguments are from -1 to 1
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function OuyaController.onOuyaMotionEvent ( nPlayer, ls_x, ls_y, rs_x, rs_y, l2, r2 )
--------------------------------------------------------------------------------
	
    local hash = this.backupAndGetPlayerKeys ( nPlayer )
    local hset = hashtable.set
    
    hset( hash, "AXIS_LS_X", ls_x )
    hset( hash, "AXIS_LS_Y", ls_y )
    hset( hash, "AXIS_RS_X", rs_x )
    hset( hash, "AXIS_RS_Y", rs_x )
    hset( hash, "AXIS_L2", l2 )
    hset( hash, "AXIS_R2", r2 )
		
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------