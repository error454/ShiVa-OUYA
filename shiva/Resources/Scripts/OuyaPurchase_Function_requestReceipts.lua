--------------------------------------------------------------------------------
--  Function......... : requestReceipts
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function OuyaPurchase.requestReceipts ( )
--------------------------------------------------------------------------------
	
    this.bReceiptsSuccess ( false )
    if(this.bReceiptsInProgress ( ))
    then
        log.message ( "A receipt request is already in progress" )
    else
        this.bReceiptsInProgress ( true )
        table.empty ( this.tEntitlementID ( ) )
        table.empty ( this.tEntitlementDates ( ) )
        table.empty ( this.tEntitlementCost ( ) )
        
        system.callClientFunction ( "onRequestOuyaReceipts" )
	end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
