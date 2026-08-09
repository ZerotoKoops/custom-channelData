musForestOfMysteryStart:
    tempo 140
musForestOfMysteryChannel1:
    .redefine HI_VOL $6
    .redefine LO_VOL $4

; Measure 1
    vol $0
    beat gs3 E1
musForestOfMysteryChannel1Measure1aLoop:
    env $1 $00
    vibrato $a1
    duty $01
.rept 2
; Measure 1a,3a
    vol LO_VOL
    octave 4
    beat b E2 b E1 b E2+S1 r S2
    beat b E2 b E1 b E2 r E1
; Measure 2a,4a
    beat b E2 b E1 b E2+E1
    octaveu
    vol HI_VOL
    beat b S3 a S4 b Q r E1
.endr
; Measure 5a
    octave 5
    ;vol HI_VOL
    beat b E2 b E1 b E2
    beat b E1 f E2+S1 r S2
; Measure 5d-7
    beat f E2+E1 e E2
    beat e S1 d S2 e E2+E1+S3 r S4+Q+E1

; Measure 7a
    beat a E2 a E1 a E2
    beat a E1 e E2+S1 r S2
; Measure 7d-9
    beat e E2+E1 d E2
    beat d S1 c S2 d E2+E1+S3 r S4+Q+E1   

; Measure 9a
    beat g E2 g E1 g E2
    beat g E1 c E2+S1 r S2
; Measure 9d
    beat c E2+S1 r S2 d E2 e E1 f E2+S1 r S2
    beat e E2 f E1
; Measure 10d-12
    beat g E2+HF+E1
    vibrato $01
    vol LO_VOL
    env $0 $00
    beat g E2+Q+Q
    vol LO_VOL-1
    beat g Q+E1 r E2+Q+E1

    goto musForestOfMysteryChannel1Measure1aLoop
    cmdff

musForestOfMysteryChannel0:
    .redefine HI_VOL $6
    .redefine LO_VOL $4

; Measure 1
    vol $0
    beat gs3 E1
musForestOfMysteryChannel0Measure1aLoop:
.rept 2
; Measure 1a,3a
    vol LO_VOL
    duty $01
    octave 4
    env $1 $00
    beat gs E2 gs E1 gs E2+S1 r S2
    beat gs E2 gs E1 gs E2 r E1
; Measure 2a,4a
    beat a E2 a E1 a E2+E1+S3 r S4+Q+E1
.endr

; Measure 5a-7
.macro m_musForestOfMysteryChannel0Measure5a
    beat \1 E2 \1 E1 \1 E2
    vol HI_VOL
    beat \1 E1
    vol LO_VOL
    beat \1 E2 \1 E1 \1 E2 r E1
.endm

    ;vol LO_VOL
.rept 2
    m_musForestOfMysteryChannel0Measure5a g4
.endr
; Measure 7a-9
.rept 2
    m_musForestOfMysteryChannel0Measure5a f4
.endr
; Measure 9a-10
    m_musForestOfMysteryChannel0Measure5a ds4
; Measure 10a-11
    m_musForestOfMysteryChannel0Measure5a f4
; Measure 11a-12
.rept 2
    m_musForestOfMysteryChannel0Measure5a g4
.endr

    goto musForestOfMysteryChannel0Measure1aLoop
    cmdff

musForestOfMysteryChannel4:
    .redefine HI_VOL $0e
    .redefine LO_VOL $0f

musForestOfMysteryChannel4Measure1Loop:
.rept 2
; Measure 1,3
    octave 3
    duty HI_VOL
    beat e HF+E1
    duty LO_VOL
    beat e E2

    octaved
    duty HI_VOL
    beat b Q
; Measure 2,4
    octaveu
    beat f Q+E1
    duty LO_VOL
    beat f E2

    duty HI_VOL
    beat c Q+E1
    duty LO_VOL
    beat c E2
.endr
; Measure 5
.macro m_musForestOfMysteryChannel4Measure5
    duty HI_VOL
    beat \1 HF+E1
    duty LO_VOL
    beat \1 E2+E1

    ;duty HI_VOL
    beat \2 E2
.endm

    duty HI_VOL
    m_musForestOfMysteryChannel4Measure5 g3 d4
; Measure 6
    m_musForestOfMysteryChannel4Measure5 c3 c4
; Measure 7
    m_musForestOfMysteryChannel4Measure5 f3 c4
; Measure 8
    m_musForestOfMysteryChannel4Measure5 as2 as3
; Measure 9
    m_musForestOfMysteryChannel4Measure5 gs2 gs3
; Measure 10
    m_musForestOfMysteryChannel4Measure5 as2 as3
; Measure 11-12
    duty HI_VOL
    beat c3 HF+Q+E1
    duty LO_VOL
    beat c3 E2+HF+Q+E1

    ;duty HI_VOL
    beat c4 E2

    goto musForestOfMysteryChannel4Measure1Loop
    cmdff


.define musForestOfMysteryChannel6 MUSIC_CHANNEL_FALLBACK EXPORT