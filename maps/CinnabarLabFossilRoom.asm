	object_const_def
	const CINNABARLAB_FOSSILSCIENTIST
	
CinnabarLabFossilRoom_MapScripts:
	def_scene_scripts

	def_callbacks

FossilScientist:
	checkevent EVENT_GAVE_SCIENTIST_OLD_AMBER
	iftrue .GiveAerodactyl
	checkevent EVENT_GAVE_SCIENTIST_DOME_FOSSIL
	iftrue .GiveKabuto
	checkevent EVENT_GAVE_SCIENTIST_HELIX_FOSSIL
	iftrue .GiveLordHelix
	faceplayer
	opentext
	writetext FossilScientistIntroText
	waitbutton
	loadmenu .MoveMenuHeader
	verticalmenu
	closewindow
	ifequal CINNABAR_OLD_AMBER, .OldAmber
	ifequal CINNABAR_DOME_FOSSIL, .DomeFossil
	ifequal CINNABAR_LORD_HELIX, .HelixFossil
	sjump .No
.OldAmber
	checkitem OLD_AMBER
	iffalse .No
	setval CINNABAR_OLD_AMBER
	opentext
	writetext FossilScientistAmberText
	waitbutton
	closetext
	setevent EVENT_GAVE_SCIENTIST_OLD_AMBER
	takeitem OLD_AMBER
	opentext
	writetext FossilScientistGiveText
	waitbutton
	closetext
	sjump .GaveScientistFossil
.DomeFossil:
	checkitem DOME_FOSSIL
	iffalse .No
	setval CINNABAR_DOME_FOSSIL
	opentext
	writetext FossilScientistDomeText
	waitbutton
	closetext
	setevent EVENT_GAVE_SCIENTIST_DOME_FOSSIL
	takeitem DOME_FOSSIL
	opentext
	writetext FossilScientistGiveText
	waitbutton
	closetext
	sjump .GaveScientistFossil
.HelixFossil:
	checkitem HELIX_FOSSIL
	iffalse .No
	setval CINNABAR_LORD_HELIX
	opentext
	writetext FossilScientistHelixText
	waitbutton
	closetext
	setevent EVENT_GAVE_SCIENTIST_HELIX_FOSSIL
	takeitem HELIX_FOSSIL
	opentext
	writetext FossilScientistGiveText
	waitbutton
	closetext
	sjump .GaveScientistFossil
.No
	opentext
	writetext FossilScientistNoText
	waitbutton
	closetext
	end
.GaveScientistFossil:
	faceplayer
	opentext
	writetext FossilScientistTimeText
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	playsound SFX_WARP_TO
	waitsfx
	pause 35
	sjump FossilScientist
.GiveAerodactyl:
	faceplayer
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	clearevent EVENT_GAVE_SCIENTIST_OLD_AMBER
	opentext
	writetext FossilScientistDoneText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke AERODACTYL, 5
	writetext FossilScientistAerodactylText
	waitbutton
	closetext
	end
.GiveKabuto:
	faceplayer
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	clearevent EVENT_GAVE_SCIENTIST_DOME_FOSSIL
	opentext
	writetext FossilScientistDoneText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke KABUTO, 5
	writetext FossilScientistKabutoText
	waitbutton
	closetext
	end
.GiveLordHelix:
	faceplayer
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	clearevent EVENT_GAVE_SCIENTIST_HELIX_FOSSIL
	opentext
	writetext FossilScientistDoneText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke OMANYTE, 5
	writetext FossilScientistOmanyteText
	waitbutton
	closetext
	end
.NoRoom:
	faceplayer
	opentext
	writetext FossilScientistPartyFullText
	waitbutton
	closetext
	end
.MoveMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 15, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option
.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "OLD AMBER@"
	db "DOME FOSSIL@"
	db "HELIX FOSSIL@"
	db "CANCEL@"

FossilScientistIntroText:
	text "Hiya!"

	para "I am important"
	line "doctor!"

	para "I study here rare"
	line "#MON fossils!"

	para "You! Have you a"
	line "fossil for me?"
	done

FossilScientistNoText:
	text "No! Is too bad!"

	para "You come again!"
	done

FossilScientistPartyFullText:
	text "No! Is too bad!"

	para "Your party is"
	line "already full!"
	done

FossilScientistTimeText:
	text "I take a little"
	line "time!"

	para "You go for walk a"
	line "little while!"
	done

FossilScientistDoneText:
	text "Where were you?"

	para "Your fossil is"
	line "back to life!"
	done

FossilScientistAmberText:
	text "Oh! That is"
	line "a fossil!"

	para "It is fossil of"
	line "AERODACTYL, a"
	line "#MON that is"
	cont "already extinct!"

	para "My Resurrection"
	line "Machine will make"
	cont "that #MON live"
	cont "again!"
	done

FossilScientistHelixText:
	text "Oh! That is"
	line "a fossil!"

	para "It is fossil of"
	line "OMANYTE, a"
	line "#MON that is"
	cont "already extinct!"

	para "My Resurrection"
	line "Machine will make"
	cont "that #MON live"
	cont "again!"
	done

FossilScientistDomeText:
	text "Oh! That is"
	line "a fossil!"

	para "It is fossil of"
	line "KABUTO, a"
	line "#MON that is"
	cont "already extinct!"

	para "My Resurrection"
	line "Machine will make"
	cont "that #MON live"
	cont "again!"
	done

FossilScientistGiveText:
	text "So! You hurry and"
	line "give me that!"

	para "<PLAYER> handed"
	line "over the fossil."
	done

FossilScientistAerodactylText:
	text "<PLAYER> received"
	line "AERODACTYL!"
	done

FossilScientistOmanyteText:
	text "<PLAYER> received"
	line "OMANYTE!"
	done

FossilScientistKabutoText:
	text "<PLAYER> received"
	line "KABUTO!"
	done

CinnabarLabFossilRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 8, 7, CINNABAR_LAB, 5
	warp_event 9, 7, CINNABAR_LAB, 5
	
	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  1, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, FossilScientist, -1
