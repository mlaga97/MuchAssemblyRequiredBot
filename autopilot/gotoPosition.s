gotoPosition:
    push BP
    mov BP, SP
    
    ; Needs X and Y set
    call getPath
    
    ; No valid path
    cmp [0x0000], 0xFFFF
    jz goto_invalid
    
    push [0x0000]
    call walk
    
    goto_invalid:
    mov SP, BP
    pop BP
    ret 0
