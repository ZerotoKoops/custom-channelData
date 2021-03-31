.enum $0
	c1: db	; $00
	cs1: db ; $01
	d1: db	; $02
	ds1: db	; $03
	e1: db	; $04
	f1: db	; $05
	fs1: db	; $06
	g1: db	; $07
	gs1: db ; $08
	a1: db	; $09
	as1: db ; $0a
	b1: db	; $0b
	c2: db	; $0c
	cs2: db	; $0d
	d2: db	; $0e
	ds2: db	; $0f
	e2: db	; $10
	f2: db	; $11
	fs2: db	; $12
	g2: db	; $13
	gs2: db	; $14
	a2: db	; $15
	as2: db ; $16
	b2: db  ; $17
	c3: db  ; $18
	cs3: db ; $19
	d3: db  ; $1a
	ds3: db ; $1b
	e3: db  ; $1c
	f3: db  ; $1d
	fs3: db ; $1e
	g3: db  ; $1f
	gs3: db
	a3: db
	as3: db
	b3: db
	c4: db
	cs4: db
	d4: db
	ds4: db
	e4: db
	f4: db
	fs4: db
	g4: db
	gs4: db
	a4: db
	as4: db
	b4: db
	c5: db
	cs5: db
	d5: db
	ds5: db
	e5: db
	f5: db
	fs5: db
	g5: db
	gs5: db
	a5: db
	as5: db
	b5: db
	c6: db
	cs6: db
	d6: db
	ds6: db
	e6: db
	f6: db
	fs6: db
	g6: db
	gs6: db
	a6: db
	as6: db
	b6: db
	c7: db
	cs7: db
	d7: db
	ds7: db
	e7: db
	f7: db
	fs7: db
	g7: db
	gs7: db
	a7: db
	as7: db
	b7: db
	c8: db
	cs8: db
	d8: db
	ds8: db
	e8: db
	f8: db
	fs8: db
	g8: db
	gs8: db
	a8: db
	as8: db
	b8: db
.ende

.redefine od (-1)
.redefine ou (-2)
.redefine r (-3)

.macro octave
	.redefine OCTAVE \1
	.redefine OFFSET (-$c)

	.redefine c 12*\1+0 + OFFSET
	.redefine cs 12*\1+1 + OFFSET
	.redefine d 12*\1+2 + OFFSET
	.redefine ds 12*\1+3 + OFFSET
	.redefine e 12*\1+4 + OFFSET
	.redefine f 12*\1+5 + OFFSET
	.redefine fs 12*\1+6 + OFFSET
	.redefine g 12*\1+7 + OFFSET
	.redefine gs 12*\1+8 + OFFSET
	.redefine a 12*\1+9 + OFFSET
	.redefine as 12*\1+10 + OFFSET
	.redefine b 12*\1+11 + OFFSET
.endm

.macro octaved
	octave OCTAVE-1
.endm
.macro octaveu
	octave OCTAVE+1
.endm

.macro m_soundPointer
	.db :\1Start - :b39_initSound
	.dw \1
.endm

; Byte 1: frequency
; Byte 2: length
;
; Frequencies for noise:
; 22,23,24,26,27,28,29,2a,2e,2f,30,32,52
.macro note
	.redefine offset 0
	.rept NARGS
	.if NARGS >= 1
		.if \1 == od
			octaved
			.redefine offset offset-12
			.shift
		.else
		.if \1 == ou
			octaveu
			.redefine offset offset+12
			.shift
		.endif
		.endif
	.endif

	.if NARGS >= 2
	.if \1 == r
		wait1 \2
		.shift
		.shift
	.else
	.if \1 >= 0
		.db \1+offset
		.db \2

		.shift
		.shift
	.endif
	.endif
	.endif
	.endr
.endm

; This is NOT used by the base game; it's an attempt to provide a more sane way to define music
; (multiple notes per line). Each pair of arguments is a note followed by a length. Can define
; "NOTE_END_WAIT" to set a certain amount of a note to be "rest" instead of being actually played.
.macro beat
	.redefine offset 0
	.rept NARGS
	.if NARGS >= 1
		.if \1 == od
			octaved
			.redefine offset offset-12
			.shift
		.else
		.if \1 == ou
			octaveu
			.redefine offset offset+12
			.shift
		.endif
		.endif
	.endif

	.if NARGS >= 2
	.if \1 == r
		wait1 \2*BEAT
		.shift
		.shift
	.else
	.if \1 >= 0
		.db \1+offset

		.ifndef NOTE_END_WAIT
			.define NOTE_END_WAIT 0
		.endif

		.if NOTE_END_WAIT != 0
			.db \2*BEAT - NOTE_END_WAIT
			wait1 NOTE_END_WAIT
		.else
			.db \2*BEAT
		.endif

		.shift
		.shift
	.endif
	.endif
	.endif
	.endr
.endm


; A variation of the "beat" macro that includes a common functionality of the
; volume adjustments in the music. 
;	volbeat a 2
;	
;	vol $6
;	beat a 1
;	vol $3
;	beat a 1
.macro volbeat

		.ifndef HI_VOL
			.define HI_VOL 0
		.endif	

		.ifndef LO_VOL
			.define LO_VOL 0
		.endif
			
		.ifndef NO_FIRST_VOL
			.define NO_FIRST_VOL 0
		.endif

		.ifndef REST
			.define REST 0
		.endif
		.redefine REST 0

		.ifndef CHANNEL
			.define CHANNEL 0
		.endif
		.ifndef NOTE_MID_WAIT
			.define NOTE_MID_WAIT 0
		.endif

	.redefine offset 0
	.rept NARGS
	.if NARGS >= 1
		.if \1 == od
			octaved
			.redefine offset offset-12
			.shift
		.else
		.if \1 == ou
			octaveu
			.redefine offset offset+12
			.shift
		.endif
		.endif
	.endif

	.if NARGS >= 2
	.if \1 != r
	.if \1 >= 0
		;First volume change
		.if NO_FIRST_VOL == 0
			.if CHANNEL == 4
				duty HI_VOL
			.else
				vol HI_VOL
			.endif
		.endif

		;First note
		.db \1+offset

		.if NOTE_MID_WAIT != 0
			.db \2*BEAT*(1-LO_VOL_RATIO) - NOTE_MID_WAIT
			wait1 NOTE_MID_WAIT
		.else
			.db \2*BEAT*(1-LO_VOL_RATIO)
		.endif

		;Second volume change
		.if CHANNEL == 4
			duty LO_VOL
		.else
			vol LO_VOL
		.endif

		;Second note
		.db \1+offset

		.ifndef NOTE_END_WAIT
			.define NOTE_END_WAIT 0
		.endif

		.if NOTE_END_WAIT != 0
			.db \2*BEAT*LO_VOL_RATIO - (NOTE_END_WAIT + REST)
			wait1 NOTE_END_WAIT + REST
		.else
			.db \2*BEAT*LO_VOL_RATIO
		.endif
		.shift
		.shift
	.else
		.if NOTE_END_WAIT != 0
			.define REST \2
			.shift
			.shift	
		.else
			wait1 \2*BEAT
			.shift
			.shift
		.endif
	.endif
	.endif
	.endif
	.endr
.endm


;; Used in Tarm Ruins music
;	tarmbeat a 24 b 24 c 24
;
;	vol HI_VOL
;	beat a 12
;	wait1 12
;
;	beat b 12
;	vol LO_VOL
;	beat a 12
;
;	vol HI_VOL
;	beat c 12
;	vol LO_VOL
;	beat b 12
;
;
.macro tarmbeat
	.redefine offset 0
	.rept NARGS
	.if NARGS >= 1
		.if \1 == od
			octaved
			.redefine offset offset-12
			.shift
		.else
		.if \1 == ou
			octaveu
			.redefine offset offset+12
			.shift
		.endif
		.endif
	.endif

	.if NARGS >= 2
	.if \1 == r
		wait1 \2*BEAT
		.shift
		.shift
	.else
	.if \1 >= 0


		.ifndef HI_VOL
			.define HI_VOL 0
		.endif	

		.ifndef LO_VOL
			.define LO_VOL 0
		.endif
			
		.ifndef NO_FIRST_VOL
			.define NO_FIRST_VOL 0
		.endif	

		.ifndef CHANNEL
			.define CHANNEL 0
		.endif
			
		.ifndef TARM_NOTE
			.define TARM_NOTE 0
		.endif

		;First volume change
		.if NO_FIRST_VOL == 0
			.if CHANNEL == 4
				duty HI_VOL
			.else
				vol HI_VOL
			.endif
		.endif
		;First note
		.db \1+offset
		.db \2*BEAT*(1-LO_VOL_RATIO)

		;Second volume change
		.if TARM_NOTE != 0
			.if CHANNEL == 4
				duty LO_VOL
			.else
				vol LO_VOL
			.endif

		;Second note
			.db TARM_NOTE
			.db \2*BEAT*LO_VOL_RATIO
			.redefine NO_FIRST_VOL 0
		.else
			wait1 \2*BEAT*LO_VOL_RATIO
			.redefine NO_FIRST_VOL 1
		.endif

			.redefine TARM_NOTE \1+offset


		.shift
		.shift
	.endif
	.endif
	.endif
	.endr
.endm

; 60/61: set wait counters.

.macro wait1
	.db $60 \1
.endm

.macro wait2
	.db $61 \1
.endm

; d0-df: set volume
.macro vol
	.if \1 > $f
		.fail
	.endif
	.db $d0 | \1
.endm

; e0-e7: set envelopes
.macro env
	.if \1 > $7
		.fail
	.endif
	.db $e0 | \1
	.db \2
.endm

; e8-ef: same as e0-e7

; f0: unknown
; Sometimes sets wc039
.macro cmdf0
	.db $f0 \1
.endm

; f1-f3: does nothing
.macro gotoCond
	.db $f1
	.db \1
	.dw \2
.endm
.macro cmdf2
	.db $f2
.endm
; increases wCoda
.macro incCoda
	.db $f3
.endm

; f4-f5: duplicates of ff?
; sets Coda back to zero
.macro resetCoda
	.db $f4
.endm
.macro cmdf5
	.db $f5
.endm

; f6: sets wChannelDutyCycles
; Channels other than 4 and 5 are modulated by $03
.macro duty
	.db $f6 \1
.endm

; f7: duplicate of ff?

; f8: sets wc03f (for channels 0-5)
.macro cmdf8
	.db $f8 \1
.endm

; f9: sets wChannelVibratos.
; Upper nibble is time to wait until vibrato starts.
; Lower nibble is intensity of vibrato.
.macro vibrato
	.db $f9 \1
.endm

; fa-fc: duplicates of ff?

; fd: sets wc033
; Shifts pitch
.macro cmdfd
	.db $fd \1
.endm

; fe: jump to the given address
.macro goto
	.db $fe
	.dw \1
.endm

; ff: might mute the channel?
.macro cmdff
	.db $ff
.endm