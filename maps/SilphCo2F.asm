	object_const_def

SilphCo2F_MapScripts:
	def_scene_scripts

	def_callbacks

SilphCo2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 27,  0, SILPH_CO_1F, 3
	warp_event 25,  0, SILPH_CO_3F, 1
	warp_event 23,  0, SILPH_CO_ELEVATOR, 1
	warp_event  3,  3, SILPH_CO_3F, 7
	warp_event 13,  3, SILPH_CO_8F, 5
	warp_event 27, 15, SILPH_CO_8F, 6
	warp_event  9, 15, SILPH_CO_6F, 5
	def_coord_events

	def_bg_events

	def_object_events
