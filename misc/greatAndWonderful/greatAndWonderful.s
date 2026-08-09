musGreatAndWonderfulStart:
    tempo 130

.macro m_musGreatAndWonderfulChannel1Fade
    beat \1 (\2-E2)
    env $0 $06
    beat \1 E2
.endm

musGreatAndWonderfulChannel1:
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
.rept 4
    beat d E2+E1
.endr

; Measure 2a-3
.redefine HI_VOL $6
.redefine LO_VOL $4

.macro m_musGreatAndWonderfulChannel1Measure2a
    octave 4
    duty $01
    vibrato $61
    vol HI_VOL
.rept 2 INDEX REPTCTR
    env $0 $00
    m_musGreatAndWonderfulChannel1Fade f Q
    ;env $0 $06
    beat f E2

    env $0 $00
    beat g E1 
    env $0 $06
    beat f E2
    env $0 $00
    beat e E1
    env $0 $06
.ifeq REPTCTR 0
    beat d E2+E1
.else ;REPTCTR == 1
    beat d E2
.endif
.endr
.endm
    m_musGreatAndWonderfulChannel1Measure2a
; Measure 4
.rept 2
    env $0 $00
    m_musGreatAndWonderfulChannel1Fade a Q
.endr
    env $0 $00
    beat as Q 
    env $0 $06
    beat a E1 g E2
; Measure 5
    env $0 $00
    beat a Q 
    octaveu
    m_musGreatAndWonderfulChannel1Fade d Q

    env $0 $00
    octaved
    beat a Q
    m_musGreatAndWonderfulChannel1Fade g Q
    rest E1
; Measure 6a-7
    m_musGreatAndWonderfulChannel1Measure2a
.macro m_musGreatAndWonderfulChannel1Measure8
; Measure 8
    octave 4
    env $0 $00
    m_musGreatAndWonderfulChannel1Fade f Q
    beat g E1 f E2 e E1
    env $0 $00
    m_musGreatAndWonderfulChannel1Fade d E2+E1
    ;env $0 $06
    beat c E2
.endm
    m_musGreatAndWonderfulChannel1Measure8
; Measure 9
    env $0 $00
    beat d Q+E1
    vibrato $01
    vol LO_VOL
    beat d E2

    vol HI_VOL
    vibrato $61
    beat fs Q

    vol LO_VOL
    duty $02
    vibrato $00
    octave 3
    beat fs Q

.macro m_musGreatAndWonderfulChannel1Measure10
; Measure 10
    octave 4
    duty $01
    vibrato $61
    vol HI_VOL
    ;env $0 $00
    m_musGreatAndWonderfulChannel1Fade g HF
    env $0 $00
    m_musGreatAndWonderfulChannel1Fade d Q
    env $0 $00
    m_musGreatAndWonderfulChannel1Fade e Q
; Measure 11a
    rest E1
    env $0 $00
    m_musGreatAndWonderfulChannel1Fade f E2+E1
    beat g E2 f E1 e E2
    env $0 $00
    m_musGreatAndWonderfulChannel1Fade d Q
.endm
    m_musGreatAndWonderfulChannel1Measure10
; Measure 12 
    rest E1
    env $0 $00
    beat g E2+E1 a E2
.rept 2
    m_musGreatAndWonderfulChannel1Fade as Q
    env $0 $00
.endr
; Measure 13
    env $0 $00
    beat a HF+S1
    vibrato $01
    vol LO_VOL
    beat a S2+E2    

    ;vol LO_VOL
    duty $02
    vibrato $00
    octave 3
    beat a Q

; Measure 14-15
    m_musGreatAndWonderfulChannel1Measure10
; Measure 16
    env $0 $00
    beat g Q+E1
    vibrato $01
    vol LO_VOL
    beat g E2

    vol HI_VOL
    vibrato $61
    beat e Q

    m_musGreatAndWonderfulChannel1Fade g Q
; Measure 17
    env $0 $00
    beat a HF+S1
    vibrato $01
    vol LO_VOL
    beat a S2+E2
    vibrato $02
    vol LO_VOL-1
    beat a Q

; Measure 18-19
    vol HI_VOL-1
    duty $02
    vibrato $00
    octave 3
    beat a E1

    m_musGreatAndWonderfulChannel1Measure2a
; Measure 20
    m_musGreatAndWonderfulChannel1Measure8
; Measure 21
    beat d Q
    vol HI_VOL+1
    env $0 $05
    beat e E1 f E2 r E1
    vol HI_VOL+2
    beat g E2 a E1 r E2+E1    
; Measure 22-23
    m_musGreatAndWonderfulChannel1Measure2a
; Measure 24
    octave 4
    ;duty $01
    ;vibrato $61
    ;vol HI_VOL
    env $0 $00
    m_musGreatAndWonderfulChannel1Fade f HF
    env $0 $00
    beat g Q
    m_musGreatAndWonderfulChannel1Fade f Q
; Measure 25
    octave 4
    vol HI_VOL+1
.rept 2
    env $0 $00
    m_musGreatAndWonderfulChannel1Fade a Q
.endr
    rest Q
    vol HI_VOL
    env $0 $00
    beat a Q
; Measure 26
    env $0 $00
    beat d HF+S1
    vibrato $01
    vol LO_VOL
    beat d S2+E2    

    rest Q+E1

    goto @measure1aLoop
    cmdff

musGreatAndWonderfulChannel0:
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

; Measure 2a-4
.redefine HI_VOL $5
.redefine LO_VOL $4
    vol HI_VOL
    octave 3
/*
    duty $02
    env $0 $04
    vibrato $00
*/
.rept 2
    beat a E2+E1 a E2+E1
    beat b E2+E1 b E2+E1
.endr
; Measure 4a
    beat f E2+E1 f E2+E1
    beat e E2+E1 e E2+E1
; Measure 5a
    beat c E2+E1 f E2
    octaveu
    beat cs E1 od as E2 a E1 g E2+E1
; Measure 6a-8
.rept 2
    beat a E2+E1 a E2+E1
    beat b E2+E1 b E2+E1
.endr
; Measure 8a
    octaveu
    beat d E2+E1 d E2+E1
    octaved
    beat a E2+E1 a E2+E1
; Measure 9a
    beat f E2+E1 d E2
    env $0 $00
    beat a Q a Q

.macro m_musGreatAndWonderfulChannel0Measure10
; Measure 10
    octave 3
    ;env $0 $00
    m_musGreatAndWonderfulChannel1Fade as Q
    ;env $0 $06
    beat as E1 ou c E2
    octaved
.rept 2
    env $0 $00
    m_musGreatAndWonderfulChannel1Fade as Q
.endr
; Measure 11
    rest E1
    env $0 $00
    m_musGreatAndWonderfulChannel1Fade a E2+E1
    ;env $0 $06
    beat as E2
    beat a E1 g E2 f E1 a E2+E1
; Measure 12
    env $0 $04
    beat as E2+E1 as E2+E1
    octaveu
    beat d E2+E1 e E2+E1
.endm
    m_musGreatAndWonderfulChannel0Measure10
; Measure 13
    env $0 $00
    m_musGreatAndWonderfulChannel1Fade f E2+E1
    ;env $0 $06
    beat e E2 f E1 e E2
    env $0 $00
    beat d Q
; Measure 14-16
    ;env $0 $00
    m_musGreatAndWonderfulChannel0Measure10
; Measure 17
    ;env $0 $06
    beat d E2+E1 d E2
    vol HI_VOL+1
    env $0 $00
    m_musGreatAndWonderfulChannel1Fade cs Q
    env $0 $00
    m_musGreatAndWonderfulChannel1Fade e Q

; Measure 18-20
    beat d E1
    vol HI_VOL
    env $0 $04
    octave 3
.rept 2
    beat a E2+E1 a E2+E1
    beat b E2+E1 b E2+E1
.endr
; Measure 20a
    octaveu
    beat d E2+E1 d E2+E1
    octaved
    beat a E2+E1 a E2
; Measure 21
    beat a Q
    octaveu
    vol HI_VOL+1
    env $0 $03
    beat cs E1 d E2 r E1
    vol HI_VOL+2
    beat e E2 f E1 r E2+E1
; Measure 22a-24
    env $0 $04
    octave 3
.rept 2
    beat a E2+E1 a E2+E1
    beat b E2+E1 b E2+E1
.endr
; Measure 24a
.rept 3
    beat d E2+E1
.endr
    beat d E2
; Measure 25
    octave 3
    vol HI_VOL+1
.rept 2
    env $0 $00
    m_musGreatAndWonderfulChannel1Fade d Q
.endr
    rest Q
    vol HI_VOL
    env $0 $00
    beat cs Q
; Measure 26
    env $0 $00
    beat a HF+S1
    vibrato $01
    vol LO_VOL
    beat a S2+E2    

    rest Q+E1

    goto @measure1aLoop
    cmdff

.macro musGreatAndWonderfulChannel4Quarter
    duty HI_VOL
    beat \1 E1+S3
    duty LO_VOL
    beat \1 S4
.endm
.macro m_musGreatAndWonderfulChannel4Half
    duty HI_VOL
    beat \1 Q+E1
    duty LO_VOL
    beat \1 E2
.endm

musGreatAndWonderfulChannel4:
.redefine HI_VOL $0e
.redefine LO_VOL $0f

@measure1Loop:
; Measure 1
.rept 2
    octave 3
    musGreatAndWonderfulChannel4Quarter d
    octaved
    musGreatAndWonderfulChannel4Quarter a
.endr  
; Measure 2-3
    octave 3
.rept 2
    musGreatAndWonderfulChannel4Quarter d
    octaved
    musGreatAndWonderfulChannel4Quarter a
    musGreatAndWonderfulChannel4Quarter g   
    octaveu
    musGreatAndWonderfulChannel4Quarter e
.endr
; Measure 4
    musGreatAndWonderfulChannel4Quarter d
    octaved
    musGreatAndWonderfulChannel4Quarter a
    musGreatAndWonderfulChannel4Quarter g
    octaveu
    musGreatAndWonderfulChannel4Quarter c
; Measure 5
    musGreatAndWonderfulChannel4Quarter f
    octaved
    musGreatAndWonderfulChannel4Quarter as
    musGreatAndWonderfulChannel4Quarter a
    octaved
    musGreatAndWonderfulChannel4Quarter a
; Measure 6-7
    octave 3
.rept 2
    musGreatAndWonderfulChannel4Quarter d
    octaved
    musGreatAndWonderfulChannel4Quarter a
    musGreatAndWonderfulChannel4Quarter g   
    octaveu
    musGreatAndWonderfulChannel4Quarter e
.endr
; Measure 8
    octaved
    musGreatAndWonderfulChannel4Quarter as
    musGreatAndWonderfulChannel4Quarter f
    musGreatAndWonderfulChannel4Quarter e
    musGreatAndWonderfulChannel4Quarter a
; Measure 9
    octaveu
    musGreatAndWonderfulChannel4Quarter d
    octaved
    musGreatAndWonderfulChannel4Quarter a

    octave 3
    duty HI_VOL
    beat d E1 od a E2

    octaveu
    musGreatAndWonderfulChannel4Quarter d

; Measure 10
    octave 3
    m_musGreatAndWonderfulChannel4Half d
    musGreatAndWonderfulChannel4Quarter d
    octaved
    musGreatAndWonderfulChannel4Quarter g
; Measure 11
.rept 2
    octave 3
    musGreatAndWonderfulChannel4Quarter d
    octaved
    musGreatAndWonderfulChannel4Quarter a
.endr
; Measure 12
.rept 2
    octave 2
    musGreatAndWonderfulChannel4Quarter g
    octaved
    musGreatAndWonderfulChannel4Quarter g
.endr
; Measure 13
.rept 2
    octave 3
    musGreatAndWonderfulChannel4Quarter d
    octaved
    musGreatAndWonderfulChannel4Quarter a
.endr
; Measure 14
    octave 3
    m_musGreatAndWonderfulChannel4Half d
    musGreatAndWonderfulChannel4Quarter d
    octaved
    musGreatAndWonderfulChannel4Quarter g   
; Measure 15
.rept 2
    octave 3
    musGreatAndWonderfulChannel4Quarter d
    octaved
    musGreatAndWonderfulChannel4Quarter a
.endr
; Measure 16
.rept 2
    octave 2
    musGreatAndWonderfulChannel4Quarter g
    octaved
    musGreatAndWonderfulChannel4Quarter g
.endr
; Measure 17
    octave 2
    musGreatAndWonderfulChannel4Quarter a
    octaved
    musGreatAndWonderfulChannel4Quarter a
    octaveu
    m_musGreatAndWonderfulChannel4Half a

; Measure 18-19
    octave 3
.rept 2
    musGreatAndWonderfulChannel4Quarter d
    octaved
    musGreatAndWonderfulChannel4Quarter a
    musGreatAndWonderfulChannel4Quarter g   
    octaveu
    musGreatAndWonderfulChannel4Quarter e
.endr
; Measure 20
    octaved
    musGreatAndWonderfulChannel4Quarter as
    musGreatAndWonderfulChannel4Quarter f
    musGreatAndWonderfulChannel4Quarter e
    musGreatAndWonderfulChannel4Quarter a
; Measure 21
    octave 3
    duty HI_VOL
    beat d E1 r E2
    octaved
    beat a E1 ou d E2 r E1 od a E2
    octaveu
    musGreatAndWonderfulChannel4Quarter d
; Measure 22-23
    octave 3
.rept 2
    musGreatAndWonderfulChannel4Quarter d
    octaved
    musGreatAndWonderfulChannel4Quarter a
    musGreatAndWonderfulChannel4Quarter g   
    octaveu
    musGreatAndWonderfulChannel4Quarter e
.endr
; Measure 24
    octave 2
.rept 2
    musGreatAndWonderfulChannel4Quarter as
    musGreatAndWonderfulChannel4Quarter f
.endr
; Measure 25
.rept 2
    m_musGreatAndWonderfulChannel4Half a
.endr
; Measure 26
    octave 3
    duty HI_VOL
.rept 2
    ;beat d E1 f E2 od a E1 ou f E2
    beat d S1+T3 r T4 f S3 r S4
    octaved
    beat a S1+T3 r T4 ou f S3 r S4
.endr

    goto @measure1Loop
    cmdff

.define musGreatAndWonderfulChannel6 MUSIC_CHANNEL_FALLBACK EXPORT