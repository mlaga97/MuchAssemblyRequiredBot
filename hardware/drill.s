;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Drill

; Get the status of the drill
; 0kJ
; Modifies: A, ???
drillGetStatus:
    mov A, DRILL_POLL
    hwi DRILL_HW
    ret 0

; Gather the resource located under the Cubot (4 tick)
; 1400kJ
; Modifies: A
drillSlow:
    mov A, DRILL_GATHER_SLOW
    hwi DRILL_HW
    ret 0

; Gather the resource located under the Cubot (1 tick)
; 2000kJ
; Modifies: A
drillFast:
    mov A, DRILL_GATHER_FAST
    hwi DRILL_HW
    ret 0
