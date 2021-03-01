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