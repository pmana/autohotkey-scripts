; cmd + arrow keys for movement, shift to also select
#Left::Send {Home}
#Right::Send {End}
#Up::Send {Lctrl down}{Home}{Lctrl up}
#Down::Send {Lctrl down}{End}{Lctrl up}
#+Left::Send +{Home}
#+Right::Send +{End}
#+Up::Send {Lshift down}{Lctrl down}{Home}{Lctrl up}{Lshift up}
#+Down::Send {Lshift down}{Lctrl down}{End}{Lctrl up}{Lshift up}

; i use the window movement shortcuts on windows, so remap to ctrl+win+arrow
^#Left::Send {Lwin down}{Left}{Lwin up}
^#Right::Send {Lwin down}{Right}{Lwin up}
^#Up::Send {Lwin down}{Up}{Lwin up}
^#Down::Send {Lwin down}{Down}{Lwin up}

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
#w::^w
#q::Send !{F4}
