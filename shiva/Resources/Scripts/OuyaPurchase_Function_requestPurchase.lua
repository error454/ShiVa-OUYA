--------------------------------------------------------------------------------
--  Function......... : requestPurchase
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function OuyaPurchase.requestPurchase ( nIndex )
--------------------------------------------------------------------------------
	
    if(this.bPurchaseInProgress ( ))
    then
        log.message ( "A purchase is already in progress" )
    else
        this.bPurchaseInProgress ( true )
        this.bPurchaseSuccess ( false )
        this.nPurchaseRequestStart ( application.getTotalFrameTime ( ))
        
        system.callClientFunction ( "onRequestOuyaPurchase", nIndex )
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
