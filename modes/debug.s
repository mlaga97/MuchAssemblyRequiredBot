;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Things to debug

debug:
    push BP
    mov BP, SP
    
    ; Let the user know the mode
    push modetext_debug
    call showString
    
    call getMap
    
    mov X, 3
    mov Y, 3
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    ; Add Y
    mov A, Y
    mul 16
    
    ; Add X
    add A, X
    
    ; Add memory address offset
    add A, 0x0100
    
    ; Test
    push [A]
    push 0xFFFF
    call showHex
    
    mov SP, BP
    pop BP
    ret 0
