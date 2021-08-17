overthereStairStart:
; BPM = 180, B = 20, M = 60
overthereStairChannel1:
.redefine CHANNEL 1
.redefine BEAT 10     ;eigth

.redefine HI_VOL $6
.redefine LO_VOL $3
.redefine LO_VOL_RATIO 1/2
; Measure 1
    vol $0
    beat g3 20
 
    octave 5
    vol $6
	duty $01
    env $1 $00
    beat d 1

overthereStairChannel1Measure4bReset:
    resetCoda
; Measure 4b
    octave 5
    beat e 1 fs 1 g 1
; Measure 5
    beat a 1 ou d 1
    octaved
    vibrato $81
    beat a 2
    vibrato $01
	env $0 $00
    vol $3
    beat a 1
    vol $1
    beat a 1
; Measure 6
    vibrato $00
    env $1 $00
    vol $6
    beat as 1 ou f 1
    beat od as 3 ou c 1
; Measure 7
    octaved
    vibrato $e1 
    beat a 3
    vibrato $01
	env $0 $00
    vol $3
    beat a 2
    vol $1
    beat a 1 r 2

; Measure 8b
    vibrato $00
    env $1 $00
    vol $6
    beat d 1 e 1 fs 1 g 1
; Measure 9
    beat a 1 ou d 1
    octaved
    vibrato $81   
    beat a 2
    vibrato $01
	env $0 $00 
    vol $3
    beat a 1
    vol $1
    beat a 1
; Measure 10
    vibrato $00
    env $1 $00
    vol $6
    beat as 1 ou f 1
    beat ou c 3 d 1
; Measure 11
    octaved
    vibrato $e1  
    beat a 3
    vibrato $01
	env $0 $00
    vol $3
    beat a 2
    vol $1
    beat a 1 r 3
; Measure 12b
    vibrato $00
.rept 3
    volbeat a 1
.endr
; Measure 13
    vol $6
	env $1 $00
    beat as 3 gs 1 fs 1 ds 1
; Measure 14
    vibrato $81      
    beat e 2
    vibrato $01
	env $0 $00
    vol $3
    beat e 1
    vol $1
    beat e 1

    vibrato $00
.redefine LO_VOL $2
    volbeat f 2
; Measure 15
    vol $6
    env $1 $00
    beat gs 3 fs 1 e 1 cs 1   
; Measure 16
    vibrato $81     
    beat d 2
    vibrato $01
	env $0 $00
    vol $3
    beat d 1
    vol $1
    beat d 1

    vibrato $00
.redefine LO_VOL $2
    volbeat ds 2
; Measure 17
    vol $6
    env $1 $00
    beat fs 3 e 1 d 1 cs 1   
; Measure 18
    beat c 3 c 1 od b 1 ou c 1
; Measure 19
    beat cs 3 od a 1
    volbeat ou a 2 r 2


; Measure 20b 
	octave 3
	duty $02
	vol $6
	env $0 $00
	beat g 1 a 1 b 1 ou c 1
; Measure 21
	beat d 1 g 1
    vibrato $82
    beat d 2
    vibrato $02
	;env $0 $00
    vol $3
    beat d 1
    vol $1
    beat d 1
; Measure 22
    vibrato $00
    ;env $1 $00
    vol $6
    beat ds 1 as 1
    beat ds 3 f 1
; Measure 23
    vibrato $e1 
    beat d 4
    vibrato $02
	;env $0 $00
    vol $3
    beat d 2
    vol $1
    beat d 2

; Measure 24b
	octaved
    vibrato $00
    ;env $1 $00
	vol $6
	beat g 1 a 1 b 1 ou c 1
; Measure 25
	beat d 1 g 1
    vibrato $82
    beat d 2
    vibrato $02
	;env $0 $00
    vol $3
    beat d 1
    vol $1
    beat d 1	
; Measure 26
    vibrato $00
    ;env $1 $00
    vol $6
    beat ds 1 as 1
    beat ou f 3 g 1
; Measure 27
    vibrato $e1  
    beat d 4
    vibrato $02
	;env $0 $00
    vol $3
    beat d 3
    vol $1
    beat d 2
; Measure 28b
    vibrato $00
	octave 6
.rept 3
    volbeat d 1
.endr
; Measure 29
    vol $6
	;env $1 $00
    beat ds 3 cs 1 od b 1 gs 1
; Measure 30
    vibrato $82      
    beat a 2
    vibrato $02
	;env $0 $00
    vol $3
    beat a 1
    vol $1
    beat a 1

    vibrato $00
.redefine LO_VOL $2
    volbeat as 2
; Measure 31
    vol $6
    ;env $1 $00
	octaveu
    beat cs 3 od b 1 a 1 fs 1   
; Measure 32
    vibrato $82     
    beat g 2
    vibrato $02
	;env $0 $00
    vol $3
    beat g 1
    vol $1
    beat g 1

    vibrato $00
.redefine LO_VOL $2
    volbeat gs 2
; Measure 33
    vol $6
    ;env $1 $00
    beat b 3 a 1 g 1 fs 1   
; Measure 34
.redefine NOTE_END_WAIT 5
    beat f 3
.redefine NOTE_END_WAIT 0
	beat f 1 e 1 f 1
; Measure 35
    beat fs 3 d 1
	octaveu
.redefine LO_VOL_RATIO 1/2
.redefine NO_FIRST_VOL 1
    volbeat d 2 r 2
.redefine NO_FIRST_VOL 0
; Measure 36b
	octave 3
	duty $03
	;env $0 $00
    vibrato $82     
    beat g 2
    vibrato $02
    vol $3
    beat g 1
    vol $1
    beat g 1

; Measure 37
	octave 5
	env $0 $07
	vibrato $00
	duty $02
	vol $6
	beat g 1 e 1 c 1
	beat od a 1 e 1
	vol $3
	beat e 1
; Measure 38
	vol $6
	octaveu
	beat gs 1 ds 1 od as 1
	beat gs 1 ou gs 1 as 1
; Measure 39
	beat g 1
	vol $3
	beat g 1

	vol $6
	octave 4
	duty $03
	vibrato $42
	env $0 $00
	beat f 2 e 2
; Measure 40
	beat ds 2 d 2

	octave 5
	env $0 $07
	duty $02
	vibrato $00
	beat a 1
	vol $3
	beat a 1
; Measure 41
	vol $6
	beat as 1 g 1 d 1
	beat od as 1 g 1
	vol $3
	beat g 1
; Measure 42
	vol $6
	octaveu
	beat a 1 ds 1 c 1
	beat od a 1 ou a 1 ou c 1
; Measure 43
	octaved
	beat as 1
	vol $3
	beat as 1

	vol $6
	octave 4
	duty $03
	vibrato $42
	env $0 $00
	beat d 2 c 2
; Measure 44
	beat od as 2

	env $0 $07
	duty $02
	vibrato $00
	octave 5
	beat d 1 e 1 f 1 g 1
; Measure 45
    vibrato $82     
    beat a 2
    vibrato $02
	env $0 $00
    vol $3
    beat a 1
    vol $1
    beat a 1

	vol $6
	env $0 $07
	vibrato $00
	beat a 2
; Measure 46
	beat g 3 f 1 e 1 f 1
; Measure 47
	octaveu
    vibrato $82     
    beat c 2
    vibrato $02
	env $0 $00
    vol $3
    beat c 1
    vol $1
    beat c 1		

	octaved
	vol $6
	env $0 $07
	vibrato $00
	beat a 2
; Measure 48
	beat f 1 a 1
.redefine NO_FIRST_VOL 1
	volbeat ou ds 2
.redefine NO_FIRST_VOL 0
	volbeat d 2

; Measure 49
	octave 4
	env $0 $04
	volbeat as 1 g 1 g 1
	volbeat ds 1 a 1 fs 1
; Measure 50
	volbeat gs 1 f 1 f 1
	volbeat cs 1 g 1 e 1
; Measure 51
	volbeat fs 1 ds 1 ds 1
	volbeat od b 1 ou f 1 d 1
; Measure 52
	volbeat e 1 cs 1 cs 1
	volbeat od a 1 ou ds 1 c 1

; Measure 53
	octave 5
	vol $6
	beat d 1 od a 1
	beat ou d 1 e 1 fs 2
; Measure 54
	beat g 1 a 1 as 1
	beat ou c 1 d 2
; Measure 55
	beat cs 1 od a 1 a 1
	beat e 1 e 2
; Measure 56
	octaveu
	beat c 1 od a 1 f 1
	beat g 1 ou c 1 d 1
; Measure 57
	beat e 1 c 1 od g 1
	beat e 1 c 2
; Measure 58
	octaveu
	beat g 1 e 1 c 1
	beat od g 1 e 2
; Measure 59
	octaveu
	beat b 1 g 1 e 1
	beat c 1 od g 2
; Measure 60
	octave 6
.redefine HI_VOL $9
.redefine LO_VOL $6
.rept 3
	volbeat d 1
.endr

 ;   vol $6
	duty $01
    env $1 $00
	goto overthereStairChannel1Measure4bReset
    cmdff

overthereStairChannel0:
.redefine CHANNEL 0
.redefine BEAT 5	;sixteenth

.redefine HI_VOL $6
.redefine LO_VOL $3
.redefine LO_VOL_RATIO 1/2

overthereStairChannel0Measure1bReset:
	resetCoda
	vol $6
overthereStairChannel0Measure1b:
; Coda == 0,1,2
	incCoda
; Measure 1,5,9
	octave 5
	env $0 $05
	vibrato $01
	duty $02	
    beat r 4 fs 2 d 2
	beat od b 2 g 2
; Measure 2,6,10
    octaveu
    beat g 2 ds 2 c 2
    octaved
    beat gs 2 ds 2 r 6
; Measure 3b,7b,11b
    octaveu
    beat fs 2 d 2 od b 2 g 2
; Measure 4,8,12
    octaveu
    beat f 2 cs 2 od as 2
	beat f 2 cs 2 r 2
	vol $3
	gotoCond 0+3 overthereStairChannel0Measure13
	goto overthereStairChannel0Measure1b

overthereStairChannel0Measure13:
.redefine BEAT 10	;eighth
; Coda == 3
; Measure 13
	octave 4
	beat r 1 gs 1 b 1
	beat ou ds 1 fs 1 gs 1
; Measure 14
	beat b 1 gs 1 f 1
	beat cs 1 od b 1 gs 1
; Measure 15
	beat r 1 fs 1 a 1
	beat ou cs 1 e 1 fs 1
; Measure 16
	beat a 1 fs 1 ds 1
	beat od b 1 a 1 r 2
; Measure 17b
	beat e 1 g 1
	beat b 1 ou d 1 e 1
; Measure 18
	beat f 1 ds 1 cs 1
	beat od as 1 f 1 ds 1
; Measure 19
	beat c 1 d 1 f 1
	beat a 1 ou c 1 e 1
; Measure 20
	beat fs 1


; Measure 20b
.redefine BEAT 10	;eighth
	octave 5
	duty $01
	env $1 $00
	vol $6
	beat g 1
	octaveu
	vibrato $83
	beat g 2
	env $0 $00
	vibrato $3
	vol $3
	beat g 1 
	vol $1
	beat g 1
; Measure 21
	octave 5
	vibrato $00
	env $3 $07
	vol $4
	duty $02
	beat d 1 g 1 d 4
; Measure 22
	beat g 2 f 3 ds 1
; Measure 23
	beat d 1
.redefine HI_VOL $4
.redefine LO_VOL $2
	octaved
	volbeat b 1 a 1
	volbeat b 1 g 1 b 1 
; Measure 24
	volbeat f 1 b 1 ds 1
	volbeat b 1 d 1 b 1
; Measure 25
	octave 5
	vol $4
	beat d 1 g 1 d 4
; Measure 26
	beat g 2 f 3 ds 1
; Measure 27
	beat d 1
.redefine HI_VOL $4
.redefine LO_VOL $2
	octaved
	volbeat b 1 a 1
	volbeat b 1 g 1 b 1 
; Measure 28
	volbeat f 1 b 1 ds 1
	volbeat b 1 d 1 b 1	r 2

; Measure 29b
.redefine BEAT 20	;quarter
.redefine HI_VOL $6
.redefine LO_VOL $3
	octave 3
	duty $01
	env $0 $07
	volbeat b 1 b 1
; Measure 30
	volbeat r 1 ou cs 1 r 2
; Measure 31b
	volbeat od a 1 a 1
; Measure 32
	volbeat r 1 b 1 r 2
; Measure 33b
	volbeat g 1 g 1
; Measure 34
	volbeat r 1 as 1 as 1
; Measure 35
	volbeat r 1 a 1 a 1

; Measure 36
.redefine BEAT 10	;eighth
	octave 5
	duty $01
	env $1 $00
	vol $6
	beat r 1 d 1
	octaveu
	vibrato $83
	beat d 3
	env $0 $00
	vibrato $03
	vol $3
	beat d 1 
	vol $1
	beat d 1

; Measure 37
.redefine BEAT 1	;free
.define WAIT_VAR 3
	octave 5
	vibrato $00
	env $2 $07
	duty $02
	vol $3
	beat r WAIT_VAR
.redefine BEAT 10	;eighth
	beat g 1 e 1 c 1
	beat od a 1 e 2
; Measure 38a
	octaveu
	beat gs 1 ds 1 od as 1
	beat gs 1
.redefine BEAT 1	;free	
	beat ou gs 10-WAIT_VAR
; Measure 39
.redefine BEAT 20	;quarter
	octave 3
	duty $01
	env $0 $07
	volbeat f 1

	vol $6
	octave 4
	duty $03
	vibrato $42
	env $0 $00		
	beat c 1 od b 1
; Measure 40
	beat as 1 b 1 a 1
.redefine BEAT 1	;free
	beat r 10+WAIT_VAR
; Measure 41a
.redefine BEAT 10	;eighth
	octave 5
	vibrato $00
	env $2 $07
	duty $02
	vol $3

	beat as 1 g 1 d 1
	beat od as 1 g 2
; Measure 42a
	octaveu
	beat a 1 ds 1 c 1
	beat od a 1 ou a 1 ou c 1
; Measure 43a
.redefine BEAT 1	;free
	beat od as 10-WAIT_VAR
.redefine BEAT 10	;eighth
	vol $6
	octave 3
	duty $03
	vibrato $42
	env $0 $00	
	beat as 2 a 2
; Measure 44
	beat d 2

	env $0 $07
	duty $02
	vibrato $00
	octave 4
	beat d 1 e 1 f 1 g 1
; Measure 45
    vibrato $82     
    beat a 2
    vibrato $00
.redefine NO_FIRST_VOL 1
	volbeat d 2
.redefine NO_FIRST_VOL 0
	volbeat d 2
; Measure 46
	vol $6
	beat g 2 d 1
	beat f 1 e 1 f 1
; Measure 47
	octaveu
    vibrato $82     
    beat c 2
	octaved
    vibrato $00
.redefine NO_FIRST_VOL 1
	volbeat c 2
.redefine NO_FIRST_VOL 0
	volbeat c 2	
; Measure 48
	vol $6
	beat f 1 a 1
.redefine NO_FIRST_VOL 1
	volbeat ou ds 2
.redefine NO_FIRST_VOL 0
	volbeat d 2

; Measure 49
	octave 3
	duty $03
	vibrato $42
	env $0 $00	
	volbeat g 2 r 2 fs 2
; Measure 50
	volbeat f 2 r 2 e 2
; Measure 51
	volbeat ds 2 r 2 d 2
; Measure 52
	volbeat cs 2 r 2 c 2

; Measure 53
	octave 3
	vol $6
	vibrato $00
	duty $02
	env $0 $07	
	beat d 1 od a 1
	beat ou d 1 e 1 fs 2
; Measure 54
	beat g 1 a 1 as 1
	beat ou c 1 d 2
; Measure 55
	beat cs 1 od a 1 a 1
	beat e 1 g 2
; Measure 56
	octaveu
	beat c 1 od a 1 ou c 1
	beat d 1 a 1 b 1
; Measure 57
	beat a 1 ou c 1 od g 1
	beat e 1 c 2
; Measure 58
	octaveu
	beat d 1 e 1 c 1
	beat od g 1 e 2
; Measure 59
	octaveu
	beat e 1 g 1 e 1
	beat c 1 od g 2
; Measure 60
	octave 3
.redefine HI_VOL $9
.redefine LO_VOL $6
.rept 3
	volbeat a 1
.endr

	beat r 3
	vol $3
	resetCoda
	incCoda
	goto overthereStairChannel0Measure1b
    cmdff


overthereStairChannel4:
.redefine CHANNEL 4
.redefine BEAT 20     ;quarter

.redefine HI_VOL $0e
.redefine LO_VOL $0f
.redefine LO_VOL_RATIO 1/2
	octave 2

overthereStairChannel4Measure1Reset:
	resetCoda
overthereStairChannel4Measure1:
; Coda == 0,1,2
	incCoda
; Measure 1,5
	volbeat g 1 ou b 1 b 1
; Measure 2,6
	octaved
	volbeat gs 1 ou ou c 1 r 1
; Measure 3,7
	octaved
	octaved
	volbeat g 1 ou b 1 b 1

	gotoCond 0+3 overthereStairChannel4Measure12

overthereStairChannel4Measure4:
; Measure 4,8
	octaved
	volbeat fs 1 ou f 1 r 1
	goto overthereStairChannel4Measure1

overthereStairChannel4Measure12:
; Coda == 3
; Measure 12
	octave 2
	volbeat g 1 ou b 1 r 1
; Measure 13
	octaved
	volbeat gs 1 ou b 1 b 1
; Measure 14
	volbeat cs 1 b 1 r 1
; Measure 15
	octaved
	volbeat fs 1 ou a 1 a 1
; Measure 16
	octaved
	volbeat b 1 ou a 1 r 1

; Measure 17
	octaved
	volbeat e 1 ou g 1 g 1
; Measure 18
	octaved
	volbeat ds 1 ou as 1 as 1
; Measure 19
	octaved
	volbeat d 1 ou f 1 f 1
; Measure 20
	octaved
	volbeat g 1 r 2

overthereStairChannel4Measure21
; Coda == 3
	incCoda
; Measure 21,25
	octave 2
	volbeat c 1 ou d 1 d 1
; Measure 22,26	
	octaved
	volbeat cs 1 ou ds 1 r 1
; Measure 23,27
	octaved
	volbeat c 1 ou d 1 d 1	
; Measure 24,28
	octaved
	volbeat cs 1 ou d 1 r 1

	gotoCond 3+1 overthereStairChannel4Measure21

overthereStairChannel4Measure29
; Coda == 4
; Measure 29
	octave 2
	volbeat cs 1 ou e 1 e 1
; Measure 30
	octaved
	volbeat fs 1 ou e 1 r 1
; Measure 31
	octaved
	octaved
	volbeat b 1 ou ou d 1 d 1
; Measure 32
	octaved
	volbeat e 1 ou d 1 r 1

; Measure 33
	octave 1
	volbeat a 1 ou ou c 1 c 1
; Measure 34
	octaved
	octaved
	volbeat gs 1 ou ou ds 1 ds 1
; Measure 35
	octaved
	octaved
	volbeat g 1 ou as 1 as 1
; Measure 36
	duty $0e
	beat c 1
.redefine LO_VOL_RATIO 3/5
.redefine NO_FIRST_VOL 1	
	octaveu
	volbeat e 2

; Measure 37-38
	octave 2
	duty $0e
	beat f 3 fs 3
; Measure 39
.redefine LO_VOL_RATIO 1/2
;.redefine NO_FIRST_VOL 1
	volbeat f 1 
	octaveu
;	duty $0e
.redefine LO_VOL_RATIO 3/4
.redefine NO_FIRST_VOL 0 
	volbeat a 1 gs 1
; Measure 40
	volbeat g 1 g 1 fs 1

; Measure 41-42
	octaved
	duty $0e
	beat g 3 fs 3
; Measure 43
	beat g 1
.redefine NO_FIRST_VOL 1	
	volbeat ou g 1
.redefine NO_FIRST_VOL 0
	volbeat fs 1
; Measure 44
	octaved
	duty $0e
	beat g 1 r 2

; Measure 45
.redefine LO_VOL_RATIO 1/2
	octave 2
	volbeat b 1
.redefine NO_FIRST_VOL 0 	
	volbeat ou a 1 a 1
; Measure 46
	octaved
	volbeat as 1 ou f 1 f 1
; Measure 47
	octaved
	volbeat a 1 ou a 1 a 1
; Measure 48
	octaved
	volbeat gs 1 ou a 1 a 1

; Measure 49
	octave 2
	volbeat g 1 r 1 fs 1
; Measure 50
	volbeat f 1 r 1 e 1
; Measure 51
	volbeat ds 1 r 1 d 1
; Measure 52
	volbeat cs 1 r 1 c 1

; Measure 53
.redefine BEAT 5	;sixteenth
    octave 2
    duty $08
    beat d 1 e 1 fs 1
    duty $0f
    beat g 1 a 1 b 1
    duty $14 
    beat ou c 1 d 1 e 1
    duty $09
    beat fs 1 g 1 a 1
; Measure 54
	octave 2
    duty $0f
    beat g 1 a 1 as 1
    beat $14
    beat ou c 1 d 1 e 1
    duty $09
    beat f 1 g 1 a 1
    duty $15
    beat as 1 ou c 1 d 1
; Measure 55
	octave 2
    duty $14
    beat a 1 b 1 ou cs 1
    beat $09
    beat d 1 e 1 fs 1
    duty $15
    beat g 1 a 1 b 1
	duty $07
    beat ou cs 1 d 1 e 1
	
; Measure 56
	octave 2
	volbeat d 1
	octaveu
	duty $0e
	beat c 2
; Measure 57
.redefine NO_FIRST_VOL 1
	octave 4
	volbeat g 1
.redefine NO_FIRST_VOL 0 		
	volbeat od d 1 d 1
; Measure 58
	octaveu
	volbeat e 1 od d 1 d 1
; Measure 59
	octaveu 
	volbeat c 1 od d 1 d 1
; Measure 60
.redefine BEAT 10	;eigth
	octaved
.rept 3
	volbeat d 1
.endr
    beat r 3

	resetCoda
	incCoda
	goto overthereStairChannel4Measure1
overthereStairChannel6:
    cmdff