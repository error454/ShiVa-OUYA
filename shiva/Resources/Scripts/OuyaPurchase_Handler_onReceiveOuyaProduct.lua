--------------------------------------------------------------------------------
--  Handler.......... : onReceiveOuyaProduct
--  Author........... : 
--  Description...... : This is called once for every product received in the product list.
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function OuyaPurchase.onReceiveOuyaProduct ( sID, sProductName, nCostInCents )
--------------------------------------------------------------------------------
	
	log.message ( "Received ouya product:" )
    log.message ( "ID: "..sID .. " Name: "..sProductName.." cost: "..nCostInCents  )
	
    if(string.isEmpty ( sID ) and string.isEmpty ( sProductName ) and nCostInCents == 0)
    then
        log.message ( "no products received" )
    else
        table.add ( this.tProductID ( ), sID )
        table.add ( this.tProductName ( ), sProductName )
        table.add ( this.tProductCost ( ), nCostInCents )
    end
    
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
