locateItem_Naive:
    push BP
    mov BP, SP
    
    ; Get parameter
    mov B, [BP+2]
    
    ; for(y = 0; x < 16; x++)
    mov y, 0
    findItem_for_y:
    
        ; for(x = 0; x < 16; x++)
        mov x, 0
        findItem_for_x:
        
            ; if(testObject[x + 16*y] == 5) return
            mov a, y
            mul 16
            add a, x
            add a, 0x0100
            cmp [a], B
            jz findItem_return
        
            add x, 1
            cmp x, 16
            jnz findItem_for_x
    
        add y, 1
        cmp y, 16
        jnz findItem_for_y
    
    findItem_return:
        mov SP, BP
        pop BP
        ret 1

locateItem:
    push BP
    mov BP, SP
    
    ; Get parameter
    mov B, [BP+2]
    
    ; for(y = 0; x < 16; x++)
    mov y, 0
    findItem_for_y:
    
        ; for(x = 0; x < 16; x++)
        mov x, 0
        findItem_for_x:
        
            ; if(testObject[x + 16*y] == itemType) return
            mov a, y
            mul 16
            add a, x
            add a, 0x0100
            cmp [a], B
            jnz locateItem_isntItem
				
				; if(distance < maxDistance) maxDistance = distance
				push currentX
				push currentY
				call manhattanDist
				
            locateItem_isntItem:
        
            add x, 1
            cmp x, 16
            jnz findItem_for_x
    
        add y, 1
        cmp y, 16
        jnz findItem_for_y
