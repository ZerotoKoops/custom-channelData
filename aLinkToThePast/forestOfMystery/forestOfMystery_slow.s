musForestOfMystery_slowStart:
    tempo 140
musForestOfMystery_slowChannel1:
    .redefine HI_VOL $6
    .redefine LO_VOL $4

; Measure 1
    vol $0
    beat gs3 E1
musForestOfMystery_slowChannel1Measure1aLoop:
    env $1 $00
    vibrato $a1
    duty $01
.rept 2 INDEX REPTCTR

; Measure 1a,3a
    vol LO_VOL
    octave 5
    beat cs E2 cs E1 cs E2+S1 r S2
    beat cs E2 cs E1 cs E2 r E1

; Measure 2a,4a
    beat cs E2 cs E1 cs E2+E1
    octaveu
    vol HI_VOL
    beat cs S3 c S4 cs Q r E1
.endr

; Measure 5a
    octave 5
    ;vol HI_VOL
    beat as E2 as E1 as E2
    beat as E1 f E2+S1 r S2
; Measure 5d-7
    beat f E2+E1
    beat ds E2
    beat ds S1 d S2 ds E2+E1+S3 r S4+Q+E1

; Measure 7a
    beat gs E2 gs E1 gs E2
    beat gs E1 ds E2+S1 r S2
; Measure 7d-9
    beat ds E2+E1
 
    beat cs E2
    beat cs S1 c S2 cs E2+E1+S3 r S4+Q+E1   

; Measure 9a
    beat g E2 g E1 g E2
    beat g E1 c E2+S1 r S2

; Measure 9d
    beat c E2+S1 r S2

; Measure 10a
    beat d E2 ds E1 f E2+S1 r S2
    beat ds E2 f E1

; Measure 10d-12
    beat g E2+E1

    beat g E2+Q+E1
    vibrato $01
    vol LO_VOL
    env $0 $00
    beat g E2+Q+Q
    vol LO_VOL-1
    beat g Q+E1 r E2+Q+E1

    goto musForestOfMystery_slowChannel1Measure1aLoop
    cmdff

musForestOfMystery_slowChannel0:
    .redefine HI_VOL $6
    .redefine LO_VOL $4

; Measure 1
    vol $0
    beat gs3 E1
musForestOfMystery_slowChannel0Measure1aLoop:
.rept 2 INDEX REPTCTR

; Measure 1a,3a
    vol LO_VOL
    duty $01
    octave 4
    env $1 $00
    beat a E2 a E1 a E2+S1 r S2
    beat a E2 a E1 a E2 r E1

; Measure 2a,4a
    beat gs E2 gs E1 gs E2+E1+S3 r S4+Q+E1
.endr

; Measure 5a-7
.macro m_musForestOfMystery_slowChannel0Measure5a
    beat \1 E2 \1 E1 \1 E2
    vol HI_VOL
    beat \1 E1
    vol LO_VOL
    beat \1 E2 \1 E1 \1 E2 r E1
.endm

    ;vol LO_VOL
    m_musForestOfMystery_slowChannel0Measure5a fs4
    m_musForestOfMystery_slowChannel0Measure5a g4

; Measure 7a-9
.rept 2 INDEX REPTCTR
    m_musForestOfMystery_slowChannel0Measure5a f4
.endr
; Measure 9a-10
    m_musForestOfMystery_slowChannel0Measure5a ds4
; Measure 10a-11
    m_musForestOfMystery_slowChannel0Measure5a f4
; Measure 11a-12
.rept 2 INDEX REPTCTR
    m_musForestOfMystery_slowChannel0Measure5a g4
.endr

    goto musForestOfMystery_slowChannel0Measure1aLoop
    cmdff

musForestOfMystery_slowChannel4:
    .redefine HI_VOL $20 ;$0e
    .redefine LO_VOL $08 ;$0f

musForestOfMystery_slowChannel4Measure1Loop:
.rept 2 INDEX REPTCTR
; Measure 1,3
    octave 3
    duty HI_VOL
    beat fs HF+E1
    duty LO_VOL
    beat fs E2

    duty HI_VOL
    beat cs Q

; Measure 2,4
    beat f Q+E1
    duty LO_VOL
    beat f E2

    duty HI_VOL
    beat c Q+E1
    duty LO_VOL
    beat c E2

.endr
; Measure 5
.macro m_musForestOfMystery_slowChannel4Measure5
    duty HI_VOL
    beat \1 HF+E1
    duty LO_VOL
    beat \1 E2+E1

    ;duty HI_VOL
    beat \2 E2
.endm


    duty HI_VOL
    m_musForestOfMystery_slowChannel4Measure5 fs3 cs4

; Measure 6
    m_musForestOfMystery_slowChannel4Measure5 c3 c4
; Measure 7
    m_musForestOfMystery_slowChannel4Measure5 f3 c4
; Measure 8
    m_musForestOfMystery_slowChannel4Measure5 as2 as3
; Measure 9
    m_musForestOfMystery_slowChannel4Measure5 gs2 gs3
; Measure 10
    m_musForestOfMystery_slowChannel4Measure5 as2 as3
; Measure 11-12
    duty HI_VOL
    beat c3 HF+Q+E1
    duty LO_VOL
    beat c3 E2+HF+Q+E1

    ;duty HI_VOL
    beat c4 E2

    goto musForestOfMystery_slowChannel4Measure1Loop
    cmdff


.define musForestOfMystery_slowChannel6 MUSIC_CHANNEL_FALLBACK EXPORT