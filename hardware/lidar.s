;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; LiDAR

; getPosition
;
; Copy the current (x,y) coordinates in the World in the X and Y registers
;
; Cost: 0kJ
; Modifies: A, X, Y
getPosition:
    mov A, LIDAR_GET_POS
    hwi LIDAR_HW
    ret 0

; getPath
;
; Calculate the shortest path to the specified coordinates and copy it to memory
;
; Cost: 50kJ
; Modifies: A, B, X, Y, 0x0000->Somewhere
getPath:
    mov A, LIDAR_GET_PATH
    hwi LIDAR_HW
    ret 0

; getMap
;
; Generate the current World's map and copy it to memory
;
; Cost: 10kJ
; Modifies: A, B, X, Y, 0x0000->Somewhere
getMap:
    mov A, LIDAR_GET_MAP
    hwi LIDAR_HW
    ret 0

; getWorldPosition
;
; Copy the current (x,y) coordinates in the Universe in the X and Y registers
;
; Cost: 0kJ
; Modifies: A, X, Y
getWorldPosition:
    mov A, LIDAR_GET_WORLD_POS
    hwi LIDAR_HW
    ret 0
