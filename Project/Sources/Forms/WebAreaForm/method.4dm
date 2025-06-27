


Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		Form:C1466.newWindow:=True:C214
		
		WA SET PREFERENCE:C1041(*; "oWebArea"; WA enable contextual menu:K62:6; True:C214)
		WA SET PREFERENCE:C1041(*; "oWebArea"; WA enable Web inspector:K62:7; True:C214)
		
		
		C_TEXT:C284($htmlFilePath_t)
		
		
		$htmlFilePath_t:=Get 4D folder:C485(Current resources folder:K5:16)+"test.html"
		
		WA OPEN URL:C1020(*; "oWebArea"; $htmlFilePath_t)
		
		
		
	: (Form event code:C388=On Activate:K2:9)
		
		If (Form:C1466.newWindow)  //prevent running on activate when window is opened first time
			
			Form:C1466.newWindow:=False:C215
			
		Else 
			
			C_TEXT:C284($js_t)
			
			$js_t:="document.getElementById(\"p1\").textContent=\""+Timestamp:C1445+"\";"
			
			C_TEXT:C284($jsResult_t)
			
			$jsResult_t:=WA Evaluate JavaScript:C1029(*; "oWebArea"; $js_t; Is text:K8:3)
			
		End if 
		
End case 