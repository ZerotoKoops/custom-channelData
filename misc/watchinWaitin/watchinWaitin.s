musWatchinWaitinStart:
    tempo 112
; Swing!
.redefine E1 R1+R2
.redefine E2 R3

.redefine MUS_LOOP 0

musWatchinWaitinChannel1:


; Measure 1-4
    vol $0
.rept 4
    beat gs3 W
.endr

    duty $03
    vibrato $00
    env $1 $00
    octave 2

.rept 2 INDEX REPTCTR

.ifeq REPTCTR 0
    .redefine HI_VOL $3
    .redefine LO_VOL $2
.else ;REPTCTR == 1
    .redefine HI_VOL $5
    .redefine LO_VOL $3
.endif

    vol HI_VOL
; Measure 5,9
    beat a W
; Measure 6,10
    beat d W
; Measure 7,11
    beat a HF+Q+R1+Y3+W7 
    env $0 $00
    vol LO_VOL
    beat a W8

    env $1 $00
    vol HI_VOL
    beat a E2
; Measure 8,12
.ifeq REPTCTR 0
    beat d W
.else ;REPTCTR == 1
    beat d HF+Q+R1+Y3+W7
    env $0 $00
    vol LO_VOL
    beat d W8
.endif
.endr

@measure12dLoop:
; Measure 12d
    .redefine HI_VOL $6
    .redefine LO_VOL $4

    octave 4
    duty $02
    vibrato $a1
    ;env $0 $00
    vol HI_VOL
    beat a E2
; Measure 13-14
.rept 2
    env $0 $00
    octaveu
    beat c E1 od a E2+Q+E1+Y5+W11
    vol LO_VOL
    beat a W12

    env $0 $06
    vol HI_VOL
    beat a E1 a E2
.endr
; Measure 15
    octaveu
    beat e E1 e E2 e E1 e E2+E1
    beat e E2 d E1 e E2
; measure 16
    env $0 $00
    beat d R1 c R2
    octaved
    beat a R3+HF r E1

    beat a E2
; Measure 17
    env $0 $06
    octaveu
    beat e E1 e E2 e E1 e E2
    beat d W1 e W2+Y2+R2 e E2
    beat e E1 e E2
; Measure 18
    beat d E1 d E2 d E1 d E2
    beat d E1 c E2 od a E1 
; Measure 18d-20
    env $0 $00
    beat b E2+HF+Q
    beat a E1 
    beat gs E2+HF+E1 r E2+E1

    .redefine HI_VOL $6
    .redefine LO_VOL $4
    octave 4
    beat a E2
; Measure 21
    env $0 $06
    octaveu
    beat e R1 e R2 e R3
    beat e E1 e E2+E1
    beat e E2 e E1 e E2
; Measure 22
    beat d E1 c E2 d E1 d E2+Q+E1

    octaved
    beat a E2
; Measure 23
    octaveu
    beat e E1 e E2 e E1 e E2
    beat d W1 e W2+Y2+R2 e E2
    beat e E1 e E2    
; Measure 24
    beat d E1 c E2 d E1 d E2+Q+E1

    octaved
    beat a E2
; Measure 25
    octaveu
    beat e R1+R2 e R3+R1 e R2+R3
    beat g E1 e E2 e E1 e E2
; Measure 26
    beat d E1 c E2 d E1 d E2+Q
    octaved
    beat a E1 a E2
; Measure 27
    env $0 $00
    octaveu
    beat c E1 od a E2+Q+E1+Y5+W11
    vol LO_VOL
    beat a W12

    env $0 $06
    vol HI_VOL
    beat a E1 a E2
; Measure 28
    env $0 $00
    octaveu
    beat c E1 od a E2+Q+E1 r E2+Q

; Measure 29-30
    env $0 $04
    duty $01
    octave 4
    vol LO_VOL
.rept 2
    beat e Q e Q e Q e Q
.endr
; Measure 31
    vol LO_VOL+1
    beat e Q e Q
    vol HI_VOL
    beat e Q
    vol HI_VOL+1
    beat e Q
; Measure 32
    vol HI_VOL
    octave 4
    env $0 $03
.rept 4 INDEX REPTCTR
    vol HI_VOL+REPTCTR
    beat a R1 a R2

.ifeq REPTCTR 3
    octave 4
    env $0 $06
    duty $02
    vibrato $a1
    vol HI_VOL
    beat a E2
.else ;REPTCTR ==! 3
    beat a R3
.endif

.endr

; Measure 33
    octaveu
    beat e E1 e E2 e E1 e E2
    beat d W1 e W2+Y2+R2 e E2
    beat e E1 e E2    
; Measure 34
    beat d E1 c E2 d E1 d E2+E1

    octave 3
    env $0 $04
    duty $01
    vibrato $00
    beat b E2 b E1

    env $0 $06
    duty $02
    vibrato $a1
    octave 4
    beat a E2
; Measure 35
    octaveu
    beat e R1 e R2 e R3
    beat e R1 e R2 e R3
    beat d W1 e W2+Y2 e R2 e R3
    beat e R1 e R2 e R3
; Measure 36
    beat d E1 c E2 d E1 d E2+Q+E1

    env $1 $00
    vol HI_VOL+1
    octaved
    beat a E2
; Measure 37
    octaveu
    beat e R1+R2 g R3+R1 e R2+R3
    beat a R1+R2 g R3+R1 e R2+R3
; Measure 38
    beat d R1+R2 c R3+R1 d R2+R3
    beat d E1 c E2 od a E1
; Measure 38d-40
    octaveu
    beat d E2+HF+Q
    env $0 $00
    beat c E1 od b E2+W
; Measure 41
    env $0 $04
    duty $01
    vibrato $00
    octave 5
    beat e HF+Q

; Measure 41d
    .redefine HI_VOL $5
    .redefine LO_VOL $3

    octave 4
    duty $02
    vibrato $a1
    env $0 $06
    vol HI_VOL
    beat a E1 a E2
; Measure 42-47
.rept 6 INDEX REPTCTR 
    env $0 $00
    octaveu
    beat c E1 od a E2+Q+E1+Y5+W11


.if (REPTCTR # 2) == 0
    rest W12+E1
.else
.ifeq REPTCTR 5
    rest W12+E1
.else ;REPTCTR #2 == 1 || REPTCTR ==! 5
    vol LO_VOL
    beat a W12

    env $0 $06
    vol HI_VOL
    beat a E1
.endif
.endif

.ifneq REPTCTR 5
    beat a E2
.endif
.endr

    goto @measure12dLoop
    cmdff


musWatchinWaitinChannel0:

; Measure 1-8
    vol $0
.rept 8
    beat gs3 W
.endr
; Measure 9
    rest Q
    env $0 $04
    duty $01
    vibrato $00

.rept 2 INDEX REPTCTR

.ifeq REPTCTR 0
    .redefine HI_VOL $4
    .redefine LO_VOL $2
.else ;REPTCTR == 1
    .redefine HI_VOL $5
    .redefine LO_VOL $3
.endif
    
.redefine CHL0_OCT 2

    vol HI_VOL
; Measure 9a,11a
    octave CHL0_OCT+1
    beat e Q+E1 od a E2 ou e Q+Q
; Measure 10a,12a
    beat d Q+E1 od a E2 
    octaveu    
.ifeq REPTCTR 0  
    beat d Q+Q
.else ;REPTCTR == 1
    beat d Q
.endif
.endr
    
@measure13Loop:
.rept 2
; Measure 13,15
    octave CHL0_OCT
    env $0 $00
    vol LO_VOL
    beat a Q

    octave CHL0_OCT+1
    env $0 $04
    vol HI_VOL
    beat e E1

    octave CHL0_OCT
    env $0 $00
    vol LO_VOL
    beat a E2+E1

    octave CHL0_OCT
    env $0 $04
    vol HI_VOL
    beat a E2 ou e E1

    octave CHL0_OCT
    env $0 $00
    vol LO_VOL
    beat a E2
; Measure 14,16  
    octave CHL0_OCT
    env $0 $00
    vol LO_VOL
    beat d Q

    octave CHL0_OCT+1
    env $0 $04
    vol HI_VOL
    beat d E1

    octave CHL0_OCT
    env $0 $00
    vol LO_VOL
    beat d E2+E1

    octave CHL0_OCT
    env $0 $04
    vol HI_VOL
    beat a E2 ou d E1

    octave CHL0_OCT
    env $0 $00
    vol LO_VOL
    beat a E2
.endr
; Measure 17
    octave CHL0_OCT+2
    env $0 $00
    vol LO_VOL
    beat c Q

    octave CHL0_OCT+1
    env $0 $04
    vol HI_VOL
    beat e E1

    octave CHL0_OCT+2
    env $0 $00
    vol LO_VOL
    beat c E2 od b E1

    octave CHL0_OCT
    env $0 $04
    vol HI_VOL
    beat a E2 ou e E1

    octave CHL0_OCT+1
    env $0 $00
    vol LO_VOL
    beat b E2
; Measure 18
    octave CHL0_OCT+1
    env $0 $00
    vol LO_VOL
    beat a Q

    octave CHL0_OCT+1
    env $0 $04
    vol HI_VOL
    beat d E1

    octave CHL0_OCT+1
    env $0 $00
    vol LO_VOL
    beat a E2 g E1

    octave CHL0_OCT
    env $0 $04
    vol HI_VOL
    beat a E2 ou d E1

    octave CHL0_OCT+1
    env $0 $06
    vol LO_VOL
    beat g E2    
; Measure 19
    env $0 $00
    octave 3
    ;vol HI_VOL
    beat g W
; Measure 20
    beat b HF+Q r Q


; Measure 21
    octave CHL0_OCT+2
    env $0 $00
    vol HI_VOL
    beat c E1

    octave CHL0_OCT+1
    beat e Y5
    
    octave CHL0_OCT+2
    vol LO_VOL
    beat c Y6+E1

    octave CHL0_OCT+2
    vol HI_VOL
    beat c E2

    octave CHL0_OCT+1
    vol LO_VOL
    beat e Q+E1 r E2
; Measure 22
    octave CHL0_OCT+2
    vol HI_VOL
    beat d E1

    octave CHL0_OCT+1
    beat g Y5
    
    octave CHL0_OCT+2
    vol LO_VOL
    beat d Y6+E1

    octave CHL0_OCT+2
    vol HI_VOL
    beat d E2

    octave CHL0_OCT+1
    vol LO_VOL
    beat g Q+E1 r E2
; Measure 23
    octave CHL0_OCT+2
    vol HI_VOL
    beat c E1

    octave CHL0_OCT+1
    beat e Y5
    
    octave CHL0_OCT+2
    vol LO_VOL
    beat c Y6+E1

    octave CHL0_OCT+2
    vol HI_VOL
    beat c E2

    octave CHL0_OCT+1
    vol LO_VOL
    beat e Q+E1 r E2
; Measure 24
    octave CHL0_OCT+2
    vol HI_VOL
    beat d E1

    octave CHL0_OCT+1
    beat c Y5
    
    octave CHL0_OCT+2
    vol LO_VOL
    beat d Y6+E1

    octave CHL0_OCT+2
    vol HI_VOL
    beat d E2

    octave CHL0_OCT+1
    vol LO_VOL
;   beat e R1+R2 e R3+R1 e R2+R3
    beat d W1 e W2+Y2+R2
    beat d W9 e W10+Y6+R1
    beat d W5 e W6+Y4+R3
; Measure 25
    octave CHL0_OCT+2
    vol HI_VOL
    beat c E1

    octave CHL0_OCT+1
    beat d Y5
    
    octave CHL0_OCT+2
    vol LO_VOL
    beat c Y6+E1

    octave CHL0_OCT+2
    vol HI_VOL
    beat c E2

    octave CHL0_OCT+1
    vol LO_VOL
    beat d Q+E1 r E2
; Measure 26
    octave CHL0_OCT+2
    vol HI_VOL
    beat d E1

    octave CHL0_OCT+1
    beat g Y5
    
    octave CHL0_OCT+2
    vol LO_VOL
    beat d Y6+E1

    octave CHL0_OCT+2
    vol HI_VOL
    beat d E2

    octave CHL0_OCT+1
    vol LO_VOL
    beat g Q+E1 r E2
; Measure 27
    octave CHL0_OCT+2
    vol HI_VOL
    beat c E1

    octave CHL0_OCT+1
    env $0 $06
    beat e E2
    
    octave CHL0_OCT
    vol HI_VOL+1
    beat a E1 a E2
    env $0 $00
    octaveu
    beat c E1 od a E2+Q
; Measure 28 
    beat r R1
    vol HI_VOL
    duty $00
    vibrato $01
    env $0 $00
    octave 5
    beat d R2+Y5 cs Y6
    beat c Y1 od b Y2 ou c Y3 cs Y4 d Y5 ds Y6
    env $0 $04
    beat e HF

; Measure 29-30
    env $0 $04
    duty $01
    vibrato $00
    octave 4
    vol LO_VOL
.rept 2
    beat c Q c Q c Q c Q
.endr
; Measure 31
    vol LO_VOL+1
    beat c Q c Q
    vol HI_VOL
    beat c Q
    vol HI_VOL+1
    beat c Q
; Measure 32
    vol HI_VOL
    octave 3
    env $0 $03
.rept 4 INDEX REPTCTR
    vol HI_VOL+REPTCTR
    beat c R1 c R2 c R3
.endr

; Measure 33
    .redefine HI_VOL $6
    .redefine LO_VOL $4

    duty $01
    octave 4
.rept 2
    vol LO_VOL
    env $0 $00
    beat e E1
    vol HI_VOL
    env $0 $04
    beat c E2 c E1 c E2
.endr
; Measure 34
    vol LO_VOL
    env $0 $00
    beat d E1

    vol HI_VOL
    env $0 $04
    octaved
    beat b E2

    vol LO_VOL
    env $0 $00
    octaveu
    beat e E1 d E2
    beat r R1 d R2 c R3
    beat d R1 c R2 od a R3+E1
; Measure 35a
    octaveu
    vol HI_VOL
    env $0 $04
    beat c E2

    vol LO_VOL
    env $0 $00
    beat e E1 a E2
    beat r E1 e E2 a E1

    vol HI_VOL
    env $0 $04
    beat c E2  
; Measure 36
    rest E1
    octaved
    beat b E2 b E1 b E2

    vol LO_VOL
    env $0 $00
    beat a R1 b R2 ou c R3
    beat e R1 d R2 c R3
; Measure 37-38
    env $0 $04
    vol HI_VOL
.rept 3
    beat c R1+R2 c R3+R1 c R2+R3
.endr
; Measure 38c
    beat c E1 c E2 c E1 c E2
; Measure 39-40
    env $0 $07
    vol LO_VOL
    beat a Q a Q g Q g E1 b E2+Q
; Measure 40b
    env $0 $06
    vol LO_VOL+1
    beat e R1 e R2 e R3
    vol HI_VOL
    beat a R1 a R2 a R3
    vol HI_VOL
    octaveu
    beat c R1 c R2 c R3
; Measure 41
    env $0 $04
    duty $01
    ;vibrato $00
    octave 4
    vol HI_VOL
    beat a W

.rept 3
; Measure 42,44,46
    octave CHL0_OCT
    env $0 $00
    vol LO_VOL
    beat a Q

    octave CHL0_OCT+1
    env $0 $04
    vol HI_VOL
    beat e E1

    octave CHL0_OCT
    env $0 $00
    vol LO_VOL
    beat a E2+E1

    octave CHL0_OCT
    env $0 $04
    vol HI_VOL
    beat a E2 ou e E1

    octave CHL0_OCT
    env $0 $00
    vol LO_VOL
    beat a E2
; Measure 43,45,47 
    octave CHL0_OCT
    env $0 $00
    vol LO_VOL
    beat d Q

    octave CHL0_OCT+1
    env $0 $04
    vol HI_VOL
    beat d E1

    octave CHL0_OCT
    env $0 $00
    vol LO_VOL
    beat d E2+E1

    octave CHL0_OCT
    env $0 $04
    vol HI_VOL
    beat a E2 ou d E1

    octave CHL0_OCT
    env $0 $00
    vol LO_VOL
    beat a E2
.endr

    goto @measure13Loop
    cmdff


.macro m_musWatchinWaitinChannel4Quarter
    duty HI_VOL
    beat \1 E1
    duty LO_VOL
    beat \1 Y5+W11 r W12
.endm
.macro m_musWatchinWaitinChannel4Eighths
    duty HI_VOL
    beat \1 R1+Y3+W7 r W8
    beat \2 Y5+W11 r W12
.endm

musWatchinWaitinChannel4:
.redefine HI_VOL $09
.redefine LO_VOL $08

; Measure 1-4
    rest W
    rest W
    rest W+HF+Q+E1
; Measure 4d
    octave 3
    duty LO_VOL
    beat e E2
.rept 3 INDEX REPTCTR
.ifeq REPTCTR 2
@measure13Loop:
.endif
; Measure 5,9,13
    beat g W
; Measure 6,10,14
    beat fs HF+Q+E1 e E2
; Measure 7,11,15
    beat g HF+Q+R1+Y3+W7 r W8 g E2
; Measure 8,12,16
    beat fs HF+Q+E1 e E2
.endr
; Measure 17
    octave 2
    beat a HF g HF
; Measure 18
    beat f HF e HF
; Measure 19
    octave 2
.rept 3
    m_musWatchinWaitinChannel4Quarter d 
.endr
    octaveu
    m_musWatchinWaitinChannel4Quarter d 
; Measure 20
.rept 3
    m_musWatchinWaitinChannel4Quarter e
.endr   
    ;duty LO_VOL
    octave 3
    beat a R1 e R2 od a R3

.rept 2 INDEX REPTCTR
; Measure 21,25
    octave 2
.rept 3
    m_musWatchinWaitinChannel4Quarter a
.endr
    m_musWatchinWaitinChannel4Eighths a a
; Measure 22,26
.rept 2
    m_musWatchinWaitinChannel4Quarter g
.endr
    octaveu
.rept 2
    m_musWatchinWaitinChannel4Quarter d 
.endr
; Measure 23,27
    octaved
.rept 4
    m_musWatchinWaitinChannel4Quarter f
.endr
; Measure 24,28
    m_musWatchinWaitinChannel4Quarter f2
    m_musWatchinWaitinChannel4Quarter f3
.ifeq REPTCTR 0
    m_musWatchinWaitinChannel4Quarter g2
    m_musWatchinWaitinChannel4Quarter g3
.else ;REPTCTR == 1
    octave 2
    duty HI_VOL
    beat e Y1 r Y2+Y3+Y4+E2+Q
.endif
.endr

; Measure 29
    duty HI_VOL
    octave 2
    beat a W
; Measure 30
    beat g W
; Measure 31
    beat fs W
; Measure 32
.rept 2
    beat f Y1 r Y2 f Y3 r Y4 f Y5 r Y6
.endr
    .redefine HI_VOL $0e
    .redefine LO_VOL $0f
.rept 2
    beat f Y1 r Y2 f Y3 r Y4 f Y5 r Y6
.endr

.rept 2
; Measure 33,35
    octave 2
.rept 3
    m_musWatchinWaitinChannel4Quarter a
.endr
    duty HI_VOL
    beat a R1 g R2 ds R3  
; Measure 34,36
.rept 3
    m_musWatchinWaitinChannel4Quarter e
.endr
    duty HI_VOL
    beat e R1 d R2 c R3  
.endr

; Measure 37
    beat d R1+R2 a R3+R1 d R2+R3
    beat c R1+R2 g R3+R1 c R2+R3
; Measure 38
    beat a R1+R2 e R3+R1 a R2+R3
    octaveu
    m_musWatchinWaitinChannel4Quarter d
    octaved
    duty HI_VOL
    beat e R1 d R2 c R3  
; Measure 39
    beat a HF+Q+E1 g E2+Q
; Measure 40b
    duty LO_VOL
    beat a Y1 r Y2 a Y3 r Y4 a Y5 r Y6
    duty HI_VOL
    octaveu
    beat c Y1 r Y2 c Y3 r Y4 c Y5 r Y6
    beat e Y1 r Y2 e Y3 r Y4 e Y5 r Y6
; Measure 41
    beat g Y1+Y2 r R2+R3+Q+HF


.redefine HI_VOL $09
.redefine LO_VOL $08
; Measure 42   
    octave 3
    duty LO_VOL
    beat g W
; Measure 43
    beat fs HF+Q+E1 e E2
; Measure 44
    beat g HF+Q+R1+Y3+W7 r W8 g E2
; Measure 45
    beat fs HF+Q+E1 e E2
; Measure 46
    beat g W
; Measure 47
    beat fs HF+Q+E1 e E2

    goto @measure13Loop
    cmdff

musWatchinWaitinChannel6:
.redefine HI_VOL $5
.redefine LO_VOL $3


.redefine HIT       $24; ;snare  ;$2a 
.redefine CRASH     $27;$2e;22 ;crash symbol   ;$52,$2e 
.redefine LO_TOM    $25;24 ;tom/clap
.redefine HI_TOM    $23;25
.redefine BASS      $29

; Measure 1-12
    vol HI_VOL
.rept 12 INDEX REPTCTR

.ifeq REPTCTR 5
@measure6Loop:
.endif

    beat HI_TOM Q
    beat HIT Q
    beat BASS Q
    beat HIT Q
.endr
; Measure 13-18
.rept 7
    beat HI_TOM Q
    beat HIT Q
    beat BASS Q
    beat HIT Q
.endr
; Measure 19
    beat HI_TOM Q
    beat HIT Q
    beat BASS E1

    beat HI_TOM W9 HI_TOM W10 HI_TOM W11 HI_TOM W12
    beat BASS R1 BASS R2 BASS R3

; Measure 20-27
.rept 7
    beat HI_TOM Q
    beat HIT Q
    beat BASS Q
    beat HIT Q
.endr
; Measure 28
    beat HI_TOM Q
    beat HIT Q
    beat BASS Q
    rest Q   
; Measure 29-31
.rept 3
    rest W
.endr
; Measure 32
.rept 4 INDEX REPTCTR
    vol HI_VOL-1+REPTCTR
    beat HIT R1 HIT R2 HIT R3
.endr

; Measure 33-36
    vol HI_VOL
.rept 4
    beat BASS Q
    beat HIT Q
    beat HI_TOM Q
    beat HIT Q
.endr
; Measure 37-38
; beat BASS R1+R2 BASS R3+R1 BASS R2+R3
; beat CRASH R1+R2+R3 HI_TOM R1+R2+R3
    vol HI_VOL+1
.rept 3
    beat BASS R1+R2 BASS R3 HI_TOM R1 BASS R2+R3
.endr
; Measure 38c
    vol LO_VOL
    beat CRASH Q
    vol HI_VOL
    beat HI_TOM Q
; Measure 39
    vol HI_VOL
    beat BASS Q
    beat HIT Q
    beat HI_TOM Q
    beat HIT Q
; Measure 40
    beat BASS Q
    beat HIT Q
.rept 2
    beat BASS R1 HIT R2 HIT R3
.endr

    goto @measure6Loop
    cmdff