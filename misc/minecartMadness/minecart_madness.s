minecartMayhemStart:
; Channel 1 repeats to measure 3 while channels 0 and 4 repeat to measure 1.
; Therefore, there are only 22 measures in the latter two while there are technically 24 in the former.
; This does not affect playback and is a minor optimization.
minecartMayhemChannel1:
	cmdf2
	octave 4
	.redefine BEAT 1
.redefine NO_FIRST_VOL 0
; Measure 1,2
	vol $0
	wait1 192
minecartMayhemChannel1Measure3:
; Measure 3
	vibrato $00
	duty $01
	vol $6
	env $0 $02
	beat c 6 d 6 ds 6 d 6			
	.redefine NOTE_END_WAIT 6
	env $0 $04
	beat c 12 g 12
	beat fs 12 f 12
	beat ds 12 d 12
	.redefine NOTE_END_WAIT 0

; Measure 4
	env $0 $02
	beat c 6 d 6 ds 6 d 6
	.redefine NOTE_END_WAIT 6
	env $0 $04
	beat c 12 ou c 12
	beat od b 12 ou c 12
	beat d 24
	.redefine NOTE_END_WAIT 0

; Measure 5
	env $0 $02
	beat od c 6 d 6 ds 6 d 6
	.redefine NOTE_END_WAIT 6
	env $0 $04
	beat c 12 g 12
	beat fs 12 f 12
	beat ds 12 d 12
	.redefine NOTE_END_WAIT 0

; Measure 6
	vibrato $e2
	env $0 $02
	beat c 6 d 6 ds 6 c 6
	beat od b 6 ou c 6 d 6 od b 6
	.redefine NOTE_END_WAIT 6
	env $0 $04
	beat ou c 12 od g 12
	beat ou c 24
	.redefine NOTE_END_WAIT 0
    vibrato $00

; Measure 7 
	env $0 $02
	beat c 6 d 6 ds 6 d 6			
	.redefine NOTE_END_WAIT 6
	env $0 $04
	beat c 12 g 12
	beat fs 12 f 12
	beat ds 12 d 12
	.redefine NOTE_END_WAIT 0

; Measure 8
	env $0 $02
	beat c 6 d 6 ds 6 d 6
	.redefine NOTE_END_WAIT 6
	env $0 $04
	beat c 12 ou c 12
	beat od b 12 ou c 12
	beat d 24
	.redefine NOTE_END_WAIT 0

; Measure 9
	env $0 $02
	beat od c 6 d 6 ds 6 d 6
	.redefine NOTE_END_WAIT 6
	env $0 $04
	beat c 12 g 12
	beat gs 12 a 12
	beat as 12 b 12
	.redefine NOTE_END_WAIT 0	

; Measure 10
	vibrato $e2
	env $0 $02
	beat ou c 6 d 6 ds 6 c 6
	beat od b 6 ou c 6 d 6 od b 6
	.redefine NOTE_END_WAIT 6
	env $0 $04	
	beat ou c 12 od g 12
	beat ou c 24 od
	.redefine NOTE_END_WAIT 0
	vibrato $00

; Measure 11
	duty $02
	.rept 2
		env $0 $02
		beat f 6 g 6 gs 6 g 6
		.redefine NOTE_END_WAIT 6	
		env $0 $04
		beat f 12 ou c 12 od
		.redefine NOTE_END_WAIT 0	
	.endr
; Measure 12
	.rept 2
		env $0 $02
		beat ou c 6 d 6 ds 6 d 6
		.redefine NOTE_END_WAIT 6	
		env $0 $04
		beat c 12 g 12 od
		.redefine NOTE_END_WAIT 0	
	.endr

; Measure 13
	env $0 $02
	beat ou d 6 r 6 d 6 cs 6
	.redefine NOTE_END_WAIT 6	
	env $0 $04
	beat d 12 od b 12
	.redefine NOTE_END_WAIT 0

	env $0 $02
	beat ou d 6 cs 6 d 6 cs 6
	.redefine NOTE_END_WAIT 6	
	env $0 $04
	beat d 12 od b 12
	.redefine NOTE_END_WAIT 0	

; Measure 14
	vibrato $e1
	env $0 $02
	beat ou c 6 r 6 c 6 od b 6
	.redefine NOTE_END_WAIT 6
	env $0 $04
	.rept 2	
		beat ou c 12 od g 12
	.endr 
	beat ds 12 c 12
	.redefine NOTE_END_WAIT 0
	vibrato $00

; Measure 15
	.rept 2
		env $0 $02
		beat f 6 g 6 gs 6 g 6			
		.redefine NOTE_END_WAIT 6	
		env $0 $04
		beat f 12 ou c 12 od
		.redefine NOTE_END_WAIT 0	
	.endr
; Measure 16
	.rept 2
		env $0 $02
		beat ou c 6 d 6 ds 6 d 6			
		.redefine NOTE_END_WAIT 6	
		env $0 $04
		beat c 12 g 12 od
		.redefine NOTE_END_WAIT 0	
	.endr	
; Measure 17
	.rept 2
		env $0 $02
		beat ou gs 6 g 6 gs 6 g 6			
		.redefine NOTE_END_WAIT 6
		env $0 $04	
		beat gs 12 ds 12 od
		.redefine NOTE_END_WAIT 0	
	.endr
; Measure 18
	vibrato $e1
	.redefine NOTE_END_WAIT 6			
	beat ou g 12 g 12
	beat d 12 d 12
	beat od b 12 b 12
	beat g 12 g 12
	.redefine NOTE_END_WAIT 0
	vibrato $00	

; Measure 19
	duty $01
	beat ou c 2 od c 16 d 6						
	.redefine NOTE_END_WAIT 6	
	beat ds 12 c 12
	.redefine NOTE_END_WAIT 0

	env $0 $02
	beat g 6 fs 6 g 6 fs 6
	env $0 $04
	beat g 18 r 6

; Measure 20
	env $0 $02
	beat gs 6 r 6 gs 6 as 6				
	.redefine NOTE_END_WAIT 6
	env $0 $04	
	beat ou c 12 od gs 12
	.redefine NOTE_END_WAIT 0

	.redefine NOTE_END_WAIT 3
	env $0 $02
	beat gs 6 gs 6 gs 6 gs 6
	.redefine NOTE_END_WAIT 0

	.redefine NOTE_END_WAIT 6
	env $0 $04	
	beat g 12 od b 12
	.redefine NOTE_END_WAIT 0

; Measure 21
	beat ou c 18 d 6						
	.redefine NOTE_END_WAIT 6	
	beat ds 12 c 12
	.redefine NOTE_END_WAIT 0

	env $0 $02
	beat g 6 fs 6 g 6 fs 6
	env $0 $04
	beat g 18 r 6

; Measure 22
	env $0 $02
	beat gs 6 r 6 gs 6 as 6				
	.redefine NOTE_END_WAIT 6	
	env $0 $04
	beat ou c 12 od gs 12
	.redefine NOTE_END_WAIT 0	

	env $0 $02
	beat ou c 6 d 6 ds 6 d 6
	.redefine NOTE_END_WAIT 6
	env $0 $04	
	beat c 12 od b 12
	.redefine NOTE_END_WAIT 0

; Measure 23
	env $0 $02
	beat ou c 6 od d 6 ds 6 d 6			
	beat c 6 r 66

; Measure 24
	beat c 6 d 6 ds 6 d 6			
	beat c 6 r 66	
	goto minecartMayhemChannel1Measure3
	cmdff


minecartMayhemChannel0:
	octave 4
	.redefine BEAT 1

minecartMayhemChannel0Measure1:
; Measure 1
	vibrato $00	
	duty $0a
	vol $3
	.redefine NOTE_END_WAIT 12	
	beat c 24 od as 24 ou c 24 od g 24
; Measure 2
	beat ou c 24 od as 24 gs 24 g 24
.rept 2
	.redefine NOTE_END_WAIT 12
; Measure 3,7
	beat c 24 d 24 ds 24 f 24
; Measure 4,8
	beat g 24 ds 24 f 24 g 24
; Measure 5,9
	beat c 24 d 24 ds 24 f 24
; Measure 6,10
	beat g 24 b 24 g 24
	.redefine NOTE_END_WAIT 6
	beat ds 12 d 12
.endr
; Measure 11
	duty $0e
	.redefine NOTE_END_WAIT 0
	beat od gs 3 ou c 45 f 3 gs 45
; Measure 12
	beat ds 3 g 45 ou c 3 ds 45
; Measure 13
	beat d 3 g 45 od b 3 ou d 21
	beat od b 6 a 6 g 6 fs 6
; Measure 14
	.redefine NOTE_END_WAIT 12	
	beat g 24 ou c 24 od g 24
	.redefine NOTE_END_WAIT 6
	beat c 12 od as 12
; Measure 15
	.redefine NOTE_END_WAIT 0
	beat gs 3 ou c 45 f 3 gs 45
; Measure 16
	beat ds 3 g 45 ou c 3 ds 45
; Measure 17
	.redefine NOTE_END_WAIT 6
	beat gs 24 ds 12 c 12 od gs 24 gs 12 ds 12
; Measure 18
	beat d 12 g 12 b 12 ou d 12 od b 12 ou f 12 g 12 od d 12
; Measure 19
	duty $00
	.redefine NOTE_END_WAIT 3
	beat c 6 c 6 c 6 c 6 d 6 d 6
	.redefine NOTE_END_WAIT 0
	beat ds 6 f 6 g 6 d 6 g 6 d 6 g 6 gs 6 g 6 f 6
; Measure 20
	.redefine NOTE_END_WAIT 3
	beat gs 6 ds 6 ds 6 d 6 c 6 c 6 c 6 c 6
	.redefine NOTE_END_WAIT 0
	beat od gs 6 ou c 6 ds 6 d 6 g 6 f 6 d 6 ds 6	
; Measure 21
	beat g 6 f 6 ds 6 d 6 c 6 ds 6 g 6 ou c 3 r 3
	beat c 6 od b 6 ou c 6 od b 6 ou ds 6 d 6 c 6 od b 6
; Measure 22
	beat gs 6 g 6 gs 6 g 6 f 6 gs 6 ou c 6 od as 6 g 6 f 6 g 6 d 6
	beat c 6 r 6 od b 6 r 6 ou ou

	goto minecartMayhemChannel0Measure1
	cmdff

minecartMayhemChannel4:
	octave 3
	.redefine BEAT 1
minecartMayhemChannel4Measure1:
; Measure 1,2
	vol $3
	duty $0f
.rept 2
	beat c 12 ds 2 g 4  r 6
	beat od as 12 ou ds 2 g 4 r 6
	beat od gs 12 ou ds 2 g 4 r 6
	beat od g 12 ou ds 2 g 4 r 6  
.endr
; Measure 3-5, 7-9
.rept 2						
	.rept 3
		beat c 12 ds 6 r 6
		beat od as 12 ou ds 2 g 4 r 6
		beat od gs 12 ou ds 2 g 4 r 6
		beat od g 12 ou ds 2 g 4 r 6 
	.endr
; Measure 6,10
	beat c 12 ds 2 g 4 r 6			
	beat od b 12 ou d 2 f 4 r 6
	beat c 12 ds 2 g 4 r 6
	beat c 12 ds 2 g 4 r 6 
.endr

; Measure 11
	.rept 2
		beat od f 12 ou f 2 gs 10
		beat od c 12 ou f 2 gs 10
	.endr
; Measure 12
	.rept 2
		beat od c 12 ou ds 2 g 10
		beat od g 12 ou ds 2 g 10
	.endr
; Measure 13
	.rept 2
		beat od g 12 ou d 2 g 10
		beat od d 12 ou d 2 g 10
	.endr							
; Measure 14
	.rept 2
		beat c 12 ds 2 g 10
		beat od g 12 ou ds 2 g 10
	.endr
;Measure 15
	.rept 2
		beat od f 12 ou f 2 gs 10
		beat od c 12 ou f 2 gs 10
	.endr
; Measure 16
	.rept 2
		beat od c 12 ou ds 2 g 10
		beat od g 12 ou ds 2 g 10
	.endr
;Measure 17
	.rept 2
		beat od gs 12 ou ds 2 gs 10
		beat od c 12 ou ds 2 gs 10
	.endr
; Measure 18
	.rept 2
		beat od g 12 ou d 2 g 10
		beat od d 12 ou d 2 g 10
	.endr	

.rept 2
; Measure 19,21
	.rept 2
		beat c 12 ds 2 g 10
	.endr	
	.rept 2
		beat od g 12 ou d 2 g 10
	.endr	
; Measure 20,22
	.rept 2
		beat od gs 12 ou ds 2 gs 10
	.endr
	beat od c 12 ou f 2 gs 10
	beat od c 12 ou d 2 g 10
.endr

	goto minecartMayhemChannel4Measure1
	cmdff

minecartMayhemChannel6:
	cmdff