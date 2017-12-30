;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Battery

; Copy the current charge of the battery in kJ into the B register
; Cost: 0kJ
; Modifies: A, B
getCharge:
    mov A, BATTERY_POLL
    hwi BATTERY_HW
    ret 0

; Copy the maximum capacity of the battery into the B register
; Cost: 0kJ
; Modifies: A, B
getCapacity:
    mov A, BATTERY_GET_MAX_CAPACITY
    hwi BATTERY_HW
    ret 0

; Refill the battery
; Cost: -60000kJ
; Modifies: A
resetCharge:
    MOV A, BATTERY_REFILL
    hwi BATTERY_HW
    ret 0
