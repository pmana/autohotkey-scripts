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
#a::Send {Ctrl down}a{Ctrl up}
#c::Send {Ctrl down}c{Ctrl up}
#v::Send {Ctrl down}v{Ctrl up}
#x::Send {Ctrl down}x{Ctrl up}
#f::Send {Ctrl down}f{Ctrl up}
#o::Send {Ctrl down}o{Ctrl up}
#s::Send {Ctrl down}s{Ctrl up}
#z::Send {Ctrl down}z{Ctrl up}
#y::Send {Ctrl down}y{Ctrl up}
#t::Send {Ctrl down}t{Ctrl up}
#r::Send {Ctrl down}r{Ctrl up}
#b::Send {Ctrl down}b{Ctrl up}
#w::Send {Ctrl down}w{Ctrl up}
#q::Send !{F4}
