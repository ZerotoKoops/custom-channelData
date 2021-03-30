oathToOrderStart:
; sound2c
; BPM = 75 B = 48
oathToOrderChannel1:
.redefine BEAT 48
; Measure 1
    octave 4
    duty $02
    vol $4
    beat a 2 f 1 d 1
; Measure 2
    beat f 1 a 1 ou d 2
; Measure 3
    octave 2
    vol $1
    beat d 2

    env $7 $00
	vol $8
	beat d 2

oathToOrderChannel1Measure4:
.redefine BEAT 96
; Measure 4-7
    env $0 $00
	vol $6
    octave 3
.rept 2
    beat d 2 f 2
.endr
; Measure 8
    beat d 2
; Measure 9
    beat f 1 e 1
; Measure 10-13
    beat f 2 a 2 g 2 d 2
; Measure 14
.redefine BEAT 6
    beat f 31
	vol $4
	beat f 1
; Measure 15
	vol $6
.redefine BEAT 96
    beat f 1 e 1

    goto oathToOrderChannel1Measure4
    cmdff


oathToOrderChannel0:
.redefine BEAT 1
; Measure 1-3 (+8th)
    vol $0
    beat r 255 r 255 r 90

oathToOrderChannel0Measure4:
    vol $6
	duty $02
	env $0 $06
    resetCoda
.redefine BEAT 24
oathToOrderChannel0Chord_D_Minor:
    incCoda
; Coda 1,2,4,5,6
; Measure 4,6,10,11,14
    octave 3
    beat d 1 a 1 ou d 1
    beat f 1 a 1 ou d 1 f 1 r 1

    gotoCond 4 oathToOrderChannel0Chord_D_Minor
    gotoCond 5 oathToOrderChannel0Chord_G
    gotoCond 6 oathToOrderChannel0Chord_A7

oathToOrderChannel0Chord_Eb7:
; Coda 1,2
; Measure 5,7
    octave 3
    beat ds 1

oathToOrderChannel0Chord_G_Minor: 
; Coda 1,2 
    beat as 1 ou d 1
    beat g 1 as 1 ou d 1 g 1 r 1

    gotoCond 1 oathToOrderChannel0Chord_D_Minor
    gotoCond 3 oathToOrderChannel0Chord_A7

; Coda 2
; Measure 8
	incCoda
    octave 3
    beat e 1
    goto oathToOrderChannel0Chord_G_Minor

oathToOrderChannel0Chord_A7:
; Coda 3
; Measure 9,15
    octave 3
    beat a 1 ou cs 1 e 1
    beat a 1 ou cs 1 e 1 g 1 r 1

    gotoCond 3 oathToOrderChannel0Chord_D_Minor
    goto oathToOrderChannel0Measure4

oathToOrderChannel0Chord_G:
; Coda 5
; Measure 12
    octave 3
    beat d 1 b 1 ou d 1
    beat g 1 b 1 ou d 1 g 1 r 1

oathToOrderChannel0Chord_G7_Minor:
; Measure 13
    octave 3
    beat d 1 g 1 as 1
    beat ou g 1 as 1 ou d 1 f 1 r 1

    goto oathToOrderChannel0Chord_D_Minor
    cmdff


oathToOrderChannel4:
.redefine BEAT 1
; Measure 1-3
    beat r 255 r 255 r 66

oathToOrderChannel4Measure4:
.redefine BEAT 48
; Measure 4-7
    octave 2
    duty $0e
.rept 2
    beat d 4 ds 4
.endr
; Measure 8
    beat e 4
; Measure 9
    beat a 3 ou cs 1
; Measure 10-13
.redefine BEAT 192
    beat d 1 c 1 od b 1 as 1
; Measure 14
.redefine BEAT 6
    beat a 31
	duty $0f
	beat a 1
; Measure 15
.redefine BEAT 192
	duty $0e
    beat a 1

    goto oathToOrderChannel4Measure4

oathToOrderChannel6:
    cmdff