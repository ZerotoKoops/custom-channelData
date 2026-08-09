musTowerOfSpiritsDungeonStart:
    tempo 124

.macro m_musTowerOfSpiritsDungeonChannel1Fade
    beat \1 (\2-\3)
    env \4 \5
    vibrato (\6|$01)
    beat \1 \3
    vibrato \6
.endm

musTowerOfSpiritsDungeonChannel1:
.redefine HI_VOL $7
.redefine LO_VOL $5

; 6/4
; Measure 1
    vol HI_VOL
    octave 5
    duty $03
    vibrato $a1

    env $1 $00
    m_musTowerOfSpiritsDungeonChannel1Fade c Q+E1 E1 $0 $06 $a1

    env $1 $00
    beat ds E2+HF
    env $0 $00
    vibrato $01
    vol LO_VOL
    beat ds Q+E1
    vol LO_VOL-1
    beat ds E1
; 4/4
; Measure 2-3
    vibrato $a1
    vol HI_VOL
    env $1 $00
    m_musTowerOfSpiritsDungeonChannel1Fade c Q+R1 R1 $0 $06 $a1
    env $1 $00
    m_musTowerOfSpiritsDungeonChannel1Fade ds (R2+R3+R1+R2) R2 $0 $06 $a1
    env $1 $00
    beat f R3+Q+Q+E1
; Measure 3b
    env $0 $00
    vibrato $01
    vol LO_VOL
    beat f E2+Q+E1
    vol LO_VOL-1
    beat f E2

; Measure 4
.redefine HI_VOL $6
.redefine LO_VOL $4
    rest Q
.macro m_musTowerOfSpiritsDungeonChannel1Measure4b
; Measure 4b-6
    octave 3
.rept 3
    beat g Q f Q a Q r Q
.endr
; Measure 7b
    beat g E1 a E2+E1
    beat as E2 a E1 f E2
.endm

; Measure 4b-7
    duty $02
    vibrato $a1
    env $0 $07
    vol HI_VOL
    m_musTowerOfSpiritsDungeonChannel1Measure4b

@measure8Loop:
; Measure 8
.redefine DELAY 0;-1
.macro m_musTowerOfSpiritsDungeonChannel1Measure8
    rest Q-DELAY
    duty $03
    vibrato $a1
    octave 5
    env $1 $05
    vol HI_VOL
    beat c Q od as Q a Q
; Measure 9
    beat g Q as Q a Q f Q
; Measure 10
    beat c E1 f E2 
    env $1 $00
    beat g HF+E1
    env $0 $00
    vibrato $01
    vol LO_VOL
    beat g E2+Q+DELAY
.endm
    m_musTowerOfSpiritsDungeonChannel1Measure8
; Measure 11b
    rest Q+HF+Q-DELAY
; Measure 12b
.macro m_musTowerOfSpiritsDungeonChannel1Measure12b
    vol HI_VOL
    env $1 $05
    vibrato $a1
    octave 5
    beat c Q od as Q a Q
; Measure 13
    beat g Q as Q a Q f Q
; Measure 14
    beat c E1 f E2 
    env $1 $00    
    m_musTowerOfSpiritsDungeonChannel1Fade g HF (R2+R3) $0 $05 $a1
    env $1 $04
    beat g E1 a E2
; Measure 15
    env $1 $00
    beat as Q+E1 as S3 ou c S4
    env $1 $04
    beat d E1 c E2 od g E1 ou d E2
; Measure 16
    beat c E1 od as E2
    env $1 $00
    beat a HF+E1
    env $0 $00
    vibrato $01
    vol LO_VOL
    beat a E2+Q+DELAY
.endm
    m_musTowerOfSpiritsDungeonChannel1Measure12b
; Measure 17b-19
    rest Q+HF-DELAY
    vol $0
    beat gs3 W+W
    rest Q+DELAY
; Measure 20b-23
    duty $02
    env $0 $07
    vibrato $a1
    vol HI_VOL
    m_musTowerOfSpiritsDungeonChannel1Measure4b

; Measure 24b-27
    m_musTowerOfSpiritsDungeonChannel1Measure8
; Measure 27b
    env $0 $07
    duty $02
    vibrato $01
    octave 3
    vol HI_VOL-1
    beat c Q c Q c Q
    rest Q-DELAY
; Measure 28b-33
    duty $03
    vibrato $a1
    octave 5
    env $1 $05
    m_musTowerOfSpiritsDungeonChannel1Measure12b
; Measure 33b
    env $0 $07
    duty $02
    vibrato $01
    octave 3
    vol HI_VOL-1
    beat c Q c Q c Q
; Measure 34-35
.rept 2
    env $0 $00
    beat c E1 od g E2
    octaveu
    env $0 $07
    beat c Q c Q c Q
.endr
; Measure 36
    rest Q-DELAY
    duty $03
    vibrato $a1
    octave 5
    env $1 $05
    beat c Q od as Q gs Q
; Measure 37
    beat g Q f Q ds Q f Q
; Measure 38
    env $1 $00
    beat g HF+E1
    env $0 $00
    vibrato $01
    vol LO_VOL
    beat g E2+E1
    
    env $1 $00
    vibrato $a1
    vol HI_VOL
    beat f E2
; Measure 39
    env $1 $05
    beat g E1 as E2
    env $1 $00
    beat g Q+E1 f E2
    env $1 $05
    beat ds E1 as E2
; Measure 40
    env $1 $00
    beat f HF+E1
    env $0 $00
    vibrato $01
    vol LO_VOL
    beat f E2+Q
; Measure 41
    rest HF+Q+E1+DELAY

    vol HI_VOL
    duty $01
    vibrato $61
    env $0 $03
    octave 4
    beat cs E2
; Measure 42
    beat gs Q
    beat fs E1+S3 gs T7 fs T8
    beat f Q ds Q
; Measure 43
    beat cs Q od as Q ou fs Q f Q
; Measure 44-47
    vibrato $a1
    duty $02
    octave 4
    env $0 $00
.rept 4 INDEX REPTCTR
    ;env $0 $00
.ifeq REPTCTR 1
        beat fs HF
        ;m_musTowerOfSpiritsDungeonChannel1Fade fs HF S4 $0 $04 $a1
.else
    .ifeq REPTCTR 3
        beat as HF
        ;m_musTowerOfSpiritsDungeonChannel1Fade as HF S4 $0 $04 $a1
    .else ;REPTCTR ==0,2
        beat ds HF
        ;m_musTowerOfSpiritsDungeonChannel1Fade ds HF S4 $0 $04 $a1
    .endif
.endif
    ;env $0 $00
    beat f HF
    ;m_musTowerOfSpiritsDungeonChannel1Fade f HF S4 $0 $04 $a1 
.endr 
; Measure 48
    ;env $0 $00
    beat f HF+Q+E1
    ;m_musTowerOfSpiritsDungeonChannel1Fade f HF+Q+E1 E1 $0 $06 $a1
    ;env $0 $00
    beat f Y4 fs Y5 g Y6
; Measure 49
    beat gs HF as HF
    ;m_musTowerOfSpiritsDungeonChannel1Fade gs HF S4 $0 $04 $a1
    ;env $0 $00
    ;m_musTowerOfSpiritsDungeonChannel1Fade as HF S4 $0 $04 $a1
; Measure 50
    beat g HF+Q
    ;env $0 $00
    ;m_musTowerOfSpiritsDungeonChannel1Fade g HF+Q E2 $0 $05 $a1
    ;env $0 $00
    beat f Q
; Measure 51
    octave 5
    beat c HF+E1
    vibrato $01
    vol LO_VOL
    beat c E2+Q
; Measure 52-55
    vol LO_VOL-1
    beat c W+Q
    vol LO_VOL
    beat c Q+HF+W
    beat c W

    goto @measure8Loop
    cmdff

musTowerOfSpiritsDungeonChannel0:
.redefine HI_VOL $6
.redefine LO_VOL $4

; 6/4
; Measure 1
    vol HI_VOL
    octave 4
    duty $01
    vibrato $a1

    env $0 $00
    m_musTowerOfSpiritsDungeonChannel1Fade g Q+E1 E1 $0 $06 $a1

    env $0 $00
    beat as E2+HF
    vibrato $01
    vol LO_VOL
    beat as Q+E1
    vol LO_VOL-1
    beat as E1
; 4/4
; Measure 2-3
    vibrato $a1
    vol HI_VOL
    m_musTowerOfSpiritsDungeonChannel1Fade g Q+R1 R1 $0 $06 $a1
    env $0 $00
    m_musTowerOfSpiritsDungeonChannel1Fade as (R2+R3+R1+R2) R2 $0 $06 $a1
    env $0 $00
    octaveu
    beat c R3+Q+Q+E1
; Measure 3b
    vibrato $01
    vol LO_VOL
    beat c E2+Q+E1
    vol LO_VOL-1
    beat c E2


; Measure 4-8
.redefine HI_VOL $5
.redefine LO_VOL $3
    vol $0
    beat gs3 W+W
    beat gs3 W+W
    rest Q

    duty $02
    env $0 $07
    vibrato $a1
    vol HI_VOL

@measure8bLoop:
.rept 3
; Measure 8b-11,11b-15,15b-19
    m_musTowerOfSpiritsDungeonChannel1Measure4b
    rest Q
.endr
; Measure 19b
    vol $0
    beat gs3 W+W
    beat gs3 W+HF+Q

.redefine DELAY 0
.macro m_musTowerOfSpiritsDungeonChannel0Measure24
; Measure 24
    rest Q-DELAY
    duty $01
    vibrato $a1
    octave 4
    env $0 $06   
    vol HI_VOL
    beat g Q f Q d Q
; Measure 25
    beat d Q f Q d Q c Q
; Measure 26
    octaved
    beat as E1 ou c E2 
    env $0 $00
    beat d HF+E1
    vibrato $01
    vol LO_VOL
    beat d E2+Q+DELAY
.endm
    m_musTowerOfSpiritsDungeonChannel0Measure24
; Measure 27b
    octave 3
    duty $02
    env $0 $07
    ;vibrato $a1
    beat g E1 a E2+E1
    beat as E2 a E1 f E2
    rest Q-DELAY
; Measure 28b
    duty $01
    ;vibrato $a1
    env $0 $06
    ;vol HI_VOL
    octave 4
    beat g Q f Q d Q
; Measure 29
    beat d Q f Q d Q c Q
; Measure 30
    octaved
    beat as E1 ou c E2 
    env $0 $00    
    m_musTowerOfSpiritsDungeonChannel1Fade d HF (R2+R3) $0 $06 $a1
    env $0 $05
    beat d E1 d E2
; Measure 15
    env $0 $00
    beat f Q+E1 f S3 g S4
    env $0 $05
    beat as E1 g E2 d E1 as E2
; Measure 16
    beat g E1 f E2
    env $0 $00
    beat d HF+E1
    vibrato $01
    vol LO_VOL
    beat d E2+Q+DELAY
; Measure 33b-35
    env $0 $07
    duty $02
    vibrato $a1
    octave 3
    vol HI_VOL-1
.rept 2
    beat g Q f Q a Q r Q
.endr
; Measure 35b
    octave 3
    ;duty $02
    ;env $0 $07
    ;vibrato $a1
    beat g E1 a E2+E1
    beat as E2 a E1 f E2  
; Measure 36
    rest Q
.rept 2 INDEX REPTCTR
    octaveu
    beat c Q od as Q ou cs Q
; Measure 37,39
    ;env $0 $07
    ;duty $02
    vibrato $01
    octaved
    beat f E1 c E2
    vibrato $a1
    octaveu
    beat c Q od as Q ou cs Q
.ifeq REPTCTR 0
; Measure 38
    vibrato $01
    octaved
    beat f Q
    vibrato $a1
.endif
.endr
.rept 4
; Measure 40-43
    rest Q
    beat cs Q c Q ds Q
.endr
    octaved
.rept 2
; Measure 44-45
    rest Q
    beat ds Q cs Q f Q
.endr
.rept 2
; Measure 46-47
    rest Q
    beat ds Q od as Q ou f Q
.endr
.rept 2
; Measure 48-49
    rest Q
    beat f Q ds Q g Q
.endr
.rept 2
; Measure 50-51
    rest Q
    beat f Q c Q g Q
.endr


; Measure 52-55
    ;duty $02
    ;env $0 $07
    ;vibrato $a1
    ;vol HI_VOL
    rest Q
    m_musTowerOfSpiritsDungeonChannel1Measure4b
    rest Q
    goto @measure8bLoop
    cmdff


.macro m_musTowerOfSpiritsDungeonChannel4Tremolo
.rept (\3/Q)
    beat \1 T1
    beat \2 T2
    beat \1 T3
    beat \2 T4
    beat \1 T5
    beat \2 T6
    beat \1 T7
    beat \2 T8
.endr
.endm

.macro musTowerOfSpiritsDungeonChannel4QuarterLong
    duty HI_VOL
    beat \1 E1+S3
    duty LO_VOL
    beat \1 S4
.endm
.macro musTowerOfSpiritsDungeonChannel4QuarterShort
    duty HI_VOL
    beat \1 E1
    duty LO_VOL
    beat \1 S3 r S4
.endm
.macro m_musTowerOfSpiritsDungeonChannel4Half
    duty HI_VOL
    beat \1 Q+E1
    duty LO_VOL
    beat \1 E2
.endm

musTowerOfSpiritsDungeonChannel4:
.redefine HI_VOL $0e
.redefine LO_VOL $0f
.redefine SOFT $0f

    /*
; 6/4
; Measure 1
    duty SOFT
    vibrato $01
    octave 3
    m_musTowerOfSpiritsDungeonChannel4Tremolo c2 g2 (W+HF)
; 4/4
; Measure 2-3
    m_musTowerOfSpiritsDungeonChannel4Tremolo ds2 g2 (W+W)
    */

; 6/4
; Measure 1
    duty HI_VOL
    vibrato $01
    octave 3
    beat c W+HF
; 4/4
; Measure 2-3
    beat ds W+W

@measure4Loop:
.rept 11
; Measure 4,6,8,10,12,14,16,18,20,22,24
    octave 3
    musTowerOfSpiritsDungeonChannel4QuarterLong c
.rept 3
    musTowerOfSpiritsDungeonChannel4QuarterShort c
.endr
; Measure 5,7,9,11,13,15,17,19,21,23,25
    duty HI_VOL
    beat c E1 od g E2
    octaveu
.rept 3
    musTowerOfSpiritsDungeonChannel4QuarterShort c
.endr
.endr
; Measure 26
    octave 3
    musTowerOfSpiritsDungeonChannel4QuarterLong c
    musTowerOfSpiritsDungeonChannel4QuarterShort c

    duty HI_VOL
    beat d Q+S1
    duty LO_VOL
    beat d S2

    duty HI_VOL
    beat c S3 d S4
; Measure 27
    beat f Q+S1
    duty LO_VOL
    beat f S2

    duty HI_VOL
    beat e S3 ds S4

    beat d Q+S1
    duty LO_VOL
    beat d S2

    duty HI_VOL
    beat e Y4 d Y5 cs Y6
.rept 3 INDEX REPTCTR
; Measure 28,30,32
    octave 3
    musTowerOfSpiritsDungeonChannel4QuarterLong c
.rept 3
    musTowerOfSpiritsDungeonChannel4QuarterShort c
.endr
; Measure 29,31,33
    duty HI_VOL
    beat c E1 od g E2
    octaveu
.ifeq REPTCTR 2
; Measure 33b
    musTowerOfSpiritsDungeonChannel4QuarterShort c
    octaved
    beat as Q+E1+S3
    duty LO_VOL
    beat as S4
.else ;REPTCTR ==! 2
; Measure 29b,31b
.rept 3
    musTowerOfSpiritsDungeonChannel4QuarterShort c
.endr
.endif
.endr
; Measure 34
    octave 3
    duty HI_VOL
    beat c Q+E1+S3
    duty LO_VOL
    beat c S4    

    duty HI_VOL
    beat d Q+S1
    duty LO_VOL
    beat d S2

    duty HI_VOL
    beat c S3 d S4
; Measure 35
    beat f Q+S1
    duty LO_VOL
    beat f S2

    duty HI_VOL
    beat e S3 ds S4

    duty HI_VOL
    beat d Q+E1+S3
    duty LO_VOL
    beat d S4 
; Measure 36
    duty HI_VOL
    beat f S1
    duty LO_VOL
    beat f S2

    duty HI_VOL
    beat f T5 g T6 gs T7 as T8

    octaveu
    musTowerOfSpiritsDungeonChannel4QuarterLong c
    octaved
    musTowerOfSpiritsDungeonChannel4QuarterLong as
    musTowerOfSpiritsDungeonChannel4QuarterLong gs
; Measure 37
    musTowerOfSpiritsDungeonChannel4QuarterLong g
    musTowerOfSpiritsDungeonChannel4QuarterLong f
    musTowerOfSpiritsDungeonChannel4QuarterLong ds
    musTowerOfSpiritsDungeonChannel4QuarterLong f
; Measure 38
    duty HI_VOL
    beat g HF+S1
    duty LO_VOL
    beat g S2+E2+E1

    duty HI_VOL
    beat f E2
; Measure 39
    beat g S1 r S2 as S3 r S4

    beat g Q+S1
    duty LO_VOL
    beat g S2

    duty HI_VOL
    beat f S3
    duty LO_VOL
    beat f S4

    duty HI_VOL
    beat ds S1 r S2 as S3 r S4
; Measure 40
    octave 3
    musTowerOfSpiritsDungeonChannel4QuarterLong f
.rept 3
    musTowerOfSpiritsDungeonChannel4QuarterShort fs
.endr
; Measure 41-42
    duty HI_VOL
    beat fs E1 cs E2
.rept 3+4
    musTowerOfSpiritsDungeonChannel4QuarterShort fs
.endr
; Measure 43
    duty HI_VOL
    beat fs E1 cs E2
.rept 3
    musTowerOfSpiritsDungeonChannel4QuarterShort fs
.endr
; Measure 44
    octave 2
.rept 4
    musTowerOfSpiritsDungeonChannel4QuarterShort gs
.endr
; Measure 45
    duty HI_VOL
    beat gs E1 ds E2
.rept 3
    musTowerOfSpiritsDungeonChannel4QuarterShort gs
.endr
; Measure 46
.rept 4
    musTowerOfSpiritsDungeonChannel4QuarterShort g
.endr
; Measure 47
    duty HI_VOL
    beat g E1 ds E2
.rept 3
    musTowerOfSpiritsDungeonChannel4QuarterShort g
.endr
; Measure 48
.rept 4
    musTowerOfSpiritsDungeonChannel4QuarterShort as
.endr
; Measure 49
    duty HI_VOL
    beat as E1 f E2
.rept 3
    musTowerOfSpiritsDungeonChannel4QuarterShort as
.endr
; Measure 50
.rept 4
    musTowerOfSpiritsDungeonChannel4QuarterShort a
.endr
; Measure 51
    duty HI_VOL
    beat a E1 f E2
.rept 3
    musTowerOfSpiritsDungeonChannel4QuarterShort a
.endr

    goto @measure4Loop
    cmdff

musTowerOfSpiritsDungeonChannel6:
.redefine HI_VOL $7
.redefine LO_VOL $5
.redefine HIT    $23; ;snare  ;$2a 

/*
    vol LO_VOL
@loop:
    beat $23 Q $23 Q $23 Q $23 Q
    goto @loop
    cmdff
*/

; 6/4
; Measure 1
    rest W+HF
; 4/4
; Measure 2-3
    rest W+HF+Q+E1
    vol HI_VOL
    beat HIT T5 HIT T6 HIT T7 HIT T8
.redefine HI_VOL $5
.redefine LO_VOL $3
    vol HI_VOL
@measure4Loop:
; Measure 4
    beat HIT Q
    beat HIT E1 HIT T5 HIT T6 HIT T7 HIT T8
    beat HIT E1 HIT E2
    rest E1
    beat HIT S3 HIT S4
; Measure 5
    beat HIT E1 HIT E2
    rest E1
    beat HIT S3 HIT S4
    beat HIT E1 HIT S3 HIT S4
    beat HIT S1 HIT S2 HIT S3 HIT S4

    goto @measure4Loop
    cmdff