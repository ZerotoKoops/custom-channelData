musWeSingAlleluiaStart:
    tempo 80
.redefine TEMPO_A 80
.redefine TEMPO_B 76
.redefine TEMPO_C 72
.redefine TEMPO_D 68
musWeSingAlleluiaChannel1:
.redefine HI_VOL $6
.redefine LO_VOL $4

musWeSingAlleluiaChannel1Measure1Loop:
; Measure 1
    tempo TEMPO_A
    octave 4
    duty $02
    vibrato $e2
    env $1 $06
    vol HI_VOL
    beat ds E2
; Measure 2
    env $1 $00
    beat ds Q+E1
    env $1 $06
    beat ds E2
    beat ds E1 ds E2 ds E1 cs E2
; Measure 3
    env $1 $00
    beat cs E1+S3
    env $0 $00
    beat c S4
    env $1 $00
    beat c HF r E1

    env $1 $06
    beat ds E2
; Measure 4
    env $1 $00
    beat f Q+E1
    env $1 $06
    beat f E2 
    beat f E1 fs E2 f E1 ds E2
; Measure 5
    env $1 $00
    beat cs HF+Q r E1

    env $1 $06
    beat f E2
; Measure 6
    env $1 $00
    beat g Q+E1
    env $1 $06
    beat g E2
    beat g E1 g E2 f E1 g E2
; Measure 7
    env $1 $07
    beat gs Q
    env $1 $00
    beat gs HF r E1

    env $1 $06
    beat gs E2
; Measure 8
    env $1 $00
    beat as Q+E1
    env $1 $06
    beat as E2
    tempo TEMPO_B
    beat as E1 as E2
    tempo TEMPO_C
    beat as E1 as E2
; Measure 9
    tempo TEMPO_D
    env $1 $00
    beat as HF

.rept 2 INDEX REPTCTR
    octave 4
; Measure 9c,13c
    tempo TEMPO_C
    env $1 $07
    beat gs Q
    tempo TEMPO_B
    beat as Q
; Measure 10,14
    tempo TEMPO_A
    octaveu
    env $1 $00
    beat c Q+E1
    env $1 $06
    beat c E2 c E1 c E2 r Q
; Measure 11,15
    env $1 $00
    beat c Q+E1
    env $1 $06
    beat c E2
    env $1 $07
    beat cs Q c Q
; Measure 12,16
    env $1 $00
    beat c Q+E1
    octaved
    env $1 $06
    beat as E2
    env $1 $00
    beat gs Q
    env $1 $07
.ifeq REPTCTR 0
; Measure 12d
    beat as Q
; Measure 13
    octaveu
    env $1 $00
    beat c Q+E1 r E2
.else
; Measure 16d
    beat g Q
; Measure 17
    tempo TEMPO_B
    env $1 $00
    beat gs Q

    tempo TEMPO_C
    env $0 $00
    vibrato $02
    beat gs E1+S3
    vol LO_VOL
    beat gs S4

    tempo TEMPO_A
    beat gs Q r E1
.endif
.endr

    goto musWeSingAlleluiaChannel1Measure1Loop
    cmdff


musWeSingAlleluiaChannel0:
.redefine HI_VOL $4
.redefine LO_VOL $3

; Measure 1
    tempo TEMPO_A
    vol $0
    beat gs3 E2

musWeSingAlleluiaChannel0Measure2Loop:
; Measure 2
    vol HI_VOL
    duty $03
    env $1 $00
    vibrato $e2
    octave 4
    beat c HF
    octaved
    beat as Q gs Q
; Measure 3
    beat gs Q
    beat gs HF r Q
; Measure 4
    octaveu
    beat c HF
    octaved
    beat a Q ou c Q
; Measure 5 
    rest Q+E1
    beat c E2
    octaved
    beat as E1 ou c E2
    env $1 $07
    beat cs Q ;r E2
; Measure 6
    env $1 $00
    beat c HF c HF
; Measure 7
    beat g Q f Q r E1
    beat c E2
    beat f Q
; Measure 8
    beat gs HF
    tempo TEMPO_B
    beat e Q
    tempo TEMPO_C
    beat cs Q
; Measure 9
    tempo TEMPO_D
    beat gs Q
    beat g E1 ds E2

.rept 2 INDEX REPTCTR
; Measure 9c,13c
    tempo TEMPO_C
    env $1 $00
    beat cs E1 od cs E2
    tempo TEMPO_B
    octaveu
    beat ds E1 od ds E2

; Measure 10,14
    tempo TEMPO_A
    ;env $1 $00
    octave 4
    beat gs HF
    beat gs Q

    env $0 $00
    vol HI_VOL+1
.ifeq REPTCTR 0
; Measure 10d
    beat ds S1 f S2 gs S3 as S4
.else
; Measure 14d
    beat ds S1 f S2 g S3 gs S4
.endif
; Measure 11,15
    vol HI_VOL
    env $1 $00
    ;beat as HF a Q Q
    beat as Q+E1
    env $0 $00
    beat ds E2
    env $1 $00
    beat ds Q ds Q
; Measure 12,16
    ;beat gs Q+E1
    beat d Q+E1
    beat f E2

.ifeq REPTCTR 0
; Measure 12c
    beat c Q g Q
; Measure 13   
    beat gs Q+E1 r E2
.else
; Measure 16c
    beat cs Q ds Q
; Measure 17
    tempo TEMPO_B
    beat c Q

    tempo TEMPO_C
    env $0 $00
    vibrato $02
    beat c E1+S3
    vol LO_VOL
    beat c S4

    tempo TEMPO_A
    beat c Q r Q
.endif
.endr

    goto musWeSingAlleluiaChannel0Measure2Loop
    cmdff

musWeSingAlleluiaChannel4:
.redefine HI_VOL $17;$20
.redefine LO_VOL $08

; Measure 1
    tempo TEMPO_A
    rest E2

musWeSingAlleluiaChannel4Measure2Loop:
; Mesure 2
    duty HI_VOL
    octave 2
    beat gs E1 ou ds E2 gs Q
    beat g Q f Q-T8 r T8
; Measure 3
    beat f Q ds Q
    octaved
    beat gs E1 ou ds E2
    beat gs Q
; Measure 4
    octaved
    beat f E1 ou ds E2 f Q
    octaved
    beat f Q a Q
; Measure 5
    beat as E1 ou f E2
    beat as HF r Q

; Measure 6
    octaved
    beat c E1 g E2 ou c Q
    octaved
    beat e Q ou c Q
; Measure 7
    octaved
    beat f E1 ou c E2 f E1 g E2
    beat gs HF

; Measure 8
    octaved
    beat e E1 ou cs E2 e Q
    tempo TEMPO_B
    beat gs Q 
    tempo TEMPO_C
    octaved
    beat e Q
; Measure 9
    tempo TEMPO_D
    beat ds E1 as E2 ou g Q

.rept 2 INDEX REPTCTR   
; Measure 9c,13c
    tempo TEMPO_C
    octaved
    beat f Q 
    tempo TEMPO_B
    beat g Q
; Measure 10,14
    tempo TEMPO_A
    beat gs E1 ou ds E2
    beat gs HF

    octaved
    beat gs Q
; Measure 11,15
    beat fs E1 ou ds E2 gs Q
    octaved
    beat f E1 ou ds E2 a Q
; Measure 12,16
    octaved
    beat as E1 ou f E2 gs Q
    octaved
    beat ds E1 ou ds S3+T7 r T8
.ifeq REPTCTR 0
; Measure 12d
    beat ds E1 od ds E2
; Measure 13
    beat gs E1 ou ds E2 gs Q
.else
; Measure 16d
    beat ds Q
; Measure 17
    tempo TEMPO_B
    octaved
    beat gs E1 ou ds E2

    tempo TEMPO_C
    beat gs E1 as E2

    tempo TEMPO_A
    octaveu
    beat c Q+E1 r E2
.endif
.endr

    goto musWeSingAlleluiaChannel4Measure2Loop
    cmdff

.define musWeSingAlleluiaChannel6 MUSIC_CHANNEL_FALLBACK EXPORT