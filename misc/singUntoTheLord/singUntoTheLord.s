musSingUntoTheLordStart:
    tempo 130
musSingUntoTheLordChannel1:
.redefine HI_VOL $4
.redefine LO_VOL $3

; Measure 1
    vol $0
    beat gs3 E1
@measure1aLoop:
    vol HI_VOL
    octave 4
    duty $02
    env $0 $04
    vibrato $00
.rept 3
    beat d E2+E1
.endr
    beat d E2


.macro m_musSingUntoTheLordChannel1Measure2
; Measure 2,10
.redefine HI_VOL $6
.redefine LO_VOL $4
    octave 4
    duty $01
    vibrato $61
    vol HI_VOL

    env $0 $05
    beat a E1 a E2 g E1 f E2
    env $0 $00
    beat a Q ;Q+E1
    env $0 $05
    beat a E1 a E2
; Measure 3,11
    env $0 $06
    beat a Q
    env $0 $00
    beat f Q+S1 ;Q+E1
    env $0 $04
    beat f S2

    vol LO_VOL
    duty $02
    vibrato $00
    ;env $0 $04
    beat d E2+E1 d E2

; Measure 4,12
    duty $01
    vibrato $61
    vol HI_VOL

    env $0 $05
    beat a E1 a E2 g E1 f E2
    env $0 $00
    beat a Q
    env $0 $05
    beat g E1+S3 f S4
; Measure 5,13
    env $0 $00
    beat f E1
    beat e E2+Q+S1 ;E2+Q+E1
    env $0 $04
    beat e S2

    vol LO_VOL
    duty $02
    vibrato $00
    ;env $0 $04
    beat cs E2+E1 cs E2
; Measure 6,14
    duty $01
    vibrato $61
    vol HI_VOL

    env $0 $05
    beat g E1 g E2 g E1 g E2
    env $0 $00
    beat g Q ;Q+E1
    env $0 $05
    beat g E1 g E2

; Measure 7,15
    env $0 $06
    beat g Q 
    env $0 $00
    beat e Q+S1
    env $0 $04
    beat e S2

    vol LO_VOL
    duty $02
    vibrato $00
    ;env $0 $04
    beat e E2+E1 e E2  
.endm

.rept 2 INDEX REPTCTR
    m_musSingUntoTheLordChannel1Measure2  
; Measure 8,16
    duty $01
    vibrato $61
    vol HI_VOL
    
    env $0 $05
    beat a E1 a E2 a E1 as E2

    env $0 $00
    beat a E1
    env $0 $05
    beat g E2 f E1 e E2
; Measure 9,17
    env $0 $00
    beat d HF+E1

.ifeq REPTCTR 0
    octave 5
    vol HI_VOL+1
    duty $02
    vibrato $00
    env $0 $04
    beat f S3 e S4
    vol HI_VOL
    beat d E1 od
    vol HI_VOL-1
    beat a E2  
.else ;REPTCTR == 1
    vol HI_VOL-1
    duty $02
    vibrato $00
    env $0 $04
    beat d S3 e S4
    vol HI_VOL
    beat f E1
    vol HI_VOL+1
    beat a E2
.endif
.endr
    
; Measure 18
    duty $01
    vibrato $61
    vol HI_VOL

    env $0 $07
    beat as Q as Q a Q+E1 a E2
; Measure 19
    env $0 $04
    beat as E1+S3 as S4 as E1 as E2
    env $0 $07
    beat a Q+Q
; Measure 20
    env $0 $07
    beat as Q as Q a Q+E1 a E2
; Measure 21
    env $0 $00
    beat as Q+E1 a E2 
    vol HI_VOL+1
    beat g Q as Q
; Measure 22-23
    vol HI_VOL+2
    beat a HF+E1
    vol HI_VOL
    vibrato $01
    beat a E2+Q
    vol HI_VOL-1
    vibrato $02
    beat a Q
; Measure 23b
    vibrato $61
    vol HI_VOL+1
    beat g Q
    vol HI_VOL
    beat f Q
    vol HI_VOL-1
    beat e Q

; Measure 24-29
    m_musSingUntoTheLordChannel1Measure2
; Measure 30-31
.rept 2
    octave 4
    duty $01
    vibrato $61
    vol HI_VOL
    env $0 $05
    beat a E1 a E2 a E1 as E2
    env $0 $00
    beat a Q

    vol LO_VOL
    octave 3
    beat as Q
.endr
; Measure 32
    octave 4
    vol HI_VOL+1
    beat a Q ;Q+E1
    env $0 $06
    beat a E1 a E2
    env $0 $00
    beat a Q as Q
; Measure 33
    vol HI_VOL
    beat a Q ou d Q f Q e Q
; Measure 34
    beat d HF+S1
    vibrato $01
    vol HI_VOL-1
    beat d S2+E2
    vibrato $02
    vol LO_VOL
    beat d Q

    rest E1

    goto @measure1aLoop
    cmdff


    cmdff

musSingUntoTheLordChannel0:
.redefine HI_VOL $4
.redefine LO_VOL $3

; Measure 1
    vol $0
    beat gs3 E1
@measure1aLoop:
    vol HI_VOL
    octave 3
    duty $02
    env $0 $04
    vibrato $00
.rept 4
    beat f E2+E1
.endr

.macro m_musSingUntoTheLordChannel0Measure2a
; Measure 2a-4
.redefine HI_VOL $5
.redefine LO_VOL $4
    vol HI_VOL
    octave 3
    duty $02
    env $0 $04
    vibrato $00
.rept 3
.rept 4
    beat f E2+E1
.endr
.endr
; Measure 5a
.rept 4
    beat g E2+E1
.endr
; Measure 6a-7
    octaved
.rept 7
    beat as E2+E1
.endr
    octaveu
    beat d E2
.endm
    m_musSingUntoTheLordChannel0Measure2a
; Measure 8
    env $0 $03
    ;octaveu
    beat d HF cs HF+E1
; Measure 9a
    env $0 $04
    beat f E2+E1 f E2
    env $0 $00
    beat d Q+E1 r E2

; Measure 10
.redefine HI_VOL $4
.redefine LO_VOL $2
    octave 5
    duty $01
    vibrato $61
    vol HI_VOL

    env $0 $05
    beat f E1 f E2 e E1 d E2
    env $0 $00
    beat f Q ;Q+E1
    env $0 $05
    beat f E1 f E2
; Measure 11
    env $0 $06
    beat f Q
    env $0 $00
    beat d Q+S1 ;Q+E1
    env $0 $04
    beat d S2

    octave 3
    vol LO_VOL
    duty $02
    vibrato $00
    ;env $0 $04
    beat a E2+E1 a E2
; Measure 12
    octave 5
    duty $01
    vibrato $61
    vol HI_VOL

    env $0 $05
    beat f E1 f E2 e E1 d E2
    env $0 $00
    beat f Q
    env $0 $05
    beat e E1+S3 d S4
; Measure 13
    env $0 $00
    beat d E1
    beat cs E2+Q+S1 ;E2+Q+E1
    env $0 $04
    beat cs S2

    octave 3
    vol LO_VOL
    duty $02
    vibrato $00
    ;env $0 $04
    beat g E2+E1 g E2
; Measure 14
    octave 5
    duty $01
    vibrato $61
    vol HI_VOL

    env $0 $05
    beat d E1 d E2 d E1 d E2
    env $0 $00
    beat d Q ;Q+E1
    env $0 $05
    beat d E1 d E2

; Measure 15
    env $0 $06
    beat d Q 
    env $0 $00
    beat d Q+S1
    env $0 $04
    beat d S2

    octave 3
    vol LO_VOL
    duty $02
    vibrato $00
    ;env $0 $04
    beat g E2+E1 g E2    
; Measure 16
    octave 5
    duty $01
    vibrato $61
    vol HI_VOL
    
    env $0 $05
    beat d E1 d E2 d E1 d E2
    env $0 $00
    beat cs Q
    env $0 $05
    octaved
    beat a E1 a E2
; Measure 17
    env $0 $00
    beat a HF+Q r E1

    octave 3
    duty $02
    vibrato $00
    ;env $0 $04
    beat a E2 

; Measure 18
    duty $01
    vibrato $61
    vol HI_VOL

    octave 5
    env $0 $07
    beat d Q d Q d E1+T5 ;Q+E1

    env $0 $04
    vol HI_VOL+2
    octave 4
    beat a T6 as T7 ou c T8
    beat d E1 

    vol HI_VOL
    beat d E2
; Measure 19
    env $0 $04
    beat d E1+S3 d S4 d E1 d E2
    env $0 $07
    beat d E1+T5

    env $0 $04
    vol HI_VOL+2
    octave 4
    beat a T6 as T7 ou c T8
    beat d Q
; Measure 20
    vol HI_VOL
    env $0 $07
    beat d Q d Q d E1+T5

    env $0 $04
    vol HI_VOL+2
    octave 4
    beat a T6 as T7 ou c T8
    beat d E1

    vol HI_VOL
    octave 3
    beat a E2
; Measure 21
    octave 4
    env $0 $00
.rept 2
    beat e E2+S3
    vibrato $01
    vol LO_VOL
    beat e S4+Q

    vol HI_VOL
    vibrato $61
.endr
; Measure 22
    rest E1

    vol HI_VOL
    octave 4
    duty $02
    env $0 $04
    vibrato $00
.rept 3
    beat d E2+E1
.endr
    beat d E2
; Measure 23
    env $0 $00
    vol HI_VOL+1
    beat cs Q od as Q
    vol HI_VOL
    beat a Q
    vol HI_VOL-1
    beat g Q

; Measure 24-29
    rest E1
    m_musSingUntoTheLordChannel0Measure2a
; Measure 30
    env $0 $03
    octave 3
    beat d HF+Q
    env $0 $00
    beat d Q
; Measure 31
    env $0 $03
    beat d E1

    vol HI_VOL+1
    env $0 $04
    beat a E2 a E1 as E2
    env $0 $00
    beat a Q
    vol HI_VOL
    beat d Q
; Measure 32
    vol HI_VOL+1
    beat d Q ;Q+E1
    env $0 $06
    beat d E1 e E2
    env $0 $00
    beat d Q g Q
; Measure 33
    vol HI_VOL
    beat e Q as Q ou cs Q cs Q
; Measure 34
    beat a HF+S1
    vibrato $01
    vol HI_VOL-1
    beat a S2+E2
    vibrato $02
    vol LO_VOL
    beat a Q

    rest E1

    goto @measure1aLoop
    cmdff

musSingUntoTheLordChannel4:
.redefine HI_VOL $0e
.redefine LO_VOL $0f

@measure1Loop:
; Measure 1
.rept 2
    octave 3
    duty HI_VOL
    beat d E1+S3
    duty LO_VOL
    beat d S4

    octaved
    duty HI_VOL
    beat a E1+S3
    duty LO_VOL
    beat a S4 
.endr  
; Measure 2-4
.macro m_musSingUntoTheLordChannel4Measure2
.rept 3
.rept 2
    octave 3
    duty HI_VOL
    beat d E1+S3
    duty LO_VOL
    beat d S4

    octaved
    duty HI_VOL
    beat a E1+S3
    duty LO_VOL
    beat a S4 
.endr  
.endr
; Measure 5
    octave 2
    duty HI_VOL
    beat a E1+S3
    duty LO_VOL
    beat a S4

    duty HI_VOL
    beat e E1+S3
    duty LO_VOL
    beat e S4 

    duty HI_VOL
    beat a E1+S3
    duty LO_VOL
    beat a S4

    duty HI_VOL
    beat e E1 f E2
; Measure 6-7
    octave 2
.rept 3
    duty HI_VOL
    beat g E1+S3
    duty LO_VOL
    beat g S4

    duty HI_VOL
    beat d E1+S3
    duty LO_VOL
    beat d S4 
.endr  
; Measure 7c
    duty HI_VOL
    beat g E1+S3
    duty LO_VOL
    beat g S4

    duty HI_VOL
    beat a E1 as E2
.endm
    m_musSingUntoTheLordChannel4Measure2
; Measure 8
.rept 2
    beat a S1 r S2+E2+Q
.endr
; Measure 9
    octave 3
    duty HI_VOL
    beat d E1+S3
    duty LO_VOL
    beat d S4

    octaved
    duty HI_VOL
    beat a E1+S3
    duty LO_VOL
    beat a S4 

    duty HI_VOL
    beat d Q+S1
    duty LO_VOL
    beat d S2  

    duty HI_VOL
    beat a E2

; Measure 10-12
    duty HI_VOL
    octave 3
.rept 3
.rept 2
    ;beat d E1 f E2 od a E1 ou f E2
    beat d S1+T3 r T4 f S3 r S4
    octaved
    beat a S1+T3 r T4 ou f S3 r S4
.endr
.endr
; Measure 13
    octave 2
    beat a S1+T3 r T4 ou cs S3 r S4
    octaved
    beat e S1+T3 r T4 ou cs S3 r S4
    octaved
    beat a S1+T3 r T4 ou cs S3 r S4
    octaved
    beat e E1 f E2
; Measure 14-15
    octave 2
.rept 3
    beat g S1+T3 r T4 as S3 r S4
    beat d S1+T3 r T4 as S3 r S4
.endr 
; Measure 15c
    beat g S1+T3 r T4 as S3 r S4
    beat a E1 as E2
; Measure 16
.rept 2
    beat a S1 r S2+E2+Q
.endr
; Measure 17
    octave 3
    beat d S1+T3 r T4 f S3 r S4
    octaved
    beat a S1+T3 r T4 ou f S3 r S4
    beat d Q+E1
    duty LO_VOL
    beat d E2

; Measure 18-20
    octave 2
.rept 3
    duty HI_VOL
    beat g Q+E1
    duty LO_VOL
    beat g E2

    duty HI_VOL
    beat d Q+E1
    duty LO_VOL
    beat d E2
.endr
; Measure 21 
    duty HI_VOL
    beat g Q+S1
    duty LO_VOL
    beat g S2

    duty HI_VOL
    beat a E2

    beat as E1+S3
    duty LO_VOL
    beat as S4

    duty HI_VOL
    beat g E1+S3
    duty LO_VOL
    beat g S4
; Measure 22
.rept 2
    duty HI_VOL
    beat a E1+S3
    duty LO_VOL
    beat a S4

    duty HI_VOL
    beat e E1+S3
    duty LO_VOL
    beat e S4 
.endr
; Measure 23
    duty HI_VOL
    beat a E1+S3
    duty LO_VOL
    beat a S4

    duty HI_VOL
    beat a HF+E1
    duty LO_VOL
    beat a E2

; Measure 24-29
    m_musSingUntoTheLordChannel4Measure2
; Measure 30-31
.rept 2
    beat a S1 r S2+E2+HF
    beat g E1+S3
    duty LO_VOL
    beat g S4

    duty HI_VOL
.endr
; Measure 32
    beat a Q+S1
    duty LO_VOL
    beat a S2

    duty HI_VOL
    beat a S3
    duty LO_VOL
    beat a S4

    duty HI_VOL
    beat a Q+E1
    duty LO_VOL
    beat a E2
; Measure 33
    octave 3
    duty HI_VOL
    beat a E1+S3
    duty LO_VOL
    beat a S4

    duty HI_VOL
    beat g E1+S3
    duty LO_VOL
    beat g S4

    duty HI_VOL
    beat f E1+S3
    duty LO_VOL
    beat f S4

    duty HI_VOL
    beat e E1+S3
    duty LO_VOL
    beat e S4
; Measure 34
    duty HI_VOL
.rept 2
    ;beat d E1 f E2 od a E1 ou f E2
    beat d S1+T3 r T4 f S3 r S4
    octaved
    beat a S1+T3 r T4 ou f S3 r S4
.endr

    goto @measure1Loop
    cmdff

.define musSingUntoTheLordChannel6 MUSIC_CHANNEL_FALLBACK EXPORT
