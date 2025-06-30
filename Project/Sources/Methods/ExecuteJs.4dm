//%attributes = {}
C_TEXT:C284($1; $webArea_t)
C_TEXT:C284($2; $js_t)

$webArea_t:=$1
$js_t:=$2



C_TEXT:C284($jsResult_t)

$jsResult_t:=WA Evaluate JavaScript:C1029(*; $webArea_t; $js_t; Is text:K8:3)