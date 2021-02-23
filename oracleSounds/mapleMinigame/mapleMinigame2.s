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