lightWorldDungeonStart:
; BPM = 150, Quarter = 24
lightWorldDungeonChannel1:
	setCoda $00
	.redefine BEAT 1
lightWorldDungeonChannel1Measure1:
; Measure 1-4,5-8
	octave 2
	vol $0
	beat r 30 
	vol $4
	duty $03
	beat g 54 ou fs 255 fs 45

	setCoda $01							; 2 bytes
	gotoCond $01 lightWorldDungeonChannel1Measure1		; 4 bytes

; Measure 9-12
	octave 3
	beat r 30 e 54 a 24 gs 255
; Measure 13
	beat r 33 fs 48 od a 96
; Measure 14
	beat ou e 48
; Measure 15
	beat od g 84
; Measure 16
	beat fs 24 b 24 ou e 24 a 12
; Measures 17-18
	beat ou ds 96 r 96

	cmdff

lightWorldDungeonChannel1Measure19:
; Measure 19







lightWorldDungeonChannel0:
	setCoda $00
	.redefine BEAT 1
lightWorldDungeonChannel0Measure1:
	vol $5
	octave 3
	duty $03
; Measure 1
	beat cs 60 od fs 48
; Measure 2-4
	beat ou c 255 c 21
; Measure 5
	beat cs 60 od fs 48
; Measure 6-8
	beat ou c 24 d 252
; Measure 9
	beat ds 60 f 72
; Measure 10-12
	beat c 24 od b 228
; Measures 13-14
	beat ou g 48 od as 96 ou f 48
; Measure 15
	beat od gs 96
; Measure 16
	beat g 24 ou c 24 f 24 as 24
; Measures 17-18
	beat ds 96 r 96

lightWorldDungeonChannel0Measure19:
; Measure 19


	cmdff

lightWorldDungeonChannel4:
	cmdff

lightWorldDungeonChannel6:
	cmdff
