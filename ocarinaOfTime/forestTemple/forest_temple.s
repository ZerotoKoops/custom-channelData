
forestTempleStart:
; Tempo: 75
; Quarter Note Length: 48
forestTempleChannel1:
	octave 4
	.redefine BEAT 2
.redefine NO_FIRST_VOL 0
; Measures 1-2
	vol $0
	wait1 255
	wait1 129
forestTempleChannel1Measure3:
	octave 4
	vol $3
.redefine NOTE_END_WAIT 3
	vibrato $01
	duty $02
; Measure 3
	beat gs 48 b 48
; Measure 4
	beat a 96
; Measure 5
	beat gs 48 b 48
; Measure 6
	beat a 48 ou d 48
; Measure 7
.redefine NOTE_END_WAIT 0
	octave 5
	vibrato $02
	duty $01
; Measures 7-10
.rept 4
	.rept 2
		beat e 9 gs 3 r 12
	.endr
	.rept 2
		beat d 9 fs 3 r 12
	.endr
.endr
.redefine NOTE_END_WAIT 3
	vibrato $01
	duty $02
; Measure 11
	beat od a 48 ou d 48
; Measure 12
	beat od b 96

; Measure 13
.redefine NOTE_END_WAIT 0
	octave 5
	vibrato $02
	duty $01
; Measures 13-15
.rept 3
	.rept 2
		beat e 9 gs 3 r 12
	.endr
	.rept 2
		beat d 9 fs 3 r 12
	.endr
.endr

; Measure 16
.rept 2
	beat e 9 gs 3 r 12
.endr
.redefine NOTE_END_WAIT 3
	vibrato $01
	duty $02
	beat d 48
; Measure 17
	beat od b 96
; Measure 18
	beat a 48 b 48

; Measure 19
.redefine NOTE_END_WAIT 0
	octave 5
	vibrato $02
	duty $01
; Measures 19-22
.rept 4
	.rept 2
		beat e 9 gs 3 r 12
	.endr
	.rept 2
		beat d 9 fs 3 r 12
	.endr
.endr

; Measure 23
.redefine NOTE_END_WAIT 3
	vibrato $01
	duty $02
	beat od b 96
; Measure 24
	beat a 96

; Measure 25
.redefine NOTE_END_WAIT 0
	octave 5
	vibrato $02
	duty $01
; Measures 25-28
.rept 4
	.rept 2
		beat e 9 gs 3 r 12
	.endr
	.rept 2
		beat d 9 fs 3 r 12
	.endr
.endr

; Measure 29
.rept 2
	beat e 9 gs 3 r 12
.endr
.rept 2
	beat fs 9 a 3 r 12
.endr
; Measure 30
.rept 2
	beat e 9 gs 3 r 12
.endr
.rept 2
	beat d 9 fs 3 r 12
.endr
; Measures 31-32
.rept 2
	beat e 9 gs 3 r 12
	beat gs 7 r 2 gs 3 r 12 
	beat d 9 fs 3 r 12
	beat fs 7 r 2 fs 3 r 12 
.endr
; Measures 33-36
.rept 4
	.rept 2
		beat gs 7 r 2 gs 3 r 12 
	.endr
	.rept 2
		beat fs 7 r 2 fs 3 r 12 
	.endr
.endr
; Measures 37-40
.rept 4
	.rept 2
		beat e 7 r 2 e 3 r 12 
	.endr
	.rept 2
		beat d 7 r 2 d 3 r 12 
	.endr
.endr

	goto forestTempleChannel1Measure3
	cmdff

forestTempleChannel0:
	octave 4
	.redefine BEAT 2
; Measures 1-2
	vol $0
	wait1 255
	wait1 129
forestTempleChannel0Measure3:
	vol $3
.redefine NOTE_END_WAIT 3
	vibrato $01
	duty $03
; Measure 3
	beat e 48 gs 48
; Measure 4
	beat f 96
; Measure 5
	beat e 48 gs 48
; Measure 6
	beat f 48 a 48
; Measure 7
	duty $02
	beat gs 96
; Measure 8
	beat e 48 b 48
; Measure 9
	beat a 96
; Measure 10
	beat gs 48 b 48
; Measure 11
	duty $03
	beat f 48 a 48
; Measure 12
	beat gs 96
; Measure 13
	duty $02
	beat b 96
; Measure 14
	beat a 96
; Measure 15
	beat gs 48 b 48
; Measure 16
	beat a 48
	duty $03
	beat a 48
; Measure 17
	beat gs 96
; Measure 18
	beat f 48 a 48
; Measure 19
	duty $02
	beat gs 96
; Measure 20
	beat gs 48 b 48
; Measure 21
	beat a 48 a 48
; Measures 22-23
.rept 2
	beat gs 96
.endr
; Measure 24
	beat f 96
; Measure 25
	beat a 96
; Measure 26
	beat gs 48 b 48
; Measures 27-28
	vibrato $f3
	note a4 255
	note a4 129
	vibrato $01

; Measures 29-31
	wait1 255
	wait1 255
	wait1 66 
; Measure 32
	vol $4
	octave 3
	beat gs 48 b 48
; Measure 33
	beat a 48 ou d 48
; Measures 34-35
	vibrato $f3
	note gs3 255
	note gs3 129
	vibrato $01
; Measures 36-37
	wait1 255
	wait1 129
; Measure 38
	beat od a 48 ou d 48
; Measures 39-40
	vibrato $f3
	note gs3 255
	note gs3 129

	goto forestTempleChannel0Measure3
	cmdff

forestTempleChannel4:
	octave 3
	.redefine BEAT 2
; Measures 1-2
	wait1 255
	wait1 129
forestTempleChannel4Measure3:
.redefine NOTE_END_WAIT 3
	duty $14
	vibrato $01
; Measure 3
	beat e 48 e 48
; Measure 4
	beat e 96
; Measure 5
	beat e 48 e 48
; Measure 6
	beat e 48 f 48
; Measure 7
	beat e 96
; Measure 8
	beat e 48 e 48
; Measure 9
	beat f 96
; Measure 10
	beat e 48 e 48
; Measure 11
	beat e 48 f 48
; Measure 12
	beat e 96
; Measure 13
	beat gs 96
; Measure 14
	beat f 96
; Measure 15
	beat e 48 e 48
; Measure 16
	beat f 48 f 48
; Measure 17
	beat e 96
; Measure 18
	beat f 48 f 48
; Measure 19
	beat e 96
; Measure 20
	beat e 48 e 48
; Measure 21
	beat f 48 f 48			
; Measure 22-24
.rept 3
	beat e 96
.endr
; Measure 25
	beat f 96
; Measure 26
	beat e 48 e 48
; Measure 27
	vibrato $f3
	beat f 96
	vibrato $00
; Measure 28
	vibrato $f3
	beat e 96
	vibrato $01

; Measures 29-31
	wait1 255
	wait1 255
	wait1 66 
; Measure 32
	duty $0f
	beat e 48 e 48
; Measure 33
	beat f 48 f 48
; Measures 34-35
	vibrato $f3
	note e3 255
	note e3 129
	vibrato $01
; Measures 36-37
	wait1 255
	wait1 129
; Measure 38
	beat f 48 f 48
; Measures 39-40
	vibrato $f3
	note e3 255
	note e3 129

	goto forestTempleChannel4Measure3
	cmdff

forestTempleChannel6:
	.redefine BEAT 2
; Beat 1
	vol $1
	beat $2a 4 $2e 4 $27 4

	vol $2
	beat $2a 4
	vol $3
	beat $2e 4
	vol $4
	beat $27 4	
; Beat 2	
	vol $5
	beat $2a 4 $2e 4 $27 4

	vol $4	
	beat $2a 4 $2e 4 $27 4	
; Beat 3
	vol $3	
	beat $2a 4 $2e 4 $27 4

	vol $2	
	beat $2a 4 $2e 4 $27 4
; Beat 4
	vol $1
	beat $2a 4 $2e 4 $27 4	
		
	beat $2a 4 $2e 4 $27 4	

	goto forestTempleChannel6
	cmdff
