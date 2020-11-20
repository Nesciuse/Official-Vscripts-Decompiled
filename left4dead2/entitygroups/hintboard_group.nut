//-------------------------------------------------------
// Autogenerated from 'hintboard.vmf'
//-------------------------------------------------------
Hintboard <-
{
	//-------------------------------------------------------
	// Required Interface functions
	//-------------------------------------------------------
	function GetPrecacheList()
	{
		local precacheModels =
		[
			EntityGroup.SpawnTables.hintboard,
		]
		return precacheModels
	}

	//-------------------------------------------------------
	function GetSpawnList()
	{
		local spawnEnts =
		[
			EntityGroup.SpawnTables.hintboard_usetarget,
			EntityGroup.SpawnTables.hintboard,
		]
		return spawnEnts
	}

	//-------------------------------------------------------
	function GetEntityGroup()
	{
		return EntityGroup
	}

	//-------------------------------------------------------
	// Table of entities that make up this group
	//-------------------------------------------------------
	EntityGroup =
	{
		SpawnTables =
		{
			hintboard = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic_override"
					angles = Vector( 0, 270, 0 )
					body = "0"
					disablereceiveshadows = "0"
					disableshadows = "1"
					disableX360 = "0"
					ExplodeDamage = "0"
					ExplodeRadius = "0"
					fademaxdist = "0"
					fademindist = "-1"
					fadescale = "1"
					glowbackfacemult = ".6"
					glowcolor = "121 202 0"
					glowrange = "128"
					glowrangemin = "0"
					glowstate = "3"
					health = "0"
					LagCompensate = "0"
					MaxAnimTime = "10"
					maxcpulevel = "0"
					maxgpulevel = "0"
					MinAnimTime = "5"
					mincpulevel = "0"
					mingpulevel = "0"
					model = "models/props/cs_office/offcorkboarda.mdl"
					PerformanceMode = "0"
					pressuredelay = "0"
					RandomAnimation = "0"
					renderamt = "255"
					rendercolor = "255 255 255"
					renderfx = "0"
					rendermode = "0"
					SetBodyGroup = "0"
					skin = "0"
					solid = "6"
					spawnflags = "0"
					targetname = "hintboard"
					updatechildren = "0"
					origin = Vector( 0, 0, 0 )
				}
			}
			hintboard_usetarget = 
			{
				SpawnInfo =
				{
					classname = "point_script_use_target"
					model = "hintboard"
					origin = Vector( 0, 0, 0 )
					targetname = "hintboard_usetarget"
					vscripts = "usetargets/hintboard_usetarget"
					connections =
					{
						OnUser4 =
						{
							cmd1 = "!selfKill0-1"
							cmd2 = "hintboardKill0-1"
						}
					}
				}
			}
		} // SpawnTables
	} // EntityGroup
} // Hintboard

RegisterEntityGroup( "Hintboard", Hintboard )