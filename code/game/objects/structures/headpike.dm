/obj/structure/headpike
	name = "head on a spear"
	desc = "A foreboding effigy."
	icon = 'icons/obj/structures.dmi'
	icon_state = "headpike"
	density = FALSE
	anchored = TRUE
	var/bonespear = FALSE
	var/obj/item/spear/spear
	var/obj/item/bodypart/head/victim

/obj/structure/headpike/bone //for bone spears
	icon_state = "headpike-bone"
	bonespear = TRUE

//SKYRAT CHANGES BEGIN
/obj/structure/headpike/CheckParts(list/parts_list)
	victim = locate(/obj/item/bodypart/head) in parts_list
	name = "[victim.name] on a spear"
	update_icon()
	if(bonespear)
		spear = locate(/obj/item/spear/bonespear) in parts_list
	else
		spear = locate(/obj/item/spear) in parts_list
	return ..()
//SKYRAT CHANGES END

/obj/structure/headpike/Initialize()
	. = ..()
	pixel_x = rand(-8, 8)

/obj/structure/headpike/update_overlays()
	. = ..()
	var/obj/item/bodypart/head/H = locate() in contents
	if(H)
		var/mutable_appearance/MA = new()
		MA.copy_overlays(H)
		MA.pixel_y = 12
		. += H

/obj/structure/headpike/attack_hand(mob/user)
	. = ..()
	if(.)
		return
	to_chat(user, "<span class='notice'>You take down [src].</span>")
	if(victim)
		victim.forceMove(drop_location())
		victim = null
	spear.forceMove(drop_location())
	spear = null
	qdel(src)
