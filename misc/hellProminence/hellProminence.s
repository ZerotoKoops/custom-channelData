musHellProminenceStart:
    tempo 132
musHellProminenceChannel1:
.redefine HI_VOL $6
.redefine LO_VOL $4

.rept 2 INDEX REPTCTR_2
.rept 2 INDEX REPTCTR
.ifeq REPTCTR_2 0
    octave 3
.else 
    octave 4
.endif
; Measure 1-2,5-6
    vol HI_VOL
    duty $01
    vibrato $e1
    env $0 $03
.rept 2
    beat d E1+S3 d S4
    beat d E1 ds E2 f E1 ds E2
.endr
; Measure 3-4,7-8
    beat d E1
    
.ifeq REPTCTR 0
    beat a S3 g S4
    env $0 $00
    ;beat a HF+HF
    beat a Q+E1
    vol LO_VOL
    vibrato $00
    beat a E2+Q
    vol LO_VOL-2
    beat a Q
.else
    octaveu
    beat d S3 c S4
    env $0 $00
    ;beat d HF+HF
    beat d Q+E1
    vol LO_VOL
    vibrato $01
    beat d E2+Q
    vol LO_VOL-2
    beat d Q
.endif
    rest Q
.endr
.endr

musHellProminenceChannel1Measure9Loop:
; Measure 9,11
    duty $03
    vibrato $61
    env $0 $03

.rept 2 INDEX REPTCTR
    octave 5
.ifeq REPTCTR 0
    vol LO_VOL
.endif
    beat d E1 a E2 g E1
.ifeq REPTCTR 0
    vol LO_VOL+1
.endif
    beat c E2 d E1 c E2
; Measure 10,12
.ifeq REPTCTR 0
    vol HI_VOL
.endif
    octaved
    beat a E1 ou d E2 a E1
.ifeq REPTCTR 1
    vol LO_VOL+1
.endif
    beat g E2 e E1 c E2
.endr
; Measure 13,21
    duty $02
    env $0 $00
    octave 4
.rept 2
    vibrato $82
    vol HI_VOL
    beat d HF c E1 d E2
; Measure 14,22
    beat ds HF fs E1 a E2
; Measure 15,23
    beat g Q+E1
    vol LO_VOL
    vibrato $02
    beat g E2+Q
; Measure 16,24
    vibrato $82
    vol HI_VOL
    beat d Q+E1
    vol LO_VOL
    vibrato $02
    beat d E2+Q

; Measure 17,25
    vibrato $82
    vol HI_VOL
    beat d HF c E1 d E2
; Measure 18,26
    beat ds HF fs E1 ds E2
; Measure 19-20,27-28
    beat d Q+E1
    vol LO_VOL
    vibrato $02
    beat d E2+Q r HF+Q

    octaveu
.endr

.rept 2 INDEX REPTCTR
; Measure 29,37
    duty $02
    env $0 $00
    vibrato $62
    vol HI_VOL
    octave 5
    beat a HF 
    beat g E1 a E2
; Measure 30-31,38-39
    ;beat d HF+Q+Q
    beat d Q+E1
    vibrato $02
    vol LO_VOL
    beat d E2+Q
    vol LO_VOL-2
    beat d Q

; Measure 31b,39b
    vibrato $62
    vol HI_VOL
    beat a Q g Q
; Measure 32,40
    octaveu
    beat c Q od a Q+E1 g E2
; Measure 33,41
    beat a HF g E1 a E2
; Measure 34-35b,42-43b
.ifeq REPTCTR 1
    octaveu
.endif
    beat d HF+E1
    vibrato $02
    vol LO_VOL
    beat d E2+Q+Q
; Measure 35c-36,43c-44
    vol LO_VOL-2
    beat d Q+Q

.ifeq REPTCTR 0
; Measure 36b
    beat d E1 r E2+Q
.else
; Measure 44b
    vibrato $01
    vol LO_VOL
    beat d E1
    vol LO_VOL+1
    beat d E2
    vibrato $00
    vol HI_VOL
    beat d E1
    vol HI_VOL+1
    vibrato $02
    env $0 $03
    beat d E2
/*
    octave 4
    ;duty $02
    ;vol LO_VOL-2
    vibrato $82
    ;env $0 $00
    vol LO_VOL
    beat e S3 f S4
    vol LO_VOL+1
    beat g S1 a S2
    vol HI_VOL
    beat as S3
    vol HI_VOL+1
    beat b S4
*/
.endif
.endr
; Measure 45
    ;duty $02
    ;vibrato $82
    env $1 $00
    octave 5
    vol HI_VOL
    ;beat c HF+Q
    beat c Q+E1
    vol LO_VOL
    vibrato $02
    env $0 $00
    beat c E2+Q
; Measure 46
    env $1 $00
    vol HI_VOL
    vibrato $82
    octaved
    beat a HF
    octaveu
    env $1 $05
    beat c E1 od b E2
; Measure 47
    env $1 $00
    beat g Q+E1
    vol LO_VOL
    vibrato $02
    env $0 $00
    beat g E2+Q
; Measure 48
    env $1 $00
    vibrato $82
    vol HI_VOL
    beat d Q+E1
    vol LO_VOL
    vibrato $02
    env $0 $00
    beat d E2+Q
; Measure 49
    octaveu
    env $1 $00
    vibrato $82
    vol HI_VOL
    beat c Q+E1
    vol LO_VOL
    vibrato $02
    env $0 $00
    beat c E2+Q
; Measure 50
    octaved
    vibrato $82
    vol HI_VOL
    env $1 $00
    beat a Q ou e Q+E1 d S3 r S4
; Measure 51-52
    octaved
    ;beat b HF+Q+HF
    beat b HF+E1
    vibrato $02
    vol LO_VOL
    env $0 $00
    beat b E2+Q
    vol LO_VOL-2
    beat b Q
; Measure 52c
    env $1 $00
    vibrato $82
    vol HI_VOL
    beat g S1
    env $0 $00
    beat a S2
    vol HI_VOL+1
    beat as S2
    vol HI_VOL+2
    beat b S4

; Measure 53
    env $1 $00
    octaveu
    beat c Q+E1
    vol LO_VOL
    vibrato $02
    env $0 $00
    beat c E2+Q
; Measure 54
    octaved
    env $1 $00
    vibrato $82
    vol HI_VOL
    beat a HF
    octaveu
    env $1 $05
    beat c E1 od b E2
; Measure 55
    env $1 $00
    beat g Q+E1
    vol LO_VOL
    vibrato $02
    env $0 $00
    beat g E2+Q
; Measure 56
    env $1 $00
    vibrato $82
    vol HI_VOL
    octaveu
    beat d HF
    env $1 $05
    beat d E1 e E2
; Measure 57
    env $1 $00
    beat f HF
    env $1 $05
    beat g E1 a E2
; Measure 58
    env $1 $00
    beat g Q f Q+E1 d S3 r S4
; Measure 59-60
    env $1 $00
    ;beat e HF+Q+HF r Q
    beat e Q+E1
    vibrato $02
    env $0 $00
    vol LO_VOL
    beat e E2+Q
    vol LO_VOL-2
    beat e HF r E1+E2

/*
    duty $03
    vibrato $61
    env $0 $03 
    vol LO_VOL-2
    octave 4
    beat a Y4 as Y5 ou c Y6
*/
    goto musHellProminenceChannel1Measure9Loop
    cmdff

musHellProminenceChannel0:
.redefine HI_VOL $5
.redefine LO_VOL $3

.rept 2 INDEX REPTCTR_2
.rept 2 INDEX REPTCTR
.ifeq REPTCTR_2 0
    octave 2
.else
    octave 3
.endif
; Measure 1-2,5-6
    vol HI_VOL+1
    duty $02
    vibrato $e1
    env $0 $03
.rept 2
    beat a E1+S3 a S4
    beat a E1 as E2 ou c E1 od as E2
.endr
; Measure 3-4,7-8
    beat a E1
    
.ifeq REPTCTR 0
    octaveu
    beat e S3 d S4
    env $0 $00
    ;beat a HF+HF
    beat e Q+E1
    vol LO_VOL+1
    vibrato $00
    beat e E2+Q
    vol LO_VOL-1
    beat e Q
.else
    octaveu
    beat a S3 g S4
    env $0 $00
    ;beat d HF+HF
    beat a Q+E1
    vol LO_VOL+1
    vibrato $01
    beat a E2+Q
    vol LO_VOL-1
    beat a Q
.endif
    rest Q
.endr
.endr

; Measure 9-12
    octave 3
    vol HI_VOL+1
    vibrato $e2
    duty $02
    ;beat d HF+Q+HF+Q
    beat d HF+E1
    vol LO_VOL+1
    vibrato $02
    beat d E2+HF
    vol LO_VOL-1
    beat d Q r HF+Q+Q

musHellProminenceChannel0Measure12bLoop:
; Measure 12b
    duty $02
    vibrato $82
    env $0 $00
    vol LO_VOL
    octave 3
/*
    beat c S1
    vol LO_VOL+1
    beat d S2
    vol HI_VOL
    beat e S3 f S4
    vol HI_VOL+1
    beat g S1 a S2
    vol HI_VOL+2
    beat as S3 ou c S4
*/
    beat d S1
    vol LO_VOL+1
    beat ds S2
    vol HI_VOL
    beat fs S3 g S4
    vol HI_VOL+1
    beat a S1 as S2
    vol HI_VOL+2
    octaveu
    beat c S3 cs S4

; Measure 13-16
    rest E1
    octave 4
    vibrato $02
    env $0 $03
    duty $03
    vol LO_VOL
.rept 3
    beat a E2 a E1 g S3 a S4 r Q+E1
.endr
; Measure 16a
    beat a E2 a E1 g S3 a S4 r E1 ou c E2 r E1
; Measure 17a-19
    octaved
.rept 2
    beat a E2 a E1 g S3 a S4 r Q+E1
.endr
; Measure 19a-20
    vol HI_VOL-1
    octave 4
    vibrato $e2
    env $0 $00
    duty $02
    beat d S3 c S4 d E1
    beat a S3 g S4 a E1
    octaveu
    beat d S3 c S4 d E1
    beat a S3 g S4 a HF

; Measure 21
    duty $00
    env $0 $00
    octave 3
    vibrato $82
    vol HI_VOL
    beat a HF g E1 a E2
; Measure 22
    beat as HF ou cs E1 e E2
; Measure 23
    beat d Q+E1
    vol LO_VOL
    vibrato $02
    beat d E2+Q
; Measure 24
    octaved
    vibrato $82
    vol HI_VOL
    beat a Q+E1
    vol LO_VOL
    vibrato $02
    beat a E2+Q

; Measure 25
    vibrato $82
    vol HI_VOL
    beat a HF g E1 a E2
; Measure 26
    beat as HF ou cs E1 od as E2
; Measure 27-28
    beat a E1

    vol HI_VOL-1
    octave 4
    vibrato $e2
    env $0 $00
    duty $02
    beat d S3 c S4 d E1
    beat a S3 g S4 a E1
    octaveu
    beat d S3 c S4 d E1
    vol HI_VOL
    beat a S3 g S4 a E1
    octaveu
    beat d S3 c S4 d Q

; Measure 29-44
.rept 4 INDEX REPTCTR
; Measure 29-30,33-34,37-38,41-42
    octave 4
    vol HI_VOL
    duty $02
    vibrato $e1
    env $0 $03
.rept 2
    beat d E1+S3 d S4
    beat d E1 ds E2 f E1 ds E2
.endr
; Measure 31-32,35-36,39-40,43-44
    beat d E1
    
.if (REPTCTR # 2) == 0
; Measure 31a-32,39a-40
    beat g S3 f S4
    env $0 $00
    ;beat g HF+HF
    beat g Q+E1
    vol LO_VOL
    vibrato $00
    beat g E2+Q
    vol LO_VOL-2
    beat g Q
.else
; Measure 35a-36,43a-44
    beat a S3 g S4
    env $0 $00
.ifeq REPTCTR 1
; Measure 35b-36
    ;beat a HF+HF
    beat a Q+E1
    vol LO_VOL
    vibrato $01
    beat a E2+Q
    vol LO_VOL-2
    beat a Q
.else ; REPTCTR == 3
; Measure 43b
    beat a Q
    env $0 $05
    beat a E1 a E2
; Masure 44
    env $0 $00
    octaveu
    beat d Q

    octave 3
    duty $02
    vibrato $82
    ;env $0 $00
    vol LO_VOL+1
    beat e Y1 fs Y2
    vol LO_VOL+2
    beat g Y3 a Y4
    vol HI_VOL+1
    beat b Y5 ou c Y6
    vol HI_VOL+2
    beat d Y1 e Y2
    beat fs Y3 g Y4
    vol HI_VOL+3
    beat a Y5 b Y6

/*
    beat c S3 d S4
    vol LO_VOL+1
    beat e S1 f S2
    vol HI_VOL
    beat g S3
    vol HI_VOL+1
    beat gs S4
*/
.endif
.endif

.ifneq REPTCTR 3 
; Measure 32c,35c,40c
    rest Q
.endif
.endr


; Measure 45
    ;duty $02
    ;vibrato $82
    env $1 $00
    octave 3
    vol HI_VOL
    ;beat a HF+Q
    beat a Q+E1
    vol LO_VOL
    vibrato $02
    env $0 $00
    beat a E2+Q
; Measure 46
    env $1 $00
    vol HI_VOL
    vibrato $82
    beat f HF
    env $1 $05
    beat a E1 g E2
; Measure 47
    env $1 $00
    beat d Q+E1
    vol LO_VOL
    vibrato $02
    env $0 $00
    beat d E2+Q
; Measure 48
    octaved
    env $1 $00
    vibrato $82
    vol HI_VOL
    beat b Q+E1
    env $0 $00
    vibrato $02
    vol LO_VOL
    beat b E2+Q
; Measure 49
    octaveu
    env $1 $00
    vibrato $82
    vol HI_VOL
    beat a Q+E1
    vol LO_VOL
    vibrato $02
    env $0 $00
    beat a E2+Q
; Measure 50
    vibrato $82
    vol HI_VOL
    env $1 $00
    beat f Q ou c Q+E1 od b E2
; Measure 51-52
    octaved
    ;beat g HF+Q+Q r HF
    beat g HF+E1
    vibrato $02
    vol LO_VOL
    env $0 $00
    beat g E2+Q r Q

; Measure 52c
    env $1 $00
    vibrato $82
    vol HI_VOL-1
    beat e S1
    env $0 $00
    beat f S2
    vol HI_VOL
    beat g S2
    vol HI_VOL+1
    beat gs S4

; Measure 53
    env $1 $00
    vol HI_VOL
    octave 3
    beat a Q+E1
    vol LO_VOL
    vibrato $02
    env $0 $00
    beat a E2+Q
; Measure 54
    env $1 $00
    vibrato $82
    vol HI_VOL
    beat f HF
    env $1 $05
    beat a E1 g E2
; Measure 55
    env $1 $00
    beat d Q+E1
    vol LO_VOL
    vibrato $02
    env $0 $00
    beat d E2+Q
; Measure 56
    env $1 $00
    vibrato $82
    vol HI_VOL
    beat b HF g E1 a E2
; Measure 57
    beat as HF ou c E1 d E2
; Measure 58
    beat c Q od as Q+E1 f E2
; Measure 59
    beat g Q

    duty $02
    env $0 $07
    vol HI_VOL+2
    octave 5
    beat g Q fs Q 
; Measure 60
    beat d Q od a Q g Q
; Measure 61-62
    beat a HF+Q
    vol $0
    beat gs3 HF+Q gs3 HF+Q+Q

    goto musHellProminenceChannel0Measure12bLoop
    cmdff

musHellProminenceChannel4:
.redefine HI_VOL $0e
.redefine LO_VOL $0f

.rept 2 INDEX REPTCTR
; Measure 1-3
    octave 2
    duty LO_VOL
.rept 3
    beat d HF+Q
.endr
; Measure 4
    rest E1
    duty HI_VOL
.ifeq REPTCTR 0
    octave 2
.else
    octave 3
.endif
    beat a S3 g S4 a E1
    octaveu
    beat d S3 c S4 d E1
    beat a S3 g S4 
; Measure 5-7
    octave 2
    duty LO_VOL
.rept 3
    beat d HF+Q
.endr
; Measure 8
    rest E1
    duty HI_VOL
.ifeq REPTCTR 0
    octave 3
.else
    octave 4
.endif
    beat d S3 c S4 d E1
    beat a S3 g S4 a E1
    octaveu
    beat d S3 c S4
.endr

; Measure 9-12
    ;duty HI_VOL
    octave 2
    ;beat d HF+Q+HF+Q r HF+Q+HF+Q
    beat d HF+E1
    duty LO_VOL
    beat d E2+HF+Q r HF+Q+HF+Q

musHellProminenceChannel4Measure13Loop:
; Measure 13-17
    duty HI_VOL
    octave 2
.rept 5
    beat d E1+S3 a S4 r E1
    octaveu
    beat c E2 od a S1 r S2 d E2 
.endr
; Measure 18
    beat c E1+S3 g S4 r E1
    octaveu
    beat c E2 od g S1 r S2 c E2
; Measure 19-25
.rept 7
    beat d E1+S3 a S4 r E1
    octaveu
    beat c E2 od a S1 r S2 d E2
.endr
; Measure 26
    beat ds E1+S3 as S4 r E1
    octaveu
    beat ds E2 f S1 r S2 ds E2
; Measure 27-28
    octaved
.rept 2
    beat d E1+S3 a S4 r E1
    octaveu
    beat c E2 od a S1 r S2 d E2
.endr

; Measure 29-32
.rept 4
    beat ds E1+S3 b S4 r E1
    octaveu
    beat ds E2 r E1 od b E2
.endr    
; Measure 33-35
.rept 3
    beat f E1+S3 ou c S4 r E1
    beat f E2 r E1 c E2
    octaved
.endr    
; Measure 36
    beat f E1+S3 ou c S4 r E1
    octaved
    beat f E2 r E1 c E2
; Measure 37-40
.rept 4
    beat ds E1+S3 b S4 r E1
    octaveu
    beat ds E2 r E1 od b E2
.endr    
; Measure 41-42
.rept 2
    beat f E1+S3 ou c S4 r E1
    beat f E2 r E1 c E2
    octaved
.endr 
; Measure 43-44
.rept 2
    beat g E1+S3 ou d S4 r E1
    beat f E2 r E1 d E2
    octaved
.endr       

; Measure 45-50
.rept 6
    beat g E1+S3 d S4 r E1
    beat g E2 ou c S1 r S2 d S3 r S4
    octaved
.endr    
; Measure 51
    beat g E1+S3 d S4 r E1
    octaveu
    beat g E2 f S1 r S2 d S3 r S4
    octaved
; Measure 52-56
.rept 5
    beat g E1+S3 d S4 r E1
    beat g E2 ou c S1 r S2 d S3 r S4
    octaved
.endr    
; Measure 57-58
.rept 2
    beat as E1+S3 f S4 r E1
    beat as E2 ou ds S1 r S2 f S3 r S4
    octaved
.endr   
; Measure 59
    beat g E1+S3 f S4 r E1
    octaveu
    beat g E2 e S1 r S2 c S3 r S4
    octaved
; Measure 60
    beat g E1+S3 e S4 r E1
    beat g E2 ou c S1 r S2 e S3 r S4
    octaved

; Measure 61-64
.rept 4
    beat d E1+S3 a S4 r E1
    octaveu
    beat c E2 od a S1 r S2 d E2 
.endr

    goto musHellProminenceChannel4Measure13Loop
    cmdff

musHellProminenceChannel6:
.redefine HI_VOL $6
.redefine LO_VOL $4

.redefine HIT  $2f ;$2a
.redefine BASS $24
.redefine TOM  $29
.redefine CRASH $27;$26 ;$2a

    vol HI_VOL
musHellProminenceChannel6Measure1Loop:
; Measure 1
    beat BASS E1+S3 TOM S4+E1
    beat HIT E2 r E1 TOM E2

    goto musHellProminenceChannel6Measure1Loop
    cmdff