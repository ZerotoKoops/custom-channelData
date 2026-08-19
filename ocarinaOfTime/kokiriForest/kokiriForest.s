musKokiriForestStart:
.redefine TEMPO_A 100
.redefine TEMPO_B 135
	tempo TEMPO_A
musKokiriForestChannel1
.redefine HI_VOL $6
.redefine LO_VOL $3

; Measure 1
; 5/4
	octave 5
	vol HI_VOL
	duty $02
	;env $0 $00
	;vibrato $00
	beat d Q c HF d Q ds Q
; Measure 2
	vibrato $e2
	beat f W+Q

	tempo TEMPO_B
; Measure 3-4
; 4/4
.rept 2 INDEX REPTCTR
	rest E1 
	octave 4
.ifeq REPTCTR 0
	env $0 $04
	vol LO_VOL
.endif
	beat c E2 r Q+E1 od as E2 r Q
.endr

musKokiriForestChannel1Measure5Loop:
.rept 2 INDEX REPTCTR
; Measure 5,9
	octave 6
	vol HI_VOL
	vibrato $00
	duty $02
	env $0 $04
	beat g E1 ou c E2 od g E1 e E2
	env $0 $00
	beat d E1+S3 e S4+E1 f E2
; Measure 6,10
	vibrato $61
	beat g S1 a S2
	beat g E2+E1
	beat f S3 g S4
	beat f Q

	vibrato $00
	env $0 $04
	beat e E1 d E2
; Measure 7,11
	beat e E1
	env $0 $00
	vibrato $81
	beat c E2+E1
	vol LO_VOL
	vibrato $01
	beat c E2

	octave 4
	env $0 $04
	duty $01
	vibrato $01
	vol HI_VOL
	beat as E1 f E2 as E1 ou d E2
; Measure 8,12
	env $0 $00
	vibrato $81
.ifeq REPTCTR 0
	beat c Q+E1 od g E2+HF
.else
	beat c HF
	vibrato $01
	vol LO_VOL
	beat c HF
.endif
.endr

.rept 4 INDEX REPTCTR
; Measure 13,15,17,19
	rest E1
	octave 4
	vol HI_VOL
	vibrato $01
	duty $00
	beat a E2 ou c E1 od a E2
	beat b E1
	vibrato $62
	octaveu
	beat d E2
	vol LO_VOL
	beat d E1 r E2+E1
.ifeq (REPTCTR # 2) 0
; Meausre 14a,18a
	vol HI_VOL
	vibrato $00
	octaved
	beat a E2 ou c E1 e E2
	beat d T1 e T2 d S2+E2
	vibrato $62
	octaved
	beat b E1
	vol LO_VOL
	beat b E2
.else
; Measure 16a,20a
	vol HI_VOL
	vibrato $00
	beat c E2 d E1 ds E2
	beat f T1 g T2 f S2+E2
	vibrato $62
	beat d E1
	vol LO_VOL
	beat d E2
.endif
.endr

; Measure 21
	octave 5
	;vibrato $62
	vol HI_VOL
	beat e HF+E1
	vol LO_VOL
	vibrato $02
	beat e E2+E1
	vol LO_VOL-2
	beat e E2 r E1
; Measure 22a
	octave 4
	env $0 $04
	duty $02
	vibrato $00
	vol HI_VOL
	beat c E2 r Q+E1 od as E2 r Q
; Measure 23
	octave 5
	env $0 $00
	vibrato $61
	vol HI_VOL
	beat g S1 a S2
	beat g E2+E1

	beat f S3 g S4
	beat f Q

	beat e S1 f S2
	beat e E2+Q
	vibrato $01
	vol LO_VOL
	beat e E1
; Measure 24b
	vibrato $00
	vol HI_VOL
	beat d E2
	beat c E1 od as E2 ou c E1 d E2
; Measure 25
	vibrato $81
	beat c Q
	vol LO_VOL
	vibrato $01
	beat c E1

	octaved
	vibrato $81
	vol HI_VOL
	beat g E2+Q
	vol LO_VOL
	vibrato $01
	beat g Q

; Measure 26
	octave 6
	vol HI_VOL
	vibrato $81
	beat f Q
	vol LO_VOL
	vibrato $01
	beat f E1

	vibrato $81
	vol HI_VOL
	beat e E2+Q
	vol LO_VOL
	vibrato $01
	beat e Q
; Measure 27
	octave 5
	vibrato $61
	vol HI_VOL
	beat c S1 d S2
	beat c E2+E1

	octaved
	beat as S3 ou c S4
	octaved
	beat as Q

	beat a S1 as S2
	beat a E2+Q
	vibrato $01
	vol LO_VOL
	beat a E1
; Measure 28
	vibrato $00
	vol HI_VOL
	beat g E2
	beat f E1 e E2 f E1 g E2
; Measure 29
	vibrato $81
	beat e Q+S1
	vibrato $01
	vol LO_VOL
	beat e S2+E2 r E1

	;vibrato $01
	octave 3
	;vol LO_VOL
	env $0 $04
	beat as E2 as E1 as E2
; Measure 30
	octave 4
	env $0 $00
	vol HI_VOL
	vibrato $e2
	beat as HF
	vibrato $02
	vol HI_VOL-2
	beat as Q
	vol LO_VOL
	beat as E1
	vol LO_VOL-2
	beat as E2

	goto musKokiriForestChannel1Measure5Loop
	cmdff

.macro m_musKokiriForestChannel0Measure3a
.redefine HI_VOL $5
.redefine LO_VOL $3
	octave 4
	vol HI_VOL
	beat g E2
	vol LO_VOL
	beat c E1 c E2 r E1

	vol HI_VOL
	beat f E2
	vol LO_VOL
	octaved
	beat as E1 as E2 r E1	
.endm

.macro m_musKokiriForestChannel0Measure13a
; Measure 13a
	vol HI_VOL
	beat \1 E2+E1
	vol LO_VOL
	beat \1 E2

	vol HI_VOL
	beat \2 Q+E1
	vol LO_VOL
	beat \2 E2
.endm

.macro m_musKokiriForestChannel0Measure14
; Measure 14
	vol HI_VOL
	beat \1 Q+E1
	vol LO_VOL
	beat \1 E2

	vol HI_VOL
	beat \2 Q+E1
	vol LO_VOL
	beat \2 E2 r E1
.endm
	
.macro m_musKokiriForestChannel0Measure26
; Measure 26,30
	beat \1 W1+W2+W3
	beat \2 W4
; 2
	beat \1 W5+W6+W7
	beat \2 W8
; 3
	beat \1 W9+W10+W11
	beat \2 W12
; 4 M26b
	beat \1 W1+W2+W3
	beat \2 W4	
; 5 
	beat \1 W5+W6+W7
	beat \2 W8
; 6
	beat \1 W9+W10+W11
	beat \2 W12
; 7 M26c
	beat \1 W1+W2+W3
	beat \2 W4
; 8
	beat \1 W5+W6+W7
	beat \2 W8
; 9 
	beat \1 W9+W10+W11
	beat \2 W12
; 10 M26d
	beat \1 W1+W2+W3
	beat \2 W4
; 11
	beat \1 W5+W6+W7
	beat \2 W8
; 12
	beat \1 R3
	rest E1

.endm

musKokiriForestChannel0:
.redefine HI_VOL $4
.redefine LO_VOL $2

	tempo TEMPO_A
; Mreasure 1
	octave 3
	vol HI_VOL
	duty $02
	beat b Q a HF b Q ou c Q
; Measure 2
	vibrato $e2
	beat d HF

	vibrato $00
	octave 3
	beat g T1 as T2 g T3 as T4
	octaveu
	beat f T5 g T6 f T7 g T8

	beat as T1 ou d T2 od as T3 ou d T4
	beat f T5 g T6 f T7 g T8

	beat as T1 ou d T2 od as T3 ou d T4
	beat f T5 g T6 a T7 as T8

	tempo TEMPO_B
; Measure 3-12
	rest E1
	octave 4
	env $0 $04
	vibrato $00
	;duty $02
	vol HI_VOL
.rept 10 INDEX REPTCTR
.ifeq REPTCTR 2
	musKokiriForestChannel0Measure5Loop:
.endif
	m_musKokiriForestChannel0Measure3a
.endr

.redefine HI_VOL $4
.redefine LO_VOL $2
	octave 4
	env $0 $00
	vibrato $01
	;duty $02
.rept 2
; Measure 13a,17a
	m_musKokiriForestChannel0Measure13a c4 d4
; Measure 14,18
	m_musKokiriForestChannel0Measure14 c4 d4
; Measure 15a,19a
	m_musKokiriForestChannel0Measure13a c4 d4
; Measure 16,20
	m_musKokiriForestChannel0Measure14 ds4 f4
.endr

; Measure 21a-23
	env $0 $04
	vibrato $00
	;duty $02
.rept 3
	m_musKokiriForestChannel0Measure3a
.endr
; Measure 24a
.macro m_musKokiriForestChannel0Measure24a
.redefine HI_VOL $5
.redefine LO_VOL $3
	vol HI_VOL
	octave 6
	beat c E2 f E1 g E2 ou c E1

	octave 4
	vol HI_VOL
	beat f E2
	vol LO_VOL
	octaved
	beat as E1 as E2 r E1	
; Measure 25a
	octaveu
	vol HI_VOL
	beat g E2
	vol LO_VOL
	beat c E1 c E2 r E1
.endm
	m_musKokiriForestChannel0Measure24a

	octave 4
	vol HI_VOL
	beat g S3 a S4
	beat as S1 ou c S2 od as S3 a S4
; Measure 26
	m_musKokiriForestChannel0Measure26 as4 g4
; Measure 27-28
	m_musKokiriForestChannel0Measure24a

; Measure 28c
	vol HI_VOL
	octave 6
	beat c E2 f E1 g E2 ou c E1
; Measure 29a
	octave 4
	vol HI_VOL
	beat g E2
	vol LO_VOL
	beat c E1 c E2 r E1	

	vol HI_VOL
	beat e S3 f S4
	beat g S1 a S2 g S3 f S4
; Measure 30
	m_musKokiriForestChannel0Measure26 g4 e4	

	goto musKokiriForestChannel0Measure5Loop
	cmdff

.macro m_musKokiriForestChannel4Measure3
; Measure 3
.redefine HI_VOL $15
.redefine LO_VOL $14
	octave 3
	duty HI_VOL
	beat c S1
	duty LO_VOL
	beat c S2

	octaveu
	duty HI_VOL
	beat e S3
	duty LO_VOL
	beat e S4

	rest Q

	octave 2
	duty HI_VOL
	beat as S1
	duty LO_VOL
	beat as S2

	octaveu
	octaveu
	duty HI_VOL
	beat d S3
	duty LO_VOL
	beat d S4

	rest Q
.endm

musKokiriForestChannel4:
.redefine HI_VOL $0e
.redefine LO_VOL $0f

	tempo TEMPO_A
; Measure 1
	octave 2
	duty HI_VOL
	beat g HF
	duty LO_VOL
	beat g Q

.rept 2
	duty HI_VOL
	beat g E1+S3
	duty LO_VOL
	beat g S4
.endr
; Measure 2
	duty HI_VOL
	beat g HF+Q
	duty LO_VOL
	beat g Q+Q

	tempo TEMPO_B
; Measure 3-12
musKokiriForestChannel4Measure3Loop:
.rept 10
	m_musKokiriForestChannel4Measure3
.endr
	
	octave 2
.rept 2
.rept 3
; Measure 13-15,17-19
	duty HI_VOL
	beat f Q+E1
	duty LO_VOL
	beat f E2

	duty HI_VOL
	beat g Q+E1
	duty LO_VOL
	beat g E2	
.endr
; Measure 16,20
	duty HI_VOL
	beat gs Q+E1
	duty LO_VOL
	beat gs E2

	duty HI_VOL
	beat as Q+E1
	duty LO_VOL
	beat as E2
.endr	
; Measure 21-30
.rept 8
	m_musKokiriForestChannel4Measure3
.endr

	goto musKokiriForestChannel4Measure3Loop
	cmdff

.define musKokiriForestChannel6 MUSIC_CHANNEL_FALLBACK EXPORT