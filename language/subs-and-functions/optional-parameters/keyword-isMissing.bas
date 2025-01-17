' runVBAFilesInOffice.vbs -word %CD%\keyword-isMissing -c main
'
' isMissing checks whether an optional parameter was passed
'
' The datatype for such a parameter needs to be variant
'

option explicit

sub main() 

  call xyz("one", "two")
  call xyz("apple")
  call xyz(param_2 := "banana")
  call xyz

  activeDocument.saved = true 

 end sub 
 

private sub xyz (                   _ 
       optional param_1 as variant, _
       optional param_2 as variant  _ 
) 

     if isMissing(param_1) then
        selection.typeText("param_1 is missing")
     else 
        selection.typeText("param_1 = " & param_1)
     end if

     if isMissing(param_2) then
        selection.typeText(" - param_2 is missing")
     else 
        selection.typeText(" - param_2 = " & param_2)
     end if

     selection.typeText chr(13)

 end sub 
