#define NETWORK_ENGINE "Engineering Network"
#define NETWORK_ENTRANCE "Entrance Zone Network"
#define NETWORK_LCZ "Light Containment Zone Network"
#define NETWORK_LLCZ "Lower Light Containment Zone Network"
#define NETWORK_HCZ "Heavy Containment Zone Network"
#define NETWORK_513 "SCP-513 CCTV Network"
#define NETWORK_049 "SCP-049 CCTV Network"
#define NETWORK_106 "SCP-106 CCTV Network"
#define NETWORK_173 "SCP-173 CCTV Network"
#define NETWORK_012 "SCP-012 CCTV Network"
#define NETWORK_035 "SCP-035 CCTV Network"
#define NETWORK_343 "SCP-343 CCTV Network"
#define NETWORK_895 "SCP-895 CCTV Network (CAUTION!)"
#define NETWORK_RESWING "Research CCTV Network"
/datum/map/site19/get_network_access(network)
	switch(network)
		if(NETWORK_ENGINE)
			return ACCESS_SECURITY_LVL1
		if(NETWORK_ENTRANCE)
			return ACCESS_SECURITY_LVL1
		if(NETWORK_LCZ)
			return ACCESS_SECURITY_LVL1
		if(NETWORK_LLCZ)
			return ACCESS_SECURITY_LVL1
		if(NETWORK_HCZ)
			return ACCESS_SECURITY_LVL1
		if(NETWORK_513)
			return ACCESS_SCIENCE_LVL1
		if(NETWORK_049)
			return ACCESS_SCIENCE_LVL1
		if(NETWORK_106)
			return ACCESS_SCIENCE_LVL1
		if(NETWORK_173)
			return ACCESS_SCIENCE_LVL1
		if(NETWORK_035)
			return ACCESS_SCIENCE_LVL1
		if(NETWORK_343)
			return ACCESS_SCIENCE_LVL1
		if(NETWORK_012)
			return ACCESS_SCIENCE_LVL1
		if(NETWORK_895)
			return ACCESS_SCIENCE_LVL3
		if(NETWORK_RESWING)
			return ACCESS_SCIENCE_LVL1
	return get_shared_network_access(network) || ..()

/datum/map/site19
	// Networks that will show up as options in the camera monitor program
	station_networks = list(
		NETWORK_ENGINE,
		NETWORK_ENTRANCE,
		NETWORK_RESWING,
		NETWORK_LCZ,
		NETWORK_LLCZ,
		NETWORK_HCZ,
		NETWORK_513,
		NETWORK_049,
		NETWORK_106,
		NETWORK_173,
		NETWORK_012,
		NETWORK_895,
		NETWORK_035,
		NETWORK_343
	)

//
// Cameras
//

// Networks
/obj/machinery/camera/network/scp173
	network = list(NETWORK_173)

/obj/machinery/camera/network/scp012
	network = list(NETWORK_012)

/obj/machinery/camera/network/scp106
	network = list(NETWORK_106)

/obj/machinery/camera/network/scp049
	network = list(NETWORK_049)

/obj/machinery/camera/network/scp513
	network = list(NETWORK_513)

/obj/machinery/camera/network/scp035
	network = list(NETWORK_035)

/obj/machinery/camera/network/scp343
	network = list(NETWORK_343)

/obj/machinery/camera/network/engine
	network = list(NETWORK_ENGINE)

/obj/machinery/camera/network/entrance
	network = list(NETWORK_ENTRANCE)

/obj/machinery/camera/network/lcz
	network = list(NETWORK_LCZ)

/obj/machinery/camera/network/llcz
	network = list(NETWORK_LLCZ)

/obj/machinery/camera/network/hcz
	network = list(NETWORK_HCZ)

/obj/machinery/camera/network/scp895
	network = list(NETWORK_895)

/obj/machinery/camera/network/reswing
	network = list(NETWORK_RESWING)

// Substation SMES
/obj/machinery/power/smes/buildable/preset/ds90/substation/configure_and_install_coils()
	component_parts += new /obj/item/stock_parts/smes_coil(src)
	component_parts += new /obj/item/stock_parts/smes_coil(src)
	_input_maxed = TRUE
	_output_maxed = TRUE

// Substation SMES (charged and with full I/O setting)
/obj/machinery/power/smes/buildable/preset/ds90/substation_full/configure_and_install_coils()
	component_parts += new /obj/item/stock_parts/smes_coil(src)
	component_parts += new /obj/item/stock_parts/smes_coil(src)
	_input_maxed = TRUE
	_output_maxed = TRUE
	_input_on = TRUE
	_output_on = TRUE
	_fully_charged = TRUE

// Main Engine output SMES
/obj/machinery/power/smes/buildable/preset/ds90/engine_main/configure_and_install_coils()
	component_parts += new /obj/item/stock_parts/smes_coil/super_io(src)
	component_parts += new /obj/item/stock_parts/smes_coil/super_io(src)
	component_parts += new /obj/item/stock_parts/smes_coil/super_capacity(src)
	component_parts += new /obj/item/stock_parts/smes_coil/super_capacity(src)
	_input_maxed = TRUE
	_output_maxed = TRUE
	_input_on = TRUE
	_output_on = TRUE
	_fully_charged = TRUE

// Shuttle SMES
/obj/machinery/power/smes/buildable/preset/ds90/shuttle/configure_and_install_coils()
	component_parts += new /obj/item/stock_parts/smes_coil/super_io(src)
	_input_maxed = TRUE
	_output_maxed = TRUE
	_input_on = TRUE
	_output_on = TRUE
	_fully_charged = TRUE

// Hangar SMES. Charges the shuttles so needs a pretty big throughput.
/obj/machinery/power/smes/buildable/preset/ds90/hangar/configure_and_install_coils()
	component_parts += new /obj/item/stock_parts/smes_coil/super_io(src)
	component_parts += new /obj/item/stock_parts/smes_coil/super_io(src)
	_input_maxed = TRUE
	_output_maxed = TRUE
	_input_on = TRUE
	_output_on = TRUE
	_fully_charged = TRUE

/datum/map/proc/get_shared_network_access(network)
	switch(network)
		if(NETWORK_ENGINE)
			return ACCESS_SECURITY_LVL1

// Override and implement to customize the SMES's loadout
/obj/machinery/power/smes/buildable/preset/proc/configure_and_install_coils()
	CRASH("configure_and_install_coils() not implemented for type [type]!")

