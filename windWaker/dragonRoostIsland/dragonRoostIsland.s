dragonRoostIslandStart:
; BPM =  163.64, B = 33, M = 66
dragonRoostIslandChannel1:
.redefine CHANNEL 1
.redefine BEAT 1     ;free

.redefine HI_VOL $6
.redefine LO_VOL $3
.redefine LO_VOL_RATIO 1/2

; Measure 1-2
	octave 5
	vol $6
	env $0 $04
	duty $02
;.redefine NOTE_END_WAIT 2
	beat d 11 d 5 d 6 d 11
;.redefine NOTE_END_WAIT 0
	beat d 99
; Measure 3-4
	beat r 132

	resetCoda
	goto dragonRoostIslandChannel1Measure5

dragonRoostIslandChannel1Measure54d
; Measure 54d
	octave 5
	beat f 11
dragonRoostIslandChannel1Measure5:
; Coda == 0,1,2
	incCoda
; Measure 5,27,51,55
	octave 5
	beat g 11 g 5 g 6 g 11
	beat g 22 g 11
; Measure 6,28,52,56
	beat f 11 f 5 f 6 f 11
	beat f 11 f 11 f 11
; Measure 7,29,53,57
	beat g 11 g 11 g 11
	beat g 5 g 6 g 11 g 11
; Measure 8,30,54,58
	beat f 11 f 11 f 11
	beat f 5 f 6 f 11

	gotoCond 2+1 dragonRoostIslandChannel1Measure54d
; Measure 8d,30d
	vol $6
	env $1 $00
	duty $02
	gotoCond 3+1 dragonRoostIslandChannel1Measure58d

	beat d 11
; Measure 9,31
.define GRACE 3
	beat a GRACE as 33-GRACE
	beat a 11 as 11 g 11-GRACE r GRACE
; Measure 10,32
	beat ou c 33
	beat od a 33
; Measure 11,33
	beat a GRACE	
;	beat g 66-GRACE
	vibrato $81
	beat g 55
	vibrato $01
	env $0 $00
	vol $3
	beat g 6
	vol $1
	beat g 5-GRACE

; Measure 12,34
	vol $6
	env $1 $00
	vibrato $81	
;	beat d 44
	beat d 33
	vibrato $01
	env $0 $00
	vol $3
	beat d 11
	
	vol $6
	env $1 $00
	vibrato $00	
	beat f 11 d 11-GRACE r GRACE
; Measure 13,35	(repeat of M9,31)
	beat a GRACE as 33-GRACE
	beat a 11 as 11 g 11-GRACE r GRACE
; Measure 14,36
	beat as GRACE ou c 33-GRACE
	beat f 33
; Measure 15-16,37-38
;	beat d 110
	vibrato $81
	beat d 66
	vibrato $01
	env $0 $00
	vol $3
	beat d 22
	vol $1
	beat d 22

	vol $6
	env $1 $00
	vibrato $00	
	beat od as 11-GRACE r GRACE as 11
; Measure 17-18,39-40
	beat ou c 27 d 6
;	beat c 77
	vibrato $81
	beat c 44
	vibrato $01
	env $0 $00
	vol $3
	beat c 22
	vol $1
	beat c 11

	vol $6
	env $1 $00
	vibrato $00	
	beat od as 11 ou c 11-GRACE r GRACE
; Measure 19-20,41-42
	beat od as 33
;	beat g 77
	vibrato $81
	beat g 44
	vibrato $01
	env $0 $00
	vol $3
	beat g 22
	vol $1
	beat g 11

	vol $6
	env $1 $00
	vibrato $00
	beat g 11 as 11-GRACE r GRACE
; Measure 21-22,43-44
	beat ou c 27 d 6
;	beat c 88
	vibrato $81
	beat c 50
	vibrato $01
	env $0 $00
	vol $3
	beat c 23
	vol $1
	beat c 15
	
	vol $6
	env $1 $00
	vibrato $00
	beat od as 11
; Measure 23-24,45-46
;	beat g 88
	vibrato $81
	beat g 50
	vibrato $01
	env $0 $00
	vol $3
	beat g 23
	vol $1
	beat g 15 

	octave 5
	vol $4
	env $0 $04
	vibrato $00
;	duty $02
	gotoCond 0+2 dragonRoostIslandChannel1Measure46b
.rept 4
	beat ds 11
.endr
; Measure 25
.rept 3
	beat g 11
.endr
	beat g 5 g 6
.rept 2
	beat g 11
.endr
; Measure 26
	beat ds 11 ds 5 ds 6
.rept 4
	beat ds 11
.endr
	goto dragonRoostIslandChannel1Measure5

dragonRoostIslandChannel1Measure46b:
; Coda == 2
; Measure 46b
	octave 5
	beat ds 5 ds 6
	beat ds 11 d 11 d 11
; Measure 47
	beat c 11 c 22
.rept 3
	beat c 11
.endr
; Measure 48
	beat c 11
.rept 2
	beat c 5 c 6
.endr
	beat c 11 c 11

; Measure 48d
;	vol $6
	octave 5
	env $1 $00
	duty $02
	beat f 11
; Measure 49-50
	beat as GRACE
;	beat g 88-GRACE
	vibrato $81
	beat g 50
	vibrato $01
	env $0 $00
	vol $3
	beat g 23
	vol $1
	beat g 15-GRACE

	octave 5
	vol $4
	env $0 $04
	vibrato $00
	beat g 11 g 22 g 11

	goto dragonRoostIslandChannel1Measure5

dragonRoostIslandChannel1Measure58d:
; Coda == 4,5
	incCoda
; Measure 58d,66d
	octave 6
	beat d 11
; Measure 59,67
	vibrato $81
	beat g 33 f 33
; Measure 60,68
	beat d 33 od as 33
; Measure 61-62,69-70
;	beat ou c 99
	beat ou c 66
	vibrato $01
	env $0 $00
	vol $3
	beat c 22
	vol $1
	beat c 11

	vol $6
	env $1 $00
;	duty $02
	vibrato $01
	beat d 11 od g 11 as 11
; Measure 63-64,71
;	beat ou c 121
	beat ou c 60

	vibrato $01
	env $0 $00
	gotoCond 5+1 dragonRoostIslandChannel1Measure71d
	beat c 26
	vol $3
	beat c 22
	vol $1
	beat c 13

	vol $6
	env $1 $00
	duty $02
	vibrato $81
	beat od as 11
; Measure 65
;	beat ou c 110 r 11
	beat ou c 66
	vibrato $01
	env $0 $00
	vol $3
	beat c 22
	vol $1
	beat c 22 r 11

	vol $6
	env $1 $00
	duty $02
	vibrato $81
	goto dragonRoostIslandChannel1Measure58d

dragonRoostIslandChannel1Measure71d:
; Coda == 6
; Measure 71d
	octave 6
	env $1 $00
	duty $02
	vibrato $81
	beat d 6
; Measure 72
;	beat c 55
	beat c 44
	vibrato $01
	env $0 $00
	vol $3
	beat c 11

	vol $6
	env $1 $00
	duty $02
	vibrato $81
	beat od as 11
; Measure 73-74
;	beat ou c 88
	beat ou c 50
	vibrato $01
	env $0 $00
	vol $3
	beat c 23
	vol $1
	beat c 15

	octave 5
	vol $4
	env $0 $04
	duty $02
	vibrato $00	
	beat g 11 g 22 g 11
; Measure 75
.rept 3
	beat g 11 
.endr
	beat g 22 g 11
; Measure 76
	beat g 11
.rept 2
	beat g 5 g 6
.endr
.rept 3
	beat g 11
.endr

	resetCoda
	incCoda
	goto dragonRoostIslandChannel1Measure5
    cmdff


dragonRoostIslandChannel0:
.redefine CHANNEL 0
.redefine BEAT 1     ;free

; Measure 1-2
	octave 3
	vol $6
	duty $02
	env $0 $04
;.redefine NOTE_END_WAIT 2
	beat a 11 a 5 a 6 a 11
;.redefine NOTE_END_WAIT 0
	beat a 99
; Measure 3-4
	beat r 132

; Measure 5s
	octave 4
	beat d 11 d 5 d 6 d 11
	beat d 22 d 11
; Measure 6s
	beat c 11 c 5 c 6
.rept 4
	beat c 11
.endr
; Measure 7s
.rept 3
	beat d 11
.endr
	beat d 5 d 6 d 11 d 11
; Measure 8s
.rept 3
	beat c 11
.endr
	beat c 5 c 6 c 11 c 11
	vol $4

	resetCoda
dragonRoostIslandChannel0Measure9:
; Coda == 0,1,7,9
; Measure 9,13,31,35
	octave 4
.rept 6
	beat as 11
.endr
	gotoCond 1+0 dragonRoostIslandChannel0Measure14 ; M14
	gotoCond 9+0 dragonRoostIslandChannel0Measure14 ; M36

;fall through 2x; M10,M32
dragonRoostIslandChannel0Measure10:
; Coda == 0,7,8,14,16
	incCoda
; Measure 10,32,34,52,56
	octave 4
	beat a 11 a 5 a 6
.rept 4
	beat a 11
.endr
	gotoCond 8+1 dragonRoostIslandChannel0Measure9 ; M35
	gotoCond 14+1 dragonRoostIslandChannel0Measure25 ; M53
	gotoCond 16+1 dragonRoostIslandChannel0Measure25 ; M57

; fall through 2x; M11,M33
dragonRoostIslandChannel0Measure11:
; Coda == 1,8
; Measure 11,33
	octave 4
	beat g 11 g 5 g 6
.rept 4
	beat g 11
.endr
	gotoCond 8+0 dragonRoostIslandChannel0Measure10 ; M34

; Measure 12s
	beat a 11 a 5 a 6 
.rept 4
	beat a 11
.endr

	goto dragonRoostIslandChannel0Measure9 ; M13

dragonRoostIslandChannel0Measure14:
; Coda == 1,4,9,12,13
	incCoda
; Measure 14,22,36,43-44
	octave 4
.rept 6
	beat a 11
.endr
	gotoCond 4+1 dragonRoostIslandChannel0Measure23 ; M23
	gotoCond 12+1 dragonRoostIslandChannel0Measure14 ; M44
	gotoCond 13+1 dragonRoostIslandChannel0Measure45 ; M45

; fall through 2x; M15,M37
dragonRoostIslandChannel0Measure15:
; Coda == 2,4,10
; Measure 15,20,37
	octave 5
.rept 3
	beat d 11
.endr
	beat d 5 d 6 d 11 d 11

	gotoCond 4+0 dragonRoostIslandChannel0Measure17 ; M21

; fall through 2x; M16,M38
dragonRoostIslandChannel0Measure16:
; Coda == 2,3,5,6,10,11,15
	incCoda
; Measure 16,19,24,26,38,41,55
	octave 4
	beat as 11 as 5 as 6
.rept 4
	beat as 11
.endr
	gotoCond 3+1 dragonRoostIslandChannel0Measure15 ; M20
	gotoCond 5+1 dragonRoostIslandChannel0Measure25 ; M25
	gotoCond 6+1 dragonRoostIslandChannel0Measure27 ; M27
	gotoCond 11+1 dragonRoostIslandChannel0Measure25 ; M42
	gotoCond 15+1 dragonRoostIslandChannel0Measure10 ; M56

; fall through 2x; M17,M39
dragonRoostIslandChannel0Measure17:
; Coda == 3,4,11
; Measure 17,21,39
	octave 5
.rept 6
	beat c 11
.endr
	gotoCond 4+0 dragonRoostIslandChannel0Measure14 ; M22

; fall through 2x; M18,M40
dragonRoostIslandChannel0Measure18:
; Coda == 3,11
; Measure 18,40
	octave 5
	beat c 11 c 5 c 6
.rept 4
	beat c 11
.endr
	goto dragonRoostIslandChannel0Measure16 ; M19,M41

dragonRoostIslandChannel0Measure23:
; Coda == 5
; Measure 23s
	octave 4
.rept 3
	beat g 11
.endr
	beat g 5 g 6 g 11 g 11

	goto dragonRoostIslandChannel0Measure16 ; M24

dragonRoostIslandChannel0Measure25:
; Coda == 6,7,12,15,17
; Measure 25,29,42,53,57
	octave 4
.rept 3
	beat as 11
.endr
	beat as 5 as 6 as 11 as 11

	gotoCond 6+0 dragonRoostIslandChannel0Measure16 ; M26
	gotoCond 12+0 dragonRoostIslandChannel0Measure14 ; M43
	goto dragonRoostIslandChannel0Measure30 ; M30,M54,M58

dragonRoostIslandChannel0Measure27:
; Coda == 7,14
; Measure 27,51
	octave 4
	beat as 11 as 5 as 6 as 11
	beat as 22 as 11

	gotoCond 14+0 dragonRoostIslandChannel0Measure10 ; M52
; Measure 28s
	beat a 11 a 5 a 6
.rept 4
	beat a 11 
.endr
	goto dragonRoostIslandChannel0Measure25 ; M29

dragonRoostIslandChannel0Measure30:
; Coda == 7,15,17
; Measure 30,54,58
.rept 3
	beat a 11
.endr
	beat a 5 a 6 a 11 a 11

	gotoCond 7+0 dragonRoostIslandChannel0Measure9 ; M31
	gotoCond 15+0 dragonRoostIslandChannel0Measure16 ; M55
	goto dragonRoostIslandChannel0Measure59 ; M59

dragonRoostIslandChannel0Measure45:
; Coda == 14
; Measure 45s
	beat g 11 g 5 g 6 
.rept 4
	beat g 11
.endr

; Measure 46s
	beat as 11
.rept 2
	beat as 5 as 6
.endr
.rept 3
	beat as 11
.endr
; Measure 47s
	beat e 11 e 22
.rept 3
	beat e 11
.endr
; Measure 48s
	beat e 11
.rept 2
	beat e 5 e 6
.endr
.rept 3
	beat e 11
.endr
; Measure 49-50s
	octave 5
.rept 2
	beat c 11 c 5 c 6 c 11
	beat c 22 c 11
.endr

	goto dragonRoostIslandChannel0Measure27 ; M51

dragonRoostIslandChannel0Measure59:
; Coda == 17
; Measure 59s
	octave 5
	beat ds 11 ds 5 ds 6
.rept 4
	beat ds 11
.endr

dragonRoostIslandChannel0Measure60:
; Coda == 17,18
; Measure 60,68
	octave 5
	beat ds 11
.rept 2
	beat ds 5 ds 6
.endr
.rept 3
	beat ds 11
.endr
	gotoCond 18+0 dragonRoostIslandChannel0Measure69 ; M69

; Measure 61s
.rept 6
	beat d 11
.endr

dragonRoostIslandChannel0Measure62:
; Coda == 17,18
; Measure 62,70
	beat d 11
.rept 2
	beat d 5 d 6
.endr
	beat d 11 d 11 d 5 d 6

	gotoCond 18+0 dragonRoostIslandChannel0Measure71 ; M71

dragonRoostIslandChannel0Measure63:
; Coda == 17
; Measure 63,73
	beat g 11 g 5 g 6 g 11
	beat g 22 g 11

; fall through 2x; M64,M74
dragonRoostIslandChannel0Measure64:
; Coda == 17,18
	incCoda
; Measure 64,74
	beat ds 11 ds 5 ds 6 ds 11
	beat ds 22 ds 11

	gotoCond 18+1 dragonRoostIslandChannel0Measure75 ; M75
; Measure 65s
	beat f 11 f 5 f 6 f 11
	beat f 22 f 11
; Measure 66s
	octave 4
	beat a 11 a 5 a 6 a 11
	beat a 22 a 11
; Measure 67s
	octave 5
	beat g 11 g 5 g 6
.rept 4
	beat g 11
.endr
	goto dragonRoostIslandChannel0Measure60 ; M68

dragonRoostIslandChannel0Measure69:
; Coda == 18
; Measure 69s
	beat d 11 d 5 d 6 d 11
	beat d 22 d 11

	goto dragonRoostIslandChannel0Measure62 ; M70

dragonRoostIslandChannel0Measure71:
; Coda == 18
; Measure 71s
	beat e 11 e 5 e 6 e 11
	beat e 22 e 11
; Measure 72s
	beat e 11
.rept 2
	beat e 5 e 6
.endr
	beat e 11 e 11 e 5 e 6

	goto dragonRoostIslandChannel0Measure63 ; M73

dragonRoostIslandChannel0Measure75:
; Coda == 19
; Measure 75s
	octave 4
.rept 3
	beat gs 11
.endr
	beat gs 22 gs 11
; Measure 76s
	beat gs 11
.rept 2
	beat gs 5 gs 6
.endr
.rept 3
	beat gs 11
.endr

	resetCoda
.rept 7
	incCoda
.endr
	goto dragonRoostIslandChannel0Measure27
    cmdff



dragonRoostIslandChannel4:
.redefine CHANNEL 4
.redefine BEAT 1     ;free

.redefine HI_VOL $0e
.redefine LO_VOL $0f
.define WAIT_8th 3
.define WAIT_4th 5
; Measure 1
	octave 3
;	beat d 22
	duty $0e
	beat d 22-WAIT_4th
	duty $0f
	beat d WAIT_4th
;	beat d 44
	duty $0e
	beat d 33
	duty $0f
	beat d 11
; Measure 2-4
	beat r 198

	resetCoda
dragonRoostIslandChannel4Measure5:
; Coda == 0,2,4,6,8,10
	incCoda
; Measure 5,7,9,11,13,19
	octave 2
	duty $0e
	beat g 11-WAIT_8th
	duty $0f
	beat g WAIT_8th

	octaveu
	beat r 22
	duty $0e
	beat d 11-WAIT_8th
	duty $0f
	beat d WAIT_8th

	beat r 11
	duty $0e
	beat g 11-WAIT_8th
	duty $0f
	beat g WAIT_8th

	gotoCond 10+1 dragonRoostIslandChannel4Measure20 ; M20
	

; fall through 4x; M6,M8,M10,M12,M14,M21
dragonRoostIslandChannel4Measure6:
; Coda == 1,3,5,7,9,11
	incCoda
; Measure 6,8,10,12,14,22
	octave 2
	duty $0e
	beat f 11-WAIT_8th
	duty $0f
	beat f WAIT_8th

	octaveu
	beat r 11
	duty $0e
	beat c 11-WAIT_8th
	duty $0f
	beat c WAIT_8th

	beat r 11
	duty $0e
	beat f 11-WAIT_8th
	duty $0f
	beat f WAIT_8th

	beat r 11
	gotoCond 9+1 dragonRoostIslandChannel4Measure15 ; M15
	gotoCond 11+1 dragonRoostIslandChannel4Measure23 ; M23
	goto dragonRoostIslandChannel4Measure5 ; M7,M9,M11,M13

dragonRoostIslandChannel4Measure15:
; Coda == 11-WAIT_8th
; Measure 15-16
	octave 2
	duty $0e
	beat as 11-WAIT_8th
	duty $0f
	beat as WAIT_8th

	octaveu
	beat r 22
	duty $0e
	beat f 11-WAIT_8th
	duty $0f
	beat f WAIT_8th

	beat r 11
	duty $0e
	beat as 11-WAIT_8th
	duty $0f
	beat as WAIT_8th
; Measure 16
	octave 2
	duty $0e
	beat as 11-WAIT_8th
	duty $0f
	beat as WAIT_8th

	octaveu
	beat r 11
	duty $0e
	beat f 11-WAIT_8th
	duty $0f
	beat f WAIT_8th

	beat r 11
	duty $0e
	beat as 11-WAIT_8th
	duty $0f
	beat as WAIT_8th

	beat r 11
; Measure 17
	octave 2
	duty $0e
	beat gs 11-WAIT_8th
	duty $0f
	beat gs WAIT_8th

	octaveu
	beat r 22
	duty $0e
	beat ds 11-WAIT_8th
	duty $0f
	beat ds WAIT_8th

	beat r 11
	duty $0e
	beat gs 11-WAIT_8th
	duty $0f
	beat gs WAIT_8th
; Measure 18
	octave 2
	duty $0e
	beat gs 11-WAIT_8th
	duty $0f
	beat gs WAIT_8th

	octaveu
	beat r 11
	duty $0e
	beat ds 11-WAIT_8th
	duty $0f
	beat ds WAIT_8th

	beat r 11
	duty $0e
	beat gs 11-WAIT_8th
	duty $0f
	beat gs WAIT_8th

	beat r 11

	goto dragonRoostIslandChannel4Measure5 ; M19

dragonRoostIslandChannel4Measure20:
; Coda == 9
; Measure 20
	octave 2
	duty $0e
	beat g 11-WAIT_8th
	duty $0f
	beat g WAIT_8th

	octaveu
	beat r 11
	duty $0e
	beat d 11-WAIT_8th
	duty $0f
	beat d WAIT_8th

	beat r 11
	duty $0e
	beat g 11-WAIT_8th
	duty $0f
	beat g WAIT_8th

	beat r 11	
; Measure 21
	octave 2
	duty $0e
	beat f 11-WAIT_8th
	duty $0f
	beat f WAIT_8th

	octaveu
	beat r 22
	duty $0e
	beat c 11-WAIT_8th
	duty $0f
	beat c WAIT_8th

	beat r 11
	duty $0e
	beat f 11-WAIT_8th
	duty $0f
	beat f WAIT_8th

	goto dragonRoostIslandChannel4Measure6 ; M22


dragonRoostIslandChannel4Measure23:
; Coda == 12-13
	incCoda
; Measure 23,25
	octave 2
	duty $0e
	beat ds 11-WAIT_8th
	duty $0f
	beat ds WAIT_8th

	beat r 22
	duty $0e
	beat as 11-WAIT_8th
	duty $0f
	beat as WAIT_8th

	octaveu
	beat r 11
	duty $0e
	beat ds 11-WAIT_8th
	duty $0f
	beat ds WAIT_8th

	gotoCond 13+1 dragonRoostIslandChannel4Measure26 ; M26
; Measure 24
	octave 2
	duty $0e
	beat ds 11-WAIT_8th
	duty $0f
	beat ds WAIT_8th

	beat r 11
	duty $0e
	beat as 11-WAIT_8th
	duty $0f
	beat as WAIT_8th

	octaveu
	beat r 11
	duty $0e
	beat ds 11-WAIT_8th
	duty $0f
	beat ds WAIT_8th

	beat r 11
	goto dragonRoostIslandChannel4Measure23 ; M23,M24,M25

	
dragonRoostIslandChannel4Measure26:
; Coda == 13
; Measure 26
.redefine GRACE 3
	octave 3
	duty $0e
	beat f GRACE g 22-GRACE
	beat ds 22
	octaved
	beat as 11-WAIT_8th
	duty $0f
	beat as WAIT_8th

	duty $0e
	beat f 11-WAIT_8th
	duty $0f
	beat f WAIT_8th	

dragonRoostIslandChannel4Measure27Reset:
	resetCoda
dragonRoostIslandChannel4Measure27:
; Coda == 0-1,2-3,4,5
; Coda == 6-7,8-9
	incCoda
; Measure 27,29,31,33,35,41
; Measure 51,53,55,57
	octave 2
	duty $0e
	beat g 22-WAIT_4th
	duty $0f
	beat g WAIT_4th

	duty $0e
	beat g 11-WAIT_8th
	duty $0f
	beat g WAIT_8th	

	octaveu
	duty $0e
	beat d 22-WAIT_4th
	duty $0f
	beat d WAIT_4th
	
	duty $0e
	beat g 11-WAIT_8th
	duty $0f
	beat g WAIT_8th

	gotoCond 0+2 dragonRoostIslandChannel4Measure30 ; M30
	gotoCond 2+2 dragonRoostIslandChannel4Measure30 ; M34
	gotoCond 5+1 dragonRoostIslandChannel4Measure42 ; M42
	gotoCond 6+2 dragonRoostIslandChannel4Measure30 ; M54
	gotoCond 8+2 dragonRoostIslandChannel4Measure58 ; M58	

dragonRoostIslandChannel4Measure28:
; Coda == 1,3,5,6,8
; Measure 28,32,36,44,56
	octaved
	duty $0e
	beat f 22-WAIT_4th
	duty $0f
	beat f WAIT_4th

	octaveu
	duty $0e
	beat c 22-WAIT_4th
	duty $0f
	beat c WAIT_4th

	duty $0e
	beat f 22-WAIT_4th
	duty $0f
	beat f WAIT_4th

	gotoCond 5+0 dragonRoostIslandChannel4Measure37 ; M37
	gotoCond 6+0 dragonRoostIslandChannel4Measure45 ; M45
	goto dragonRoostIslandChannel4Measure27 ; M29,M33,M37,M53

dragonRoostIslandChannel4Measure30:
; Coda == 2,4,8
; Measure 30,34,54
	octave 3
	duty $0e
	beat d 22-WAIT_4th
	duty $0f
	beat d WAIT_4th

	duty $0e
	beat a 22-WAIT_4th
	duty $0f
	beat a WAIT_4th

	duty $0e
	beat d 22-WAIT_4th
	duty $0f
	beat d WAIT_4th
	

	goto dragonRoostIslandChannel4Measure27 ; M31,M35,M55

dragonRoostIslandChannel4Measure42:
; Coda == 6
; Measure 42
	octave 2
	duty $0e
	beat g 22-WAIT_4th
	duty $0f
	beat g WAIT_4th

	octaveu
	duty $0e
	beat d 22-WAIT_4th
	duty $0f
	beat d WAIT_4th

	octaved
	duty $0e
	beat g 22-WAIT_4th
	duty $0f
	beat g WAIT_4th


	goto dragonRoostIslandChannel4Measure37 ; M43

dragonRoostIslandChannel4Measure37:
; Coda == 5,6
; Measure 37,43
	octave 2
	duty $0e
	beat f 22-WAIT_4th
	duty $0f
	beat f WAIT_4th

	duty $0e
	beat f 11-WAIT_8th
	duty $0f
	beat f WAIT_8th	

	octaveu
	duty $0e
	beat c 22-WAIT_4th
	duty $0f
	beat c WAIT_4th
	
	duty $0e
	beat f 11-WAIT_8th
	duty $0f
	beat f WAIT_8th

	gotoCond 6+0 dragonRoostIslandChannel4Measure28 ; M44
dragonRoostIslandChannel4Measure38:
; Coda == 5
; Measure 38
	octave 2
.rept 2
	duty $0e
	beat as 11-WAIT_8th
	duty $0f
	beat as WAIT_8th	
.endr
	duty $0e
	beat as 22-WAIT_4th
	duty $0f
	beat as WAIT_4th

	octaveu
	duty $0e
	beat f 22-WAIT_4th
	duty $0f
	beat f WAIT_4th	
; Measure 39
	octaved
	duty $0e
	beat gs 22-WAIT_4th
	duty $0f
	beat gs WAIT_4th

	duty $0e
	beat gs 11-WAIT_8th
	duty $0f
	beat gs WAIT_8th	

	octaveu
	duty $0e
	beat ds 22-WAIT_4th
	duty $0f
	beat ds WAIT_4th
	
	duty $0e
	beat gs 11-WAIT_8th
	duty $0f
	beat gs WAIT_8th
; Measure 40
	octaved
	duty $0e
	beat gs 22-WAIT_4th
	duty $0f
	beat gs WAIT_4th

	octaveu
	duty $0e
	beat ds 22-WAIT_4th
	duty $0f
	beat ds WAIT_4th

	duty $0e
	beat gs 22-WAIT_4th
	duty $0f
	beat gs WAIT_4th

	goto dragonRoostIslandChannel4Measure27 ; M41

dragonRoostIslandChannel4Measure45:
; Coda == 6
; Measure 45
	octave 2
	duty $0e
	beat ds 22-WAIT_4th
	duty $0f
	beat ds WAIT_4th

	duty $0e
	beat ds 11-WAIT_8th
	duty $0f
	beat ds WAIT_8th	

	duty $0e
	beat as 22-WAIT_4th
	duty $0f
	beat as WAIT_4th

	octaveu	
	duty $0e
	beat ds 11-WAIT_8th
	duty $0f
	beat ds WAIT_8th	

; Coda == 6
; Measure 46
	octave 3
	duty $0e	
	beat f 11-WAIT_8th 
	duty $0f 
	beat f WAIT_8th

	duty $0e	
	beat ds 11-WAIT_8th 
	duty $0f 
	beat ds WAIT_8th

	duty $0e
	beat d 11-WAIT_8th 
	duty $0f 
	beat d WAIT_8th

	duty $0e	
	beat ds 11-WAIT_8th 
	duty $0f 
	beat ds WAIT_8th

	duty $0e	
	beat d 22-WAIT_4th
	duty $0f 
	beat d WAIT_4th
; Measure 47
	duty $0e	
	beat c 22-WAIT_4th
	duty $0f 
	beat c WAIT_4th
	
	duty $0e
	beat c 11-WAIT_8th 
	duty $0f 
	beat c WAIT_8th
	
	duty $0e	
	beat g 22-WAIT_4th
	duty $0f 
	beat g WAIT_4th
	
	duty $0e
	beat ou c 11-WAIT_8th 
	duty $0f 
	beat c WAIT_8th
; Measure 48
	duty $0e
	beat d 11-WAIT_8th 
	duty $0f 
	beat d WAIT_8th
	
	duty $0e
	beat c 11-WAIT_8th 
	duty $0f 
	beat c WAIT_8th
	
	duty $0e
	beat od g 11-WAIT_8th 
	duty $0f 
	beat g WAIT_8th
	
	duty $0e
	beat c 11-WAIT_8th 
	duty $0f 
	beat c WAIT_8th
	
	duty $0e
	beat ou c 11-WAIT_8th 
	duty $0f 
	beat c WAIT_8th
	
	duty $0e
	beat od c 11-WAIT_8th 
	duty $0f 
	beat c WAIT_8th
; Measure 49
	duty $0e	
	beat od b 22-WAIT_4th
	duty $0f 
	beat b WAIT_4th
	
	duty $0e
	beat b 11-WAIT_8th 
	duty $0f 
	beat b WAIT_8th

	duty $0e	
	beat ou ds 22-WAIT_4th
	duty $0f 
	beat ds WAIT_4th 
	
	duty $0e
	beat gs 11-WAIT_8th 
	duty $0f 
	beat gs WAIT_8th
; Measure 50
	duty $0e
	beat as 11-WAIT_8th 
	duty $0f 
	beat as WAIT_8th
	
	duty $0e
	beat gs 11-WAIT_8th 
	duty $0f 
	beat gs WAIT_8th
	
	duty $0e
	beat od gs 11-WAIT_8th 
	duty $0f 
	beat gs WAIT_8th
	
	duty $0e
	beat gs 11-WAIT_8th 
	duty $0f 
	beat gs WAIT_8th
	
	duty $0e
	beat ou gs 11-WAIT_8th 
	duty $0f 
	beat gs WAIT_8th
	
	duty $0e
	beat od gs 11-WAIT_8th 
	duty $0f 
	beat gs WAIT_8th

	goto dragonRoostIslandChannel4Measure27 ; M51

dragonRoostIslandChannel4Measure58:
; Coda == 10
; Measure 58
	duty $0e
	beat d 11-WAIT_8th 
	duty $0f 
	beat d WAIT_8th
	
	duty $0e
	beat d 11-WAIT_8th 
	duty $0f 
	beat d WAIT_8th
	
	duty $0e	
	beat a 22-WAIT_4th
	duty $0f 
	beat a WAIT_4th 
	
	duty $0e	
	beat d 22-WAIT_4th
	duty $0f 
	beat d WAIT_4th

dragonRoostIslandChannel4Measure59:
; Coda == 10
	incCoda
; Measure 59
	octave 3
	duty $0e	
	beat ds 22-WAIT_4th
	duty $0f 
	beat ds WAIT_4th
	
	duty $0e	
	beat ds 11-WAIT_8th
	duty $0f 
	beat ds WAIT_8th
	
	duty $0e	
	beat as 22-WAIT_4th
	duty $0f 
	beat as WAIT_4th 
	
	duty $0e
	beat od as 11-WAIT_8th 
	duty $0f 
	beat as WAIT_8th
; Measure 60
	duty $0e	
	beat ou ds 22-WAIT_4th
	duty $0f 
	beat ds WAIT_4th 
	
	duty $0e	
	beat as 22-WAIT_4th
	duty $0f 
	beat as WAIT_4th  
	
	duty $0e	
	beat od as 22-WAIT_4th
	duty $0f 
	beat as WAIT_4th 
; Measure 61
	duty $0e	
	beat ou d 22-WAIT_4th
	duty $0f 
	beat d WAIT_4th

	duty $0e
	beat d 11-WAIT_8th 
	duty $0f 
	beat d WAIT_8th
	
	duty $0e	
	beat a 22-WAIT_4th
	duty $0f 
	beat a WAIT_4th  
	
	duty $0e
	beat od a 11-WAIT_8th 
	duty $0f 
	beat a WAIT_8th
; Measure 62
	duty $0e
	beat ou d 11-WAIT_8th 
	duty $0f 
	beat d WAIT_8th 
	
	duty $0e
	beat d 11-WAIT_8th 
	duty $0f 
	beat d WAIT_8th

	duty $0e	
	beat a 22-WAIT_4th
	duty $0f 
	beat a WAIT_4th 
	
	duty $0e	
	beat d 22-WAIT_4th
	duty $0f 
	beat d WAIT_4th 
; Measure 63
	duty $0e	
	beat c 22-WAIT_4th
	duty $0f 
	beat c WAIT_4th  
	
	duty $0e
	beat c 11-WAIT_8th 
	duty $0f 
	beat c WAIT_8th
	
	duty $0e	
	beat g 22-WAIT_4th
	duty $0f 
	beat g WAIT_4th  

	gotoCond 11+1 dragonRoostIslandChannel4Measure71d
	
	duty $0e
	beat od g 11-WAIT_8th 
	duty $0f 
	beat g WAIT_8th
; Measure 64
	duty $0e
	beat ou c 11-WAIT_8th 
	duty $0f 
	beat c WAIT_8th 
	
	duty $0e
	beat c 11-WAIT_8th 
	duty $0f 
	beat c WAIT_8th
	
	duty $0e	
	beat g 22-WAIT_4th
	duty $0f 
	beat g WAIT_4th  
	
	duty $0e	
	beat c 22-WAIT_4th
	duty $0f 
	beat c WAIT_4th 
; Measure 65
	duty $0e	
	beat d 22-WAIT_4th
	duty $0f 
	beat d WAIT_4th 
	
	duty $0e
	beat d 11-WAIT_8th 
	duty $0f 
	beat d WAIT_8th
	
	duty $0e	
	beat a 22-WAIT_4th
	duty $0f 
	beat a WAIT_4th 
	
	duty $0e
	beat od a 11-WAIT_8th 
	duty $0f 
	beat a WAIT_8th
; Measure 66
	duty $0e	
	beat ou d 22-WAIT_4th
	duty $0f 
	beat d WAIT_4th 
	
	duty $0e	
	beat a 22-WAIT_4th
	duty $0f 
	beat a WAIT_4th 
	 
	duty $0e	
	beat d 22-WAIT_4th
	duty $0f 
	beat d WAIT_4th 

	goto dragonRoostIslandChannel4Measure59


dragonRoostIslandChannel4Measure71d:
; Coda ==
; Measure 71d
	octave 4
	duty $0e
	beat c 11-WAIT_8th 
	duty $0f 
	beat c WAIT_8th
; Measure 72
	duty $0e
	beat d 11-WAIT_8th 
	duty $0f 
	beat d WAIT_8th
	
	duty $0e
	beat c 11-WAIT_8th 
	duty $0f 
	beat c WAIT_8th
	
	duty $0e
	beat od g 11-WAIT_8th 
	duty $0f 
	beat g WAIT_8th
	
	duty $0e
	beat c 11-WAIT_8th 
	duty $0f 
	beat c WAIT_8th
	
	duty $0e
	beat ou c 11-WAIT_8th 
	duty $0f 
	beat c WAIT_8th
	
	duty $0e
	beat od c 11-WAIT_8th 
	duty $0f 
	beat c WAIT_8th
; Measure 73
	duty $0e	
	beat od b 22-WAIT_4th
	duty $0f 
	beat b WAIT_4th 
	
	duty $0e
	beat b 11-WAIT_8th 
	duty $0f 
	beat b WAIT_8th
	
	duty $0e	
	beat ou ds 22-WAIT_4th
	duty $0f 
	beat ds WAIT_4th 
	
	duty $0e
	beat gs 11-WAIT_8th 
	duty $0f 
	beat gs WAIT_8th
; Measure 74
	duty $0e
	beat as 11-WAIT_8th 
	duty $0f 
	beat as WAIT_8th 
	
	duty $0e
	beat gs 11-WAIT_8th 
	duty $0f 
	beat gs WAIT_8th 
	
	duty $0e
	beat od gs 11-WAIT_8th 
	duty $0f 
	beat gs WAIT_8th
	
	duty $0e
	beat gs 11-WAIT_8th 
	duty $0f 
	beat gs WAIT_8th
	
	duty $0e
	beat ou gs 11-WAIT_8th 
	duty $0f 
	beat gs WAIT_8th
	
	duty $0e
	beat od gs 11-WAIT_8th 
	duty $0f 
	beat gs WAIT_8th
; Measure 75
	duty $0e	
	beat gs 22-WAIT_4th
	duty $0f 
	beat gs WAIT_4th 
	
	duty $0e	
	beat gs 11-WAIT_8th
	duty $0f 
	beat gs WAIT_8th 
	
	duty $0e	
	beat ou ds 22-WAIT_4th
	duty $0f 
	beat ds WAIT_4th 
	
	duty $0e	
	beat od gs 11-WAIT_8th
	duty $0f 
	beat gs WAIT_8th 
; Measure 76
	duty $0e	
	beat gs 22-WAIT_4th
	duty $0f 
	beat gs WAIT_4th  
	
	duty $0e	
	beat ou ds 22-WAIT_4th
	duty $0f 
	beat ds WAIT_4th  
	
	duty $0e	
	beat od gs 22-WAIT_4th
	duty $0f 
	beat gs WAIT_4th 

	goto dragonRoostIslandChannel4Measure27Reset
	cmdff

 
dragonRoostIslandChannel6:
.redefine CHANNEL 6
.redefine BEAT 1    ;free

.redefine HI_VOL $4
.redefine LO_VOL $2
.define HIT     $27

    resetCoda
dragonRoostIslandChannel6Measure1:
; Measure 1,5
.rept 2
    vol HI_VOL
    beat HIT 11
    vol LO_VOL
	.rept 2
   		beat HIT 11
	.endr
.endr
    gotoCond 1+5 dragonRoostIslandChannel6Measure8
    gotoCond 7+12 dragonRoostIslandChannel6Measure8

; Measure 2,6
    vol HI_VOL
    beat HIT 11
    vol LO_VOL
    beat HIT 11
    vol HI_VOL
    beat HIT 11
    vol LO_VOL
    beat HIT 11
    vol HI_VOL
    beat HIT 11
    vol LO_VOL
    beat HIT 11

    gotoCond 6+1 dragonRoostIslandChannel6Measure8
; Measure 3,7
.rept 2
    vol HI_VOL
    beat HIT 11
    vol LO_VOL
	.rept 2
   		beat HIT 11
	.endr
.endr   
    gotoCond 0 dragonRoostIslandChannel6Measure4
    gotoCond 19+1 dragonRoostIslandChannel6Reset

dragonRoostIslandChannel6Measure8:
; Coda == 1-5
; Coda == 6
; Coda == 7-19
; Coda == 20
   incCoda
; Measure 8,12,16,20,24
; Measure 26
; Measure 29,33,37,41,45,49,53,57,61,65,69,73
; Measure 75
    vol HI_VOL
    beat HIT 11
    vol LO_VOL
    beat HIT 5 HIT 6
    vol HI_VOL
    beat HIT 11

    vol LO_VOL
    beat HIT 5 HIT 6
    vol HI_VOL
    beat HIT 11
    vol LO_VOL
    beat HIT 11

    goto dragonRoostIslandChannel6Measure1

dragonRoostIslandChannel6Measure4: 
    incCoda
; Measure 4
    vol HI_VOL
    beat HIT 11
    vol LO_VOL
    beat HIT 5 HIT 6
    vol HI_VOL
    beat HIT 11

    vol LO_VOL
    beat HIT 11
    vol HI_VOL
    beat HIT 11
    vol LO_VOL
    beat HIT 11

    goto dragonRoostIslandChannel6Measure1

dragonRoostIslandChannel6Reset:
; Go to measure 29
    resetCoda
.rept 7
    incCoda
.endr
    goto dragonRoostIslandChannel6Measure8
	cmdff
; Measure xxxxx-xxxxx;xx-xx,xx-xx,xx-xx,xx-xx,xx-xx,xx-xx,5-7,9-11,13-15,17-19,21-23
; Measure 25
; Measure 74&27-28;30-32,34-36,38-40,42-44,46-48,50-52,54-56,58-60,62-64,66-68,70-72
; Measure 74