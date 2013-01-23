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
        local result = system.callClientFunction ( "onRequestOuyaPurchase", nIndex )
        if(result == -1)
        then
            this.sendEvent ( "onReceiveOuyaPurchase", false )
        else
            log.message ( "Shiva purchase is in progress" )
            this.bPurchaseInProgress ( true )
            this.bPurchaseSuccess ( false )
            this.nPurchaseRequestStart ( application.getTotalFrameTime ( ))
        end
        
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
