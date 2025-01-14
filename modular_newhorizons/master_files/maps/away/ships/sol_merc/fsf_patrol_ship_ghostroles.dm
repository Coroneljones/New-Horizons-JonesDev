/datum/ghostspawner/human/fsf_navy_crewman
	short_name = "fsf_navy_crewman"
	name = "FF Navy Crewman"
	desc = "Crew the Free Fleets Mercenary patrol corvette. Look for work, or some other source of income."
	tags = list("External")
	mob_name_prefix = "PO3. "

	spawnpoints = list("fsf_navy_crewman")
	max_count = 3

	outfit = /datum/outfit/admin/fsf_navy_crewman
	possible_species = list(SPECIES_HUMAN)
	allow_appearance_change = APPEARANCE_PLASTICSURGERY

	assigned_role = "FF Navy Crewman"
	special_role = "FF Navy Crewman"
	respawn_flag = null

	culture_restriction = list(/singleton/origin_item/culture/solarian)

/datum/outfit/admin/fsf_navy_crewman
	name = "FF Navy Crewman"

	uniform = /obj/item/clothing/under/rank/sol/
	shoes = /obj/item/clothing/shoes/jackboots
	back = /obj/item/storage/backpack/satchel
	belt = /obj/item/storage/belt/utility/full
	head = /obj/item/clothing/head/sol
	accessory = /obj/item/clothing/accessory/storage/brown_vest

	id = /obj/item/card/id/fsf_ship

	l_ear = /obj/item/device/radio/headset/ship

	backpack_contents = list(/obj/item/storage/box/survival = 1, /obj/item/melee/energy/sword/knife/sol = 1)

/datum/outfit/admin/fsf_navy_crewman/get_id_access()
	return list(access_sol_ships, access_external_airlocks)

/datum/ghostspawner/human/fsf_navy_officer
	short_name = "fsf_navy_officer"
	name = "FF Navy Officer"
	desc = "Command the Free Fleets Mercenary patrol corvette. Look for work, or some other source of income."
	tags = list("External")
	mob_name_prefix = "LT. "

	spawnpoints = list("fsf_navy_officer")
	max_count = 1

	outfit = /datum/outfit/admin/fsf_navy_officer
	possible_species = list(SPECIES_HUMAN)
	allow_appearance_change = APPEARANCE_PLASTICSURGERY

	assigned_role = "FF Navy Officer"
	special_role = "FF Navy Officer"
	respawn_flag = null

	culture_restriction = list(/singleton/origin_item/culture/solarian)

/datum/outfit/admin/fsf_navy_officer
	name = "FF Navy Officer"

	uniform = /obj/item/clothing/under/rank/sol/dress/subofficer
	shoes = /obj/item/clothing/shoes/laceup
	back = /obj/item/storage/backpack/satchel/leather
	head = /obj/item/clothing/head/sol/dress
	accessory = /obj/item/clothing/accessory/holster/thigh

	id = /obj/item/card/id/fsf_ship

	l_ear = /obj/item/device/radio/headset/ship

	backpack_contents = list(/obj/item/storage/box/survival = 1, /obj/item/melee/energy/sword/knife/sol = 1)

/datum/outfit/admin/fsf_navy_officer/get_id_access()
	return list(access_sol_ships, access_external_airlocks)

/datum/ghostspawner/human/fsf_navy_crewman/senior
	short_name = "fsf_navy_senior_crewman"
	name = "FF Navy Senior Crewman"
	desc = "Serve as the second-in-command of the Free Fleets patrol corvette. Look for work, or some other source of income."
	mob_name_prefix = "PO1. "

	spawnpoints = list("fsf_navy_crewman")
	max_count = 1

	assigned_role = "FF Navy Senior Crewman"
	special_role = "FF Navy Senior Crewman"

	culture_restriction = list(/singleton/origin_item/culture/solarian)

//items

/obj/item/card/id/fsf_ship
	name = "fsf patrol ship id"
	access = list(access_sol_ships, access_external_airlocks)
