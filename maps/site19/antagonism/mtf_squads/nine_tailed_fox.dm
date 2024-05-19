/datum/antagonist/ert/greet(datum/mind/player)
	if(!..())
		return
	to_chat(player.current, "The Mobile Task Force works for the SCP Foundation; There is a emergency alert at [station_name()], you are tasked to go and fix the problem.")
	to_chat(player.current, "Mobile Task Force Epsilon-11 handles internal security for the SCP Foundation, under oversight by MTF Alpha-1. They are a special ops force deployed to Foundation Sites when standard protocols fail and multiple breaches are imminent. As such, most of their operations are classified.")
	to_chat(player.current, "You should first gear up and discuss a plan with your team. More members may be joining, don't move out before you're ready.")
	usr << 'maps/site19/sounds/music/mtf_theme.ogg'