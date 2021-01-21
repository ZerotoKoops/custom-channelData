sound03Channel1:
	octave 4
	.redefine BEAT 1

	vibrato $00						;measure 1
	duty $02
	vol $6
	env $0 $04
	beat g 24
	env $0 $02
	beat g 8 d 8 g 8
	env $0 $04
	beat f 24
	env $0 $02
	beat f 8 g 8 a 8

	env $0 $04						;measure 2
	beat as 24
	env $0 $02
	beat as 8 g 8 as 8
	env $0 $04
	beat a 24
	env $0 $02
	beat a 8 as 8 ou c 8			;octave 5

	vibrato $e1						;measure 3
	env $0 $00
	beat d 60 r 12
	vibrato $00
	env $0 $02
	beat c 8 c 8 c 8

	vibrato $e1						;measure 4
	env $0 $00
	beat d 60 r 12
	vibrato $00
	env $0 $00
	.redefine NOTE_END_WAIT 4
	beat c 8 od b 8 a 8				;octave 4
	.redefine NOTE_END_WAIT 0
musicec8a5:
	vibrato $00						;measure 5
	env $0 $05
	beat g 24 d 24
	env $0 $04
	beat r 18 g 6 g 6 a 6 b 6 ou c 6		;octave 5

	env $0 $05						;measure 6
	beat d 48
	env $0 $04
	beat r 16 d 8 d 8 ds 8 f 8

	env $0 $05						;measure 7
	beat g 48
	env $0 $04
	beat r 16 g 8 g 8 f 8 ds 8

	vibrato $00						;measure 8
	env $0 $00
	beat f 8 r 8 ds 8
	vibrato $00
	env $0 $05
	beat d 24
	env $0 $04
	beat r 24 d 8 ds 8 d 8

	beat c 12 c 6 d 6				;measure 9
	env $0 $05
	beat ds 24
	env $0 $04
	beat r 24 d 12 c 12

	beat od as 12 as 6 ou c 6		;octave 5/measure 10
	env $0 $05
	beat d 24
	env $0 $04
	beat r 24 c 12 od as 12
	
	beat a 12 a 6 b 6				;octave 4/measure 11
	env $0 $05
	beat ou cs 24					;octave 5
	env $0 $04
	beat r 24 e 24

	beat d 12 						;measure 12
	vibrato $00
	env $0 $01
	duty $00
	vol $8
	beat od d 4 d 4 d 4				;octave 4
	vibrato $00
	vol $6
	env $0 $02
	beat e 8 e 8 e 8
	vibrato $00
	env $0 $00
	vol $7
	beat fs 24
	vol $6
	beat r 24

	vibrato $00						;measure 13
	env $0 $05
	duty $02
	beat g 24 d 24
	env $0 $04
	beat r 18 g 6 g 6 a 6 b 6 ou c 6		;octave 5

	env $0 $05						;measure 14
	beat d 48
	env $0 $04
	beat r 16 d 8 d 8 ds 8 f 8

	env $0 $05						;measure 15
	beat g 48
	env $0 $04
	beat r 16 g 8 g 8 f 8 ds 8

	vibrato $00						;measure 16
	env $0 $00
	beat f 8 r 8 ds 8 
	vibrato $00
	env $0 $04
	beat d 24
	env $0 $03
	beat r 24 d 8 ds 8 d 8

	beat c 12 c 6 d 6				;measure 17
	env $0 $05
	beat ds 24
	env $0 $04
	beat r 24 d 12 c 12 

	vol $6							;measure 18
	beat od as 8 a 8 as 8 ou c 8 od as 8 ou c 8 ;octave 5
	vibrato $00
	env $0 $00
	beat d 8 r 8 d 8 d 8 c 8 od as 8		 ;octave 4

	vibrato $e1						;measure 19
	env $0 $00
	vol $6
	beat ou d 48 ou d 48			;octave 6

	vol $5							;measure 20
	beat od g 60 r 12				;octave 5
	vibrato $00
	env $0 $00
	vol $6
	duty $01
	.redefine NOTE_END_WAIT 4
	beat d 8 ds 8 f 8
	.redefine NOTE_END_WAIT 0

	vibrato $e1						;measure 21
	env $0 $00
	beat g 18 r 6 d 24 r 18
	vibrato $00
	env $0 $00
	.redefine NOTE_END_WAIT 3
	beat g 6 g 6 a 6 as 6 ou c 6	;octave 6
	.redefine NOTE_END_WAIT 0

	beat od a 5 r 11 f 5 r 3 		;octave 5/measure 22
	vibrato $f1
	beat c 24 r 12 
	vibrato $00
	env $0 $00
	.redefine NOTE_END_WAIT 3
	beat c 6 d 6 f 6 ds 6 d 6 c 6
	.redefine NOTE_END_WAIT 0

	beat d 5 r 11 od g 4 r 4		;octave 4/measure 23
	vibrato $e1
	env $0 $00
	beat g 24 r 12 
	vibrato $00
	env $0 $00
	.redefine NOTE_END_WAIT 3
	beat g 6 fs 6 g 6 a 6 as 6 ou c 6 		;octave 5
	.redefine NOTE_END_WAIT 0

	vibrato $e1						;measure 24
	env $0 $00
	beat d 36 r 36 
	vibrato $00
	env $0 $00
	.redefine NOTE_END_WAIT 4
	beat d 8 c 8 d 8 
	.redefine NOTE_END_WAIT 0

	beat as 5 r 11 a 5 r 3 g 24 r 8			;measure 25
	.redefine NOTE_END_WAIT 4
	beat d 8 d 8 d 8 od as 8 ou g 8			;octave 5
	.redefine NOTE_END_WAIT 0	

	beat gs 5 r 11 as 5 r 3 ou c 24 r 8		;octave 6/measure 26
	.redefine NOTE_END_WAIT 4
	beat c 8 d 8 ds 8 f 8 ds 8 
	.redefine NOTE_END_WAIT 0

	vibrato $e1						;measure 27
	env $0 $00
	beat d 60
	vibrato $01
	env $0 $00
	vol $3
	beat d 12
	vol $2
	beat d 12 r 24					;last rest is 12 plus 12 from next measure

	vibrato $00						;measure 28
	env $0 $01
	duty $02
	vol $6
	beat od d 4 d 4 d 4				;octave 5
	vibrato $00
	env $0 $02
	beat e 8 e 8 e 8
	env $0 $04
	beat fs 24 r 24 
	vibrato $00
	env $0 $02
	goto musicec8a5
	cmdff

sound03Channel0:
	octave 4
	.redefine BEAT 1

	vibrato $00						;measure 1
	duty $02
	vol $6
	env $0 $04
	beat od b 24					;octave 3
	env $0 $02
	beat b 8 b 8 b 8
	env $0 $04
	beat a 24 a 8 b 8 ou c 8		;octave 4

	env $0 $04						;measure 2
	beat ds 24
	env $0 $02
	beat ds 8 ds 8 ds 8
	env $0 $04
	beat f 24
	env $0 $02
	beat f 8 f 8 f 8

	vibrato $e1						;measure 3
	env $0 $00
	beat g 42
	vibrato $01
	env $0 $00
	vol $4
	beat g 12
	vol $2
	beat g 12 r 6
	vibrato $00
	env $0 $02
	vol $6
	beat f 8 f 8 f 8

	vibrato $e1						;measure 4
	env $0 $00
	beat g 42
	vibrato $01
	env $0 $00
	vol $2
	beat g 12
	vol $1
	beat g 12 r 30
musicecb5a:
	vibrato $00						;measure 5
	env $0 $03
	vol $6
	beat od b 24 ou c 8 od b 8 a 8 b 18 b 6 b 6 ou c 6 d 6 e 6		;octave 4

	beat f 18 g 6 g 6 a 6 b 6 ou c 6 d 24 od f 8 g 8 a 8			;octave 4/measure 6

	beat as 16 ds 8 ds 6 f 6 g 6 a 6 as 6 r 10 as 8 as 8 a 8 g 8	;measure 7

	beat as 6 r 10 f 8 f 8 f 8 ds 8 f 8 r 8 f 8 f 8 ds 8 f 8 		;measure 8

	beat ds 12 ds 6 d 6 ds 12 ds 6 f 6	                            ;measure 9
	env $0 $05
	beat g 24
	env $0 $03
	beat f 12 ds 12

	beat d 12 d 6 c 6 d 12 d 6 ds 6	;measure 10
	env $0 $05
	beat f 24
	env $0 $03
	beat ds 12 d 12

	beat cs 24 cs 12 cs 6 d 6 e 12 e 6 f 6 g 6 a 6 b 6 ou c 6		;octave 5/measure 11

	vibrato $00						;measure 12
	env $0 $05
	duty $01
	beat od a 24					;octave 4
	vibrato $00
	env $0 $03
	beat c 8 c 8 c 8
	vol $7
	beat d 24
	vol $6
	beat r 24
	duty $02

	beat od b 24 ou c 8 od b 8 a 8 b 18 b 6 b 6 ou c 6 d 6 e 6 		;octave 4/measure 13

	beat f 18 g 6 g 6 a 6 b 6 ou c 6 d 24 od f 8 g 8 a 8			;octave 4/measure 14

	beat as 16 ds 8 ds 6 f 6 g 6 a 6 as 6 r 10 as 8 as 8 a 8 g 8	;measure 15

	beat as 6 r 10 f 8 f 8 f 8 ds 8 f 8 r 8 f 8 f 8 ds 8 f 8		;measure 16

	beat ds 12 ds 6 d 6 ds 12 ds 6 f 6			                    ;measure 17
	env $0 $05
	beat g 24
	env $0 $03
	beat f 12 ds 12

	vibrato $e0						;measure 18
	env $2 $00
	vol $4
	beat od g 24 fs 24 f 48			;octave 3

	vol $5							;measure 19
	beat e 24
	vol $5
	beat c 24 d 18 r 6
	vibrato $00
	env $0 $00
	vol $6
	beat d 4
	vol $1
	beat d 4
	vol $6
	beat ou d 4						;octave 4
	vol $1
	beat d 4
	vol $6
	beat c 4
	vol $1
	beat c 4

	vol $6							;measure 20
	.redefine NOTE_END_WAIT 4						
	beat od as 8 a 8 g 8 a 8 r 16 g 8 r 40		;octave 3/measure 20		;8 a 8 g 8 a 8 r 16 g 8 r 40						
	.redefine NOTE_END_WAIT 0

	duty $01						;measure 21		
	vol $6
	beat ou as 16 r 8 g 24 r 18		;octave 4
	.redefine NOTE_END_WAIT 3
	beat as 6 as 6 ou c 6 d 6 ds 6	;octave 5
	.redefine NOTE_END_WAIT 0

	beat c 5 r 11 od as 5 r 3 a 24 r 24 f 20 r 4 	        ;octave 4/measure 22

	beat g 5 r 11 d 5 r 3 d 20 r 4 c 20 r 4 e 20 r 4		;measure 23

	beat g 3 r 9					;measure 24
	.redefine NOTE_END_WAIT 3
	beat g 6 fs 6 g 6 a 6 as 6 ou c 6 d 24 		;octave 5
	.redefine NOTE_END_WAIT 0
	vol $3
	beat d 12 r 12

	vol $6					        ;measure 25
	beat d 5 r 11 c 5 r 3 od as 24	;octave 4
	vol $3
	beat as 12
	vol $1
	beat as 12 r 24

	vol $6 					        ;measure 26
	beat ou c 5 r 11 ds 5 r 3 gs 24	;octave 5
	vol $3
	beat gs 12
	vol $1
	beat gs 12 r 48					;last rest is 24 plus 24 from next measure

	vibrato $00				        ;measure 27
	env $0 $02
	duty $02
	vol $6
	.redefine NOTE_END_WAIT 4
	beat od g 8 g 8 g 8			    ;octave 4
	.redefine NOTE_END_WAIT 0
	env $0 $04
	beat g 12
	env $0 $02
	beat r 60						;last rest is 36 plus 24 from next measure

	.redefine NOTE_END_WAIT 4		;measure 28
	beat ou c 8 c 8 c 8				;octave 5
	.redefine NOTE_END_WAIT 0
	env $0 $04
	beat d 12
	env $0 $02
	beat r 36
	goto musicecb5a
	cmdff

sound03Channel4:
	octave 3
	.redefine BEAT 1

	duty $0e				        ;measure 1
	beat g 4
	duty $0f
	beat g 3 r 17
.rept 3	
	duty $0e
	beat g 4
	duty $0f
	beat g 3 r 1
.endr
	duty $0e
	beat f 4
	duty $0f
	beat f 3 r 17
.rept 3
	duty $0e
	beat f 4
	duty $0f
	beat f 3 r 1
.endr

	duty $0e				        ;measure 2
	beat ds 4
	duty $0f
	beat ds 3 r 17
.rept 3
	duty $0e
	beat ds 4
	duty $0f
	beat ds 3 r 1
.endr
.rept 4
	duty $0e
	beat f 4
	duty $0f
	beat f 3 r 1
.endr
	duty $0e
	beat ds 4
	duty $0f
	beat ds 3 r 1
	duty $0e
	beat f 4
	duty $0f
	beat f 3 r 1

	duty $0e					    ;measure 3
	beat g 4
	duty $0f
	beat g 3 r 17
.rept 3	
	duty $0e
	beat g 4
	duty $0f
	beat g 3 r 1
.endr
	duty $0e
	beat g 4
	duty $0f
	beat g 3 r 17
.rept 3
	duty $0e
	beat d 4
	duty $0f
	beat d 3 r 1
.endr

	duty $0e					    ;measure 4
	beat g 4
	duty $0f
	beat g 3 r 17
.rept 3	
	duty $0e
	beat g 4
	duty $0f
	beat g 3 r 1
.endr
	duty $0e
	beat g 4
	duty $0f
	beat g 3 r 17
.rept 3
	duty $0e
	beat d 4
	duty $0f
	beat d 3 r 1
.endr

musicecee1:
	duty $0e					    ;measure 5
	beat od g 4					    ;octave 2
	duty $0f
	beat g 3 r 17
.rept 2	
	duty $0e
	beat g 4
	duty $0f
	beat g 3 r 1
.endr
	duty $0e
	beat f 4
	duty $0f
	beat f 3 r 1
.rept 2
	duty $0e
	beat g 4
	duty $0f
	beat g 3 r 17
.endr

	duty $0e					    ;measure 6
	beat f 4
	duty $0f
	beat f 3 r 17
.rept 2	
	duty $0e
	beat f 4
	duty $0f
	beat f 3 r 1
.endr
	duty $0e
	beat ds 4
	duty $0f
	beat ds 3 r 1
.rept 2
	duty $0e
	beat f 4
	duty $0f
	beat f 3 r 17
.endr

	duty $0e					    ;measure 7
	beat ds 4
	duty $0f
	beat ds 3 r 17
.rept 2	
	duty $0e
	beat ds 4
	duty $0f
	beat ds 3 r 1
.endr
	duty $0e
	beat d 4
	duty $0f
	beat d 3 r 1
.rept 2
	duty $0e
	beat ds 4
	duty $0f
	beat ds 3 r 17
.endr

	duty $0e					    ;measure 8
	beat as 4
	duty $0f
	beat as 3 r 17
.rept 2	
	duty $0e
	beat as 4
	duty $0f
	beat as 3 r 1
.endr
	duty $0e
	beat gs 4
	duty $0f
	beat gs 3 r 1
.rept 2	
	duty $0e
	beat as 4
	duty $0f
	beat as 3 r 17
.endr

	duty $0e						;measure 9
	beat gs 4
	duty $0f
	beat gs 3 r 17
.rept 2	
	duty $0e
	beat gs 4
	duty $0f
	beat gs 3 r 1
.endr
	duty $0e
	beat g 4
	duty $0f
	beat g 3 r 1
	duty $0e
	beat gs 4
	duty $0f
	beat gs 3 r 17
.rept 3	
	duty $0e
	beat gs 4
	duty $0f
	beat gs 3 r 1
.endr

	duty $0e						;measure 10
	beat g 4
	duty $0f
	beat g 3 r 17
.rept 2	
	duty $0e
	beat g 4
	duty $0f
	beat g 3 r 1
.endr
	duty $0e
	beat f 4
	duty $0f
	beat f 3 r 1
	duty $0e
	beat g 4
	duty $0f
	beat g 3 r 17
.rept 3	
	duty $0e
	beat g 4
	duty $0f
	beat g 3 r 1
.endr

	duty $0e					    ;measure 11
	beat a 4
	duty $0f
	beat a 3 r 17
.rept 3	
	duty $0e
	beat a 4
	duty $0f
	beat a 3 r 1
.endr
	duty $0e
	beat a 4
	duty $0f
	beat a 3 r 17
.rept 3	
	duty $0e
	beat a 4
	duty $0f
	beat a 3 r 1
.endr

	duty $0e						;measure 12
	beat ou d 4						;octave 3
	duty $0f
	beat d 3 r 17
.rept 3	
	duty $0e
	beat g 4
	duty $0f
	beat g 3 r 1
.endr
	duty $0e
	beat a 24
	duty $0e
	beat e 4
	duty $0f
	beat e 4 r 4
	duty $0e
	beat fs 4
	duty $0f
	beat fs 4 r 4

	duty $0e						;measure 13
	beat od g 4						;octave 2
	duty $0f
	beat g 3 r 17
.rept 2	
	duty $0e
	beat g 4
	duty $0f
	beat g 3 r 1
.endr
	duty $0e
	beat f 4
	duty $0f
	beat f 3 r 1
.rept 2
	duty $0e
	beat g 4
	duty $0f
	beat g 3 r 17
.endr

	duty $0e					    ;measure 14
	beat f 4
	duty $0f
	beat f 3 r 17
.rept 2	
	duty $0e
	beat f 4
	duty $0f
	beat f 3 r 1
.endr
	duty $0e
	beat ds 4
	duty $0f
	beat ds 3 r 1
.rept 2
	duty $0e
	beat f 4
	duty $0f
	beat f 3 r 17
.endr

	duty $0e					    ;measure 15
	beat ds 4
	duty $0f
	beat ds 3 r 17
.rept 2	
	duty $0e
	beat ds 4
	duty $0f
	beat ds 3 r 1
.endr
	duty $0e
	beat d 4
	duty $0f
	beat d 3 r 1
.rept 2
	duty $0e
	beat ds 4
	duty $0f
	beat ds 3 r 17
.endr

	duty $0e					    ;measure 16
	beat as 4
	duty $0f
	beat as 3 r 17
.rept 2	
	duty $0e
	beat as 4
	duty $0f
	beat as 3 r 1
.endr
	duty $0e
	beat gs 4
	duty $0f
	beat gs 3 r 1
.rept 2	
	duty $0e
	beat as 4
	duty $0f
	beat as 3 r 17
.endr

	duty $0e						;measure 17
	beat gs 4
	duty $0f
	beat gs 3 r 17
.rept 2	
	duty $0e
	beat gs 4
	duty $0f
	beat gs 3 r 1
.endr
	duty $0e
	beat g 4
	duty $0f
	beat g 3 r 1
	duty $0e
	beat gs 4
	duty $0f
	beat gs 3 r 17
.rept 3	
	duty $0e
	beat gs 4
	duty $0f
	beat gs 3 r 1
.endr

	duty $14						;measure 18
	vol $8
	beat ou ou d 8 cs 8 d 8 fs 8 g 8 a 8 as 8 r 8 as 8 as 8 a 8 g 8		;octave 4

	duty $15								    ;measure 19
	beat ou d 12 r 4 od as 12 r 4 g 16 fs 16	;octave 4
	duty $14
	beat r 8 fs 8 e 8

	vol $9							;measure 20
	beat fs 8 g 8 a 8 as 8 ou c 8 od as 8 a 8 as 24 r 24	;first note is from last measure's beat

	duty $0e						;measure 21
	beat od od ds 4					;octave 2
	duty $0f
	beat ds 3 r 17
	
	duty $0e
	beat ou ds 4				    ;octave 3
	duty $0f
	beat ds 3 r 1

	duty $0e
	beat g 4
	duty $0f
	beat g 3 r 1

	duty $0e
	beat as 4
	duty $0f
	beat as 3 r 1

	duty $0e
	beat ou ds 4					;octave 4
	duty $0f
	beat ds 3 od od r 17			;octave 2	
.rept 3
	duty $0e
	beat ds 4
	duty $0f
	beat ds 3 r 1
.endr

	duty $0e						;measure 22
	beat d 4
	duty $0f
	beat d 3 r 17
	
	duty $0e
	beat ou d 4						;octave 3
	duty $0f
	beat d 3 r 1

	duty $0e
	beat f 4
	duty $0f
	beat f 3 r 1

	duty $0e
	beat a 4
	duty $0f
	beat a 3 r 1

	duty $0e
	beat ou d 4						;octave 4
	duty $0f
	beat d 3 od r 17				;octave 3	
.rept 3
	duty $0e
	beat d 4
	duty $0f
	beat d 3 r 1
.endr

	;measure 23
	duty $0e						;measure 23
	beat od g 4						;octave 2
	duty $0f
	beat g 3 r 17
.rept 3
	duty $0e
	beat g 4
	duty $0f
	beat g 3 r 1
.endr
	duty $0e
	beat g 4
	duty $0f
	beat g 3 r 17
.rept 3
	duty $0e
	beat g 4
	duty $0f
	beat g 3 r 1
.endr

	duty $0e						;measure 24
	beat g 4
	duty $0f
	beat g 3 r 17
.rept 3
	duty $0e
	beat g 4
	duty $0f
	beat g 3 r 1
.endr
.rept 2
	duty $0e
	beat g 4
	duty $0f
	beat g 3 r 9
.endr
	duty $0e
	beat f 4
	duty $0f
	beat f 3 r 9

	duty $0e						;measure 25
	beat ds 4
	duty $0f
	beat ds 3 r 17
	
	duty $0e
	beat ds 4
	duty $0f
	beat ds 3 r 1

	duty $0e
	beat g 4
	duty $0f
	beat g 3 r 1

	duty $0e
	beat as 4
	duty $0f
	beat as 3 r 1

	duty $0e
	beat ou ds 4					;octave 3
	duty $0f
	beat ds 3 od r 17				;octave 2	
.rept 3
	duty $0e
	beat ds 4
	duty $0f
	beat ds 3 r 1
.endr

	duty $0e						;measure 26
	beat gs 4
	duty $0f
	beat gs 3 r 17
	
	duty $0e
	beat gs 4
	duty $0f
	beat gs 3 r 1

	duty $0e
	beat ou c 4						;octave 3
	duty $0f
	beat c 3 r 1

	duty $0e
	beat ds 4
	duty $0f
	beat ds 3 r 1

	duty $0e
	beat gs 4
	duty $0f
	beat gs 3 od r 17				;octave 2	
.rept 3
	duty $0e
	beat gs 4
	duty $0f
	beat gs 3 r 1
.endr

	duty $0e						;measure 27
	beat d 4
	duty $0f
	beat d 3 ou ou r 17				;octave 4
.rept 3
	duty $0e
	beat c 4
	duty $0f
	beat c 3 r 1
.endr
	duty $0e
	beat c 4
	duty $0f
	beat c 3 od od r 17			    ;octave 2
.rept 3
	duty $0e
	beat d 4
	duty $0f
	beat d 3 r 1
.endr
	duty $0e						;measure 27
	beat d 4
	duty $0f
	beat d 3 ou ou r 17				;octave 4

.rept 3
	duty $0e
	beat g 4
	duty $0f
	beat g 3 r 1
.endr

	duty $0e
	beat a 4
	duty $0f
	beat a 3 od r 1			        ;octave 3
	duty $0e
	beat ds 4
	duty $0f
	beat ds 3 r 1
	duty $0e
	beat d 4
	duty $0f
	beat d 3 r 1
	duty $0e

	beat c 4
	duty $0f
	beat c 3 r 1
	duty $0e
	beat od as 4			        ;octave 2
	duty $0f
	beat as 3 r 1
	duty $0e
	beat a 4
	duty $0f
	beat a 3 r 1
	goto musicecee1
	cmdff