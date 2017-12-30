;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Inventory

; Get the contents of the inventory (B = Item ID, 0x0000 if empty)
; 0kJ
; Modifies: A, B
inventoryPoll:
    mov A, INVENTORY_POLL
    hwi INVENTORY_HW
    ret

; Safely destroy the contents of the inventory
; 100kJ
; Modifies: A
inventoryClear:
    mov A, INVENTORY_POLL
    hwi INVENTORY_HW
    ret
