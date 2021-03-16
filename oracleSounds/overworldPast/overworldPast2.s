overworldPastStart:
; sound04
; BPM = 128.57 B = 28, M = 112
overworldPastChannel1:
.redefine BEAT 7        ;sixteenth
.redefine CHANNEL 1
.redefine HI_VOL $5
.redefine LO_VOL $3
.redefine LO_NOTE_RATIO 0.5

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
.redefine LO_NOTE_RATIO 2/3
.redefine NOTE_END_WAIT 2
    volbeat e 9 c 9
.redefine LO_NOTE_RATIO 3/5
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
.redefine LO_NOTE_RATIO 1/2

overworldPastChannel0Measure1Reset:
    resetCoda
overworldPastChannel0Measure1:
    incCoda

    vibrato $e1
	env $0 $00
;	cmdf2       ;useless
	duty $01

    octave 4
; Measure 1,9
    volbeat cs 28

    vol $5
    beat d 9 cs 9 od b 10

.redefine LO_NOTE_RATIO 1/3
	octaveu
    volbeat cs 21

    vol $5
    beat cs 7
.redefine NOTE_END_WAIT 2
    beat cs 7 d 7 e 7 fs 7
; Measure 2,10
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
; Measure 3,11
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
; Measure 4,12
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
; Measure 5,13
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
.redefine LO_NOTE_RATIO 6/7
.redefine NO_FIRST_VOL 0

overworldPastChannel4Measure1Reset
	resetCoda
overworldPastChannel4Measure1:
    incCoda
    octave 2
.redefine NOTE_END_WAIT 20
; Measure 1,9
.rept 4
    volbeat a 4
.endr
; Measure 2,10
.rept 4
    volbeat g 4
.endr
; Measure 3,11
.rept 4
    volbeat f 4
.endr
; Measure 4,12
octaveu
.rept 4
    volbeat c 4
.endr
; Measure 5,13
octaved
.rept 4
    volbeat as 4
.endr

    gotoCond 2 overworldPastChannel4Measure14

; Measure 6
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
.redefine LO_NOTE_RATIO 5/7
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