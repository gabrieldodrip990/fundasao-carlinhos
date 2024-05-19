GLOBAL_DATUM_INIT(see_no_evil, /datum/antagonist/see_no_evil, new)

/datum/antagonist/see_no_evil
	id = MODE_ETA10
	role_text = "MTF See No Evil - Eta-10 Agent"
	role_text_plural = "MTF See No Evil - Eta-10 Agents"
	welcome_text = "As Agent of the Eta-10 taskforce, you only answer to your leader, nobody else."
	antag_text = "You are an <b>anti</b> antagonist! Within the rules, \
		try to save the site and its inhabitants from the ongoing crisis. \
		Try to make sure other players have <i>fun</i>! If you are confused or at a loss, always adminhelp, \
		and before taking extreme actions, please try to also contact the administration! \
		Think through your actions and make the roleplay immersive! <b>Please remember all \
		rules aside from those without explicit exceptions apply to the MTF.</b>"
	leader_welcome_text = "You shouldn't see this"
	landmark_id = "Response Team"
	id_type = /obj/item/card/id/centcom/ERT

	flags = ANTAG_OVERRIDE_JOB | ANTAG_HAS_LEADER | ANTAG_CHOOSE_NAME | ANTAG_RANDOM_EXCEPTED
	antaghud_indicator = "hudloyalist"

	hard_cap = 5
	hard_cap_round = 7
	initial_spawn_req = 5
	initial_spawn_target = 7
	show_objectives_on_creation = 0 //we are not antagonists, we do not need the antagonist shpiel/objectives
	var/reason = ""

/datum/antagonist/see_no_evil/create_default(var/mob/source)
	var/mob/living/carbon/human/M = ..()
	if(istype(M)) M.age = rand(25,45)

/datum/antagonist/see_no_evil/New()
	..()
	leader_welcome_text = "As leader of Mobile Task Force Eta-10, you answer only to the O5 Council, and have authority to override the Site staff where it is necessary to achieve your mission goals. It is recommended that you attempt to cooperate with the site staff where possible, however."
//	see_no_evil = src

/datum/antagonist/see_no_evil/greet(var/datum/mind/player)
	if(!..())
		return
	to_chat(player.current, "The Mobile Task Force works for the SCP Foundation; There is a emergency alert at [station_name()], you are tasked to go and fix the problem.")
	to_chat(player.current, "Mobile Task Force Eta-10 specializes in the investigation, acquisition, and initial containment of objects or entities exhibiting visual cognitohazards, visual memetic agents, or otherwise require indirect or alternative observation in order to safely handle.")
	to_chat(player.current, "You should first gear up and discuss a plan with your team. More members may be joining, don't move out before you're ready.")
	usr << 'maps/site19/sounds/music/mtf_theme.ogg'

/datum/antagonist/see_no_evil/equip(var/mob/living/carbon/human/player)
	var/decl/hierarchy/outfit/mtf/eta_10/see_no_evil = outfit_by_type(/decl/hierarchy/outfit/mtf/eta_10)
	see_no_evil.equip(player)

	player.add_language(LANGUAGE_ENGLISH)

	create_id(role_text, player)
	return 1
