lostWoodsStart:
; BPM = 138.46, B = 26, M = 104
lostWoodsChannel1:
.redefine BEAT 1
; Measure 1
; rest
    vol $0
    beat f3 104

lostWoodsChannel1Measure2Reset:
    resetCoda
lostWoodsChannel1Measure2:
    incCoda
; Measure 2
    octave 5
    duty $02
    env $0 $05
    vol $6
.rept 2
    beat f 13 a 13 b 26
.endr
; Measure 3
    beat f 13 a 13 b 13 ou e 13
    beat d 26 od b 13 ou c 13

    gotoCond 2 lostWoodsChannel1Measure8
; Measure 4
    octaved
    beat b 13 g 13

    env $0 $00
    vibrato $62
    beat e 52 r 13

    env $0 $05
    vibrato $00
    beat d 13
; Measure 5
    beat e 13 g 13

    env $0 $00
    vibrato $82
    beat e 65 r 13

    goto lostWoodsChannel1Measure2

lostWoodsChannel1Measure8:
; Measure 8
    octaveu
    beat e 13 od b 13

    env $0 $00
    vibrato $62
    beat g 52 r 13  

    env $0 $02
    vibrato $00 
    beat b 13
; Measure 9
    env $0 $05
    beat g 13 d 13

    env $0 $00
    vibrato $82
    beat e 65 r 13

lostWoodsChannel1Measure10:
; Coda 2
    incCoda
; Measure 10,14
    octaved
    vibrato $00
    env $1 $04
	vol $8
    beat d 13 e 13 f 26
    beat g 13 a 13 b 26
; Measure 11,15
    octaveu
    beat c 13 od b 13
    
    env $1 $00
    vibrato $62
    beat e 65 r 13

    gotoCond 4 lostWoodsChannel1Measure16
; Measure 12
    octaveu
    vibrato $00
    env $0 $05
    vol $5
    beat f 13 g 7 r 6
    vol $6
    beat a 26
    vol $7
    beat b 13 ou c 7 r 6
    vol $8
    beat d 26
; Measure 13
    beat e 13 f 7 r 6

    env $0 $00
    vibrato $81
    beat g 65 r 13

    vol $6
    goto lostWoodsChannel1Measure10

lostWoodsChannel1Measure16:
; Measure 16
	octaved
    vibrato $00
    env $0 $05
    vol $5
    beat f 13 e 7 r 6
    beat a 13 g 7 r 6
    vol $6
    beat b 13 a 7 r 6
    beat ou c 13 od b 7 r 6
; Measure 17
    octaveu
	vol $7
    beat d 13 od b 7 r 6
    beat ou e 13 d 7 r 6
	vol $8
    beat f 13 e 7 r 6
    beat e 7 f 6
    beat r 6 d 7
; Measure 18-19
	env $0 $00
	vibrato $e2
    beat e 65 
	vol $6
	beat e 26
	vol $3
	beat e 13 r 78

	octaved
	vol $8
	env $0 $05
	vibrato $00
	beat b 10 r 16

    goto lostWoodsChannel1Measure2Reset
    cmdff



lostWoodsChannel0:
.redefine BEAT 1
; Measure 1
; rest
    vol $0
    beat f3 117     ;104+13

lostWoodsChannel0Measure2Reset:
    resetCoda
lostWoodsChannel0Measure2:
    incCoda
; Measure 2-3,6-7
.redefine HI_VOL $5
.redefine LO_VOL $2
.redefine LO_VOL_RATIO 6/13
    octave 3
    duty $03
    env $0 $00
    volbeat a 13 a 13 a 13 r 13

    gotoCond 4 lostWoodsChannel0Measure4
    gotoCond 4+8 lostWoodsChannel0Measure4
    goto lostWoodsChannel0Measure2

lostWoodsChannel0Measure4:
    incCoda
; Measure 4-5,8-9
    volbeat g 13 g 13 g 13 r 13

    gotoCond 4+4 lostWoodsChannel0Measure2
    gotoCond 4+12 lostWoodsChannel0Measure10
    goto lostWoodsChannel0Measure4

lostWoodsChannel0Measure10:
; Coda 16
    incCoda
; Measure 10
.rept 2
    vol $5
    beat f 7
    vol $2
    beat a 6 r 13
.endr
    octaved
.rept 2
    vol $5
    beat ou d 7
    vol $2
    beat od g 6 r 13
.endr
; Measure 11
    octaveu
.rept 2
    vol $5
    beat g 7
    vol $2
    beat c 6 r 13
.endr
    octaved
    vol $5
    beat ou e 7
    vol $2
    beat od a 6 r 13
    vol $5
    beat ou e 7
    vol $2
    beat od a 6

    gotoCond 2+16 lostWoodsChannel0Measure16
; Measure 12
    octave 4
    vibrato $00
    duty $02
    env $1 $04
    vol $5
    beat d 13 e 7 r 6
    vol $6
    beat f 26
    vol $7
    beat g 13 a 7 r 6
    vol $8
    beat b 26

; Measure 13
    octaveu
    beat c 13 d 7 r 6

    env $1 $00
    vibrato $62
    beat e 65

    octave 3
    vibrato $00
    duty $03
    env $0 $00
    vol $5
    beat e 7
    vol $2
    beat od a 6 r 13

    goto lostWoodsChannel0Measure10

lostWoodsChannel0Measure16:
; Measure 16
	octave 4
    duty $02
    env $1 $04
    vol $5
    beat d 13 c 7 r 6
    beat f 13 e 7 r 6
    vol $6
    beat g 13 e 7 r 6
    beat a 13 g 7 r 6
; Measure 17
	vol $7
    beat b 13 a 7 r 6
    beat ou c 13 od b 7 r 6
	vol $8
    beat ou d 13 c 7 r 6
    beat od b 7 ou c 12 od b 7
; Measure 18
    env $1 $00
    vibrato $e2
    beat b 65 
	vol $6
	beat b 26
	vol $3
	beat b 13 r 13
; Measure 19a
	octave 3
    env $1 $04
	vibrato $00
	volbeat gs 13 gs 13 gs 13
	volbeat gs 13 r 13
    vol $8
    beat ou e 10 r 29     ;3+13+13

    goto lostWoodsChannel0Measure2Reset
    cmdff



lostWoodsChannel4:
.redefine BEAT 1
    beat r 104

lostWoodsChannel4Measure2Reset:
    resetCoda
lostWoodsChannel4Measure2:
.redefine CHANNEL 4
.redefine HI_VOL $0e
.redefine LO_VOL $0f
.redefine LO_VOL_RATIO 6/13
; Coda 0,
    incCoda
; Measure 2-3,6-7
    octave 3

    duty $0e
    beat f 13
.redefine NO_FIRST_VOL 1
	volbeat ou c 13
.redefine NO_FIRST_VOL 0
	volbeat c 13 c 13

    gotoCond 4 lostWoodsChannel4Measure4
    gotoCond 4+6 lostWoodsChannel4Measure4
    goto lostWoodsChannel4Measure2

lostWoodsChannel4Measure4:
; Coda 4
    incCoda
; Measure 4-5,8-9
    octaved

	duty $0e
    beat e 13
.redefine NO_FIRST_VOL 1
	volbeat ou c 13
.redefine NO_FIRST_VOL 0
	volbeat c 13 c 13

    octaved
	duty $0e
    beat e 13
.redefine NO_FIRST_VOL 1
	volbeat ou c 13
	duty $0e
	volbeat c 13

    octaved
	duty $0e
    beat c 13

    gotoCond 2+4 lostWoodsChannel4Measure2
    gotoCond 2+10 lostWoodsChannel4Measure10
    goto lostWoodsChannel4Measure4

lostWoodsChannel4Measure10:
; Coda 12
    incCoda
; Measure 10
.rept 2
    volbeat d 13
.redefine NO_FIRST_VOL 0
	volbeat a 13
.endr
.rept 2
    volbeat od g 13 ou g 13
.endr
; Measure 11
    octaveu
.rept 2
    volbeat od c 13 ou c 13
.endr
	octaved
.rept 2
    volbeat od a 13 ou a 13
.endr

    gotoCond 3+12 lostWoodsChannel4Measure16
    goto lostWoodsChannel4Measure10

lostWoodsChannel4Measure16:
.redefine LO_VOL_RATIO 3/13
; Measure 16
.rept 2
	duty $0e
    beat d 13
.redefine NO_FIRST_VOL 1
	volbeat a 13
	duty $0e
	volbeat a 13 r 13
.endr
; Measure 17
.rept 2
	duty $0e
    beat c 13
.redefine NO_FIRST_VOL 1
	volbeat b 13
	duty $0e
	volbeat b 13 r 13
.endr
; Measure 18
.rept 2
	duty $0e
    beat e 13
.redefine NO_FIRST_VOL 1
	volbeat b 13 r 13
	duty $0e
	volbeat b 13
.endr
; Measure 19
	duty $0e
    beat e 13
	volbeat b 13
.redefine NO_FIRST_VOL 0	
	volbeat b 13 b 13
	volbeat b 13 r 13
	duty $0e
	beat b 10 r 16

    goto lostWoodsChannel4Measure2Reset
    cmdff



lostWoodsChannel6:
;$2a = tambourine
;$24 = snare
.redefine BEAT 1
; Measure 1
	vol $5
.rept 2
    beat $2a 13 $2a 7 $2a 6
.endr
    beat $2a 13 $2a 13
    beat r 13 $24 13

lostWoodsChannel6Measure2Reset:
    resetCoda
lostWoodsChannel6Measure2:
    incCoda
; Measure 2-9
	vol $4
.rept 2
    beat $2a 13 $2a 7 $2a 6
.endr
    beat $2a 13 $2a 13
    beat $24 13 $2a 13

    gotoCond 8 lostWoodsChannel6Measure10
    goto lostWoodsChannel6Measure2  

lostWoodsChannel6Measure10:
    incCoda
; Measure 10-13,18
    beat $2a 13 $2a 7 $2a 6

    gotoCond 8+16 lostWoodsChannel6Measure14
    gotoCond 4+32 lostWoodsChannel6Measure19
    goto lostWoodsChannel6Measure10    

lostWoodsChannel6Measure14:
    incCoda
; Measure 14-15
    beat $2a 13 $2a 7 $2a 6
    beat $24 13 $2a 7 $2a 6

    gotoCond 4+24 lostWoodsChannel6Measure16
    goto lostWoodsChannel6Measure14    

lostWoodsChannel6Measure16:
    incCoda
; Measure 16-15
    beat $2a 13 $2a 7 $2a 6
    beat $24 26

    gotoCond 4+28 lostWoodsChannel6Measure10
    goto lostWoodsChannel6Measure16  

lostWoodsChannel6Measure19:
; Measure 19
    beat r 13 $2a 13 $2a 13 $2a 13
    beat $2a 26 $24 10 r 16

    goto lostWoodsChannel6Measure2Reset
    cmdff