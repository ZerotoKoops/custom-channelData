sanctuaryStart:
 ; BPM = 64.29; B = 56; M = 224
sanctuaryChannel1:
.redefine CHANNEL 1
.redefine HI_VOL $6
.redefine LO_VOL $3
.redefine BEAT 28    ;eigth

; Measure 1-2
; 3/4
	octave 4
	duty $03
    env $0 $00
    vibrato $01
.rept 2
	vol $6
    vibrato $01
    beat ds 1 f 1
.redefine BEAT 1	;free
;   beat d 112
	vibrato $e2
	beat d 78
	vol $3
	vibrato $02
	beat d 20
	vol $1
	beat d 14
.redefine BEAT 28	;eighth
.endr
; Measure 3
; 4/4
    octaveu
 	vol $6
	vibrato $01
    beat c 1 d 1
.redefine BEAT 1	;free
;   beat od b 140
	beat od b 98
	vol $3
	vibrato $02
	beat b 24
	vol $1
	beat b 18 r 28	

.redefine BEAT 28	;eighth
    resetCoda
sanctuaryChannel1Measure4:
; Coda == 0,1
    incCoda
; Measure 4,5
    octave 5
    vol $6
    duty $03
    env $0 $00
    vibrato $01
    beat g 1 ds 1 c 1 ou c 1
    beat od b 1 g 1 d 1 od b 1

    gotoCond 0+1 sanctuaryChannel1Measure4

; Measure 6
    octave 5
    beat g 1 ds 1 c 1 ou c 1
    beat od b 1 ou c 1 d 1 od b 1

sanctuaryChannel1Measure7:
; Coda == 2,3
    incCoda
; Measure 7,8
    octave 6
    beat c 1 od g 1 ou c 1 g 2
    beat d 1 od b 1 g 1

    gotoCond 2+1 sanctuaryChannel1Measure7

; Measure 9
    octave 6
    beat c 1 od a 1 ds 1 c 2
    beat ds 1 fs 1 ou c 1
; Measure 10
.redefine BEAT 1	;free
    octaved
;   beat b 196 r 28
	vibrato $e2
	beat b 160
	vibrato $02
	vol $3
	beat b 26
	vol $1
	beat b 10 r 28

    resetCoda
    incCoda
    goto sanctuaryChannel1Measure4
    cmdff

sanctuaryChannel0:
.redefine CHANNEL 0
.redefine HI_VOL $6
.redefine LO_VOL $3
.redefine BEAT 28    ;eigth

; Measure 1-2
; 3/4
	octave 4
	duty $03
    env $1 $00
    vibrato $01
    vol $3
.redefine BEAT 1	;free
	beat r 3
.redefine BEAT 28	;eighth

.rept 2
    beat ds 1 f 1
.redefine BEAT 1	;free
    beat d 64 r 48

.redefine BEAT 28	;eighth
.endr
; Measure 3
; 4/4
    octaveu
    beat c 1 d 1
.redefine BEAT 1	;free
    beat od b 84 r 84
.redefine BEAT 28	;eighth

    resetCoda
sanctuaryChannel0Measure4:
; Coda == 0,1
    incCoda
; Measure 4,5
    octave 5
    duty $02
    env $3 $00
    vibrato $01
    beat g 1 ds 1 c 1 ou c 1
    beat od b 1 g 1 d 1 od b 1

    gotoCond 0+1 sanctuaryChannel0Measure4

; Measure 6
    octave 5
    beat g 1 ds 1 c 1 ou c 1
    beat od b 1 ou c 1 d 1 od b 1

sanctuaryChannel0Measure7:
; Coda == 2,3
    incCoda
; Measure 7,8
.redefine BEAT 1	;free
	beat ou c 28 od g 28-3
.redefine BEAT 28	;eighth

    octave 5
	duty $03
	env $0 $00
	beat ds 1 c 1
	beat od b 1 ou c 1 d 1 od b 1

    gotoCond 2+2 sanctuaryChannel0Measure9

    duty $02
    env $3 $00
    vibrato $01
	octave 6
.redefine BEAT 1	;free
	beat r 3
.redefine BEAT 28	;eighth

	goto sanctuaryChannel0Measure7

sanctuaryChannel0Measure9:
; Measure 9
    octave 5
    beat c 1 od b 1 ou c 1 od a 1
    beat fs 1 a 1 ou ds 1
.redefine NOTE_END_WAIT 4	
	beat d 1
.redefine NOTE_END_WAIT 0
; Measure 10
    beat d 1 f 1 gs 1 g 2
	beat f 1 d 1 od b 1
.redefine BEAT 1	;free
	beat r 3
.redefine BEAT 28	;eighth

    resetCoda
    incCoda
    goto sanctuaryChannel0Measure4
    cmdff


sanctuaryChannel4:
.redefine CHANNEL 4
.redefine HI_VOL $15	;$0f
.redefine LO_VOL $0f	;$08
.redefine LO_VOL_RATIO 1/8
.redefine NO_FIRST_VOL 0
.redefine BEAT 56	;quarter

; Measure 1-2
; 3/4
	octave 2
	duty $15
.redefine NOTE_END_WAIT 4
.rept 2
	beat gs 1 g 2
.endr
; Measure 3-4
; 4/4
	beat gs 1 g 3 r 4

sanctuaryChannel4Measure5:
; Measure 5
	octave 3
	beat c 2 od b 2
; Measure 6
	beat as 2 a 2
; Measure 7-8
.rept 2
	beat gs 2 g 2
.endr
; Measure 9
	beat fs 2 fs 2
; Measure 10
	beat g 2 g 2
.redefine NOTE_END_WAIT 0
	goto sanctuaryChannel4Measure5
sanctuaryChannel6:
    cmdff