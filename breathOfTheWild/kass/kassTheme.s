kassThemeStart:
; BPM 150, Quarter = 12*2, 3/4 time
kassThemeChannel1:
	setCoda $00
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

	gotoCond $05 kassThemeChannel1Measure18 
	setCoda $01
	goto kassThemeChannel1Measure1

kassThemeChannel1Measure18:
; Measure 18
	vol $0
	beat r 24
	vol $6
	octave 4
	beat a 3 b 3 ou cs 3 d 3
; Measure 19
	vol $8
	beat e 18 od a 3 r 3 a 24
; Measure 20
	beat ou cs 12 e 12
; Measure 21
	beat g 12 f 18 e 6
; Measure 22
	beat f 36
; Measure 23
	beat d 18 od g 3 r 3 g 24
; Measure 24
	beat b 12 ou d 12
; Measure 25
	beat f 12 e 18 ds 6
; Measure 26
	beat e 36
; Measure 27
	octave 4
	beat a 18 b 6 ou c 12
; Measure 28
	beat od g 24 ou e 12
; Measure 29
	beat f 18 e 6 od b 12
; Measure 30
	octave 5
	beat c 18 d 6 e 12
; Measure 31
	beat od a 24 ou a 9 r 3
; Measure 32
	beat a 18 gs 6 a 12
; Measure 33
	beat gs 18 b 6 gs 12
; Measure 34
	beat e 36
; Measure 35
	octave 4
	beat a 18 e 3 r 3 e 12
; Measure 36
	beat r 12 a 6 b 6 ou cs 6 d 6 
; Measure 37
	.redefine NOTE_END_WAIT 3
	beat e 36
; Measure 38
	beat e 18
	.redefine NOTE_END_WAIT 0
	beat e 6 f 6 g 6
; Measure 39
	beat a 33 r 3
; Measure 40
	beat a 24 g 3 a 3 g 3 f 3
; Measure 41
	beat g 24 f 4 g 4 f 4
; Measure 42
	beat e 36
; Measure 43
	beat d 18 e 6 f 9 r 3
; Measure 44
	beat f 12 e 12 d 12
; Measure 45
	beat c 24 d 12
; Measure 46
	beat e 12 a 12 ou c 12
; Measure 47
	octave 5
	beat b 24 a 12
; Measure 48
	beat gs 18 fs 6 gs 12
; Measure 49-51
.rept 3
	beat a 33 r 3
.endr
; Measure 52
	beat e 36

	setCoda $00
	goto kassThemeChannel1Measure1
	cmdff

kassThemeChannel0:
	setCoda $00
	.redefine BEAT 2

kassThemeChannel0Measure1:
; Measure 1
	vol $0
	beat r 48
	gotoCond $06 kassThemeChannel0Measure19

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

	setCoda $01
	goto kassThemeChannel0Measure1

kassThemeChannel0Measure19:
; Measure 19 (minus quarter rest)
	vol $6
	octave 4
	beat cs 24 r 12
; Measure 20
	vol $8
	beat a 12 ou cs 12
; Measure 21
	beat d 12 d 18 cs 6
; Measure 22
	beat d 36
; Measure 23
	beat od b 12
	vol $6
	octave 3
	beat b 24 r 12
; Measure 24
	vol $8
	octave 4
	beat f 12 b 12
; Measure 25
	beat ou d 12 c 18 od b 6
; Measure 26
	beat ou c 36
; Measure 27
	beat od f 12
	vol $6
	beat od a 24
; Measure 28
	vol $8
	octave 4
	beat e 24 ou c 12
; Measure 29
	beat od b 24
	vol $6
	beat od gs 12
; Measure 30
	beat r 12 g 24
; Measures 31-32
.rept 2
	beat r 12 a 24
.endr
; Measures 33-34
	vol $8
	octave 4
	beat b 36 r 36
; Measure 35
	beat e 18 cs 3 r 3 cs 12 r 12
; Measure 36
	vol $6
	beat od a 24 r 12
; Measure 37
	vol $8
	octave 5
	beat cs 24
; Measure 38
	beat od a 12
	vol $6
	beat od g 24
; Measure 39
	vol $8
	octave 5
	beat c 36
; Measure 40
	vol $6
	octave 3
	beat r 12 g 24
; Measure 41
	beat r 12 as 24
; Measure 42
	beat r 12 b 24
; Measure 43
	octave 4
	beat b 4 a 4 f 4 od a 24
; Measure 44
	octave 5
	beat d 4 od b 4 gs 4 od b 24
; Measure 45
	octave 4
	beat a 4 e 4 c 4 d 4 f 4 a 4
	vol $8
	beat gs 12
; Measure 46
	beat g 12 ou e 9 r 3 e 12 r 12
; Measure 47
	vol $6
	octave 3
	beat a 24
; Measure 48
	vol $8
	octave 5
	beat e 12

	vol $6
	octave 3
	beat gs 24
; Measure 49
	octave 4
	beat r 12 e 21 r 3
; Measure 50
	beat r 12 fs 21 r 3
; Measure 51
	beat r 12 e 21 r 3
; Measure 52
	beat od a 36

	setCoda $00
	goto kassThemeChannel0Measure1
	cmdff

kassThemeChannel4:
kassThemeChannel4Measure1:
	setCoda $00
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

	gotoCond $05 kassThemeChannel4Measure18
; Measure 17
	beat od a 2 r 10

	setCoda $01
	goto kassThemeChannel4Measure2

kassThemeChannel4Measure18:
; Measure 18
	octave 3
	beat a 2 r 10 
; Measure 19
	octave 2
	duty $0a
	beat a 4

	octave 3
	duty $0e
	beat a 8
; Measure 20
	octave 2
	duty $0a
	beat a 4

	octave 4
	duty $0e
	beat cs 8
; Measure 21
	octave 3
	duty $0a
	beat d 4

	octave 4
	duty $0e
	beat d 8
; Measure 22
	octave 3
	duty $0a
	beat d 8 c 2 r 2
; Measure 23
	octave 2
	beat b 4

	octave 3
	duty $0e
	beat f 8
; Measure 24
	octave 2
	duty $0a
	beat g 4

	octave 3
	duty $0e
	beat b 8
; Measure 25
	octave 3
	duty $0a
	beat c 4

	octave 4
	duty $0e
	beat c 8
; Measure 26
	duty $0a
	beat od c 4 d 4 e 4
; Measure 27
	octave 2
	beat a 4

	octave 3
	duty $0e
	beat e 8
; Measure 28
	;duty $0a
	beat od g 12
; Measure 29
	beat gs 12
; Measure 30
	beat a 4 ou e 4 od g 4
; Measures 31-32
.rept 2
	octave 2
	duty $0a
	beat f 4

	octave 3
	duty $0e
	beat f 8
.endr
; Measure 33
	octave 2
	duty $0a
	beat e 4

	octave 3
	duty $0e
	beat gs 8
; Measure 34
	beat od e 4 fs 4 gs 4
; Measure 35
	octave 2
	duty $0a
	beat a 4

	octave 3
	duty $0e
	beat a 8
; Measure 36
	octave 2
	duty $0a
	beat a 4

	octave 3
	duty $0e
	beat e 8
; Measure 37
	octave 2
	duty $0a
	beat g 4

	octave 3
	duty $0e
	beat g 8
; Measure 38
	octave 2
	duty $0a
	beat g 4

	octave 3
	duty $0e
	beat e 8
; Measure 39
	octave 2
	duty $0a
	beat f 4

	octave 3
	duty $0e
	beat a 8
; Measure 40
	duty $0a
	beat od g 4 b 4 g 4
; Measure 41
	octave 2
	beat e 4

	octave 3
	duty $0e
	beat g 8
; Measure 42
	octave 2
	duty $0a
	beat a 4

	octave 3
	duty $0e
	beat e 8
; Measure 43
	octave 2
	duty $0a
	beat b 4

	octave 3
	duty $0e
	beat f 8
; Measure 44
	octave 2
	duty $0a
	beat gs 4

	octave 3
	duty $0e
	beat f 8
; Measure 45
	duty $0a
	beat od a 4 ou a 4 od gs 4
; Measure 46
	octave 2
	beat g 8 fs 4
; Measure 47
	octave 2
	duty $0a
	beat f 4

	octave 3
	duty $0e
	beat c 8
; Measure 48
	octave 2
	duty $0a
	beat e 4

	octave 3
	duty $0e
	beat d 8

	octave 2
	duty $0a
; Measures 49-50
.rept 2
	beat a 11 r 1
.endr
; Measure 51
	beat a 8 e 4
; Measure 52
	beat a 12

	goto kassThemeChannel4Measure1
	cmdff

kassThemeChannel6:
	cmdff