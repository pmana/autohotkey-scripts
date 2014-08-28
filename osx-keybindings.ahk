; cmd + arrow keys for movement, shift to also select
#Left::Send {Home}
#Right::Send {End}
#Up::Send {Ctrl down}{Home}{Ctrl up}
#Down::Send {Ctrl down}{End}{Ctrl up}
#+Left::Send +{Home}
#+Right::Send +{End}
#+Up::Send {Shift down}{Ctrl down}{Home}{Ctrl up}{Shift up}
#+Down::Send {Shift down}{Ctrl down}{End}{Ctrl up}{Shift up}

; i use the window movement shortcuts on windows, so remap to ctrl+win+arrow
^#Left::Send {LWin down}{Left}{LWin up}
^#Right::Send {LWin down}{Right}{LWin up}
^#Up::Send {LWin down}{Up}{LWin up}
^#Down::Send {LWin down}{Down}{LWin up}

; alt + arrow keys for word-by-word movement, shift to also select
!Left::Send ^{Left}
!Right::Send ^{Right}
!+Left::Send ^+{Left}
!+Right::Send ^+{Right}
; i don't seem to have any muscle memory for alt+up/down, so won't include them
; i'm not even sure what the behaviour should be!

; remap common cmd key shortcuts (copy, paste, undo etc)
#a::^a
#c::^c
#v::^v
#x::^x
#f::^f
#o::^o
#s::^s
#z::^z
#y::^y
#t::^t
#r::^r
#b::^b
#w::^w
#q::Send !{F4}
