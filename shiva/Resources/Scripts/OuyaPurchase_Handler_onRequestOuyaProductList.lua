--------------------------------------------------------------------------------
--  Handler.......... : onRequestOuyaProductList
--  Author........... : 
--  Description...... : Requests the available product list from the OUYA servers.
--                      onReceiveOuyaProduct will be called for every
--                      product available.  So 3 products means 3 subsequent calls
--                      to onReceiveOuyaProduct.
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function OuyaPurchase.onRequestOuyaProductList (  )
--------------------------------------------------------------------------------
	
	this.requestProductList ( )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
