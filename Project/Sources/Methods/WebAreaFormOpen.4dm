//%attributes = {}


C_TEXT:C284($1; $processName_t)
C_TEXT:C284($2; $formName_t)

$processName_t:=$1
$formName_t:=$2


If (Current process name:C1392=$processName_t)
	
	C_TIME:C306($winRef_h)
	
	$winRef_h:=Open form window:C675($formName_t; Plain form window:K39:10; Horizontally centered:K39:1; Vertically centered:K39:4)
	SET WINDOW TITLE:C213($processName_t; $winRef_h)
	DIALOG:C40($formName_t)
	CLOSE WINDOW:C154($winRef_h)
	
Else 
	C_LONGINT:C283($procNum_l)
	
	$procNum_l:=Process number:C372($processName_t)
	
	If ($procNum_l=0)
		
		$procNum_l:=New process:C317(Current method name:C684; 5000*1024; $processName_t; $processName_t; $formName_t)
		
	Else 
		
		BRING TO FRONT:C326($procNum_l)  //bring window back to front to trigger on activate event
		
	End if 
	
End if 