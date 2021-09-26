ArtLoadCues:
PLCptr_Std1:		dc.w PLC_Main-ArtLoadCues
PLCptr_Std2:		dc.w PLC_Main2-ArtLoadCues
PLCptr_Explosion:	dc.w PLC_Explode-ArtLoadCues
PLCptr_GameOver:	dc.w PLC_GameOver-ArtLoadCues
PLCptr_GHZ:		dc.w PLC_GHZ-ArtLoadCues
PLCptr_GHZ2:		dc.w PLC_GHZ2-ArtLoadCues
PLCptr_LZ:		dc.w PLC_CPZ-ArtLoadCues
PLCptr_LZ2:		dc.w PLC_CPZ2-ArtLoadCues
PLCptr_CPZ:		dc.w PLC_CPZ-ArtLoadCues
PLCptr_CPZ2:		dc.w PLC_CPZ2-ArtLoadCues
PLCptr_EHZ:		dc.w PLC_EHZ-ArtLoadCues
PLCptr_EHZ2:		dc.w PLC_EHZ2-ArtLoadCues
PLCptr_HPZ:		dc.w PLC_HPZ-ArtLoadCues
PLCptr_HPZ2:		dc.w PLC_HPZ2-ArtLoadCues
PLCptr_HTZ:		dc.w PLC_HTZ-ArtLoadCues
PLCptr_HTZ2:		dc.w PLC_HTZ2-ArtLoadCues
PLCptr_S1TitleCard:	dc.w PLC_S1TitleCard-ArtLoadCues
PLCptr_Boss:		dc.w PLC_Boss-ArtLoadCues
PLCptr_Signpost:	dc.w PLC_Signpost-ArtLoadCues
PLCptr_S1Warp:		dc.w PLC_Invalid-ArtLoadCues
PLCptr_S1SpecialStage:	dc.w PLC_Invalid-ArtLoadCues
PLCptr_GHZAnimals:	dc.w PLC_GHZAnimals-ArtLoadCues
PLCptr_LZAnimals:	dc.w PLC_LZAnimals-ArtLoadCues
PLCptr_CPZAnimals:	dc.w PLC_CPZAnimals-ArtLoadCues
PLCptr_EHZAnimals:	dc.w PLC_EHZAnimals-ArtLoadCues
PLCptr_HPZAnimals:	dc.w PLC_HPZAnimals-ArtLoadCues
PLCptr_HTZAnimals:	dc.w PLC_HTZAnimals-ArtLoadCues
PLCptr_S1SSResults:	dc.w LeftoverData_Unknown-ArtLoadCues
PLCptr_S1Ending:	dc.w LeftoverData_Unknown+2-ArtLoadCues
PLCptr_S1TryAgain:	dc.w LeftoverData_Unknown+4-ArtLoadCues
PLCptr_S1EggmanSBZ2:	dc.w LeftoverData_Unknown+6-ArtLoadCues
PLCptr_S1FZBoss:	dc.w LeftoverData_Unknown+8-ArtLoadCues
; ===========================================================================

PLC_Main:	dc.w (((PLC_Main2-PLC_Main-2)/6)-1)
		dc.l Nem_Lamppost
		dc.w $8F80
		dc.l Nem_HUD
		dc.w $D940
		dc.l Nem_Lives
		dc.w $FA80
		dc.l Nem_Ring
		dc.w $D780
		dc.l Nem_Points
		dc.w $9580
; ===========================================================================

PLC_Main2:	dc.w (((PLC_Explode-PLC_Main2-2)/6)-1)
		dc.l Nem_Monitors
		dc.w $D000
		dc.l Nem_Shield
		dc.w $97C0
		dc.l Nem_Stars
		dc.w $9BC0
; ===========================================================================

PLC_Explode:	dc.w (((PLC_GameOver-PLC_Explode-2)/6)-1)
		dc.l Nem_Explosion
		dc.w $B400
; ===========================================================================

PLC_GameOver:	dc.w (((PLC_GHZ-PLC_GameOver-2)/6)-1)
		dc.l Nem_GameOver
		dc.w $ABC0
; ===========================================================================

PLC_GHZ:	dc.w (((PLC_GHZ2-PLC_GHZ-2)/6)-1)
		dc.l Nem_GHZ
		dc.w 0
		dc.l Nem_GHZ_Piranha
		dc.w $8E00
		dc.l Nem_VSpikes
		dc.w $9400
		dc.l Nem_VSpring
		dc.w $9500
		dc.l Nem_HSpring
		dc.w $9700
		dc.l Nem_GHZ_Bridge
		dc.w $98C0
		dc.l Nem_SwingPlatform
		dc.w $9A00
		dc.l Nem_Motobug
		dc.w $9C00
		dc.l Nem_GHZ_Rock
		dc.w $D800
PLC_GHZ2:	dc.w (((PLC_CPZ-PLC_GHZ2-2)/6)-1)
		dc.l Nem_GHZ_Piranha
		dc.w $8E00
; ===========================================================================

PLC_CPZ:	dc.w (((PLC_CPZ2-PLC_CPZ-2)/6)-1)
		dc.l Nem_CPZ
		dc.w 0
		dc.l Nem_CPZ_Unknown
		dc.w $7A00
		dc.l Nem_CPZ_FloatingPlatform
		dc.w $8000
PLC_CPZ2:	dc.w (((PLC_EHZ-PLC_CPZ2-2)/6)-1)
		dc.l Nem_VSpikes
		dc.w $8680
		dc.l Nem_DSpikes
		dc.w $8780
		dc.l Nem_VSpring2
		dc.w $8B80
		dc.l Nem_HSpring2
		dc.w $8E00
; ===========================================================================

PLC_EHZ:	dc.w (((PLC_EHZ2-PLC_EHZ-2)/6)-1)
		dc.l Nem_EHZ
		dc.w 0
		dc.l Nem_EHZ_Fireball
		dc.w $73C0
		dc.l Nem_EHZ_Waterfall
		dc.w $75C0
		dc.l Nem_EHZ_Bridge
		dc.w $78C0
		dc.l Nem_HTZ_Seesaw
		dc.w $79C0
		dc.l Nem_VSpikes
		dc.w $8680
		dc.l Nem_DSpikes
		dc.w $8780
		dc.l Nem_VSpring2
		dc.w $8B80
		dc.l Nem_HSpring2
		dc.w $8E00
PLC_EHZ2:	dc.w (((PLC_HPZ-PLC_EHZ2-2)/6)-1)
		dc.l Nem_Shield
		dc.w $AC00
		dc.l Nem_Points
		dc.w $9580
		dc.l Nem_Buzzbomber
		dc.w $7CC0
		dc.l Nem_Snail
		dc.w $8040
		dc.l Nem_EHZ_Piranha
		dc.w $8380
; ===========================================================================

PLC_HPZ:	dc.w (((PLC_HPZ2-PLC_HPZ-2)/6)-1)
		dc.l Nem_HPZ
		dc.w 0
		dc.l Nem_HPZ_Bridge
		dc.w $6000
		dc.l Nem_HPZ_Waterfall
		dc.w $62A0
		dc.l Nem_HPZ_Platform
		dc.w $6940
		dc.l Nem_HPZ_PulsingBall
		dc.w $6B40
		dc.l Nem_HPZ_Various
		dc.w $6F80
		dc.l Nem_HPZ_Emerald
		dc.w $7240
		dc.l Nem_HPZ_WaterSurface
		dc.w $8000
PLC_HPZ2:	dc.w (((PLC_HTZ-PLC_HPZ2-2)/6)-1)-7 	; remove the '-7' if you wish to restore the rest of the list
		dc.l Nem_Dinobot
		dc.w $A000
		dc.l Nem_Bat 	; At this point the rest of the PLC's are not read because it is cut off
		dc.w $A600
		dc.l Nem_Crocobot
		dc.w $6000
		dc.l Nem_Buzzbomber
		dc.w $6580
		dc.l Nem_Bat
		dc.w $6A00
		dc.l Nem_Triceratops
		dc.w $7880
		dc.l Nem_Dinobot
		dc.w $A000
		dc.l Nem_HPZ_Piranha
		dc.w $A600
; ===========================================================================

PLC_HTZ:	dc.w (((PLC_HTZ2-PLC_HTZ-2)/6)-1)
		dc.l Nem_EHZ
		dc.w 0
		dc.l Nem_HTZ
		dc.w $3F80
		dc.l Nem_HTZ_AniPlaceholders
		dc.w $A000
		dc.l Nem_EHZ_Fireball
		dc.w $73C0
		dc.l Nem_HTZ_Fireball
		dc.w $75C0
		dc.l Nem_HTZ_AutomaticDoor
		dc.w $77C0
		dc.l Nem_EHZ_Bridge
		dc.w $78C0
		dc.l Nem_HTZ_Seesaw
		dc.w $79C0
		dc.l Nem_VSpikes
		dc.w $8680
		dc.l Nem_DSpikes
		dc.w $8780
		dc.l Nem_VSpring2
		dc.w $8B80
		dc.l Nem_HSpring2
		dc.w $8E00
PLC_HTZ2:	dc.w (((PLC_S1TitleCard-PLC_HTZ2-2)/6)-1)-3	; don't know why they cut off this list
		dc.l Nem_HTZ_Lift
		dc.w $7CC0
		dc.l Nem_Buzzbomber
		dc.w $7CC0
		dc.l Nem_Snail
		dc.w $8040
		dc.l Nem_EHZ_Piranha
		dc.w $8380
; ===========================================================================

PLC_S1TitleCard:dc.w (((PLC_Boss-PLC_S1TitleCard-2)/6)-1)
		dc.l Nem_S1TitleCard
		dc.w $B000
; ===========================================================================

PLC_Boss:	dc.w (((PLC_Signpost-PLC_Boss-2)/6)-1)-6
		dc.l Nem_BossShip
		dc.w $8C00
		dc.l Nem_EHZ_Boss
		dc.w $9800
		dc.l Nem_EHZ_Boss_Blades
		dc.w $A800
		dc.l Nem_BossShip
		dc.w $8000
		dc.l Nem_CPZ_ProtoBoss
		dc.w $8C00
		dc.l Nem_BossShipBoost
		dc.w $9A00
		dc.l Nem_Smoke
		dc.w $9B00
		dc.l Nem_EHZ_Boss
		dc.w $9D00
		dc.l Nem_EHZ_Boss_Blades
		dc.w $AD00
; ===========================================================================

PLC_Signpost:	dc.w (((PLC_Invalid-PLC_Signpost-2)/6)-1)
		dc.l Nem_Signpost
		dc.w $D000
		dc.l Nem_S1BonusPoints
		dc.w $96C0
		dc.l Nem_BigFlash
		dc.w $8C40
; ===========================================================================

PLC_Invalid:	dc.w $10
; ===========================================================================

PLC_GHZAnimals:	dc.w (((PLC_LZAnimals-PLC_GHZAnimals-2)/6)-1)
		dc.l Nem_Bunny
		dc.w $B000
		dc.l Nem_Flicky
		dc.w $B240
; ===========================================================================

PLC_LZAnimals:	dc.w (((PLC_CPZAnimals-PLC_LZAnimals-2)/6)-1)
		dc.l Nem_Penguin
		dc.w $B000
		dc.l Nem_Seal
		dc.w $B240
; ===========================================================================

PLC_CPZAnimals:	dc.w (((PLC_EHZAnimals-PLC_CPZAnimals-2)/6)-1)
		dc.l Nem_Squirrel
		dc.w $B000
		dc.l Nem_Seal
		dc.w $B240
; ===========================================================================

PLC_EHZAnimals:	dc.w (((PLC_HPZAnimals-PLC_EHZAnimals-2)/6)-1)
		dc.l Nem_Pig
		dc.w $B000
		dc.l Nem_Flicky
		dc.w $B240
; ===========================================================================

PLC_HPZAnimals:	dc.w (((PLC_HTZAnimals-PLC_HPZAnimals-2)/6)-1)
		dc.l Nem_Pig
		dc.w $B000
		dc.l Nem_Chicken
		dc.w $B240
; ===========================================================================

PLC_HTZAnimals:	dc.w (((PLC_End-PLC_HTZAnimals-2)/6)-1)
		dc.l Nem_Bunny
		dc.w $B000
		dc.l Nem_Chicken
		dc.w $B240
PLC_End:
		even
