musALTTP_overworld_minorStart:
    tempo 138
musALTTP_overworld_minorChannel1:
.redefine HI_VOL $6
.redefine LO_VOL $4

; Measure 1
    duty $01
    vibrato $e1
    env $0 $00

    vol HI_VOL
    octave 4
    beat a Q+E1
    vol LO_VOL
    vibrato $01
    beat a E2+E1 r S3

    vibrato $e1
    vol HI_VOL
    env $0 $03
    beat a S4 a R1 a R2 a R3
; Measure 2-3
.rept 2 INDEX REPTCTR
    env $0 $05
    beat a E1 r S3 g S4
    env $0 $00
    beat a Q
    vol LO_VOL
    vibrato $01
    beat a E1+S3

    vibrato $e1
    vol HI_VOL
    env $0 $03
    beat a S4 a R1 a R2 a R3
.endr
; Measure 4
    env $0 $05
    beat a E1

musALTTP_overworld_minorChannel1Measure4aLoop:
; Measure 4a
.rept 3
    env $0 $03
    beat cs S3 cs S4
    env $0 $05
    beat cs E1
.endr
    beat cs E2

; Measure 5
    ;vibrato $e1
    ;env $0 $05
    ;duty $01
    ;vol HI_VOL
    octave 4
    beat a Q
    env $0 $00
    octaveu
    beat d Q+E1 r S3

    env $0 $02
    octaved
    beat a S4
    beat a S1 g S2 f S3 e S4

; Measure 6
    env $0 $00
    beat d Q+E1
    vol LO_VOL
    vibrato $01
    beat d E2+S1 r S2

    env $0 $05
    vibrato $e1
    vol HI_VOL
    beat d E2
    beat d R1 e R2 f R3

; Measure 7
    env $0 $00
    beat g Q+E1
    vol LO_VOL
    vibrato $01
    beat g E2+S1 r S2+S3  

    vibrato $e1
    env $0 $03
    vol HI_VOL
    beat g S4
    beat g R1 f R2 e R3

; Measure 8
    env $0 $04
    beat f R1+R2 e R3

    env $0 $00
    beat d Q+E1
    vol LO_VOL
    vibrato $01
    beat d E2

    vibrato $e1
    env $0 $07
    vol HI_VOL
    beat d Q

; Measure 9
    env $0 $04
    beat e E1 e S3 f S4

    env $0 $00
    beat g Q+E1
    vol LO_VOL
    vibrato $01
    beat g E2

    vibrato $e1
    env $0 $05
    vol HI_VOL
    beat f E1 e E2

; Measure 10
    env $0 $04
    beat d E1 d S3 e S4

    env $0 $00
    beat f Q+E1
    vol LO_VOL
    vibrato $01
    beat f E2

    vibrato $e1
    env $0 $05
    vol HI_VOL
    beat e E1 d E2   
    
; Measure 11
    env $0 $04
    beat cs E1 cs S3 d S4

    env $0 $00
    beat e Q+E1
    vol LO_VOL
    vibrato $01
    beat e E2

    vibrato $e1
    env $0 $07
    vol HI_VOL
    beat f Q

; Measure 12
    env $0 $05
    beat e E1

    octave 4
.rept 3
    env $0 $03
    beat cs S3 cs S4
    env $0 $05
    beat cs E1
.endr
    beat cs E2

; Measure 13 (copy of M5)
    ;vibrato $e1
    ;env $0 $05
    ;duty $01
    ;vol HI_VOL
    octave 4
    beat a Q
    env $0 $00
    octaveu
    beat d Q+E1 r S3

    env $0 $02
    octaved
    beat a S4
    beat a S1 g S2 f S3 e S4

; Measure 14 (copy of M6)
    env $0 $00
    beat d Q+E1
    vol LO_VOL
    vibrato $01
    beat d E2+S1 r S2

    env $0 $05
    vibrato $e1
    vol HI_VOL
    beat d E2
    beat d R1 e R2 f R3

; Measure 15 (copy of M7)
    env $0 $00
    beat g HF+S1
    vol LO_VOL
    vibrato $01
    beat g S2+E2

    vibrato $e1
    vol HI_VOL
    env $0 $07
    octaveu
    beat c Q

; Measure 16
    env $0 $05
    octaved
    beat as Q

    env $0 $00
    beat a Q+E1
    vol LO_VOL
    vibrato $01
    beat a E2

    vol HI_VOL
    env $0 $07
    vibrato $e1
    beat f Q

.rept 2 INDEX REPTCTR
; Measure 17,19
    env $0 $00
    beat g HF+S1
    vol LO_VOL
    vibrato $01
    beat g S2+E2

    vibrato $e1
    vol HI_VOL
    env $0 $07
    octaveu
    beat c Q

; Measure 18,20
    env $0 $05
    octaved
    beat as Q

    env $0 $00
    beat a Q+E1
    vol LO_VOL
    vibrato $01
    beat a E2

    vol HI_VOL
    env $0 $07
    vibrato $e1
.ifeq REPTCTR 0
    beat f Q
.else ;REPTCTR == 1
    beat e Q
.endif
.endr

; Measure 21
    env $0 $00
    beat f HF+S1
    vol LO_VOL
    vibrato $01
    beat f S2+E2

    vibrato $e1
    vol HI_VOL
    env $0 $07
    beat as Q

; Measure 22
    beat a Q

    env $0 $00
    beat g Q+E1
    vibrato $01
    vol LO_VOL
    beat g E2

    vibrato $e1
    vol HI_VOL
    env $0 $07
    beat d Q

; Measure 23
    env $0 $04
    beat cs E1 cs S3 d S4

    env $0 $00
    beat e Q+E1
    vibrato $01
    vol LO_VOL
    beat e E2

    vibrato $e1
    vol HI_VOL
    env $0 $07
    beat f Q

; Measure 24
    env $0 $05
    beat e E1

    goto musALTTP_overworld_minorChannel1Measure4aLoop
    cmdff

musALTTP_overworld_minorChannel0:
.redefine HI_VOL $5
.redefine LO_VOL $3

; Measure 1
    duty $00
    vibrato $e1
    env $0 $00

    vol HI_VOL
    octave 4
    beat e Q

    octave 3
    env $0 $05
    beat e R1 e R2 e R3
    beat e E1+S3

    vibrato $e1
    vol HI_VOL
    env $0 $03
    octave 4
    beat e S4 e R1 e R2 e R3
; Measure 2-3
.rept 2 INDEX REPTCTR
    env $0 $05
    beat e E1 r S3 e S4
    env $0 $00
    beat e Q
    vol LO_VOL
    vibrato $01
    beat e E1+S3

    vibrato $e1
    vol HI_VOL
    env $0 $03
    beat e S4 e R1 e R2 e R3
.endr
; Measure 4
    env $0 $05
    beat e E1

musALTTP_overworld_minorChannel0Measure4aLoop:
; Measure 4a
    octave 3
.rept 3
    env $0 $03
    beat a S3 a S4
    env $0 $05
    beat a E1
.endr
    beat a E2

; Measure 5
    ;vibrato $e1
    ;env $0 $05
    duty $01
    ;vol HI_VOL
    octave 4
    beat d Q
    env $0 $00
    beat f Q a E1+S3

    env $0 $02
    beat f S4
    beat f S1 e S2 d S3 c S4

; Measure 6
    env $0 $07
    octaved
    beat as E1+S3

    duty $01
    env $0 $02
    octaveu
    beat a S4
    beat a S1 g S2 f S3 e S4

    env $0 $05
    beat d E1
    duty $00
    octaved 
    beat a E2

    env $0 $04
    beat a R1 as R2 ou c R3

; Measure 7
    env $0 $07
    beat d E1+S3

    duty $01
    env $0 $02
    octaved
    beat as S4
    beat as S1 a S2 g S3 f S4

    env $0 $07
    beat e Q 
    duty $00
    octaveu
    beat c Q

; Measure 8
    ;env $0 $07
    octave 3
    beat a Q+R1
    env $0 $04
    beat a R2 g R3

    env $0 $00
    beat a Q+E1
    vol LO_VOL
    vibrato $01
    beat a E2

; Measure 9
    vibrato $e1
    env $0 $07  
    vol HI_VOL
    beat as Q

    env $0 $04
    beat as E1 as S3 ou c S4

    env $0 $00
    beat d Q+E1
    vol LO_VOL
    vibrato $01
    beat d E2

; Measure 10
    vibrato $e1
    env $0 $07  
    vol HI_VOL
    octaved
    beat a Q

    env $0 $04
    beat a E1 a S3 as S4

    env $0 $00
    octaveu
    beat c Q+E1
    vol LO_VOL
    vibrato $01
    beat c E2

; Measure 11
    vibrato $e1
    env $0 $07
    vol HI_VOL
    octaved
    beat g Q

    env $0 $04
    beat g E1 g S3 a S4
    beat as E1 as S3 ou cs S4
    beat d E1 od as E2

; Measure 12
    env $0 $05
    beat a E1
.rept 3
    env $0 $03
    beat a S3 a S4
    env $0 $05
    beat a E1
.endr
    beat a E2

; Measure 13 (copy of M5)
    ;vibrato $e1
    ;env $0 $05
    duty $01
    ;vol HI_VOL
    octave 4
    beat d Q
    env $0 $00
    beat f Q a E1+S3

    env $0 $02
    beat f S4
    beat f S1 e S2 d S3 c S4

; Measure 14 (copy of M6)
    env $0 $07
    octaved
    beat as E1+S3

    duty $01
    env $0 $02
    octaveu
    beat a S4
    beat a S1 g S2 f S3 e S4

    env $0 $05
    beat d E1
    duty $00
    octaved 
    beat a E2

    env $0 $04
    beat a R1 as R2 ou c R3

; Measure 15 (copy of M7)
    env $0 $07
    beat d E1+S3

    duty $01
    env $0 $02
    octaved
    beat as S4
    beat as S1 a S2 g S3 f S4

    env $0 $07
    beat e Q 
    duty $00
    beat ou c Q

; Measure 16
    duty $03
    env $0 $00
    duty $00
    octave 3
    beat f Q+E1
    vibrato $01
    vol LO_VOL
    beat f E2

    vol HI_VOL
    vibrato $e1
    beat a Q+E1
    vibrato $01
    vol LO_VOL
    beat a E2
.rept 2 INDEX REPTCTR
; Measure 17,19
.ifeq REPTCTR 1
    env $0 $00
.endif
    octave 4
    beat e HF+S1
    vol LO_VOL
    vibrato $01
    beat e S2+E2

    vol HI_VOL
    vibrato $e1
    env $0 $07
    beat a Q

; Measure 18,20
    env $0 $05
    beat g Q

    env $0 $07
    beat f Q od f Q 
    octaveu
.ifeq REPTCTR 0
    beat d Q
.else ; REPTCTR  == 1
    beat cs Q
.endif
.endr

; Measure 21
    duty $00
    ;env $0 $07
    octave 3
    beat as Q
    env $0 $04
    beat as E1 as S3 a S4

    env $0 $00
    beat as Q+E1
    vibrato $01
    vol LO_VOL
    beat as E2 
    
; Measure 22
    vol HI_VOL
    env $0 $07
    beat a Q
    env $0 $04
    beat a E1 a S3 g S4

    env $0 $00
    beat a Q+E1
    vibrato $01
    vol LO_VOL
    beat a E2  

; Measure 23
    vol HI_VOL
    env $0 $07
    beat g Q

    env $0 $04
    beat g E1 g S3 a S4
    beat as E1 as S3 ou cs S4
    beat d E1 od as E2
; Measure 24
    env $0 $05
    octave 3
    beat a E1

    goto musALTTP_overworld_minorChannel0Measure4aLoop
    cmdff

.macro m_musALTTP_overworld_minorChannel4Quarter
    duty HI_VOL
    beat \1 E1
    duty LO_VOL
    beat \1 E2
.endm
.macro m_musALTTP_overworld_minorChannel4Eighth
.if \2 == 1
    duty HI_VOL
    beat \1 S1
    duty LO_VOL
    beat \1 S2
.else
.if \2 == 2
    duty HI_VOL
    beat \1 S3
    duty LO_VOL
    beat \1 S4
.endif
.endif
.endm

.macro m_musALTTP_overworld_minorChannel4Triplet
.if \2 == 1
    duty HI_VOL
    beat \1 Y1
    duty LO_VOL
    beat \1 Y2
.else
.if \2 == 2
    duty HI_VOL
    beat \1 Y3
    duty LO_VOL
    beat \1 Y4
.else
.if \2 == 3
    duty HI_VOL
    beat \1 Y3
    duty LO_VOL
    beat \1 Y4
.endif
.endif
.endif
.endm


.macro m_musALTTP_overworld_minorChannel4Measure5
    m_musALTTP_overworld_minorChannel4Eighth \1 1
    rest E2

    m_musALTTP_overworld_minorChannel4Triplet \1 1
    m_musALTTP_overworld_minorChannel4Triplet \1 2
    m_musALTTP_overworld_minorChannel4Triplet \2 3
.rept 2
    m_musALTTP_overworld_minorChannel4Eighth \1 1
    rest E2
.endr
.endm

musALTTP_overworld_minorChannel4:
.redefine HI_VOL $0e
.redefine LO_VOL $0f

; Measure 1
    vibrato $e1
    m_musALTTP_overworld_minorChannel4Quarter b2
    m_musALTTP_overworld_minorChannel4Triplet b2 1
    m_musALTTP_overworld_minorChannel4Triplet b2 2
    m_musALTTP_overworld_minorChannel4Triplet b2 3

    m_musALTTP_overworld_minorChannel4Quarter a2
    rest Q
/*
    octave 2
    duty HI_VOL
    beat as E1
    duty LO_VOL
    beat as S3

.redefine HI_VOL $17
.redefine LO_VOL $08
    duty HI_VOL
    octave 4
    beat c T7 r T8
    m_musALTTP_overworld_minorChannel4Triplet c4 1
    m_musALTTP_overworld_minorChannel4Triplet c4 2
    m_musALTTP_overworld_minorChannel4Triplet c4 3
*/

; Measure 2
.redefine HI_VOL $0e
.redefine LO_VOL $0f
    m_musALTTP_overworld_minorChannel4Quarter cs3
    m_musALTTP_overworld_minorChannel4Quarter e3

    m_musALTTP_overworld_minorChannel4Quarter cs3
    rest Q
/*
    octave 2
    duty HI_VOL
    beat gs E1
    duty LO_VOL
    beat gs E2

.redefine HI_VOL $17
.redefine LO_VOL $08
    duty HI_VOL
    octave 4
    beat c T7 r T8
    m_musALTTP_overworld_minorChannel4Triplet c4 1
    m_musALTTP_overworld_minorChannel4Triplet c4 2
    m_musALTTP_overworld_minorChannel4Triplet c4 3
*/

; Measure 3
.redefine HI_VOL $0e
.redefine LO_VOL $0f
    m_musALTTP_overworld_minorChannel4Quarter c3
    m_musALTTP_overworld_minorChannel4Quarter e3

    m_musALTTP_overworld_minorChannel4Quarter c3
    rest Q
/*
    octave 2
    duty HI_VOL
    beat fs E1
    duty LO_VOL
    beat fs S3

.redefine HI_VOL $17
.redefine LO_VOL $08
    duty HI_VOL
    octave 4
    beat c T7 r T8
    m_musALTTP_overworld_minorChannel4Triplet c4 1
    m_musALTTP_overworld_minorChannel4Triplet c4 2
    m_musALTTP_overworld_minorChannel4Triplet c4 3
*/

musALTTP_overworld_minorChannel4Measure4Loop:
; Measure 4
.redefine HI_VOL $0e
.redefine LO_VOL $0f
.rept 3
    m_musALTTP_overworld_minorChannel4Quarter a2
.endr
    duty HI_VOL
    octave 3
    beat f S1 r S2 e S3 r S4

; Measure 5
    m_musALTTP_overworld_minorChannel4Measure5 d3 cs3

; Measure 6
    m_musALTTP_overworld_minorChannel4Measure5 as2 a2

; Measure 7
    m_musALTTP_overworld_minorChannel4Measure5 g2 fs2

; Measure 8
    m_musALTTP_overworld_minorChannel4Measure5 a2 g2

; Measure 9
    m_musALTTP_overworld_minorChannel4Measure5 as2 a2

; Measure 10
    m_musALTTP_overworld_minorChannel4Measure5 c3 as2

; Measure 11
    m_musALTTP_overworld_minorChannel4Measure5 cs3 as2

; Measure 12
.rept 3
    m_musALTTP_overworld_minorChannel4Quarter a2
.endr
    duty HI_VOL
    octave 3
    beat f S1 r S2 e S3 r S4

; Measure 13 (copy of M5)
    m_musALTTP_overworld_minorChannel4Measure5 d3 cs3

; Measure 14 (copy of M6)
    m_musALTTP_overworld_minorChannel4Measure5 as2 a2

; Measure 15 (copy of M7)
    m_musALTTP_overworld_minorChannel4Measure5 g2 fs2

; Measure 16
    m_musALTTP_overworld_minorChannel4Measure5 a2 g2
    
.rept 2 INDEX REPTCTR
; Measure 17,19
    m_musALTTP_overworld_minorChannel4Triplet e4 1
    m_musALTTP_overworld_minorChannel4Triplet cs4 2
    m_musALTTP_overworld_minorChannel4Triplet as3 3

    m_musALTTP_overworld_minorChannel4Triplet e3 1
    m_musALTTP_overworld_minorChannel4Triplet cs3 2
    m_musALTTP_overworld_minorChannel4Triplet as2 3

    m_musALTTP_overworld_minorChannel4Eighth e2 1
    rest E2
    m_musALTTP_overworld_minorChannel4Eighth c2 1
    rest E2

; Measure 18,20
    m_musALTTP_overworld_minorChannel4Eighth d2 1
    rest E2

    m_musALTTP_overworld_minorChannel4Triplet d3 1
    m_musALTTP_overworld_minorChannel4Triplet d3 2
    m_musALTTP_overworld_minorChannel4Triplet d3 3

    m_musALTTP_overworld_minorChannel4Eighth d3 1
    rest E2+Q
.endr

; Measure 21
    m_musALTTP_overworld_minorChannel4Measure5 as2 a2

; Measure 22
    m_musALTTP_overworld_minorChannel4Measure5 c3 as2

; Measure 23
    m_musALTTP_overworld_minorChannel4Measure5 cs3 as2

    goto musALTTP_overworld_minorChannel4Measure4Loop
    cmdff
    
;musALTTP_overworld_minorChannel6 - same as musALTTP_overworldChannel6
musALTTP_overworld_minorChannel6:
    .redefine HI_VOL $4
    .redefine LO_VOL $3
    .redefine HIT $23 ;$24
    .redefine CRASH $22

; Measure 1-2
    vol HI_VOL
.rept 2
    beat HIT Q HIT R1 HIT R2 HIT R3
    beat HIT T1 HIT T2 HIT T3 HIT T4
    beat HIT T5 HIT T6 HIT T7 HIT T8
.endr
; Measure 3
.rept 2
    beat HIT Q HIT R1 HIT R2 HIT R3
.endr
; Measure 4
    beat CRASH E1 r E2 HIT Q
    beat CRASH E1 r E2 HIT E1 HIT E2

musALTTP_overworld_minorChannel6Measure5Loop:
; Measure 5-11
.rept 7
    beat HIT Q HIT R1 HIT R2 HIT R3
    beat HIT E1 HIT E2
    beat HIT S1 HIT S2 HIT S3 HIT S4
.endr
; Measure 12
.rept 3
    beat HIT E1 HIT S3 HIT S4
.endr
    beat HIT S1 HIT S2 HIT S3 HIT S4
; Measure 13-23
.rept 11
    beat HIT Q HIT R1 HIT R2 HIT R3
    beat HIT E1 HIT E2
    beat HIT S1 HIT S2 HIT S3 HIT S4
.endr
; Measure 24
.rept 3
    beat HIT E1 HIT S3 HIT S4
.endr
    beat HIT S1 HIT S2 HIT S3 HIT S4

    goto musALTTP_overworld_minorChannel6Measure5Loop
    cmdff