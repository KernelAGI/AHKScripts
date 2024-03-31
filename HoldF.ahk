#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Persistent  ; Keep the script running until the user explicitly exits it.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.

fToggle := false  ; Initialize the toggle state for 'F' key as false.
wToggle := false  ; Initialize the toggle state for 'W' key as false.
wsToggle := false  ; Initialize the toggle state for 'W' and 'Shift' keys as false.

+PgUp::  ; Shift + PgUp to hold/release 'F'.
    fToggle := !fToggle
    if (fToggle)
        Send, {f down}
    else
        Send, {f up}
return

+PgDn::  ; Shift + PgDown to hold/release 'W'.
    wToggle := !wToggle
    if (wToggle)
        Send, {w down}
    else
        Send, {w up}
return

+End::  ; Shift + End to hold/release 'W' and 'Shift'.
    wsToggle := !wsToggle
    if (wsToggle)
    {
        Send, {Shift down}
        Send, {w down}
    }
    else
    {
        Send, {w up}
        Send, {Shift up}
    }
return

^+PgUp::  ; Ctrl + Shift + PgUp to exit the script.
    ExitApp
return
