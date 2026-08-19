musColorDungeonStart:
    tempo 75

.macro m_musColorDungeonChannel1StaccQuarter
    vol HI_VOL
    beat \1 E1+S3
    vol LO_VOL
    beat \1 S4
.endm

.macro m_musColorDungeonChannel1measure8
    vol HI_VOL
    beat \1 S1
    vol LO_VOL
    beat \1 S2 \1 S3 \1 S4
.endm

musColorDungeonChannel1:
    .redefine HI_VOL $6
    .redefine LO_VOL $3

@measure1Loop:

; Measure 1
; 4/4
    octave 2
    vibrato $00
    env $0 $00
    duty $02

.rept 2
    vol HI_VOL
    beat g Q+E1
    vol LO_VOL
    beat g E2

    vol HI_VOL
    m_musColorDungeonChannel1StaccQuarter as
    octaveu
    m_musColorDungeonChannel1StaccQuarter d
; Measure 2
    m_musColorDungeonChannel1StaccQuarter cs
    octaved
    vol HI_VOL
    beat fs HF
    vol LO_VOL
    beat fs Q
; Measure 3
    vol HI_VOL
    beat f Q+E1
    vol LO_VOL
    beat f E2+E1

    vol HI_VOL
    beat gs E2+E1 ou cs E2
; Measure 4
    m_musColorDungeonChannel1StaccQuarter c
    octaved
    vol HI_VOL
    beat e HF
    vol LO_VOL
    beat e Q   

; Measure 5
    vol HI_VOL
    beat ds S1 d S2 ds E2+E1
    vol LO_VOL
    beat ds E2

    vol HI_VOL
    beat g E1+S3 ou ds S4+E1 d E2
; Measure 6
    octaved
    vol HI_VOL
    beat d S1 cs S2 d E2+E1
    vol LO_VOL
    beat d E2

    vol HI_VOL
    beat g E1+S3 ou d S4+E1 cs E2

; Measure 7
; 5/4
    octave 2
    beat d S1 fs S2 a S3 fs S4
    beat a S1 ou c S2 od a S3 ou c S4
    beat ds S1 c S2 ds S3 fs S4
    beat a S1 fs S2 ds S3 c S4
    beat ds S1 c S2 od a S3 fs S4
.endr
; Measure 8
; 4/4
    octave 6
    env $0 $02
    m_musColorDungeonChannel1measure8 d
.redefine HI_VOL $4
.redefine LO_VOL $2
    m_musColorDungeonChannel1measure8 d
.redefine HI_VOL $6
.redefine LO_VOL $3
    m_musColorDungeonChannel1measure8 ds
.redefine HI_VOL $4
.redefine LO_VOL $2
    m_musColorDungeonChannel1measure8 ds
; Measure 9
    m_musColorDungeonChannel1measure8 ds

.redefine HI_VOL $6
.redefine LO_VOL $3
    m_musColorDungeonChannel1measure8 cs

.redefine HI_VOL $6
.redefine LO_VOL $3
    octaved
    m_musColorDungeonChannel1measure8 a
.redefine HI_VOL $4
.redefine LO_VOL $2
    m_musColorDungeonChannel1measure8 a 
; Measure 10
.redefine HI_VOL $6
.redefine LO_VOL $3
    octaveu
    m_musColorDungeonChannel1measure8 c
.redefine HI_VOL $4
.redefine LO_VOL $2
    m_musColorDungeonChannel1measure8 c
    m_musColorDungeonChannel1measure8 c
.redefine HI_VOL $6
.redefine LO_VOL $3
    vol HI_VOL
    beat d S1
    vol LO_VOL
    beat d S2
    vol HI_VOL
    beat c S3
    vol LO_VOL
    beat c S4
; Measure 11
    octaved
    m_musColorDungeonChannel1measure8 b
.redefine HI_VOL $4
.redefine LO_VOL $2
    m_musColorDungeonChannel1measure8 b
    m_musColorDungeonChannel1measure8 b
.redefine HI_VOL $6
.redefine LO_VOL $3
    vol HI_VOL
    beat g S1
    vol LO_VOL
    beat g S2
    vol HI_VOL
    beat a S3
    vol LO_VOL
    beat a S4
; Measure 12
    m_musColorDungeonChannel1measure8 as
.redefine HI_VOL $4
.redefine LO_VOL $2
    m_musColorDungeonChannel1measure8 as
    vol HI_VOL
    beat as S1
    vol LO_VOL
    beat as S2
.redefine HI_VOL $6
.redefine LO_VOL $3
    vol HI_VOL
    beat as S3
    vol LO_VOL
    beat as S4

    vol HI_VOL
    octaveu
    beat c S1
    vol LO_VOL
    beat c S2
    vol HI_VOL
    octaved
    beat as S3
    vol LO_VOL
    beat as S4
; Measure 13
    m_musColorDungeonChannel1measure8 a
.redefine HI_VOL $4
.redefine LO_VOL $2
    m_musColorDungeonChannel1measure8 a
    vol HI_VOL
    beat a S1
    vol LO_VOL
    beat a S2

.redefine HI_VOL $6
.redefine LO_VOL $3
    vol HI_VOL
    beat g S3
    vol LO_VOL
    beat g S4

    vol HI_VOL
    beat fs S1
    vol LO_VOL
    beat fs S2
    vol HI_VOL
    beat g S3
    vol LO_VOL
    beat g S4
; Measure 14
    m_musColorDungeonChannel1measure8 a
.redefine HI_VOL $4
.redefine LO_VOL $2
    m_musColorDungeonChannel1measure8 a
    m_musColorDungeonChannel1measure8 a
    m_musColorDungeonChannel1measure8 a
    rest Q
.redefine HI_VOL $6
.redefine LO_VOL $3

    goto @measure1Loop
    cmdff

.macro m_musColorDungeonChannel0Beat
    vol HI_VOL
    beat \1 T1
.if \1 == r
    rest T2
.else
    vol LO_VOL
    beat \5 T2
    vol HI_VOL
.endif

    beat \2 T3
    vol LO_VOL
    beat \1 T4

    vol HI_VOL
    beat \3 T5
    vol LO_VOL
    beat \2 T6

    vol HI_VOL
    beat \4 T7
    vol LO_VOL
    beat \3 T8
.endm

musColorDungeonChannel0:
    .redefine HI_VOL $5
    .redefine LO_VOL $2

@measure1Loop:
; Measure 1
;4/4
    octave 4
    vibrato $00
    env $0 $00
    duty $02
.rept 2
    m_musColorDungeonChannel0Beat g4 as4 d5 ds5 r
.rept 3
    m_musColorDungeonChannel0Beat g4 as4 d5 ds5 ds5
.endr
; Measure 2
.rept 4
    m_musColorDungeonChannel0Beat fs4 a4 d5 ds5 ds5
.endr
; Measure 3
.rept 4
    m_musColorDungeonChannel0Beat f4 gs4 d5 ds5 ds5
.endr
; Measure 4
.rept 4
    m_musColorDungeonChannel0Beat e4 g4 d5 ds5 ds5
.endr
; Measure 5
    m_musColorDungeonChannel0Beat ds4 g4 c5 d5 ds5
.rept 3
    m_musColorDungeonChannel0Beat ds4 g4 c5 d5 d5
.endr
; Measure 6
.rept 4
    m_musColorDungeonChannel0Beat d4 g4 c5 d5 d5
.endr

; Measure 7
    m_musColorDungeonChannel0Beat c4 fs4 a4 c5 d5
    m_musColorDungeonChannel0Beat fs4 a4 c5 ds5 c5
    m_musColorDungeonChannel0Beat a4 c5 ds5 c5 ds5
    m_musColorDungeonChannel0Beat ds5 fs5 ds5 fs5 c5
    m_musColorDungeonChannel0Beat a5 fs5 a5 c6 fs5
.endr

    .redefine HI_VOL $4
    .redefine LO_VOL $2
; Measure 8
    m_musColorDungeonChannel0Beat d5 as4 g4 as4 c6
.rept 3
    m_musColorDungeonChannel0Beat d5 as4 g4 as4 as4
.endr   
; Measure 9
    m_musColorDungeonChannel0Beat d5 a4 fs4 a4 as4
.rept 3
    m_musColorDungeonChannel0Beat d5 a4 fs4 a4 a4
.endr   
; Measure 10
    m_musColorDungeonChannel0Beat d5 gs4 f4 gs4 a4
.rept 3
    m_musColorDungeonChannel0Beat d5 gs4 f4 gs4 gs4
.endr   
; Measure 11
    m_musColorDungeonChannel0Beat d5 g4 e4 g4 gs4
.rept 3
    m_musColorDungeonChannel0Beat d5 g4 e4 g4 g4
.endr   
; Measure 12
.rept 4
    m_musColorDungeonChannel0Beat d5 g4 ds4 g4 g4
.endr   
; Measure 13
.rept 4
    m_musColorDungeonChannel0Beat d5 g4 d4 g4 g4
.endr   
; Measure 14 (M7)
    m_musColorDungeonChannel0Beat c4 fs4 a4 c5 d5
    m_musColorDungeonChannel0Beat fs4 a4 c5 ds5 c5
    m_musColorDungeonChannel0Beat a4 c5 ds5 c5 ds5
    m_musColorDungeonChannel0Beat ds5 fs5 ds5 fs5 c5
    m_musColorDungeonChannel0Beat a5 fs5 a5 c6 fs5

    goto @measure1Loop
    cmdff

musColorDungeonChannel4:
    .redefine HI_VOL $20
    .redefine LO_VOL $08

    octave 2
    vibrato $00
    duty LO_VOL

@measure1Loop:
    rest E1+S3+T7 ;offset
.rept 2 INDEX REPTCTR
; Measure 1
; 4/4
    beat g Q+E1 r E2 as E1 r E2 ou d E1 r E2
; Measure 2
    beat cs E1 r E2 od fs HF r Q
; Measure 3
    beat f HF+E1 gs E2+E1 ou cs E2
; Measure 4
    beat c E1 r E2 od e HF r Q
; Measure 5
    beat ds S1 d S2 ds E2+E1 r E2
    beat g E1 r S3 ou ds S4+S1 r S2 d E2
; Measure 6
    octaved
    beat d S1 cs S2 d E2+E1 r E2
    beat g E1 r S3 ou d S4+E1 cs E2
; Measure 7
; 5/4
    octave 2
    beat d S1 fs S2 a S3 fs S4
    beat a S1 ou c S2 od a S3 ou c S4
    beat ds S1 c S2 ds S3 fs S4
    beat a S1 fs S2 ds S3 c S4
.ifeq REPTCTR 0
    beat ds S1 c S2 od a S3 fs S4
.else
    beat ds T1
.endif
.endr

; Measure 8
    octave 6
    beat d HF ds HF
; Measure 9
    rest Q
    beat cs Q od a HF
; Measure 10
    octaveu
    beat c HF r Q d E1 c E2
; Measure 11
    octaved
    beat b HF r Q g E1 a E2
; Measure 12
    beat as HF r E1
    beat as E2 ou c E1 od as E1
; Measure 13
    beat a HF r E1
    beat g E2 fs E1 g E1
; Measure 14
    beat a HF+Q r HF

    goto @measure1Loop
    cmdff

.define musColorDungeonChannel6 MUSIC_CHANNEL_FALLBACK EXPORT