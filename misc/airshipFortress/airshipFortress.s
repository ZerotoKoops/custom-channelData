musAirshipFortressStart:
    tempo 148

.macro m_musAirshipFortressChannel0Measure4
    beat \1 Q \2 S1 \2 S2 \2 E2
    beat \3 E1 \3 E2+E1 \4 E2
.endm

musAirshipFortressChannel1:
.redefine HI_VOL $6
.redefine LO_VOL $4

.redefine BASS_OCTAVE 2
.redefine GUITAR_OCTAVE 4

@measure1Loop:
; Measure 1
    duty $01
    vibrato $01
    env $0 $04
    vol HI_VOL
    octave 3
    beat e S1
    env $0 $00
    beat a S2+E2+Q r Q
    beat g E1 a E2
; Measure 2
    beat g W1 a W2 ou c W3+S2+E2
    octaved
    beat a Q
    octaveu
    beat a W1 ou c W2 e W3+S2 g E2+Q+Q
; Measure 3b
    beat e Q c E1
    env $0 $07
    octaved
    beat a E2+Q

.macro m_musAirshipFortressChannel1Measure4
; Measure 4
    env $0 $03
    duty $00
    vibrato $01
    octave 3
    m_musAirshipFortressChannel0Measure4 a e a e
; Measure 5
    beat a Q

    duty $01
    vibrato $01
    env $0 $00
    vol HI_VOL+1
    octave 5
    beat e Q
    env $0 $05
    beat ds Q+E1

    env $0 $03
    duty $00
    vibrato $01
    octave 3   
    beat f E2
; Measure 6
    m_musAirshipFortressChannel0Measure4 a e a e    
; Measure 7
    beat a Q

    duty $01
    vibrato $01
    env $0 $00
    vol HI_VOL+1
    octave 5
    beat ds Q
    env $0 $05
    beat e Q+E1

    env $0 $03
    duty $03
    vibrato $01
    octave 3   
    beat f E2 
.endm
    m_musAirshipFortressChannel1Measure4

; Measure 8
    rest E1
    duty $01
    vibrato $01
    env $0 $00
.macro m_musAirshipFortressChannel1Measure8
    beat a E2 ou c E1 e E2
    vibrato $a1
    beat g Q+S1
    vol LO_VOL
    vibrato $01
    beat g S2+E2+E1
; Measure 9a
    vol HI_VOL
    beat e E2 ds E1 e E2
.endm
    m_musAirshipFortressChannel1Measure8
    beat c Q e Q
; Measure 10-11
    beat ds Q od b Q+E1
    octave 4
    duty $02
    env $1 $00
    vibrato $61
    beat a E2 
    env $0 $00
    beat ou c E1 e E2
    env $0 $07
    beat ds Q od b Q 
    rest HF+E1
; Measure 12a-13
    duty $01
    vibrato $01
    env $0 $00
    octave 4
    m_musAirshipFortressChannel1Measure8
    beat gs W1 a W2+W3+S2+E2 e Q
; Measure 14
    vibrato $a1
    beat fs HF+E1
    vol LO_VOL
    vibrato $01
    beat fs E2+Q
; Measure 15
    vol HI_VOL
    vibrato $a1
    beat ds HF+E1
    vol LO_VOL
    vibrato $01
    beat ds E2+Q

; Measure 16-17
    rest E1
    octave 4
    vol HI_VOL
    m_musAirshipFortressChannel1Measure8
; Measure 17c
    octave 5
    beat c E1 od a E2 ou c E1 e E2
; Measure 18-19
    beat ds Q od b Q r E1
    octave 4
    duty $02
    vibrato $00
    env $1 $00
    beat a E2
    env $0 $00
    beat ou c E1 e E2
    env $0 $07
    beat ds Q od b Q 
    rest HF
; Measure 20
    duty $01
    env $0 $00
    vibrato $01
    octave 4
    beat b W1 ou c W2+W3+S2+E2+Q
    beat d Q e Q
; Measure 21
    beat d HF ds Q+E1 od b E2
; Measure 22
    vol HI_VOL
    vibrato $a1
    beat a HF+E1
    vol LO_VOL
    vibrato $01
    beat a E2+Q   
; Measure 23
    vol HI_VOL
    env $0 $03
    duty $00
    vibrato $01
    octave 3   
    m_musAirshipFortressChannel0Measure4 a e a e  

.rept 2 INDEX REPTCTR
; Measure 24   
    octave 5
.ifeq REPTCTR 0
    duty $02
    env $0 $00
    vibrato $a1
.else ;REPTCTR == 1
    duty $02
    env $1 $00
    vibrato $81
.endif
    beat a Q gs Q e HF
; Measure 25
    beat g Q fs Q ds HF
; Measure 26
    beat e Q od a Q ou c Q e Q
; Measure 27
    beat g Q fs Q ds HF

; Measure 28
    duty $01
    env $0 $00
    vibrato $01
    octave 5
    beat a Q gs Q e HF
; Measure 29
    beat g Q fs Q ds HF
; Measure 30
    beat e Q od a Q ou c Q e Q        
; Measure 31
    beat ds HF e Q od b Q
.endr

; Measure 32-35
    m_musAirshipFortressChannel1Measure4
; Measure 36
    duty $01
    env $0 $00
    vibrato $a1
    octave 5
    beat ds W1 e W2 a W3+S2+E2+Q+E1
    vol LO_VOL
    vibrato $01
    beat a E2+Q
; Measure 37
    vol HI_VOL
    env $0 $03
    duty $00
    vibrato $01
    octave 3
    beat a Q

    duty $01
    env $0 $00
    vibrato $01
    octave 5
    beat e W1 ds W2 d W3
    beat cs W4 c W5 od b W6
    beat as W7 a W8 gs W9
    beat g W10 fs W11 f W12
    env $0 $03
    beat e E1

    duty $00
    vibrato $01
    octave 3 
    beat as E2+E1 f E2
; Measure 38
    duty $01
    env $0 $00
    vibrato $01  
    octave 4
    beat gs W1 a W2+W3 ou c S2+E2
    octaved
    beat a Q ou ds Q+E1 e E2
; Measure 39
    octaved 
    beat a Q

    duty $01
    vibrato $01
    env $0 $00
    vol HI_VOL+1
    octave 5
    beat ds Q
    env $0 $05
    beat e Q+E1

    env $0 $03
    duty $03
    vibrato $01
    octave 3   
    beat f E2 

    goto @measure1Loop
    cmdff

musAirshipFortressChannel0:
.redefine HI_VOL $6
.redefine LO_VOL $4

@measure1Loop:
; Measure 1
    duty $00
    vibrato $01
    env $0 $04
    vol HI_VOL
    octave 3
    beat e S1
    env $0 $00
    beat e S2+E2+Q+E1
    vol LO_VOL
    beat e E2+E1

    vol HI_VOL
    beat e E2+Q
; Measure 2b
    beat e Q
    beat a W1 ou c W2 d W3+S2+E2+Q+Q
; Measure 3b
    beat ds E1 e E2
    beat cs E1 
    env $0 $07
    octaved
    beat a E2+Q


    octave GUITAR_OCTAVE
    env $0 $03
.rept 2
; Measure 4,6
    m_musAirshipFortressChannel0Measure4 e a3 e a3
; Measure 5,7
    m_musAirshipFortressChannel0Measure4 e a3 f as3
.endr

.rept 3
; Measure 8-9,12-13,16-17
.rept 2
    m_musAirshipFortressChannel0Measure4 e a3 e a3
.endr
; Measure 10-11,14-15,18-19
.rept 2
    m_musAirshipFortressChannel0Measure4 fs b3 fs b3
.endr
.endr

; Measure 20
    m_musAirshipFortressChannel0Measure4 g c g c
; Measure 21
    m_musAirshipFortressChannel0Measure4 a d as ds
; Measure 22-23
.rept 2
    m_musAirshipFortressChannel0Measure4 e a3 e a3
.endr

.rept 2*2
; Measure 24,28
    m_musAirshipFortressChannel0Measure4 e a3 e a3
; Measure 25,29
    m_musAirshipFortressChannel0Measure4 fs b3 fs b3
; Measure 26,30
    m_musAirshipFortressChannel0Measure4 g c g c
; Measure 27,31
    m_musAirshipFortressChannel0Measure4 a d as b3
.endr

.rept 2*2
; Measure 32,34,36,38
    m_musAirshipFortressChannel0Measure4 e a3 e a3
; Measure 33,35,37,39
    m_musAirshipFortressChannel0Measure4 e a3 f as3
.endr

    goto @measure1Loop
    cmdff



musAirshipFortressChannel4:
.redefine HI_VOL $0e
.redefine LO_VOL $0f

@measure1Loop:
; Measure 1
    duty HI_VOL
    octave 2
    vibrato $a1
    beat a T1 r T2
    beat a S2+E2+Q+HF
; Measure 2-3
    rest HF
    octave 3
    duty LO_VOL
    beat a HF+Q r Q+HF
; Measure 4
.macro m_musAirshipFortressChannel4Measure4
    octave BASS_OCTAVE
.ifeq \1 0
    beat a Q
.else
.ifeq \1 2
    beat a E1
    duty LO_VOL
    beat a S3

    duty HI_VOL
    beat a S4
.else ;\1 == 1,3,4
    beat a S1
    duty LO_VOL
    beat a S2

    duty HI_VOL
    beat a S3
    duty LO_VOL
    beat a S4 
    
    duty HI_VOL
.endif
.endif    

    octaveu
    beat c S1
    duty LO_VOL
    beat c S2
.if \1 <= 1
    duty HI_VOL
    beat c S3
    duty LO_VOL
    beat c S4
.else
.if \1 <= 3
    octaved
    duty HI_VOL
    beat a S3
    duty LO_VOL
    beat a S4
    octaveu
.else ;\1 > 3
    duty HI_VOL
    beat c S3
    duty LO_VOL
    beat c S4
.endif
.endif

    duty HI_VOL
    beat ds E1
    beat e E2+E1
    octaved
.ifeq \1 1    
    beat e E2
.else
.ifeq \1 5
    beat ds E2
.else ;\1 == 0,2,3
    duty HI_VOL
    beat a S3
    duty LO_VOL
    beat a S4
    duty HI_VOL
.endif
.endif
.endm

; Measure 4-7
    octave BASS_OCTAVE
    duty HI_VOL
.rept 4 INDEX REPTCTR
    m_musAirshipFortressChannel4Measure4 REPTCTR
.endr

; Measure 8
    m_musAirshipFortressChannel4Measure4 4
; Measure 9
    m_musAirshipFortressChannel4Measure4 1
; Measure 10
    m_musAirshipFortressChannel4Measure4 2
; Measure 11
    m_musAirshipFortressChannel4Measure4 3
; Measure 12-15,16-19
.rept 2
.rept 4 INDEX REPTCTR
    m_musAirshipFortressChannel4Measure4 REPTCTR
.endr
.endr
; Measure 20
    octave BASS_OCTAVE+1
    beat c Q

    beat ds S1
    duty LO_VOL
    beat ds S2

    duty HI_VOL
    beat ds S3
    duty LO_VOL
    beat ds S4

    duty HI_VOL
    beat fs E1 g E2+E1
    beat c S3
    duty LO_VOL
    beat c S4

    duty HI_VOL
; Measure 21
    beat c E1 d E2 fs Q
    beat ds E1 e E2+E1 od e E2
; Measure 22
    m_musAirshipFortressChannel4Measure4 2
; Measure 23
    m_musAirshipFortressChannel4Measure4 3

.rept 2
; Measure 24-27
.rept 4 INDEX REPTCTR
    m_musAirshipFortressChannel4Measure4 REPTCTR
.endr
; Measure 28
    m_musAirshipFortressChannel4Measure4 0
; Measure 29
    m_musAirshipFortressChannel4Measure4 5
; Measure 30
    octave BASS_OCTAVE
    beat e E1
    duty LO_VOL
    beat e S3

    duty HI_VOL
    beat a S4

    octaveu
    beat c S1
    duty LO_VOL
    beat c S2

    octaved
    duty HI_VOL
    beat a S3
    duty LO_VOL
    beat a S4
    octaveu

    duty HI_VOL
    beat ds E1
    beat e E2+E1
    octaved

    duty HI_VOL
    beat a S3
    duty LO_VOL
    beat a S4
    duty HI_VOL
; Measure 31
    m_musAirshipFortressChannel4Measure4 3
.endr

; Measure 32-35,36-39
.rept 2
.rept 4 INDEX REPTCTR
    m_musAirshipFortressChannel4Measure4 REPTCTR
.endr
.endr

    goto @measure1Loop
    cmdff


.macro m_musAirshipFortressChannel6Measure4
    vol HI_VOL
    beat BASS E1
    vol LO_VOL
    beat HI_TOM E2

    vol HI_VOL
    beat HIT E1 BASS E2

    vol LO_VOL
    beat LO_TOM E1
    vol HI_VOL
    beat BASS E2

    beat HIT E1
    vol LO_VOL
    beat HI_TOM E2
.endm
.macro m_musAirshipFortressChannel6Measure8
    vol HI_VOL
    beat CRASH Q

    vol HI_VOL
    beat HIT E1 BASS E2

    vol LO_VOL
    beat LO_TOM E1
    vol HI_VOL
    beat BASS E2

    beat HIT E1
    vol LO_VOL
    beat HI_TOM E2
.endm

musAirshipFortressChannel6:
.redefine HI_VOL $6
.redefine LO_VOL $4

.redefine HIT       $24; ;snare  ;$2a 
.redefine CRASH     $27;$2e;22 ;crash symbol   ;$52,$2e 
.redefine LO_TOM    $25;24 ;tom/clap
.redefine HI_TOM    $23;25
.redefine BASS      $29

@measure1Loop:
; Measure 1-3
    vol LO_VOL
.rept 3
.rept 4
    beat BASS E1 HI_TOM E2
.endr
.endr

; Measure 4-7
.rept 4
    m_musAirshipFortressChannel6Measure4
.endr
.rept 3
; Measure 8,12,16
    m_musAirshipFortressChannel6Measure8
; Measure 9-11,13-15,17-19
.rept 3
    m_musAirshipFortressChannel6Measure4
.endr
.endr
; Measure 20-23
.rept 4
    m_musAirshipFortressChannel6Measure4
.endr

.rept 2+1
; Measure 24,32
    m_musAirshipFortressChannel6Measure8
; Measure 25-31,33-39
.rept 7
    m_musAirshipFortressChannel6Measure4
.endr
.endr


    goto @measure1Loop
    cmdff