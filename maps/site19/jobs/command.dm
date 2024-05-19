/datum/job/site19/captain
	title = "Site Director"
	department = "Command"
	head_position = 1
	department_flag = COM
	selection_color = "#1d1d4f"
	req_admin_notify = 1
	duties = "<big><b>As the Site Director you are responsible for the operations happening in the Site that you manage.<br>You won't have access to SCP's, or the D-Class area.<br> As Site Director, you should worry about making sure all SOP and safety procedures are followed by delegating to the heads of staff.<br><span style = 'color:red'>It is not your job to jump in where necessary! Consistently bad roleplay will be punished under the CoHoS rule!</span></b></big>"
	minimal_player_age = 20
	economic_power = 15
	alt_titles = list("Facility Director")
	ideal_character_age = 50
	outfit_type = /decl/hierarchy/outfit/job/command/facilitydir
	class = CLASS_A
	hud_icon = "hudsitedirector"

	total_positions = 1
	spawn_positions = 1

	access = list()				// see get_access() override
	minimal_access = list()		// see get_access() override

	requirements = list(EXP_TYPE_COMMAND = 1200)

/datum/job/site19/captain/get_access()
	return get_all_site_access()

/datum/job/site19/hop
	title = "Human Resources Officer"
	department = "Command"
	supervisors = "The Site Director"
	department_flag = COM|CIV|BUR|SRV
	selection_color = "#2f2f7f"
	head_position = 1
	total_positions = 1
	spawn_positions = 1
	duties = "<big><b>As the Human Resources Officer, you're the right hand of the Site Director.<br>You can go to places he, or she couldn't, but still won't have access to SCP's, or the D-Class Cells.<br>Your job is to be the Site Director's eyes and ears, as well as being in charge of personnel outside of the Security branch.<br>You reserve the right to promote and demote people in cases of emergencies, otherwise, approval of the Site Director is needed.<br><span style = 'color:red'>It is not your job to jump in where necessary! Bad roleplay will be punished!</span></b></big>"
	req_admin_notify = 1
	economic_power = 10
	minimal_player_age = 15
	ideal_character_age = 45
	outfit_type = /decl/hierarchy/outfit/job/command/headofhr
	class = CLASS_A
	hud_icon = "hudhumanresources"
	alt_titles = list("Head of Personnel")
	requirements = list(EXP_TYPE_COMMAND = 120, EXP_TYPE_BUR = 300)

	access = list(
		ACCESS_HOP,
		ACCESS_ADMIN_LVL1,
		ACCESS_ADMIN_LVL2,
		ACCESS_ADMIN_LVL3,
		ACCESS_ADMIN_LVL4,
		ACCESS_COM_COMMS,
		ACCESS_CHANGE_IDS,
		ACCESS_CIV_COMMS,
		ACCESS_KEYAUTH,
		ACCESS_CHAPEL_OFFICE
	)

	minimal_access = list(
		ACCESS_HOP,
		ACCESS_ADMIN_LVL1,
		ACCESS_ADMIN_LVL2,
		ACCESS_ADMIN_LVL3,
		ACCESS_ADMIN_LVL4,
		ACCESS_COM_COMMS,
		ACCESS_CHANGE_IDS,
		ACCESS_CIV_COMMS,
		ACCESS_KEYAUTH,
		ACCESS_CHAPEL_OFFICE
	)
// MISC
/datum/job/site19/ethicsliaison
	title = "Ethics Committee Liaison"
	department = "Civilian"
	selection_color = "#2f2f7f"
	department_flag = COM|BUR
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Ethics Committee"
	economic_power = 4
	minimal_player_age = 5
	ideal_character_age = 30
	outfit_type = /decl/hierarchy/outfit/job/civ/o5rep
	requirements = list(EXP_TYPE_BUR = 300)
	class = CLASS_B
	hud_icon = "hud05rep"
	access = list(
		ACCESS_ADMIN_LVL1,
		ACCESS_ADMIN_LVL2,
		ACCESS_ADMIN_LVL3,
		ACCESS_ADMIN_LVL4,
		ACCESS_ADMIN_LVL5
	)

	minimal_access = list(
		ACCESS_ADMIN_LVL1,
		ACCESS_ADMIN_LVL2,
		ACCESS_ADMIN_LVL3,
		ACCESS_ADMIN_LVL4,
		ACCESS_ADMIN_LVL5
	)