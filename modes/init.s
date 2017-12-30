;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Things to run exactly once

init:
    push BP
    mov BP, SP
    
    ; Let the user know the mode
    push modetext_init
    call showString
    
    ; Switch to teleop mode now
    ;mov [mode], 0x02
    mov [mode], 0x02
    
    mov SP, BP
    pop BP
    ret 0
