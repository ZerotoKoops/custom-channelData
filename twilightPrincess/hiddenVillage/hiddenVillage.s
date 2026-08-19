musHiddenVillageStart:
	tempo 138
musHiddenVillageChannel1:
.redefine HI_VOL $6
.redefine LO_VOL $4

.redefine OCTAVE_GUITAR 3
.redefine OCTAVE_WHISTLE 4
.redefine OCTAVE_OCARINA 6
.redefine OCTAVE_TRUMPETS 4
.redefine OCTAVE_TONGUEHARP 3


.macro m_musHiddenVillageGuitar
.redefine HI_VOL_VIBRATO $61
.redefine LO_VOL_VIBRATO $01
	vibrato HI_VOL_VIBRATO
	env $0 $03
	duty $00
.endm
.macro m_musHiddenVillageTrumpets
.redefine HI_VOL_VIBRATO $01
.redefine LO_VOL_VIBRATO $01
	vibrato HI_VOL_VIBRATO
	env $0 $00
	duty $00
.endm
.macro m_musHiddenVillageWhistle
.redefine HI_VOL_VIBRATO $62
.redefine LO_VOL_VIBRATO $02
	vibrato HI_VOL_VIBRATO
	env $1 $00
	duty $02
.endm
.macro m_musHiddenVillageOcarina
.redefine HI_VOL_VIBRATO $41
.redefine LO_VOL_VIBRATO $01
	vibrato HI_VOL_VIBRATO
	env $0 $00
	duty $03
.endm
.macro m_musHiddenVillageTongueHarp
.redefine HI_VOL_VIBRATO $03
.redefine LO_VOL_VIBRATO $03
	vibrato HI_VOL_VIBRATO
	env $0 $05
	duty $02
.endm

; Measure 1
	vol $0
	beat gs3 E2
; Measure 2-3
	m_musHiddenVillageGuitar
	octave OCTAVE_GUITAR
	vol HI_VOL
	beat b W+W

@measure4Loop:
; Measure 4
	m_musHiddenVillageGuitar
	octave OCTAVE_GUITAR
	vol HI_VOL
	beat b HF+E1
	octaveu
	beat cs E2 d E1 od b E2
; Measure 5
	beat a HF fs HF
; Measure 6
	beat b HF+E1
	octaveu
	beat cs E2 d E1 od b E2
; Measure 7
	beat a W

; Measure 8
	beat b HF+E1
	octaveu
	beat cs E2 d E1 od b E2
; Measure 9
	beat a HF fs HF
; Measure 10
	m_musHiddenVillageWhistle
	octave OCTAVE_WHISTLE
	beat b Q ou g Q fs Q d Q
; Measure 11
	beat cs Q+R1+R2
	vol LO_VOL
	env $0 $00
	vibrato LO_VOL_VIBRATO
	beat cs R3+Q

	m_musHiddenVillageGuitar
	octave OCTAVE_GUITAR
	vol HI_VOL
	beat a Q
; Measure 12
	octaveu
	beat d HF+E1
	beat e E2 fs E1 d E2
; Measure 13
	beat cs HF od a HF
; Measure 14
	octaveu
	beat d HF+E1
	beat e E2 fs E1 d E2
; Measure 15
	beat cs W
; Measure 16
	beat d HF+E1
	beat e E2 fs E1 d E2
; Measure 17
	beat cs HF od a HF
; Measure 18
	m_musHiddenVillageWhistle
	octave OCTAVE_WHISTLE+1
	beat fs Q ou d Q cs Q od a Q
; Measure 19
	beat fs Q+R1+R2
	vol LO_VOL
	env $0 $00
	vibrato LO_VOL_VIBRATO
	beat fs R3+Q r E1

	m_musHiddenVillageGuitar
	octave OCTAVE_GUITAR+1
	vol HI_VOL
	beat e S3 fs S4
; Measure 20
	beat g E1

	m_musHiddenVillageOcarina
	octave OCTAVE_OCARINA
	beat e S3 fs S4
	beat g S1 fs S2 e S3 d S4
	beat c E1 
	vol LO_VOL
	vibrato LO_VOL_VIBRATO
	beat c S3 r S4

	m_musHiddenVillageGuitar
	octave OCTAVE_GUITAR+1
	vol HI_VOL
	beat a E1 b E2
; Measure 21
	beat fs HF d Q+E1
	
	beat d S3 e S4
; Measure 22
	beat f E1

	m_musHiddenVillageOcarina
	octave OCTAVE_OCARINA
	beat d S3 e S4
	beat f S1 e S2 d S3 c S4
	octaved
	beat as E1
	vol LO_VOL
	vibrato LO_VOL_VIBRATO
	beat as S3 r S4

	m_musHiddenVillageGuitar
	octave OCTAVE_GUITAR+1
	vol HI_VOL
	beat g E1 a E2
; Measure 23
	beat e HF c Q+E1

	beat e S3 fs S4
; Measure 24
	beat g E1

	m_musHiddenVillageOcarina
	octave OCTAVE_OCARINA
	beat e S3 fs S4
	beat g S1 fs S2 e S3 d S4
	beat c E1 
	vol LO_VOL
	vibrato LO_VOL_VIBRATO
	beat c S3 r S4

	m_musHiddenVillageGuitar
	octave OCTAVE_GUITAR+1
	vol HI_VOL
	beat a E1 b E2
; Measure 25
	beat fs HF ou d Q+E1
	
	m_musHiddenVillageOcarina
	octave OCTAVE_OCARINA-1
	beat as T5 b T6 ou c T7 cs T8
; Measure 26
	beat d Q
	beat cs Q+R1
	vol LO_VOL
	vibrato LO_VOL_VIBRATO
	beat cs R2+R3
	
	vol HI_VOL
	vibrato HI_VOL_VIBRATO
	beat fs Q
; Measure 27
	beat cs Q+R1
	vol LO_VOL
	vibrato LO_VOL_VIBRATO
	beat cs R2+R3
	
	octaved
	vol HI_VOL
	vibrato HI_VOL_VIBRATO	
	beat as Q+R1
	vol LO_VOL
	vibrato LO_VOL_VIBRATO
	beat as R2+R3
	
; Measure 28
	m_musHiddenVillageTrumpets
	octave OCTAVE_TRUMPETS
	vol HI_VOL
	beat b HF+E1
	octaveu
	beat cs E2 d E1 od b E2
; Measure 29
	beat a HF fs HF
; Measure 30
	beat b HF+E1
	octaveu
	beat cs E2 d E1 od b E2
; Measure 31
	beat a HF+E1
	vol LO_VOL
	vibrato LO_VOL_VIBRATO
	beat a E2+Q

; Measure 32
	vol HI_VOL
	vibrato HI_VOL_VIBRATO
	beat b HF+E1
	octaveu
	beat cs E2 d E1 od b E2
; Measure 33
	beat a HF fs HF
; Measure 34-35
	beat b HF+Q+E1
	vol LO_VOL
	vibrato LO_VOL_VIBRATO
	beat b E2+HF+E1
	vol LO_VOL-1
	beat b E2+Q

; Measure 36-37
	m_musHiddenVillageTongueHarp
	octave OCTAVE_TONGUEHARP
	vol HI_VOL
.rept 2
	beat b Q b Q 
	octaved
	beat b Q b Q
	octaveu
.endr

	goto @measure4Loop
	cmdff

.macro m_musHiddenVillageGuitarBeat
; Measure 2
.rept \2
	beat \1 E1 \1 S3 \1 S4
.endr
.endm

musHiddenVillageChannel0:
.redefine HI_VOL $6
.redefine LO_VOL $4

; Measure 1
	m_musHiddenVillageGuitar
	vol LO_VOL
	octave OCTAVE_GUITAR-1
	beat b S3 b S4

@measure2Loop:
	vol LO_VOL
	m_musHiddenVillageGuitar
; Measure 2-3,36-37
	m_musHiddenVillageGuitarBeat b 8
.rept 3
; Measure 4,6,8
	m_musHiddenVillageGuitarBeat b 4
; Measure 5,7,9
	m_musHiddenVillageGuitarBeat a 4
.endr
; Measure 10
	vol HI_VOL
	octave OCTAVE_GUITAR
	beat b E1

	vol LO_VOL
	octave OCTAVE_GUITAR-1
	beat b S3 b S4
	m_musHiddenVillageGuitarBeat b 3
; Measure 11
	m_musHiddenVillageGuitarBeat a 4

; Measure 12
	octave OCTAVE_GUITAR
	m_musHiddenVillageGuitarBeat d 4
; Measure 13
	octaved
	m_musHiddenVillageGuitarBeat a 4
; Measure 14
	m_musHiddenVillageGuitarBeat b 4
; Measure 15
	m_musHiddenVillageGuitarBeat fs 4
; Measure 16
	m_musHiddenVillageGuitarBeat g 4
; Measure 17
	m_musHiddenVillageGuitarBeat a 4
; Measure 18
	vol HI_VOL
	octave OCTAVE_GUITAR+1
	beat fs E1

	vol LO_VOL
	octave OCTAVE_GUITAR-1
	beat a S3 a S4
	m_musHiddenVillageGuitarBeat a 3
; Measure 19
	m_musHiddenVillageGuitarBeat a 4

; Measure 20
	octave OCTAVE_GUITAR-1
	m_musHiddenVillageGuitarBeat g 4
; Measure 21
	m_musHiddenVillageGuitarBeat fs 4
; Measure 22
	m_musHiddenVillageGuitarBeat f 4
; Measure 23
	m_musHiddenVillageGuitarBeat e 4
; Measure 24
	m_musHiddenVillageGuitarBeat g 4
; Measure 25
	m_musHiddenVillageGuitarBeat fs 4
; Measure 26
	m_musHiddenVillageGuitarBeat b 4
; Measure 27
	m_musHiddenVillageGuitarBeat as 4

; Measure 28
	vol HI_VOL
	octave OCTAVE_GUITAR
	beat fs E1

	vol LO_VOL
	octave OCTAVE_GUITAR-1
.rept 2
	beat fs S3 fs S4 fs E1
.endr

	vol HI_VOL
	octave OCTAVE_GUITAR
	beat a E2 b E1 fs E2
; Measure 29
	beat e E1

	vol LO_VOL
	octave OCTAVE_GUITAR-1
	beat e S3 e S4 e E1
	beat e S3 e S4

	vol HI_VOL
	octave OCTAVE_GUITAR
	beat cs E1

	vol LO_VOL
	octave OCTAVE_GUITAR-1
	beat e S3 e S4 e E1
	beat e S3 e S4
; Measure 30
	vol HI_VOL
	octave OCTAVE_GUITAR
	beat fs E1

	vol LO_VOL
	octave OCTAVE_GUITAR-1
.rept 2
	beat fs S3 fs S4 fs E1
.endr

	vol HI_VOL
	octave OCTAVE_GUITAR
	beat a E2 b E1 fs E2	
; Measure 31
	beat e E1

	vol LO_VOL
	octave OCTAVE_GUITAR-1
	beat e S3 e S4
	m_musHiddenVillageGuitarBeat e 3	
; Measure 32
	vol HI_VOL
	octave OCTAVE_GUITAR
	beat fs E1

	vol LO_VOL
	octave OCTAVE_GUITAR-1
.rept 2
	beat fs S3 fs S4 fs E1
.endr

	vol HI_VOL
	octave OCTAVE_GUITAR
	beat a E2 b E1 fs E2
; Measure 33
	beat e E1

	vol LO_VOL
	octave OCTAVE_GUITAR-1
	beat e S3 e S4 e E1
	beat e S3 e S4

	vol HI_VOL
	octave OCTAVE_GUITAR
	beat cs E1

	vol LO_VOL
	octave OCTAVE_GUITAR-1
	beat e S3 e S4 e E1
	beat e S3 e S4

; Measure 34-35
	m_musHiddenVillageTongueHarp
	vol HI_VOL
	octave OCTAVE_TONGUEHARP
.rept 2
	beat b Q b Q 
	octaved
	beat b Q b Q
	octaveu
.endr

	goto @measure2Loop
	cmdff


.macro m_musHiddenVillageGuitarBeat2
.rept \2
	beat \1 S1 r S2
	beat \1 T5 r T6 \1 T7 r T8
.endr
.endm


musHiddenVillageChannel4:
	.redefine HI_VOL $28
	.redefine LO_VOL $08
	
; Measure 1
	vibrato $01
	duty HI_VOL
	octave OCTAVE_GUITAR-1
	beat fs T5 r T6 fs T7 r T8

@measure2Loop:
; Measure 2-3,36-37
	m_musHiddenVillageGuitarBeat2 fs 8
.rept 4
; Measure 4,6,8,10
	m_musHiddenVillageGuitarBeat2 fs 4
; Measure 5,7,9,11
	m_musHiddenVillageGuitarBeat2 e 4
.endr

; Measure 12
	m_musHiddenVillageGuitarBeat2 a 4
; Measure 13
	m_musHiddenVillageGuitarBeat2 e 4
; Measure 14
	m_musHiddenVillageGuitarBeat2 fs 4
; Measure 15
	m_musHiddenVillageGuitarBeat2 cs 4
; Measure 16
	m_musHiddenVillageGuitarBeat2 d 4
.rept 2
; Measure 17,20
	m_musHiddenVillageGuitarBeat2 e 4
; Measure 18-19,21-22
	m_musHiddenVillageGuitarBeat2 d 8
.endr
; Measure 23
	m_musHiddenVillageGuitarBeat2 c 4
; Measure 24
	m_musHiddenVillageGuitarBeat2 e 4
; Measure 25
	m_musHiddenVillageGuitarBeat2 d 4
; Measure 26-27
	m_musHiddenVillageGuitarBeat2 fs 8

.rept 3
; Measure 28,30,32
	m_musHiddenVillageGuitarBeat2 b 4
; Measure 29,31,33
	m_musHiddenVillageGuitarBeat2 a 4
.endr
; Measure 34-35
	m_musHiddenVillageGuitarBeat2 fs 8

	goto @measure2Loop
	cmdff

musHiddenVillageChannel6:
.redefine HI_VOL $4
.redefine LO_VOL $3
.redefine HIT $24

	vol HI_VOL
@measure1Loop:
; Measure 1
	beat HIT S3 HIT S4
; Measure 2
	beat HIT E1

	goto @measure1Loop
	cmdff
