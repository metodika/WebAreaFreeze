//%attributes = {}



While (Not:C34(Shift down:C543))  //hold down shift key to exit loop
	
	WebAreaFormOpen("WebAreaProccess1"; "WebAreaForm")
	
	DELAY PROCESS:C323(Current process:C322; 60*2)
	
	WebAreaFormOpen("WebAreaProccess2"; "WebAreaForm")
	
	DELAY PROCESS:C323(Current process:C322; 60*2)
	
	
End while 


ALERT:C41("Test stopped")