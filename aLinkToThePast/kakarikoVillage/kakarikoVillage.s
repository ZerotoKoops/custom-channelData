musKakarikoVillageStart:
	tempo 100


.macro m_musKakarikoVillageChannel1HiVol
.ifndef VOLUME_HIGH
	vol HI_VOL
	env $1 $00
	vibrato $a2	
.endif
.redefine VOLUME_HIGH 1
.endm

.macro m_musKakarikoVillageChannel1LoVol
.ifdef VOLUME_HIGH
	vol LO_VOL
	env $0 $00
	vibrato $02	
.undefine VOLUME_HIGH
.endif
.endm

.macro m_musKakarikoVillageChannel1Quarter
	m_musKakarikoVillageChannel1HiVol

	beat \1 Q
.endm

.macro m_musKakarikoVillageChannel1Half
	m_musKakarikoVillageChannel1HiVol

	beat \1 Q+E1
	
	m_musKakarikoVillageChannel1LoVol
	beat \1 E2	
.endm

.macro m_musKakarikoVillageChannel1DottedHalf
	m_musKakarikoVillageChannel1HiVol

	beat \1 Q+E1+S3
	
	m_musKakarikoVillageChannel1LoVol
	beat \1 S4+E1
	vol LO_VOL-1
	vibrato $03
	beat \1 E2	
.endm

.macro m_musKakarikoVillageChannel1DottedHalfAndHalf
	m_musKakarikoVillageChannel1HiVol

	beat \1 HF+E1
	
	m_musKakarikoVillageChannel1LoVol
	beat \1 E2+Q
	vol LO_VOL-1
	beat \1 Q	
.endm

musKakarikoVillageChannel1:
.redefine HI_VOL $6
.redefine LO_VOL $4
; Measure 1
	vol $0
	beat gs3 HF+Q

musKakarikoVillageChannel1Measure2Loop:
;Measure 2-4
	beat gs3 HF+Q gs3 HF+Q+HF
	
	duty $03
	octave 4
.rept 2
.rept 2
; Measure 4c,8c
	m_musKakarikoVillageChannel1Quarter f4
; Measure 5,9
	m_musKakarikoVillageChannel1Half as4
; Measure 5c,9c
	m_musKakarikoVillageChannel1Quarter f4
; Measure 6,10-
	m_musKakarikoVillageChannel1Half d5
; Measure 6c,10c
	m_musKakarikoVillageChannel1Quarter as4
; Measure 7-8,11-12
	m_musKakarikoVillageChannel1DottedHalfAndHalf f5
.endr

; Measure 12c
	m_musKakarikoVillageChannel1Quarter f5 
; Measure 13
	m_musKakarikoVillageChannel1DottedHalf g5
; Measure 14
	m_musKakarikoVillageChannel1Half a4
	m_musKakarikoVillageChannel1Quarter g5
; Measure 15
	m_musKakarikoVillageChannel1DottedHalf f5
.rept 2
; Measure 16,17
	m_musKakarikoVillageChannel1DottedHalf d5
.endr
; Measure 18
	m_musKakarikoVillageChannel1Half d5
	m_musKakarikoVillageChannel1Quarter c5
; Measure 19-20
	m_musKakarikoVillageChannel1DottedHalfAndHalf as4
.endr

; Measure 21c
	m_musKakarikoVillageChannel1Quarter as4
; Measure 22
	m_musKakarikoVillageChannel1DottedHalf as4
; Measure 23
	m_musKakarikoVillageChannel1Half a4
	m_musKakarikoVillageChannel1Quarter c5
; Measure 24
	m_musKakarikoVillageChannel1DottedHalf as4
; Measure 25
	m_musKakarikoVillageChannel1DottedHalf f4
; Measure 26
	m_musKakarikoVillageChannel1Half ds4
	m_musKakarikoVillageChannel1Quarter d4
; Measure 27
	m_musKakarikoVillageChannel1Half ds4
	m_musKakarikoVillageChannel1Quarter f4
; Measure 28-29
	m_musKakarikoVillageChannel1DottedHalfAndHalf d4
; Masure 29c
	m_musKakarikoVillageChannel1Quarter as4
; Measure 30
	m_musKakarikoVillageChannel1DottedHalf as4
; Measure 31
	m_musKakarikoVillageChannel1Half a4
	m_musKakarikoVillageChannel1Quarter c5
; Measure 32
	m_musKakarikoVillageChannel1Half as4	
	m_musKakarikoVillageChannel1Quarter f4
; Measure 33
	m_musKakarikoVillageChannel1DottedHalf f5
; Measure 34
	m_musKakarikoVillageChannel1DottedHalf ds5
; Measure 35
	m_musKakarikoVillageChannel1Half d5
	m_musKakarikoVillageChannel1Quarter c5
; Measure 36-37
	m_musKakarikoVillageChannel1DottedHalfAndHalf as4
	octave 4
	beat as4 Q

	vol $0
	goto musKakarikoVillageChannel1Measure2Loop
	cmdff

.macro m_musKakarikoVillageChannel0Measure1
	beat \1 E1 \2 E2 \3 E1
	beat \4 E2 \3 E1 \2 E2
.endm
.macro m_musKakarikoVillageChannel0Measure5
	beat r E1 \1 E2 \2 E1
	beat \3 E2 \2 E1 \1 E2
.endm
.macro m_musKakarikoVillageChannel0Measure13
	beat r E1 \1 E2 \2 E1
	beat \3 E2 \2 E1 \3 E2
.endm

musKakarikoVillageChannel0:
.redefine HI_VOL $5
.redefine LO_VOL $3

musKakarikoVillageChannel0Measure1Loop:
; Measure 1
	env $0 $03
	duty $01
	vibrato $01
	vol HI_VOL
	octave 2
	m_musKakarikoVillageChannel0Measure1 as2 f3 as3 d4
; Measure 2
	m_musKakarikoVillageChannel0Measure1 g2 d3 g3 as3
; Measure 3
	m_musKakarikoVillageChannel0Measure1 c3 g3 as3 f4
; Measure 4
	octave 3
	beat r E1 f E2 ou c E1
	beat ds E2 c E1 od a E2

.rept 2
.rept 2
; Measure 5,9
	m_musKakarikoVillageChannel0Measure5 f3 as3 d4
; Measure 6,10
	m_musKakarikoVillageChannel0Measure5 d3 g3 as3
; Measure 7,11
	m_musKakarikoVillageChannel0Measure5 g3 as3 f4
; Measure 8,12
	octave 3
	beat r E1 f E2 ou c E1
	beat ds E2 c E1 od f E2
.endr

; Measure 13
	m_musKakarikoVillageChannel0Measure13 as2 as3 g3
; Measure 14
	m_musKakarikoVillageChannel0Measure13 c3 a3 f3
; Measure 15
	m_musKakarikoVillageChannel0Measure13 f3 as3 f3
; Measure 16
	m_musKakarikoVillageChannel0Measure13 d3 as3 d3
; Measure 17
	m_musKakarikoVillageChannel0Measure13 g3 as3 g3
; Measure 18
	m_musKakarikoVillageChannel0Measure13 c3 a3 c3
.rept 2
; Measure 19,20,21
	m_musKakarikoVillageChannel0Measure13 f3 as3 f3
.endr
.endr

.rept 2 INDEX REPTCTR
.rept 2
; Measure 22-23,30-31
	m_musKakarikoVillageChannel0Measure13 as2 as3 g3
.endr
.rept 2
; Measure 24-25,32-33
	m_musKakarikoVillageChannel0Measure13 f3 as3 f3
.endr
; Measure 26,34
	m_musKakarikoVillageChannel0Measure13 g3 as3 g3
; Measure 27,35
	m_musKakarikoVillageChannel0Measure13 c3 a3 c3
; Measure 28,36
	m_musKakarikoVillageChannel0Measure13 f3 as3 f3

.ifeq REPTCTR 0
; Measure 29
	m_musKakarikoVillageChannel0Measure13 f3 gs3 f3
.else ;REPTCTR == 1
; Measure 37
	goto musKakarikoVillageChannel0Measure1Loop
.endif
.endr
	cmdff

.macro m_musKakarikoVillageChannel4Measure4
	duty HI_VOL 
	vibrato $e1
	beat \1 HF+R1+R2
	duty LO_VOL
	vibrato $01
	beat \1 R3
.endm

musKakarikoVillageChannel4:
.redefine HI_VOL $17
.redefine LO_VOL $08

musKakarikoVillageChannel4Measure1Loop:
; Measure 1-3
	rest (HF+Q)*2 
	rest HF+Q
; Measure 4
	octave 2
	m_musKakarikoVillageChannel4Measure4 f2
.rept 2
.rept 2
; Measure 5-8,9-12
	m_musKakarikoVillageChannel4Measure4 as2
	m_musKakarikoVillageChannel4Measure4 g2
	m_musKakarikoVillageChannel4Measure4 c3
	m_musKakarikoVillageChannel4Measure4 f2
.endr
; Measure 13-16
	m_musKakarikoVillageChannel4Measure4 ds2
	m_musKakarikoVillageChannel4Measure4 f2
	m_musKakarikoVillageChannel4Measure4 as2
	m_musKakarikoVillageChannel4Measure4 g2
; Measure 17-20/21
	m_musKakarikoVillageChannel4Measure4 c3
	m_musKakarikoVillageChannel4Measure4 f2
	m_musKakarikoVillageChannel4Measure4 as2
	m_musKakarikoVillageChannel4Measure4 as2
.endr
.rept 2 INDEX REPTCTR
; Measure 22-25,27-30
	m_musKakarikoVillageChannel4Measure4 ds2
	m_musKakarikoVillageChannel4Measure4 ds2
	m_musKakarikoVillageChannel4Measure4 d2
	m_musKakarikoVillageChannel4Measure4 d2
; Measure 23-26,31-33
	m_musKakarikoVillageChannel4Measure4 c3
	m_musKakarikoVillageChannel4Measure4 f2
	m_musKakarikoVillageChannel4Measure4 as2
.ifeq REPTCTR 0
	m_musKakarikoVillageChannel4Measure4 gs2
.else
	goto musKakarikoVillageChannel4Measure1Loop
.endif
.endr
	cmdff

.define musKakarikoVillageChannel6 MUSIC_CHANNEL_FALLBACK EXPORT