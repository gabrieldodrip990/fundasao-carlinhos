/* << not in game yet
/datum/antagonist/ert/nu_7
	role_text = "MTF Hammer Down - Nu-7 Agent"
	role_text_plural = "MTF Hammer Down - Nu-7 Agents"
	welcome_text = "As Agent of the Nu-7 taskforce, you only answer to your leader, nobody else."
	antag_text = "You are an <b>anti</b> antagonist! Within the rules, \
		try to save the site and its inhabitants from the ongoing crisis. \
		Try to make sure other players have <i>fun</i>! If you are confused or at a loss, always adminhelp, \
		and before taking extreme actions, please try to also contact the administration! \
		Think through your actions and make the roleplay immersive! <b>Please remember all \
		rules aside from those without explicit exceptions apply to the MTF.</b>"
	leader_welcome_text = "You shouldn't see this"

/datum/antagonist/ert/nu_7/greet(datum/mind/player)
	to_chat(player.current, "The Mobile Task Force works for the O5 Council; your job is to contain loose SCPs and eliminate infiltrators. There is a emergency alert at [station_name()], you are tasked to go and fix the problem.")
	to_chat(player.current, "Armed Mobile Task Force Nu-7 is a battalion-strength force consisting of three company-sized elements of special operations infantry forces, a light armored vehicle company, tank platoon, helicopter squadron, chemical-biological-radiological-nuclear (CBRN) platoon, combat engineer platoon, nuclear weapon specialist (NWS) squad, plus additional combat specialist and support personnel. AMTF Nu-7 is based primarily out of Armed Bio-Containment Area-14 and is tasked with responding to incidents involving loss of communication with major Foundation facilities under circumstances wherein a site-wide breach, enemy compromise, or other similarly catastrophic event is suspected.")
	to_chat(player.current, "You should first gear up and discuss a plan with your team. More members may be joining, don't move out before you're ready.")
*/

/datum/antagonist/ert/alpha_1
	role_text = "MTF Red Right Hand - Alpha-1 Agent"
	role_text_plural = "MTF Red Right Hand - Alpha-1 Agents"
	welcome_text = "As Agent of the Alpha-1 taskforce, you only answer to your leader, nobody else."
	antag_text = "You are an <b>anti</b> antagonist! Within the rules, \
		try to save the site and its inhabitants from the ongoing crisis. \
		Try to make sure other players have <i>fun</i>! If you are confused or at a loss, always adminhelp, \
		and before taking extreme actions, please try to also contact the administration! \
		Think through your actions and make the roleplay immersive! <b>Please remember all \
		rules aside from those without explicit exceptions apply to the MTF.</b>"
	leader_welcome_text = "You shouldn't see this"

/datum/antagonist/ert/alpha_1/New()
	..()
	leader_welcome_text = "As leader of Mobile Task Force Alpha-1, you answer ONLY to the O5 Council, you are extreme loyal to the O5 Council and must complete the order at all cost, and have authority and must override the Site staff to achieve your mission goals."

/datum/antagonist/ert/alpha_1/greet(datum/mind/player)
	if(!..())
		return
	to_chat(player.current, "The Mobile Task Force works for the O5 Council; There is a emergency alert at [station_name()], you are tasked to go and fix the problem.")
	to_chat(player.current, "Mobile Task Force Alpha-1 is a task force that reports directly to the O5 Council and is used in situations that require the strictest operational security. The task force consists of the Foundation's best and most loyal operatives, and serves as the O5 Council's special operations unit. Further information regarding MTF Alpha-1 is classified Level 5.")
	to_chat(player.current, "You should first gear up and discuss a plan with your team. More members may be joining, don't move out before you're ready.")

/datum/antagonist/ert/epsilon_9
	role_text = "MTF Fire Eaters - Epsilon-9 Agent"
	role_text_plural = "MTF Fire Eaters - Epsilon-9 Agents"
	welcome_text = "As Agent of the Epsilon-9 taskforce, you only answer to your leader, nobody else."
	antag_text = "You are an <b>anti</b> antagonist! Within the rules, \
		try to save the site and its inhabitants from the ongoing crisis. \
		Try to make sure other players have <i>fun</i>! If you are confused or at a loss, always adminhelp, \
		and before taking extreme actions, please try to also contact the administration! \
		Think through your actions and make the roleplay immersive! <b>Please remember all \
		rules aside from those without explicit exceptions apply to the MTF.</b>"
	leader_welcome_text = "You shouldn't see this"

/datum/antagonist/ert/epsilon_9/New()
	..()
	leader_welcome_text = "As leader of Mobile Task Force Epsilon-9, you answer only to the O5 Council, and have authority to override the Site staff where it is necessary to achieve your mission goals. It is recommended that you attempt to cooperate with the site staff where possible, however."

/datum/antagonist/ert/epsilon_9/greet(datum/mind/player)
	if(!..())
		return
	to_chat(player.current, "The Mobile Task Force works for the SCP Foundation; There is a emergency alert at [station_name()], you are tasked to go and fix the problem.")
	to_chat(player.current, "Epsilon-9 specializes in the use of incendiary weaponry and operations in high-temperature environments.")
	to_chat(player.current, "You should first gear up and discuss a plan with your team. More members may be joining, don't move out before you're ready.")

/datum/antagonist/ert/omega_1
	role_text = "MTF Law's Left Hand - Omega-1 Agent"
	role_text_plural = "MTF Law's Left Hand - Omega-1 Agents"
	welcome_text = "As Agent of the Omega-1 taskforce, you only answer to your leader, nobody else."
	antag_text = "You are an <b>anti</b> antagonist! Within the rules, \
		try to save the site and its inhabitants from the ongoing crisis. \
		Try to make sure other players have <i>fun</i>! If you are confused or at a loss, always adminhelp, \
		and before taking extreme actions, please try to also contact the administration! \
		Think through your actions and make the roleplay immersive! <b>Please remember all \
		rules aside from those without explicit exceptions apply to the MTF.</b>"
	leader_welcome_text = "You shouldn't see this"

/datum/antagonist/ert/omega_1/New()
	..()
	leader_welcome_text = "As leader of Mobile Task Force Omega-1, you answers only to the Ethics Committee, and have authority to override the Site staff where it is necessary to achieve your mission goals. It is recommended that you attempt to cooperate with the site staff where possible, however."

/datum/antagonist/ert/omega_1/greet(datum/mind/player)
	if(!..())
		return
	to_chat(player.current, "The Mobile Task Force works for the SCP Foundationl; There is a emergency alert at [station_name()], you are tasked to go and fix the problem.")
	to_chat(player.current, "Empowered to remove or execute high-ranking Foundation personnel if they are determined to be acting unethically. Answers only to the Ethics Committee; counterpart to the O5's 'Red Right Hand'.")
	to_chat(player.current, "Basicaly, you support the employment of law helpig the Ethics Committee, as the text says, you can execute or remove personnel acting against it.")
	to_chat(player.current, "You should first gear up and discuss a plan with your team. More members may be joining, don't move out before you're ready.")
