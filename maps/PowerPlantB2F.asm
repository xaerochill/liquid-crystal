	object_const_def
	const POWERPLANTB2F_ELECTRODE1
	const POWERPLANTB2F_ELECTRODE2
	const POWERPLANTB2F_ELECTRODE3
	const POWERPLANTB2F_ELECTRODE4
	const POWERPLANTB2F_ELECTRODE5
	const POWERPLANTB2F_ELECTRODE6
	const POWERPLANTB2F_ELECTRODE7
	const POWERPLANTB2F_ELECTRODE8

PowerPlantB2F_MapScripts:
	def_scene_scripts

	def_callbacks

PowerPlantB2F_MapEvents:
	PowerPlantB2FElectrode1:
	cry ELECTRODE
	loadwildmon ELECTRODE, 40
	startbattle
	disappear POWERPLANTB2F_ELECTRODE1
	reloadmapafterbattle
	end

PowerPlantB2FElectrode2:
	cry ELECTRODE
	loadwildmon ELECTRODE, 40
	startbattle
	disappear POWERPLANTB2F_ELECTRODE2
	reloadmapafterbattle
	end

PowerPlantB2FElectrode3:
	cry ELECTRODE
	loadwildmon ELECTRODE, 40
	startbattle
	disappear POWERPLANTB2F_ELECTRODE3
	reloadmapafterbattle
	end

PowerPlantB2FElectrode4:
	cry ELECTRODE
	loadwildmon ELECTRODE, 40
	startbattle
	disappear POWERPLANTB2F_ELECTRODE4
	reloadmapafterbattle
	end
	
PowerPlantB2FElectrode5:
	cry ELECTRODE
	loadwildmon ELECTRODE, 40
	startbattle
	disappear POWERPLANTB2F_ELECTRODE5
	reloadmapafterbattle
	end
	
PowerPlantB2FElectrode6:
	cry ELECTRODE
	loadwildmon ELECTRODE, 40
	startbattle
	disappear POWERPLANTB2F_ELECTRODE6
	reloadmapafterbattle
	end
	
PowerPlantB2FElectrode7:
	cry ELECTRODE
	loadwildmon ELECTRODE, 40
	startbattle
	disappear POWERPLANTB2F_ELECTRODE7
	reloadmapafterbattle
	end
	
PowerPlantB2FElectrode8:
	cry ELECTRODE
	loadwildmon ELECTRODE, 40
	startbattle
	disappear POWERPLANTB2F_ELECTRODE8
	reloadmapafterbattle
	end
	
	def_warp_events
	warp_event  27, 2, POWER_PLANT_B2F, 1
	warp_event  23, 14, POWER_PLANT_B2F, 2
	warp_event  27, 26, POWER_PLANT_B2F, 3
	warp_event  3, 26, POWER_PLANT_B3F, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3, 16,  SPRITE_VOLTORB, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantB2FElectrode1, 0
	object_event  4,  3, SPRITE_VOLTORB, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantB2FElectrode2, 0
	object_event  4, 25, SPRITE_VOLTORB, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantB2FElectrode3, 0
	object_event  6,  2, SPRITE_VOLTORB, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantB2FElectrode4, 0
	object_event  6, 26, SPRITE_VOLTORB, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantB2FElectrode5, 0
	object_event 21, 13, SPRITE_VOLTORB, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantB2FElectrode6, 0
	object_event 21, 16, SPRITE_VOLTORB, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantB2FElectrode7, 0
	object_event 27, 11, SPRITE_VOLTORB, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantB2FElectrode8, 0
	