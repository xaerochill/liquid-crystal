	object_const_def
	const POWERPLANTB3F_ELECTRODE1
	const POWERPLANTB3F_ELECTRODE2
	const POWERPLANTB3F_ELECTRODE3
	const POWERPLANTB3F_ELECTRODE4
	const POWERPLANTB3F_ELECTRODE5
	const POWERPLANTB3F_ELECTRODE6
	const POWERPLANTB3F_ELECTRODE7
	const POWERPLANTB3F_ELECTRODE8
	const POWER_PLANT_ZAPDOS

PowerPlantB3F_MapScripts:
	def_scene_scripts

	def_callbacks

PowerPlantB3F_MapEvents:
	PowerPlantZapdos:
	opentext
	writetext ZapdosCryText
	pause 15
	cry ZAPDOS
	closetext
	loadwildmon ZAPDOS, 50
	startbattle
	disappear POWER_PLANT_ZAPDOS
	reloadmapafterbattle
	end

PowerPlantB3FElectrode1:
	cry ELECTRODE
	loadwildmon ELECTRODE, 45
	startbattle
	disappear POWERPLANTB3F_ELECTRODE1
	reloadmapafterbattle
	end

PowerPlantB3FElectrode2:
	cry ELECTRODE
	loadwildmon ELECTRODE, 45
	startbattle
	disappear POWERPLANTB3F_ELECTRODE2
	reloadmapafterbattle
	end

PowerPlantB3FElectrode3:
	cry ELECTRODE
	loadwildmon ELECTRODE, 45
	startbattle
	disappear POWERPLANTB3F_ELECTRODE3
	reloadmapafterbattle
	end

PowerPlantB3FElectrode4:
	cry ELECTRODE
	loadwildmon ELECTRODE, 45
	startbattle
	disappear POWERPLANTB3F_ELECTRODE4
	reloadmapafterbattle
	end
	
PowerPlantB3FElectrode5:
	cry ELECTRODE
	loadwildmon ELECTRODE, 45
	startbattle
	disappear POWERPLANTB3F_ELECTRODE5
	reloadmapafterbattle
	end
	
PowerPlantB3FElectrode6:
	cry ELECTRODE
	loadwildmon ELECTRODE, 45
	startbattle
	disappear POWERPLANTB3F_ELECTRODE6
	reloadmapafterbattle
	end
	
PowerPlantB3FElectrode7:
	cry ELECTRODE
	loadwildmon ELECTRODE, 45
	startbattle
	disappear POWERPLANTB3F_ELECTRODE7
	reloadmapafterbattle
	end
	
PowerPlantB3FElectrode8:
	cry ELECTRODE
	loadwildmon ELECTRODE, 45
	startbattle
	disappear POWERPLANTB3F_ELECTRODE8
	reloadmapafterbattle
	end

ZapdosCryText:
	text "ZAPDOS: Gyaoo!"
	done

	def_warp_events
	warp_event  0, 10, ROUTE_10_NORTH, 2
	warp_event  0, 11, ROUTE_10_NORTH, 2
	warp_event  3, 32, POWER_PLANT_B2F, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  9, 20,  SPRITE_VOLTORB, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantB3FElectrode1, 0
	object_event  21, 14, SPRITE_VOLTORB, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantB3FElectrode2, 0
	object_event  21, 25, SPRITE_VOLTORB, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantB3FElectrode3, 0
	object_event  23, 34, SPRITE_VOLTORB, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantB3FElectrode4, 0
	object_event  25, 18, SPRITE_VOLTORB, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantB3FElectrode5, 0
	object_event  26, 28, SPRITE_VOLTORB, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantB3FElectrode6, 0
	object_event  32, 18, SPRITE_VOLTORB, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantB3FElectrode7, 0
	object_event  37, 32, SPRITE_VOLTORB, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantB3FElectrode8, 0
	object_event  4,  9,  SPRITE_MOLTRES, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, PowerPlantZapdos, 0
	