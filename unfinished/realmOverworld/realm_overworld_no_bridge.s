realmOverworldStart:
realmOverworldChannel1:

	octave 4
	.redefine BEAT 1
; Measure 1
	vol $0
	wait1 12
; Measure 2
	duty $01
	vol $6
	beat gs 32 fs 8 e 8 ds 24 od b 24
; Measure 3
	beat ou b 32 a 8 g 8 fs 36 ou d 12
; Measure 4
	beat e 12 r 12
	duty $02
	vol $4
	beat od od g 12 r 24 g 12 r 24
; Measure 5
	beat r 24 g 12 r 24 g 12 r 12
	duty $01
	vol $6
	beat b 12
realmOverworldChannel1Measure6:
;	vibrato $00
; Measure 6
	beat ou g 36 e 12 a 36 g 6 a 6
; Measure 7
	beat b 24 ou d 24 od b 16 a 16 b 16
; Measure 8
	vibrato $e1
	beat d 96 
	vibrato $00
; Measure 9
	duty $02
	vol $4
	beat r 24 d 12 r 24 d 12 r 12 
	duty $01
	vol $6
	beat od b 12
; Measure 10
	beat ou g 36 e 12 a 36 g 6 a 6
; Measure 11
	beat b 36 ou d 12 od b 16 a 16 g 16
; Measure 12
	vibrato $e1
	beat ou d 96 
	vibrato $00
; Measure 13
	duty $02
	vol $4		
	beat r 24 od od d 12 r 24 d 12 r 12
	vol $6
	beat b 12
; Measure 14
	beat ou g 36 e 12 a 36 g 6 a 6
; Measure 15
	beat b 24 ou d 24 od b 16 a 16 b 16
; Measures 16
	vibrato $e1
	beat d 96 
	vibrato $00
; Measure 17
	vol $4
	beat r 24 d 12 r 24 d 12 r 12 
	duty $01
	vol $6
	beat od b 12
; Measure 18
	beat ou g 36 e 12 a 36 g 6 a 6
; Measure 19
	beat b 36 ou d 12 od b 16 a 16 g 16
; Measure 20
	duty $02
	vibrato $c2
	beat ou e 84
	vibrato $00
	beat d 6 c 6
; Measure 21
	vibrato $a2
	beat od b 48
	vibrato $00	
	beat a 24 as 24
; Measure 22
	vibrato $c2
	beat b 84 
	vibrato $00	
	beat a 6 g 6
; Measure 23
	beat e 48 g 24 b 24

; Measure 24
	vibrato $a1
	beat ou cs 48	
	vibrato $00		
	beat fs 36 od b 6 a 6
; Measure 25
	beat b 24 ou cs 24 e 24 gs 24
; Measure 26
	vibrato $c2
	beat a 78
	vibrato $00
	beat r 6 a 6 b 6
; Measure 27
	vibrato $a1
	beat gs 48
	vibrato $00
	duty $01
	beat cs 24 gs 24

.redefine NOTE_END_WAIT 5
; Measure 28
	beat a 48 a 16 gs 16 fs 16
; Measure 29
	beat gs 48 cs 24 e 24
; Measure 30
	beat fs 64 od gs 16 ou d 16
; Measure 31
	beat cs 48 c 24 cs 24
; Measure 32
	beat a 48 a 16 gs 16 fs 16
; Measure 33
	beat gs 48 cs 24 e 24
; Measures 34-35
	vibrato $e1
	beat b 144
	vibrato $00
	duty $03
	beat b 16 a 16 g 16

; Measure 36-37
	beat fs 96 ds 96
; Measure 38
	vol $5
	beat cs 90 
.redefine NOTE_END_WAIT 0
	beat cs 6
.redefine NOTE_END_WAIT 5
; Measure 39-41
	beat ds 96 e 96 ds 96
; Measure 42
	beat cs 90 
.redefine NOTE_END_WAIT 0
	beat cs 6
.redefine NOTE_END_WAIT 5
; Measure 43
	beat ds 84
.redefine NOTE_END_WAIT 0
	duty $01
	vol $6
	beat od od b 12

	goto realmOverworldChannel1Measure6
	cmdff

realmOverworldChannel0:
	octave 3
	.redefine BEAT 1
; Measure 1
	vol $0
	wait1 12
; Measure 2
	duty $03
	vol $6
	beat cs 48 ds 48
; Measure 3
	beat cs 5 e 43 d 5 fs 43
; Measure 4
	beat ou g 12 r 12
	vol $4
	beat od e 12 r 24 e 12 r 48
; Measure 5
	beat e 12 r 24 e 12 r 24
realmOverworldChannel0Measure6:
; Measures 6-11
	beat r 24 g 12 r 24 g 12 r 48
.rept 5
	beat g 12 r 24 g 12 r 48
.endr
.rept 2
; Measures 12
	beat fs 12 r 24 fs 12 r 48
.endr
; Measures 14
	beat g 12 r 24 g 12 r 48
; Measure 15
	beat g 12 r 24 g 12 r 36
; Measure 16
	duty $01
	vol $6
	beat ou e 6 fs 6 g 6 a 6 g 6 r 18
	beat fs 6 g 6 a 6 b 6 a 6 r 18
; Measure 17
	beat g 6 a 6 b 6 ou c 6 od b 6 r 18
	beat g 6 a 6 fs 6 g 6 e 6 od
; Measure 18
	duty $03
	vol $4
	beat r 30 g 12 r 24 g 12 r 48
; Measure 19
	beat g 12 r 24 g 12 r 24
; Measure 20
	duty $02
	vol $6
	vibrato $c2
	beat ou g 84
	vibrato $00
	beat r 12
; Measure 21
.redefine NOTE_END_WAIT 8
	vibrato $a2
	beat g 48 
	vibrato $00
	beat g 24 g 24
.redefine NOTE_END_WAIT 0
; Measure 22
	vibrato $c2
	beat ds 84 r 12
	vibrato $00
; Measure 23
	duty $03
	vol $4
	beat od e 24 od b 12 r 12
.redefine NOTE_END_WAIT 8
	duty $02
	vol $6
	beat ou ou e 24 g 24
.redefine NOTE_END_WAIT 0

; Measure 24
	vibrato $a1
	beat fs 48 r 12
	vibrato $00
	duty $03
	vol $4
	beat od od a 12 r 48
; Measure 25
	beat ou cs 12 r 24 cs 12 r 48
; Measure 26
	duty $02
	vol $6
	beat ou ou d 24 cs 24 od a 24
; Measure 27
	beat b 24 gs 24
.redefine NOTE_END_WAIT 3
	duty $00
	beat fs 24 f 24

; Measure 28
	beat ou cs 40 r 8 cs 16 od b 16 a 16
; Measure 29
	beat ou cs 48 od e 24 gs 24
; Measure 30
	beat b 64 e 16 gs 16
; Measure 31
	beat a 48 a 24 a 24
; Measure 32
	beat ou cs 48 cs 16 od b 16 a 16
; Measure 33
	beat ou cs 48 od e 24 gs 24
; Measure 34
	vibrato $e1 
	beat ou g 72
	beat fs 24
; Measure 35
	beat e 48
	vibrato $00
.redefine NOTE_END_WAIT 0
	duty $03
	beat r 24 od od od a 24

; Measure 36-37
	beat ou ou b 96 fs 96
; Measure 38-43
	duty $01
	vol $4
.rept 12
	beat r 12 fs 6 b 12 fs 6 b 12
.endr

	goto realmOverworldChannel0Measure6
	cmdff

realmOverworldChannel4:
	octave 2
	.redefine BEAT 1
; Measure 1 (pickup)
	duty $0e
	beat e 4 f 4 g 4
; Measure 2
	beat a 48 b 48
; Measure 3
	beat g 48 a 48
; Measures 4-5
.rept 2
	beat e 24
	duty $0f
	beat ou b 12
	duty $0e
	beat e 24
	duty $0f
	beat b 12 r 24 od
	duty $0e
.endr
realmOverworldChannel4Measure6:
; Measures 6-7
.rept 2
	beat e 24
	duty $0f
	beat ou b 12
	duty $0e
	beat e 24
	duty $0f
	beat b 12 r 24 od
	duty $0e
.endr
; Measures 8-9
.rept 2
	beat g 24
	duty $0f
	beat ou b 12
	duty $0e
	beat d 24
	duty $0f
	beat b 12 r 24 od
	duty $0e
.endr
; Measures 10-11
.rept 2
	beat e 24
	duty $0f
	beat ou b 12
	duty $0e
	beat e 24
	duty $0f
	beat b 12 r 24 od
	duty $0e
.endr
; Measures 12-13
.rept 2
	beat b 24
	duty $0f
	beat ou b 12
	duty $0e
	beat od fs 24
	duty $0f
	beat ou b 12 r 24 od
	duty $0e
.endr
; Measures 14-15
.rept 2
	beat e 24
	duty $0f
	beat ou b 12
	duty $0e
	beat e 24
	duty $0f
	beat b 12 r 24 od
	duty $0e
.endr
; Measures 16-17
.rept 2
	beat g 24
	duty $0f
	beat ou b 12
	duty $0e
	beat d 24
	duty $0f
	beat b 12 r 24 od
	duty $0e
.endr
; Measures 18-19
.rept 2
	beat e 24
	duty $0f
	beat ou b 12
	duty $0e
	beat e 24
	duty $0f
	beat b 12 r 24 od
	duty $0e
.endr
; Measure 20
	beat c 24
	duty $0f
	beat ou ou c 12
	duty $0e
	beat od c 24
	duty $0f
	beat ou c 12 r 24
	duty $0e
; Measure 21
	beat od od g 24
	duty $0f
	beat ou ou d 12
	duty $0e
	beat od d 24
	duty $0f
	beat ou d 12 r 24
	duty $0e
; Measure 22
	beat od od b 24
	duty $0f
	beat ou b 12
	duty $0e
	beat fs 24
	duty $0f
	beat b 12 r 24 od
	duty $0e
; Measure 23
	beat e 24
	duty $0f
	beat ou g 12
	duty $0e
	beat e 24
	duty $0f 
	beat g 12
	duty $0e
	beat od b 24

; Measure 24
	beat d 24
	duty $0f
	beat ou fs 12
	duty $0e
	beat d 24 
	duty $0f
	beat fs 12 r 24
	duty $0e
; Measure 25
	beat od a 24
	duty $0f
	beat ou a 12
	duty $0e
	beat e 24
	duty $0f 
	beat a 12
	duty $0e
	beat od a 24
; Measure 26
	beat ou cs 24
	duty $0f
	beat ou cs 12
	duty $0e
	beat od cs 24
	duty $0f 
	beat ou cs 12 r 24
	duty $0e
; Measure 27
	beat od od cs 24
	duty $0f
	beat ou cs 4 f 4 gs 4
	duty $0e
	beat od cs 12
	beat gs 12 cs 12 ou cs 24

; Measure 28
	beat od d 24
	duty $0f
	beat ou fs 12 
	duty $0e
	beat d 24
	duty $0f
	beat fs 12 r 24
	duty $0e
; Measure 29
	beat od a 18 b 6 r 12 ou cs 24
	duty $0f
	beat a 12
	duty $0e 
	beat cs 24
; Measure 30
	beat od e 24
	duty $0f
	beat ou b 12
	duty $0e 
	beat od b 24
	duty $0f
	beat ou b 12 r 24
	duty $0e
; Measure 31
	beat od fs 18 gs 6 r 12 a 24 
	duty $0f
	beat ou a 12
	duty $0e
	beat od a 24
; Measure 32
	beat d 24
	duty $0f
	beat ou fs 12
	duty $0e
	beat d 24
	duty $0f 
	beat fs 12 r 24
	duty $0e
; Measure 33
	beat od a 18 b 6 r 12 ou cs 24
	duty $0f
	beat a 12
	duty $0e
	beat cs 24
; Measure 34
	beat od g 24
	beat $0f
	beat ou g 12
	duty $0e
	beat d 24
	duty $0f
	beat g 12 r 24
	duty $0e
; Measure 35
	beat od a 18 b 6 r 12 ou cs 24
	duty $0f
	beat od e 12
	duty $0e
	beat ou e 24 od

.rept 3
; Measures 36,38,40
	beat b 24
	duty $0f
	beat ou b 12
	duty $0e
	beat fs 24
	duty $0f 
	beat b 12 r 24
	duty $0e
; Measures 37,39,41
	beat od b 24
	duty $0f
	beat ou b 12
	duty $0e 
	beat fs 24
	duty $0f
	beat b 12
	duty $0e
	beat od fs 24
.endr
; Measure 41
	beat b 24
	duty $0f
	beat ou b 12
	duty $0e
	beat fs 24
	duty $0f 
	beat b 12 r 24
	duty $0e
; Measure 42
	beat od b 24
	duty $0f
	beat ou b 12
	duty $0e
	beat fs 24
	duty $0f
	beat od fs 12
	duty $0e
	beat b 24

	goto realmOverworldChannel4Measure6
	cmdff

realmOverworldChannel6:
; Measure 1
	wait1 12
	vol $4
; Measures 2-5
	note $27 48
	note $27 36
	note $27 24
	note $27 24
	vol $3
	note $27 18
	note $27 18
.rept 18
	note $27 12
.endr
	vol $2
realmOverworldChannel6Measure6:
; Measure 6-end
	note $27 12

	goto realmOverworldChannel6Measure6
	cmdff