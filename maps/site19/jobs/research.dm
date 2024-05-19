/datum/job/site19/scientist
	title = "Researcher"
	department = "Science"
	department_flag = SCI
	total_positions = 8
	spawn_positions = 8
	selection_color = "#633d63"
	supervisors = "the Senior Researchers and Research Director"
	economic_power = 4
	requirements = list(EXP_TYPE_SCIENCE = 60)
	minimal_player_age = 3
	ideal_character_age = 24
	outfit_type = /decl/hierarchy/outfit/job/science/scientist
	class = CLASS_C
	hud_icon = "hudscientist"

	access = list(
	ACCESS_SCI_COMMS,
	ACCESS_RESEARCH,
	ACCESS_SCIENCE_LVL1,
	ACCESS_SCIENCE_LVL2,
	ACCESS_SCIENCE_LVL3
	)
	minimal_access = list(
	ACCESS_SCI_COMMS,
	ACCESS_RESEARCH,
	ACCESS_SCIENCE_LVL1,
	ACCESS_SCIENCE_LVL2,
	ACCESS_SCIENCE_LVL3
	)

	min_skill = list(
	    SKILL_COMPUTER    = SKILL_BASIC,
	    SKILL_DEVICES     = SKILL_BASIC,
	    SKILL_SCIENCE     = SKILL_EXPERIENCED
	)

	max_skill = list(
		SKILL_ANATOMY     = SKILL_MASTER,
	    SKILL_DEVICES     = SKILL_MASTER,
	    SKILL_SCIENCE     = SKILL_MASTER
	)

	skill_points = 15

/datum/job/site19/seniorscientist
	title = "Senior Researcher"
	department = "Science"
	department_flag = SCI
	selection_color = "#633d63"
	total_positions = 3
	spawn_positions = 3
	supervisors = "the Research Director"
	economic_power = 4
	requirements = list(EXP_TYPE_SCIENCE = 480)
	minimal_player_age = 7
	ideal_character_age = 30
	outfit_type = /decl/hierarchy/outfit/job/science/seniorscientist
	class = CLASS_B
	hud_icon = "hudseniorresearcher"

	access = list(
		ACCESS_SCI_COMMS,
		ACCESS_SCIENCE_LVL1,
		ACCESS_SCIENCE_LVL2,
		ACCESS_SCIENCE_LVL3,
		ACCESS_SCIENCE_LVL4,
		ACCESS_SECURITY_LVL1,
		ACCESS_RESEARCH,
		ACCESS_ROBOTICS
	)
	minimal_access = list(
		ACCESS_SCI_COMMS,
		ACCESS_SCIENCE_LVL1,
		ACCESS_SCIENCE_LVL2,
		ACCESS_SCIENCE_LVL3,
		ACCESS_SCIENCE_LVL4,
		ACCESS_SECURITY_LVL1,
		ACCESS_RESEARCH,
		ACCESS_ROBOTICS
	)

	min_skill = list(
	    SKILL_COMPUTER    = SKILL_BASIC,
	    SKILL_DEVICES     = SKILL_TRAINED,
	    SKILL_SCIENCE     = SKILL_EXPERIENCED
	)

	max_skill = list(
		SKILL_ANATOMY     = SKILL_MASTER,
	    SKILL_DEVICES     = SKILL_MASTER,
	    SKILL_SCIENCE     = SKILL_MASTER
	)

	skill_points = 20

/datum/job/site19/rd
	title = "Research Director"
	department = "Science"
	department_flag = COM|SCI
	selection_color = "#ad6bad"
	head_position = 1
	total_positions = 1
	spawn_positions = 1
	economic_power = 15
	requirements = list(EXP_TYPE_SCIENCE = 900)
	req_admin_notify = 1
	supervisors = "the Site Director"
	alt_titles = list("Chief Science Officer", "Head Researcher")
	minimal_player_age = 20
	ideal_character_age = 40
	spawn_positions = 6
	outfit_type = /decl/hierarchy/outfit/job/command/researchdirector
	class = CLASS_A
	hud_icon = "hudchiefscienceofficer"

	access = list(
		ACCESS_COM_COMMS,
		ACCESS_SCI_COMMS,
		ACCESS_SCIENCE_LVL5,
		ACCESS_SCIENCE_LVL4,
		ACCESS_SCIENCE_LVL3,
		ACCESS_SCIENCE_LVL2,
		ACCESS_SCIENCE_LVL1,
		ACCESS_SECURITY_LVL1,
		ACCESS_MEDICAL_LVL1,
		ACCESS_ADMIN_LVL1,
		ACCESS_ADMIN_LVL2,
		ACCESS_ADMIN_LVL3,
		ACCESS_ADMIN_LVL4,
		ACCESS_KEYAUTH,
		ACCESS_RESEARCH,
		ACCESS_ROBOTICS
	)
	minimal_access = list(
		ACCESS_COM_COMMS,
		ACCESS_SCI_COMMS,
		ACCESS_SCIENCE_LVL5,
		ACCESS_SCIENCE_LVL4,
		ACCESS_SCIENCE_LVL3,
		ACCESS_SCIENCE_LVL2,
		ACCESS_SCIENCE_LVL1,
		ACCESS_SECURITY_LVL1,
		ACCESS_MEDICAL_LVL1,
		ACCESS_ADMIN_LVL1,
		ACCESS_ADMIN_LVL2,
		ACCESS_ADMIN_LVL3,
		ACCESS_ADMIN_LVL4,
		ACCESS_KEYAUTH,
		ACCESS_RESEARCH,
		ACCESS_ROBOTICS
	)

	min_skill = list(
	    SKILL_COMPUTER    = SKILL_TRAINED,
	    SKILL_DEVICES     = SKILL_TRAINED,
	    SKILL_SCIENCE     = SKILL_EXPERIENCED
	)

	max_skill = list(
		SKILL_ANATOMY     = SKILL_MASTER,
	    SKILL_DEVICES     = SKILL_MASTER,
	    SKILL_SCIENCE     = SKILL_MASTER
	)

	skill_points = 25
