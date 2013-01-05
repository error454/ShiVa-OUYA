--------------------------------------------------------------------------------
--  Function......... : getPlayerHash
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function OuyaController.getPlayerHash ( nPlayer )
--------------------------------------------------------------------------------
	
	local ht
    local htPrev
    
    if(nPlayer == 0)
    then
        ht = this.htPlayer1 ( )
        htPrev = this.htPlayer1Previous ( )
    elseif(nPlayer == 1)
    then
        ht = this.htPlayer2 ( )
        htPrev = this.htPlayer2Previous ( )
    elseif(nPlayer == 2)
    then
        ht = this.htPlayer3 ( )
        htPrev = this.htPlayer3Previous ( )
    elseif(nPlayer == 3)
    then
        ht = this.htPlayer4 ( )
        htPrev = this.htPlayer4Previous ( )
    end
    
    return ht, htPrev
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
