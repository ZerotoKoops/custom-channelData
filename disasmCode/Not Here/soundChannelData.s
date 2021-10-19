sounddeStart:
sounddeChannel0:
sounddeChannel1:
sounddeChannel4:
sounddeChannel6:


sound99Start:
sound99Channel2:

sounda1Start:
sounda1Channel2:
sounda1Channel7:

sounda4Start:
sounda4Channel2:
sounda4Channel7:

soundaaStart:
soundaaChannel7:

soundabStart:
soundabChannel2:
soundabChannel7:

sound8aStart:
sound8aChannel2:

sound88Start:
sound88Channel2:

sound97Start:
;purposely blank
sound97Channel2:
	
sound98Start:
sound98Channel2:

soundb1Start:
soundb1Channel7:

soundb3Start:
soundb3Channel2:
soundb3Channel7:

soundbeStart:
soundbeChannel2:

soundacStart:
soundacChannel2:
soundacChannel7:

soundbaStart:
soundbaChannel7:

soundb4Start:
soundb4Channel7:

sound9cStart:

sound9cChannel2:

sounda0Start:
sounda0Channel2:

soundb2Start:
soundb2Channel2:
soundb2Channel7:

soundbbStart:
soundbbChannel7:

soundb7Start:
;purposely blank
soundb7Channel2:
soundb7Channel7:

sounda8Start:
sounda8Channel2:
sounda8Channel7:

soundb8Start:
soundb8Channel2:
soundb8Channel7:

sound95Start:
sound95Channel2:

soundb9Start:
soundb9Channel7:

soundbcStart:
soundbcChannel7:

soundbdStart:
;purposely blank
soundbdChannel2:
	cmdff

;mapleMinigame
mapleMinigameStart:
; sound2c
; BPM = 180 B = 20
mapleMinigameChannel1:
    .redefine BEAT 1
mapleMinigameChannel1Measure1Reset:
    duty $01
    resetCoda
mapleMinigameChannel1Measure1:
    incCoda
; Measure 1,3,5
    vol $6
    octave 5
    beat g 15 e 5 c 5 r 2
    vol $3
    beat c 3
    vol $6

    gotoCond 3 mapleMinigameChannel1Measure3b

mapleMinigameChannel1Measure1b:
    beat c 15
    vol $3
    beat c 5
    vol $6
    beat g 10 e 10 c 10

mapleMinigameChannel1Measure2:
    incCoda
; Measure 2,6    
    beat fs 15 ds 5 od b 5 r 2
    vol $3
    beat b 3
    vol $6
    beat b 15
    vol $3
    beat b 5
    vol $6
    beat ou fs 10 ds 10 od b 5 r 2
    vol $3
    beat b 3
    
    gotoCond 6 mapleMinigameChannel1Measure7
    goto mapleMinigameChannel1Measure1

mapleMinigameChannel1Measure3b:
    incCoda
; Measure 3b,5b
    octave 5
    beat c 10
    vol $3
    beat c 10
    vol $6
    beat g 10 e 10 c 5 r 2
    vol $3
    beat c 3
    vol $6

    gotoCond 5 mapleMinigameChannel1Measure2
; Measure 4
    beat od b 5 ou c 5 cs 5 r 2
    vol $3
    beat cs 3

    vol $6
    beat cs 5 ds 5 e 5 r 2
    vol $3
    beat e 3

    vol $6
    beat ds 5 e 5 f 5 r 2
    vol $3
    beat f 3

    vol $6
    beat e 5 f 5 fs 5 r 2
    vol $3
    beat fs 3

    goto mapleMinigameChannel1Measure1

mapleMinigameChannel1Measure7:
; Measure 7
    vol $6
    octave 5
    beat g 10 e 5 r 2
    vol $3
    beat e 5 r 18
    vol $6
    beat a 10 fs 5 r 2
    vol $3
    beat fs 5 r 18
; Measure 8
    vol $6
    beat as 5 g 5 b 5 gs 5
    beat ou c 5 od a 5 ou cs 5 od as 5
    beat ou d 5 od b 5 ou ds 5 c 5
    beat e 5 cs 5 f 5 d 5

mapleMinigameChannel1Measure9:
;   Coda = 6
    incCoda
    octave 5
; Measure 9,11,13
    beat a 15 fs 5 d 5 r 2
    vol $3
    beat d 3
    vol $6

    gotoCond 8 mapleMinigameChannel1Measure11b
    gotoCond 9 mapleMinigameChannel1Measure13b

    beat d 15
    vol $3
    beat d 5
    vol $6
    beat d 10 fs 10 a 10
; Measure 10
    beat gs 15 f 5 cs 5 r 2
    vol $3
    beat cs 3
    vol $6
    beat cs 10
    vol $3
    beat cs 10
    vol $6
    beat cs 10 f 10 gs 10

    goto mapleMinigameChannel1Measure9

mapleMinigameChannel1Measure11b:
    octave 5
; Measure 11b
    beat d 20 fs 10 a 10 fs 5 r 2
    vol $3
    beat fs 3
; Measure 12
    vol $6
    beat gs 5 f 5 cs 5 r 2
    vol $3
    beat cs 3
    vol $6
    beat a 5 fs 5 d 5 r 2
    vol $3
    beat d 3
    vol $6
    beat as 5 g 5 ds 5 r 2
    vol $3
    beat ds 3
    vol $6
    beat b 5 gs 5 e 5 r 2
    vol $3
    beat e 3
    vol $6

    goto mapleMinigameChannel1Measure9

mapleMinigameChannel1Measure13b:
; Measure 13b
    octave 6
    beat d 20 cs 5 d 5 e 5 r 2
    vol $3
    beat e 3
    vol $6
    beat d 5 r 2
    vol $3
    beat d 3
; Measure 14
    vol $6
    beat cs 15 od gs 5 f 5 r 2 
    vol $3
    beat f 3
    vol $6
    beat cs 22 r 3 ou cs 2
    vol $3
    beat cs 3
    vol $6
    beat cs 5 c 5 cs 5 d 5
; Measure 15
    beat ds 5 r 2
    vol $3
    beat ds 3

    vol $6
    beat ds 5 r 2
    vol $3
    beat ds 5 r 18

    vol $6
    beat e 5 r 2
    vol $3
    beat e 3

    vol $6
    beat e 5 r 2
    vol $3
    beat e 5 r 18
; Measure 16
    vol $6
    beat gs 5 r 2
    vol $3
    beat gs 3
    
    vol $6
    beat g 5 r 2
    vol $3
    beat g 3

    vol $6
    beat fs 5 r 2
    vol $3
    beat fs 3

    vol $6
    beat f 5 r 2
    vol $3
    beat f 3

    vol $6
    beat e 5 r 2
    vol $3
    beat e 3

    vol $6
    beat ds 5 r 2
    vol $3
    beat ds 3

    vol $6
    beat d 5 r 2
    vol $3
    beat d 3

    vol $6
    beat cs 5 r 2
    vol $3
    beat cs 3

    goto mapleMinigameChannel1Measure1Reset
    cmdff

mapleMinigameChannel0:
    .redefine BEAT 1
    duty $01
mapleMinigameChannel0Measure1Reset:
    resetCoda
mapleMinigameChannel0Measure1:
    incCoda
; Measure 1,3,5
    vol $6
    .redefine NOTE_END_WAIT 5
    octave 4
.rept 2
    beat e 10
.endr

    gotoCond 4 mapleMinigameChannel0Measure7b

    beat e 10
    beat e 20
.rept 3
    beat e 10
.endr
; Measure 2,6
    beat ds 10

     gotoCond 2 mapleMinigameChannel0Measure4b

.rept 2
    beat ds 10
.endr
    beat ds 20
.rept 3
    beat ds 10
.endr

    goto mapleMinigameChannel0Measure1

mapleMinigameChannel0Measure4b:
; Measure 4b
    .redefine NOTE_END_WAIT 0
    octave 4
    beat g 5
    vol $3
    beat ds 5

    vol $6
    beat fs 5
    vol $3
    beat g 5
    vol $6
    beat f 5
    vol $3
    beat fs 5

    vol $6
    beat e 5
    vol $3
    beat f 5
    vol $6
    beat ds 5
    vol $3
    beat e 5

    vol $6
    beat d 5
    vol $3
    beat ds 5
    vol $6
    beat cs 5
    vol $3
    beat d 5

    goto mapleMinigameChannel0Measure1

mapleMinigameChannel0Measure7b:
; Measure 7b
    .redefine NOTE_END_WAIT 5
    vol $3
    octave 4
    beat e 10
    vol $1
    beat e 10
    vol $6
.rept 2
    beat ds 10
.endr
    vol $3
    beat ds 10
    vol $1
    beat ds 10
; Measure 8
    vol $6
    beat e 10
    .redefine NOTE_END_WAIT 0
    beat e 5
    vol $3
    beat e 5

    vol $6
    beat f 5
    vol $3
    beat e 5
    vol $6
    beat f 5
    vol $3
    beat f 5

    vol $6
    beat fs 5
    vol $3
    beat f 5
    vol $6
    beat fs 5
    vol $3
    beat fs 5

    vol $6
    beat g 5
    vol $3
    beat fs 5
    vol $6
    beat g 5
    vol $3
    beat g 5 

mapleMinigameChannel0Measure9:
; Coda = 4
    incCoda
; Measure 9,11,13
    vol $6
    .redefine NOTE_END_WAIT 5
    octave 4
.rept 2
    beat fs 10
.endr

    gotoCond 8 mapleMinigameChannel0Measure15b

    beat fs 10
    beat fs 20
.rept 3
    beat fs 10
.endr
; Measure 10,14
    beat f 10

     gotoCond 6 mapleMinigameChannel0Measure12b

.rept 2
    beat f 10
.endr
    beat f 20
.rept 3
    beat f 10
.endr

    goto mapleMinigameChannel0Measure9

mapleMinigameChannel0Measure12b:
; Measure 12b
    .redefine NOTE_END_WAIT 0
    octave 4
    beat a 5
    vol $3
    beat f 5

    vol $6
    beat gs 5
    vol $3
    beat a 5
    vol $6
    beat g 5
    vol $3
    beat gs 5

    vol $6
    beat fs 5
    vol $3
    beat g 5
    vol $6
    beat f 5
    vol $3
    beat fs 5

    vol $6
    beat e 5
    vol $3
    beat f 5
    vol $6
    beat ds 5
    vol $3
    beat e 5

    goto mapleMinigameChannel0Measure9

mapleMinigameChannel0Measure15b:
; Measure 15b
    .redefine NOTE_END_WAIT 5
    vol $3
    octave 4
    beat fs 10
    vol $6
    beat fs 10
.rept 2
    beat g 10
.endr
    vol $3
    beat g 10
    .redefine NOTE_END_WAIT 0
    vol $6
    beat g 5 e 5
; Measure 16
    beat f 5
    vol $3
    beat f 5
    vol $6
    beat f 5
    vol $3
    beat f 5

    vol $6
    octave 3
    beat a 5 gs 5 g 5 fs 5
    beat f 5 e 5 ds 5 d 5
    beat cs 5 c 5 od b 5 as 5

    goto mapleMinigameChannel0Measure1Reset
    cmdff

mapleMinigameChannel4:
    .redefine BEAT 1
mapleMinigameChannel4Measure1Reset:
    resetCoda
mapleMinigameChannel4Measure1:
    incCoda
; Measure 1,3,5b
    octave 3
    duty $0e
	beat cs 5
	duty $0f
	beat cs 5
    octaved
	duty $0e
	beat g 5
	duty $0f
	beat g 5

    gotoCond 4 mapleMinigameChannel4Measure2
    gotoCond 12 mapleMinigameChannel4Measure4
    gotoCond 16 mapleMinigameChannel4Measure2
    goto mapleMinigameChannel4Measure1

mapleMinigameChannel4Measure2:
    incCoda
; Measure 2,6
    octave 3
    duty $0e
	beat c 5
	duty $0f
	beat c 5
    octaved
	duty $0e
	beat fs 5
	duty $0f
	beat fs 5  

    gotoCond 8 mapleMinigameChannel4Measure1
    gotoCond 20 mapleMinigameChannel4Measure7
    goto mapleMinigameChannel4Measure2

mapleMinigameChannel4Measure4:
; Measure 4
    octave 3
    duty $0e
	beat c 5
	duty $0f
	beat c 5
  	duty $0e  
	beat ds 5
	duty $0f
	beat ds 5

    duty $0e
	beat d 5
	duty $0f
	beat d 5
  	duty $0e  
	beat cs 5
	duty $0f
	beat cs 5

    duty $0e
	beat c 5
	duty $0f
	beat c 5
    octaved
  	duty $0e  
	beat b 5
	duty $0f
	beat b 5

    duty $0e
    beat a 5 gs 5 g 5 fs 5

mapleMinigameChannel4Measure5:
; Coda = 12
    incCoda
; Measure 5
    octave 3
    duty $0e
	beat c 5
	duty $0f
	beat c 5
    octaved
  	duty $0e  
	beat g 5
	duty $0f
	beat g 5 

    gotoCond 13 mapleMinigameChannel4Measure5
    goto mapleMinigameChannel4Measure1

mapleMinigameChannel4Measure7:
; Coda = 20
; Measure 7
    octave 3
.rept 2
    duty $0e
	beat cs 5
	duty $0f
	beat cs 5
.endr
    beat r 20
.rept 2
    duty $0e
	beat c 5
	duty $0f
	beat c 5
.endr
    beat r 20

mapleMinigameChannel4Measure8:
; Measure 8,15
    octave 3
.rept 2
    duty $0e
	beat ds 5
	duty $0f
	beat ds 5
.endr
    beat r 20
.rept 2
    duty $0e
	beat e 5
	duty $0f
	beat e 5
.endr
    beat r 10

    gotoCond 35 mapleMinigameChannel4Measure15d

    beat r 10

mapleMinigameChannel4Measure9:
; Measure 9,11
    octave 3
    duty $0e
    beat ds 5 d 5 od a 5
    duty $0f
    beat a 5
mapleMinigameChannel4Measure9b:
; Coda = 20
    incCoda
; Measure 9b,11b
    octave 3
    duty $0e
	beat ds 5
	duty $0f
	beat ds 5
    octaved
  	duty $0e  
	beat a 5
	duty $0f
	beat a 5

    gotoCond 23 mapleMinigameChannel4Measure10
    gotoCond 29 mapleMinigameChannel4Measure12
    gotoCond 32 mapleMinigameChannel4Measure10
    goto mapleMinigameChannel4Measure9b 

mapleMinigameChannel4Measure10:
; Measure 10
    octave 3
    duty $0e
    beat d 5 cs 5 od gs 5
    duty $0f
    beat gs 5
mapleMinigameChannel4Measure10b:
; Coda = 23
    incCoda
; Measure 10b
    octave 3
    duty $0e
	beat d 5
	duty $0f
	beat d 5
    octaved
  	duty $0e  
	beat gs 5
	duty $0f
	beat gs 5

    gotoCond 26 mapleMinigameChannel4Measure9
    gotoCond 35 mapleMinigameChannel4Measure8
    goto mapleMinigameChannel4Measure10b  

mapleMinigameChannel4Measure12:
; Measure 12
    octave 3
    duty $0e
	beat d 5
	duty $0f
	beat d 5
  	duty $0e  
	beat f 5
	duty $0f
	beat f 5

    duty $0e
	beat e 5
	duty $0f
	beat e 5
  	duty $0e  
	beat ds 5
	duty $0f
	beat ds 5

    duty $0e
	beat d 5
	duty $0f
	beat d 5
  	duty $0e  
	beat cs 5
	duty $0f
	beat cs 5

    duty $0e
	beat c 5
	duty $0f
	beat c 5
    octaved
  	duty $0e  
	beat b 5
	duty $0f
	beat b 5

    goto mapleMinigameChannel4Measure9

mapleMinigameChannel4Measure15d:
; Coda = 35
; Measure 15d
    octave 3
    duty $0e
	beat e 5
	duty $0f
	beat e 5
; Measure 16
    duty $0e
	beat f 5
	duty $0f
	beat f 5
  	duty $0e  
	beat f 5
	duty $0f
	beat f 5 

    duty $0e
    beat f 5 e 5 ds 5 d 5
    beat cs 5 c 5 od b 5 as 5
    beat a 5 gs 5 g 5 fs 5

    goto mapleMinigameChannel4Measure1Reset
    cmdff

mapleMinigameChannel6:
    .redefine BEAT 1
mapleMinigameChannel6Measure1Reset:
    resetCoda
mapleMinigameChannel6Measure1:
    incCoda
; Measures 1-3
    vol $3
    beat $2a 10
    vol $2
    beat $2e 10

    gotoCond 12 mapleMinigameChannel6Measure4
    gotoCond 27 mapleMinigameChannel6Measure4
    gotoCond 42 mapleMinigameChannel6Measure4
    gotoCond 53 mapleMinigameChannel6Measure4
    goto mapleMinigameChannel6Measure1

mapleMinigameChannel6Measure4:
    incCoda
; Measure 4
    vol $3
.rept 2
    beat $2a 5
.endr
    vol $2
    beat $2e 5
    vol $3
    beat $2a 5

    gotoCond 15 mapleMinigameChannel6Measure4d
    gotoCond 30 mapleMinigameChannel6Measure4d
    gotoCond 45 mapleMinigameChannel6Measure4d
    gotoCond 58 mapleMinigameChannel6Measure16b
    goto mapleMinigameChannel6Measure4   

mapleMinigameChannel6Measure4d:
; Measure 4d
    vol $4
.rept 4
    beat $26 5
.endr

    goto mapleMinigameChannel6Measure1

mapleMinigameChannel6Measure16b:
    incCoda
; Measure 16b
    beat $2a 5

    gotoCond 70 mapleMinigameChannel6Measure1Reset
    goto mapleMinigameChannel6Measure16b
    cmdff

sound32Start:
sound32Channel1:
sound32Channel0:
sound32Channel4:
sound32Channel6:
	cmdff

essenceStart:
; sound06
; BPM = 225 B = 16
essenceChannel1:
    .redefine BEAT 1
essenceChannel1Measure1:
    vibrato $d1
;    env $0 $00
    duty $02
    vol $5
    octave 7
    beat d 2
    vol $4
    beat od b 2 g 2 f 2 d 2
    beat od b 2 a 2 f 2 d 2
    vol $3
    beat od b 2 g 2 f 1 r 1
    duty $01
    octave 4
.rept 2
    vol $6
    beat b 4 r 1
    vol $3
    beat b 3
.endr
    octaveu
    vol $6
    beat c 4 r 1
    vol $3
    beat c 3
    vol $6
    beat d 16
; Measure 2
    vol $3
    beat od b 4 ou d 4
    vol $6
    beat g 16 gs 4 a 4 as 12
    vol $3
    beat fs 4

    vol $6
    beat gs 4
    vol $3
    beat as 4

    vol $6
    beat fs 8
; Measure 3
    beat cs 4
    vol $3
    beat fs 4

    vol $6
    beat f 4
    vol $3
    beat cs 4

    vol $6
    beat ds 20 f 2 fs 2 gs 12
    vol $3
    beat ds 4

    vol $6
    beat gs 4 as 4
; Measure 4
    beat b 8 a 4
    vol $3
    beat b 4

    vol $6
    beat g 4
    vol $3
    beat a 4

    vol $6
    beat ou d 8 cs 4
    vol $3
    beat od g 4

    vol $6
    beat b 4
    vol $3
    beat ou d 4

    vol $6
    beat cs 8 od b 4
    vol $3
    beat ou cs 4

; Measure 5
    octave 5
    vol $6
    beat a 4
    vol $3
    beat b 4

    vol $6
    beat ou e 8 cs 4 od a 4
    beat gs 4 e 4 od b 4 ou cs 4
    beat ds 4 fs 4 b 4 ou cs 4
    beat ds 4 e 4
; Measure 6
    beat ds 4 e 4 ds 4 e 4 fs 39 r 1
    vibrato $01
;    env $0 $00
    vol $3
    beat fs 4 r 1
    vol $2
    beat fs 4 r 1
    vol $1
    beat fs 4

    cmdff

essenceChannel0:
    .redefine BEAT 1
essenceChannel0Measure1:
; Measure 1
    octave 3
    duty $02    ; added
    vol $1       ;$0
    beat gs 3
;   vibrato $d1
;   env $0 $00
;   duty $02
    octave 7
    vol $3
    beat d 2
    vol $2
    beat od b 2 g 2 f 2 d 2
    beat od b 2 a 2 f 2 d 2
    beat od b 2 g 1

    vol $3
    beat ou d 2 od b 2 a 2 f 2
    beat d 2
    vol $2
    beat od b 1 r 1

    duty $01
    vol $4
    beat d 12
    vol $5
    beat f 12
; Measure 2
    beat a 12
    vol $6
    beat b 12 d 12

    vol $5
    beat fs 24
    vol $6
    beat cs 24
; Measure 3
    vol $5
    beat c 32
    vol $3
    beat c 8 ds 2 g 2 ou c 2
    vol $4
    beat ds 2
; Measure 4
    vol $6
    beat ou d 4 g 4
    vol $5
    beat e 4 d 4

    vol $4
    beat od b 4
    vol $3
    beat g 4 ou b 4 g 4

    beat e 4 d 4
    vol $2
    beat od b 4 g 4

    octave 6
    vol $6
    beat e 4 od a 4 
    vol $5
    beat e 4 cs 4
; Measure 5
    vol $4
    beat od a 4
    vol $3
    beat e 4 ou ou cs 4 od a 4
    beat e 4 cs 4
    vol $2
    beat od a 4 e 4
    vol $6
    beat od fs 16
    vol $3
    beat fs 8
    vol $6
    beat b 4 ou cs4
; Measure 6
    beat ds 4 fs 4 b 4 ou cs 4
    beat ds 40 r 1
    vol $3
    beat ds 3 r 1
    vol $2
    beat ds 3 r 1
    vol $1
    beat ds 3

    cmdff

essenceChannel4:
    .redefine BEAT 1
essenceChannel4Measure1:
; Measure 1
    octave 2
    duty $0e
    beat g 96
; Measure 2c
    beat ds 32
; Measure 3
    beat f 8 fs 8 gs 48
; Measure 4
    beat e 32 fs 8 g 8 a 48
; Measure 5b
    beat b 16
    duty $0f
    beat b 8
    duty $0e
    beat fs 16
; Measure 6a
    duty $0f
    beat fs 8
    duty $0e
    beat b 38
    duty $0f
    beat b 7

essenceChannel6:
    cmdff

soundadStart:
soundadChannel2:
soundadChannel3:
soundadChannel5:
soundadChannel7:
	cmdff

sound22Channel1:
sound22Channel0:
sound22Channel4:
sound22Channel6:
	cmdff

sound1eStart:
sound1eChannel1:
sound1eChannel0:
sound1eChannel4:
sound1eChannel6:
	cmdff
; $e7f5e
; GAP

.bank $73 slot 1
.org 0

sound0eStart:
sound0eChannel1:
sound0eChannel4:
sound0eChannel6:
	cmdff

sound00Start:
sound01Start:
sound00Channel1:
sound01Channel1:
sound00Channel0:
sound01Channel0:
sound00Channel4:
sound01Channel4:
sound00Channel6:
sound01Channel6:
	cmdff

sound2dStart:
sound2dChannel1:
sound2dChannel0:
sound2dChannel4:
sound2dChannel6:
	cmdff

sound09Start:
sound09Channel1:
sound09Channel0:
sound09Channel4:
sound09Channel6:
	cmdff

caveStart:
; sound36
; 6/4
; BPM = 150 B = 24, b = 2
caveChannel1:
    .redefine BEAT 12
caveChannel1Measure1:
    octave 2
    duty $02
    vol $6
    env $0 $06
    beat b 1 ou cs 1 d 1

    env $0 $04
    beat a 1 r 3

    env $0 $05
    beat ou b 1 b 2 r 2
; Measure 2
    octave 2
    env $0 $06
    beat b 1 ou cs 1 d 1

    env $0 $04
    beat gs 1 r 3

    env $0 $05
    beat ou as 1 as 2 r 2
; Measure 3
    octave 3
    env $0 $06
    beat cs 1 ds 1 e 1

    env $0 $04
    beat b 1 r 3

    env $0 $05
    beat ou ou cs 1 cs 2 r 2
; Measure 4
    octave 3
    env $0 $06
    beat cs 1 ds 1 e 1

    env $0 $04
    beat as 1 r 3

    env $0 $05
    beat ou ou c 1 c 2 r 2
; Measure 5
; 4/4
    octave 3
    env $0 $06
    beat fs 1 gs 1 a 1

    env $0 $04
    beat ou e 1 r 3

    env $0 $05
    beat ou e 1
; Measure 6
; 4/4
    octave 3
    env $0 $06
    beat g 1 a 1 as 1

    env $0 $04
    beat ou f 1 r 3

    env $0 $05
    beat ou f 1
; Measure 7
; 9/8
    octave 3
    beat b 1 ou cs 1 d 1 ou a 1
    env $0 $04
    beat gs 1 g 1 fs 1
    env $0 $00
    vol $5
    .redefine BEAT 1
    beat f 8
; Measure 8 (+eighth triplet)
    beat r 148
    goto caveChannel1Measure1
    cmdff

caveChannel0:
    .redefine BEAT 1
caveChannel0Measure1:
; Mesaure 1
    octave 3
    duty $02
	vol $0
    beat g 22       
    vol $3
    env $0 $05
    beat od b 12 ou cs 12 d 12

    env $0 $04
    beat a 12 r 14

    vol $6
    env $0 $03
    beat ou f 12 f 24 r 46
; Measure 2b
    octave 2
    vol $3
    env $0 $05
    beat b 12 ou cs 12 d 12

    env $0 $04
    beat gs 12 r 14

    vol $6
    env $0 $03
    beat ou e 12 e 24 r 46
; Measure 3b
    octave 3
    vol $3
    env $0 $05
    beat cs 12 ds 12 e 12

    env $0 $04
    beat b 12 r 14

    vol $6
    env $0 $03
    beat ou g 12 g 24 r 46
; Measure 4b
    octave 3
    vol $3
    env $0 $05
    beat cs 12 ds 12 e 12

    env $0 $04
    beat as 12 r 14

    vol $6
    env $0 $03
    beat ou fs 12 fs 24 r 46
; Measure 5b
; 4/4
    octave 3
    vol $3
    env $0 $05
    beat fs 12 gs 12 a 12

    env $0 $04
    beat ou e 12 r 14

    vol $6
    env $0 $03
    beat as 12
; Measure 6 
; 4/4
    beat r 22
    octave 3
    vol $3
    env $0 $05
    beat g 12 a 12 as 12

    env $0 $04
    beat ou f 12 r 14

    vol $6
    env $0 $03
    beat b 12
; Measure 7
; 9/8
    beat r 22
    octave 3
    vol $3
    env $0 $04
    beat b 12 ou cs 12 d 2

    vol $6
    env $0 $04
    beat ou f 12 e 12 ds 12

    env $0 $00
    vol $5
    beat d 8
; Measure 8
; 7/4 @ 180 BPM
    beat r 148
	goto caveChannel0Measure1

caveChannel4:
caveChannel6:
	cmdff

sound10Start:
sound10Channel1:
sound10Channel0:
sound10Channel4:
sound10Channel6:
	cmdff

sound74Start:
sound74Channel7:

sound73Start:
sound73Channel7:

sound54Start:
sound54Channel2:
sound54Channel3:

sound55Start:
sound55Channel2:
sound55Channel3:

sound5cStart:
sound5cChannel2:

sound5dStart:
sound5dChannel2:

sound64Start:
sound64Channel5:

sound65Start:
sound65Channel5:

sound63Start:
sound63Channel2:

sound6fStart:
sound6fChannel7:

sound70Start:
sound70Channel2:
sound70Channel7:

sound71Start:
sound71Channel7:

sound72Start:
sound72Channel7:

sound68Start:
sound68Channel2:

sound80Start:
sound80Channel7:

sound81Start:
sound81Channel2:
sound81Channel7:

sound82Start:
sound82Channel2:
sound82Channel7:

sound7bStart:
sound7bChannel2:

sound7eStart:
sound7eChannel2:

sound7cStart:
sound7cChannel2:

sound69Start:
sound69Channel2:

sound67Start:
sound67Channel2:

soundd2Start:
soundd2Channel7:

soundd3Start:
soundd3Channel7:

soundd0Start:
soundd0Channel2:
soundd0Channel7:

sound83Start:
sound83Channel2:

sound84Start:
sound84Channel2:

sound85Start:
sound85Channel2:

sound86Start:
; purposely blank
sound86Channel2:

sound8dStart:
sound8dChannel2:

soundd5Start:
; purposely blank
soundd5Channel2:

soundc0Start:
soundc0Channel2:

soundbfStart:
soundbfChannel2:

sound92Start:
; purposely blank
sound92Channel2:
	cmdff

sound9dStart:
sound9dChannel3:
sound9dChannel2:
sound9dChannel5:
sound9dChannel7:

sound9eStart:
sound9eChannel3:
sound9eChannel2:
sound9eChannel5:
sound9eChannel7:

sound9fStart:
sound9fChannel3:
sound9fChannel2:
sound9fChannel5:
sound9fChannel7:

sound4aStart:
sound4aChannel1:
sound4aChannel0:
sound4aChannel4:
sound4aChannel6:

sound33Start:
sound33Channel1:
sound33Channel0:
sound33Channel4:
sound33Channel6:

soundceStart:
soundceChannel2:
soundceChannel5:
soundceChannel7:

soundc1Start:
soundc1Channel2:

soundcfStart:
; purposely blank
soundcfChannel2:

soundc5Start:
soundc5Channel5:

soundc8Start:
soundc8Channel2:
soundc8Channel7:

soundc6Start:
soundc6Channel2:

soundc2Start:
soundc2Channel7:

soundc3Start:
soundc3Channel5:

soundc9Start:
soundc9Channel2:

sounda9Start:
sounda9Channel7:

sound7aStart:
; purposely blank
sound7aChannel2:

sound8eStart:
sound8eChannel2:

sound7dStart:
sound7dChannel2:
sound7dChannel7:

sound7fStart:
sound7fChannel2:

soundb6Start:
soundb6Channel2:

soundb5Start:
soundb5Channel2:

soundc4Start:
soundc4Channel5:

soundccStart:
soundccChannel2:

soundcdStart:
soundcdChannel2:
soundcdChannel3:
soundcdChannel7:

sound5eStart:
sound5eChannel2:

sound6aStart:
sound6aChannel7:

sound76Start:
sound76Channel2:
sound76Channel7:

sound75Start:
sound75Channel7:

soundd1Start:
soundd1Channel2:
soundd1Channel3:
soundd1Channel5:
soundd1Channel7:

soundd4Start:
soundd4Channel2:

soundc7Start:
soundc7Channel2:

sound96Start:
sound96Channel2:

sound9aStart:
sound9aChannel2:

sound9bStart:
sound9bChannel2:

sounda6Start:
sounda6Channel7:
	cmdff
; $ebffe
; GAP
.bank $74 slot 1
.org 0


sound02Start:
sound02Channel1:
sound02Channel0:
sound02Channel4:
sound02Channel6:
	cmdff

sound11Start:
sound11Channel1:
sound11Channel0:
sound11Channel4:
sound11Channel6:
	cmdff

sound0fStart:
sound0fChannel1:
sound0fChannel0:
sound0fChannel4:
sound0fChannel6:
	cmdff

;sound03
sound03Start:
sound03Channel1:
sound03Channel0:
sound03Channel4:
sound03Channel6:
	cmdff

sound0dStart:
sound0dChannel1:
sound0dChannel0:
sound0dChannel4:
sound0dChannel6:
	cmdff

sound34Start:
sound34Channel1:
sound34Channel0:
sound34Channel4:
sound34Channel6:
	cmdff


; $ee3c1
; @addr{ee3c1}
overworldPastStart:
; sound04
; BPM = 128.57 B = 28, M = 112
overworldPastChannel1:
.redefine BEAT 7        ;sixteenth
.redefine CHANNEL 1
.redefine HI_VOL $5
.redefine LO_VOL $3
.redefine LO_VOL_RATIO 0.5

overworldPastChannel1Measure1Reset:
    resetCoda
overworldPastChannel1Measure1:
    incCoda

	vibrato $e1
	env $0 $00
;	cmdf2       ;useless
	duty $01

;Coda 1,2
    octave 4
; Measure 1,9  
    volbeat a 4 e 4 r 3

    vol $5
.redefine NOTE_END_WAIT 4   
    beat a 1
.redefine NOTE_END_WAIT 2
    beat a 1 b 1 ou cs 1 d 1
; Measure 2,10
.redefine NOTE_END_WAIT 0
    beat e 8
    vibrato $01

.redefine BEAT 1        ;free
    vol $3
    beat e 14 r 4

    vibrato $e1
    vol $5
;e 10 e 9 f 9 g 10          triplet
    beat e 6 r 4                         
    beat e 5 r 4 f 6 r 3 g 6 r 4         
; Measure 3,11
.redefine NOTE_END_WAIT 0   
    beat a 56

    vibrato $01
    vol $3
    beat a 14 r 4

    vibrato $e1
    vol $5
;a 10 a 9 g 9 f 10          triplet
    beat a 6 r 4
    beat a 5 r 4 g 6 r 3 f 6 r 4

    gotoCond 2 overworldPastChannel1Measure12
; Measure 4
.redefine NOTE_END_WAIT 5  
    beat g 14

.redefine NOTE_END_WAIT 0 
    vol $3
    beat g 3 r 1
    vol $5
    beat f 10 e 28

    vibrato $01
    vol $3
    beat e 28

    vibrato $e1
    vol $5
    beat e 9 f 9 e 10       ;triplet

overworldPastChannel1Measure5:
;Coda 1,2
; Measure 5,13
.redefine BEAT 7        ;sixteenth
.redefine NO_FIRST_VOL 1
    volbeat d 2

    vol $5
    beat d 1 e 1 f 4
    vibrato $01
    vol $3
    beat f 4

    vibrato $e1
    vol $5
    beat e 2 d 2

    gotoCond 2 overworldPastChannel1Measure14
; Measure 6
    volbeat c 2

    vol $5
    beat c 1 d 1 e 4
    vibrato $01
    vol $3
    beat e 4

    vibrato $e1
    vol $5
    beat d 2 c 2
; Measure 7
    octaved
    volbeat b 2

    vol $5
    beat b 1 ou cs 1 ds 4
    vibrato $01
    vol $3
    beat ds 4

    vibrato $e1
    vol $5
    beat fs 4
; Measure 8
    beat e 2

    octaved
.redefine BEAT 1        ;free
;e 3 e 6 e 5       sums to 1 eigth note
    beat e 1 r 2 e 1 r 5 e 1 r 4        
;fs 9 fs 9 fs 10        triplet
    beat fs 5 r 4 fs 6 r 3 fs 6 r 4

.redefine BEAT 7        ;sixteenth
    beat gs 4
    vibrato $01
    vol $3
    beat gs 4

    goto overworldPastChannel1Measure1

overworldPastChannel1Measure12:
;Coda 2
    octave 5
    .redefine BEAT 1
; Measure 12        Just slightly different from Measure 4
    beat g 7 r 3
    vol $3
    beat g 7 r 1

    vol $5
    beat f 10        ;g 10 g 8 f 10     ;triplet
.redefine NOTE_END_WAIT 14
    volbeat e 56

.redefine NOTE_END_WAIT 0
    vol $5
    beat e 9 f 9 e 10       ;triplet

    goto overworldPastChannel1Measure5

overworldPastChannel1Measure14:
    octave 5
; Measure 14
    beat c 9 od b 9 ou c 10     ;triplet
    beat d 9 c 9 d 10           ;triplet

    volbeat e 14 r 4

    vol $5
    beat e 4 r 6            ;3rd part of triple
    beat e 9 d 9 c 10       ;triplet
; Measure 15
    .redefine BEAT 7        ;sixteenth
    beat e 8 ou e 8
; Measure 16
    octaved
    beat a 10 r 2

.redefine BEAT 1    ;free
.redefine LO_VOL_RATIO 2/3
.redefine NOTE_END_WAIT 2
    volbeat e 9 c 9
.redefine LO_VOL_RATIO 3/5
.redefine NOTE_END_WAIT 3
    octaved
    volbeat a 10

    goto overworldPastChannel1Measure1Reset
    cmdff

overworldPastChannel0:

.redefine BEAT 1        ;free
.redefine CHANNEL 0
.redefine HI_VOL $5
.redefine LO_VOL $3
.redefine LO_VOL_RATIO 1/2

overworldPastChannel0Measure1Reset:
    resetCoda
overworldPastChannel0Measure1:
    incCoda

    vibrato $e1
	env $0 $00
;	cmdf2       ;useless
	duty $01

    octave 4
; Measure 1
    volbeat cs 28

    vol $5
    beat d 9 cs 9 od b 10

.redefine LO_VOL_RATIO 1/3
	octaveu
    volbeat cs 21

    vol $5
    beat cs 7
.redefine NOTE_END_WAIT 2
    beat cs 7 d 7 e 7 fs 7
; Measure 2
.redefine NOTE_END_WAIT 0
    beat g 21
.redefine NOTE_END_WAIT 2
    beat a 7 a 7 b 7 ou cs 7 d 7

    gotoCond 2 overworldPastChannel0Measure10c

.redefine NOTE_END_WAIT 0
;e 10 e 11 e 7
    beat e 7 r 3
    vol $3
    beat e 7 r 4
    vol $2
    beat e 7        

overworldPastChannel0Measure2d:

    octaved
    vol $5
    beat g 9 a 9 b 10
; Measure 3
; c 18 f 10         triplet
    octaveu
    beat c 18 od f 6 r 4
.redefine NOTE_END_WAIT 2
    beat f 7 g 7 a 7 b 7
.redefine NOTE_END_WAIT 0
;               c 14 c 4 c 10      wonky triplet
    octaveu
    beat c 7
    
    gotoCond 2 overworldPastChannel0Measure11c

    beat r 7
    vol $3
    beat c 3 r 1
overworldPastChannel0Measure3d:
    vol $5
    beat c 6 r 4  
;               c 9 b 9 a 10       triplet    
    beat c 5 r 4 od b 6 r 3 a 6 r 4     
; Measure 4
;               c 10 c 8 g 10  weird triplet
    octaveu
    beat c 7 r 3
    vol $3
    beat c 7 r 1
    vol $5
    octaved
    beat g 6 r 4            
;               g 9 g 9 f 10
    beat g 5 r 4 g 6 r 3 f 6 r 4        
;               g 10 g 8 g 10
    beat g 5 r 5
    vol $3
    beat g 6 r 2
    vol $5
    beat g 6 r 4                        
;               g 9 f 9 g 10
    beat g 5 r 4 f 6 r 3 g 6 r 4        
; Measure 5
    beat f 11 r 3 f 7 e 7
    beat f 11 r 3 f 7 g 7
    beat a 28 g 14 f 14

    gotoCond 2 overworldPastChannel0Measure14
; Measure 6
    beat e 11 r 3 e 7 d 7
    beat e 11 r 3 e 7 f 7
    beat g 28 f 14 e 14
; Measure 7
    beat ds 21 r 7 ds 7 r 3
    vol $3
    beat ds 4

    vol $5
    beat ds 7 e 7 fs 7 r 3
    vol $3
    beat fs 4

    vol $5
    beat fs 7 g 7
    beat a 7 b 7 ou cs 7 d 7
; Measure 8
    octaved
    beat b 28
;        d 9 d 9 d 10
    beat d 5 r 4 d 6 r 3 d 6 r 4
    beat e 28
    vibrato $01
    vol $3
    beat e 28

    goto overworldPastChannel0Measure1

overworldPastChannel0Measure10c:
    octave 5
; Measure 10c
    beat e 28
	vol $5

    goto overworldPastChannel0Measure2d

overworldPastChannel0Measure11c:
    octave 5
; Measure 11c
    beat r 3
    vol $3
    beat c 7 r 1

    goto overworldPastChannel0Measure3d

overworldPastChannel0Measure14:
.redefine BEAT 7        ;sixteenth
    octave 3
; Measure 14
    beat a 4 gs 4 g 8
; Measure 15
    beat fs 4 d 4 e 3 r 1
.redefine BEAT 1
;        e 9 ou e 9 d 10
    vol $8
    beat e 4 r 5 ou e 5 r 4 d 5 r 5
; Measure 16
;        c 9 od b 9 a 10
    beat c 4 r 5 od b 5 r 4 a 5 r 5
;        b 10 b 11 b 7
    beat b 4 r 6
    vol $5
    beat b 5 r 6
    vol $3
    beat b 4 r 3
;
    vol $8
    beat a 4 r 6
    vol $5
    beat a 5 r 6
    vol $3
    beat a 4 r 31   ;3+28

    goto overworldPastChannel0Measure1Reset
    cmdff

overworldPastChannel4:
.redefine BEAT 7        ;sixteenth
.redefine CHANNEL 4
.redefine HI_VOL $0e
.redefine LO_VOL $0f
.redefine LO_VOL_RATIO 6/7
.redefine NO_FIRST_VOL 0

overworldPastChannel4Measure1Reset
	resetCoda
overworldPastChannel4Measure1:
    incCoda
    octave 2
.redefine NOTE_END_WAIT 20
; Measure 1,8
.rept 4
    volbeat a 4
.endr
; Measure 2,9
.rept 4
    volbeat g 4
.endr
; Measure 3,10
.rept 4
    volbeat f 4
.endr
; Measure 4,11
octaveu
.rept 4
    volbeat c 4
.endr
; Measure 5,12
octaved
.rept 4
    volbeat as 4
.endr

    gotoCond 2 overworldPastChannel4Measure14

; Measure 6,13
.rept 4
    volbeat a 4
.endr
; Measure 7
.rept 4
    volbeat b 4
.endr
; Measure 8
    octaveu
    volbeat e 4 a 4

.redefine NOTE_END_WAIT 0
    duty $0e
    beat b 4

.redefine NO_FIRST_VOL 1
.redefine LO_VOL_RATIO 5/7
.redefine NOTE_END_WAIT 6
    volbeat fs 2

.redefine NO_FIRST_VOL 0
    volbeat gs 2

    goto overworldPastChannel4Measure1

overworldPastChannel4Measure14:
.redefine BEAT 1
    octave 4
; Measure 14
    duty $17
    beat e 9 ds 9 e 10     ;Triplet
    beat gs 9 a 9 b 10     ;triplet
    octaveu
    beat c 9 r 9 c 10      ;triplet
    beat c 9 od b 9 a 10   ;triplet
; Measure 15
;        e 18 c 19 a 19 
    octaveu
    beat e 14 r 4 c 14 r 5 od a 19          ;quarter-note triplet
    beat gs 18 r 10 
    beat gs 9 fs 9 gs 10
; Measure 16
    beat a 9 b 9 ou c 10
    beat d 9 c 9 od b 10
    beat ou c 28 r 28

    goto overworldPastChannel4Measure1Reset
overworldPastChannel6:
    cmdff

sound08Start:
sound08Channel1:
sound08Channel0:
sound08Channel4:
sound08Channel6:
	cmdff

sound05Start:
sound05Channel1:
sound05Channel0:
sound05Channel4:
sound05Channel6:
	cmdff

sound0aStart:
sound0aChannel1:
sound0aChannel0:
sound0aChannel4:
sound0aChannel6:
	cmdff

sound0bStart:
sound0bChannel1:
sound0bChannel0:
sound0bChannel4:
sound0bChannel6:
	cmdff

sound12Start:
sound12Channel1:
sound12Channel0:
sound12Channel4:
sound12Channel6:
	cmdff

sound24Start:
sound24Channel1:
sound24Channel0:
sound24Channel4:
sound24Channel6:
	cmdff

sound87Start:
sound87Channel2:

sound89Start:
sound89Channel2:

sound8bStart:
sound8bChannel2:

soundcbStart:
soundcbChannel2:
soundcbChannel7:

sound8cStart:
sound8cChannel2:

sound8fStart:
sound8fChannel2:

sound90Start:
sound90Channel2:

soundcaStart:
; purposely blank
soundcaChannel2:
soundcaChannel7:

sound56Start:
sound56Channel2:

sound4dStart:
sound4dChannel2:

sound4cStart:
sound4cChannel2:
sound4cChannel3:
sound4cChannel5:
sound4cChannel7:
	cmdff
; $eff68
; GAP

.bank $75 slot 1
.org 0
sound1cStart:
sound1fStart:
sound07Start:
sound26Start:
sound19Start:
; @addr{f0000}
sound1cChannel6:
sound1fChannel6:
sound07Channel6:
sound26Channel6:
sound19Channel6:
	cmdff

sound15Start:
sound15Channel1:
sound15Channel0:
sound15Channel4:
sound15Channel6:
	cmdff

sound1fStart:
sound1fChannel1:
sound1fChannel0:
sound1fChannel4:
sound1fChannel6:
	cmdff

sound40Start:
sound40Channel1:
sound40Channel0:
sound40Channel4:
sound40Channel6:
	cmdff

sound07Start:
sound07Channel1:
sound07Channel0:
sound07Channel4:
sound07Channel6:
	cmdff

sound26Start:
sound26Channel1:
sound26Channel0:
sound26Channel4:
sound26Channel6:
	cmdff

sound18Start:
sound18Channel1:
sound18Channel0:
sound18Channel4:
sound18Channel6:
	cmdff

sound16Start:
sound16Channel1:
sound16Channel0:
sound16Channel4:
sound16Channel6:
	cmdff

sound28Start:
sound28Channel1:
sound28Channel0:
sound28Channel4:
sound28Channel6:
	cmdff

sound30Start:
sound30Channel1:
sound30Channel0:
sound30Channel4:
sound30Channel6:
	cmdff

sound35Start:
sound35Channel1:
sound35Channel0:
sound35Channel4:
sound35Channel6:
	cmdff

sound13Start:
sound13Channel1:
sound13Channel0:
sound13Channel4:
sound13Channel6:
	cmdff

sound14Start:
sound14Channel1:
sound14Channel0:
sound14Channel4:
sound14Channel6:
	cmdff

sound17Start:
sound17Channel1:
sound17Channel0:
sound17Channel4:
sound17Channel6:
	cmdff

sound4eStart:
sound4eChannel2:

sound4fStart:
sound4fChannel2:

sound50Start:
sound50Channel2:

sound51Start:
sound51Channel2:

sound52Start:
sound52Channel2:

sound53Start:
sound53Channel2:

sound57Start:
sound57Channel2:

sounda5Start:
sounda5Channel7:

sound91Start:
sound91Channel2:
	cmdff

soundaeStart:
soundaeChannel2:
soundaeChannel3:
soundaeChannel5:	
soundaeChannel7:

soundafStart:
soundafChannel2:
soundafChannel3:
soundafChannel5:
soundafChannel7:
	cmdff
; $f3d5a
; GAP

.bank $76 slot 1
.org 0

sound20Start:
sound20Channel1:
sound20Channel0:
sound20Channel4:
sound20Channel6:
	cmdff

sound23Start:
sound23Channel1:
sound23Channel0:
sound23Channel4:
sound23Channel6:
	cmdff

sound1bStart:
sound1bChannel1:
sound1bChannel0:
sound1bChannel4:
sound1bChannel6:
	cmdff

sound27Start:
sound27Channel1:
sound27Channel0:
sound27Channel4:
sound27Channel6:
	cmdff

sound1dStart:
sound1dChannel1:
sound1dChannel0:
sound1dChannel4:
sound1dChannel6:
	cmdff

sound46Start:
sound46Channel1:
sound46Channel0:
sound46Channel4:
sound46Channel6:
	cmdff

sound38Start:
sound38Channel1:
sound38Channel0:
sound38Channel4:
sound38Channel6:
	cmdff

sound2bStart:
sound2bChannel1:
sound2bChannel0:
sound2bChannel4:
sound2bChannel6:
	cmdff

sound3fStart:
sound3fChannel1:
sound3fChannel0:
sound3fChannel4:
sound3fChannel6:
	cmdff

sound93Start:
; purposely blank
sound93Channel2:

sound94Start:
; purposely blank
sound94Channel2:

sounda2Start:
sounda2Channel2:

sounda3Start:
sounda3Channel7:

sounda7Start:
sounda7Channel2:

soundb0Start:
soundb0Channel2:
soundb0Channel7:

sound58Start:
sound58Channel2:

sound59Start:
sound59Channel2:

sound5aStart:
sound5aChannel2:

sound5bStart:
sound5bChannel2:
sound5bChannel3:
; $f7f84
; GAP

sound5fStart:
sound5fChannel5:

sound62Start:
sound62Channel2:
	cmdff
; $f7fa3
; GAP
.bank $77 slot 1
.org 0

; GAP

sound39Start:
sound39Channel1:
sound39Channel0:
sound39Channel4:
sound39Channel6:
	cmdff

sound2fStart:
sound2fChannel1:
sound2fChannel0:
sound2fChannel4:
sound2fChannel6:
	cmdff

sound3cStart:
sound3cChannel1:
sound3cChannel0:
sound3cChannel4:
sound3cChannel6:
	cmdff

sound3eStart:
sound3eChannel1:
sound3eChannel0:
sound3eChannel4:
sound3eChannel6:
	cmdff

sound2aStart:
sound2aChannel1:
sound2aChannel0:
sound2aChannel4:
sound2aChannel6:
	cmdff

sound2eStart:
sound2eChannel1:
sound2eChannel0:
sound2eChannel4:
sound2eChannel6:
	cmdff

sound29Start:
sound29Channel1:
sound29Channel0:
sound29Channel4:
sound29Channel6:
	cmdff

sound25Start:
sound25Channel1:
sound25Channel0:
sound25Channel4:
sound25Channel6:
	cmdff

sound60Start:
sound60Channel2:

sound61Start:
sound61Channel2:

sound6bStart:
sound6bChannel7:

sound6cStart:
sound6cChannel7:

sound6dStart:
sound6dChannel7:

sound6eStart:
sound6eChannel7:

sound79Start:
sound79Channel7:

sound78Start:
sound78Channel7:

sound77Start:
sound77Channel2:

sound66Start:
sound66Channel2:
	cmdff
