#ARM Hawk Missile
#ARMVTOL_ADVMISSILE
#
#Script created by Raevn

local TAMissileProjectile = import('/mods/SCTA-master/lua/TAProjectiles.lua').TAMissileProjectile

ARMVTOL_ADVMISSILE = Class(TAMissileProjectile) 
{
	TrackTime = 7,
}

TypeClass = ARMVTOL_ADVMISSILE
