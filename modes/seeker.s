;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Seeker mode

seeker_kb:
    call getKey
    
    cmp B, KEY_X
    jz seeker_key_x
    cmp B, KEY_Y
    jz seeker_key_y
    cmp B, KEY_G
    jz seeker_key_g
    cmp B, KEY_M
    jz seeker_key_m
    
    ret
    
    seeker_key_x:
        call getKey
        mov [seeker_x], B
        ret
    seeker_key_y:
        call getKey
        mov [seeker_y], B
        ret
    seeker_key_g:
        mov [seeker_submode], 0x01
        ret
    seeker_key_m:
        mov [mode], 0x02
        ret

seeker:
    push BP
    mov BP, SP
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ; Keyboard Handling
    call seeker_kb
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ; Modes
    
    cmp [seeker_submode], 0x00
    jz seeker_idle
    cmp [seeker_submode], 0x01
    jz seeker_active
    
    seeker_active:
        mov X, [seeker_x]
        mov Y, [seeker_y]
        call gotoPosition
    
    seeker_idle:
    mov SP, BP
    pop BP
    ret
