;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Laser

; void laserWithdraw(ItemType i)
;
; Withdraw item of type i
;
; Cost: 30kJ
; Modifies: A, B
laserWithdraw:
    push BP
    mov BP, SP
    
    mov A, LASER_WITHDRAW
    mov B, [BP+2]
    hwi LASER_HW
    ret
    
    mov SP, BP
    pop BP
    ret 1 

; void laserWithdraw(ItemType i)
;
; Deposit item of type i
;
; Cost: 30kJ
; Modifies: A, B
laserDeposit:
    push BP
    mov BP, SP
    
    mov A, LASER_DEPOSIT
    mov B, [BP+2]
    hwi LASER_HW
    ret
    
    mov SP, BP
    pop BP
    ret 1
