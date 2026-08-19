kokiriForestStart:
; BPM = 138.46, B = 26, M = 104
kokiriForestChannel1:
.redefine CHANNEL 1

.redefine HI_VOL $6
.redefine LO_VOL $3
.redefine LO_VOL_RATIO 1/2
.redefine NO_FIRST_VOL 0

; BPM = 100, B = 36, M = 180
; Measure 1
.redefine BEAT 36     ;quarter
	octave 5
	vol HI_VOL
	duty $02
	beat d 1 c 2 d 1 ds 1
; Measure 2
	vibrato $e2
	beat f 5
; Measure 3
.redefine BEAT 13		;eighth
	octave 4
	beat r 1
	env $0 $04
	vol LO_VOL
	beat c 1 r 3
	beat od as 1 r 3
; Measure 4a
	beat ou c 1 r 3
	beat od as 1 r 2

kokiriForestChannel1Measure5Reset:
	resetCoda
kokiriForestChannel1Measure5:
; Coda == 0
	incCoda
; Measure 5,9
.redefine BEAT 1	;free
	octave 6
	vol HI_VOL
	vibrato $00
	duty $02
	env $0 $04
	beat g 13 ou c 13 od g 13 e 13
	env $0 $00
	beat d 20 e 19 f 13
; Measure 6,10
	beat g 7 a 6
.redefine NO_FIRST_VOL 1
	volbeat g 26

	vol HI_VOL
	beat f 7 g 6
	volbeat f 26

	vol HI_VOL
	env $0 $04
	beat e 13 d 13
; Measure 7,11
	beat e 13
	env $0 $00
	vibrato $81
	beat c 26
	vol LO_VOL
	vibrato $01
	beat c 13

.redefine BEAT 13	;eighth
	octave 4
	env $0 $04
	duty $01
	vibrato $01
	vol HI_VOL
	beat as 1 f 1 as 1 ou d 1
; Measure 8,12
	env $0 $00
	vibrato $81
	beat c 3
	gotoCond 0+2 kokiriForestChannel1Measure12b
.redefine LO_VOL_RATIO 1/5
	volbeat od g 5

	goto kokiriForestChannel1Measure5

kokiriForestChannel1Measure12b:
; Coda == 2
; Measure 12b
	octave 5
;	beat c 5
	vibrato $01
	beat c 1
	vol LO_VOL
	beat c 4

kokiriForestChannel1Measure13:
; Coda == 2,3
	incCoda
; Measure 13,17
	octave 4
	beat r 1		;separated to avoid glitch noise
	vol HI_VOL
	vibrato $01
	duty $00
	beat a 1 ou c 1 od a 1
	beat b 1
.redefine LO_VOL_RATIO 1/2
	vibrato $62
	volbeat ou d 2 r 2
; Measure 14a,18a
	vol HI_VOL
	vibrato $00
	beat od a 1 ou c 1 e 1
.redefine BEAT 1	;free
	beat d 3 e 3 d 20
	volbeat od b 26 r 13
; Measure 15a,19a
.redefine BEAT 13	;eighth
	vol HI_VOL
	beat a 1 ou c 1 od a 1
	beat b 1
	vibrato $62
	volbeat ou d 2 r 2
; Measure 16a,20a
	vol HI_VOL
	vibrato $00
	beat c 1 d 1 ds 1
.redefine BEAT 1	;free
	vibrato $62
	beat f 3 g 3 f 20
	volbeat d 26

	gotoCond 2+1 kokiriForestChannel1Measure13

kokiriForestChannel1Measure21:
; Coda == 4
; Measure 21
	octave 5	
;	beat e 104
	vol HI_VOL
	beat e 52
	vol LO_VOL
	vibrato $02
	beat e 39
	vol LO_VOL-2
	beat e 13 r 13

; Measure 22a
	octave 4
	env $0 $04
	duty $02
	vibrato $00
	vol LO_VOL
	beat c 13 r 39
	beat od as 13 r 26

; Measure 23
	octave 5
	env $0 $00
	vol HI_VOL
	beat g 7 a 6
	volbeat g 26

	vol HI_VOL
	beat f 7 g 6
	volbeat f 26

	vol HI_VOL
	beat e 7 f 6
.redefine LO_VOL_RATIO 1/4	
	volbeat e 52
; Measure 24b
	vol HI_VOL
	beat d 13
	beat c 13 od as 13 ou c 13 d 13
; Measure 25
;	beat c 39
	vibrato $81
	beat c 26
	vibrato $01
	vol LO_VOL
	beat c 13

	octaved
;	beat g 65
	vol HI_VOL
	vibrato $81
	beat g 39
	vibrato $01
	vol LO_VOL
	beat g 26

; Measure 26
	octave 6
;	beat f 39
	vol HI_VOL
	vibrato $81
	beat f 26
	vibrato $01
	vol LO_VOL
	beat f 13

;	beat e 65
	vol HI_VOL
	vibrato $81
	beat e 39
	vibrato $01
	vol LO_VOL
	beat e 26
; Measure 27
	octave 5
	vibrato $00
	vol HI_VOL
	beat c 7 d 6
.redefine LO_VOL_RATIO 1/2
	volbeat c 26

	vol HI_VOL
	beat od as 7 ou c 6
	volbeat od as 26

	vol HI_VOL
	beat a 7 as 6
.redefine LO_VOL_RATIO 1/4	
	volbeat a 52
; Measure 28b
	vol HI_VOL
	beat g 13
	beat f 13 e 13 f 13 g 13
; Measure 29
;	beat e 52 r 13
	vibrato $81
	beat e 36
	vibrato $01
	vol LO_VOL
	beat e 16 r 13

	octave 3
	vol LO_VOL
	env $0 $04
	beat as 13 as 13 as 13
; Measure 30
	octave 4
	env $0 $00
;	beat as 104
	vol HI_VOL
	vibrato $e2
	beat as 52
	vibrato $02
	vol HI_VOL-2
	beat as 26
	vol LO_VOL
	beat as 13
	vol LO_VOL-2
	beat as 13

	goto kokiriForestChannel1Measure5Reset
	cmdff


kokiriForestChannel0:
.redefine CHANNEL 0
.redefine BEAT 26     ;quarter

.redefine HI_VOL $4
.redefine LO_VOL $2
.redefine LO_VOL_RATIO 1/2
.redefine NO_FIRST_VOL 0

; BPM = 100, B = 36, M = 180
; Measure 1
.redefine BEAT 36     ;quarter
	octave 3
	vol HI_VOL
	duty $02
	beat b 1 a 2 b 1 ou c 1
; Measure 2
	vibrato $e2
	beat d 2
;	beat r 3
;	goto kokiriForestChannel0Measure3Reset
.redefine BEAT 1	;free
	octave 3
	vibrato $00
.rept 2
	beat g 4 as 5
.endr
	octaveu
.rept 2
	beat f 4 g 5
.endr
	octaveu
.rept 2
	beat od as 4 ou d 5
.endr
.rept 2
	beat f 4 g 5
.endr
	octaveu
.rept 2	
	beat od as 4 ou d 5
.endr
	beat f 4 g 5 a 4 as 5

kokiriForestChannel0Measure3Reset:
	beat r 13
	resetCoda
kokiriForestChannel0Measure3:
; Coda == 0-9,12
	incCoda
.redefine BEAT 13		;eighth
.redefine LO_VOL_RATIO 1/2
; Measure 3-12,21-23
	octave 4
	env $0 $04
	vibrato $00
	vol LO_VOL+1
	beat g 1
	vol LO_VOL-1
	beat c 1 c 1 r 1
;	gotoCond 12+5 kokiriForestChannel0Measure25c
	vol LO_VOL+1
	beat f 1
	vol LO_VOL-1
	beat od as 1 as 1 r 1	

	gotoCond 12+3 kokiriForestChannel0Measure24
	gotoCond 0+10 kokiriForestChannel0Measure13

	goto kokiriForestChannel0Measure3

kokiriForestChannel0Measure13:
; Coda == 10
	incCoda
; Measure 13,17
	octave 4
	env $0 $00
	vibrato $01
	vol HI_VOL
	beat c 2
	vol LO_VOL
	beat c 1
	
.redefine LO_VOL_RATIO 1/4
.redefine NO_FIRST_VOL 0
	volbeat d 4
; Measure 14,18
	volbeat c 4 d 4 r 1
; Measure 15a,19a
	vol HI_VOL
	beat c 2
	vol LO_VOL
	beat c 1
	
	volbeat d 4
; Measure 16,20
	volbeat ds 4 f 4 r 1

	gotoCond 10+1 kokiriForestChannel0Measure13
	goto kokiriForestChannel0Measure3


kokiriForestChannel0Measure24:
; Coda == 15
.redefine NO_FIRST_VOL 1
; Measure 24
	octave 6
	vol HI_VOL
	beat c 1 f 1 g 1 ou c 1

	octave 4	
	vol LO_VOL+1
	beat f 1
	vol LO_VOL-1
	beat od as 1 as 1 r 1
; Measure 25
	octaveu
	vol LO_VOL+1
	beat g 1
	vol LO_VOL-1
	beat c 1 c 1 r 1

kokiriForestChannel0Measure25c:
; Coda == 15/17
.redefine BEAT 1		;free
; Measure 25c
	octave 4
	vol HI_VOL+1
	beat g 7 a 6
	beat as 7 ou c 6 od as 7 a 6
; Measure 26
.rept 11
	beat as 7 g 2
.endr
	beat as 5 r 13
; Measure 27a
.redefine BEAT 13		;eighth
;	env $0 $04
	octave 6
	vol HI_VOL
	beat c 1 f 1 g 1 ou c 1

	octave 4
	vol LO_VOL+1
	beat f 1
	vol LO_VOL-1
	beat od as 1 as 1 r 1
; Measure 28
	octaveu
	vol LO_VOL+1
	beat g 1
	vol LO_VOL-1
	beat c 1 c 1 r 1

	octave 6
	vol HI_VOL
	beat c 1 f 1 g 1 ou c 1
; Measire 29a
	octave 4
	vol LO_VOL+1
	beat g 1
	vol LO_VOL-1
	beat c 1 c 1 r 1

.redefine BEAT 1		;free
	vol HI_VOL+1
	beat e 7 f 6
	beat g 7 a 6 g 7 f 6
; Measure 30
.rept 11
	beat g 7 e 2
.endr
	beat g 5

kokiriForestChannel0Measure5Reset:
	beat r 13
	resetCoda
.rept 2
	incCoda
.endr

	goto kokiriForestChannel0Measure3
	cmdff


kokiriForestChannel4:
.redefine CHANNEL 4

.redefine HI_VOL $0e
.redefine LO_VOL $0f
.redefine NO_FIRST_VOL 0


; BPM = 100, B = 36, M = 180
; Measure 1
.redefine BEAT 36     ;quarter
	octave 2
.redefine LO_VOL_RATIO 1/4
	volbeat g 3 g 1 g 1
; Measure 2
	volbeat g 5

	resetCoda
kokiriForestChannel4Measure3:
; Coda == 0-9,12
	incCoda
.redefine BEAT 1		;free
.redefine LO_VOL_RATIO 6/13
.redefine HI_VOL $15
.redefine LO_VOL $14
; Measure 3-12,21-30
	octave 3
	duty HI_VOL
	beat c 7
	duty LO_VOL
	beat c 6
	octaveu
	duty HI_VOL
	beat e 7
	duty LO_VOL
	beat e 6 r 26

	octave 2
	duty HI_VOL
	beat as 7
	duty LO_VOL
	beat as 6
	octaveu
	octaveu
	duty HI_VOL
	beat d 7
	duty LO_VOL
	beat d 6 r 26


	gotoCond 0+10 kokiriForestChannel4Measure13
	gotoCond 12+10 kokiriForestChannel4Measure5Reset
	goto kokiriForestChannel4Measure3

kokiriForestChannel4Measure13:
; Coda == 10
	incCoda

	octave 2
;.redefine HI_VOL $0e
;.redefine LO_VOL $0f
.redefine LO_VOL_RATIO 3/13
; Measure 13-15,17-19
.rept 3
	duty HI_VOL
	beat f 40
	duty LO_VOL
	beat f 12
	
	duty HI_VOL
	beat g 40
	duty LO_VOL
	beat g 12	
.endr	
; Measure 16,20
	duty HI_VOL
	beat gs 40
	duty LO_VOL
	beat gs 12
	
	duty HI_VOL
	beat as 40
	duty LO_VOL
	beat as 12

	gotoCond 10+1 kokiriForestChannel4Measure13
	goto kokiriForestChannel4Measure3

kokiriForestChannel4Measure5Reset:
; Coda == 22
; Measure 5
	resetCoda
.rept 2
	incCoda
.endr
	goto kokiriForestChannel4Measure3

kokiriForestChannel6:
	cmdff