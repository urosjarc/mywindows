; Replace Ctrl with Esc
$Capslock::Send,{Esc}

#c::WinClose A

; VIM like navigation
RAlt & j::Send,{Down}
RAlt & l::Send,{Right}
RAlt & h::Send,{Left}
RAlt & k::Send,{Up}
