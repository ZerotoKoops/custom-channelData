essenceStart:
; sound06
; BPM = 225 B = 16
essenceChannel1:
    .redefine BEAT 1
essenceChannel1Measure1:
    vibrato $d1
;    env $0 $00
    duty $02
    vol $5
    octave 7
    beat d 2
    vol $4
    beat od b 2 g 2 f 2 d 2
    beat od b 2 a 2 f 2 d 2
    vol $3
    beat od b 2 g 2 f 1 r 1
    duty $01
    octave 4
.rept 2
    vol $6
    beat b 4 r 1
    vol $3
    beat b 3
.endr
    octaveu
    vol $6
    beat c 4 r 1
    vol $3
    beat c 3
    vol $6
    beat d 16
; Measure 2
    vol $3
    beat od b 4 ou d 4
    vol $6
    beat g 16 gs 4 a 4 as 12
    vol $3
    beat fs 4

    vol $6
    beat gs 4
    vol $3
    beat as 4

    vol $6
    beat fs 8
; Measure 3
    beat cs 4
    vol $3
    beat fs 4

    vol $6
    beat f 4
    vol $3
    beat cs 4

    vol $6
    beat ds 20 f 2 fs 2 gs 12
    vol $3
    beat ds 4

    vol $6
    beat gs 4 as 4
; Measure 4
    beat b 8 a 4
    vol $3
    beat b 4

    vol $6
    beat g 4
    vol $3
    beat a 4

    vol $6
    beat ou d 8 cs 4
    vol $3
    beat od g 4

    vol $6
    beat b 4
    vol $3
    beat ou d 4

    vol $6
    beat cs 8 od b 4
    vol $3
    beat ou cs 4

; Measure 5
    octave 5
    vol $6
    beat a 4
    vol $3
    beat b 4

    vol $6
    beat ou e 8 cs 4 od a 4
    beat gs 4 e 4 od b 4 ou cs 4
    beat ds 4 fs 4 b 4 ou cs 4
    beat ds 4 e 4
; Measure 6
    beat ds 4 e 4 ds 4 e 4 fs 39 r 1
    vibrato $01
;    env $0 $00
    vol $3
    beat fs 4 r 1
    vol $2
    beat fs 4 r 1
    vol $1
    beat fs 4

    cmdff

essenceChannel0:
    .redefine BEAT 1
essenceChannel0Measure1:
; Measure 1
    octave 3
    duty $02    ; added
    vol $1       ;$0
    beat gs 3
;   vibrato $d1
;   env $0 $00
;   duty $02
    octave 7
    vol $3
    beat d 2
    vol $2
    beat od b 2 g 2 f 2 d 2
    beat od b 2 a 2 f 2 d 2
    beat od b 2 g 1

    vol $3
    beat ou d 2 od b 2 a 2 f 2
    beat d 2
    vol $2
    beat od b 1 r 1

    duty $01
    vol $4
    beat d 12
    vol $5
    beat f 12
; Measure 2
    beat a 12
    vol $6
    beat b 12 d 12

    vol $5
    beat fs 24
    vol $6
    beat cs 24
; Measure 3
    vol $5
    beat c 32
    vol $3
    beat c 8 ds 2 g 2 ou c 2
    vol $4
    beat ds 2
; Measure 4
    vol $6
    beat ou d 4 g 4
    vol $5
    beat e 4 d 4

    vol $4
    beat od b 4
    vol $3
    beat g 4 ou b 4 g 4

    beat e 4 d 4
    vol $2
    beat od b 4 g 4

    octave 6
    vol $6
    beat e 4 od a 4 
    vol $5
    beat e 4 cs 4
; Measure 5
    vol $4
    beat od a 4
    vol $3
    beat e 4 ou ou cs 4 od a 4
    beat e 4 cs 4
    vol $2
    beat od a 4 e 4
    vol $6
    beat od fs 16
    vol $3
    beat fs 8
    vol $6
    beat b 4 ou cs4
; Measure 6
    beat ds 4 fs 4 b 4 ou cs 4
    beat ds 40 r 1
    vol $3
    beat ds 3 r 1
    vol $2
    beat ds 3 r 1
    vol $1
    beat ds 3

    cmdff

essenceChannel4:
    .redefine BEAT 1
essenceChannel4Measure1:
; Measure 1
    octave 2
    duty $0e
    beat g 96
; Measure 2c
    beat ds 32
; Measure 3
    beat f 8 fs 8 gs 48
; Measure 4
    beat e 32 fs 8 g 8 a 48
; Measure 5b
    beat b 16
    duty $0f
    beat b 8
    duty $0e
    beat fs 16
; Measure 6a
    duty $0f
    beat fs 8
    duty $0e
    beat b 38
    duty $0f
    beat b 7

essenceChannel6:
    cmdff
