// PMCG Modsuit
/obj/item/clothing/under/pmc_modsuit
	name = "\improper OSS modsuit"
	desc = "A modular fatigue jumpsuit, commonly issued by the Office of Special Services to its civilian Contractors."
	desc_extended = "The proprietary OSS Modular Fatigue Jumpsuit, quickly dubbed the modsuit, is an innovation by the OSS designed to quickly outfit its scores of new \
	hires and contractors at a reasonable production cost alongside a fast production rate. Designed to fit contractors of a wide range of sizes, species, and operating environments with tolerable comfort, \
	the modsuit features a number of smart-fabric connection points for the modern contractor to modify their uniform to a number of preset configurations."
	icon = 'icons/clothing/under/uniforms/pmcg_modsuit.dmi'
	icon_state = "pmcg_modsuit"
	item_state = "pmcg_modsuit"
	contained_sprite = TRUE
	action_button_name = "Change Modsuit"
	var/modsuit_mode = 0
	var/list/names = list(
		"\improper OSS modsuit",
		"\improper OSS shortsleeved modsuit",
		"\improper OSS modsuit pants",
		"\improper OSS shorts modsuit")

/obj/item/clothing/under/pmc_modsuit/Initialize()
	for(var/option in names)
		if(!modsuit_mode)
			names[option] = image('icons/clothing/under/uniforms/pmcg_modsuit.dmi', icon_state)
			modsuit_mode = 1
		else
			names[option] = image('icons/clothing/under/uniforms/pmcg_modsuit.dmi', initial(icon_state) + "_[names.Find(option) - 1]")
	modsuit_mode = 0
	.=..()

/obj/item/clothing/under/pmc_modsuit/attack_self(mob/user)
	select_modsuit(user)

/obj/item/clothing/under/pmc_modsuit/proc/select_modsuit(mob/user)
	var/modsuit_choice = RADIAL_INPUT(user, names)
	if(!modsuit_choice)
		return
	modsuit_mode = names.Find(modsuit_choice) - 1

	selected_modsuit(user)
	update_clothing_icon()

/obj/item/clothing/under/pmc_modsuit/proc/selected_modsuit(mob/user as mob)
	if(!modsuit_mode)
		name = initial(name)
		icon_state = initial(icon_state)
		item_state = initial(item_state)
	else
		name = names[modsuit_mode + 1]
		icon_state = initial(icon_state) + "_[modsuit_mode]"
		item_state = initial(item_state) + "_[modsuit_mode]"

	update_clothing_icon()
	user.update_action_buttons()

/obj/item/clothing/under/pmc_modsuit/verb/change_modsuit()
	set name = "Change Modsuit"
	set category = "Object"
	set src in usr
	if(use_check_and_message(usr))
		return

	select_modsuit(usr)

/obj/item/clothing/under/rank/security/pmc/wildlands_squadron
	name = "wildlands squadron uniform"
	desc = "A set of uniform fatigues used by employees of the Wildlands Squadron, a Private Military Contractor. The original design is remarkably similar to the Mictlan System Defense Force's uniform, of which many of the original members of the Wildlands Squadron were members."
	icon = 'icons/obj/item/clothing/department_uniforms/security.dmi'
	icon_state = "pmc_ws"
	item_state = "pmc_ws"

/obj/item/clothing/under/rank/security/pmc/dagamuir_freewater
	name = "\improper Dagamuir Freewater Private Forces uniform"
	desc = "An Unathi-style uniform used by the mercenaries of Dagamuir Freewater Private Forces, an Unathi-run PMC. The chest and back are emblazoned with a stylised red and golden eye, once the emblem of the Dagamuir clan."
	icon = 'icons/obj/item/clothing/department_uniforms/security.dmi'
	icon_state = "pmc_dpf"
	item_state = "pmc_dpf"
