	object_const_def
	

PokemonMansionB1F_MapScripts:
	def_scene_scripts

	def_callbacks

PokemonMansionDiary1:
	jumptext PokemonMansionDiary1Text

PokemonMansionDiary1Text:
	text "Diary; Sept. 1"
	line "MEWTWO is far too"
	cont "powerful."

	para "We have failed to"
	line "curb its vicious"
	cont "tendencies..."
	done

PokemonMansionB1F_MapEvents:
	def_warp_events
	warp_event 23, 22, POKEMON_MANSION_1F, 8
	
	def_coord_events

	def_bg_events
	bg_event 7, 1, BGEVENT_READ, PokemonMansionDiary1
	
	def_object_events
