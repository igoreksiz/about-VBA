option explicit

sub main()

    dim var as variant
    dim dbl as double

    var = null
  ' dbl = null ' null can only be assigned to variants
  '            ' Otherwise, a Run-time error 94 is thrown: Invalid use of Null

  ' If a variant is null can be tested with isNull:
    if isNull(var) then
       debug.print "var is null"
    else
       debug.print "var = " & var
    end if

    var = 42
    if isNull(var) then
       debug.print "var is null"
    else
       debug.print "var = " & var
    end if

end sub
