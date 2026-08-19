musHyruleCastle_sadStart:
	tempo 45 ;90
musHyruleCastle_sadChannel1:
.redefine HI_VOL $6
.redefine LO_VOL $4

; Measure 1-2
	vol $0
.rept 2
	beat gs3 HF
.endr 

musHyruleCastle_sadChannel1Measure3Loop:
; Measure 3-4
.rept 2
	beat gs3 HF
.endr

.rept 3 INDEX REPTCTR
; Measure 5,9,17
	duty $02
	env $0 $00
	octave 4
	vol HI_VOL
	vibrato $e1
	beat g R1+R2+Y5
	vibrato $01
	vol LO_VOL
	beat g Y6

	vibrato $e1
	vol HI_VOL
	beat d R1+R2+Y5
	vibrato $01
	vol LO_VOL
	beat d Y6+R1+Y3 r Y4+Y5
; Measure 6c,10c,18c
	vibrato $e1
	env $0 $07
	vol HI_VOL
	beat g Y6
	beat gs E1 as E2
; Measure 7,11,19
	env $0 $00
	;vol HI_VOL
	;vibrato $e1
	beat g R1+R2+Y5
	vibrato $01
	vol LO_VOL
	beat g Y6

	vibrato $e1
	vol HI_VOL
	beat d R1+R2+Y5
	vibrato $01
	vol LO_VOL
	beat d Y6+R1+R2

	env $0 $07
	vibrato $e1
.ifeq REPTCTR 0
; Measure 8c
	;vol LO_VOL
	beat a R3 ou d R1 c R2 od as R3
.else 
.ifeq REPTCTR 1
; Measure 12c
	;vol LO_VOL
	beat a R3 ou d E1 fs E2
.else ;REPTCTR==2
; Measure 20c
	rest R3
	octave 3
	;vol LO_VOL
	beat fs S1
	vol LO_VOL+1
	beat a S2
	vol HI_VOL
	octaveu
	beat d S3
	vol HI_VOL+1
	beat ds S4
.endif
.endif

.ifeq REPTCTR 1
; Measure 13
	duty $02
	env $0 $00
	octave 5
	vol HI_VOL
	vibrato $e1
	beat c R1+R2+Y5
	vibrato $01
	vol LO_VOL
	beat c Y6

	octaved
	vibrato $e1
	vol HI_VOL
	beat g R1+R2+Y5
	vibrato $01
	vol LO_VOL
	beat g Y6+R1+Y3 r Y4+Y5
; Measure 14c
	vibrato $e1
	env $0 $07
	vol HI_VOL
	octaveu
	beat c Y6
	beat cs E1 od b E2
; Measure 15
	env $0 $00
	;vol HI_VOL
	;vibrato $e1
	octaveu
	beat c R1+R2+Y5
	vibrato $01
	vol LO_VOL
	beat c Y6

	vibrato $e1
	vol HI_VOL
	octaved
	beat g R1+R2+Y5
	vibrato $01
	vol LO_VOL
	beat g Y6+R1+R2

	env $0 $07
	vibrato $e1
; Measure 16c
	;vol LO_VOL
	octave 4
	beat as R3 ou d R1 c R2 od as R3
.endif
.endr

.rept 2
; Measure 21,23
	env $0 $00
	;vibrato $e1
	;duty $02
	vol HI_VOL
	octave 4
	beat f R1+R2 ds Y5 d Y6

	;vol LO_VOL
	beat c S1
	vol LO_VOL+1
	beat d S2 
	vol HI_VOL
	beat f S3
	vol HI_VOL+1
	octaveu
	beat c S4

; Measure 22,24
	octaved
	beat g R1+R2+Y5
	vibrato $01
	vol HI_VOL+2
	beat g Y6

	vibrato $e1
	env $0 $05
	octave 5
	beat f R1
	vol HI_VOL+1
	beat ds R2
	vol HI_VOL
	beat d R3
.endr

; Measure 25
	vol HI_VOL
	env $0 $00
	;vibrato $e1
	octave 4
	beat f R1+R2 ds Y5 d Y6
	vol HI_VOL-1
	beat c S1 d S2
	vol HI_VOL
	beat f S3 g S4
; Measure 26
	vol HI_VOL+1
	beat as R1+R2 gs Y5 g Y6
	vol HI_VOL
	beat f S1 g S2
	vol HI_VOL+1
	beat gs S3 as S4
; Measure 27
	;vol HI_VOL+1
	octaveu
	beat c R1+R2 od as Y5 a Y6
	vol HI_VOL
	beat g S1 a S2
	vol HI_VOL+1
	beat as S3 ou c S4
; Measure 28
	vol HI_VOL+2
	;vibrato $e1
	;env $0 $00
	beat d R1+R2
	vol HI_VOL
	vibrato $01
	beat d R3+R1+Y3
	vol LO_VOL
	beat d Y4+R3

.rept 2 INDEX REPTCTR
; Measure 29,33
	env $1 $00
	vol HI_VOL
	vibrato $e1
	duty $01
.ifeq REPTCTR 0
	octave 4
.else ;REPTCTR==1
	octave 5
.endif
	;beat g Q+R1 
	beat g Q
	env $0 $00
	vibrato $01
	vol LO_VOL
	beat g R1

	vibrato $e1
	vol HI_VOL
	env $1 $05
	beat a Y3 as Y4+Y5 ou d Y6
; Measure 30,34
	env $1 $00
	;beat cs Q
	beat cs R1+R2
	vol LO_VOL
	env $0 $00
	vibrato $01
	beat cs R3
	
	env $1 $00
	vol HI_VOL
	vibrato $e1
	octaved
	beat a Q
; Measure 31,35
	;vibrato $e1
	octaveu
	;beat c Q+E1
	beat c Q
	env $0 $00
	vibrato $01
	vol LO_VOL
	beat c E1

	vibrato $e1
	vol HI_VOL
	env $1 $07
	octaved
.ifeq REPTCTR 0
; Measure 31e
	beat as E2
; Measure 32
	env $1 $00
	;beat g HF
	beat g Q+R1
	env $0 $00
	vibrato $01
	vol LO_VOL
	beat g R2+R3
.else ;REPTCTR==1
; Measure 35e
	beat as Y4 fs Y5 as Y6
; Measure 36
	env $1 $00
	;beat g Q+R1 r Y3
	beat g R1+R2+Y5
	env $0 $00
	vibrato $01
	vol LO_VOL
	beat g Y6+R1 r Y3
.endif
.endr

; Measure 36e
	duty $02
	env $0 $05
	vibrato $82
	octave 6
	vol LO_VOL-1
	beat d W7 od g W8
	vol LO_VOL
	beat a W9
	vol LO_VOL+1
	beat as W10 
	vol HI_VOL
	beat ou c W11 d W12
; Measure 37
	;vol HI_VOL
	env $0 $00
	;beat ds R1+R2+Y5
	beat ds R1+Y3
	vol LO_VOL
	vibrato $02
	beat ds Y4+Y5

	env $0 $03
	vol HI_VOL
	vibrato $82
	beat ds W11 ds W12

	env $0 $05
	beat ds S1 c S2 od g S3 ou ds S4
; Measure 38
	env $0 $00
	;beat d Q+R1 r Y3
	beat d R1+R2+Y5
	vibrato $02
	vol LO_VOL
	beat d Y6+R1 r Y3	

; Measure 38e
	env $0 $05
	vibrato $82

	octave 6
	vol LO_VOL-1
	beat c W7 od ds W8
	vol LO_VOL
	beat f W9
	vol LO_VOL+1
	beat g W10 
	vol HI_VOL
	beat a W11 as W12
; Measure 39
	;vol HI_VOL
	env $0 $00
	octaveu
	;beat c R1+R2+Y5
	beat c R1+Y3
	vol LO_VOL
	vibrato $02
	beat c Y4+Y5

	env $0 $03
	vol HI_VOL
	vibrato $82
	beat c W11 c W12

	env $0 $05
	beat c S1 od g S2 ds S3 ou c S4
; Measure 40
	env $0 $00
	octaved
	;beat as Q+R1 r Y3
	beat as R1+R2+Y5
	vibrato $02
	vol LO_VOL
	beat as Y6+R1 r Y3	

; Measure 40e
	env $0 $05
	vibrato $82
	vol HI_VOL
	octave 6
	vol LO_VOL-1
	beat d W7 od g W8
	vol LO_VOL
	beat a W9
	vol LO_VOL+1
	beat as W10 
	vol HI_VOL
	beat ou c W11
	vol HI_VOL+1
	beat d W12
; Measure 41
.redefine HI_VOL $8
.redefine LO_VOL $6
	vol HI_VOL
	env $0 $00
	;beat ds R1+R2+Y5
	beat ds R1+Y3
	vol LO_VOL
	vibrato $02
	beat ds Y4+Y5

	env $0 $03
	vol HI_VOL
	vibrato $82
	beat ds W11 ds W12

	env $0 $05
	beat ds S1
.redefine HI_VOL $7
.redefine LO_VOL $5
	vol HI_VOL
	beat c S2 od g S3 ou ds S4
; Measure 42
	env $0 $00
	;beat d R1+R2+Y5
	beat d R1+Y3
	vol LO_VOL
	vibrato $02
	beat d Y4+Y5

	env $0 $03
	vol HI_VOL
	vibrato $82
	beat d W11 d W12

	env $0 $05
	beat d S1
.redefine HI_VOL $6
.redefine LO_VOL $4
	vol HI_VOL
	beat od as S2 g S3 ou d S4	
; Measure 43
	env $0 $00
	;beat c R1+R2+Y5
	beat c R1+Y3
	vol LO_VOL
	vibrato $02
	beat c Y4+Y5

	env $0 $03
	vol HI_VOL
	vibrato $82
	beat c W11 c W12

	env $0 $05
	beat c S1 od fs S2 ds S3 ou c S4
; Measure 44
	env $0 $00
	octaved
	beat as Q+R1
	vibrato $02
	vol LO_VOL
	beat as R2+R3+R1
	vol LO_VOL-2
	beat as R2+R3 r Q

	vol $0
	goto musHyruleCastle_sadChannel1Measure3Loop
	cmdff

.macro m_musHyruleCastle_sadChannel0Measure21
.rept 2
	rest Y1
	beat \2 Y2 \3 Y3 r Y4 \1 Y5 \2 Y6
.endr
.endm

.macro m_musHyruleCastle_sadChannel0Measure29
.rept 2
	vol HI_VOL
	beat \1 W1 
	vol LO_VOL
	beat \4 W2

	vol HI_VOL
	beat \2 W3 
	vol LO_VOL
	beat \1 W4

	vol HI_VOL
	beat \3 W5 
	vol LO_VOL
	beat \2 W6

	vol HI_VOL
	beat \1 W7 
	vol LO_VOL
	beat \3 W8
	
	vol HI_VOL
	beat \2 W9 
	vol LO_VOL
	beat \1 W10
	
	vol HI_VOL
	beat \3 W11 
	vol LO_VOL
	beat \2 W12
.endr
.endm

musHyruleCastle_sadChannel0:
.redefine HI_VOL $5
.redefine LO_VOL $4

musHyruleCastle_sadChannel0Measure1Loop:
; Measure 1
	vol $0
	beat gs3 Y1

	vol HI_VOL
	duty $01
	env $0 $00
	vibrato $a1
	octave 3
	beat d Y2 g Y3 a Y4 as Y5 a Y6
	rest Y1
	beat d Y2 g Y3 a Y4 as Y5 a Y6
; Measure 2
	rest Y1
	beat c Y2 f Y3 g Y4 gs Y5 g Y6
	rest Y1
	beat c Y2 f Y3 g Y4 gs Y5 g Y6
; Measure 3
	rest Y1
	octaved
	beat as Y2 ou ds Y3 f Y4 g Y5 f Y6
	rest Y1
	octaved
	beat as Y2 ou ds Y3 f Y4 g Y5 f Y6
; Measure 4
	rest Y1
	octaved
	beat a Y2 ou d Y3 e Y4 fs Y5 e Y6
	rest Y1
	octaved
	beat fs Y2 a Y3 ou c Y4 od as Y5 a Y6	

.rept 3 INDEX REPTCTR
; Measure 5,9,17
	octave 3
	rest Y1
	beat d Y2 g Y3 a Y4 as Y5 a Y6
	rest Y1
	beat d Y2 g Y3 a Y4 g Y5 f Y6	
; Measure 6,10,18
	rest Y1
	beat c Y2 f Y3 g Y4 gs Y5 g Y6
	rest Y1
	beat c Y2 f Y3 g Y4 f Y5 ds Y6	
; Measure 7,11,19
	rest Y1
	octaved
	beat as Y2 ou ds Y3 f Y4 g Y5 f Y6
	rest Y1
	octaved
	beat as Y2 ou ds Y3 f Y4 ds Y5 d Y6	
; Measure 8,12,20
	rest Y1
	octaved
	beat a Y2 ou d Y3 e Y4 fs Y5 e Y6
	rest Y1
	octaved
	beat fs Y2 a Y3 ou c Y4 ds Y5 d Y6

.ifeq REPTCTR 1
; Measure 13
	octave 3
	rest Y1
	beat c Y2 g Y3 as Y4 ou c Y5 od g Y6
	rest Y1
	beat c Y2 g Y3 as Y4 g Y5 f Y6	
; Measure 14
	rest Y1
	octaved
	beat as Y2 ou f Y3 gs Y4 as Y5 f Y6
	rest Y1
	octaved
	beat as Y2 ou f Y3 gs Y4 f Y5 ds Y6	
; Measure 15
	rest Y1
	octaved
	beat as Y2 ou ds Y3 g Y4 gs Y5 ds Y6
	rest Y1
	octaved
	beat as Y2 ou ds Y3 g Y4 ds Y5 d Y6	
; Measure 16
	rest Y1
	beat d Y2 g Y3 a Y4 as Y5 d Y6
	rest Y1
	octaved
	beat as Y2 ou d Y3 f Y4 od as Y5 a Y6
.endif
.endr

.rept 2
; Measure 21,23
	octave 3
	m_musHyruleCastle_sadChannel0Measure21 gs2 c3 ds3
; Measure 22,24
	m_musHyruleCastle_sadChannel0Measure21 g2 b2 d3
.endr
; Measure 25
	m_musHyruleCastle_sadChannel0Measure21 as2 d3 f3
; Measure 26
	m_musHyruleCastle_sadChannel0Measure21 gs2 c3 ds3
; Measure 27
.rept 2
	rest Y1
	beat ds Y2 g Y3 r Y4 ds Y5 g Y6
.endr
; Measure 28
	octave 3
	env $0 $07
	;duty $01
	beat g Q fs Q


.redefine HI_VOL $4
.redefine LO_VOL $2
	duty $02
	env $0 $00
	vibrato $00
.rept 2
; Measure 29,33
	m_musHyruleCastle_sadChannel0Measure29 g3 as3 d4 fs3
; Measure 30,34
	m_musHyruleCastle_sadChannel0Measure29 fs3 a3 cs4 d4
; Measure 31,35
	m_musHyruleCastle_sadChannel0Measure29 fs3 a3 c4 cs4
; Measure 32,36
	m_musHyruleCastle_sadChannel0Measure29 g3 as3 d4 c4
.endr
; Measure 37
	m_musHyruleCastle_sadChannel0Measure29 c4 ds4 g4 d4
; Measure 38
	m_musHyruleCastle_sadChannel0Measure29 as3 d4 f4 g4
; Measure 39
	m_musHyruleCastle_sadChannel0Measure29 a3 c4 ds4 f4
; Measure 40
	m_musHyruleCastle_sadChannel0Measure29 g3 as3 d4 ds4

; Measure 41
.redefine HI_VOL $5
.redefine LO_VOL $4

	rest Y1
	vol LO_VOL
	duty $01
	;env $0 $00
	vibrato $a1
	octave 3
	beat g Y2 ou c Y3 d Y4 ds Y5 d Y6
	rest Y1
	octaved
	beat g Y2 ou c Y3 d Y4 ds Y5 d Y6
; Measure 42
.rept 2
	rest Y1
	octaved
	beat g Y2 as Y3 ou c Y4 d Y5 c Y6
.endr
; Measure 43
	vol HI_VOL
	octaved
.rept 2
	rest Y1
	beat fs Y2 g Y3 a Y4 as Y5 a Y6
.endr	

	goto musHyruleCastle_sadChannel0Measure1Loop
	cmdff

.macro m_musHyruleCastle_sadChannel4CheckVolume
.ifndef VOLUME_HIGH
	duty HI_VOL
.endif
.redefine VOLUME_HIGH 1
.endm
.macro m_musHyruleCastle_sadChannel4LowVolume
.ifdef VOLUME_HIGH
	duty LO_VOL
.undefine VOLUME_HIGH
.endif
.endm

.macro m_musHyruleCastle_sadChannel4DottedQuarter
	m_musHyruleCastle_sadChannel4CheckVolume
	beat \1 R1+R2+W9
	m_musHyruleCastle_sadChannel4LowVolume
	beat \1 W10+Y6
.endm
.macro m_musHyruleCastle_sadChannel4QuarterAndEighth
	m_musHyruleCastle_sadChannel4CheckVolume
	beat \1 R1+Y3
	m_musHyruleCastle_sadChannel4LowVolume
	beat \1 Y4

	m_musHyruleCastle_sadChannel4CheckVolume
	beat \2 R3
.endm
.macro m_musHyruleCastle_sadChannel4DottedEighths
.rept 2
	m_musHyruleCastle_sadChannel4CheckVolume
	beat \1 Y1+Y2+W5
	m_musHyruleCastle_sadChannel4LowVolume
	beat \1 W6

	m_musHyruleCastle_sadChannel4CheckVolume
	beat \2 Y4+Y5+W11
	m_musHyruleCastle_sadChannel4LowVolume
	beat \2 W12
.endr
.endm
.macro m_musHyruleCastle_sadChannel4QuarterAndSixteens
	m_musHyruleCastle_sadChannel4CheckVolume
	beat \1 R1+Y3
	m_musHyruleCastle_sadChannel4LowVolume
	beat \1 Y4

	m_musHyruleCastle_sadChannel4CheckVolume
	beat \2 Y5 \3 Y6
.endm
.macro m_musHyruleCastle_sadChannel4Triplet
			m_musHyruleCastle_sadChannel4CheckVolume
			beat \1 Y1+W3 r W4
			beat \1 Y3+W7 r W8
.if NARGS < 2
			beat \1 Y5+W11 r W12
.else
	.if NARGS==2
			beat \2 Y5+W11 r W12
	.else
		.if NARGS > 2
			beat \2 Y5 \3 Y6
		.endif
	.endif
.endif
.endm

musHyruleCastle_sadChannel4:
.redefine HI_VOL $17
.redefine LO_VOL $0f

musHyruleCastle_sadChannel4Measure1Loop:
; Measure 1,44
	octave 2
	vibrato $a1
	m_musHyruleCastle_sadChannel4DottedQuarter g2
	m_musHyruleCastle_sadChannel4QuarterAndEighth g2 d3
; Measure 2
	m_musHyruleCastle_sadChannel4DottedQuarter f2
	m_musHyruleCastle_sadChannel4QuarterAndEighth f2 c3	
; Measure 3
	m_musHyruleCastle_sadChannel4DottedQuarter ds2
	m_musHyruleCastle_sadChannel4QuarterAndEighth ds2 as2	
; Measure 4
	m_musHyruleCastle_sadChannel4QuarterAndEighth d2 a2
	m_musHyruleCastle_sadChannel4QuarterAndEighth d2 fs2	

.rept 3 INDEX REPTCTR
; Measure 5,9,17
	octave 2
	m_musHyruleCastle_sadChannel4DottedQuarter g2
	m_musHyruleCastle_sadChannel4QuarterAndEighth g2 c3
; Measure 6,10,18
	m_musHyruleCastle_sadChannel4DottedQuarter f2
	m_musHyruleCastle_sadChannel4QuarterAndEighth f2 as2	
; Measure 7,11,19
	m_musHyruleCastle_sadChannel4DottedQuarter ds2
	m_musHyruleCastle_sadChannel4QuarterAndEighth ds2 a2	
; Measure 8,12,20
	m_musHyruleCastle_sadChannel4QuarterAndEighth d2 a2
	m_musHyruleCastle_sadChannel4QuarterAndSixteens d2 as2 a2
.ifeq REPTCTR 1
; Measure 13
	octave 2
	m_musHyruleCastle_sadChannel4DottedQuarter g2
	m_musHyruleCastle_sadChannel4QuarterAndEighth g2 c3
; Measure 14
	m_musHyruleCastle_sadChannel4DottedQuarter f2
	m_musHyruleCastle_sadChannel4QuarterAndEighth f2 b2
; Measure 15
	m_musHyruleCastle_sadChannel4DottedQuarter ds2
	m_musHyruleCastle_sadChannel4QuarterAndEighth ds2 a2
; Measure 16
	m_musHyruleCastle_sadChannel4DottedQuarter g2
	m_musHyruleCastle_sadChannel4QuarterAndEighth g2 d2
.endif
.endr

.rept 2
; Measure 21,23
	octave 2
	m_musHyruleCastle_sadChannel4DottedEighths gs2 ds2
; Measure 22,24
	m_musHyruleCastle_sadChannel4DottedEighths g2 d2
.endr
; Measure 25
	octave 2
	m_musHyruleCastle_sadChannel4DottedEighths as2 f2
; Measure 26
	octave 2
	m_musHyruleCastle_sadChannel4DottedEighths gs2 ds2
; Measure 27
	m_musHyruleCastle_sadChannel4DottedEighths a2 a2

; Measure 28
.rept 2
	m_musHyruleCastle_sadChannel4DottedQuarter d3
.endr

; Measure 29
	m_musHyruleCastle_sadChannel4QuarterAndSixteens g2 d2 as2
	m_musHyruleCastle_sadChannel4DottedQuarter g2
; Measure 30
	m_musHyruleCastle_sadChannel4QuarterAndSixteens fs2 d2 a2
	m_musHyruleCastle_sadChannel4QuarterAndEighth cs3 fs2
; Measure 31
	m_musHyruleCastle_sadChannel4QuarterAndSixteens d2 e2 fs2
	m_musHyruleCastle_sadChannel4DottedQuarter a2	
; Measure 32
	m_musHyruleCastle_sadChannel4QuarterAndSixteens g2 d2 g2
	m_musHyruleCastle_sadChannel4QuarterAndEighth as2 as2
	
; Measure 33
	m_musHyruleCastle_sadChannel4QuarterAndSixteens g2 d2 as2
	m_musHyruleCastle_sadChannel4CheckVolume
	octave 2
	beat g R1 d R2 g R3	
; Measure 34
	m_musHyruleCastle_sadChannel4QuarterAndSixteens fs2 d2 a2
	m_musHyruleCastle_sadChannel4CheckVolume
	octave 3
	beat cs R1 od a R2 fs R3		
; Measure 35
	m_musHyruleCastle_sadChannel4QuarterAndSixteens d2 e2 fs2
	m_musHyruleCastle_sadChannel4CheckVolume
	octave 2
	beat a R1 as R2 a R3	
; Measure 36
	m_musHyruleCastle_sadChannel4QuarterAndSixteens g2 d2 g2
	m_musHyruleCastle_sadChannel4CheckVolume
	octave 2
	beat as R1 ou d R2 od as R3

; Measure 37 	
.rept 2	
	m_musHyruleCastle_sadChannel4Triplet c3
.endr
; Measure 38
.rept 2	
	m_musHyruleCastle_sadChannel4Triplet as2
.endr	
; Measure 39
	m_musHyruleCastle_sadChannel4Triplet a2
	m_musHyruleCastle_sadChannel4Triplet a2 fs2
; Measure 40
	m_musHyruleCastle_sadChannel4Triplet g2
	m_musHyruleCastle_sadChannel4Triplet g2 a2 as2

; Measure 41
.rept 2
	m_musHyruleCastle_sadChannel4QuarterAndEighth c3 g3
.endr
; Measure 42
.rept 2
	m_musHyruleCastle_sadChannel4QuarterAndEighth as2 f3
.endr
; Measure 43
.rept 2
	m_musHyruleCastle_sadChannel4QuarterAndEighth a2 ds3
.endr

	goto musHyruleCastle_sadChannel4Measure1Loop
	cmdff
/*
musHyruleCastle_sadChannel6:
.redefine HI_VOL $6
.redefine LO_VOL $5

musHyruleCastle_sadChannel6Loop:
	vol HI_VOL+1
	beat $24 R1
	vol LO_VOL
	beat $24 R2 $24 R3

	vol HI_VOL
	beat $24 R1
	beat $24 R2 $24 R3
	goto musHyruleCastle_sadChannel6Loop
*/

.define musHyruleCastle_sadChannel6 MUSIC_CHANNEL_FALLBACK EXPORT