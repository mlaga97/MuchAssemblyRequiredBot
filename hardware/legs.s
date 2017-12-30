;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Legs

; void turn(Direction d)
;
; Turn towards a direction
;
; Cost: 20kJ
; Modifies: A, B
turn:
    push BP
    mov BP, SP
    
    mov A, LEGS_SET_DIRECTION
    mov B, [BP+2]
    hwi LEGS_HW
    
    mov SP, BP
    pop BP
    ret 1

; void showHex(Direction d)
;
; Walk in a direction
;
; Cost: 100kJ
; Modifies: A, B
walk:
    push BP
    mov BP, SP
    
    mov A, LEGS_SET_DIRECTION_AND_WALK
    mov B, [BP+2]
    hwi LEGS_HW
    
    mov SP, BP
    pop BP
    ret 1
