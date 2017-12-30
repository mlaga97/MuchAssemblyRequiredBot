;**************************************
;* manhattanDist(x2,y2)
;* A = Distance between (X,Y) and (x2,y2)      
manhattanDist:
    PUSH BP             ; Save previous stack frame
    MOV BP, SP
    
    ; The old value of BP is at [BP + 0] 
    ; The return address is at [BP + 1]
    ; The x2 argument is at [BP + 2]
    ; The y2 argument is at [BP + 3]

    ; formula: |x1-x2| + |y1-y2|
    SUB X, [BP + 2]     ; X = (X - x2)
    
    ; A fancy way to get the absolute value of X
    MOV A, X            ; Copy X
    SAR A, 15           ; Fill A with sign
    XOR X, A            ; Do 'NOT X' if negative
    SUB X, A            ; Do 'ADD X, 1' if negative
    
    SUB Y, [BP + 3]     ; Y = (Y - y2)
    ; A simpler way to get the absolute value of Y
    JNS y_is_positive
    NEG Y               ; If Y was negative, it is NEG'd
y_is_positive:

    MOV A, X            ; A = |x1-x2|    
    ADD A, Y            ; A = |x1-x2| + |y1-y2|
    
    POP BP              ; Restore the previous stack frame
    RET 2               ; Return and POP our 2 arguments
