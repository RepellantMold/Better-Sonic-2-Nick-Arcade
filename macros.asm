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
