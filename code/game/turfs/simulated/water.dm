/turf/open/water
	gender = PLURAL
	name = "water"
	desc = "Shallow water."
	icon = 'icons/turf/floors.dmi'
	icon_state = "riverwater_motion"
	baseturfs = /turf/open/water
	slowdown = 1
	bullet_sizzle = TRUE
	bullet_bounce_sound = null //needs a splashing sound one day.

	footstep = FOOTSTEP_WATER
	barefootstep = FOOTSTEP_WATER
	clawfootstep = FOOTSTEP_WATER
	heavyfootstep = FOOTSTEP_WATER

	can_allow_icy = FALSE //lumos edit V V V ALL OF THIS TOO V V V

// What you kind of fish you can catch from water
	var/list/fishing_loot = list(
			/obj/item/fishy/catfish = 25,
			/obj/item/fishy/shrimp = 25,
			/obj/item/fishy/lobster = 25,
			/obj/item/fishy/salmon = 25)

/turf/open/water/airless
	initial_gas_mix = AIRLESS_ATMOS
	baseturfs = /turf/open/water/airless

/turf/open/water/seawater // For TheBeach away "mission"
	name = "sea water"
	desc = "Deep blue water absolutely brimming with life."
	icon = 'icons/misc/beach.dmi'
	icon_state = "seadeep"
	baseturfs = /turf/open/water/seawater

	fishing_loot = list(
			/obj/item/fishy/shark = 10,
			/obj/item/fishy/shrimp = 25,
			/obj/item/fishy/lobster = 25,
			/obj/item/fishy/lobster/rock = 10,
			/obj/item/fishy/salmon = 30)

/turf/open/water/lavaland
	name = "jungle water"
	desc = "Water found throughout the subterranean jungle of NT8248-B."
	baseturfs = /turf/open/chasm/lavaland
	initial_gas_mix = LAVALAND_DEFAULT_ATMOS
	planetary_atmos = TRUE

	fishing_loot = list(
			/obj/item/fishy/lobster/rock = 30,
			/obj/item/fishy/asteroid_worm = 10,
			/obj/item/fishy/lavacrab = 30,
			/obj/item/fishy/lavafish = 30)

/turf/open/water/lavaland/airless
	initial_gas_mix = AIRLESS_ATMOS
	baseturfs = /turf/open/water/lavaland/airless

/turf/open/water/asteroid
	name = "asteroid pond"
	desc = "Shallow water held onto asteroids, often used by astroforms and extremophiles in their egg and larval stages."
	baseturfs = /turf/open/floor/plating/asteroid

	fishing_loot = list(
			/obj/item/fishy/space_eel = 25,
			/obj/item/fishy/asteroid_worm = 35,
			/obj/item/fishy/minicarp = 35,
			/obj/item/fishy/seadevil = 5)

/turf/open/water/asteroid/airless
	initial_gas_mix = AIRLESS_ATMOS
	baseturfs = /turf/open/floor/plating/asteroid/airless

/turf/open/water/jungle_world
	name = "sea water"
	desc = "The jade green water of NT7643. Briming with strange lifeforms."
	icon_state = "seadeep" // need sprote
	baseturfs = /turf/open/water/jungle_world

	fishing_loot = list(
			/obj/item/fishy/shark = 10,
			/obj/item/fishy/shrimp = 25,
			/obj/item/fishy/lobster = 25,
			/obj/item/fishy/lobster/rock = 10,
			/obj/item/fishy/salmon = 30)

/turf/open/water/jungle_world/lake
	name = "jungle lake"
	desc = "Light green lake water. God knows what's in it."
	icon_state = "seadeep"
	baseturfs = /turf/open/water/jungle_world/lake

	fishing_loot = list(
			/obj/item/fishy/shark = 10,
			/obj/item/fishy/shrimp = 25,
			/obj/item/fishy/lobster = 25,
			/obj/item/fishy/lobster/rock = 10,
			/obj/item/fishy/salmon = 30)
