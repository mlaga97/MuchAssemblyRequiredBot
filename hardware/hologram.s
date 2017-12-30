;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Hologram Projector

; void clear(void)
;
; Clear hologram projector display
;
; Cost: 0kJ
; Modifies: A
clear:
    mov A, HOLOGRAM_CLEAR
    hwi HOLOGRAM_HW
    ret 0

; void showHex(uint16 c)
;
; Use hologram projector to display a 16-bit value
;
; Cost: 0kJ
; Modifies: A, B
showHex:
    push BP
    mov BP, SP
    
    mov A, HOLOGRAM_DISPLAY_HEX
    mov B, [BP+2]
    hwi HOLOGRAM_HW
    
    mov SP, BP
    pop BP
    ret 1

; void showString(char* str)
;
; Use hologram projector to display a null-terminated string
;
; Cost: 0kJ
; Modifies: A, X
showString:
    push BP
    mov BP, SP
    
    mov A, HOLOGRAM_DISPLAY_STRING
    mov X, [BP+2]
    hwi HOLOGRAM_HW
    
    mov SP, BP
    pop BP
    ret 1

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Scrolling Text

scrollText:
    push BP
    mov BP, SP
    
    ; Get our actual address from the source and offset
    mov C, [BP+2]
    add C, [scrollCounter]
    
    ; Display the string
    push C
    call showString
    
    ; Increment the offset
    add [scrollCounter], 3
    
    ; Check to see if any of our next values are the null terminator
    cmp [C], 0
    jz scrollReset
    cmp [C+1], 0
    jz scrollReset
    cmp [C+2], 0
    jz scrollReset
    
    jmp scrollExit
    
    scrollReset:
        ; Reset the counter
        mov [scrollCounter], 0
    
    scrollExit:
        mov SP, BP
        pop BP
        ret 1
