GLOBAL_DATUM_INIT(maz_hatters, /datum/antagonist/maz_hatters, new)

/datum/antagonist/maz_hatters
	id = MODE_BETA7
	role_text = "MTF Maz Hatters - Beta-7 Agent"
	role_text_plural = "MTF Maz Hatters - Beta-7 Agents"
	welcome_text = "As Agent of the Beta-7 taskforce, you only answer to your leader, nobody else."
	antag_text = "You are an <b>anti</b> antagonist! Within the rules, \
		try to save the site and its inhabitants from the ongoing crisis. \
		Try to make sure other players have <i>fun</i>! If you are confused or at a loss, always adminhelp, \
		and before taking extreme actions, please try to also contact the administration! \
		Think through your actions and make the roleplay immersive! <b>Please remember all \
		rules aside from those without explicit exceptions apply to the MTF.</b>"
	leader_welcome_text = "You shouldn't see this"
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

/datum/antagonist/maz_hatters/create_default(var/mob/source)
	var/mob/living/carbon/human/M = ..()
	if(istype(M)) M.age = rand(25,45)

/datum/antagonist/maz_hatters/New()
	..()
	leader_welcome_text = "As leader of Mobile Task Force Beta-7, you answer only to the O5 Council, and have authority to override the Site staff where it is necessary to achieve your mission goals. It is recommended that you attempt to cooperate with the site staff where possible, however."

/datum/antagonist/maz_hatters/greet(datum/mind/player)
	if(!..())
		return
	to_chat(player.current, "The Mobile Task Force works for the SCP Foundation; There is a emergency alert at [station_name()], you are tasked to go and fix the problem.")
	to_chat(player.current, "Mobile Task Force Beta-7 specializes in the acquisition and containment of anomalies exhibiting extreme biological, chemical, or radiological hazards as well as the rapid containment and cleanup of areas affected by such anomalies. This includes the planning and deployment of contingencies for wide-area or pandemic spread of anomalous disease agents or other contagious phenomena.")
	to_chat(player.current, "You should first gear up and discuss a plan with your team. More members may be joining, don't move out before you're ready.")
	usr << 'maps/site19/sounds/music/mtf_theme.ogg'

/datum/antagonist/maz_hatters/equip(var/mob/living/carbon/human/player)
	var/decl/hierarchy/outfit/mtf/beta_7/mazhatters = outfit_by_type(/decl/hierarchy/outfit/mtf/beta_7)
	mazhatters.equip(player)

	player.add_language(LANGUAGE_ENGLISH)

	create_id(role_text, player)
	return 1
