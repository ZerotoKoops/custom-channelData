fireWaterStart:
; @addr{eeb7b}
fireWaterChannel1:
;	vibrato $e1
;	env $0 $00
;	cmdf2
	octave 3
	.redefine BEAT 1
fireWaterChannel1Measure1:
	vol $6
.rept 2
	duty $0e
; Measure 1,9
	vibrato $e2
	beat cs 3 e 3 gs 84
	vibrato $00
	duty $05
	beat ou ou gs 30
; Measure 2,10
	beat a 30
	duty $0f
	vibrato $e1
	beat od od gs 60
	vibrato $00
	duty $05
	beat ou ou e 30
; Measure 3,11
	beat cs 30
	duty $0f
	vibrato $e1
	beat od od gs 60
	vibrato $00
	duty $05
	beat ou ou fs 30
; Measure 4,12
	beat ds 30
	duty $0f
	vibrato $e2
	beat od od gs 90
	vibrato $00	
; Measure 5,13
	duty $0e	
	vibrato $e2
	beat cs 3 e 3 gs 84
	vibrato $00
	duty $05
	beat ou ou gs 30
; Measure 6,14
	beat a 30
	duty $0f
	vibrato $e1
	beat od od gs 60
	vibrato $00
	duty $05
	beat ou ou gs 30
; Measure 7,15
	beat e 30
	duty $0f
	vibrato $e1
	beat od od gs 60
	vibrato $00
	duty $05
	beat ou ou ou c 27 r 3
; Measure 8,16
	beat c 30
	duty $0f
	vibrato $e1
	beat od od od gs 60
	vibrato $00
	duty $05
	beat ou ou ou e 15 ds 15 od od od
.endr

	goto fireWaterChannel1Measure1
	cmdff
; $eece0
; @addr{eece0}
fireWaterChannel0:
;	vibrato $e1
;	env $0 $00
;	cmdf2
	octave 3
	.redefine BEAT 1
fireWaterChannel0Measure1:
	vol $6
	duty $02
; Measure 1
.redefine NOTE_END_WAIT 23
	beat r 30 cs 30 e 30 gs 30
.redefine NOTE_END_WAIT 0
.rept 3
; Measure 2,6,10
	duty $0e
	beat c 3 ds 3 gs 24
.redefine NOTE_END_WAIT 23
	duty $02
	beat c 30 ds 30 gs 30
.redefine NOTE_END_WAIT 0
; Measure 3,7,11
	duty $0e
	beat cs 3 e 3 gs 24
.redefine NOTE_END_WAIT 23
	duty $02
	beat cs 30 e 30 gs 30
; Measure 4,8,12
	beat od gs 30 a 30 gs 30 e 30
; Measure 5,9,13
	beat cs 30 ou cs 30 e 30 gs 30
.redefine NOTE_END_WAIT 0
.endr 
; Measure 14
	duty $0e
	beat c 3 ds 3 gs 24
.redefine NOTE_END_WAIT 23
	duty $02
	beat c 30 ds 30 gs 30
.redefine NOTE_END_WAIT 0
; Measure 15
	duty $0e
	beat cs 3 e 3 gs 24
.redefine NOTE_END_WAIT 23
	duty $02
	beat cs 30 e 30 gs 30	
; Measure 16
	beat od gs 30 a 30 gs 30 e 30
.redefine NOTE_END_WAIT 0
	goto fireWaterChannel0Measure1
	cmdff
; $eee03
; @addr{eee03}
fireWaterChannel4:
	octave 4
	.redefine BEAT 1
fireWaterChannel4Measure1:
	duty $0e
	vol $2
.rept 2
; Measure 1,5
	.rept 2
		beat cs 15 e 15 gs 15 e 15
	.endr
; Measure 2,6
	.rept 2
		beat c 15 ds 15 gs 15 ds 15
	.endr
; Measure 3,7
	.rept 2
		beat cs 15 e 15 gs 15 e 15
	.endr
; Measure 4,8
	.rept 2
		beat c 15 e 15 a 15 e 15
	.endr
.endr
; Measure 9
	vibrato $e1
	beat cs 120
	vibrato $00
; Measure 10
	vibrato $e1
	beat ds 120
	vibrato $00
; Measure 11
	vibrato $e1
	beat e 120
	vibrato $00
; Measure 12
	vibrato $e1
	beat fs 120
	vibrato $00
; Measure 13
	vibrato $e2
	beat a 120
	vibrato $00
; Measure 14
	vibrato $e2
	beat gs 120
	vibrato $00
; Measure 15
	vibrato $e3
	beat fs 120
	vibrato $00
; Measure 16
	vibrato $e3
	beat ds 120 ou
	vibrato $00

	goto fireWaterChannel4Measure1
	cmdff
; $eeffd
; @addr{eeffd}
fireWaterChannel6:
	cmdff