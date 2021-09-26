; Macro to align a bank to prevent it crossing a $8000 byte boundary.
bankalign macro
	if ($&$7FFF)+\1>$8000
	align 8
	endif
     endm

; Macro to stop the Z80
stopZ80 macro
	move.w	#$100,(Z80_Bus_Request).l
@loop\@:	btst	#0,(Z80_Bus_Request).l
	bne.s	@loop\@
     endm

; Macro to start the Z80
startZ80 macro
	move.w	#0,(Z80_Bus_Request).l
     endm

; Macro for declaring a "main level load block" (MLLB).
levartptrs macro
	dc.l \1+(\2<<24)
	dc.l \3+(\4<<24)
	dc.l \5
	dc.b 0, \6, \7, \7
    endm
