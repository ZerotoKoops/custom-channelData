makuTreeStart:
; sound1e
; 6/4
; BPM =  B = , b =
makuTreeChannel1:
    .redefine BEAT 1
; Measure 1 (pickup)
    octave 3
    vol $0
    beat g 20
makuTreeChannel1Measure2:
    vibrato $e1
    env $0 $00
    duty $02
    vol $6
    beat e 28 g 28 ou d 28 b 28