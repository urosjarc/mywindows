; Replace Ctrl with Esc
$Capslock::Send,{Esc}

#C::Send !{F4}

; VIM like navigation
RAlt & j::Send,{Down}
RAlt & l::Send,{Right}
RAlt & h::Send,{Left}
RAlt & k::Send,{Up}