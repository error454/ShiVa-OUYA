--------------------------------------------------------------------------------
--  Handler.......... : onReceiveOuyaReceipt
--  Author........... : 
--  Description...... : Called once for every receipt returned from onRequestOuyaReceipts 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function OuyaPurchase.onReceiveOuyaReceipt ( sID, sDate, nPrice )
--------------------------------------------------------------------------------
	
    this.bReceiptsInProgress ( false )
    
    if(string.isEmpty ( sID )and string.isEmpty ( sDate ) and nPrice == 0)
    then
        log.message ( "No entitlements received" )
        this.bReceiptsSuccess ( false )
    else
        log.message ( "Entitlement received: "..sID .. " purchased on "..sDate .. " for ".. nPrice )
        
        table.add ( this.tEntitlementID ( ), sID )
        table.add ( this.tEntitlementDates ( ), sDate )
        table.add ( this.tEntitlementCost ( ), nPrice )
        this.bReceiptsSuccess ( true )
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
