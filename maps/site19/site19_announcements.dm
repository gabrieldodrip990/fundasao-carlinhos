/datum/map/site19
	emergency_shuttle_docked_message = "Attention all personnel: The emergency train has arrived. You have %ETD% before the train departs."
	emergency_shuttle_leaving_dock = "Attention all personnel: The emergency train has left the facility, and will be arriving at off-site rendezvous point alpha in %ETA%."

	emergency_shuttle_called_message = "Attention all personnel: Code Gamma initiated, emergency evacuation procedures are now in effect. The emergency train will arrive in %ETA%"
	emergency_shuttle_called_sound = sound('sounds/AI/torch/abandonship.ogg', volume = 45)

	emergency_shuttle_recall_message = "Attention all personnel: Emergency evacuation sequence aborted. Return to normal operating conditions."

	command_report_sound = sound('sounds/AI/announcer/commandreport.ogg', volume = 45)

	grid_check_message = "Abnormal activity detected in the site's power network. As a precaution, the site's power must be shut down for an indefinite duration."
	grid_check_sound = sound('sounds/AI/announcer/poweroff.ogg', volume = 150)

	grid_restored_message = "Site power will be restored at this time"
	grid_restored_sound = sound('sounds/AI/announcer/poweron.ogg', volume = 150)

	radiation_detected_message = "Radioactive object class SAFE containment breach detected. Please report to the medical bay if you feel strange."
	radiation_detected_sound = sound('sounds/AI/torch/radiation.ogg', volume = 45)

	space_time_anomaly_sound = sound('sounds/AI/torch/spanomalies.ogg', volume = 45)

	unidentified_lifesigns_message = "Unidentified lifesigns detected within fifteen miles of %STATION_NAME%, security please stand-by."
	unidentified_lifesigns_sound = sound('sounds/AI/torch/aliens.ogg', volume = 45)

//	xenomorph_spawn_sound = sound('sounds/AI/torch/aliens.ogg', volume = 45)

	electrical_storm_moderate_sound = sound('sounds/AI/torch/electricalstormmoderate.ogg', volume = 45)
	electrical_storm_major_sound = sound('sounds/AI/torch/electricalstormmajor.ogg', volume = 45)
/*
/datum/map/torch/level_x_biohazard_sound(bio_level)
	switch(bio_level)
		if(7)
			return sound('sounds/AI/torch/outbreak7.ogg', volume = 45)
		else
			return sound('sounds/AI/torch/outbreak5.ogg', volume = 45)
*/
