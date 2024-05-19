/datum/job/site19/guardcommander
	title = "Guard Commander"
	head_position = 1
	department = "Command"
	selection_color = "#8e2929"
	department_flag = SEC|COM
	duties = "<big><b>As the Guard Commander, you have direct say over the Security department. you should jump in where necessary or requested. You are to speak with your Sergents oftenly, and order new guards they duties, or where it's needed mostly.</b></big>"
	supervisors = "the Site Director"
	req_admin_notify = 1
	economic_power = 10
	requirements = list("Guard Sergeant" = 240)
	total_positions = 1
	spawn_positions = 1
	alt_titles = list("Security Chief", "Head of Security")
	minimal_player_age = 15
	ideal_character_age = 35
	outfit_type = /decl/hierarchy/outfit/job/command/cos
	class = CLASS_A
	hud_icon = "hudguardcommander"

	access = list(
		ACCESS_COM_COMMS,
		ACCESS_SEC_COMMS,
		ACCESS_SECURITY_LVL1,
		ACCESS_SECURITY_LVL2,
		ACCESS_SECURITY_LVL3,
		ACCESS_SECURITY_LVL4,
		ACCESS_SECURITY_LVL5,
		ACCESS_ADMIN_LVL1,
		ACCESS_ADMIN_LVL2,
		ACCESS_ADMIN_LVL3,
		ACCESS_ADMIN_LVL4,
		ACCESS_MEDICAL_LVL1,
		ACCESS_SCIENCE_LVL1,
		ACCESS_SCIENCE_LVL2,
		ACCESS_SCIENCE_LVL3,
		ACCESS_SCIENCE_LVL4,
		ACCESS_KEYAUTH,
		ACCESS_CHAPEL_OFFICE
	)
	minimal_access = list(
		ACCESS_COM_COMMS,
		ACCESS_SEC_COMMS,
		ACCESS_SECURITY_LVL1,
		ACCESS_SECURITY_LVL2,
		ACCESS_SECURITY_LVL3,
		ACCESS_SECURITY_LVL4,
		ACCESS_SECURITY_LVL5,
		ACCESS_ADMIN_LVL1,
		ACCESS_ADMIN_LVL2,
		ACCESS_ADMIN_LVL3,
		ACCESS_ADMIN_LVL4,
		ACCESS_MEDICAL_LVL1,
		ACCESS_SCIENCE_LVL1,
		ACCESS_SCIENCE_LVL2,
		ACCESS_SCIENCE_LVL3,
		ACCESS_SCIENCE_LVL4,
		ACCESS_KEYAUTH,
		ACCESS_CHAPEL_OFFICE
	)

	min_skill = list(
	    SKILL_COMBAT      = SKILL_BASIC,
	    SKILL_WEAPONS     = SKILL_EXPERIENCED,
	    SKILL_HAULING     = SKILL_TRAINED,
	    SKILL_FORENSICS   = SKILL_TRAINED
	)

	max_skill = list(
		SKILL_COMBAT      = SKILL_MASTER,
	    SKILL_WEAPONS     = SKILL_MASTER,
	    SKILL_FORENSICS   = SKILL_MASTER
	)
	skill_points = 28

	software_on_spawn = list(/datum/computer_file/program/digitalwarrant,
							 /datum/computer_file/program/camera_monitor)

//##
//ZONE COMMANDERS
//##

/datum/job/site19/officer
	title = "Guard Sergeant"
	department = "Security Personnel"
	selection_color = "#601c1c"
	department_flag = SEC
	total_positions = 2
	spawn_positions = 2
	balance_limited = TRUE
	//duties = "<big><b>As the Guard you have more access than a Junior Guard, but do not control them. You are to guard tests and SCP's in the zone you spawned in. If in doubt, ask your Zone or Guard Commander. You also have the duty of guarding the D-Class Cell Blocks. You should not leave your zone under usual SoP.</b></big>"
	supervisors = "the Guard Commander"
	economic_power = 4
	requirements = list(EXP_TYPE_LCZ = 480)
	alt_titles = list("Senior Containment Response Agent", "Containment Response Sergeant", "Senior Combat Medic" = /decl/hierarchy/outfit/job/security/lcz_medic, "Riot Control Sergeant" = /decl/hierarchy/outfit/job/security/lcz_riot, "Senior Riot Control Agent" = /decl/hierarchy/outfit/job/security/lcz_riot, "Senior Agent")
	minimal_player_age = 5
	ideal_character_age = 25
	outfit_type = /decl/hierarchy/outfit/job/security/lcz_sergeant
	class = CLASS_C
	hud_icon = "hudlczsarge"

	access = list(
		ACCESS_SEC_COMMS,
		ACCESS_SECURITY_LVL1,
		ACCESS_SECURITY_LVL2,
		ACCESS_SCIENCE_LVL1,
		ACCESS_SCIENCE_LVL2,
		ACCESS_DCLASS_KITCHEN,
		ACCESS_DCLASS_BOTANY,
		ACCESS_DCLASS_MINING,
		ACCESS_DCLASS_JANITORIAL,
		ACCESS_DCLASS_MEDICAL
	)
	minimal_access = list(
		ACCESS_SEC_COMMS,
		ACCESS_SECURITY_LVL1,
		ACCESS_SECURITY_LVL2,
		ACCESS_SCIENCE_LVL1,
		ACCESS_SCIENCE_LVL2,
		ACCESS_DCLASS_KITCHEN,
		ACCESS_DCLASS_BOTANY,
		ACCESS_DCLASS_MINING,
		ACCESS_DCLASS_JANITORIAL,
		ACCESS_DCLASS_MEDICAL
	)
	min_skill = list(
	    SKILL_COMPUTER    = SKILL_BASIC,
	    SKILL_HAULING     = SKILL_TRAINED,
	    SKILL_COMBAT      = SKILL_TRAINED,
	    SKILL_WEAPONS     = SKILL_TRAINED,
	    SKILL_FORENSICS   = SKILL_BASIC
	)

	max_skill = list(
		SKILL_COMBAT      = SKILL_EXPERIENCED,
	    SKILL_WEAPONS     = SKILL_EXPERIENCED,
	    SKILL_FORENSICS   = SKILL_TRAINED
	)
	skill_points = 21

/datum/job/site19/guard
	title = "Guard"
	department = "Security Personnel"
	selection_color = "#601c1c"
	department_flag = SEC
	total_positions = 8
	spawn_positions = 8
	duties = "<big><b>As a Guard, You must protect the Site From potential risk, you are the front line soldier, guard SCP's Cells and Support the Security of Tests. If in doubt, ask your Sergent or Guard Commander. You also have the duty of guarding the D-Class Cell Blocks.</b></big>"
	supervisors = "the Sergeants and Guard Commander"
	economic_power = 4
	requirements = list("Class D" = 30)
	alt_titles = list("Containment Response Agent", "Containment Response Guard", "Combat Medic" = /decl/hierarchy/outfit/job/security/lcz_medic, "Riot Control Guard" = /decl/hierarchy/outfit/job/security/lcz_riot, "Riot Control Agent" = /decl/hierarchy/outfit/job/security/lcz_riot, "Agent")
	minimal_player_age = 0
	ideal_character_age = 25
	balance_limited = TRUE
	outfit_type = /decl/hierarchy/outfit/job/security/lcz_guard
	class = CLASS_C
	hud_icon = "hudlczsenior"

	access = list(
		ACCESS_SEC_COMMS,
		ACCESS_SECURITY_LVL1,
		ACCESS_SECURITY_LVL2,
		ACCESS_SCIENCE_LVL1,
		ACCESS_SCIENCE_LVL2,
		ACCESS_DCLASS_KITCHEN,
		ACCESS_DCLASS_BOTANY,
		ACCESS_DCLASS_MINING,
		ACCESS_DCLASS_JANITORIAL,
		ACCESS_DCLASS_MEDICAL
	)
	minimal_access = list(
		ACCESS_SEC_COMMS,
		ACCESS_SECURITY_LVL1,
		ACCESS_SECURITY_LVL2,
		ACCESS_SCIENCE_LVL1,
		ACCESS_SCIENCE_LVL2,
		ACCESS_DCLASS_KITCHEN,
		ACCESS_DCLASS_BOTANY,
		ACCESS_DCLASS_MINING,
		ACCESS_DCLASS_JANITORIAL,
		ACCESS_DCLASS_MEDICAL
	)
	min_skill = list(
	    SKILL_COMPUTER    = SKILL_BASIC,
	    SKILL_HAULING     = SKILL_TRAINED,
	    SKILL_COMBAT      = SKILL_TRAINED,
	    SKILL_WEAPONS     = SKILL_BASIC,
	    SKILL_FORENSICS   = SKILL_BASIC
	)

	max_skill = list(
		SKILL_COMBAT      = SKILL_EXPERIENCED,
	    SKILL_WEAPONS     = SKILL_EXPERIENCED,
	    SKILL_FORENSICS   = SKILL_TRAINED
	)
	skill_points = 17

/datum/job/site19/raisa
	title = "RAISA Agent"
	department = "Security Personnel"
	selection_color = "#601c1c"
	department_flag = SEC|BUR
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Guard Commander"
	economic_power = 5
	requirements = list(EXP_TYPE_COMMAND = 120, EXP_TYPE_SECURITY = 180, EXP_TYPE_ENGINEERING = 90, EXP_TYPE_BUR = 60)
	alt_titles = list()
	minimal_player_age = 7
	ideal_character_age = 25
	outfit_type = /decl/hierarchy/outfit/job/security/raisa_agent
	class = CLASS_B
	hud_icon = "hudraisa"

	access = list(
		ACCESS_ENG_COMMS,
		ACCESS_SEC_COMMS,
		ACCESS_SCIENCE_LVL1,
		ACCESS_MEDICAL_LVL1,
		ACCESS_ENGINEERING_LVL1,
		ACCESS_ENGINEERING_LVL2,
		ACCESS_SECURITY_LVL1,
		ACCESS_SECURITY_LVL2,
		ACCESS_SECURITY_LVL3,
		ACCESS_ADMIN_LVL1,
		ACCESS_ADMIN_LVL2,
		ACCESS_ADMIN_LVL3,
		ACCESS_NETWORK
	)
	minimal_access = list(
		ACCESS_ENG_COMMS,
		ACCESS_SEC_COMMS,
		ACCESS_SCIENCE_LVL1,
		ACCESS_MEDICAL_LVL1,
		ACCESS_ENGINEERING_LVL1,
		ACCESS_ENGINEERING_LVL2,
		ACCESS_SECURITY_LVL1,
		ACCESS_SECURITY_LVL2,
		ACCESS_SECURITY_LVL3,
		ACCESS_ADMIN_LVL1,
		ACCESS_ADMIN_LVL2,
		ACCESS_ADMIN_LVL3,
		ACCESS_NETWORK
	)
	min_skill = list(
	    SKILL_COMPUTER    = SKILL_EXPERIENCED,
	    SKILL_FORENSICS   = SKILL_TRAINED
	)

	max_skill = list(
	    SKILL_COMPUTER    = SKILL_MASTER,
	    SKILL_FORENSICS   = SKILL_EXPERIENCED
	)
	skill_points = 17

	roleplay_difficulty = "Medium - Hard"
	mechanical_difficulty = "Medium"
	duties = "Track and prevent potential espionage. Control access to classified information. Protect SCP databases from threats, both mundane and anomalous."
