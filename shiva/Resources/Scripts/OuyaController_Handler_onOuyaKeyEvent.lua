--------------------------------------------------------------------------------
--  Handler.......... : onOuyaKeyEvent
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function OuyaController.onOuyaKeyEvent ( nPlayer, nKey, bDown )
--------------------------------------------------------------------------------
	
	local hash = this.backupAndGetPlayerKeys ( nPlayer )
    
    --These keys have to match the constants from the OuyaController class in the ODK
    if    (nKey == 96)  then hashtable.set ( hash, "O",      bDown )
    elseif(nKey == 99)  then hashtable.set ( hash, "U",      bDown )
    elseif(nKey == 100) then hashtable.set ( hash, "Y",      bDown )
    elseif(nKey == 97)  then hashtable.set ( hash, "A",      bDown )
    elseif(nKey == 102) then hashtable.set ( hash, "L1",     bDown )
    elseif(nKey == 103) then hashtable.set ( hash, "R1",     bDown )
    elseif(nKey == 104) then hashtable.set ( hash, "L2",     bDown )
    elseif(nKey == 105) then hashtable.set ( hash, "R2",     bDown )
    elseif(nKey == 106) then hashtable.set ( hash, "L3",     bDown )
    elseif(nKey == 107) then hashtable.set ( hash, "R3",     bDown )
    elseif(nKey == 19)  then hashtable.set ( hash, "UP",     bDown )
    elseif(nKey == 20)  then hashtable.set ( hash, "DOWN",   bDown )
    elseif(nKey == 21)  then hashtable.set ( hash, "LEFT",   bDown )
    elseif(nKey == 22)  then hashtable.set ( hash, "RIGHT",  bDown )
    elseif(nKey == 3)   then hashtable.set ( hash, "SYSTEM", bDown ) end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
