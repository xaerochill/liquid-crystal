	object_const_def

SilphCo4F_MapScripts:
	def_scene_scripts

	def_callbacks

SilphCo4F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 27,  0, SILPH_CO_3F, 2
	warp_event 25,  0, SILPH_CO_5F, 2
	warp_event 23,  0, SILPH_CO_ELEVATOR, 1
	warp_event 11,  7, SILPH_CO_10F, 4
	warp_event 17,  3, SILPH_CO_6F, 4
	warp_event  3, 15, SILPH_CO_10F, 5
	warp_event 17, 11, SILPH_CO_10F, 6

	def_coord_events

	def_bg_events

	def_object_events
