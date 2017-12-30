faceItem:
    push BP
    mov BP, SP
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	; Find item

	push MAP_BIOMASS
	call locateItem
	
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	; Retrieve position
	
	mov c, x
	mov d, y
	call getPosition
	
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	; Stuff that 'works'
	
	cmp y, d
	jz x_diff
	cmp x, c
	jz y_diff
	
	x_diff:
		cmp x, c
		jg face_turnEast
			push EAST
			call turn
			jmp done
		face_turnEast:
			push WEST
			call turn
			jmp done
	y_diff:
		cmp y, d
		jg face_turnNorth
			push SOUTH
			call turn
			jmp done
		face_turnNorth:
			push NORTH
			call turn
			jmp done
	
	done:
	
	pop BP
	ret 0
