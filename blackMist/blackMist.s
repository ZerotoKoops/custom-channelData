blackMistStart:
;BPM == 150, Quarter == 24
blackMistChannel1:
	setCoda $00
	.redefine BEAT 2
blackMistChannel1Measure1:
	duty $01
	octave 4
	vol $5
	env $0 $04
; Measure 1,3
;	.redefine NOTE_END_WAIT 6
	.rept 3
		beat g 12
	.endr
;	.redefine NOTE_END_WAIT 3
blackMistChannel1Measure1d:
	beat as 6
;	.redefine NOTE_END_WAIT 1
	beat as 3 as 3
	
; Measure 2,4
;	.redefine NOTE_END_WAIT 6
	.rept 3
		beat g 12
	.endr
;	.redefine NOTE_END_WAIT 2
	.rept 3
		beat as 4
	.endr
;	.redefine NOTE_END_WAIT 0
	setCoda $01
	gotoCond $01 blackMistChannel1Measure1

blackMistChannel1Measure5:
; Measure 5
	vol $6
	octave 5
	duty $02
	env $0 $00
.rept 2
	beat c 12 r 4 od g 4 ou ds 4
.endr
; Measure 6
	beat c 6 r 6
	vibrato $81
	beat od g 20 r 4
	vibrato $00
	beat ou c 4 ds 4 g 4
; Measure 7
	vibrato $81
	beat as 20 r 4
	vibrato $00
	beat gs 12 r 4 f 4 gs 4
; Measure 8
	vibrato $e1
	beat g 48
	vibrato $00
; Measure 9
	octave 5
.rept 2
	beat c 12 r 4 od g 4 ou ds 4
.endr 
; Measure 10
	beat c 6 r 6
	vibrato $81
	beat od g 20 r 4
	vibrato $00
	beat g 4 ou c 4 ds 4
; Measure 11
	vibrato $81
	beat g 16
	vibrato $00
	beat f 4 gs 4
	.redefine NOTE_END_WAIT 3
	beat g 6 ds 6
	.redefine NOTE_END_WAIT 0
	beat c 4 od g 4 ou ds 4
; Measure 12
	vibrato $82
	beat c 45 r 3
	vibrato $00

	setCoda $01
	gotoCond $03 blackMistChannel1Measure5

; Measure 13
	octave 6
	.redefine NOTE_END_WAIT 3
	vibrato $81
	beat c 16
	vibrato $00
	beat c 4 c 4
	.redefine NOTE_END_WAIT 0
	beat c 12 od g 6 ou c 6
; Measure 14
	vibrato $81
	beat od as 16
	beat gs 4 g 4
	vibrato $e1
	beat gs 24
; Measure 15
	.redefine NOTE_END_WAIT 3
	vibrato $81
	beat as 16 
	vibrato $00
	beat as 4 as 4
	.redefine NOTE_END_WAIT 0
	beat as 12 f 6 as 6
; Measure 16
	vibrato $81
	beat gs 16
	beat g 4 fs 4
	vibrato $e1
	beat g 24
; Measure 17
	.redefine NOTE_END_WAIT 3
	vibrato $81
	beat f 16
	vibrato $00
	beat f 4 f 4
	.redefine NOTE_END_WAIT 0
	beat f 12 g 6 gs 6
; Measure 18
	vibrato $81
	beat g 16
	beat f 4 e 4
	vibrato $e1
	beat f 24
; Measure 19
	vibrato $81
	beat g 16
	vibrato $00
	beat fs 4 gs 4
	beat g 6 ds 6
	beat od b 4 g 4 ou ds 4
; Measure 20
	vibrato $e2
	beat c 36
	vibrato $00
	duty $01
	vol $5
	env $0 $04

	setCoda $00
	goto blackMistChannel1Measure1d
	cmdff




blackMistChannel0:
	setCoda $00
	.redefine BEAT 2
blackMistChannel0Measure1:
	duty $01
	octave 4
	vol $5
	env $0 $04
; Measure 1,3
;	.redefine NOTE_END_WAIT 6
	.rept 3
		beat ds 12
	.endr

blackMistChannel0Measure1d:
;	.redefine NOTE_END_WAIT 3
	beat fs 6
;	.redefine NOTE_END_WAIT 1
	beat fs 3 fs 3
	
; Measure 2,4
;	.redefine NOTE_END_WAIT 6
	.rept 3
		beat ds 12
	.endr
;	.redefine NOTE_END_WAIT 2
	.rept 3
		beat fs 4
	.endr
;	.redefine NOTE_END_WAIT 0

	setCoda $01
	gotoCond $01 blackMistChannel0Measure1

blackMistChannel0Measure5:
; Measure 5
	env $0 $00
	octave 4
	duty $02
	vol $5
	beat c 12 r 4 c 4 g 4
	beat ds 12 r 4 c 4 g 4
; Measure 6
	beat ds 6 r 6
	vibrato $81
	beat c 17 r 3
	vibrato $00
	beat c 4 ds 4 g 4 ou c 4
; Measure 7
	vibrato $81
	beat ds 20 r 4
	vibrato $00
	beat cs 12 r 4 od b 4 ou cs 4
; Measure 8
	vibrato $e1
	beat c 48
	vibrato $00
; Measure 9
	octave 4
	beat c 12 r 4 c 4 g 4
	beat ds 12 r 4 c 4 g 4
; Measure 10
	beat ds 6 r 6
	vibrato $81
	beat c 20
	vibrato $00
	beat ds 4 c 4 ds 4 g 4
; Measure 11
	octave 5
	vibrato $81
	beat c 16
	vibrato $00
	beat od b 4 ou cs 4
	.redefine NOTE_END_WAIT 3
	beat c 6 od g 6
	.redefine NOTE_END_WAIT 0
	beat d 4 od b 4 ou f 4

	gotoCond $03 blackMistChannel0Measure12r

; Measure 12
	vibrato $82
	beat ds 48
	vibrato $00

	setCoda $01
	goto blackMistChannel0Measure5

blackMistChannel0Measure12r:
; Measire 12r
	vibrato $82
	beat ds 24
	vibrato $00	
	beat d 2 ds 2 f 2 g 2 gs 2 b 2
	beat ou d 2 ds 2 f 2 g 2 gs 2 b 2

; Measure 13
	octave 4
	vibrato $e1
	beat e 24
	vibrato $00
	beat c 12 e 12
; Measure 14
	vibrato $e1
	beat f 40
	vibrato $00
	beat e 4 ds 4
; Measure 15
	beat d 24 c 24
; Measure 16
	vibrato $e1
	beat od as 36
	vibrato $00
	beat b 12
; Measure 17
	vibrato $e1
	beat ou c 42
	vibrato $00
	beat cs 6
; Measure 18
	vibrato $e1
	beat d 40
	vibrato $00
	beat cs 4 c 4
; Measure 19
	beat od b 36 ou g 12
; Measure 20
	vibrato $e1
	beat od g 36
	vibrato $00

	duty $01
	vol $5
	env $0 $04

	setCoda $00
	goto blackMistChannel0Measure1d
	cmdff




blackMistChannel4:
blackMistChannel4Measure1:
	setCoda $00
	.redefine BEAT 2
blackMistChannel4Motif1:
	duty $0e
	octave 3
; Measures 1,3,5,9
	.redefine NOTE_END_WAIT 6
	.rept 3
		beat c 12
	.endr
	.redefine NOTE_END_WAIT 3
	beat ds 6
	.redefine NOTE_END_WAIT 1
	beat ds 3 ds 3
	
blackMistChannel4Motif2:
; Measures 2,4,6,8,10,12,20
	.redefine NOTE_END_WAIT 6
	.rept 3
		beat c 12
	.endr
	.redefine NOTE_END_WAIT 2
	.rept 3
		beat ds 4
	.endr

	setCoda $01
	gotoCond $01 blackMistChannel4Motif1		; Measures 1-4

	gotoCond $02 blackMistChannel4Motif1		; Measures 5-6 
	gotoCond $03 blackMistChannel4Measure7		; Measures 7-8 
	gotoCond $04 blackMistChannel4Motif1		; Measures 9-10
	gotoCond $05 blackMistChannel4Measure11		; Measures 11-12

	gotoCond $06 blackMistChannel4Motif1		; Measures 5-6 (2 volte)
	gotoCond $07 blackMistChannel4Measure7		; Measures 7-8
	gotoCond $08 blackMistChannel4Motif1		; Measures 9-10
	gotoCond $09 blackMistChannel4Measure11		; Measures 11-12

	goto blackMistChannel4Measure13				; Measures 13-20

blackMistChannel4Measure7:
; Measure 7
	octave 3
	.redefine NOTE_END_WAIT 6
	.rept 3
		beat cs 12
	.endr
	.redefine NOTE_END_WAIT 3
	beat cs 6
	.redefine NOTE_END_WAIT 1
	beat cs 3 cs 3

	goto blackMistChannel4Motif2

blackMistChannel4Measure11:
; Measure 11
	.redefine NOTE_END_WAIT 6
	octave 2
	.rept 3
		beat gs 12
	.endr
	.redefine NOTE_END_WAIT 3
	beat b 6
	.redefine NOTE_END_WAIT 1
	beat b 3 b 3

	goto blackMistChannel4Motif2

blackMistChannel4Measure13:
; Measure 13
	octave 3
	.redefine NOTE_END_WAIT 6
	.rept 3
		beat e 12
	.endr
	.redefine NOTE_END_WAIT 3
	beat e 6
	.redefine NOTE_END_WAIT 1
	beat e 3 e 3
; Measure 14
	.redefine NOTE_END_WAIT 6
	.rept 3
		beat f 12
	.endr
	.redefine NOTE_END_WAIT 2
	.rept 3
		beat f 4
	.endr

; Measure 15
	octave 2
	.redefine NOTE_END_WAIT 6
	.rept 3
		beat as 12
	.endr
	.redefine NOTE_END_WAIT 3
	beat as 6
	.redefine NOTE_END_WAIT 1
	beat as 3 as 3
; Measure 16
	octave 3
	.redefine NOTE_END_WAIT 6
	.rept 3
		beat ds 12
	.endr
	.redefine NOTE_END_WAIT 2
	.rept 3
		beat ds 4
	.endr	

; Measure 17
	octave 2
	.redefine NOTE_END_WAIT 6
	.rept 3
		beat gs 12
	.endr
	.redefine NOTE_END_WAIT 3
	beat gs 6
	.redefine NOTE_END_WAIT 1
	beat gs 3 gs 3
; Measure 18
	octave 3
	.redefine NOTE_END_WAIT 6
	.rept 3
		beat d 12
	.endr
	.redefine NOTE_END_WAIT 2
	.rept 3
		beat d 4
	.endr
	
; Measure 19
	.redefine NOTE_END_WAIT 6
	.rept 3
		beat g 12
	.endr
	.redefine NOTE_END_WAIT 2
	.rept 3
		beat g 4
	.endr

	goto blackMistChannel4Measure1
	cmdff

blackMistChannel6:
blackMistChannel6Measure1:
	setCoda $00
	.redefine BEAT 2
	vol $5
blackMistChannel6MeasureOdd:
; Measure Odd
	beat $2a 12 $2a 12 $2a 12
	beat $2a 6 $2a 3 $2a 3

	gotoCond $0d blackMistChannel6Measure1

; Measure Even
	beat $2a 12 $2a 12 $2a 12
	beat $2a 4 $2a 4 $2a 4

	setCoda $01
	goto blackMistChannel6MeasureOdd
	cmdff