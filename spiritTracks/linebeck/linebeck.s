linebeckStart:
; BPM =  112.5, B = 32, M = 128
linebeckChannel1:
.redefine CHANNEL 1
.redefine BEAT 16     ;eighth

.redefine HI_VOL $6
.redefine LO_VOL $3
.redefine LO_VOL_RATIO 1/2
.redefine NO_FIRST_VOL 0

; Measure 1 (eighth note pickup)
	octave 4
	duty $02
.redefine NOTE_END_WAIT 5
	volbeat g 1
; Measure 2-3c
	volbeat ou c 3 od g 1 ou d 2
	vol $0
	beat r 2+4+4 r 3

linebeckChannel1Measure3dReset:
	resetCoda
linebeckChannel1Measure3d:
; Coda == 0,1
	incCoda
; Measure 3d,7d
	octave 4
	duty $01
	vibrato $00
	volbeat d 1
; Measure 4,8
	volbeat g 3 d 1 a 3 d 1
; Measure 5,9
.redefine NOTE_END_WAIT 0
	vol HI_VOL
	beat as 1
.redefine NOTE_END_WAIT 5
	beat ou c 1 d 1
.redefine NOTE_END_WAIT 0
.redefine BEAT 1	;free
	beat od as 5 ou c 5 od as 6

.redefine BEAT 16     ;eighth
.redefine NO_FIRST_VOL 1
.redefine NOTE_END_WAIT 5
	volbeat g 3
.redefine NO_FIRST_VOL 0
	duty $00
	vibrato $01
	volbeat g 1

; Measure 6,10
.redefine NOTE_END_WAIT 0
	vol HI_VOL
	beat as 1
.redefine NOTE_END_WAIT 5
	beat ou c 1 d 1 od as 1
	beat g 2 f 2
; Measure 7,11
.redefine NOTE_END_WAIT 5
	volbeat d 1 f 1
.redefine NOTE_END_WAIT 0
	volbeat g 4 r 1

	gotoCond 0+1 linebeckChannel1Measure3d

; Coda == 2
; Measure 11d
	octave 4
	duty $02
	vibrato $01
.redefine NOTE_END_WAIT 5
	volbeat g 1
; Measure 12
	octaveu
	volbeat ds 3 ds 1
.redefine NOTE_END_WAIT 0
	vol HI_VOL
	beat f 1
.redefine NOTE_END_WAIT 5
	beat ds 1 d 1 c 1
; Measure 13
.redefine NO_FIRST_VOL 1
	volbeat c 2
.redefine NO_FIRST_VOL 0
	volbeat od as 1 ou c 1
	volbeat d 3 d 1
; Measure 14
	volbeat c 3 od as 1
.redefine NOTE_END_WAIT 0
	vol HI_VOL
	beat gs 1
.redefine NOTE_END_WAIT 5
	beat ou ds 1 d 1 c 1
; Measure 15
.redefine NOTE_END_WAIT 0
	volbeat d 4
	vol $1
	beat d 2 r 1

; Measure 15d
	octave 4
	duty $01
	vibrato $00
.redefine NOTE_END_WAIT 5
	volbeat g 1
; Measure 16
	octaveu
	volbeat ds 3 ds 1
.redefine NOTE_END_WAIT 0
	vol HI_VOL
	beat f 1
.redefine BEAT 1	;free
	beat ds 5 f 5 ds 6
.redefine NOTE_END_WAIT 5
	volbeat d 16 c 16
; Measure 17
.redefine NOTE_END_WAIT 0
	vol HI_VOL
	beat c 6 d 6 c 7 d 6 c 7

.redefine BEAT 16     ;eighth	
.redefine NOTE_END_WAIT 5
	volbeat od as 1 ou c 1
	volbeat d 2 cs 1 d 1
; Measure 18
	volbeat ds 3 c 1 e 3
.redefine NOTE_END_WAIT 0
.redefine BEAT 4	;32nd
	vol HI_VOL
	beat g 2 fs 1 g 1

; Measure 19
.redefine BEAT 16     ;eighth	
.redefine NOTE_END_WAIT 0
	volbeat fs 4 r 3

	goto linebeckChannel1Measure3dReset
	cmdff

linebeckChannel0:
.redefine CHANNEL 0
.redefine BEAT 16     ;eighth

.redefine HI_VOL $4
.redefine LO_VOL $2
.redefine LO_VOL_RATIO 1/2
.redefine NO_FIRST_VOL 0

; Measure 1 (eighth note pickup)
	octave 3
	duty $02
.redefine NOTE_END_WAIT 5
	volbeat g 1
; Measure 2
	volbeat ou c 3 od g 1 ou d 2
	beat r 2+4

linebeckChannel0Measure3Reset:
	resetCoda
linebeckChannel0Measure3:
; Measure 3,19
.redefine NOTE_END_WAIT 0
	octave 3
	env $0 $04
	vol HI_VOL

	beat d 1
	env $0 $00
	beat ou g 1
	env $0 $04
	beat fs 1 ds 1
	beat d 1 c 1 od as 1

linebeckChannel0Measure3d:
; Coda == 0,1
	incCoda
; Measure 3d,7d
	octave 3
;.redefine NOTE_END_WAIT 8
	vol HI_VOL
	beat d 1
; Measure 4,8
	beat g 1 as 1 ou d 1 od g 1
	beat fs 1 as 1 ou fs 1 od d 1
; Measure 5,9
	beat f 1 as 1 ou d 1 od f 1
	beat e 1 as 1 ou e 1 od g 1
; Measure 6,10
	beat ds 1 as 1 ou ds 1 od ds 1
	beat d 1 f 1 ou d 1 od f 1
; Measure 7,11
	vol $6
	beat d 1
	
	gotoCond 0+2 linebeckChannel0Measure11a

	beat f 1 g 1 as 1
	beat ou d 1 od g 1 as 1

	goto linebeckChannel0Measure3d
linebeckChannel0Measure11a:
; Coda == 2,3
; Measure 11a
	octave 4
	beat c 1 od b 1
	vol HI_VOL
	beat b 1 ou d 1 od g 1 as 1

linebeckChannel0Measure11d:
; Measure 11d	
	beat g 1
; Measure 12
	beat c 1 ou c 1 ds 1 od c 1
	beat f 1 ou c 1 ds 1 od c 1
; Measure 13
	beat as 1 ou d 1 f 1 od as 1
	beat as 1 ou d 1 f 1 d 1
; Measure 14
	beat od gs 1 ou c 1 ds 1 od gs 1
	beat gs 1 ou c 1 ds 1 c 1
; Measure 15
	octaved
	beat g 1
	vol $5
	beat g 1 as 1 as 1
	beat ou g 1 g 1 d 1
	vol HI_VOL
	beat od g 1
; Measure 16
	beat c 1 ou c 1 ds 1 od c 1
	beat f 1 ou c 1 ds 1 od c 1
; Measure 17
	beat as 1 ou d 1 f 1 od as 1
	beat b 1 ou d 1 f 1 d 1
; Measure 18
	beat od c 1 ou ds 1 g 1 od c 1
	beat a 1 ou cs 1 e 1 od a 1

	goto linebeckChannel0Measure3Reset
	cmdff


linebeckChannel4:
.redefine CHANNEL 4
.redefine BEAT 16     ;eighth

.redefine HI_VOL $0e
.redefine LO_VOL $0f
.redefine LO_VOL_RATIO 1/2
.redefine NO_FIRST_VOL 0
.redefine NOTE_END_WAIT 0

; Measure 1 (eighth note pickup)
	octave 2
	beat r 1
; Measure 2
	volbeat ds 4 d 2 r 2+4

linebeckChannel4Measure3Reset:
	resetCoda
linebeckChannel4Measure3:
; Measure 3,19
	octave 2
	volbeat d 1 ou ou ds 1 d 1 c 1
	volbeat od as 1 a 1 g 1

linebeckChannel4Measure3d:
; Coda == 0,1
	incCoda
; Measure 3d,7d
	octave 2
	volbeat d 1
; Measure 4,8
	volbeat g 1
.redefine HI_VOL $15
.redefine LO_VOL $14	
	volbeat ou g 1 as 1
.redefine HI_VOL $0e
.redefine LO_VOL $0f	
	volbeat od g 1 fs 1
.redefine HI_VOL $15
.redefine LO_VOL $14	
	volbeat ou g 1 ou d 1
.redefine HI_VOL $0e
.redefine LO_VOL $0f	
	volbeat od od d 1
; Measure 5,9
	volbeat f 1
.redefine HI_VOL $15
.redefine LO_VOL $14	
	volbeat ou g 1 as 1
.redefine HI_VOL $0e
.redefine LO_VOL $0f	
	volbeat od f 1 e 1
.redefine HI_VOL $15
.redefine LO_VOL $14
	volbeat ou g 1 as 1
.redefine HI_VOL $0e
.redefine LO_VOL $0f	
	volbeat od g 1
; Measure 6,10
	volbeat ds 1
.redefine HI_VOL $15
.redefine LO_VOL $14	
	volbeat ou g 1 as 1
.redefine HI_VOL $0e
.redefine LO_VOL $0f	
	volbeat od ds 1 d 1 
.redefine HI_VOL $15
.redefine LO_VOL $14
	volbeat ou d 1 a 1
.redefine HI_VOL $0e
.redefine LO_VOL $0f	
	volbeat od f 1
; Measure 7,11
	volbeat d 1 f 1 g 1
.redefine HI_VOL $15
.redefine LO_VOL $14		
	volbeat ou g 1

	gotoCond 0+2 linebeckChannel4Measure11c

	volbeat as 1 od g 1 ou g 1
	goto linebeckChannel4Measure3d
linebeckChannel4Measure11c:
; Coda == 2
	octave 3
.redefine HI_VOL $15
.redefine LO_VOL $14
; Measure 11c
	volbeat b 1 od g 1 ou g 1
.redefine HI_VOL $0e
.redefine LO_VOL $0f	
	volbeat od g 1
; Measure 12
	volbeat c 1
.redefine HI_VOL $15
.redefine LO_VOL $14	
	volbeat ou g 1 ou c 1
.redefine HI_VOL $0e
.redefine LO_VOL $0f	
	volbeat od od c 1 f 1
.redefine HI_VOL $15
.redefine LO_VOL $14
	volbeat ou g 1 ou c 1
.redefine HI_VOL $0e
.redefine LO_VOL $0f	
	volbeat od od f 1
; Measure 13
	volbeat as 1
.redefine HI_VOL $15
.redefine LO_VOL $14	
	volbeat ou as 1 ou d 1
.redefine HI_VOL $0e
.redefine LO_VOL $0f	
	volbeat od od as 1 as 1 
.redefine HI_VOL $15
.redefine LO_VOL $14	
	volbeat ou as 1 ou d 1
.redefine HI_VOL $0e
.redefine LO_VOL $0f	
	volbeat od d 1
; Measure 14
	volbeat od gs 1
.redefine HI_VOL $15
.redefine LO_VOL $14	
	volbeat ou gs 1 ou c 1
.redefine HI_VOL $0e
.redefine LO_VOL $0f	
	volbeat od od gs 1 gs 1
.redefine HI_VOL $15
.redefine LO_VOL $14	
	volbeat ou fs 1 ou c 1
.redefine HI_VOL $0e
.redefine LO_VOL $0f	
	volbeat od c 1
; Measure 15
	volbeat od g 1
	
	volbeat ou d 1 g 1 g 1
	volbeat ou d 1 d 1 od as 1
	
	volbeat od g 1

; Measure 16
	volbeat c 1
.redefine HI_VOL $15
.redefine LO_VOL $14	
	volbeat ou g 1 ou c 1
.redefine HI_VOL $0e
.redefine LO_VOL $0f	
	volbeat od od c 1 f 1
.redefine HI_VOL $15
.redefine LO_VOL $14
	volbeat ou g 1 ou c 1
.redefine HI_VOL $0e
.redefine LO_VOL $0f	
	volbeat od od f 1
; Measure 17
	volbeat as 1
.redefine HI_VOL $15
.redefine LO_VOL $14	
	volbeat ou as 1 ou d 1
.redefine HI_VOL $0e
.redefine LO_VOL $0f	
	volbeat od od as 1 b 1
.redefine HI_VOL $15
.redefine LO_VOL $14
	volbeat ou gs 1 ou d 1
.redefine HI_VOL $0e
.redefine LO_VOL $0f	
	volbeat od d 1
; Measure 18
	volbeat od c 1
.redefine HI_VOL $15
.redefine LO_VOL $14	
	volbeat ou ou c 1 ds 1
.redefine HI_VOL $0e
.redefine LO_VOL $0f	
	volbeat od od c 1 a 1 
.redefine HI_VOL $15
.redefine LO_VOL $14
	volbeat ou a 1 ou cs 1
.redefine HI_VOL $0e
.redefine LO_VOL $0f	
	volbeat od d 1

	goto linebeckChannel4Measure3Reset
	cmdff

linebeckChannel6:
.redefine CRASH $30
.redefine SNARE $2a

.redefine CHANNEL 6

.redefine HI_VOL $4
.redefine LO_VOL $2
.redefine LO_VOL_RATIO 1/2
.redefine NOTE_END_WAIT 0

.redefine BEAT 4	;32nd

; Measure 1-2b (eighth note pickup)
	beat r 20
; Measure 2c
;	beat CRASH 8 r 24+4
	vol $6
	beat CRASH 4
	vol $4
	beat CRASH 2
	vol $3
	beat CRASH 2
	vol $2
	beat CRASH 1
	vol $1
	beat CRASH 1
	vol $0
	beat r 3 SNARE 1 r 18
; Measure 3-4a
	vol HI_VOL
	beat SNARE 8 r 28

linebeckChannel6Measure4a:
.redefine BEAT 4		;32nd
; Measure 4a
	beat SNARE 2 SNARE 2 SNARE 4
	vol LO_VOL
	beat SNARE 4 SNARE 4
	vol HI_VOL
	beat SNARE 4 SNARE 4	
	vol LO_VOL
	beat SNARE 4
; Measure 5
	beat SNARE 4	
	vol HI_VOL
.rept 4
	beat SNARE 1
.endr
 	beat SNARE 4
	vol LO_VOL
	beat SNARE 4 SNARE 4
	vol HI_VOL
	beat SNARE 4 SNARE 4	
	vol LO_VOL
	beat SNARE 4
; Measure 6
	beat SNARE 4
	vol HI_VOL

	goto linebeckChannel6Measure4a
    cmdff