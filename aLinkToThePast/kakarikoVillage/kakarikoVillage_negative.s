musKakarikoVillage_negativeStart:
	tempo 100


.macro m_musKakarikoVillage_negativeChannel1HiVol
.ifndef VOLUME_HIGH
	vol HI_VOL
	env $1 $00
	vibrato $a2	
.endif
.redefine VOLUME_HIGH 1
.endm

.macro m_musKakarikoVillage_negativeChannel1LoVol
.ifdef VOLUME_HIGH
	vol LO_VOL
	env $0 $00
	vibrato $02	
.undefine VOLUME_HIGH
.endif
.endm

.macro m_musKakarikoVillage_negativeChannel1Quarter
	m_musKakarikoVillage_negativeChannel1HiVol

	beat \1 Q
.endm

.macro m_musKakarikoVillage_negativeChannel1Half
	m_musKakarikoVillage_negativeChannel1HiVol

	beat \1 Q+E1
	
	m_musKakarikoVillage_negativeChannel1LoVol
	beat \1 E2	
.endm

.macro m_musKakarikoVillage_negativeChannel1DottedHalf
	m_musKakarikoVillage_negativeChannel1HiVol

	beat \1 Q+E1+S3
	
	m_musKakarikoVillage_negativeChannel1LoVol
	beat \1 S4+E1
	vol LO_VOL-1
	vibrato $03
	beat \1 E2	
.endm

.macro m_musKakarikoVillage_negativeChannel1DottedHalfAndHalf
	m_musKakarikoVillage_negativeChannel1HiVol

	beat \1 HF+E1
	
	m_musKakarikoVillage_negativeChannel1LoVol
	beat \1 E2+Q
	vol LO_VOL-1
	beat \1 Q	
.endm

musKakarikoVillage_negativeChannel1:
.redefine HI_VOL $6
.redefine LO_VOL $4
; Measure 1
	vol $0
	beat gs3 HF+Q

musKakarikoVillage_negativeChannel1Measure2Loop:
;Measure 2-4
	beat gs3 HF+Q gs3 HF+Q+HF
	
	duty $03
	octave 4
.rept 2
.rept 2
; Measure 4c,8c
	m_musKakarikoVillage_negativeChannel1Quarter d4
; Measure 5,9
	m_musKakarikoVillage_negativeChannel1Half g4
; Measure 5c,9c
	m_musKakarikoVillage_negativeChannel1Quarter d4
; Measure 6,10-
	m_musKakarikoVillage_negativeChannel1Half as4
; Measure 6c,10c
	m_musKakarikoVillage_negativeChannel1Quarter g4
; Measure 7-8,11-12
	m_musKakarikoVillage_negativeChannel1DottedHalfAndHalf d5
.endr

; Measure 12c
	m_musKakarikoVillage_negativeChannel1Quarter d5 
; Measure 13
	m_musKakarikoVillage_negativeChannel1DottedHalf ds5
; Measure 14
	m_musKakarikoVillage_negativeChannel1Half f4
	m_musKakarikoVillage_negativeChannel1Quarter ds5
; Measure 15
	m_musKakarikoVillage_negativeChannel1DottedHalf d5
.rept 2
; Measure 16,17
	m_musKakarikoVillage_negativeChannel1DottedHalf as4
.endr
; Measure 18
	m_musKakarikoVillage_negativeChannel1Half as4
	m_musKakarikoVillage_negativeChannel1Quarter a4
; Measure 19-20
	m_musKakarikoVillage_negativeChannel1DottedHalfAndHalf g4
.endr

; Measure 21c
	m_musKakarikoVillage_negativeChannel1Quarter g4
; Measure 22
	m_musKakarikoVillage_negativeChannel1DottedHalf g4
; Measure 23
	m_musKakarikoVillage_negativeChannel1Half fs4
	m_musKakarikoVillage_negativeChannel1Quarter a4
; Measure 24
	m_musKakarikoVillage_negativeChannel1DottedHalf g4
; Measure 25
	m_musKakarikoVillage_negativeChannel1DottedHalf d4
; Measure 26
	m_musKakarikoVillage_negativeChannel1Half c4
	m_musKakarikoVillage_negativeChannel1Quarter as3
; Measure 27
	m_musKakarikoVillage_negativeChannel1Half c4
	m_musKakarikoVillage_negativeChannel1Quarter d4
; Measure 28-29
	m_musKakarikoVillage_negativeChannel1DottedHalfAndHalf as3
; Masure 29c
	m_musKakarikoVillage_negativeChannel1Quarter g4
; Measure 30
	m_musKakarikoVillage_negativeChannel1DottedHalf g4
; Measure 31
	m_musKakarikoVillage_negativeChannel1Half fs4
	m_musKakarikoVillage_negativeChannel1Quarter a4
; Measure 32
	m_musKakarikoVillage_negativeChannel1Half g4	
	m_musKakarikoVillage_negativeChannel1Quarter d4
; Measure 33
	m_musKakarikoVillage_negativeChannel1DottedHalf d5
; Measure 34
	m_musKakarikoVillage_negativeChannel1DottedHalf c5
; Measure 35
	m_musKakarikoVillage_negativeChannel1Half as4
	m_musKakarikoVillage_negativeChannel1Quarter a4
; Measure 36-37
	m_musKakarikoVillage_negativeChannel1DottedHalfAndHalf g4
	octave 4
	beat g4 Q

	vol $0
	goto musKakarikoVillage_negativeChannel1Measure2Loop
	cmdff

.macro m_musKakarikoVillage_negativeChannel0Measure1
	beat \1 E1 \2 E2 \3 E1
	beat \4 E2 \3 E1 \2 E2
.endm
.macro m_musKakarikoVillage_negativeChannel0Measure5
	beat r E1 \1 E2 \2 E1
	beat \3 E2 \2 E1 \1 E2
.endm
.macro m_musKakarikoVillage_negativeChannel0Measure13
	beat r E1 \1 E2 \2 E1
	beat \3 E2 \2 E1 \3 E2
.endm

musKakarikoVillage_negativeChannel0:
.redefine HI_VOL $5
.redefine LO_VOL $3

musKakarikoVillage_negativeChannel0Measure1Loop:
; Measure 1
	env $0 $03
	duty $01
	vibrato $01
	vol HI_VOL
	octave 2
	m_musKakarikoVillage_negativeChannel0Measure1 g2 d3 g3 as3
; Measure 2
	m_musKakarikoVillage_negativeChannel0Measure1 f2 as2 d3 f3
; Measure 3
	m_musKakarikoVillage_negativeChannel0Measure1 a2 ds3 g3 d4
; Measure 4
	octave 3
	beat r E1 c E2 g E1
	beat a E2 g E1 ds E2

.rept 2
.rept 2
; Measure 5,9
	m_musKakarikoVillage_negativeChannel0Measure5 d3 g3 as3
; Measure 6,10
	m_musKakarikoVillage_negativeChannel0Measure5 as2 d3 f3
; Measure 7,11
	m_musKakarikoVillage_negativeChannel0Measure5 ds3 g3 d4
; Measure 8,12
	octave 3
	beat r E1 c E2 g E1
	beat a E2 g E1 ds E2
.endr

; Measure 13
	m_musKakarikoVillage_negativeChannel0Measure13 g2 g3 ds3
; Measure 14
	m_musKakarikoVillage_negativeChannel0Measure13 a2 f3 d3
; Measure 15
	m_musKakarikoVillage_negativeChannel0Measure13 d3 g3 d3
; Measure 16
	m_musKakarikoVillage_negativeChannel0Measure13 as2 f3 as2
; Measure 17
	m_musKakarikoVillage_negativeChannel0Measure13 ds3 g3 ds3
; Measure 18
	m_musKakarikoVillage_negativeChannel0Measure13 g2 ds3 g2
.rept 2
; Measure 19,20,21
	m_musKakarikoVillage_negativeChannel0Measure13 d3 g3 d3
.endr
.endr

.rept 2 INDEX REPTCTR
.ifeq REPTCTR 0
; Measure 22
	m_musKakarikoVillage_negativeChannel0Measure13 g2 g3 ds3
.else ;REPTCTR == 1
; Measure 30
	m_musKakarikoVillage_negativeChannel0Measure13 a2 f3 d3
.endif
; Measure 23,31
	m_musKakarikoVillage_negativeChannel0Measure13 a2 fs3 a2
.rept 2
; Measure 24-25,32-33
	m_musKakarikoVillage_negativeChannel0Measure13 d3 g3 d3
.endr
.ifeq REPTCTR 0
; Measure 26
	m_musKakarikoVillage_negativeChannel0Measure13 ds3 g3 ds3
.else ;REPTCTR == 1
; Measure 34
	m_musKakarikoVillage_negativeChannel0Measure13 c3 fs3 c3
.endif
; Measure 27,35
	m_musKakarikoVillage_negativeChannel0Measure13 g2 ds3 g2
; Measure 28,36
	m_musKakarikoVillage_negativeChannel0Measure13 d3 g3 d3

.ifeq REPTCTR 0
; Measure 29
	m_musKakarikoVillage_negativeChannel0Measure13 d3 f3 d3
.else ;REPTCTR == 1
; Measure 37
	goto musKakarikoVillage_negativeChannel0Measure1Loop
.endif
.endr
	cmdff

.macro m_musKakarikoVillage_negativeChannel4Measure4
	duty HI_VOL 
	vibrato $e1
	beat \1 HF+R1+R2
	duty LO_VOL
	vibrato $01
	beat \1 R3
.endm

musKakarikoVillage_negativeChannel4:
.redefine HI_VOL $17
.redefine LO_VOL $08

musKakarikoVillage_negativeChannel4Measure1Loop:
; Measure 1-3
	rest (HF+Q)*2 
	rest HF+Q
; Measure 4
	octave 2
	m_musKakarikoVillage_negativeChannel4Measure4 d2
.rept 2
.rept 2
; Measure 5-8,9-12
	m_musKakarikoVillage_negativeChannel4Measure4 g2
	m_musKakarikoVillage_negativeChannel4Measure4 f2
	m_musKakarikoVillage_negativeChannel4Measure4 a2
	m_musKakarikoVillage_negativeChannel4Measure4 d2
.endr
; Measure 13-16
	m_musKakarikoVillage_negativeChannel4Measure4 c2
	m_musKakarikoVillage_negativeChannel4Measure4 d2
	m_musKakarikoVillage_negativeChannel4Measure4 g2
	m_musKakarikoVillage_negativeChannel4Measure4 f2
; Measure 17-20/21
	m_musKakarikoVillage_negativeChannel4Measure4 c3
	m_musKakarikoVillage_negativeChannel4Measure4 c2
	m_musKakarikoVillage_negativeChannel4Measure4 g2
	m_musKakarikoVillage_negativeChannel4Measure4 g2
.endr
.rept 2 INDEX REPTCTR
.ifeq REPTCTR 0
; Measure 22-25
	m_musKakarikoVillage_negativeChannel4Measure4 c2
.else ;REPTCTR == 1
; Measure 27-30
	m_musKakarikoVillage_negativeChannel4Measure4 d2
.endif
	m_musKakarikoVillage_negativeChannel4Measure4 c2
	m_musKakarikoVillage_negativeChannel4Measure4 as1
	m_musKakarikoVillage_negativeChannel4Measure4 as1

.ifeq REPTCTR 0
; Measure 23-26
	m_musKakarikoVillage_negativeChannel4Measure4 a2
.else ;REPTCTR == 1
; Measure 31-33
	m_musKakarikoVillage_negativeChannel4Measure4 d2
.endif
	m_musKakarikoVillage_negativeChannel4Measure4 c2
	m_musKakarikoVillage_negativeChannel4Measure4 g2
.ifeq REPTCTR 0
	m_musKakarikoVillage_negativeChannel4Measure4 f2
.else
	goto musKakarikoVillage_negativeChannel4Measure1Loop
.endif
.endr
	cmdff

.define musKakarikoVillage_negativeChannel6 MUSIC_CHANNEL_FALLBACK EXPORT