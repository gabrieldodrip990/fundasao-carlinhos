GLOBAL_DATUM_INIT(chaos, /datum/antagonist/chaos_insurgency, new)

/datum/antagonist/chaos_insurgency
	id = MODE_CHAOS
	role_text = "Chaos Agent"
	antag_indicator = "hudsyndicate"
	role_text_plural = "Chaos Agents"
	landmark_id = "CI-Spawn"
	leader_welcome_text = "You are the leader of the Chaos Insurgency Raid Forces. Let the Chaos Come... Use :t to speak to your underlings."
	welcome_text = "To speak on the Chaos Insurgency private channel use :t."
	flags = ANTAG_VOTABLE | ANTAG_OVERRIDE_JOB | ANTAG_OVERRIDE_MOB | ANTAG_CLEAR_EQUIPMENT | ANTAG_CHOOSE_NAME | ANTAG_SET_APPEARANCE | ANTAG_HAS_LEADER
	antaghud_indicator = "hudoperative"

	hard_cap = 4
	hard_cap_round = 8
	initial_spawn_req = 3
	initial_spawn_target = 5
	min_player_age = 14

	faction = "chaos"

/datum/antagonist/chaos_insurgency/greet(datum/mind/player)
	if(!..())
		return
	to_chat(player.current, "YOU ARE A ANTAGONIST TO THE FOUNDATION STAFF, YOU HAVE AUTORIZATION TO KILL IN SIGHT FOUNDATION STAFF. CLASS-Ds MAY BE SUPPORTED AND EVACUATED.")
	to_chat(player.current, "Founded in 1948, the Chaos Insurgency has managed to gain power and numerous military assets to use against the Foundation during facility raids. Their primary objective is to purge the facility of Foundation personnel, and seize all assets that are deemed to serve the best interests of Delta Command — their elusive overseers.")
	to_chat(player.current, "SHOULD INTERMITTENT VENGENCE ARM AGAIN HIS RED RIGHT HAND TO PLAGUE US?")
	usr << 'maps/site19/sounds/music/chaos_theme.ogg'

/datum/antagonist/chaos_insurgency/create_global_objectives()
	if(!..())
		return 0
	global_objectives = list()
	global_objectives |= new /datum/objective/nuclear
	return 1

/datum/antagonist/chaos_insurgency/equip(mob/living/carbon/human/player)
	if(!..())
		return 0

	var/decl/hierarchy/outfit/chaos/soldier/ci = outfit_by_type(/decl/hierarchy/outfit/chaos/soldier)
	ci.equip(player)

	return 1