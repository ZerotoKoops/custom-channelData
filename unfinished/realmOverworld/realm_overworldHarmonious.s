realmOverworldStart:
realmOverworldChannel1:
	setCoda $00
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
	octave 4
	beat g 36 e 12 a 36 g 6 a 6
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

	gotoCond $01 realmOverworldChannel1Measure44

realmOverworldChannel1Measure43:
; Measure 43
	beat ds 84
.redefine NOTE_END_WAIT 0
	duty $01
	vol $6
	beat od od b 12

	setCoda $01
	goto realmOverworldChannel1Measure6

realmOverworldChannel1Measure44:
; Measure 44
	octave 5
	beat ds 48 r 48
; Measure 45
	duty $02
	vibrato $01
	beat ds 64 od gs 16 as 16
; Measure 46
	beat ou ds 72 c 24
; Measure 47
	beat ds 64 f 16 g 16
; Measure 48
	beat ds 91 r 5
; Measure 49
	beat ds 64 od gs 16 as 16
; Measure 50
	beat ou ds 48 c 24 od as 24
; Measure 51
	beat f 72 ds 12
	duty $03
	vol $2
	beat od g 12
	duty $02
	vol $5
; Measure 52
	beat ou ds 24 f 24 c 3 d 3 c 42

; Measure 53
	duty $00
;	vibrato $01
	beat ou c 64 od f 16 g 16
; Measure 54
	beat ou c 48 d 24 c 24
; Measure 55
	beat od b 72 g 24
; Measure 56
	beat ou g 48 fs 24 g 24
; Measure 57
	beat d 64 c 16 od as 16
; Measure 58
	beat a 48 g 48
; Measure 59
	beat ou f 64 ds 16 d 16
; Measure 60
	beat c 48 od as 24 a 24
; Measure 61
	beat g 48 r 16
	duty $02
	vibrato $00
	vol $4
	beat g 16 d 16
; Measure 62
	beat od b 96
; Measure 63
	beat a 84 g 6 a 6
; Measure 64
	beat b 48
	vibrato $e2
	beat ou ou d 48

; Measure 65-66
	beat g 192
	vibrato $00
	vol $4
	duty $03
	octave 3
; Measures 67-68
.rept 2
	beat r 24 cs 12 r 24 cs 12 r 24
.endr
; Measure 69-70
.rept 2
	beat r 24 g 12 r 24 g 12 r 24
.endr
; Measure 71
	beat r 24 cs 12 r 24 cs 12 r 24
; Measure 72
	beat r 24 cs 12 r 24 cs 12 r 12
	duty $01
	vol $6
	beat b 12

	setCoda $00 
	goto realmOverworldChannel1Measure6
	cmdff

realmOverworldChannel0:
	setCoda $00
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
; Measures 12-13
	beat fs 12 r 24 fs 12 r 48
.endr
; Measure 14
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
; Measure 38-42
	duty $01
	vol $4
.rept 10
	beat r 12 fs 6 b 12 fs 6 b 12
.endr

	gotoCond $01 realmOverworldChannel0Measure44

realmOverworldChannel0Measure43:
; Measure 43
.rept 2
	beat r 12 fs 6 b 12 fs 6 b 12
.endr

	setCoda $01
	goto realmOverworldChannel0Measure6

realmOverworldChannel0Measure44:
; Measure 44
	beat r 12 fs 6 b 12 fs 6 b 12
	duty $03
	vol $2
	beat od od b 24 fs 24
; Measure 45
	beat f 12 gs 12 ou gs 12 ou c 12 f 24 ds 12 c 12
; Measure 46
	beat c 48 od gs 16 ds 16 c 16
; Measure 47
	beat as 24 ou c 24 ds 36 c 12
; Measure 48
	beat od as 48 as 16 g 16 ds 16
; Measure 49
	beat ou cs 24 f 48 ds 12 f 12
; Measure 50
	beat c 36 od f 12 gs 16 f 16 cs 16
; Measure 51
	beat ds 24 g 12 od as 36 ou ds 12 as 12
; Measure 52
	beat ou c 12 od as 12 f 12 c 12 od as 12 ou c 12 od f 12 ou f 12

; Measure 53
	duty $01
	beat od a 24 ou f 24 r 12 f 12 d 12 f 12
; Measure 54
	beat od f 24 ou f 24 a 16 c 16 f 16
; Measure 55
	beat a 24 ou d 24 e 36 d 12
; Measure 56
	beat od g 24 d 24 g 16 d 16 g 16
; Measure 57
	beat as 24 g 31 r 5 g 12 ds 12 g 12
; Measure 58
	beat ds 24 d 12 g 12 ou d 16 od as 16 g 16
; Measure 59
	beat c 24 a 24 f 24 c 12 a 12
; Measure 60
	beat f 24 d 12 g 12 ou c 12 od a 12 f 12 c 12
; Measure 61
	vol $4
	duty $02
	beat ou c 12 od g 12 d 12 r 36 c 12 d 12
; Measure 62
	beat r 12 g 12 d 12 r 24 g 12 d 12 g 12
; Measure 63
	beat r 12 g 12 d 12 r 28 g 16 d 16
; Measure 64
	beat r 12 g 12 d 12 od g 12
	beat ou ou d 6 od g 6 a 6 b 6 ou c 6 d 6 e 6 fs 6

; Measure 65
	beat b 48
	beat r 12
.rept 2
	beat g 6 b 6 r 6
.endr 
; Measure 66
	beat r 12 g 6 b 6 r 6
	beat g 6 b 6 r 18
.rept 2
	beat g 6 b 6 r 6
.endr
; Measure 67
	beat r 12 a 6 ou cs 6 r 6
	beat od a 6 ou cs 6 r 18
.rept 2
	beat od a 6 ou cs 6 r 6
.endr

; Measure 68
	beat r 12 od a 6 ou d 6 r 6
	beat od a 6 ou cs 6 r 18
.rept 2
	beat od a 6 ou cs 6 r 6
.endr
; Measures 69-70
	octaved
	vol $5
.rept 2
	beat r 12 g 6 b 6 r 6
	beat g 6 b 6 r 18
	.rept 2
		beat g 6 b 6 r 6
	.endr
.endr
; Measure 71
	beat r 12 a 6 ou cs 6 r 6
	beat od a 6 ou cs 6 r 18
.rept 2
	beat od a 6 ou cs 6 r 6
.endr	
; Measure 72
	beat r 12 od a 6 ou d 6 r 6
	beat od a 6 ou cs 6 r 18
.rept 2
	beat od a 6 ou cs 6 r 6
.endr

	setCoda $00
	goto realmOverworldChannel0Measure6
	cmdff

realmOverworldChannel4:
	setCoda $00
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
; Measure 42
	beat b 24
	duty $0f
	beat ou b 12
	duty $0e
	beat fs 24
	duty $0f 
	beat b 12 r 24
	duty $0e

	gotoCond $01 realmOverworldChannel4Measure44

realmOverworldChannel4Measure43:	
; Measure 43
	beat od b 24
	duty $0f
	beat ou b 12
	duty $0e
	beat fs 24
	duty $0f
	beat od fs 12
	duty $0e
	beat b 24
	
	setCoda $01
	goto realmOverworldChannel4Measure6

realmOverworldChannel4Measure44:
	octave 2
; Measure 44
	beat b 24
	duty $0f
	beat ou b 12
	duty $0e
	beat od b 12
	duty $15
	beat ou b 24 a 24
; Measure 45
	beat gs 91 r 5
; Measure 46
	beat gs 36 c 36 od f 24
; Measure 47
	beat ou c 36 od g 36 c 60
; Measure 48
	beat g 36 ou c 24
; Measure 49
	beat cs 36 od gs 36 cs 60
; Measure 50
	beat gs 36 ou cs 24
; Measure 51
	beat ds 36 od as 36 ds 60
; Measure 52
	beat as 36 ou ds 24

; Measure 53
	beat d 36 od a 36 d 60
; Measure 54
	beat a 36 ou d 24
; Measure 55
	beat e 36 od b 36 e 60
; Measure 56
	beat b 36 ou e 24
; Measure 57
	beat ds 36 od as 36 ds 60
; Measure 58
	beat as 36 ou ds 24
; Measure 59
	beat f 36 c 36 od f 60
; Measure 60
	beat ou c 36 od f 24
; Measure 61
	beat g 36 ou d 36 g 24
; Measure 62
	beat a 36 d 36 od g 19 r 5
; Measure 63
	beat g 36 ou d 48 g 12
; Measure 64
	beat g 36 ou d 24 od d 12
	duty $0e
	beat g 24

; Measures 65-72
	octave 2
.rept 2
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
	.rept 2
		beat e 24
		duty $0f
		beat ou a 12
		duty $0e
		beat e 24
		duty $0f
		beat a 12 r 24 od
		duty $0e
	.endr	
.endr

	setCoda $00
	goto realmOverworldChannel4Measure6
	cmdff

realmOverworldChannel6:
	octave 2
	.redefine BEAT 1
; Measure 1-4
	beat r 192
	vol $3
	beat $2a 4 $2a 4 $2a 4
; Measure 5
	vol $5
	beat $27 6 
	vol $3
.rept 3
	beat $2a 6
.endr
.rept 2
	vol $5
	beat $2a 6 
	vol $3
	.rept 3
		beat $2a 6
	.endr
.endr
	vol $5
	beat $2a 6 
	vol $3
	beat $2a 6
.rept 3
	beat $2a 4
.endr
realmOverworldChannel6ResetCoda_0:
	setCoda $00
realmOverworldChannel6Measure6:
; Measure 6-43
.rept 3
	vol $5
	beat $2a 6 
	vol $3
	.rept 3
		beat $2a 6
	.endr
.endr
	vol $5
	beat $2a 6 
	vol $3
	beat $2a 6
.rept 3
	beat $2a 4
.endr
	gotoCond 75 realmOverworldChannel6Measure44
	setCoda $01
	goto realmOverworldChannel6Measure6

realmOverworldChannel6Measure44:
	setCoda $00
; Measure 44
.rept 2
	vol $5
	beat $2a 6 
	vol $3
	.rept 3
		beat $2a 6
	.endr
.endr
	vol $5
	beat $2a 3 
	vol $3
.rept 15
	beat $2a 3
.endr
realmOverworldChannel6Measure45:
; Measure 45
	vol $3
	beat r 24 $2a 24
	vol $5
	beat $2a 24
	vol $3
	beat $2a 24
; Measure 46
	beat r 24 $2a 12 $2a 12
	vol $5
	beat $2a 24
	vol $3
	beat $2a 24	

	gotoCond 09 realmOverworldChannel6ResetCoda_1
	setCoda $01
	goto realmOverworldChannel6Measure45

realmOverworldChannel6ResetCoda_1:
	setCoda $00
realmOverworldChannel6Measure65:
; Measure 6-43
.rept 3
	vol $5
	beat $2a 6 
	vol $3
	.rept 3
		beat $2a 6
	.endr
.endr
	vol $5
	beat $2a 6 
	vol $3
	beat $2a 6
.rept 3
	beat $2a 4
.endr
	gotoCond 06 realmOverworldChannel6ResetCoda_0
	setCoda $01
	goto realmOverworldChannel6Measure65

	cmdff