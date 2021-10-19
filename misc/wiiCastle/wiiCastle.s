wiiCastleStart:
; BPM = 128.57 B = 28 M = 112
wiiCastleChannel1:
.redefine BEAT 7        ;16th
.redefine CHANNEL 0
.redefine NO_FIRST_VOL 0
; Measure 1
; 2/4
    octave 2
	duty $01
    vol $1
    beat e 3

    env $7 $00
	vol $8
	beat e 5
; Measure 2
; 4/4
	octave 3
	env $0 $05
	beat a 1 r 5 a 1
	beat r 7 e 1 r 1
; Measure 3
	beat a 1
wiiCastleChannel1Measure3Reset:
; Measure 3b
	beat r 5
.redefine BEAT 14		; 8th
	octave 3
    env $7 $00
	duty $01
	vol $8
	beat d 1
	beat cs 1 e 1 g 1 as 1

	resetCoda
.redefine HI_VOL $7
.redefine LO_VOL $4
.redefine LO_VOL_RATIO 1/4

wiiCastleChannel1Measure4:
; Coda 0,1
	incCoda
; Measure 4-5
	octave 4
	duty $02
	env $0 $00
	vibrato $01
	volbeat a 2

	vol $7
	vibrato $82
	beat gs 3
	vol $5
	vibrato $02
	beat gs 2
	vol $2
	beat gs 1

	gotoCond 1 wiiCastleChannel1Measure4
; Measure 6
	vibrato $01
	volbeat a 2 gs 2 a 2 f 2
; Measure 7
	vol $7
	vibrato $e2
	beat e 5
	vol $5
	vibrato $02
	beat e 2
	vol $2
	beat e 1	

wiiCastleChannel1Measure8:
; Coda 2,3
	incCoda
; Measure 8-9
	octave 4
	duty $02
	vibrato $01
	volbeat g 2

	vol $7
	vibrato $82
	beat fs 3
	vol $5
	vibrato $02
	beat fs 2
	vol $2
	beat fs 1

	gotoCond 3 wiiCastleChannel1Measure8
; Measure 10
	vibrato $01
	volbeat g 2 fs 2 g 2 ds 2
; Measure 11
	vol $7
	vibrato $e2
	beat d 5
	vol $5
	vibrato $02
	beat d 2
	vol $2
.redefine BEAT 1
	beat d 11		
;starting next measure early to
;make env $1 $00 start on the beat

; Measure 12
.redefine BEAT 28	;4th
	octave 3
	vol $6
	vibrato $c2
	env $1 $00
	beat g 2 a 1 as 1
; Measure 13
	beat ou ds 2 d 1 cs 1
; Measure 14
	beat d 1 od as 1 g 2
.redefine BEAT 1
	beat r 3
; Measure 15
	env $0 $00
	vol $7
	beat e 25

.redefine BEAT 28
	vol $6
	env $1 $00
	beat ou c 1 od as 1 a 1
; Measure 16
	beat as 2 g 1 d 1
; Measure 17
	beat e 1 g 3
.redefine BEAT 1
	beat r 3
; Measure 18
	env $0 $00
	vol $7
	beat e 25
	
.redefine BEAT 28
	vol $6
	env $1 $00
	beat cs 1 e 1 g 1
; Measure 19
	beat as 2 a 2
.redefine BEAT 1
	beat r 3

; Measure 20
.redefine BEAT 28
	octave 4
	env $0 $00
	vibrato $82
	vol $8
	beat g 2 a 1 as 1
; Measure 21
	beat ou ds 2 d 1 cs 1
; Measure 22
	beat d 1 od as 1 g 3
; Measure 23
	beat ou c 1 od as 1 a 1
; Measure 24
	beat as 2 g 1 d 1
; Measure 25
	beat e 1 g 3
; Measure 26
.redefine BEAT 7	;16th
	beat d 8
	beat r 2 d 2 a 2 g 1 r 1
; Measure 27
	vibrato $62
	beat g 8 fs 8

wiiCastleChannel1Measure28:
; Coda 4
	incCoda
; Measure 28,32
.redefine BEAT 14	;8th
	octave 4

	vol $8
	vibrato $82
	beat ds 3
	vol $5
	vibrato $02
	beat ds 2
	vol $3
	beat ds 1

	vol $8
	vibrato $00
	beat f 1 g 1
; Measure 29
	vibrato $82
	beat d 3
	vol $5
	vibrato $02
	beat d 1
	gotoCond 6 wiiCastleChannel1Measure33c
	beat d 1
	vol $3
	beat d 1

	vol $8
	vibrato $00
	beat od as 1 ou d 1
; Measure 30
	vibrato $82
	beat c 3
	vol $5
	vibrato $02
	beat c 2
	vol $3
	beat c 1 r 2	
; Measure 31
	vol $8
	vibrato $00
	beat g 4 a 2 as 2

	goto wiiCastleChannel1Measure28

wiiCastleChannel1Measure33c:
; Measure 33c
	octave 3
	vibrato $82
	vol $8
	beat as 2 g 2
; Measure 34
	beat a 3
	vol $5
	vibrato $02
	beat a 1
.redefine BEAT 7	;16th	
	vol $8
	vibrato $82
	beat ou a 4 g 3 r 1
; Measure 35
.redefine BEAT 14	;8th
	beat g 3
	vol $5
	vibrato $02
	beat g 1

	vol $8
	vibrato $82
	beat fs 3
	vol $5
	vibrato $02
	beat fs 1

; Measure 36
.redefine HI_VOL $6
.redefine LO_VOL $3
	octave 6
	env $0 $05
	vibrato $00
	volbeat f 2 e 2 od a 2 ou f 2
; Measure 37
	volbeat e 2
.redefine BEAT 7	;16th
	vol $6
	beat d 3
	vol $3
	beat d 2
	vol $1
	beat d 1 r 6
; Measure 38
	vol $6
	beat ds 3
	vol $3
	beat ds 2
	vol $1
	beat ds 1 r 11

	goto wiiCastleChannel1Measure3Reset
    cmdff




wiiCastleChannel0:
.redefine BEAT 1
.redefine CHANNEL 0
; Measure 1-3
; 2/4-4/4
	vol $0
	beat g3 255 g3 25

wiiCastleChannel0Measure4:
	resetCoda
.redefine BEAT 14		;8th
.redefine HI_VOL $5
.redefine LO_VOL $2
.redefine LO_VOL_RATIO 1/2
.redefine NOTE_END_WAIT 3

wiiCastleChannel0MeasureA2_accent:
; Coda 0,35,63
	incCoda
; Measure 4-7,18,26
	octave 2
	duty $02
.redefine NO_FIRST_VOL 1
	vol $7
	volbeat a 1
.redefine NO_FIRST_VOL 0
	volbeat a 1 a 1
.redefine NO_FIRST_VOL 1
	vol $7
	volbeat a 1
.redefine NO_FIRST_VOL 0
	volbeat a 1 a 1 a 1 a 1

	gotoCond 4 wiiCastleChannel0MeasureC3_accent
	gotoCond 36 wiiCastleChannel0Measure19
	gotoCond 64 wiiCastleChannel0Measure19	
	goto wiiCastleChannel0MeasureA2_accent

wiiCastleChannel0MeasureC3_accent:
; Coda 4
	incCoda
; Measure 8
	octaveu
.redefine NO_FIRST_VOL 1
	vol $7
	volbeat c 1
.redefine NO_FIRST_VOL 0
	volbeat c 1 c 1
.redefine NO_FIRST_VOL 1
	vol $7
	volbeat c 1
.redefine NO_FIRST_VOL 0
	volbeat c 1 c 1 c 1 c 1


wiiCastleChannel0MeasureD3_accent:
; Coda 5,7
	incCoda
; Measure 9,11
.redefine NO_FIRST_VOL 1
	vol $7
	volbeat d 1
.redefine NO_FIRST_VOL 0
	volbeat d 1 d 1
.redefine NO_FIRST_VOL 1
	vol $7
	volbeat d 1
.redefine NO_FIRST_VOL 0
	volbeat d 1 d 1 d 1 d 1

	gotoCond 8 wiiCastleChannel0MeasureG2_accent

wiiCastleChannel0MeasureDs3_accent:
; Coda 6
	incCoda
; Measure 10
.redefine NO_FIRST_VOL 1
	vol $7
	volbeat ds 1
.redefine NO_FIRST_VOL 0
	volbeat ds 1 ds 1
.redefine NO_FIRST_VOL 1
	vol $7
	volbeat ds 1
.redefine NO_FIRST_VOL 0
	volbeat ds 1 ds 1 ds 1 ds 1

	goto wiiCastleChannel0MeasureD3_accent

wiiCastleChannel0MeasureG2_accent:
; Coda 8,26,36,54
	incCoda
; Measure 12,16,20,24
	octaved
.redefine NO_FIRST_VOL 1
	vol $7
	volbeat g 1
.redefine NO_FIRST_VOL 0
	volbeat g 1 g 1
.redefine NO_FIRST_VOL 1
	vol $7
	volbeat g 1
.redefine NO_FIRST_VOL 0
	volbeat g 1 g 1 g 1 g 1

	gotoCond 27 wiiCastleChannel0MeasureCs3
	gotoCond 55 wiiCastleChannel0MeasureCs3
wiiCastleChannel0MeasureA2:
; Coda 9,37
	incCoda
; Measure 13,21
	volbeat a 1

	gotoCond 9+8 wiiCastleChannel0MeasureAs2_accent
	gotoCond 37+8 wiiCastleChannel0MeasureAs2_accent
	goto wiiCastleChannel0MeasureA2

wiiCastleChannel0MeasureAs2_accent:
; Coda 17,45
	incCoda
; Measure 14,22
.redefine NO_FIRST_VOL 1
	vol $7
	volbeat as 1
.redefine NO_FIRST_VOL 0
	volbeat as 1 as 1
.redefine NO_FIRST_VOL 1
	vol $7
	volbeat as 1
.redefine NO_FIRST_VOL 0
	volbeat as 1 as 1 as 1 as 1

wiiCastleChannel0MeasureC3:
; Coda 18,46
	incCoda
; Measure 15,23
	octaveu
	volbeat c 1

	gotoCond 18+8 wiiCastleChannel0MeasureG2_accent
	gotoCond 46+8 wiiCastleChannel0MeasureG2_accent
	goto wiiCastleChannel0MeasureC3

wiiCastleChannel0MeasureCs3:
; Coda 27,55
	incCoda
; Measure 17,25
	volbeat cs 1

	gotoCond 27+8 wiiCastleChannel0MeasureA2_accent
	gotoCond 55+8 wiiCastleChannel0MeasureA2_accent	
	goto wiiCastleChannel0MeasureCs3

wiiCastleChannel0Measure19:
; Coda 36,64
; Measure 19,27
	volbeat d 1 d 1 d 1 d 1

	gotoCond 64 wiiCastleChannel0Measure27c
	volbeat d 1 e 1 fs 1 fs 1

	goto wiiCastleChannel0MeasureG2_accent

wiiCastleChannel0Measure27c:
; Coda 64
; Measure 27c
	volbeat e 1 e 1 fs 1 fs 1

wiiCastleChannel0Measure28:
; Coda 64,71
	incCoda
; Measure 28,32
.redefine BEAT 7		; 16th
.redefine NOTE_END_WAIT 0
	octave 5
	env $0 $05
	vol $5
	beat ds 1 od g 1 ou c 1 ds 1
	beat g 1 ds 1 c 1 od g 1 

	gotoCond 65 wiiCastleChannel0Measure28
	gotoCond 72 wiiCastleChannel0Measure28	

wiiCastleChannel0Measure29:
; Coda 66,70,73
	incCoda
; Measure 29,33
	octaveu
	beat d 1 od g 1 as 1 ou d 1
	beat g 1 d 1 od as 1 g 1

	gotoCond 67 wiiCastleChannel0Measure29
	gotoCond 71 wiiCastleChannel0Measure31c
	gotoCond 74 wiiCastleChannel0Measure29
	gotoCond 75 wiiCastleChannel0Measure34

wiiCastleChannel0Measure30:
; Coda 68
	incCoda
; Measure 30
	octaveu
	beat c 1 od g 1 ou c 1 ds 1
	beat g 1 ds 1 c 1 od g 1

	gotoCond 69 wiiCastleChannel0Measure30
	goto wiiCastleChannel0Measure29

wiiCastleChannel0Measure31c:
; Coda 71
; Measure 31c
	octaveu
	beat d 1 od g 1
	vol $6
	beat a 1 as 1
	vol $7
	beat ou d 1
	vol $8
	beat g 1 as 1
	vol $9
	beat ou d 1

	goto wiiCastleChannel0Measure28

wiiCastleChannel0Measure34:
; Coda 75
	incCoda
; Measure 34
	octaved
	beat cs 1 od g 1 ou cs 1 e 1
	beat g 1 e 1 cs 1 od g 1

	gotoCond 76 wiiCastleChannel0Measure34

; Measure 35
	octaveu
	beat d 1 od a 1 ou d 1 fs 1
	beat a 1 fs 1 d 1 od a 1

	beat ou d 3
	vol $6
	beat od a 1
	vol $7
	beat ou d 1
	vol $8
	beat fs 1 a 1
	vol $9
	beat ou d 1
; Measure 36
.redefine BEAT 14	; 8th
	octave 4
	env $0 $00

	vol $4
	vibrato $e2
	beat a 5
	vol $2
	vibrato $02
	beat a 2
	vol $1
	beat a 1
; Measure 37
	vol $4
	vibrato $e2
	beat gs 5
	vol $2
	vibrato $02
	beat gs 2
	vol $1
	beat gs 1
; Measure 38
	vol $4
	vibrato $e2
	beat g 5
	vol $2
	vibrato $02
	beat g 2
	vol $1
	beat g 1
; Measure 39
	vibrato $00
	beat r 8

	goto wiiCastleChannel0Measure4
    cmdff




wiiCastleChannel4:
.redefine BEAT 14	;8th
.redefine CHANNEL 4
; Measure 1
; 2/4
	beat r 4
; Measure 2
; 4/4
.redefine HI_VOL $0e
.redefine LO_VOL $0f
.redefine LO_VOL_RATIO 1/2
.redefine NO_FIRST_VOL 0
.redefine NOTE_END_WAIT 0

	octave 2
	volbeat a 1 r 2 a 1
	volbeat r 3 e 1
; Measure 3
	volbeat a 1

wiiCastleChannel4Measure3Reset:
	octaveu
	duty $0e
	beat r 2 d 1
	beat cs 1 e 1 g 1 as 1

	resetCoda
;.redefine HI_VOL $15
;.redefine LO_VOL $14
.redefine LO_VOL_RATIO 1/4

wiiCastleChannel4Measure4:
; Coda 0,1
	incCoda
; Measure 4-5
	octave 3
	volbeat f 2

	duty $0e
	beat e 4
	duty $0f
	beat e 2

	gotoCond 1 wiiCastleChannel4Measure4
; Measure 6
	volbeat f 2 e 2 f 2 d 2
; Measure 7
	duty $0e
	beat cs 5
	duty $0f
	beat cs 3	

wiiCastleChannel4Measure8:
; Coda 2,3
	incCoda
; Measure 8-9
	volbeat ds 2

	duty $0e
	beat d 4
	duty $0f
	beat d 2

	gotoCond 3 wiiCastleChannel4Measure8
; Measure 10
	volbeat ds 2 d 2 ds 2 c 2
; Measure 11
	octaved
	duty $0e
	beat b 5
	duty $0f
	beat b 3

wiiCastleChannel4Measure12:
; Coda 4,5
	incCoda
; Measure 12,20
	octaveu
	duty $0e
	beat d 5
	duty $0f
	beat d 3
; Measure 13,21
.redefine BEAT 1
.redefine LO_VOL_RATIO 1/2
	octaved
	volbeat fs 28 r 3

	octave 4
	duty $08
	beat ds 56 d 25

	gotoCond 6 wiiCastleChannel4Measure22
; Measure 14
	octave 2
	volbeat g 28 r 3

	octave 4
	duty $08
	beat d 28 od as 28 g 25
; Measure 15
	octave 2
	volbeat g 28 r 31

	octave 4
	duty $08
	beat c 28 od as 25
; Measure 16
	octave 3
	volbeat d 28 r 3

	octave 3
	duty $08
	beat as 56 g 25
; Measure 17
	octave 2
	volbeat g 28 r 3	

	octave 3
	duty $08
	beat e 28 g 53
; Measure 18
	octave 3
	volbeat cs 28 r 31

	octave 3
	duty $08
	beat cs 28 e 25
; Measure 19
	octave 3
	volbeat fs 28 r 3

	octave 3
	duty $08
	beat as 56 a 25	

	goto wiiCastleChannel4Measure12

wiiCastleChannel4Measure22:
; Measure 22-24
.redefine LO_VOL_RATIO 3/8
	octave 3
	volbeat g 112 e 112 d 112
; Measure 25
.redefine LO_VOL_RATIO 1/2
	octave 2
	volbeat g 28 r 3	

	octave 3
	duty $08
	beat e 28 g 53
; Measure 26
.redefine BEAT 14		;8th
.redefine LO_VOL_RATIO 3/8
	volbeat g 8
; Measure 27
.redefine LO_VOL_RATIO 1/4
	volbeat as 4 a 4

.redefine LO_VOL_RATIO 1/2
.redefine NOTE_END_WAIT 3

wiiCastleChannel4Measure28:
; Coda 6
	incCoda
; Measure 28
	volbeat c 1

	gotoCond 6+8 wiiCastleChannel4Measure29
	goto wiiCastleChannel4Measure28

wiiCastleChannel4Measure29:
; Coda 14
	incCoda
; Measure 28
	octaved
	volbeat as 1

	gotoCond 14+8 wiiCastleChannel4Measure30
	goto wiiCastleChannel4Measure29

wiiCastleChannel4Measure30:
; Coda 22
	incCoda
; Measure 28
	volbeat a 1

	gotoCond 22+6 wiiCastleChannel4Measure30d
	goto wiiCastleChannel4Measure30

wiiCastleChannel4Measure30d:
.redefine NOTE_END_WAIT 0
	octave 3
	duty $0e
	beat as 1 a 1
; Measure 31
	beat as 1 a 1 g 6
; Measure 32-35
.redefine LO_VOL_RATIO 3/8
	octave 3
	volbeat c 8 od as 8
	volbeat a 8 ou d 8

; Measure 36
	volbeat d 16 r 9

	goto wiiCastleChannel4Measure3Reset
    cmdff



wiiCastleChannel6:
.redefine BEAT 7	;16th
; Measure 1
;2/4
	vol $0
	beat r 8
; Measure 2
;4/4
	vol $4
	beat $2a 4
	beat $2a 2 $2a 1 $2a 1
.rept 4
	beat $2a 1
.endr

.redefine BEAT 1
.rept 4
	beat $2a 2 $2a 2 $2a 3
.endr
.redefine BEAT 7

; Measure 3
	beat $2a 4
	beat $2a 2 $2a 1 $2a 1

.redefine BEAT 1
.rept 8
	beat $2a 2 $2a 2 $2a 3
.endr
.redefine BEAT 7

wiiCastleChannel6Measure4Reset:
	resetCoda
wiiCastleChannel6Measure4:
	incCoda
; Measure 4,8
.redefine BEAT 1
	vol $6
	beat $30 14
	vol $3
	beat $30 7
	vol $2
	beat $30 4
	vol $1
	beat $30 3
.redefine BEAT 7
	vol $4

.rept 2
	beat $2a 2 $2a 1 $2a 1
.endr

.redefine BEAT 1
.rept 4
	beat $2a 2 $2a 2 $2a 3
.endr
.redefine BEAT 7


; Measure 5,9
	beat $2a 2 $2a 1 $2a 1
	beat $2a 2
	
.redefine BEAT 1
.rept 2
	beat $2a 2 $2a 2 $2a 3
.endr
.redefine BEAT 7

	beat $2a 2 $2a 1 $2a 1

.redefine BEAT 1
.rept 4
	beat $2a 2 $2a 2 $2a 3
.endr
.redefine BEAT 7


; Measure 6,10
.redefine BEAT 1
	vol $6
	beat $30 14
	vol $3
	beat $30 7
	vol $2
	beat $30 4
	vol $1
	beat $30 3
.redefine BEAT 7
	vol $4

	beat $2a 2 

.redefine BEAT 1
.rept 2
	beat $2a 2 $2a 2 $2a 3
.endr
.redefine BEAT 7

	beat $2a 2 $2a 1 $2a 1
	beat $2a 2

.redefine BEAT 1
.rept 2
	beat $2a 2 $2a 2 $2a 3
.endr
.redefine BEAT 7

; Measure 7,11
	beat $2a 2 $2a 1 $2a 1
.rept 4
	beat $2a 1
.endr
	gotoCond 2 wiiCastleChannel6Measure11c

.redefine BEAT 1
.rept 8
	beat $2a 2 $2a 2 $2a 3
.endr
.redefine BEAT 7

	goto wiiCastleChannel6Measure4

wiiCastleChannel6Measure11c:
; Coda 2
; Measure 11c
.rept 4
	beat $2a 1
.endr	

.redefine BEAT 1
.rept 4
	beat $2a 2 $2a 2 $2a 3
.endr
.redefine BEAT 7

wiiCastleChannel6Measure12Crash:
; Coda 2,4,6,7
; Measure 12,20,28,32
.redefine BEAT 1
	vol $6
	beat $30 14
	vol $3
	beat $30 7
	vol $2
	beat $30 4
	vol $1
	beat $30 3
.redefine BEAT 7
	vol $4
wiiCastleChannel6Measure12:	
; Coda 3,5,8
	incCoda
; Measure 12a,16a,20a,24a,28a,32a,36a
.rept 2
	beat $2a 2 $2a 1 $2a 1
.endr
	beat $2a 1 $2a 2

.redefine BEAT 1
	beat $2a 2 $2a 2 $2a 3
.redefine BEAT 7

; Measure 13,17,21,25,29,33,37
.rept 3
	beat $2a 2 $2a 1 $2a 1
.endr
.rept 4
	beat $2a 1
.endr
; Measure 14,18,22,26,30,34,38
.rept 3
	beat $2a 2 $2a 1 $2a 1
.endr
	beat $2a 1 $2a 2

.redefine BEAT 1
	beat $2a 2 $2a 2 $2a 3
.redefine BEAT 7

; Measure 15,19,23,27,31,35,39
.rept 3
	beat $2a 2 $2a 1 $2a 1
.endr

.redefine BEAT 1
.rept 4
	beat $2a 2 $2a 2 $2a 3
.endr
.redefine BEAT 7



	gotoCond 4 wiiCastleChannel6Measure12Crash	;M20
	gotoCond 6 wiiCastleChannel6Measure12Crash	;M28
	gotoCond 7 wiiCastleChannel6Measure12Crash	;M32
	gotoCond 9 wiiCastleChannel6Measure4Reset
; Measure 16,24,36
	beat $2a 2 $2a 1 $2a 1

	goto wiiCastleChannel6Measure12
    cmdff