/datum/job/site19/cmo
	title = "Chief Medical Officer"
	supervisors = "the Site Director"
	economic_power = 10
	req_admin_notify = 1
	minimal_player_age = 15
	ideal_character_age = 48
	alt_titles = list("Medical Director")
	outfit_type = /decl/hierarchy/outfit/job/command/cmo
	class = CLASS_A
	hud_icon = "hudchiefmedicalofficer"
	department = "Medical"
	department_flag = MED|COM
	selection_color = "#026865"
	requirements = list(EXP_TYPE_MEDICAL = 1200)

	head_position = 1
	total_positions = 1
	spawn_positions = 1

	access = list(
		ACCESS_COM_COMMS,
		ACCESS_MED_COMMS,
		ACCESS_MEDICAL_EQUIP,
		ACCESS_KEYAUTH,
		ACCESS_MEDICAL_LVL1,
		ACCESS_MEDICAL_LVL2,
		ACCESS_MEDICAL_LVL3,
		ACCESS_MEDICAL_LVL4,
		ACCESS_MEDICAL_LVL5,
		ACCESS_SECURITY_LVL1,
		ACCESS_SCIENCE_LVL1,
		ACCESS_ADMIN_LVL1
	)
	minimal_access = list(
		ACCESS_COM_COMMS,
		ACCESS_MED_COMMS,
		ACCESS_MEDICAL_EQUIP,
		ACCESS_KEYAUTH,
		ACCESS_MEDICAL_LVL1,
		ACCESS_MEDICAL_LVL2,
		ACCESS_MEDICAL_LVL3,
		ACCESS_MEDICAL_LVL4,
		ACCESS_MEDICAL_LVL5,
		ACCESS_SECURITY_LVL1,
		ACCESS_SCIENCE_LVL1,
		ACCESS_ADMIN_LVL1
	)
	min_skill = list(
	    SKILL_MEDICAL     = SKILL_EXPERIENCED,
		SKILL_ANATOMY     = SKILL_EXPERIENCED,
	    SKILL_CHEMISTRY   = SKILL_BASIC,
		SKILL_DEVICES     = SKILL_TRAINED
	)

	max_skill = list(
		SKILL_MEDICAL     = SKILL_MASTER,
	    SKILL_ANATOMY     = SKILL_MASTER,
	    SKILL_CHEMISTRY   = SKILL_MASTER
	)
	skill_points = 28

/datum/job/site19/chemist
	title = "Chemist"
	department = "Medical"
	department_flag = MED
	minimal_player_age = 3
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Chief Medical Officer"
	selection_color = "#013d3b"
	economic_power = 4
	alt_titles = list("Pharmacist")
	ideal_character_age = 30
	outfit_type = /decl/hierarchy/outfit/job/medical/chemist
	class = CLASS_C
	hud_icon = "hudpharmacist"

	access = list(
		ACCESS_MED_COMMS,
		ACCESS_MEDICAL_EQUIP,
		ACCESS_MEDICAL_LVL1,
		ACCESS_MEDICAL_LVL2
	)
	minimal_access = list(
		ACCESS_MED_COMMS,
		ACCESS_MEDICAL_EQUIP,
		ACCESS_MEDICAL_LVL1,
		ACCESS_MEDICAL_LVL2
	)
	min_skill = list(
	    SKILL_MEDICAL     = SKILL_TRAINED,
	    SKILL_ANATOMY     = SKILL_TRAINED,
	    SKILL_CHEMISTRY   = SKILL_EXPERIENCED,
		SKILL_DEVICES     = SKILL_TRAINED
	)

	max_skill = list(
		SKILL_MEDICAL     = SKILL_MASTER,
	    SKILL_ANATOMY     = SKILL_MASTER,
	    SKILL_CHEMISTRY   = SKILL_MASTER
	)
	skill_points = 24

/datum/job/site19/medicaldoctor
	title = "Medical Doctor"
	department = "Medical"
	department_flag = MED
	selection_color = "#013d3b"
	total_positions = 5
	spawn_positions = 5
	supervisors = "the Chief Medical Officer"
	ideal_character_age = 26
	minimal_player_age = 3
	economic_power = 5
	alt_titles = list("Coroner", "Surgeon")
	outfit_type = /decl/hierarchy/outfit/job/medical/medicaldoctor
	class = CLASS_C
	hud_icon = "hudphysician"

	access = list(
		ACCESS_MED_COMMS,
		ACCESS_MEDICAL_EQUIP,
		ACCESS_MEDICAL_LVL1,
		ACCESS_MEDICAL_LVL2,
		ACCESS_MEDICAL_LVL3,
		ACCESS_SECURITY_LVL1,
		ACCESS_SCIENCE_LVL1
	)
	minimal_access = list(
		ACCESS_MED_COMMS,
		ACCESS_MEDICAL_EQUIP,
		ACCESS_MEDICAL_LVL1,
		ACCESS_MEDICAL_LVL2,
		ACCESS_MEDICAL_LVL3,
		ACCESS_SECURITY_LVL1,
		ACCESS_SCIENCE_LVL1
	)
	min_skill = list(
	    SKILL_MEDICAL     = SKILL_TRAINED,
	    SKILL_ANATOMY     = SKILL_TRAINED,
	    SKILL_CHEMISTRY   = SKILL_TRAINED,
		SKILL_DEVICES     = SKILL_TRAINED
	)

	max_skill = list(
		SKILL_MEDICAL     = SKILL_MASTER,
	    SKILL_ANATOMY     = SKILL_MASTER,
	    SKILL_CHEMISTRY   = SKILL_MASTER
	)
	skill_points = 27

/datum/job/site19/emt
	title = "Emergency Medical Technician"
	department = "Medical"
	department_flag = MED
	selection_color = "#013d3b"
	total_positions = 4
	spawn_positions = 4
	ideal_character_age = 40
	economic_power = 5
	requirements = list(EXP_TYPE_MEDICAL = 120)
	duties = "<big><b>As the EMT it is your job to man the medical post near the Class D cell block, and treat any injuries there of the guards or Class D's. You only have limited supplies, so it's best to make them count.</b></big>"
	supervisors = "the Chief Medical Officer"
	outfit_type = /decl/hierarchy/outfit/job/medical/emt
	class = CLASS_C
	hud_icon = "hudemt"

	access = list(
		ACCESS_MED_COMMS,
		ACCESS_MEDICAL_EQUIP,
		ACCESS_SECURITY_LVL1,
		ACCESS_SCIENCE_LVL1,
		ACCESS_ENGINEERING_LVL1,
		ACCESS_ADMIN_LVL1,
		ACCESS_MEDICAL_LVL1,
		ACCESS_MEDICAL_LVL2
	)
	minimal_access = list(
		ACCESS_MED_COMMS,
		ACCESS_MEDICAL_EQUIP,
		ACCESS_SECURITY_LVL1,
		ACCESS_SCIENCE_LVL1,
		ACCESS_ENGINEERING_LVL1,
		ACCESS_ADMIN_LVL1,
		ACCESS_MEDICAL_LVL1,
		ACCESS_MEDICAL_LVL2
	)

	min_skill = list(
	    SKILL_MEDICAL     = SKILL_TRAINED,
	    SKILL_ANATOMY     = SKILL_TRAINED,
	    SKILL_CHEMISTRY   = SKILL_BASIC,
		SKILL_DEVICES     = SKILL_TRAINED
	)

	max_skill = list(
		SKILL_MEDICAL     = SKILL_MASTER,
	    SKILL_ANATOMY     = SKILL_MASTER,
	    SKILL_CHEMISTRY   = SKILL_MASTER
	)
	skill_points = 20
