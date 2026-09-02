musALTTP_overworldStart:
    tempo 138
musALTTP_overworldChannel1:
.redefine HI_VOL $6
.redefine LO_VOL $4

; Measure 1
    duty $01
    vibrato $e1
    env $0 $00

    vol HI_VOL
    octave 4
    beat as Q+E1
    vol LO_VOL
    vibrato $01
    beat as E2+E1 r S3

    vibrato $e1
    vol HI_VOL
    env $0 $03
    beat as S4 as R1 as R2 as R3
; Measure 2-3
.rept 2
    env $0 $05
    beat as E1 r S3 gs S4
    env $0 $00
    beat as Q
    vol LO_VOL
    vibrato $01
    beat as E1+S3

    vibrato $e1
    vol HI_VOL
    env $0 $03
    beat as S4 as R1 as R2 as R3
.endr
; Measure 4
    env $0 $05
    beat as E1

musALTTP_overworldChannel1Measure4aLoop:
; Measure 4a
    env $0 $03
    beat f S3 f S4
    env $0 $05
    beat f E1

    env $0 $03
    beat f S3 f S4
    env $0 $05
    beat f E1

    env $0 $03
    beat f S3 f S4
    env $0 $05
    beat f E1 f E2

; Measure 5
    ;vibrato $e1
    ;env $0 $05
    ;duty $01
    ;vol HI_VOL
    octave 4
    beat as Q
    env $0 $00
    beat f Q+E1 r S3

    env $0 $02
    beat as S4
    beat as S1 ou c S2 d S3 ds S4
; Measure 6
    env $0 $00
    beat f Q+E1
    vol LO_VOL
    vibrato $01
    beat f E2+S1 r S2

    env $0 $05
    vibrato $e1
    vol HI_VOL
    beat f E2
    beat f R1 fs R2 gs R3
; Measure 7
    env $0 $00
    beat as Q+E1
    vol LO_VOL
    vibrato $01
    beat as E2+S1 r S2+S3  

    vibrato $e1
    env $0 $03
    vol HI_VOL
    beat as S4
    beat as R1 gs R2 fs R3
; Measure 8
    env $0 $04
    beat gs R1+R2 fs R3

    env $0 $00
    beat f Q+E1
    vol LO_VOL
    vibrato $01
    beat f E2

    vibrato $e1
    env $0 $07
    vol HI_VOL
    beat f Q
; Measure 9
    env $0 $04
    beat ds E1 ds S3 f S4

    env $0 $00
    beat fs Q+E1
    vol LO_VOL
    vibrato $01
    beat fs E2

    vibrato $e1
    env $0 $05
    vol HI_VOL
    beat f E1 ds E2
; Measure 10
    env $0 $04
    beat cs E1 cs S3 ds S4

    env $0 $00
    beat f Q+E1
    vol LO_VOL
    vibrato $01
    beat f E2

    vibrato $e1
    env $0 $05
    vol HI_VOL
    beat ds E1 cs E2    
; Measure 11
    env $0 $04
    beat c E1 c S3 d S4

    env $0 $00
    beat e Q+E1
    vol LO_VOL
    vibrato $01
    beat e E2

    vibrato $e1
    env $0 $07
    vol HI_VOL
    beat g Q
; Measure 12
    env $0 $05
    beat f E1

    octave 4
    env $0 $03
    beat f S3 f S4
    env $0 $05
    beat f E1

    env $0 $03
    beat f S3 f S4
    env $0 $05
    beat f E1

    env $0 $03
    beat f S3 f S4
    env $0 $05
    beat f E1 f E2

; Measure 13 (copy of M5)
    ;vibrato $e1
    ;env $0 $05
    ;duty $01
    ;vol HI_VOL
    octave 4
    beat as Q
    env $0 $00
    beat f Q+E1 r S3

    env $0 $02
    beat as S4
    beat as S1 ou c S2 d S3 ds S4
; Measure 14 (copy of M6)
    env $0 $00
    beat f Q+E1
    vol LO_VOL
    vibrato $01
    beat f E2+S1 r S2

    env $0 $05
    vibrato $e1
    vol HI_VOL
    beat f E2
    beat f R1 fs R2 gs R3
; Measure 15 (copy of M7)
    env $0 $00
    beat as HF+S1
    vol LO_VOL
    vibrato $01
    beat as S2+E2

    vibrato $e1
    vol HI_VOL
    env $0 $07
    octaveu
    beat cs Q
; Measure 16
    env $0 $05
    beat c Q

    env $0 $00
    octaved
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
    beat fs HF+S1
    vol LO_VOL
    vibrato $01
    beat fs S2+E2

    vibrato $e1
    vol HI_VOL
    env $0 $07
    beat as Q
; Measure 18,20
    env $0 $05
    beat a Q

    env $0 $00
    beat f Q+E1
    vol LO_VOL
    vibrato $01
    beat f E2

    vol HI_VOL
    env $0 $07
    vibrato $e1
.ifeq REPTCTR 0
    beat f Q
.else ;REPTCTR == 1
    beat d Q
.endif
.endr
; Measure 21
    env $0 $00
    beat ds HF+S1
    vol LO_VOL
    vibrato $01
    beat ds S2+E2

    vibrato $e1
    vol HI_VOL
    env $0 $07
    beat fs Q
; Measure 22
    beat f Q

    env $0 $00
    beat cs Q+E1
    vibrato $01
    vol LO_VOL
    beat cs E2

    vibrato $e1
    vol HI_VOL
    env $0 $07
    octaved
    beat as Q
; Measure 23
    env $0 $04
    octaveu
    beat c E1 c S3 d S4

    env $0 $00
    beat e Q+E1
    vibrato $01
    vol LO_VOL
    beat e E2

    vibrato $e1
    vol HI_VOL
    env $0 $07
    beat g Q
; Measure 24
    env $0 $05
    beat f E1

    goto musALTTP_overworldChannel1Measure4aLoop
    cmdff

musALTTP_overworldChannel0:
.redefine HI_VOL $5
.redefine LO_VOL $3

; Measure 1
    duty $00
    vibrato $e1
    env $0 $00

    vol HI_VOL
    octave 4
    beat f Q

    octave 3
    env $0 $05
    beat f R1 f R2 f R3
    beat f E1+S3

    vibrato $e1
    vol HI_VOL
    env $0 $03
    beat f S4 f R1 f R2 f R3
; Measure 2-3
.rept 2
    env $0 $05
    beat f E1 r S3 f S4
    env $0 $00
    beat f Q
    vol LO_VOL
    vibrato $01
    beat f E1+S3

    vibrato $e1
    vol HI_VOL
    env $0 $03
    beat f S4 f R1 f R2 f R3
.endr
; Measure 4
    env $0 $05
    beat f E1

musALTTP_overworldChannel0Measure4aLoop:
; Measure 4a
    octave 3
    env $0 $03
    beat a S3 as S4
    env $0 $05
    beat b E1

    env $0 $03
    beat b S3 b S4
    env $0 $05
    octaveu
    beat c E1

    env $0 $03
    beat c S3 c S4
    env $0 $05
    beat cs E1 cs E2

; Measure 5
    ;vibrato $e1
    ;env $0 $05
    duty $01
    ;vol HI_VOL
    octave 4
    beat d Q
    env $0 $00
    octaved
    beat as Q f E1+S3

    octaveu
    env $0 $02
    beat d S4
    beat d S1 ds S2 f S3 g S4
; Measure 6
    env $0 $07
    beat gs E1+S3

    duty $01
    env $0 $02
    octaved
    beat as S4
    beat as S1 ou c S2 d S3 ds S4

    env $0 $05
    beat f E1
    duty $00 
    beat gs E2

    env $0 $04
    beat gs R1 as R2 ou c R3
; Measure 7
    env $0 $07
    beat cs E1+S3

    duty $01
    env $0 $02
    octaved
    octaved
    beat fs S4
    beat fs S1 gs S2 as S3 ou c S4

    env $0 $07
    beat cs Q 
    duty $00
    beat od fs Q
; Measure 8
    ;env $0 $07
    octave 3
    beat f Q+R1
    env $0 $04
    beat f R2 ds R3

    env $0 $00
    beat f Q+E1
    vol LO_VOL
    vibrato $01
    beat f E2
; Measure 9
    vibrato $e1
    env $0 $07  
    vol HI_VOL
    beat fs Q

    env $0 $04
    beat fs E1 fs S3 gs S4

    env $0 $00
    beat as Q+E1
    vol LO_VOL
    vibrato $01
    beat as E2
; Measure 10
    vibrato $e1
    env $0 $07  
    vol HI_VOL
    beat f Q

    env $0 $04
    beat f E1 f S3 fs S4

    env $0 $00
    beat gs Q+E1
    vol LO_VOL
    vibrato $01
    beat gs E2
; Measure 11
    vibrato $e1
    env $0 $07
    vol HI_VOL
    beat e Q

    env $0 $04
    beat e E1 e S3 f S4
    beat g E1 g S3 a S4
    beat as E1 ou c E2
; Measure 12
    env $0 $05
    beat a E1

    octaved
    env $0 $03
    beat a S3 a S4
    env $0 $05
    beat a E1

    env $0 $03
    beat a S3 a S4
    env $0 $05
    beat a E1

    env $0 $03
    beat a S3 a S4
    env $0 $05
    beat a E1 a E2

; Measure 13 (copy of M5)
    ;vibrato $e1
    ;env $0 $05
    duty $01
    ;vol HI_VOL
    octave 4
    beat d Q
    env $0 $00
    octaved
    beat as Q f E1+S3

    octaveu
    env $0 $02
    beat d S4
    beat d S1 ds S2 f S3 g S4
; Measure 14 (copy of M6)
    env $0 $07
    beat gs E1+S3

    duty $01
    env $0 $02
    octaved
    beat as S4
    beat as S1 ou c S2 d S3 ds S4

    env $0 $05
    beat f E1
    duty $00 
    beat gs E2

    env $0 $04
    beat gs R1 as R2 ou c R3
; Measure 15 (copy of M7)
    env $0 $07
    beat cs E1+S3

    duty $01
    env $0 $02
    octaved
    octaved
    beat fs S4
    beat fs S1 gs S2 as S3 ou c S4

    env $0 $07
    beat cs Q 
    duty $00
    beat od fs Q
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
.ifeq REPTCTR 2
    env $0 $00
.endif
    octave 4
    beat as HF+S1
    vol LO_VOL
    vibrato $01
    beat as S2+E2

    vol HI_VOL
    vibrato $e1
    env $0 $07
    octaveu
    beat cs Q
; Measure 18,20
    env $0 $05
    beat c Q

    env $0 $07
    octaved
    beat a Q od a Q ou a Q
.endr
; Measure 21
    duty $00
    ;env $0 $07
    octave 3
    beat fs Q
    env $0 $04
    beat fs E1 fs S3 f S4

    env $0 $00
    beat fs Q+E1
    vibrato $01
    vol LO_VOL
    beat fs E2    
; Measure 22
    vol HI_VOL
    env $0 $07
    beat f Q
    env $0 $04
    beat f E1 f S3 ds S4

    env $0 $00
    beat f Q+E1
    vibrato $01
    vol LO_VOL
    beat f E2  
; Measure 23
    vol HI_VOL
    env $0 $07
    beat e Q

    env $0 $04
    beat e E1 e S3 f S4
    beat g E1 g S3 a S4
    beat as E1 ou c E2
; Measure 24
    env $0 $05
    octave 4
    beat a E1

    goto musALTTP_overworldChannel0Measure4aLoop
    cmdff

.macro m_musALTTP_overworldChannel4Quarter
    duty HI_VOL
    beat \1 E1
    duty LO_VOL
    beat \1 E2
.endm
.macro m_musALTTP_overworldChannel4Eighth
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

.macro m_musALTTP_overworldChannel4Triplet
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


.macro m_musALTTP_overworldChannel4Measure5
    m_musALTTP_overworldChannel4Eighth \1 1
    rest E2

    m_musALTTP_overworldChannel4Triplet \1 1
    m_musALTTP_overworldChannel4Triplet \1 2
    m_musALTTP_overworldChannel4Triplet \2 3
.rept 2
    m_musALTTP_overworldChannel4Eighth \1 1
    rest E2
.endr
.endm

musALTTP_overworldChannel4:
.redefine HI_VOL $0e
.redefine LO_VOL $0f

; Measure 1
    vibrato $e1
    m_musALTTP_overworldChannel4Quarter c3
    m_musALTTP_overworldChannel4Triplet c3 1
    m_musALTTP_overworldChannel4Triplet c3 2
    m_musALTTP_overworldChannel4Triplet c3 3

    m_musALTTP_overworldChannel4Quarter as2
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
    m_musALTTP_overworldChannel4Triplet c4 1
    m_musALTTP_overworldChannel4Triplet c4 2
    m_musALTTP_overworldChannel4Triplet c4 3
*/
; Measure 2
.redefine HI_VOL $0e
.redefine LO_VOL $0f
    m_musALTTP_overworldChannel4Quarter gs2
    m_musALTTP_overworldChannel4Quarter c3

    m_musALTTP_overworldChannel4Quarter gs2
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
    m_musALTTP_overworldChannel4Triplet c4 1
    m_musALTTP_overworldChannel4Triplet c4 2
    m_musALTTP_overworldChannel4Triplet c4 3
*/
; Measure 3
.redefine HI_VOL $0e
.redefine LO_VOL $0f
    m_musALTTP_overworldChannel4Quarter fs2
    m_musALTTP_overworldChannel4Quarter c3

    m_musALTTP_overworldChannel4Quarter fs2
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
    m_musALTTP_overworldChannel4Triplet c4 1
    m_musALTTP_overworldChannel4Triplet c4 2
    m_musALTTP_overworldChannel4Triplet c4 3
*/

musALTTP_overworldChannel4Measure4Loop:
; Measure 4
.redefine HI_VOL $0e
.redefine LO_VOL $0f
.rept 3
    m_musALTTP_overworldChannel4Quarter f2
.endr
    duty HI_VOL
    octave 2
    beat gs S1 r S2 a S3 r S4

; Measure 5
    m_musALTTP_overworldChannel4Measure5 as2 gs2
; Measure 6
    m_musALTTP_overworldChannel4Measure5 gs2 fs2
; Measure 7
    m_musALTTP_overworldChannel4Measure5 fs2 e2
; Measure 8
    m_musALTTP_overworldChannel4Measure5 cs3 c3
; Measure 9
    m_musALTTP_overworldChannel4Measure5 b2 as2
; Measure 10
    m_musALTTP_overworldChannel4Measure5 as2 gs2
; Measure 11
    m_musALTTP_overworldChannel4Measure5 c3 b2
; Measure 12
.rept 3
    m_musALTTP_overworldChannel4Quarter f2
.endr
    duty HI_VOL
    octave 2
    beat g S1 r S2 a S3 r S4

; Measure 13 (copy of M5)
    m_musALTTP_overworldChannel4Measure5 as2 gs2
; Measure 14 (copy of M6)
    m_musALTTP_overworldChannel4Measure5 gs2 fs2
; Measure 15 (copy of M7)
    m_musALTTP_overworldChannel4Measure5 fs2 e2
; Measure 16
    m_musALTTP_overworldChannel4Measure5 f2 ds2
.rept 2
; Measure 17,19
    m_musALTTP_overworldChannel4Triplet e2 1
    m_musALTTP_overworldChannel4Triplet as2 2
    m_musALTTP_overworldChannel4Triplet cs3 3

    m_musALTTP_overworldChannel4Triplet e3 1
    m_musALTTP_overworldChannel4Triplet as3 2
    m_musALTTP_overworldChannel4Triplet cs4 3

    m_musALTTP_overworldChannel4Eighth e4 1
    rest E2
    m_musALTTP_overworldChannel4Eighth cs4 1
    rest E2
; Measure 18,20
    m_musALTTP_overworldChannel4Eighth f4 1
    rest E2

    m_musALTTP_overworldChannel4Triplet f2 1
    m_musALTTP_overworldChannel4Triplet f2 2
    m_musALTTP_overworldChannel4Triplet f2 3

    m_musALTTP_overworldChannel4Eighth f2 1
    rest E2+Q
.endr
; Measure 21
    m_musALTTP_overworldChannel4Measure5 b2 as2
; Measure 22
    m_musALTTP_overworldChannel4Measure5 as2 gs2
; Measure 23
    m_musALTTP_overworldChannel4Measure5 c3 b2

    goto musALTTP_overworldChannel4Measure4Loop
    cmdff
    
musALTTP_overworldChannel6:
    .redefine HI_VOL $4
    .redefine LO_VOL $3
    .redefine HIT $27
    .redefine CRASH $2e

; Measure 1-3
.rept 3
    vol 7
    beat HIT T1
    vol 5
    beat HIT T2
    vol 3
    beat HIT T3
    beat HIT T4
    vol 2
    beat HIT T5
    beat HIT T6
    vol 3
    beat HIT T7
    beat HIT T8
    vol 4
    beat HIT T1
    vol 5
    beat HIT T2
    beat HIT T3
    vol 6
    beat HIT T4
    vol 6
    beat HIT T5
    beat HIT T6
    vol 7
    beat HIT T7
    beat HIT T8
    vol 8
    beat HIT Q
    vol 7
    beat HIT R1
    beat HIT R2
    beat HIT R3
.endr
; Measure 4
    vol 7
    beat HIT Q
    beat HIT Q
    vol 6
    beat HIT Q
    vol 7
    beat HIT E1
    vol 6
    beat HIT E2
musALTTP_overworldChannel6Measure5Loop:
.rept 7
; Measure 5-11
    vol 7
    beat HIT Q
    beat HIT R1
    beat HIT R2
    vol 5
    beat HIT R3
    vol 7
    beat HIT E1
    vol 5
    beat HIT E2
    vol 4
    beat HIT S1
    vol 5
    beat HIT S2
    vol 6
    beat HIT S3
    vol 7
    beat HIT S4
.endr
; Measure 12
    vol 7
    beat HIT E1
    vol 5
    beat HIT S3
    beat HIT S4
    vol 7
    beat HIT E1
    vol 5
    beat HIT S3
    beat HIT S4
    vol 7
    beat HIT E1
    vol 5
    beat HIT S3
    beat HIT S4
    vol 7
    beat HIT S1
    vol 6
    beat HIT S2
    beat HIT S3
    vol 7
    beat HIT S4
; Measure 13-16
.rept 4
    vol 7
    beat HIT Q
    beat HIT R1
    beat HIT R2
    vol 5
    beat HIT R3
    vol 7
    beat HIT E1
    vol 5
    beat HIT E2
    vol 4
    beat HIT S1
    vol 5
    beat HIT S2
    vol 6
    beat HIT S3
    vol 7
    beat HIT S4
.endr
; Measure 17
    vol 7
    beat HIT S1
    beat HIT S2
    vol 6
    beat HIT S3
    vol 3
    beat HIT S4
    vol 4
    beat HIT S1
    vol 5
    beat HIT S2
    vol 6
    beat HIT S3
    beat HIT S4
    vol 8
    beat CRASH Q
	vol 4
    beat HIT S1
    vol 5
    beat HIT S2
    vol 6
    beat HIT S3
    vol 7
    beat HIT S4
; Measure 18
    vol 7
    beat HIT Q
    beat HIT R1
    beat HIT R2
    vol 5
    beat HIT R3
    vol 7
    beat HIT E1
    vol 5
    beat HIT E2
    vol 4
    beat HIT S1
    vol 5
    beat HIT S2
    vol 6
    beat HIT S3
    vol 7
    beat HIT S4
; Measure 19
    beat HIT S1
    beat HIT S2
    vol 6
    beat HIT S3
    vol 3
    beat HIT S4
    vol 4
    beat HIT S1
    vol 5
    beat HIT S2
    vol 6
    beat HIT S3
    vol 6
    beat HIT S4
    vol 7
    beat CRASH Q
	vol 4
    beat HIT S1
    vol 5
    beat HIT S2
    vol 6
    beat HIT S3
    vol 7
    beat HIT S4
; Measure 18-21
.rept 4
    beat HIT Q
    beat HIT R1
    beat HIT R2
    vol 5
    beat HIT R3
    vol 7
    beat HIT E1
    vol 5
    beat HIT E2
    vol 4
    beat HIT S1
    vol 5
    beat HIT S2
    vol 6
    beat HIT S3
    vol 7
    beat HIT S4
.endr
; Measure 22
    beat HIT E1
    vol 5
    beat HIT S3
    beat HIT S4
    vol 7
    beat HIT E1
    vol 5
    beat HIT S3
    beat HIT S4
    vol 7
    beat HIT E1
    vol 5
    beat HIT S3
    beat HIT S4
    vol 7
    beat HIT S1
    vol 6
    beat HIT S2
    beat HIT S3
    vol 7
    beat HIT S4
    goto musALTTP_overworldChannel6Measure5Loop
    cmdff
