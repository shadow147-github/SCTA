#ARM Crusader - Destroyer
#ARMROY
#
#Script created by Raevn

local TAunit = import('/mods/SCTA-master/lua/TAunit.lua').TAunit
local TAweapon = import('/mods/SCTA-master/lua/TAweapon.lua').TAweapon

ARMROY = Class(TAunit) {
	Weapons = {
		ARM_ROY = Class(TAweapon) {
			OnWeaponFired = function(self)
				TAweapon.OnWeaponFired(self)
				TAunit.ShowMuzzleFlare(self, 0.15)
			end,
		},
		ARMDEPTHCHARGE = Class(TAweapon) {},
	},
}

TypeClass = ARMROY
