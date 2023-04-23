	object_const_def
	const POWERPLANTB1F_ELECTRODE1
	const POWERPLANTB1F_ELECTRODE2
	const POWERPLANTB1F_ELECTRODE3
	const POWERPLANTB1F_ELECTRODE4
	const POWERPLANTB1F_ELECTRODE5
	const POWERPLANTB1F_ELECTRODE6
	const POWERPLANTB1F_ELECTRODE7
	const POWERPLANTB1F_ELECTRODE8

PowerPlantB1F_MapScripts:
	def_scene_scripts

	def_callbacks

PowerPlantB1F_MapEvents:
	PowerPlantB1FElectrode1:
	cry ELECTRODE
	loadwildmon ELECTRODE, 35
	startbattle
	disappear POWERPLANTB1F_ELECTRODE1
	reloadmapafterbattle
	end

PowerPlantB1FElectrode2:
	cry ELECTRODE
	loadwildmon ELECTRODE, 35
	startbattle
	disappear POWERPLANTB1F_ELECTRODE2
	reloadmapafterbattle
	end

PowerPlantB1FElectrode3:
	cry ELECTRODE
	loadwildmon ELECTRODE, 35
	startbattle
	disappear POWERPLANTB1F_ELECTRODE3
	reloadmapafterbattle
	end

PowerPlantB1FElectrode4:
	cry ELECTRODE
	loadwildmon ELECTRODE, 35
	startbattle
	disappear POWERPLANTB1F_ELECTRODE4
	reloadmapafterbattle
	end
	
PowerPlantB1FElectrode5:
	cry ELECTRODE
	loadwildmon ELECTRODE, 35
	startbattle
	disappear POWERPLANTB1F_ELECTRODE5
	reloadmapafterbattle
	end
	
PowerPlantB1FElectrode6:
	cry ELECTRODE
	loadwildmon ELECTRODE, 35
	startbattle
	disappear POWERPLANTB1F_ELECTRODE6
	reloadmapafterbattle
	end
	
PowerPlantB1FElectrode7:
	cry ELECTRODE
	loadwildmon ELECTRODE, 35
	startbattle
	disappear POWERPLANTB1F_ELECTRODE7
	reloadmapafterbattle
	end
	
PowerPlantB1FElectrode8:
	cry ELECTRODE
	loadwildmon ELECTRODE, 35
	startbattle
	disappear POWERPLANTB1F_ELECTRODE8
	reloadmapafterbattle
	end
	
	def_warp_events
	warp_event  7, 16, POWER_PLANT, 3
	warp_event  27, 2, POWER_PLANT_B2F, 1
	warp_event  23, 14, POWER_PLANT_B2F, 2
	warp_event  27, 26, POWER_PLANT_B2F, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event 5, 27,  SPRITE_VOLTORB, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantB1FElectrode1, 0
	object_event 17, 25, SPRITE_VOLTORB, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantB1FElectrode2, 0
	object_event 19, 4, SPRITE_VOLTORB, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantB1FElectrode3, 0
	object_event 22, 3, SPRITE_VOLTORB, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantB1FElectrode4, 0
	object_event 22, 6, SPRITE_VOLTORB, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantB1FElectrode5, 0
	object_event 23, 24, SPRITE_VOLTORB, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantB1FElectrode6, 0
	object_event 24, 27, SPRITE_VOLTORB, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantB1FElectrode7, 0
	object_event 25, 15, SPRITE_VOLTORB, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantB1FElectrode8, 0
	