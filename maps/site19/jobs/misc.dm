/datum/job/site19
	title = "Site-19 Base Job"

/datum/job/site19/classd
	title = "Class D"
	department = "Civilian"
	selection_color = "#E55700"
	economic_power = 1
	total_positions = 999
	spawn_positions = 999
	duties = "<big><b>As a Class D Foundation Employee, you are most likely a former convict who faced a life sentence or the death penalty. You are extremely grateful to have been offered the chance to participate in the Foundation's rapid rehabilitation program, at a facility which aims to release you into the free world in just 30 days.<br> Find a way to show you're ready to re-integrate into society: work the kitchens, cleaning or volunteer yourself as a participant in scientific studies.<br> <span style = 'color:red'>REMEMBER!</span> Aviso do Cachorro11, aqui tinha um negocio sobre regra e essas bosta, mas simplesmente: se tu for querer fazer riot, pergunta para um ADM primeiro, ok? <br>IMPORTANT! Do not try to break out of your cell at game start. You will break your only way out!</b></big>"
	supervisors = "all Foundation Personnel"
	access = list()
	minimal_access = list()
	outfit_type = /decl/hierarchy/outfit/job/civ/classd
	class = CLASS_D
	hud_icon = "huddclass"
	var/static/list/used_numbers_19 = list()

	max_skill = list(
		SKILL_COMBAT = SKILL_TRAINED,
		SKILL_WEAPONS = SKILL_TRAINED
	)

/datum/job/site19/classd/equip(mob/living/carbon/human/H)
	H.fully_replace_character_name(random_name(H.gender, H.species.name))
	. = ..()
	var/r = rand(100,9000)
	while (used_numbers_19.Find(r))
		r = rand(100,9000)
	used_numbers_19 += r
	if(istype(H.wear_id, /obj/item/card/id))
		var/obj/item/card/id/ID = H.wear_id
		ID.registered_name = "D-[used_numbers_19[used_numbers_19.len]]"

//Office Worker

/datum/job/site19/officeworker
	title = "Foundation Personnel"
	department = "Civilian"
	department_flag = CIV|BUR
	total_positions = 100
	spawn_positions = 100
	minimal_player_age = 10
	supervisors = "administrative staff"
	economic_power = 2
	minimal_player_age = 5
	ideal_character_age = 30
	alt_titles = list("Office Worker", "Administrative Assistant", "Accountant", "Auditor", "Secretary")
	outfit_type = /decl/hierarchy/outfit/job/civ/officeworker
	class = CLASS_C
	hud_icon = "hudcrewman"

	access = list(
		ACCESS_CIV_COMMS,
		ACCESS_ADMIN_LVL1,
		ACCESS_SCIENCE_LVL1,
		ACCESS_SCIENCE_LVL2,
		ACCESS_MEDICAL_LVL1,
		ACCESS_MEDICAL_LVL2,
	)

	minimal_access = list(
		ACCESS_CIV_COMMS,
		ACCESS_ADMIN_LVL1,
		ACCESS_SCIENCE_LVL1,
		ACCESS_SCIENCE_LVL2,
		ACCESS_MEDICAL_LVL1,
		ACCESS_MEDICAL_LVL2,
	)

// MISC JOBS

/datum/job/site19/janitor
	title = "Janitor"
	department = "Civilian"
	department_flag = CIV|SRV
	selection_color = "#515151"
	total_positions = 3
	spawn_positions = 3
	supervisors = "the Human Resources Officer"
	ideal_character_age = 16
	alt_titles = list("Interior caretaker")
	outfit_type = /decl/hierarchy/outfit/job/civ/janitor
	class = CLASS_C
	hud_icon = "hudsanitationtechnician"

	access = list(
		ACCESS_CIV_COMMS,
		ACCESS_SCIENCE_LVL1,
		ACCESS_MEDICAL_LVL1,
		ACCESS_DCLASS_JANITORIAL,
		ACCESS_DCLASS_MEDICAL
		)
	minimal_access = list(
		ACCESS_CIV_COMMS,
		ACCESS_SCIENCE_LVL1,
		ACCESS_MEDICAL_LVL1,
		ACCESS_DCLASS_JANITORIAL,
		ACCESS_DCLASS_MEDICAL
		)
	min_skill = list(
		SKILL_HAULING = SKILL_BASIC
	)