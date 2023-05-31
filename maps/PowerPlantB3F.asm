	object_const_def

PowerPlantB3F_MapScripts:
	def_scene_scripts

	def_callbacks

PowerPlantB3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0, 10, ROUTE_10_NORTH, 2
	warp_event  0, 11, ROUTE_10_NORTH, 2
	warp_event  3, 32, POWER_PLANT_B2F, 4

	def_coord_events

	def_bg_events

	def_object_events
	