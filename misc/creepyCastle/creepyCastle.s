musCreepyCastleStart:
    tempo 95
musCreepyCastleChannel1:
.redefine HI_VOL $6
.redefine LO_VOL $4


; Measure 1
    vol $0
    beat gs3 Q
    vol HI_VOL
    env $0 $05
    duty $02
    octave 5
    beat b Q g Q e Q
; Measure 2
    rest Q
    beat ds Q g Q ou c Q
; Measure 3
    rest Q
    octaved
    beat b Q g Q e Q
; Measure 4
    rest Q
    beat d Q f Q as Q

@measure5Loop:
    vol HI_VOL
    env $0 $05
    duty $02
    octave 5
; Measure 5
    beat g3 Q
    beat b Q g Q e Q
; Measure 6
    beat g3 Q
    beat ds Q g Q ou c Q
; Measure 7
    beat g3 Q
    octaved
    beat b Q g Q e Q    
; Measure 8
    beat f3 Q
    beat d Q f Q as Q

; Measure 9
    beat b3 Q
    beat b Q g Q e Q
; Measure 10
    beat g3 Q
    beat ds Q g Q ou c Q
; Measure 11
    beat b3 Q
    octaved
    beat b Q g Q e Q  
; Measure 12
    beat f3 Q
    beat d Q f Q as Q

; Measure 13
    beat e4 Q
    beat b Q g Q e Q
; Measure 14
    beat ds4 Q
    beat ds Q g Q ou c Q
; Measure 15
    beat g4 Q
    octaved
    beat b Q g Q e Q  
; Measure 16
    beat as4 Q
    beat d Q f Q as Q

; Measure 17
    vol LO_VOL
    env $0 $00
    duty $00
    vibrato $e1
    octave 3
    beat b W
; Measure 18
    octaveu
    beat ds W
; Measure 19
    octaved
    beat b W
; Measure 20
    octaveu
    beat e HF d HF

; Measure 21
    vol HI_VOL
    ;env $0 $00
    duty $03
    ;vibrato $e1
    octave 4
    beat e Q+E1 fs E2 g Q b Q
; Measure 22
    octaveu
    beat c HF g HF
; Measure 23
    beat e HF b HF
; Measure 24
    beat as HF f HF

; Measure 25
    duty $02
    octave 3
    beat d Q+E1 e E2 f Q a Q
; Measure 26
    beat as HF ou f HF
; Measure 27
    beat d HF a HF
; Measure 28
    beat gs HF ds HF


.macro m_musCreepyCastleMelody
; Measure 29,37
    beat c Q c R1+R2 d R3
    beat ds Q c Q
; Measure 30,38
.rept 2
    beat g W1 fs W2 g W3 fs W4
    beat g W5 fs W6 g W7 fs W8
    beat g W9 fs W10 g W11 fs W12
.endr
    beat g Q+E1+S3+W10
    beat f W11 g W12
; Measure 31,39
    beat gs Q gs R1+R2 g R3
    beat f Q d E1+S3+W10 e W11 f W12
; Measure 32,40
    beat g R1+R2 gs R3
    beat g R1+R2 f R3
    beat g R1+R2 f R3
    beat ds R1+R2 d R3
; Measure 33,41
    beat c Q c R1+R2 d R3
    beat ds Q c Q
; Measure 34,42
.rept 2
    beat g W1 fs W2 g W3 fs W4
    beat g W5 fs W6 g W7 fs W8
    beat g W9 fs W10 g W11 fs W12
.endr
    beat g HF
; Measure 35,43
    beat cs R1+R2 f R3
    beat gs R1+R2 f R3
    beat g R1+R2 d R3
    octaved
    beat b R1+R2 ou d R3
; Measure 36,44
    beat ds R1+Y3 d Y4 ds Y5 d Y6
    beat c E1
    octaved
    beat b T5 ou c T6 d T7 od b T8
    octaveu
    beat c Q+Q
.endm

.rept 2 INDEX REPTCTR
; Measure 29-36,37-44
.ifeq REPTCTR 0
    duty $01
    vibrato $61
    env $0 $05
    vol HI_VOL
    octave 3
.else ;REPTCTR == 1
    duty $02
    vibrato $81
    env $0 $05
    vol HI_VOL
    octave 5
.endif
    m_musCreepyCastleMelody
.endr

; Measure 45
    rest Q

    vol HI_VOL
    env $0 $05
    duty $03
    vibrato $e1
    octave 4  
    beat f R1+R2 
    env $0 $07
    beat g R3
    beat gs Q ou c Q
; Measure 46
    beat d Q+R1+R2
    env $0 $05
    octaved
    beat a R3
.rept 2
    octaveu
    beat d R1+R2 od a R3
.endr
; Measure 47
    env $0 $07
    beat as Q
    env $0 $05
    beat as R1+R2 ou c R3
    beat cs R1+R2 c R3
    env $0 $07
    octaved
    beat as R1 ou c R2 cs R3
; Measure 48
    env $0 $05
    beat d R1+R2 cs R3
    beat d R1+R2 ds R3
    beat d R1+R2 c R3
    octaved
    beat as R1+R2 ou c R3
; Measure 49
    env $0 $07
    octaved
    beat a Q
    env $0 $05
    beat a R1+R2 b R3
    env $0 $07
    octaveu
    beat cs Q e Q
; Measure 50
    env $0 $05
.rept 2
    beat ds R1+R2 d R3
.endr
    beat ds R1+R2 f R3
    beat ds R1+R2 d R3
; Measure 51
    env $0 $07
    beat cs Q
    env $0 $05
    beat cs R1+R2 od b R3
    env $0 $07
    beat a E1+S3 r S4
    beat a R1 b R2 ou cs R3
; Measure 52
    beat d Q c Q od as Q a Q
; Measure 53
    beat g Q
    env $0 $05
    beat g R1+R2 a R3
    beat as R1+R2 a R3
    env $0 $07
    beat g Q
; Measure 54
    rest Q
    env $0 $05
    beat g R1+R2 a R3
    beat b R1+R2 a R3
    env $0 $07
    beat g R1 a R2 b R3

.rept 2 INDEX REPTCTR
.ifeq REPTCTR 0
; Measure 55-62,63-70
    duty $01
    vibrato $61
    env $0 $06
    vol HI_VOL
    octave 5
.else ; REPTCTR == 1
    vol HI_VOL
    env $0 $07
    duty $03
    vibrato $e1
    octave 4
.endif
    m_musCreepyCastleMelody
.endr

; Measure 71
    octave 3
    env $0 $05
    beat c R1+R2 d R3
    beat ds Q
    env $0 $07
    beat ds Q
    env $0 $05
    beat d R1+R2 c R3
; Measure 72
    env $0 $07
    beat cs Q od as Q ou cs Q
    env $0 $05
    beat fs R1+R2 od as R3
; Measure 73
    beat b R1+R2 ou cs R3
    beat ds Q
    env $0 $07
    beat ds Q
    env $0 $05
    beat cs R1+R2 
    env $0 $07
    octaved
    beat b R3+Q
; Measure 74b
    env $0 $05
    beat b R1+R2 ou cs R3
    beat ds R1+R2 cs R3
    env $0 $07
    octaved
    beat b Q

    goto @measure5Loop
    cmdff

musCreepyCastleChannel0:
.redefine HI_VOL $6
.redefine LO_VOL $4

.macro m_musCreepyCastleChannel0Whole
    vol HI_VOL
    vibrato $e1
    beat \1 HF+E1
    vol LO_VOL
    vibrato $01
    beat \1 E2+Q
.endm
.macro m_musCreepyCastleChannel0Measure12
    vibrato $e1
    beat \1 Q+E1+S3
    vol LO_VOL
    vibrato $01
    beat \1 S4+Q r E1

    vibrato $e1
    vol HI_VOL
    beat \2 E2
.endm
.macro m_musCreepyCastleChannel0Measure17
.rept 2
    beat \1 E1 \2 E2
    beat \3 E1 \4 E2
.endr
.endm


; Measure 1
    env $0 $00
    duty $02
    octave 4
    m_musCreepyCastleChannel0Whole e
; Measure 2
    m_musCreepyCastleChannel0Whole c
; Measure 3
    m_musCreepyCastleChannel0Whole e
; Measure 4
    m_musCreepyCastleChannel0Whole d

@measure5Loop:
    env $0 $00
    duty $02
    octave 4
; Measure 5
    octaved
    m_musCreepyCastleChannel0Whole b
; Measure 6
    octaveu
    m_musCreepyCastleChannel0Whole c
; Measure 7
    octaved
    m_musCreepyCastleChannel0Whole b
; Measure 8
    m_musCreepyCastleChannel0Whole as

; Measure 9
    m_musCreepyCastleChannel0Whole g
; Measure 10
    m_musCreepyCastleChannel0Whole ds
; Measure 11
    m_musCreepyCastleChannel0Whole g
; Measure 12
    vol HI_VOL
    m_musCreepyCastleChannel0Measure12 d g4

; Measure 13
    octave 4
    m_musCreepyCastleChannel0Measure12 b b
; Measure 14
    octaveu
    m_musCreepyCastleChannel0Measure12 c c
; Measure 15
    m_musCreepyCastleChannel0Measure12 e e
; Measure 16
    m_musCreepyCastleChannel0Whole f


.redefine HI_VOL $4
.redefine LO_VOL $2

    vibrato $41
    env $1 $02
    ;duty $02
    vol HI_VOL
.rept 2
; Measure 17,21
    octave 6
    m_musCreepyCastleChannel0Measure17 c7 b g e
; Measure 18,22
    m_musCreepyCastleChannel0Measure17 gs g ds c
; Measure 19,23
    m_musCreepyCastleChannel0Measure17 c7 b g e
; Measure 20,24
    m_musCreepyCastleChannel0Measure17 g f d as5
.endr
; Measure 25
    m_musCreepyCastleChannel0Measure17 as a f d
; Measure 26
    m_musCreepyCastleChannel0Measure17 fs f cs as5
; Measure 27
    m_musCreepyCastleChannel0Measure17 as a f d
; Measure 28
    m_musCreepyCastleChannel0Measure17 f ds c gs5

; Measure 29
.redefine HI_VOL $5
.redefine LO_VOL $3
    duty $02
    vibrato $00
    env $0 $06
    vol HI_VOL
    octave 5
    beat g Q g Q g Q g Q
; Measure 30
    beat fs Q fs Q g Q g Q
; Measure 31
    beat gs Q gs Q gs Q gs Q
; Measure 32
    beat g Q g Q g Q g R1+R2 d R3
; Measure 33
    beat g Q g Q g Q g Q
; Measure 34
    beat fs Q fs Q g Q g Q
; Measure 35
    beat gs Q gs Q g Q g Q
; Measure 36
    beat g Q g R1+R2 g R3 g Q g Q

; Measure 37-44
    duty $00
    vibrato $61
    env $0 $07
    vol HI_VOL
    octave 4
    m_musCreepyCastleMelody

; Measure 45-48
.redefine HI_VOL $5
.redefine LO_VOL $3
    rest Q
    duty $02
    vibrato $00
    env $0 $06
    vol HI_VOL
    octave 3
.rept 3
    beat f HF f Q+Q
.endr
; Measure 48b
    beat g HF g Q+Q
; Measure 49b
    beat e HF e Q+Q
; Measure 50b
    beat g HF g Q+Q
; Measure 51b
    beat a HF 
    octaved
    beat a R1 b R2 ou c R3
; Measure 52
    rest Q
    beat a HF fs Q+Q
; Measure 53b
    env $0 $05
    beat g Q
.rept 2
    beat as R1+R2 g R3
.endr
; Measure 54
    rest Q
    beat g Q
    beat b R1+R2 g R3
    env $0 $07
    beat g R1 a R2 b R3

; Measure 55
    duty LO_VOL
    octave 4
    env $0 $06
.rept 4
    beat g Q
.endr
; Measure 56
    beat fs Q fs Q g Q g Q
; Measure 57
.rept 4
    beat gs Q
.endr
; Measure 58
.rept 3
    beat g Q
.endr
    beat g R1+R2 d R3 
; Measure 59
.rept 4
    beat g Q
.endr
; Measure 60
    beat fs Q fs Q g Q g Q
; Measure 61
    beat gs Q gs Q g Q g Q
; Measure 62
    beat g Q g R1+R2 g R3
    beat g Q g Q

; Measure 63-70
    vol HI_VOL
    env $0 $07
    duty $02
    vibrato $e1
    octave 2
    m_musCreepyCastleMelody

; Measure 71
    vol LO_VOL
    env $0 $00
    vibrato $61
    duty $02
    octave 6
    beat c T1 ds T2 g S2+E2+Q
    octaved
    beat b T1 ou ds T2 g S2+E2+Q
; Measure 72
    octaved
    beat as T1 ou cs T2 fs S2+E2+Q
    octaved
    beat as T1 ou cs T2 e S2+E2+Q
; Measure 73
.rept 2
    octaved
    beat fs T1 b T2 ou ds S2+E2+Q    
.endr
; Measure 74
    octaved
.rept 2
    beat e T1 fs T2 a S2+E2+Q
.endr

    goto @measure5Loop
    cmdff

.macro m_musCreepyCastleChannel4Measure37
.if NARGS < 4
.rept 2
    beat \1 E1 r E2
    beat \2 R1 r R2 \3 R3
.endr
.else
    beat \1 E1 r E2
    beat \2 R1 r R2 \3 R3
    beat \4 E1 r E2
    beat \5 R1 r R2 \6 R3
.endif
.endm


musCreepyCastleChannel4:
.redefine HI_VOL $0e
.redefine LO_VOL $0f


; Measure 1-4
.rept 4
    rest W
.endr

@measure5Loop:
; Measure 5
    vibrato $e1
    duty LO_VOL
    octave 3
    beat e W
; Measure 6
    beat ds W
; Measure 7
    beat e W
; Measure 8
    beat d W

.rept 2
; Measure 9,13
    octave 2
    beat e HF b HF
; Measure 10,14
    octaveu
    beat c HF od g HF
; Measure 11,15
    beat e HF b HF
; Measure 12,16
    beat as HF f HF
.endr

.rept 2
; Measure 17,21
    octave 3
    beat e W
; Measure 18,22
    beat g W
; Measure 19,23
    beat e W
; Measure 20,24
    beat d W
.endr

; Measure 25
    beat d W
; Measure 26
    beat f W
; Measure 27
    beat d W
; Measure 28
    beat c W


.redefine HI_VOL $0f
.redefine LO_VOL $08

    duty LO_VOL
    octave 5
.rept 3
; Measure 29-31
.rept 4
    beat c E1 r E2
.endr
.endr
; Measure 32
    octave 4
.rept 3
    beat b E1 r E2
.endr
    octaveu
    beat c R1 r R2 od b R3

    octave 5
.rept 2
; Measure 33-34
.rept 4
    beat c E1 r E2
.endr
.endr   
; Measure 35 
    octave 5
.rept 2
    beat cs E1 r E2
.endr
    octaved
.rept 2
    beat b E1 r E2
.endr    
; Measure 36
    octave 5
    beat c E1 r E2
    beat c R1 r R2 od b R3
    octaveu
    beat c E1 r E2

    duty HI_VOL
    octave 2
    beat g Y1 r Y2 a Y3 r Y4 b Y5 r Y6
    octaveu

.redefine HI_VOL $0f
.redefine LO_VOL $08

.macro m_musCreepyCastleChannel4Melody
; Measure 37
    m_musCreepyCastleChannel4Measure37 c g g2
; Measure 38
    m_musCreepyCastleChannel4Measure37 c fs g2 c g g2
; Measure 39
    octaved
    m_musCreepyCastleChannel4Measure37 gs gs3 gs f gs3 d
; Measure 40
    beat g E1 r E2
    octaveu
    beat g R1 r R2 od g Y5 r Y6
    beat g R1 r R2 ou g R3

    octave 2
    beat g Y1 r Y2 a Y3 r Y4 b Y5 r Y6
; Measure 41
    octaveu
    m_musCreepyCastleChannel4Measure37 c g g2
; Measure 42
    m_musCreepyCastleChannel4Measure37 c fs g2 c g g2
; Measure 43
    octaved
    m_musCreepyCastleChannel4Measure37 f gs3 f g g3 g
; Measure 44
    octave 3 
    beat c E1 r E2
    beat g R1 r R2 od g Y5 r Y6
    octaveu
    beat c R1 r R2 g R3
.endm

    m_musCreepyCastleChannel4Melody
    octave 2
    beat c Y1 r Y2 d Y3 r Y4 e Y5 r Y6

; Measure 45
    m_musCreepyCastleChannel4Measure37 f gs3 c f gs3 c
; Measure 46
    m_musCreepyCastleChannel4Measure37 d a3 d d a3 d
; Measure 47
    m_musCreepyCastleChannel4Measure37 as as3 f as as3 f

; Measure 48
    m_musCreepyCastleChannel4Measure37 g as3 g g as3 g
; Measure 49
    m_musCreepyCastleChannel4Measure37 cs a3 cs a1 a3 a1
; Measure 50
    m_musCreepyCastleChannel4Measure37 ds as3 as1 ds as3 ds
; Measure 51
    octave 2
    beat cs E1 r E2
    octaveu
    octaveu
    beat cs R1 r R2 od od cs Y5 r Y6
    beat a E1 r E2

    octave 1
    beat a Y1 r Y2 b Y3 r Y4 ou c Y5 r Y6
; Measure 52
    octave 2
    m_musCreepyCastleChannel4Measure37 d d4 a1 d c4 a1
; Measure 53
    octave 2
    beat g E1 r E2
    octaveu
    beat as R1 r R2 od d R3
.rept 2
    beat g R1 r R2 d R3
.endr
; Measure 54
    beat g E1 r E2
    octaveu
    beat b R1 r R2 od d R3
    beat g R1 r R2 d R3
    
    beat g R1 a R2 b R3

; Measure 55-62
.redefine HI_VOL $0f
.redefine LO_VOL $08
    duty LO_VOL
    octave 3
    m_musCreepyCastleChannel4Melody
; Measure 62d
    octave 2
    beat g Y1 r Y2 a Y3 r Y4 b Y5 r Y6


; Measure 63
    octave 3
    duty LO_VOL
    beat c T1 cs T2 d T3 ds T4
    beat e T5 fs T6 g T7 gs T8

    beat a T1 as T2 b T3 ou c T4
    beat cs T5 d T6 ds T7 e T8

    beat fs T1 g T2 gs T3 a T4
    beat as T5 b T6 ou c T7 cs T8

    beat d T1 ds T2 e T3 fs T4
    beat g T5 gs T6 a T7 b T8
; Measure 64
    octaveu
    beat c T1 od b T2 a T3 gs T4
    beat g T5 fs T6 e T7 ds T8

    beat d T1 cs T2 c T3 od b T4
    beat a T5 gs T6 g T7 fs T8

    beat e T1 ds T2 d T3 cs T4
    beat c T5 od b T6 a T7 gs T8

    beat g T1 fs T2 e T3 d T4
    beat cs T5 od b T6 as T7 a T8
; Measure 65
    beat gs Y1 a Y2 as Y3 b Y4 ou c Y5 cs Y6
    beat d Y1 ds Y2 e Y3 f Y4 fs Y5 g Y6
    beat gs Y1 a Y2 as Y3 b Y4 ou c Y5 cs Y6
    beat d Y1 ds Y2 e Y3 f Y4 fs Y5 g Y6
; Measure 66
    beat g T1 fs T2 f T3 e T4
    beat ds T5 d T6 cs T7 c T8
    
    octaved
    beat b T1 as T2 a T3 gs T4
    beat g T5 fs T6 f T7 e T8

    beat ds T1 d T2 cs T3 c T4
    octaved
    beat b T5 as T6 a T7 gs T8

    beat g T1 fs T2 f T3 e T4
    beat ds T5 d T6 cs T7 c T8
; Measure 67
    beat c T1 cs T2 d T3 ds T4
    beat e T5 fs T6 g T7 gs T8

    beat a T1 as T2 b T3 ou c T4
    beat cs T5 d T6 ds T7 e T8

    beat fs T1 g T2 gs T3 a T4
    beat as T5 b T6 ou c T7 cs T8

    beat d T1 ds T2 e T3 fs T4
    beat g T5 gs T6 a T7 b T8
; Measure 68   
    octaveu
    beat c T1 od b T2 as T3 a T4
    beat gs T5 g T6 fs T7 e T8

    beat ds T1 d T2 cs T3 c T4
    octaved
    beat b T5 as T6 a T7 gs T8

    beat g T1 fs T2 e T3 ds T4
    beat d T5 cs T6 c T7 od b T8

    beat as T1 a T2 gs T3 g T4
    beat fs T5 e T6 ds T7 d T8
; Measure 69
    beat cs T1 d T2 ds T3 e T4
    beat fs T5 g T6 gs T7 a T8

    beat b T1 ou c T2 cs T3 d T4
    beat ds T5 e T6 fs T7 g T8

    beat gs T1 a T2 b T3 ou c T4
    beat cs T5 d T6 ds T7 e T8

    beat fs T1 g T2 gs T3 a T4
    beat b T5 ou c T6 cs T7 d T8    
; Measure 70
    ;duty LO_VOL
    octave 6
    beat ds Y1 r Y2+Y3
    beat d Y4 ds Y5 d Y6

    beat c S1 r S2
    octaved
    beat b T5 ou c T6 d T7 od b T8
    octaveu
    beat c E1 r E2+Q

; Measure 71
    octave 6
    beat r T1 c T2 ds S2+E2+Q
    octaved
    beat r T1 b T2 ou ds S2+E2+Q
; Measure 72
.rept 2
    octaved
    beat r T1 as T2 ou cs S2+E2+Q
.endr
; Measure 73
    octaved
.rept 2
    beat r T1 fs T2 b S2+E2+Q
.endr
; Measure 74
.rept 2
    beat r T1 e T2 fs S2+E2+Q
.endr

    goto @measure5Loop
    cmdff




.define musCreepyCastleChannel6 MUSIC_CHANNEL_FALLBACK EXPORT