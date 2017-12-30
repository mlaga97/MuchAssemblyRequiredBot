collectBiomass:
    push BP
    mov BP, SP
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	; Find food

	push MAP_BIOMASS
	call locateItem
	
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	; Retrieve distance
	
	mov c, x
	mov d, y
	call getPosition
	
	push d
	push c
	call manhattanDist ; Store in A
	
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	; Decision tree
	
	cmp a, 1
	jnz moveToBiomass
		call faceItem
	
		push 0x01
		call laserWithdraw
		jmp biomassDone
	
	moveToBiomass:
		mov b, 1
		mov x, c
		mov y, d
		call gotoPosition
	
	biomassDone:
	
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	; Cleanup
	
    mov SP, BP
    pop BP
    ret 0
