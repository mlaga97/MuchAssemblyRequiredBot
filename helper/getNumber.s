getNumber:
    call getKey
    
    cmp B, KEY_0
    jz getByte_0
    cmp B, KEY_1
    jz getByte_1
    cmp B, KEY_2
    jz getByte_2
    cmp B, KEY_3
    jz getByte_3
    cmp B, KEY_4
    jz getByte_4
    cmp B, KEY_5
    jz getByte_5
    cmp B, KEY_6
    jz getByte_6
    cmp B, KEY_7
    jz getByte_7
    cmp B, KEY_8
    jz getByte_8
    cmp B, KEY_9
    jz getByte_9
    cmp B, KEY_A
    jz getByte_A
    cmp B, KEY_B
    jz getByte_B
    cmp B, KEY_C
    jz getByte_C
    cmp B, KEY_D
    jz getByte_D
    cmp B, KEY_E
    jz getByte_E
    cmp B, KEY_F
    jz getByte_F
    
    ret 0
    
    getByte_0:
        mov B, 0x0
        ret 0
    getByte_1:
        mov B, 0x1
        ret 0
    getByte_2:
        mov B, 0x2
        ret 0
    getByte_3:
        mov B, 0x3
        ret 0
    getByte_4:
        mov B, 0x4
        ret 0
    getByte_5:
        mov B, 0x5
        ret 0
    getByte_6:
        mov B, 0x6
        ret 0
    getByte_7:
        mov B, 0x7
        ret 0
    getByte_8:
        mov B, 0x8
        ret 0
    getByte_9:
        mov B, 0x9
        ret 0
    getByte_A:
        mov B, 0xA
        ret 0
    getByte_B:
        mov B, 0xB
        ret 0
    getByte_C:
        mov B, 0xC
        ret 0
    getByte_D:
        mov B, 0xD
        ret 0
    getByte_E:
        mov B, 0xE
        ret 0
    getByte_F:
        mov B, 0xF
        ret 0
