kassThemeStart:
; BPM 150, Quarter = 12*2, 3/4 time
kassThemeChannel1:
	.redefine BEAT 2
.redefine NO_FIRST_VOL 0
	duty $02
kassThemeChannel1Measure1:
	octave 4
; Measure 1
	vol $0
	beat r 6
	vol $6
	beat e 9 f 3 e 3 ds 3 e 6 ou c 6
; Measure 2
	beat od b 36
; Measure 3
	beat r 6 e 9 f 3 e 3 ds 3 e 6 b 6
; Measure 4
	beat a 36
; Measure 5
	beat r 6 a 9 b 3 a 3 gs 3 a 6 ou g 6
; Measure 6
	beat f 3 r 15 f 3 r 3
	.redefine NOTE_END_WAIT 9	
	beat f 12
; Measure 7
	beat f 12 g 12 f 12
	.redefine NOTE_END_WAIT 0
; Measure 8
	beat f 12 e 30 r 12
; Measure 9
	vol $8
	beat c 6 d 6 e 3 r 3
; Measure 10
	beat e 18 d 3 r 3 d 18 r 12
; Measure 11
	beat d 6
	beat e 6 d 6
; Measure 12
	beat e 1 d 17 c 3 r 3 c 21 
; Measure 13
	octave 4
	beat r 15 a 6 b 6
; Measure 14
	vol $9
	beat ou c 18 d 6 c 12
; Measure 15
	vol $8
	.redefine NOTE_END_WAIT 9
	beat od b 12 ou e 12 c 12
	.redefine NOTE_END_WAIT 0

; Measure 16
	octave 4
	beat a 36

	goto kassThemeChannel1Measure1
	cmdff

kassThemeChannel0:
	.redefine BEAT 2

kassThemeChannel0Measure1:
; Measure 1
	vol $0
	beat r 48
; Measure 2
	vol $4
	octave 4
	duty $02
	beat f 3 r 9 a 12
; Measure 3
	beat r 12 gs 3 r 9 gs 6 r 18
; Measure 4
	beat c 3 r 9 e 12
; Measure 5
	beat r 12 g 3 r 9 g 12
; Measure 6
	vol $6
	octave 5
	beat d 3 r 15 d 3 r 3
	.redefine NOTE_END_WAIT 9	
	beat d 12
; Measure 7
	beat d 12 e 12 d 12
	.redefine NOTE_END_WAIT 0
; Measure 8
	beat d 12 c 30
; Measure 9
	beat r 6
	vol $4
	.redefine NOTE_END_WAIT 9
	beat od g 12 e 12
	.redefine NOTE_END_WAIT 0
; Measure 10
	vol $8
	octave 5
	beat c 18 od as 3 r 3 as 21 r 3
; Measure 11
	vol $4
	beat f 3 r 9 f 6 r 6
; Measure 12
	vol $8
	octave 5
	beat c 1 od b 17 a 3 r 3 a 18 r 6
; Measure 13
	vol $4
	.redefine NOTE_END_WAIT 9
	beat g 12 g 12
	.redefine NOTE_END_WAIT 2
; Measure 14
	vol $8
	beat a 18 a 6 a 12
; Measures 15-16
	beat gs 6 r 66
	goto kassThemeChannel0Measure1
	cmdff

kassThemeChannel4:
	.redefine BEAT 6

; Measure 1
	beat r 12
kassThemeChannel4Measure2:
; Measure 2
	octave 2
	duty $0e
	beat b 4

	octave 4
	duty $0f
	beat d 1 r 3 f 4
; Measure 3
	octave 2
	duty $0e
	beat e 4
	
	octave 4
	duty $0f
	beat d 1 r 3 c 4
; Measure 4
	octave 2
	duty $0e
	beat a 4
	
	octave 3
	duty $0f
	beat a 1 r 3 ou c 4
; Measure 5
	octave 2
	duty $0e
	beat a 4
	
	octave 4
	duty $0f
	beat cs 1 r 3 e 4
; Measure 6
	octave 3
	duty $0a
	beat d 4
	
	octave 4
	duty $0e
	beat d 1 r 3 f 4
; Measure 7
	octave 2
	duty $0a
	beat g 4
	
	octave 4
	duty $0e
	beat f 1 r 3 d 4
; Measure 8
	octave 3
	duty $0a
	beat c 4
	
	octave 4
	duty $0e
	beat g 1 r 3 e 4
; Measure 9
	octave 3
	duty $0a
	beat c 4
	
	octave 4
	duty $0e
	beat e 1 r 3 c 4
; Measure 10
	octave 2
	duty $0a
	beat as 4
	
	octave 4
	duty $0e
	beat f 1 r 3 d 4
; Measure 11
	octave 2
	duty $0a
	beat as 4
	
	octave 4
	duty $0e
	beat d 1 r 3 od as 4
; Measure 12
	octave 2
	duty $0a
	beat a 4
	
	octave 4
	duty $0e
	beat c 1 r 3 e 4
; Measure 13
	octave 2
	duty $0a
	beat g 4
	
	octave 4
	duty $0e
	beat c 1 r 3 e 4
; Measure 14
	octave 3
	duty $0a
	beat f 4
	
	octave 4
	duty $0e
	beat c 1 r 3 f 4
; Measure 15
	octave 3
	beat e 1 r 11
; Measure 16
	octave 2
	beat a 4 ou e 4 c 4
; Measure 17
	beat od a 2 r 10

	goto kassThemeChannel4Measure2
	cmdff
	
kassThemeChannel6:
	cmdff