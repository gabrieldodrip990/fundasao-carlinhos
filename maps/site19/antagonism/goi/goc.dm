GLOBAL_DATUM_INIT(goc, /datum/antagonist/goc, new)

/datum/antagonist/goc
	id = MODE_GOC
	role_text = "Global Occult Coalition Agent"
	antag_indicator = "hudsyndicate"
	role_text_plural = "Global Occult Coalition Agents"
	landmark_id = "GOC-Spawn"
	leader_welcome_text = "You are the leader of the Global Occult Coalition Raid Forces. Use :t to speak to your Troopers."
	welcome_text = "To speak on the GOC private channel use :t."
	flags = ANTAG_VOTABLE | ANTAG_OVERRIDE_JOB | ANTAG_OVERRIDE_MOB | ANTAG_CLEAR_EQUIPMENT | ANTAG_CHOOSE_NAME | ANTAG_SET_APPEARANCE | ANTAG_HAS_LEADER
	antaghud_indicator = "hudoperative"

	hard_cap = 4
	hard_cap_round = 8
	initial_spawn_req = 3
	initial_spawn_target = 5
	min_player_age = 14

	faction = "goc"

/datum/antagonist/goc/create_global_objectives()
	if(!..())
		return 0
	global_objectives = list()
	global_objectives |= new /datum/objective/goc
	return 1

/datum/antagonist/goc/greet(datum/mind/player)
	if(!..())
		return
	to_chat(player.current, "YOU ARE NEUTRAL TO FOUNDATION STAFF, YOU HAVE AUTORIZATION TO OPEN FIRE AT HOSTILES OR IF ATTACKED")
	to_chat(player.current, "The Global Occult Coalition is an operational arm of the United Nations dedicated to the paranormal and the anomalous. UNGOC Mission is to keep the peace and maintain friendly relations between occult organizations, protect humanity against all threats paranormal, parascientific, and paratemporal, and take any actions required to ensure the survival of the human race.")
	to_chat(player.current, "The PHYSICS Division is the paramilitary arm of the United Nations Global Occult Coalition. Their primary purpose is to locate, identify and eliminate any Threat Entities (TEs). These can range from ontokineticists to thamauturges to regenerators.")
	usr << 'maps/site19/sounds/music/goc_theme.ogg'

/datum/antagonist/goc/equip(mob/living/carbon/human/player)
	if(!..())
		return 0

	var/decl/hierarchy/outfit/goc/trooper/ungoc = outfit_by_type(/decl/hierarchy/outfit/goc/trooper)
	ungoc.equip(player)

	return 1

/datum/objective/goc
	explanation_text = "Destroy many SCPs as you can."