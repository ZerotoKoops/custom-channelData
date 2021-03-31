fairyFountainStart:
; BPM = 75, B = 48, M = 192
fairyFountainChannel1:
    cmdff

fairyFountainChannel0:
.redefine BEAT 1
; Measure 1
    octave 3
    duty $02
    beat e 34 g 32 b 30
	octaveu
    beat d 28 e 28 g 28

fairyFountainChannel0Measure2Reset:
    resetCoda
fairyFountainChannel0Measure2:
    incCoda
.redefine BEAT 12
.redefine HI_VOL $5
.redefine LO_VOL $2
.redefine CHANNEL 0
.redefine LO_VOL_RATIO 1/2
; Measure 2,6
    octave 6
    tarmbeat a 1 d 1 od as 1 g 1
    octaveu
    tarmbeat g 1 d 1 od as 1 g 1
    octaveu
    tarmbeat fs 1 d 1 od as 1 g 1
    octaveu
    tarmbeat g 1 d 1 od as 1 g 1

	gotoCond 2 fairyFountainChannel0Measure7
; Measure 3
    octaveu
    tarmbeat g 1 c 1 od a 1 f 1
    octaveu
    tarmbeat f 1 c 1 od a 1 f 1
    octaveu
    tarmbeat e 1 c 1 od a 1 f 1
    octaveu
    tarmbeat f 1 c 1 od a 1 f 1
; Measure 4
    octaveu
    tarmbeat f 1 od as 1 g 1 e 1	
    octaveu
    tarmbeat e 1 od as 1 g 1 e 1
    octaveu
    tarmbeat ds 1 od as 1 g 1 e 1
    octaveu
    tarmbeat e 1 od as 1 g 1 e 1
; Measure 5
    octaveu
    tarmbeat e 1 od a 1 f 1 d 1
    octaveu
    tarmbeat d 1 od a 1 f 1 d 1
    octaveu
    tarmbeat cs 1 od a 1 f 1 d 1
    octaveu
    tarmbeat d 1 od a 1 f 1 d 1

	goto fairyFountainChannel0Measure2

fairyFountainChannel0Measure7:
; Measure 7
    octaveu
    tarmbeat as 1 ds 1 c 1 od fs 1
    octaveu
    tarmbeat a 1 ds 1 c 1 od fs 1
    octaveu
    tarmbeat gs 1 ds 1 c 1 od fs 1
    octaveu
    tarmbeat a 1 ds 1 c 1 od fs 1
; Measure 8
    octaveu
    tarmbeat ou c 1 od d 1 od as 1 g 1
    octaveu
    tarmbeat as 1 d 1 od as 1 g 1
    octaveu
    tarmbeat a 1 d 1 od as 1 g 1
    octaveu
    tarmbeat as 1 d 1 od as 1 g 1
; Measure 9
    octaveu
    tarmbeat a 1 od as 1 g 1 e 1
    octaveu
    tarmbeat g 1 od as 1 g 1 e 1
    octaveu
    tarmbeat f 1 od as 1 g 1 e 1
    octaveu
    tarmbeat e 1 od as 1 g 1 e 1


	goto fairyFountainChannel0Measure2Reset
    cmdff

fairyFountainChannel4:
fairyFountainChannel6:
    cmdff