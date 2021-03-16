; $eeb7b
; $eeb7b
faronWoodsStart:
; @addr{eeb7b}
faronWoodsChannel1:
	.redefine BEAT 1
; Measure 1
	octave 4
	duty $02
	vol $6
; Measure 1
	beat gs 3 b 3 ou e 14 ds 20 od b 20 fs 20 
	vibrato $82
	beat cs 80
	vibrato $00
faronWoodsChannel1Measure2:
	resetCoda
	vol $0
	cmdf2
; Measure 2-5
	beat r 255 r 255 r 130
	vol $6

faronWoodsChannel1Measure6:
	incCoda
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

	gotoCond 1 faronWoodsChannel1Measure6

; Measure 14
	duty $01
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

	duty $03
faronWoodsChannel1Measure18:
	incCoda
; Measure 18,22
	beat ou ds 20 e 20 fs 20 gs 20 ds 60 cs 20
; Measure 19,24
	vibrato $81	
	beat ds 120
	vibrato $00
	beat gs 20 a 20

	gotoCond 4 faronWoodsChannel1Measure24
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

	duty $02
	goto faronWoodsChannel1Measure18

faronWoodsChannel1Measure24:
; Measure 24-25
	vibrato $81	
	beat gs 80	
	beat a 3 as 3
	vibrato $e2	
	beat b 234
	vibrato $00

faronWoodsChannel1Measure26:
; Coda 4
	incCoda
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

	gotoCond 5 faronWoodsChannel1Measure26
	goto faronWoodsChannel1Measure2
	cmdff 
; $eece0
; @addr{eece0}
faronWoodsChannel0:
	.redefine BEAT 1
; Measure 1
	beat r 160
faronWoodsChannel0Measure2Reset:
	resetCoda
	duty $02
faronWoodsChannel0Measure2:
	incCoda
.rept 2
; Measure 2
	octave 2
	vol $6
	beat gs 10
	vol $3
	beat gs 10

	vol $6
	beat ou gs 10
	vol $3
	beat gs 10

	vol $6
	beat ds 10
	vol $3
	beat ds 10

	vol $6
	beat cs 10
	vol $3
	beat cs 10


	vol $6
	beat gs 10
	vol $3
	beat gs 10

	vol $6
	beat ds 10
	vol $3	
	beat ds 10

	vol $6
	beat cs 10
	vol $3	
	beat cs 10

	vol $6
	beat gs 10
	vol $3
	beat gs 10
.endr

.rept 2
; Measure 4
	octave 2
	vol $6
	beat a 10
	vol $3
	beat a 10

	vol $6
	beat ou gs 10
	vol $3
	beat gs 10

	vol $6
	beat ds 10
	vol $3
	beat ds 10

	vol $6
	beat cs 10
	vol $3
	beat cs 10


	vol $6
	beat gs 10
	vol $3
	beat gs 10

	vol $6
	beat ds 10
	vol $3	
	beat ds 10

	vol $6
	beat cs 10
	vol $3	
	beat cs 10

	vol $6
	beat gs 10
	vol $3
	beat gs 10
.endr

	gotoCond 8 faronWoodsChannel0Measure26
	goto faronWoodsChannel0Measure2

faronWoodsChannel0Measure26:
	incCoda
; Measure 26
	octave 4
	vol $6
	beat d 10
	vol $3
	beat d 10	
	
	vol $6	
	beat cs 10
	vol $3	
	beat cs 10
	
	vol $6	
	beat od gs 10
	vol $3
	beat gs 10


	vol $6
	beat fs 10
	vol $3	
	beat fs 10

	vol $6	
	beat gs 10
	vol $3
	beat gs 10
	
	vol $6	
	beat fs 10
	vol $3
	beat fs 10


	vol $6
	beat e 10
	vol $3	
	beat e 10

	vol $6	
	beat gs 10
	vol $3
	beat gs 10
	
	vol $6	
	beat fs 10
	vol $3
	beat fs 10


	vol $6
	beat ou cs 10
	vol $3	
	beat cs 10
	
	vol $6	
	beat od gs 10
	vol $3	
	beat gs 10
	
	vol $6	
	beat fs 10
	vol $3
	beat fs 10

; Measure 27
	octave 4
	vol $6
	beat e 10
	vol $3
	beat e 10
	
	vol $6	
	beat ds 10
	vol $3	
	beat ds 10
	
	vol $6	
	beat od b 10
	vol $3
	beat b 10


	vol $6
	beat as 10
	vol $3	
	beat as 10
	
	vol $6	
	beat b 10
	vol $3	
	beat b 10
	
	vol $6	
	beat as 10
	vol $3
	beat as 10


	vol $6
	beat e 10
	vol $3	
	beat e 10
	
	vol $6	
	beat b 10
	vol $3	
	beat b 10
	
	vol $6	
	beat as 10
	vol $3
	beat as 10


	vol $6
	beat ou ds 10
	vol $3	
	beat ds 10
	
	vol $6	
	beat od b 10
	vol $3	
	beat b 10	
	
	vol $6	
	beat as 10
	vol $3
	beat as 10

; Measure 28
	octave 4
	vol $6
	beat cs 10
	vol $3	
	beat cs 10

	vol $6
	beat od b 10
	vol $3
	beat b 10

	vol $6
	beat g 10
	vol $3	
	beat g 10	

	vol $6
	beat e 10
	vol $3	
	beat e 10	
	
	vol $6
	beat g 10
	vol $3	
	beat g 10	
	
	vol $6
	beat e 10
	vol $3
	beat e 10

	vol $6
	beat cs 10
	vol $3	
	beat cs 10	
	
	vol $6
	beat g 10
	vol $3	
	beat g 10	
	
	vol $6	
	beat e 10
	vol $3
	beat e 10

	vol $6
	beat b 10
	vol $3	
	beat b 10	
	
	vol $6	
	beat g 10
	vol $3	
	beat g 10	
	
	vol $6	
	beat e 10
	vol $3
	beat e 10

; Measure 29
	octave 4
	vol $6
	beat e 10
	vol $3
	beat e 10
	
	vol $6	
	beat cs 10
	vol $3
	beat cs 10
	
	vol $6	
	beat od as 10
	vol $3
	beat as 10


	vol $6
	beat g 10
	vol $3	
	beat g 10
	
	vol $6	
	beat as 10
	vol $3
	beat as 10
	
	vol $6	
	beat g 10
	vol $3
	beat g 10


	vol $6
	beat ds 10
	vol $3	
	beat ds 10
	
	vol $6	
	beat as 10
	vol $3
	beat as 10
	
	vol $6	
	beat gs 10
	vol $3
	beat gs 10


	vol $6
	beat ou cs 10
	vol $3
	beat cs 10
	
	vol $6	
	beat od as 10
	vol $3	
	beat as 10
	
	vol $6	
	beat gs 10
	vol $3
	beat gs 10

	gotoCond 9 faronWoodsChannel0Measure26
	goto faronWoodsChannel0Measure2Reset

faronWoodsChannel4:
faronWoodsChannel6:
	cmdff