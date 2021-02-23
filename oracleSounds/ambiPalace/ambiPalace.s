sound07Start:
; $f102d
; @addr{f102d}
sound07Channel0:
	vol $0
	note gs3 $18
	cmdf2
	vibrato $e1
	env $0 $00
	duty $02
musicf1037:
	vol $8
	note gs4 $18
	vol $5
	note gs4 $0c
	vol $8
	note gs4 $06
	vol $5
	note gs4 $06
	vol $8
	note gs4 $1e
	vol $5
	note gs4 $06
	vol $8
	note gs4 $0c
	note a4  $0c
	wait1 $06
	vol $5
	note a4  $06
	vol $8
	note a4  $0c
	wait1 $06
	vol $5
	note a4  $06
	vol $8
	note a4  $0c
	wait1 $06
	vol $5
	note a4  $06
	vol $8
	note fs4 $0c
	note cs4 $0c
	note e4  $0c
	note ds4 $0c
	note e4  $0c
	note cs4 $0c
	note gs4 $12
	vol $5
	note gs4 $06
	vol $8
	note gs4 $0c
	note b3  $0c
	note gs3 $0c
	wait1 $06
	vol $5
	note gs3 $06
	vol $8
	note gs3 $0c
	note a3  $0c
	note d4  $0c
	note cs4 $0c
	note b3  $0c
	note a3  $0c
	note fs3 $0c
	wait1 $06
	vol $5
	note fs3 $06
	vol $8
	note fs3 $0c
	note a3  $0c
	vol $5
	note a3  $0c
	wait1 $0c
	vol $8
	note a3  $0c
	note b3  $0c
	note a3  $0c
	wait1 $06
	vol $5
	note a3  $06
	vol $8
	note fs3 $0c
	wait1 $06
	vol $5
	note fs3 $06
	vol $8
	note a3  $0c
	note g3  $0c
	note fs3 $0c
	note d3  $0c
	note g3  $0c
	wait1 $06
	vol $5
	note g3  $06
	vol $8
	note g3  $0c
	note a3  $0c
	note b3  $0c
	wait1 $06
	vol $5
	note b3  $06
	vol $8
	note b3  $0c
	note cs4 $0c
	note d4  $0c
	note cs4 $0c
	note b3  $0c
	note fs3 $0c
	note a3  $0c
	wait1 $06
	vol $5
	note a3  $06
	vol $8
	note b3  $0c
	wait1 $06
	vol $5
	note b3  $06
	vol $8
	note fs3 $24
	note a3  $0c
	note e4  $0c
	note d4  $0c
	note cs4 $0c
	note b3  $0c
	note d4  $0c
	wait1 $06
	vol $5
	note d4  $06
	vol $8
	note a3  $0c
	wait1 $06
	vol $5
	note a3  $06
	vol $8
	note g3  $18
	note fs3 $18
	note e3  $0c
	vol $5
	note e3  $0c
	vol $8
	note e4  $0c
	note d4  $0c
	note cs4 $0c
	wait1 $06
	vol $5
	note cs4 $06
	vol $8
	note b3  $0c
	wait1 $06
	vol $5
	note b3  $06
	vol $8
	note d4  $0c
	wait1 $06
	vol $5
	note d4  $06
	vol $8
	note cs4 $0c
	note d4  $0c
	note b3  $18
	note as3 $12
	wait1 $06
	note b2  $24
	note c3  $0c
	note ds3 $0c
	note e3  $0c
	note fs3 $0c
	note g3  $0c
	note a3  $18
	note g3  $0c
	note fs3 $0c
	note c4  $0c
	wait1 $06
	vol $5
	note c4  $06
	vol $8
	note b3  $0c
	wait1 $06
	vol $5
	note b3  $06
	goto musicf1037
	cmdff
; $f115d
; @addr{f115d}
sound07Channel4:
	wait1 $18
musicf115f:
	duty $0e
	note e3  $1e
	wait1 $06
	note e3  $06
	wait1 $06
	note e3  $18
	wait1 $0c
	note e3  $06
	wait1 $06
	duty $0e
	note e3  $12
	wait1 $06
	note e3  $12
	wait1 $06
	note e3  $12
	wait1 $06
	note a2  $12
	wait1 $06
	note b2  $12
	wait1 $06
	note b2  $12
	wait1 $06
	note e3  $0c
	note ds3 $0c
	note e3  $0c
	note b2  $0c
	note gs2 $0c
	note a2  $0c
	note gs2 $0c
	note fs2 $0c
	note a2  $0c
	duty $0f
	note a2  $0c
	duty $0e
	note g2  $0c
	note fs2 $0c
	note b2  $0c
	duty $0f
	note b2  $0c
	duty $0e
	note b2  $0c
	duty $0f
	note b2  $0c
	duty $0e
	note e2  $30
	note d3  $30
	note b2  $30
	note e2  $12
	wait1 $06
	note e2  $12
	wait1 $06
	note e2  $1e
	wait1 $06
	note gs2 $0c
	note a2  $18
	note e3  $0c
	duty $0e
	note cs3 $0c
	note e3  $0c
	duty $0f
	note e3  $0c
	duty $0e
	note e3  $0c
	note b2  $0c
	note cs3 $0c
	duty $0f
	note cs3 $0c
	duty $0e
	note b2  $0c
	note e3  $0c
	note d3  $0c
	duty $0f
	note d3  $0c
	duty $0e
	note fs3 $0c
	duty $0f
	note fs3 $0c
	duty $0e
	note a2  $24
	note fs2 $0c
	note b2  $12
	wait1 $06
	note b2  $12
	wait1 $06
	note e3  $30
	note d3  $30
	note cs3 $30
	note as2 $30
	note b2  $0c
	duty $0f
	note b2  $0c
	duty $0e
	note b2  $0c
	note a2  $0c
	note g2  $18
	note fs2 $0c
	note g2  $0c
	note e2  $18
	note fs2 $0c
	note e2  $0c
	note ds2 $0c
	note fs2 $0c
	note a2  $0c
	note c3  $0c
	goto musicf115f
	cmdff
sound07Channel6:
    cmdff
