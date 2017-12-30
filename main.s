;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Data segment
.data
    counter: DW 0x0000
    
    ; Modes:
    ;   0x00: Debug
    ;   0x01: Init
    ;   0x02: Teleop
    ;   0x03: Autonomous
    ;   0x04: Seeker
    mode: DW 0x03
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ; Assorted variables
    
    scrollCounter: DW 0
    
    seeker_x: DW 0
    seeker_y: DW 0
    seeker_submode: DW 0
    
    spin_direction: DW 0
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ; String literals
    
    helloworld: DW "Hello, World!", 0
    suchasm: DW "Such ASM, much wow!", 0
    scrolltest: DW "Scrolling text test text!", 0
    testString: DW "String literals work now!", 0
    taunt: DW "All your biomass are belong to us!", 0
    
    modetext_init: DW "INIT", 0
    modetext_debug: DW "DEBUG", 0

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Code/executable segment

.text
    ; Reset the battery level
    call resetCharge
    
    ; Show message
    push taunt
    call scrollText
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ; Modes
    
    cmp [mode], 0x00
    jz mode_debug
    cmp [mode], 0x01
    jz mode_init
    cmp [mode], 0x02
    jz mode_teleop
    cmp [mode], 0x03
    jz mode_auto
    cmp [mode], 0x03
    jz mode_seeker
    
    jmp mode_all
    
    mode_debug:
        ;call debug
        jmp mode_all
    mode_init:
        call init
        jmp mode_all
    mode_teleop:
        call teleop
        jmp mode_all
    mode_auto:
        call autonomous
        jmp mode_all
    mode_seeker:
        ;call seeker
        jmp mode_all
    mode_all:
    
    ; Update program counter
    add [counter], 1
    
    brk
