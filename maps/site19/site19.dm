#if !defined(using_map_DATUM)

	#include "site19_announcements.dm"
	#include "site19areas.dm"
	#include "site19elevators.dm"
	#include "site19_presets.dm"
	#include "site19_shuttles.dm"
	#include "site19_jobs.dm"

	#include "items/encryption_keys.dm"
	#include "items/headsets.dm"
	#include "items/items.dm"
	#include "items/manuals.dm"
	#include "items/stamps.dm"
	#include "items/rigs.dm"
	#include "items/clothing/solgov-accessory.dm"
	#include "items/clothing/solgov-armor.dm"
	#include "items/clothing/solgov-feet.dm"
	#include "items/clothing/solgov-head.dm"
	#include "items/clothing/solgov-suit.dm"
	#include "items/clothing/solgov-under.dm"

	#include "jobs/access/access.dm"
	#include "jobs/access/access_containment.dm"
	#include "jobs/headsets.dm"
	#include "jobs/papers.dm"
	#include "jobs/command.dm"
	#include "jobs/engineering.dm"
	#include "jobs/medical.dm"
	#include "jobs/misc.dm"
	#include "jobs/research.dm"
	#include "jobs/security.dm"
	#include "structures/mapstuff.dm"
	#include "structures/signs.dm"
	#include "structures/closets/command.dm"
	#include "structures/closets/medical.dm"
	#include "structures/closets/misc.dm"
	#include "structures/closets/research.dm"
	#include "structures/closets/security.dm"
	#include "structures/closets/services.dm"
	#include "structures/closets/supply.dm"

	#include "antagonism/_define.dm"

	#include "antagonism/goi/chaos.dm"
	#include "antagonism/goi/goc.dm"

	#include "antagonism/mtf_squads/maz_hatters.dm"
	#include "antagonism/mtf_squads/see_no_evil.dm"
	#include "antagonism/mtf_squads/nine_tailed_fox.dm"

	#include "sounds/_tracks.dm"

	#include "site19-1.dmm"
	#include "site19-2.dmm"
	#include "site19-3.dmm"
	#include "site19-4.dmm"
	#include "z1_admin.dmm"
	#include "z2_transit.dmm"

	#define using_map_DATUM /datum/map/site19

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring Site 19

#endif
