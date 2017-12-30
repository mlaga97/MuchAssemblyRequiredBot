;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Teleoperated mode

teleop:
	push BP
	mov BP, SP

	; Keyboard handling
	call keyboardHandler

	mov SP, BP
	pop BP
	ret 0

keyboardHandler:
	call getKey

	cmp B, KEY_A
	jz keyHandler_teleop_A
	cmp B, KEY_D
	jz keyHandler_teleop_D
	cmp B, KEY_E
	jz keyHandler_teleop_E
	cmp B, KEY_M
	jz keyHandler_teleop_M
	cmp B, KEY_Q
	jz keyHandler_teleop_Q
	cmp B, KEY_S
	jz keyHandler_teleop_S
	cmp B, KEY_W
	jz keyHandler_teleop_W
	cmp B, KEY_Z
	jz keyHandler_teleop_Z

	ret 0

	; WASD movement
	keyHandler_teleop_A:
		push WEST
		call walk
		ret 0
	keyHandler_teleop_D:
		push EAST
		call walk
		ret 0
	keyHandler_teleop_S:
		push SOUTH
		call walk
		ret 0
	keyHandler_teleop_W:
		push NORTH
		call walk
		ret 0
		
	; Use drill
	keyHandler_teleop_E:
		call drillFast
		ret 0
	
	; Use laser
	keyHandler_teleop_Q:
		mov A, LASER_WITHDRAW
		mov B, 0x0001
		hwi LASER_HW
		ret 0
	
	; Set mode to autonomous
	keyHandler_teleop_M:
		mov [mode], 0x03
		ret 0

	; Set mode to seeker
	keyHandler_teleop_Z:
		mov [mode], 0x04
		ret 0
