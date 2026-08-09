musWaluigiPinballStart:
    tempo 135

musWaluigiPinballChannel1:
.redefine HI_VOL $7
.redefine LO_VOL $5

/* 
    duty $03
    vibrato $00
    vol HI_VOL
.rept 2
; Measure 1, 3
    octave 4
    m_musWaluigiPinballchannel0Measure1 as b as b
; Measure 2, 4
    m_musWaluigiPinballchannel0Measure1 as b gs e
.endr
*/

@measure1Loop:
; Measure 1
    vol HI_VOL
    duty $03
    vibrato $01
    env $0 $05
.macro m_musWaluigiPinballChannel1Measure1
    octave 3
    beat e E1 ou e E2
    octaved
    beat a E1 b S3
    octaveu
    beat d S4+S1
    octaved
    beat a S2 as S3 b S4
    octaveu
    beat cs E1 od b E2
.endm
    m_musWaluigiPinballChannel1Measure1
; Measure 2
.macro m_musWaluigiPinballChannel1Measure2
    octave 3
    beat e S1+T3 r T4 ou e E2
    octaved
    beat a E1 b T5+T6
    octaveu
    beat d S4+S1
    octaved
    beat a S2 as S3 b S4
    octaveu
    beat cs E1 od b E2
.endm
    m_musWaluigiPinballChannel1Measure2
; Measure 3
    m_musWaluigiPinballChannel1Measure1
; Measure 4
.macro m_musWaluigiPinballChannel1Measure4
    octave 3
    beat e E1
    octaveu
    beat e S3 od e S4
    beat d E1 ou d E2
    octaved 
    beat cs E1 ou cs E2    
    octaved 
    octaved
    beat b E1 ou b E2  
.endm
    m_musWaluigiPinballChannel1Measure4

; Measure 5
    rest E1
; Measure 5a
    vol HI_VOL
    duty $00
    vibrato $82
    env $0 $00
    octave 5
    beat d T5 e T6+S4 d Q
    octaved
    beat b S1
    env $0 $03
    beat a S2+S3
    env $0 $00
    beat g S4+E1 e E2
; Measure 6
    env $0 $03
    beat a E1
    env $0 $00
    beat g E2 a S1
    env $0 $03
    beat b S2+S3
    env $0 $00
    beat g S4+E1 e E2+S1 fs S2 e E2
; Measure 7
    rest E1
    duty $03
    vibrato $01
    octave 5
    beat e E2 d Q
    octaved
    beat b S1
    env $0 $03
    beat a S2+S3
    env $0 $00
    beat g S4+E1
    env $0 $03
    beat e E2   
; Measure 8
    beat g E1 e E2
    beat d S1 ds S2+S3
    env $0 $00
    vibrato $a1
    beat e S4+E1+S3
    vol LO_VOL
    vibrato $01
    beat e S4+Q
; Measure 9
    rest E1
    vol HI_VOL
    duty $00
    vibrato $82
    ;env $0 $00
    octave 5   
    beat d T5 e T6+S4 d Q
    octaved
    beat b S1
    env $0 $03
    beat a S2+S3
    env $0 $00
    beat g S4+E1
    env $0 $03
    beat e E2
; Measure 10
    beat e T1 g T2 a S2
    env $0 $00
    beat g E2 a S1
    env $0 $03
    beat b S2+S3
    env $0 $00
    beat g S4+E1
    env $0 $03
    beat e E2
    env $0 $00
    beat fs E1 e E2
; Measure 11
    rest E1
    duty $03
    vibrato $01
    octave 5
    beat e S3 cs S4
    beat e S1
    env $0 $03
    beat fs S2+S3
    env $0 $00
    beat g S4+E1
    env $0 $03
    beat e E2
    env $0 $00
    beat cs E1
    vibrato $a2
    beat e E2+HF+E1
; Measure 12a
    vibrato $02
    vol LO_VOL
    beat e E2+Q
; Measure 13
    rest E1
    vol HI_VOL
    duty $00
    vibrato $82
    env $0 $00
    octave 5
    beat d T5 e T6+S4 d Q
    octaved
    beat b S1
    env $0 $03
    beat a S2+S3
    env $0 $00
    beat fs T7 g T8+E1 e E2
; Measure 14
    beat a E1 ou cs E2
    env $0 $03
    beat e E1
    env $0 $00
    beat fs S3 g S4
    rest S1
    beat g S2 r S3 g S4
    beat fs E1 e E2
; Measure 15
    rest E1
    duty $03
    vibrato $01
    env $0 $03
    beat e E2
    env $0 $00
    beat d Q
    octaved
    beat b S1
    env $0 $03
    beat a S2+S3
    env $0 $00
    beat g S4+E1
    env $0 $03
    beat e E2
; Measure 16
    env $0 $00
    vol HI_VOL+1
    beat g E1
    env $0 $03
    vol HI_VOL
    beat e E2

    env $0 $00
    vol HI_VOL+1
    beat fs S1
    vol HI_VOL
    beat e S2 cs T5 r T6

    vol HI_VOL+1
    vibrato $a1
    beat e S4+E1+S3
    vol LO_VOL
    vibrato $01
    beat e S4+Q
; Measure 17
    rest E1
    vol HI_VOL
    duty $00
    vibrato $82
    octave 5
    beat d T5 e T6+S4 d Q
    octaved
    beat b S1
    env $0 $03
    beat a S2+S3
    env $0 $00
    beat g S4+E1 e E2    
; Measure 18
    env $0 $03
    beat a E1
    env $0 $00
    beat g E2 a S1 b S2+S3 g S4+E1
    env $0 $03
    beat e E2
    env $0 $00
    beat fs E1 e E2
; Measure 19
    rest E1 
    duty $03
    vibrato $01
    octave 5
    beat e S3 cs S4
    beat e S1
    env $0 $03
    beat g S2+S3
    env $0 $00
    beat a T7 b T8+E1
    env $0 $03
    beat a E2
    env $0 $00
    beat g S1 e S2 d S3
    vibrato $a2
    beat e S4+E1 od b S3
; Measure 19d-20
    octaveu
    beat e S4+Q+E1
    vibrato $02
    vol LO_VOL
    beat e E2+Q
; Measure 21
    vol HI_VOL
    duty $00
    vibrato $82
    env $0 $00
    octave 4
    beat d T1 e T2+S2 d E2
    octaved
    beat b S1
    env $0 $03
    octaveu
    beat d S2+S3
    env $0 $00
    beat e S4+Q+S1 od b S2 ou d E2
; Measure 22
    beat e E1+S3 fs S4+E1 g E2
    beat fs E1+S3
    env $0 $06
    beat e S4+Q
; Measure 23
    octave 4
    env $0 $00
    beat e E1 d E2
    octaved
    beat b S1
    env $0 $03
    octaveu
    beat d S2+S3
    env $0 $00
    beat e S4+E1 d E2
    octaved 
    env $0 $03
    beat b E1 g E2
; Measure 24
    env $0 $00
    beat a E1+S3 b S4 r E1
    vol HI_VOL+1
    env $0 $07
    beat e E2+Q+Q

; Measure 25
    octave 4
    env $0 $00
    vol HI_VOL
    duty $03
    vibrato $01
    beat d T1 e T2+S2 d E2
    octaved
    beat b S1
    env $0 $03
    octaveu
    beat d S2+S3
    env $0 $00
    beat e T7 d T8 e Q+S1 
    octaved
    beat b S2
    octaveu
    env $0 $03
    beat d E2
; Measure 26
    env $0 $00
    beat e E1+S3 fs S4+E1 g E2
    beat fs E1+S3 e S4+Q
; Measure 27
    rest E1 
    duty $03
    vibrato $01
    octave 5
    beat e S3 cs S4
    beat e S1
    env $0 $03
    beat g S2+S3
    env $0 $00
    beat b S4+E1
    env $0 $03
    beat a E2
    env $0 $00
    beat g S1 e S2 d S3
; Measure 27d-28
    vibrato $a2
    beat e S4+HF+S1
    vibrato $02
    vol LO_VOL
    beat e S2+E2+E1

    beat d W7 c W8
    vol LO_VOL+1
    octaved
    beat b W9 a W10
    vol LO_VOL+2
    beat g W11 fs W12
; Measure 29
    octave 4
    vol HI_VOL
    beat e S1 r S2

    ;duty $03
    vibrato $01
    env $0 $05
    vol HI_VOL+1
    beat e E2
    octaved
    beat a E1 b T5+T6
    octaveu
    beat d S4+S1
    octaved
    beat a S2 as S3 b S4
    octaveu
    beat cs E1 od b E2
; Measure 30
    m_musWaluigiPinballChannel1Measure2
; Measure 31
    m_musWaluigiPinballChannel1Measure1
; Measure 32
    m_musWaluigiPinballChannel1Measure4
/*
; Measure 33
    m_musWaluigiPinballChannel1Measure1
; Measure 34
    m_musWaluigiPinballChannel1Measure2
; Measure 35
    m_musWaluigiPinballChannel1Measure1
; Measure 36
    m_musWaluigiPinballChannel1Measure4

; Measure 5
    rest E1
*/
    goto @measure1Loop
    cmdff

.macro m_musWaluigiPinballChannel0Measure1
    beat \1 S1 \2 S2+S3 \2 S4+S1
    beat \2 S2+S3 \2 S4+E1
    beat \3 E2 \4 Q
.endm
.macro m_musWaluigiPinballChannel0Measure6
    rest E1    
    beat \1 E2+E1 \2 E2+E1 \3 E2+E1 \4 E2
.endm
.macro m_musWaluigiPinballChannel0Measure11
    beat \1 S1 \2 S2+S3 \2 S4+S1
    beat \2 S2+S3 \2 S4+E1
    beat \3 E2+E1 \3 E2
.endm
.macro m_musWaluigiPinballChannel0Measure21
    beat \1 S1 \2 S2+S3 \2 S4+E1
    beat \2 E2+E1 \3 E2+E1 \3 E2
.endm

musWaluigiPinballChannel0:
.redefine HI_VOL $4
.redefine LO_VOL $2

    duty $01
    vibrato $01
    env $0 $03
    vol HI_VOL
.rept 2
; Measure 1, 3
    octave 5
    m_musWaluigiPinballChannel0Measure1 cs d cs d
; Measure 2, 4
    m_musWaluigiPinballChannel0Measure1 cs5 d5 b4 gs4
.endr

@measure5Loop:
    vol HI_VOL
; Measure 5
    m_musWaluigiPinballChannel0Measure1 cs d d d
; Measure 6
    octave 5
    m_musWaluigiPinballChannel0Measure6 e e e e
; Measure 7
    m_musWaluigiPinballChannel0Measure1 cs d d d
; Measure 8
    m_musWaluigiPinballChannel0Measure1 ds e g e
; Measure 9
    m_musWaluigiPinballChannel0Measure1 cs d d d
; Measure 10
    m_musWaluigiPinballChannel0Measure6 e e e e
; Measure 11
    m_musWaluigiPinballChannel0Measure11 ds e fs
; Measure 12
    m_musWaluigiPinballChannel0Measure6 e d cs b4
; Measure 13
    m_musWaluigiPinballChannel0Measure1 cs d d d
; Measure 14
    m_musWaluigiPinballChannel0Measure6 e e e e
; Measure 15
    m_musWaluigiPinballChannel0Measure1 cs d d d
; Measure 16
    m_musWaluigiPinballChannel0Measure1 ds e g e
; Measure 17
    m_musWaluigiPinballChannel0Measure1 cs d d d
; Measure 18
    m_musWaluigiPinballChannel0Measure6 e e e e
; Measure 19
    m_musWaluigiPinballChannel0Measure11 ds e fs
; Measure 20
    m_musWaluigiPinballChannel0Measure6 e d cs b4

; Measure 21
    octave 4
    m_musWaluigiPinballChannel0Measure21 ds e e
; Measure 22
    m_musWaluigiPinballChannel0Measure6 g g g g
; Measure 23
    m_musWaluigiPinballChannel0Measure21 ds e e  
; Measure 24
    m_musWaluigiPinballChannel0Measure6 b b b b
; Measure 25
    m_musWaluigiPinballChannel0Measure21 ds e e
; Measure 26
    m_musWaluigiPinballChannel0Measure6 g g g g
; Measure 27
    octave 5
    m_musWaluigiPinballChannel0Measure21 ds e fs   
; Measure 28
    octave 4
    m_musWaluigiPinballChannel0Measure6 b b b b

.rept 2
; Measure 29, 31
    octave 5
    m_musWaluigiPinballChannel0Measure1 cs d cs d
; Measure 30, 32
    m_musWaluigiPinballChannel0Measure1 cs d b4 gs4
.endr   

    vol HI_VOL+1
.rept 2
; Measure 33, 35
    octave 5
    m_musWaluigiPinballChannel0Measure1 g gs g gs
; Measure 34, 36
    m_musWaluigiPinballChannel0Measure1 g gs e b4
.endr  

    goto @measure5Loop
    cmdff

musWaluigiPinballChannel4:
	.redefine HI_VOL $0e
	.redefine LO_VOL $0f

; Measure 1
    duty HI_VOL
    vibrato $01
@measure1Loop:

.macro m_musWaluigiPinballChannel4Measure1
    octave 2
    beat e E1 ou e E2
    octaved
    beat a E1 b T5 
    duty LO_VOL
    beat b T6
    duty HI_VOL
    octaveu
    beat d S4+S1
    octaved
    beat a S2 as S3 b S4
    octaveu
    beat cs E1 od b E2
.endm
    m_musWaluigiPinballChannel4Measure1
; Measure 2
.macro m_musWaluigiPinballChannel4Measure2
    octave 2
    beat e S1+T3  
    duty LO_VOL
    beat e T4
    duty HI_VOL
    octaveu
    beat e E2
    octaved
    beat a E1 b T5 
    duty LO_VOL
    beat b T6
    duty HI_VOL
    octaveu
    beat d S4+S1
    octaved
    beat a S2 as S3 b S4
    octaveu
    beat cs E1 od b E2
.endm
    m_musWaluigiPinballChannel4Measure2
; Measure 3
    m_musWaluigiPinballChannel4Measure1
; Measure 4
    octave 2
.macro m_musWaluigiPinballChannel4Measure4
    beat e S1+T3  
    duty LO_VOL
    beat e T4
    duty HI_VOL
    octaveu
    beat e S3 od e S4
    beat d E1 ou d E2
    octaved 
    beat cs E1 ou cs E2    
    octaved 
    octaved
    beat b E1 ou b E2  
.endm
    m_musWaluigiPinballChannel4Measure4  

; Measure 5
    m_musWaluigiPinballChannel4Measure1
; Measure 6
.macro m_musWaluigiPinballChannel4Measure6
    octave 2
    beat a S1+T3   
    duty LO_VOL
    beat a T4
    duty HI_VOL
    octaveu
    beat a E2
    beat cs E1 d T5 
    duty LO_VOL
    beat d T6
    duty HI_VOL
    beat cs S4+S1
    beat d S2 ds S3 g S4
    beat fs E1 e E2
.endm
    m_musWaluigiPinballChannel4Measure6
; Measure 7
    octave 2
    beat e E1 ou e S3 od e S4   
    beat gs E1 ou d T5 
    duty LO_VOL
    beat d T6
    duty HI_VOL
    beat e S4+S1
    octaved
    beat a S2 as S3 b S4
    octaveu
    beat cs E1 od b E2 
; Measure 8
.macro m_musWalugiPinabllChannel4Measure8
    octave 2
    beat a S1+T3  
    duty LO_VOL
    beat a T4
    duty HI_VOL
    octaveu
    beat a S3 od a S4
    ;octaveu
    beat cs E1 ou cs E2
    octaved 
    beat d E1 ou d E2    
    octaved 
    beat ds E1 ou ds E2  
.endm 
    m_musWalugiPinabllChannel4Measure8
; Measure 9
    m_musWaluigiPinballChannel4Measure1
; Measure 10
    m_musWaluigiPinballChannel4Measure6
; Measure 11
    octave 2
    beat a E1 ou a S3 od a S4
    octaveu
    beat cs E1 d T5 
    duty LO_VOL
    beat d T6
    duty HI_VOL
    beat a S4+S1
    octaved
    beat b S2 ou e S3 fs S4
    beat b E1 od b E2
; Measure 12
.macro m_musWaluigiPinballChannel4Measure12
    octave 2
    beat e S1+T3  
    duty LO_VOL
    beat e T4
    duty HI_VOL
    octaveu
    beat e S3 od e S4
    beat gs E1 ou gs E2
    octaved 
    beat a E1 ou a E2    
    octaved 
    beat as E1 ou as E2   
.endm
    m_musWaluigiPinballChannel4Measure12
; Measure 13
.macro m_musWaluigiPinballChannel4Measure13
    octave 2
    beat e E1 ou e E2
    octaved
    beat gs E1 ou d T5 
    duty LO_VOL
    beat d T6
    duty HI_VOL
    beat e S4+S1
    octaved
    beat a S2 as S3 b S4
    octaveu
    beat cs E1 od b E2
.endm
    m_musWaluigiPinballChannel4Measure13
; Meausre 14
   m_musWaluigiPinballChannel4Measure6
; Measure 15
   m_musWaluigiPinballChannel4Measure13
; Measure 16
    m_musWalugiPinabllChannel4Measure8
; Measure 17
   m_musWaluigiPinballChannel4Measure13
; Meausre 18
   m_musWaluigiPinballChannel4Measure6
; Measure 19
.macro m_musWaluigiPinballchannel4Measure19
    octave 2
    beat a E1 ou a E2  
    beat cs E1 d T5 
    duty LO_VOL
    beat d T6
    duty HI_VOL
    beat cs S4+S1
    beat d S2 ds S3 g S4
    beat fs E1 e E2
.endm
    m_musWaluigiPinballchannel4Measure19
; Measure 20
    m_musWaluigiPinballChannel4Measure12

; Measure 21
.macro m_musWaluigiPinballChannel4Measure21
    octave 2
    beat g E1 ou g E2
    octaved
    beat b E1 ou fs T5 
    duty LO_VOL
    beat fs T6
    duty HI_VOL
    beat g S4+S1
    beat c S2 cs S3 d S4
    beat e E1 d E2
.endm
    m_musWaluigiPinballChannel4Measure21
; Measure 22
   m_musWaluigiPinballChannel4Measure6
; Measure 23
    m_musWaluigiPinballChannel4Measure21
; Measure 24
    octave 2
    beat fs S1+T3  
    duty LO_VOL
    beat fs T4
    duty HI_VOL
    octaveu
    beat fs S3 od fs S4
    beat b E1 ou b E2
    octaved 
    beat a E1 ou a E2    
    beat d E1 ou d E2     
; Measure 25
    m_musWaluigiPinballChannel4Measure21
; Measure 26
   m_musWaluigiPinballChannel4Measure6
; Measure 27
    m_musWaluigiPinballchannel4Measure19
; Measure 28
    octave 3
    m_musWaluigiPinballChannel4Measure4

; Measure 29
    m_musWaluigiPinballChannel4Measure1
; Measure 30
    m_musWaluigiPinballChannel4Measure2
; Measure 31
    m_musWaluigiPinballChannel4Measure1
; Measure 32
    octave 2
    m_musWaluigiPinballChannel4Measure4 

    goto @measure1Loop
    cmdff

musWaluigiPinballChannel6:
.redefine HI_VOL $6
.redefine LO_VOL $4

.redefine HIT       $24; ;snare  ;$2a 
.redefine CRASH     $27;$2e;22 ;crash symbol   ;$52,$2e 
.redefine LO_TOM    $25;24 ;tom/clap
.redefine HI_TOM    $23;25
.redefine BASS      $29

@measure1Loop:
; Measure 1
    vol HI_VOL
    beat BASS E1
    vol LO_VOL
    beat HI_TOM E2

    vol HI_VOL
    beat HIT E1
    vol LO_VOL
    beat HI_TOM S3
    vol HI_VOL
    beat BASS S4

    vol LO_VOL
    beat LO_TOM E1 HI_TOM E2

    vol HI_VOL
    beat HIT E1
    vol LO_VOL
    beat HI_TOM E2

; Measure 2
    vol HI_VOL
    beat BASS S1 BASS S2
    vol LO_VOL
    beat HI_TOM E2

    vol HI_VOL
    beat HIT E1
    vol LO_VOL
    beat HI_TOM S3
    vol HI_VOL
    beat BASS S4

    vol LO_VOL
    beat LO_TOM S1 HIT S2 HI_TOM E2

    vol HI_VOL
    beat HIT E1
    vol LO_VOL
    beat HI_TOM E2

    goto @measure1Loop
    cmdff