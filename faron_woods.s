; $eeb7b
faronWoodsStart:
; @addr{eeb7b}
faronWoodsChannel1:
	octave 4
	.redefine BEAT 1
	vol $6
	duty $0a
; Measure 1
	beat gs 3 b 3 ou e 14 ds 20 od b 20 fs 20 
	vibrato $82
	beat cs 80
	vibrato $00
faronWoodsChannel1Measure2:
	duty $0a
	vol $0
	cmdf2
; Measure 2-5
	beat r 255 r 255 r 130
	vol $6
; Measure 6
	beat ou c 3 cs 17 c 20 od gs 20
	vibrato $81
	beat fs 80
	vibrato $00
	beat ds 20
; Measure 7
	beat fs 40 f 3 e 3
	vibrato $81
	beat ds 74
	vibrato $00
	beat od gs 20 ou cs 20
; Measure 8
	vibrato $e2
	beat ds 160
; Measure 9
	beat ds 115 
	vibrato $00
	beat r 5 od gs 5 b 35
; Measure 10
	beat ou d 3 f 3 ds 3 
	vibrato $81
	beat fs 106 
	vibrato $00
	beat r 5 fs 5 a 35
; Measure 11
	beat e 5 
	vibrato $81
	beat gs 115
	vibrato $00
	beat a 5 ou cs 35
; Measure 12-13
	beat od gs 5
	vibrato $e2	
	beat b 155 
	vibrato $00
	vol $0
	beat r 160
	vol $6
; Measure 14
	duty $0e
	beat fs 5
	vibrato $81	
	beat a 115
	vibrato $00	
	beat ds 5 fs 35
; Measure 15
	beat f 5 
	vibrato $e2	
	beat gs 155
	vibrato $00
; Measure 16
	beat e 5
	vibrato $81	
	beat gs 115
	vibrato $00	
	beat cs 5 e 35
; Measure 17
	beat ds 5
	vibrato $e2	
	beat fs 155
	vibrato $00
; Measure 18
	duty $0a
	beat ou ds 20 e 20 fs 20 gs 20 ds 60 cs 20
; Measure 19
	vibrato $81	
	beat ds 120
	vibrato $00
	beat gs 20 a 20
; Measure 20
	vibrato $81		
	beat gs 120 
	vibrato $00	
	beat a 20 b 20
; Measure 21
	beat a 40 gs 3 g 3
	vibrato $81		
	beat fs 114
	vibrato $00
; Measure 22
	beat ds 20 e 20 fs 20 gs 20 ds 60 cs 20	
; Measure 23
	vibrato $81	
	beat ds 120
	vibrato $00	
	beat gs 20 a 20
; Measure 24-25
	vibrato $81	
	beat gs 80	
	beat a 3 as 3
	vibrato $e2	
	beat b 234
	vibrato $00
; Measure 26
	duty $02
	vol $4
	beat fs 3 a 3 ou cs 3 d 11 cs 20 od gs 20
	vibrato $e2	
	beat fs 180
	vibrato $00
; Measure 27
	beat ou e 20 ds 20 od b 20
	vibrato $e2	
	beat as 180
	vibrato $00
; Measure 28
	beat e 3 g 3 b 3 ou cs 11 od b 20 gs 20
	vibrato $e2	
	beat e 180
	vibrato $00
; Measure 29
	beat ou e 20 cs 20 od as 20
	vibrato $e2
	beat g 180	
	vibrato $00

	goto faronWoodsChannel1Measure2
	cmdff 
; $eece0
; @addr{eece0}
faronWoodsChannel0:
	octave 3
	.redefine BEAT 1
; Measure 1
	beat r 160
faronWoodsChannel0Measure2:
	vol $4
	duty $02
.rept 24
; Measures 2-25
	beat r 20 gs 20 ds 20 cs 20 gs 20 ds 20 cs 20 gs 20
.endr
; Measures 26-29
	vol $0
	beat r 255 r 255 r 255 r 195

	goto faronWoodsChannel0Measure2
	cmdff
; $eee03
; @addr{eee03}
faronWoodsChannel4:
	octave 2
	.redefine BEAT 1
; Measure 1
	beat r 160
faronWoodsChannel4Measure2:
.redefine NOTE_END_WAIT 5
	duty $0e
	vol $2
.rept 6
; Measure 2-3,6-7,10-11,14-15,18-19,22-23
	.rept 2
		vibrato $e1
		beat gs 160
		vibrato $00
	.endr
; Measure 4-5,8-9,12-13,16-17,20-21,24-25
	.rept 2
		vibrato $e1
		beat a 160
		vibrato $00
	.endr
.endr
.redefine NOTE_END_WAIT 0
	duty $04
	vol $3
; Measure 26
	beat ou ou d 20 cs 20 od gs 20 fs 20 gs 20 fs 20
	beat e 20 gs 20 fs 20 ou cs 20 od gs 20 fs 20
; Measure 27
	beat ou e 20 ds 20 od b 20 as 20 b 20 as 20
	beat e 20 b 20 as 20 ou ds 20 od b 20 as 20
; Measure 28
	beat ou cs 20 od b 20 g 20 e 20 g 20 e 20
	beat cs 20 g 20 e 20 b 20 g 20 e 20
; Measure 29
	beat ou e 20 cs 20 od as 20 g 20 as 20 g 20
	beat ds 20 as 20 gs 20 ou cs 20 od as 20 gs 20

	goto faronWoodsChannel4Measure2
	cmdff
; $eeffd
; @addr{eeffd}
faronWoodsChannel6:
; Measure 1
	wait1 160
faronWoodsChannel6Measure2:
	vol $4
; Measures 2-5
.rept 4
	note $2e 20
	wait1 120
	note $2e 20
.endr
; Measures 6-13
.rept 8
	note $2e 20
	note $2a 20
	wait1 80
	note $2a 20
	note $2e 20
.endr	
; Measures 14-17
.rept 4
	note $2a 20
	note $2a 20
	wait1 20
	note $2a 20
	wait1 20
	note $2a 20
	wait1 20
	note $2a 20	
.endr
; Measures 18-21
.rept 4
	note $2e 20
	wait1 120
	note $2e 20
.endr
; Measures 22-25
.rept 4
	note $2e 20
	note $2a 20
	wait1 80
	note $2a 20
	note $2e 20
.endr
; Measures 26-29
.rept 4
	note $2e 20
	wait1 60
	note $2a 20
	note $2a 20
	wait1 20
	note $2a 20
	wait1 20
	note $2a 20
	note $2a 20
	wait1 20
.endr

	goto faronWoodsChannel6Measure2
	cmdff