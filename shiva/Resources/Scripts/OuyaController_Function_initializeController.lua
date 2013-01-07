--------------------------------------------------------------------------------
--  Function......... : initializeController
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function OuyaController.initializeController ( htController )
--------------------------------------------------------------------------------
	
    hashtable.add ( htController, "O", false )
    hashtable.add ( htController, "U", false )
    hashtable.add ( htController, "Y", false )
    hashtable.add ( htController, "A", false )
    
    hashtable.add ( htController, "L1", false ) 
    hashtable.add ( htController, "L2", false ) 
    hashtable.add ( htController, "L3", false )
    hashtable.add ( htController, "R1", false )
    hashtable.add ( htController, "R2", false )
    hashtable.add ( htController, "R3", false )
    
    hashtable.add ( htController, "UP", false )
    hashtable.add ( htController, "DOWN", false )
    hashtable.add ( htController, "LEFT", false )
    hashtable.add ( htController, "RIGHT", false )
    
    hashtable.add ( htController, "SYSTEM", false )
    
    hashtable.add ( htController, "AXIS_LS_X", 0 )
    hashtable.add ( htController, "AXIS_LS_Y", 0 )
    hashtable.add ( htController, "AXIS_RS_X", 0 ) 
    hashtable.add ( htController, "AXIS_RS_Y", 0 ) 
    hashtable.add ( htController, "AXIS_L2", 0 ) 
    hashtable.add ( htController, "AXIS_R2", 0 )
    
    hashtable.add ( htController, "TOUCHPAD_X", 0 )
    hashtable.add ( htController, "TOUCHPAD_Y", 0 )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
