musGoodEggGalaxyStart:
    tempo 150
musGoodEggGalaxyChannel1:
.redefine HI_VOL $6
.redefine LO_VOL $4

; Measure 1 (16th pickup)
    vol $0
    beat gs3 S4+Q
; Measure 2b
    vol HI_VOL
    octave 4
    duty $01
    env $0 $05
    vibrato $82
    beat g R1 ou c R2 f R3
    env $0 $07
    beat e Q
    env $0 $05
    beat c R1 od g R2 ou c R3
; Measure 3
    env $0 $00
    beat d HF+E1
    vibrato $02
    vol LO_VOL
    ;env $0 $00
    beat d E2+Q r Q

musGoodEggGalaxyChannel1Measure4bLoop:
.rept 2 INDEX REPTCTR
.rept 2 INDEX REPTCTR_2
; Measure 4b,8b
    vibrato $a2
    env $0 $07
    duty $02
    vol HI_VOL
    octave 4
    beat e Q+E1 f E2 r Q
; Measure 5,9
    env $1 $00
    beat f Q+E1
    env $0 $00
    beat d E2+Q
    vol LO_VOL
    vibrato $02
    beat d Q

.ifeq REPTCTR_2 0
; Measure 6
    rest Q
    vibrato $a2
    env $0 $07
    vol HI_VOL
    beat e Q+E1 f E2 r Q
; Measure 7
    env $1 $00
    beat a Q+E1
    env $0 $00
    beat g E2+Q
    vol LO_VOL
    vibrato $02
    beat g Q r Q
.endif
.endr

.ifeq REPTCTR 0
; Measure 10
    vol HI_VOL
    octave 4
    vibrato $a2
    env $1 $00
    beat as HF
    env $0 $00
    vol LO_VOL
    beat as E1

    vol HI_VOL
    beat gs E2+Q
; Measure 11
    beat g HF+E1
    vibrato $02
    vol LO_VOL
    beat g E2+E1
    vol LO_VOL-1
    beat g E2
; Measure 4
    rest Q
.endif
.endr

; Measure 12-13
    vol HI_VOL
    octave 4
    vibrato $a2
    env $1 $00
    beat as HF+E1
    vibrato $02
    env $0 $00
    vol LO_VOL
    beat as E2+Q+Q
    vol LO_VOL-1
    beat as Q
; Measure 13c
    vol HI_VOL
    vibrato $a2
    beat gs HF
; Measure 14-15
    beat g HF+E1
    vibrato $02
    vol LO_VOL
    beat g E2+Q+Q
    vol LO_VOL-1
    beat g Q+E1 r E2

; Measure 15d
    vibrato $e1
    env $1 $00
    duty $02
    vol HI_VOL
    octave 5
    beat g Q

.rept 2 INDEX REPTCTR
; Measure 16,20
    octave 6
    beat c Q+E1
    vol LO_VOL
    env $0 $00
    vibrato $01
    beat c E2+E1

    vibrato $e1
    env $1 $00
    vol HI_VOL
    octaved
    beat e E2+E1 g E2
; Measure 17,21
    beat fs T1 g T2
    beat fs S2+E2+E1
    vol LO_VOL
    env $0 $00
    vibrato $01
    beat fs E2+E1   

    vibrato $e1
    env $1 $00
    vol HI_VOL
    octaveu
    beat d E2+E1
; Measure 17d-18,21d-22  
    beat d E2+HF
    vol LO_VOL
    env $0 $00
    vibrato $01  
    beat d Q+E1

    vibrato $e1
    env $1 $00
    vol HI_VOL
    beat c S3
    env $0 $00
    octaved
    beat b S4
; Measure 19,23
    env $1 $00
    octaveu
    beat c Q+E1+S3
    vol LO_VOL
    env $0 $00
    vibrato $01  
    beat c S4+Q
.ifeq REPTCTR 0
    rest Q
.else
    vol LO_VOL-1
    beat c Q
.endif
; Measure 24
    vibrato $e2
    env $1 $00
    vol HI_VOL        
.endr
    octave 6
    beat f Q+E1
    vol LO_VOL
    env $0 $00
    vibrato $01
    beat f E2+E1

    vibrato $e1
    env $1 $00
    vol HI_VOL
    octaved
    beat a E2+E1 ou c E2
; Measure 25
    octaved
    beat b T1 ou c T2
    octaved
    beat b S2+E2+Q
    vol LO_VOL
    env $0 $00
    vibrato $01
    beat b Q 
    
    ;rest Q
    vol LO_VOL-2
    beat b Q
; Measure 26
    vibrato $e1
    env $1 $00
    vol HI_VOL        
    octave 6
    beat d Q+E1
    vol LO_VOL
    env $0 $00
    vibrato $01
    beat d E2+E1

    vibrato $e1
    env $1 $00
    vol HI_VOL
    octaved
    beat g E2+E1 b E2
; Measure 27
    beat a T1 b T2
    beat a S2+E2+Q
    vol LO_VOL
    env $0 $00
    vibrato $01
    beat a Q 
    
    ;rest Q      
    vol LO_VOL-2
    beat a Q

; Measure 28
    vibrato $a2
    env $0 $00
    duty $02
.redefine HI_VOL $5
.redefine LO_VOL $3
    vol HI_VOL
    octave 5
    beat e HF
    vol LO_VOL
    beat e E1

.redefine HI_VOL $6
.redefine LO_VOL $3
    vol HI_VOL
    beat fs E2+Q 
; Measure 29
    beat g HF
    vol LO_VOL
    beat g E1

.redefine HI_VOL $7
.redefine LO_VOL $4
    vol HI_VOL
    beat a E2+Q 
; Measure 30
    beat f HF
    vol LO_VOL
    beat f E1

.redefine HI_VOL $8
.redefine LO_VOL $5
    vol HI_VOL
    beat g E2+Q 
; Measure 31
    beat a HF
    vol LO_VOL
    beat a E1

.redefine HI_VOL $8
.redefine LO_VOL $6
    vol HI_VOL
    beat b E2+E1
    vol LO_VOL+1
    beat b E2

.rept 2 INDEX REPTCTR
; Measure 32,40

.ifeq REPTCTR 0
    .redefine HI_VOL $6
    .redefine LO_VOL $4
    octave 5
    env $1 $00
    duty $02
    vibrato $81
.else
    .redefine HI_VOL $7
    .redefine LO_VOL $5
    octave 6
    ;env $0 $06
    ;duty $02
    ;vibrato $a1
.endif
    vol HI_VOL
    beat c Q+E1 od g E2+Q ou g Q
; Measure 33,41
    beat g Q+E1 c E2+Q g Q
; Measure 34,42
    beat g Q+E1 f E2+Q od a Q
; Measure 35,43
    octaveu
    beat f HF+Q

    vol HI_VOL+1
    beat g Q
; Measure 36,44
    vol HI_VOL
    beat e HF

    octaved
    beat g Q ou c Q
; Measure 37,45
    beat c HF+E1
.ifeq REPTCTR 0
    env $0 $00
.endif   
    beat ds E2 d E1 c E2

.ifeq REPTCTR 0
; Measure 38
    env $1 $00
    beat c HF+E1
    env $0 $00
    vibrato $01
    vol LO_VOL
    beat c E2+E1
    vol LO_VOL-1
    beat c E2    
; Measure 39
    env $1 $00
    vol HI_VOL
    vibrato $81
    octaved
    beat b Q+E1
    vol LO_VOL
    env $0 $00
    vibrato $01
    beat b E2+E1    

; Measure 39c
.redefine HI_VOL $7
.redefine LO_VOL $5
    octave 5
    vol HI_VOL
    env $0 $06
    ;duty $02
    vibrato $a1
    beat g E2 ou c E1 od b E2
.else
; Measure 46
    ;env $0 $06
    octave 6
    beat c HF+Q od b Q

; Measure 47
    octaveu
    beat c W
.endif
.endr

; Measure 4
    rest Q

    goto musGoodEggGalaxyChannel1Measure4bLoop
    cmdff

musGoodEggGalaxyChannel0:
.redefine HI_VOL $5
.redefine LO_VOL $3

; Measure 1 (16th pickup)
    vol $0
    beat gs3 S4+Q
; Measure 2b
    vol HI_VOL
    octave 3
    duty $00
    env $0 $05
    vibrato $82
    beat d R1 g R2 ou c R3
    octaved
    env $0 $07
    beat b Q
    env $0 $05
    beat g R1 d R2 g R3
; Measure 3
    octave 4
    duty $02
    ;vibrato $82
    env $0 $00
    beat g S1
    ;env $0 $00
    beat a S2 b S3 ou c S4
    beat e S1 f S2 g S3 a S4
    beat b S1 ou c S2 d E2+Q+E1 r E2

musGoodEggGalaxyChannel0Measure4bLoop:
; Measure 4b
.rept 2 INDEX REPTCTR
.rept 3 INDEX REPTCTR_2
; Measure 4b,6b,8b
    vibrato $a2
    env $0 $07
    duty $03
    vol HI_VOL
    octave 3
    beat g Q+E1 a E2 r Q
.ifeq REPTCTR_2 1
; Measure 7
    octave 4
    env $1 $07
    beat c Q+E1
    env $0 $00
    beat c E2+Q
    vol LO_VOL
    vibrato $02
    beat c Q
.else
; Measure 5,9
    octave 3
    env $1 $00
    beat a Q+E1
    env $0 $00
    beat f E2+Q
    vol LO_VOL
    vibrato $02
    beat f Q
.endif

; Measure 6,8
.ifneq REPTCTR_2 2
    rest Q
.endif

.endr

.ifeq REPTCTR 0
; Measure 10
    vol HI_VOL
    octave 4
    vibrato $a2
    env $1 $00
    beat cs HF
    env $0 $00
    vol LO_VOL
    beat cs E1

    vol HI_VOL
    octaved
    beat b E2+Q
; Measure 11
    octaveu
    beat c HF+E1
    vibrato $02
    vol LO_VOL
    beat c E2+E1
    vol LO_VOL-1
    beat c E2
; Measure 4
    rest Q
.endif
.endr

; Measure 12-13
    vol HI_VOL
    octave 4
    vibrato $a2
    env $1 $00
    beat cs HF+E1
    vibrato $02
    env $0 $00
    vol LO_VOL
    beat cs E2+Q+Q
    vol LO_VOL-1
    beat cs Q
; Measure 13c
    vol HI_VOL
    vibrato $a2
    octaved
    beat b HF
; Measure 14-15
    octaveu
    beat c HF+E1
    vibrato $02
    vol LO_VOL
    beat c E2+Q+Q
    vol LO_VOL-1
    beat c Q+E1 r E2+Q  

; Measure 16
.macro m_musGoodEggGalaxyChannel0Measure16
    vol HI_VOL
    vibrato $83
    env $2 $00
    beat \1 HF+E1
    vol LO_VOL
    vibrato $03
    env $0 $00
    beat \1 E2+Q
.endm

.redefine HI_VOL $4
.redefine LO_VOL $3
    duty $02
    m_musGoodEggGalaxyChannel0Measure16 e4
; Measure 17
    m_musGoodEggGalaxyChannel0Measure16 c4
; Measure 18
    m_musGoodEggGalaxyChannel0Measure16 fs4
; Measure 19
    m_musGoodEggGalaxyChannel0Measure16 e4
; Measure 20
.redefine HI_VOL $5
.redefine LO_VOL $3
.redefine ECHO 1
    rest ECHO
    vibrato $e1
    env $1 $00
    duty $02
    vol HI_VOL
    octave 5
    beat e Q+E1
    vol LO_VOL
    env $0 $00
    vibrato $01
    beat e E2+E1

    vibrato $e1
    env $1 $00
    vol HI_VOL
    beat c E2+E1 e E2
; Measure 21
    beat c T1 d T2
    beat c S2+E2+E1
    vol LO_VOL
    env $0 $00
    vibrato $01
    beat c E2+E1   

    vibrato $e1
    env $1 $00
    vol HI_VOL
    beat fs E2+E1
; Measure 21d-22  
    beat fs E2+HF
    vol LO_VOL
    env $0 $00
    vibrato $01  
    beat fs Q+E1

    vibrato $e1
    env $1 $00
    vol HI_VOL
    beat e S3
    env $0 $00
    beat d S4
; Measure 23
    env $1 $00
    beat e Q+E1+S3
    vol LO_VOL
    env $0 $00
    vibrato $01  
    beat e S4+Q
    
    ;rest Q
    vol LO_VOL-1
    beat e Q
; Measure 24
    vibrato $e2
    env $1 $00
    vol HI_VOL        
    octave 5
    beat a Q+E1
    vol LO_VOL
    env $0 $00
    vibrato $01
    beat a E2+E1

    vibrato $e1
    env $1 $00
    vol HI_VOL
    beat f E2+E1 a E2
; Measure 25
    beat g T1 a T2
    beat g S2+E2+Q
    vol LO_VOL
    env $0 $00
    vibrato $01
    beat g Q
    
    ;rest Q
    vol LO_VOL-2
    beat g Q
; Measure 26
    vibrato $e1
    env $1 $00
    vol HI_VOL        
    beat b Q+E1
    vol LO_VOL
    env $0 $00
    vibrato $01
    beat b E2+E1

    vibrato $e1
    env $1 $00
    vol HI_VOL
    octaved
    beat b E2+E1 ou d E2
; Measure 27
    beat cs T1 d T2
    beat cs S2+E2+Q
    vol LO_VOL
    env $0 $00
    vibrato $01
    beat cs Q
    
    ;rest Q
    vol LO_VOL-2
    beat cs Q

; Measure 28
    vibrato $a2
    env $0 $00
    duty $03
.redefine HI_VOL $4
.redefine LO_VOL $2
    vol HI_VOL
    octave 4
    beat c HF
    vol LO_VOL
    beat c E1

.redefine HI_VOL $5
.redefine LO_VOL $2
    vol HI_VOL
    beat c E2+Q 
; Measure 29
    beat e HF
    vol LO_VOL
    beat e E1

.redefine HI_VOL $6
.redefine LO_VOL $3
    vol HI_VOL
    beat fs E2+Q 
; Measure 30
    duty $00
    beat cs HF
    vol LO_VOL
    beat cs E1

.redefine HI_VOL $7
.redefine LO_VOL $4
    vol HI_VOL
    beat cs E2+Q 
; Measure 31
    beat f HF
    vol LO_VOL
    beat f E1

.redefine HI_VOL $7
.redefine LO_VOL $5
    vol HI_VOL
    beat f E2+E1
    vol LO_VOL+1
    beat f E2-ECHO

; Measure 32
.redefine HI_VOL $4
.redefine LO_VOL $3
    duty $02
    m_musGoodEggGalaxyChannel0Measure16 e4
; Measure 33
    m_musGoodEggGalaxyChannel0Measure16 g4
; Measure 34
    m_musGoodEggGalaxyChannel0Measure16 f4
; Measure 35
    vol HI_VOL
    vibrato $83
    env $2 $00
    octave 4
    beat d HF 
    vol LO_VOL
    env $0 $00
    beat d Q

    vol HI_VOL
    env $2 $00
    octaved
    beat gs Q
; Measure 36
    m_musGoodEggGalaxyChannel0Measure16 g3
; Measure 37
    m_musGoodEggGalaxyChannel0Measure16 gs3
; Measure 38
    m_musGoodEggGalaxyChannel0Measure16 a3
; Measure 39
    m_musGoodEggGalaxyChannel0Measure16 b3
; Measure 40
.redefine HI_VOL $5
.redefine LO_VOL $3
    m_musGoodEggGalaxyChannel0Measure16 e4
; Measure 41
    m_musGoodEggGalaxyChannel0Measure16 g4
; Measure 42
    m_musGoodEggGalaxyChannel0Measure16 a4
; Measure 43
    m_musGoodEggGalaxyChannel0Measure16 gs4
; Measure 44
.redefine HI_VOL $6
.redefine LO_VOL $4
    vol HI_VOL
    vibrato $83
    env $2 $00
    octave 4
    beat g HF e HF
; Measure 45
.redefine HI_VOL $5
.redefine LO_VOL $3
    m_musGoodEggGalaxyChannel0Measure16 f4
; Measure 46
.redefine HI_VOL $4
.redefine LO_VOL $3
    m_musGoodEggGalaxyChannel0Measure16 f4
; Measure 47
    m_musGoodEggGalaxyChannel0Measure16 e4
; Measure 4
    rest Q

    goto musGoodEggGalaxyChannel0Measure4bLoop
    cmdff


.macro m_musGoodEggGalaxyChannel4Measure32
; Measure 32
    ;duty HI_VOL
    beat \1 E1
    duty LO_VOL
    beat \1 E2

    ;octaveu
    duty HI_VOL
    beat \2 E1

    ;octaved
    beat \1 E2
    duty LO_VOL
    beat \1 E1

    ;octaveu
    duty HI_VOL
    beat \2 E2 r E1
.if NARGS < 3
    beat \2 E2
.else 
    beat \3 T5 r T6 \3 T7 r T8
.endif
.endm

.macro m_musGoodEggGalaxyChannel4Measure4
.if \1 == 0
    m_musGoodEggGalaxyChannel4Measure32 c2 c3
.else
    m_musGoodEggGalaxyChannel4Measure32 c2 c3 g2
.endif
.endm

.macro m_musGoodEggGalaxyChannel4Measure16
; Measure 16
    duty HI_VOL
    beat \1 E1
    duty LO_VOL
    beat \1 S3 r S4

    duty HI_VOL
    beat \1 S1 ;r E2+E1
    duty LO_VOL
    beat \1 S2 r E2+E1

    duty HI_VOL
    beat \1 E2 ;r E1
    duty LO_VOL
    beat \1 E1

    duty HI_VOL
    beat \1 S3
    duty LO_VOL
    beat \1 S4
.endm

musGoodEggGalaxyChannel4:
.redefine HI_VOL $0e
.redefine LO_VOL $0f


    ;vibrato $00
; 24 -> 12 -> 6 -> 3
; Measure 1 (16th pickup)
    duty HI_VOL
    octave 2
    ;beat g T7 g T8
    beat g 1 r 2 g 2 r 1
; Measure 2
    ;beat g W
    beat g HF+E1
    duty LO_VOL
    beat g E2+Q
; Measure 3
    octaveu
    duty HI_VOL
    beat e W
/*
    duty LO_VOL
    beat e HF;Q+E1
    duty HI_VOL
    beat e HF;E2+HF
*/

musGoodEggGalaxyChannel4Measure4Loop:
.rept 2 INDEX REPTCTR

; Measure 4
    duty HI_VOL
    m_musGoodEggGalaxyChannel4Measure4 0
; Measure 5
    m_musGoodEggGalaxyChannel4Measure4 1
; Measure 6-8
.rept 3
    m_musGoodEggGalaxyChannel4Measure4 0
.endr
; Measure 9
    m_musGoodEggGalaxyChannel4Measure4 1

.ifeq REPTCTR 0
; Measure 10-11
.rept 2
    m_musGoodEggGalaxyChannel4Measure4 0
.endr
.endif

.endr

; Measure 12
    m_musGoodEggGalaxyChannel4Measure4 0
; Measure 13
    m_musGoodEggGalaxyChannel4Measure4 1
; Measure 14-15
.rept 2
    m_musGoodEggGalaxyChannel4Measure4 0
.endr

; Measure 16
    m_musGoodEggGalaxyChannel4Measure16 c3
; Measure 17-23
.rept 7
    m_musGoodEggGalaxyChannel4Measure16 c3
.endr

; Measure 24
    m_musGoodEggGalaxyChannel4Measure16 f2
; Measure 25
    m_musGoodEggGalaxyChannel4Measure16 g2
; Measure 26
    m_musGoodEggGalaxyChannel4Measure16 e2
; Measure 27
    m_musGoodEggGalaxyChannel4Measure16 a2
; Measure 28
    m_musGoodEggGalaxyChannel4Measure16 d2
; Measure 29
    m_musGoodEggGalaxyChannel4Measure16 d2
; Measure 30
    m_musGoodEggGalaxyChannel4Measure16 ds2
; Measure 31
    m_musGoodEggGalaxyChannel4Measure16 g2

    duty HI_VOL
.rept 2 INDEX REPTCTR
; Measure 32,40
    m_musGoodEggGalaxyChannel4Measure32 c2 c3
; Measure 33,41
    m_musGoodEggGalaxyChannel4Measure32 e2 e3
; Measure 34,42
    m_musGoodEggGalaxyChannel4Measure32 f2 f3
; Measure 35,43
    m_musGoodEggGalaxyChannel4Measure32 as2 f3
; Measure 36,44
    m_musGoodEggGalaxyChannel4Measure32 a2 e3
; Measure 37,45
    m_musGoodEggGalaxyChannel4Measure32 gs2 ds3
; Measure 38,46
    m_musGoodEggGalaxyChannel4Measure32 g2 d3
.ifeq REPTCTR 0
; Measure 39
    m_musGoodEggGalaxyChannel4Measure32 g2 g3
.else 
; Measure 47
    m_musGoodEggGalaxyChannel4Measure32 c2 c3
.endif
.endr

    goto musGoodEggGalaxyChannel4Measure4Loop
    cmdff

musGoodEggGalaxyChannel6:
.redefine HI_VOL $4
.redefine LO_VOL $2

.redefine HIT  $2f ;$2a
.redefine BASS $24
.redefine TOM  $29
.redefine CRASH $27;$26 ;$2a

; Measure 1 (16th pickup)
    vol HI_VOL
    beat HIT T7 HIT T8
; Measure 2-3
    beat CRASH Q+E1 r E2+HF+W

musGoodEggGalaxyChannel6Measure4Loop:
; Measure 4
    beat HIT E1 HIT S3 HIT S4
    vol LO_VOL
    beat CRASH Q r E1
    vol HI_VOL
    beat HIT S3 HIT S4
    beat HIT S1 HIT S2 HIT S3 HIT S4

    goto musGoodEggGalaxyChannel6Measure4Loop
    cmdff

.undefine ECHO