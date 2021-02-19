zorasDomainStart:
; Tempo: 75
; Quarter Note Length: 48
zorasDomainChannel1:
	octave 5
	.redefine BEAT 2
	vibrato $00
	duty $00
	vol $2
	env $3 $00
; Measure 1
	beat b 72
; Measure 2
	beat a 72
; Measure 3
	beat g 64 r 2 g 30
; Measure 4
	vibrato $e3
	beat fs 96


zorasDomainChannel1Measure5:
	octave 5
	vibrato $02
;	duty $02
; Measure 5
	beat d 96
; Measure 6
	beat fs 48 d 48
; Measures 7-8
.redefine BEAT 1
	beat e 255 e 129
.redefine BEAT 2

; Measures 9
	beat d 96
; Measures 10
	beat fs 48 d 48
; Measures 11-12
	beat e 120 r 12 e 58 r 2

; Measures 13
	beat d 96
; Measures 14
	beat fs 48 d 48
; Measures 15-16
.redefine BEAT 1
	beat e 255 e 129
.redefine BEAT 2

; Measure 17
	beat d 96
; Measure 18
	beat fs 48 d 48
; Measures 19-21
.redefine BEAT 1
	beat e 255 e 81 r 24
	octave 5
	beat od a 3 b 3 ou c 3 d 3 e 3 f 3 g 3 a 195
.redefine BEAT 2

; Measure 22
	beat gs 96
; Measure 23
	beat g 96
; Measures 24-25
	beat fs 72 r 12
.redefine BEAT 1
	beat od a 3 b 3 ou c 3 d 3 e 3 f 3 g 3 a 195
.redefine BEAT 2
; Measure 26
	beat gs 96
; Measure 27
	beat g 96
; Measures 28
	beat fs 96

	goto zorasDomainChannel1Measure5
	cmdff

zorasDomainChannel0:
	octave 4
	.redefine BEAT 2

	vibrato $00
	duty $01
	env $0 $07
	vol $6
; Measure 1
	beat b 6 g 6 d 6 g 6 d 6 od b 6 g 6 d 30
; Measure 2
	octave 4
	beat a 6 f 6 c 6 f 6 c 6 od a 6 f 6 c 30	
; Measures 3-4
	octave 4
	beat g 6 ds 6 od as 6 ou ds 6
	beat od as 6 g 6 ds 6 od as 30 r 120

zorasDomainChannel0Measure5:
	octave 3

; Measure 5
	beat r 24 b 6 ou d 6 a 6 fs 18
	beat d 18 od b 18
; Measure 6
	beat r 12 ou d 6 od b 6 ou d 6 od b 6
	beat ou a 6 fs 18 d 18 od b 18
; Measure 7
	beat r 18 ou c 6 e 6 g 12 e 30 r 36
; Measure 8
	beat od b 6 ou c 6 od b 6 ou c 6 d 6
	beat e 12 c 6 d 6 e 6 fs 6 g 6 fs 6 e 6
; Measure 9
	beat fs 24 r 36 od b 6 ou d 6 a 6 fs 12 od b 6
; Measure 10
	beat ou d 24 r 24 b 18 fs 12 g 6 a 6 b 6
; Measure 11
	beat fs 18 d 18 e 36 r 48
; Measure 12
	beat ou e 24 r 6 od b 6 a 6 g 6 a 6 b 12 g 6
; Measure 13
	beat d 24 r 36 od a 6 b 6 ou d 6 fs 12 od
.rept 3
	beat a 6
; Measure 14
	beat b 6 ou d 6 fs 6 od
.endr
	beat a 6 ou d 6 fs 12 od b 6
; Measure 15
	beat ou c 12 e 6 b 54 r 36
; Measure 16
	beat ou d 12
	beat od b 8 g 8 e 8 g 8 e 8 c 8 fs 8 e 8 fs 8
; Measure 17
	beat e 2 fs 2 e 2 d 54 r 48
; Measure 18
	beat od b 6 ou d 6 fs 6 a 12 r 12
	beat fs 6 d 6 od a 30
; Measure 19
	beat r 8 b 8 ou d 8 b 12 fs 6 e 30 r 30
; Measure 20
	beat b 6 g 6 e 6 fs 6 d 6 od a 12 r 6
	beat a 6 b 6 ou d 6 od b 18 r 6

.rept 2
	octave 4
; Measures 21,25
	beat a 12 od b 6 ou d 6 fs 6 a 12 od b 6
	beat ou a 6 od b 6 ou d 6 fs 12 a 12 r 6
; Measures 22,26
	beat gs 12 od as 6 ou cs 6 e 6 gs 12 e 12
	beat od a 6 ou cs 6 e 6 gs 18 e 6
; Measures 23,27
	beat g 12 od a 6 ou c 6 e 6 g 12 od a 4 r 2
	beat a 12 ou e 6 c 6 e 6 g 12 r 12
; Measure 24,28
	beat fs 6 od a 6 b 6 ou c 6 fs 12 c 6
	beat fs 6 od a 6 b 6 ou c 6 d 6 fs 12 r 6
.endr

	goto zorasDomainChannel0Measure5
	cmdff

zorasDomainChannel4:
	octave 4
	.redefine BEAT 2	
	vibrato $00
	duty $0f
	vol $3
	
; Measure 1
	beat d 72
; Measure 2
	beat c 72
; Measure 3
	beat od as 64 r 2 as 30
; Measure 4
	vibrato $e3
	beat a 96

zorasDomainChannel4Measure5:
	octave 3
	vibrato $02
	duty $0f
; Measure 5
	beat b 96
; Measure 6
	beat ou d 48 od b 48
; Measures 7-8
.redefine BEAT 1
	beat ou c 255 c 129 od
.redefine BEAT 2

; Measure 9
	beat b 96
; Measure 10
	beat ou d 48 r 6 od b 42
; Measures 11-12
.redefine BEAT 1
	beat ou c 255 c 129 od
.redefine BEAT 2

.rept 2
; Measures 13,17
	beat b 96
; Measures 14,18
	beat ou d 48 od b 48
; Measures 15-16,19-20
.redefine BEAT 1
	beat ou c 255 c 129 od
.redefine BEAT 2
.endr

.rept 2
; Measure 21,25
	beat d 96
; Measure 22,26
	beat cs 96
; Measure 23,27
	beat c 94 r 2
; Measure 24,28
	beat c 96
.endr

	goto zorasDomainChannel4Measure5
	cmdff

zorasDomainChannel6:
	.redefine BEAT 2
; Measures 1-4
	wait1 255
	wait1 255
	wait1 162
zorasDomainChannel6Measure5:
	vol $4
.rept 8
; Measure 5
	.rept 2
		beat $2a 12 $24 6 $24 6
	.endr	
	.rept 2
		beat $2a 12 $24 6 $2a 6
	.endr
; Measure 6
	beat $2a 12 $24 6 $24 6
	beat r 12 $24 6 $24 6
	beat r 12 $24 6 r 18
	beat $24 6 $2a 6
.endr
.rept 2
; Measure 21,23
	beat $2a 24 $2a 24
	beat $2a 18 $2a 6 $2a 18 $2a 6
; Measure 22,24
	beat $2a 12 r 84
.endr
.rept 2
; Measure 25,27
	.rept 2
		beat $2a 12 $24 6 $24 6
	.endr	
	.rept 2
		beat $2a 12 $24 6 $2a 6
	.endr
; Measure 26,28
	beat $2a 12 $24 6 $24 6
	beat r 12 $24 6 $24 6
	beat r 12 $24 6 r 18
	beat $24 6 $2a 6
.endr

	goto zorasDomainChannel6Measure5
	cmdff