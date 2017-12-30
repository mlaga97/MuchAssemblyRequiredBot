;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Constants

; Hardware IDs
LEGS_HW equ 1
LASER_HW equ 2
LIDAR_HW equ 3
KEYBOARD_HW equ 4
DRILL_HW equ 5
INVENTORY_HW equ 6
RNG_HW equ 0x07
CLOCK_HW equ 0x08
HOLOGRAM_HW equ 0x09
BATTERY_HW equ 0x0A
FLOPPY_HW equ 0x0B
RADIO_RECEIVER_HW equ 0x0C
COM_PORT_HW equ 0x0D

; Legs
LEGS_SET_DIRECTION equ 1
LEGS_SET_DIRECTION_AND_WALK equ 2

; Laser
LASER_WITHDRAW equ 1
LASER_DEPOSIT equ 2

; LiDAR
LIDAR_GET_POS equ 1
LIDAR_GET_PATH equ 2
LIDAR_GET_MAP equ 3
LIDAR_GET_WORLD_POS equ 4

; Keyboard
KEYBOARD_CLEAR equ 0
KEYBOARD_FETCH_KEY equ 1

; Drill
DRILL_POLL equ 1
DRILL_GATHER_SLOW equ 2
DRILL_GATHER_FAST equ 3

; Inventory
INVENTORY_POLL equ 1
INVENTORY_CLEAR equ 2

; Hologram
HOLOGRAM_CLEAR equ 0
HOLOGRAM_DISPLAY_HEX equ 1
HOLOGRAM_DISPLAY_STRING equ 2

; Battery
BATTERY_POLL equ 1             ; Current charge -> B
BATTERY_GET_MAX_CAPACITY equ 2 ; Maximum capacity -> B
BATTERY_REFILL equ 0xFFFF

; Floppy Drive
FLOPPY_POLL equ 1          ; Get staus: READY (0), NO_MEDIA (1) -> ???
FLOPPY_READ_SECTOR equ 2          ; Reads sector X to CPU ram starting at address Y
FLOPPY_WRITE_SECTOR equ 3         ; Writes sector X from CPU ram starting at Y

; Radio Receiver
RADIO_RECEIVER_LISTEN 1

; Com Port
COM_PORT_POLL equ 1
COM_PORT_OUT equ 2

; Directions
NORTH equ 0
EAST equ 1
SOUTH equ 2
WEST equ 3

; Map Objects
MAP_WALL equ 0x8000
MAP_BIOMASS equ 0x4000
MAP_FACTORY equ 0x2000
MAP_IRON equ 0x0200
MAP_COPPER equ 0x0100
MAP_CUBOT equ 0x0080
MAP_NPC equ 0x0040

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Keys - Courtesy of Jaggernaut

KEY_A equ 0x41
KEY_B equ 0x42
KEY_C equ 0x43
KEY_D equ 0x44
KEY_E equ 0x45
KEY_F equ 0x46
KEY_G equ 0x47
KEY_H equ 0x48
KEY_I equ 0x49
KEY_J equ 0x4A
KEY_K equ 0x4B
KEY_L equ 0x4C
KEY_M equ 0x4D
KEY_N equ 0x4E
KEY_O equ 0x4F
KEY_P equ 0x50
KEY_Q equ 0x51
KEY_R equ 0x52
KEY_S equ 0x53
KEY_T equ 0x54
KEY_U equ 0x55
KEY_V equ 0x56
KEY_W equ 0x57
KEY_X equ 0x58
KEY_Y equ 0x59
KEY_Z equ 0x5A
KEY_0 equ 0x30
KEY_1 equ 0x31
KEY_2 equ 0x32
KEY_3 equ 0x33
KEY_4 equ 0x34
KEY_5 equ 0x35
KEY_6 equ 0x36
KEY_7 equ 0x37
KEY_8 equ 0x38
KEY_9 equ 0x39
KEY_TILDE equ 0xc0
KEY_MINUS equ 0xbd
KEY_PLUS equ 0xbb
KEY_COMMA equ 0xbc
KEY_PERIOD equ 0xbe
KEY_SLASH equ 0xbf
KEY_BACKSLASH equ 0xdc
KEY_COLON equ 0xba
KEY_QUOTE equ 0xde
KEY_LEFT_BRACKET equ 0xdb
KEY_RIGHT_BRACKET equ 0xdd
KEY_TAB equ 0x9
KEY_CTRL equ 0x11
KEY_ALT equ 0x12
KEY_ENTER equ 0xd
KEY_SHIFT equ 0x10
KEY_ESC equ 0x1b
KEY_BS equ 0x8
KEY_CAPSLOCK equ 0x14
KEY_SPACE equ 0x20
KEY_MENU equ 0x5d
KEY_WIN equ 0x5b
KEY_PAUSE equ 0x13
KEY_SCROLLLOCK equ 0x91
KEY_INSERT equ 0x2d
KEY_HOME equ 0x24
KEY_PAGE_UP equ 0x21
KEY_PAGE_DOWN equ 0x22
KEY_END equ 0x23
KEY_DELETE equ 0x2e
KEY_UP equ 0x26
KEY_DOWN equ 0x28
KEY_LEFT equ 0x25
KEY_RIGHT equ 0x27
KEY_NUMPAD_0 equ 0x60
KEY_NUMPAD_1 equ 0x61
KEY_NUMPAD_2 equ 0x62
KEY_NUMPAD_3 equ 0x63
KEY_NUMPAD_4 equ 0x64
KEY_NUMPAD_5 equ 0x65
KEY_NUMPAD_6 equ 0x66
KEY_NUMPAD_7 equ 0x67
KEY_NUMPAD_8 equ 0x68
KEY_NUMPAD_9 equ 0x69
KEY_NUMPAD_PERIOD equ 0x6e
KEY_NUMPAD_SLASH equ 0x6f
KEY_NUMPAD_STAR equ 0x6a
KEY_NUMPAD_PLUS equ 0x6b
KEY_NUMPAD_MINUS equ 0x6d
KEY_NUMLOCK equ 0x90
KEY_F1 equ 0x70
KEY_F2 equ 0x71
KEY_F3 equ 0x72
KEY_F4 equ 0x73
KEY_F5 equ 0x74
KEY_F6 equ 0x75
KEY_F7 equ 0x76
KEY_F8 equ 0x77
KEY_F9 equ 0x78
KEY_F10 equ 0x79
KEY_F11 equ 0x7a
KEY_F12 equ 0x7b
