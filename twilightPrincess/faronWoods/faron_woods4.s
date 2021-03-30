; $eeb7b
; $eeb7b
faronWoodsStart:
; @addr{eeb7b}
faronWoodsChannel1:
	octave 4
	.redefine BEAT 1
	duty $02
; Measure 1
	vol $6
	beat gs 2 b 2 ou ds 2 e 9
	vol $3
	beat e 5

	vol $6
	beat ds 15
	vol $3	
	beat ds 5	

	vol $6
	beat od b 15
	vol $3	
	beat b 5

	vol $6	
	beat fs 15 
	vol $3
	beat fs 5 

	vol $6
	vibrato $82
	beat cs 60
	vol $3
	beat cs 15
	vol $1
	beat cs 5
	vibrato $00
faronWoodsChannel1Measure2:
	resetCoda
	vol $0
	cmdf2
; Measure 2-5
	beat r 255 r 65
	;beat r 255 r 255 r 130
	vol $6

faronWoodsChannel1Measure6:
	incCoda
; Measure 6
	beat ou c 3 cs 17 c 20 od gs 20
	vibrato $81
	beat fs 40
	vol $3
	beat fs 40
	vibrato $00
	vol $6
	beat ds 20
; Measure 7
	beat fs 40 f 3 e 3
	vibrato $81
	beat ds 34
	vol $3
	beat ds 40
	vibrato $00
	vol $6
	beat od gs 20 ou cs 20
; Measure 8
	vibrato $e2
	beat ds 80
	vol $3
	beat ds 80
; Measure 9
	vol $1
	beat ds 120 
	vibrato $00
	vol $6
	beat ds 40
; Measure 10
	beat e 3 f 3
	vibrato $81
	beat fs 34
	vol $3
	beat fs 40
	vol $1
	beat fs 40 
	vibrato $00
	vol $6
	beat a 40
; Measure 11
	vibrato $81
	beat gs 40
	vol $3
	beat gs 40
	vol $1
	beat gs 40 
	vibrato $00
	vol $6
	beat ou cs 40
; Measure 12
	vibrato $e2	
	beat od b 80
	vol $3
	beat b 80
; Measure 13
	vol $1
	beat b 120 
	vibrato $00
	vol $0
	beat r 40
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
	duty $01
	vol $6
	beat fs 3 a 3 ou cs 3 d 1
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
	vibrato $e2	
	beat fs 180
	vibrato $00
; Measure 27
	octave 5
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
	vibrato $e2	
	beat as 180
	vibrato $00
; Measure 28
	octave 4
	vol $6
	beat e 3 g 3 b 3 ou cs 1
	vol $3
	beat cs 10
	
	vol $6	
	beat od b 10
	vol $3
	beat b 10

	vol $6	
	beat gs 10
	vol $3
	beat gs 10

	vol $6
	vibrato $e2	
	beat e 180
	vibrato $00
; Measure 29
	octave 5
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
	vibrato $e2
	beat g 180	
	vibrato $00

	gotoCond 5 faronWoodsChannel1Measure26
	goto faronWoodsChannel1Measure2
	cmdff 


faronWoodsChannel0:
	.redefine BEAT 1
; Measure 1
	octave 2
	vol $4
	beat gs 160
; Measure 2-5
	vol $0
	beat r 255 r 65
	;beat r 255 r 255 r 130
	cmdff


faronWoodsChannel4:
	.redefine BEAT 1
; Measure 1
	octave 4
	duty $0e
	beat e 15
	duty $0f
	beat e 5

	duty $0e
	beat ds 15
	duty $0f
	beat ds 5

	duty $0e
	beat od b 15
	duty $0f
	beat b 5

	duty $0e
	beat fs 15
	duty $0f
	beat fs 5


	duty $0e
	beat cs 15
	duty $0f
	beat cs 5

	duty $0e
	beat gs 15
	duty $0f	
	beat gs 5

	duty $0e
	beat ds 15
	duty $0f	
	beat ds 5

	duty $0e
	beat cs 15
	duty $0f
	beat cs 5
faronWoodsChannel4Measure2Reset:
	resetCoda

faronWoodsChannel4Measure2:
incCoda
.rept 2
; Measures 2-3
	octave 2
	duty $0e
	beat gs 15
	duty $0f
	beat gs 5

	duty $0e
	beat ou gs 15
	duty $0f
	beat gs 5

	duty $0e
	beat ds 15
	duty $0f
	beat ds 5

	duty $0e
	beat cs 15
	duty $0f
	beat cs 5


	duty $0e
	beat gs 15
	duty $0f
	beat gs 5

	duty $0e
	beat ds 15
	duty $0f	
	beat ds 5

	duty $0e
	beat cs 15
	duty $0f	
	beat cs 5

	duty $0e
	beat gs 15
	duty $0f
	beat gs 5
.endr

	gotoCond 1 faronWoodsChannel4Measure2

.rept 2
; Measures 4-5
	octave 2
	duty $0e
	beat a 15
	duty $0f
	beat a 5

	duty $0e
	beat ou gs 15
	duty $0f
	beat gs 5

	duty $0e
	beat ds 15
	duty $0f
	beat ds 5

	duty $0e
	beat cs 15
	duty $0f
	beat cs 5


	duty $0e
	beat gs 15
	duty $0f
	beat gs 5

	duty $0e
	beat ds 15
	duty $0f	
	beat ds 5

	duty $0e
	beat cs 15
	duty $0f	
	beat cs 5

	duty $0e
	beat gs 15
	duty $0f
	beat gs 5
.endr

	gotoCond 8 faronWoodsChannel4Measure26
	goto faronWoodsChannel4Measure2

faronWoodsChannel4Measure26:
	incCoda
; Measure 26
	octave 4
	duty $0e
	beat d 15
	duty $0f
	beat d 5
	
	duty $0e	
	beat cs 15
	duty $0f	
	beat cs 5
	
	duty $0e	
	beat od gs 15
	duty $0f
	beat gs 5


	duty $0e
	beat fs 15
	duty $0f	
	beat fs 5

	duty $0e	
	beat gs 15
	duty $0f
	beat gs 5
	
	duty $0e	
	beat fs 15
	duty $0f
	beat fs 5


	duty $0e
	beat e 15
	duty $0f	
	beat e 5

	duty $0e	
	beat gs 15
	duty $0f
	beat gs 5
	
	duty $0e	
	beat fs 15
	duty $0f
	beat fs 5


	duty $0e
	beat ou cs 15
	duty $0f	
	beat cs 5
	
	duty $0e	
	beat od gs 15
	duty $0f	
	beat gs 5
	
	duty $0e	
	beat fs 15
	duty $0f
	beat fs 5

; Measure 27
	octave 4
	duty $0e
	beat e 15
	duty $0f
	beat e 5
	
	duty $0e	
	beat ds 15
	duty $0f	
	beat ds 5
	
	duty $0e	
	beat od b 15
	duty $0f
	beat b 5


	duty $0e
	beat as 15
	duty $0f	
	beat as 5
	
	duty $0e	
	beat b 15
	duty $0f	
	beat b 5
	
	duty $0e	
	beat as 15
	duty $0f
	beat as 5


	duty $0e
	beat e 15
	duty $0f	
	beat e 5
	
	duty $0e	
	beat b 15
	duty $0f	
	beat b 5
	
	duty $0e	
	beat as 15
	duty $0f
	beat as 5


	duty $0e
	beat ou ds 15
	duty $0f	
	beat ds 5
	
	duty $0e	
	beat od b 15
	duty $0f	
	beat b 5	
	
	duty $0e	
	beat as 15
	duty $0f
	beat as 5

; Measure 28
	octave 4
	duty $0e
	beat cs 15
	duty $0f	
	beat cs 5

	duty $0e
	beat od b 15
	duty $0f
	beat b 5

	duty $0e
	beat g 15
	duty $0f	
	beat g 5	

	duty $0e
	beat e 15
	duty $0f	
	beat e 5	
	
	duty $0e
	beat g 15
	duty $0f	
	beat g 5	
	
	duty $0e
	beat e 15
	duty $0f
	beat e 5

	duty $0e
	beat cs 15
	duty $0f	
	beat cs 5	
	
	duty $0e
	beat g 15
	duty $0f	
	beat g 5	
	
	duty $0e	
	beat e 15
	duty $0f
	beat e 5

	duty $0e
	beat b 15
	duty $0f	
	beat b 5	
	
	duty $0e	
	beat g 15
	duty $0f	
	beat g 5	
	
	duty $0e	
	beat e 15
	duty $0f
	beat e 5

; Measure 29
	octave 4
	duty $0e
	beat e 15
	duty $0f
	beat e 5
	
	duty $0e	
	beat cs 15
	duty $0f
	beat cs 5
	
	duty $0e	
	beat od as 15
	duty $0f
	beat as 5


	duty $0e
	beat g 15
	duty $0f	
	beat g 5
	
	duty $0e	
	beat as 15
	duty $0f
	beat as 5
	
	duty $0e	
	beat g 15
	duty $0f
	beat g 5


	duty $0e
	beat ds 15
	duty $0f	
	beat ds 5
	
	duty $0e	
	beat as 15
	duty $0f
	beat as 5
	
	duty $0e	
	beat gs 15
	duty $0f
	beat gs 5


	duty $0e
	beat ou cs 15
	duty $0f
	beat cs 5
	
	duty $0e	
	beat od as 15
	duty $0f	
	beat as 5
	
	duty $0e	
	beat gs 15
	duty $0f
	beat gs 5

	gotoCond 9 faronWoodsChannel4Measure26
	goto faronWoodsChannel4Measure2Reset
; $eeffd
; @addr{eeffd}
faronWoodsChannel6:
; Measure 1
	beat r 160
faronWoodsChannel6Measure2:
	vol $4
	resetCoda
faronWoodsChannel6Part1:
	incCoda
	beat $2e 140 $2e 20

	gotoCond 2 faronWoodsChannel6Part2		; Measures 2-5
	gotoCond 26 faronWoodsChannel6Part2		; Measures 18-21
	goto faronWoodsChannel6Part1

faronWoodsChannel6Part2:
	incCoda
	beat $2e 20 $2a 100 $2a 20 $2e 20

	gotoCond 18 faronWoodsChannel6Part3		; Measures 6-13
	gotoCond 30 faronWoodsChannel6Part4		; Measures 22-25
	goto faronWoodsChannel6Part2	

faronWoodsChannel6Part3:
	incCoda
	beat $2a 20 $2a 40 $2a 40 $2a 40 $2a 20

	gotoCond 22 faronWoodsChannel6Part1		; Measures 14-17
	goto faronWoodsChannel6Part3

faronWoodsChannel6Part4:
	incCoda
	beat $2e 80 $2a 20 $2a 40 $2a 40 $2a 20 $2a 40

	gotoCond 38 faronWoodsChannel6Measure2		; Measures 26-29 (and repeat)
	goto faronWoodsChannel6Part4
	cmdff