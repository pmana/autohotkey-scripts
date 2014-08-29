; cmd + arrow keys for movement, shift to select
#Left::Send {Home}
#Right::Send {End}
#Up::Send ^{Home}
#Down::Send ^{End}
#+Left::Send +{Home}
#+Right::Send +{End}
#+Up::Send ^+{Home}
#+Down::Send ^+{End}

; i use the window movement shortcuts on windows, so remap to ctrl+win+arrow
^#Left::Send #{Left}
^#Right::Send #{Right}
^#Up::Send #{Up}
^#Down::Send #{Down}

; alt + arrow keys for word-by-word movement, shift to select
!Left::Send ^{Left}
!Right::Send ^{Right}
!Up::Send {Home}
!Down::Send {End}
!+Left::Send ^+{Left}
!+Right::Send ^+{Right}
!+Up::Send +{Home}
!+Down::Send +{End}

; backspace, delete
!Backspace::Send ^{Backspace}
#Backspace::Send {Shift down}{Home}{Shift up}{Delete}
!Delete::Send ^{Delete}
#Delete::Send {Shift down}{End}{Shift up}{Delete}

; remap common cmd key shortcuts (copy, paste, undo etc)
#c::Send ^c ; copy
#v::Send ^v ; paste
#x::Send ^x ; cut
#a::Send ^a ; select all
#f::Send ^f ; find
#o::Send ^o ; open
#n::Send ^n ; new
#s::Send ^s ; save
#z::Send ^z ; undo
#y::Send ^y ; redo
#w::Send ^w ; close window
#q::Send !{F4} ; close application

#t::Send ^t ; new tab
#r::Send ^r ; reload tab

#b::Send ^b ; resharper go to definition
