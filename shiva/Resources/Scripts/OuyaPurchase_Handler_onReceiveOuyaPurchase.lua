--------------------------------------------------------------------------------
--  Handler.......... : onReceiveOuyaPurchase
--  Author........... : 
--  Description...... : Receives the result of the purchase
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function OuyaPurchase.onReceiveOuyaPurchase ( bSuccess )
--------------------------------------------------------------------------------
	
    if(bSuccess)
    then
        log.message ( "Purchase succeeded!" )
    else
        log.message ( "Purchase failed!" )
    end
    
	this.bPurchaseSuccess ( bSuccess )
    this.bPurchaseInProgress ( false )
    
    log.message ( "Purchase took: " .. application.getTotalFrameTime ( ) - this.nPurchaseRequestStart ( ) .. " seconds" )
	
    --You might call your main AI from here
    --user.sendEvent ( this.getUser ( ), "MainMenuAI", "onPurchaseComplete", bSuccess )
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
