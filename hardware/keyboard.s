;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Keyboard

; Clear the keypress buffer
; Cost: 0kJ
; Modifies: A, B
getKey:
    mov A, KEYBOARD_FETCH_KEY
    hwi KEYBOARD_HW
    ret 0

; Reads the oldest keycode from the buffer into the B register and remove it
; Cost: 0kJ
; Modifies: A, B
clearBuffer:
    mov A, KEYBOARD_CLEAR
    hwi KEYBOARD_HW
    ret 0
