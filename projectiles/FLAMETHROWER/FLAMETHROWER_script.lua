#CORE Pyro Flamethrower
#FLAMETHROWER
#
#Script created by Raevn

local TALightCannonProjectile = import('/mods/SCTA-master/lua/TAProjectiles.lua').TALightCannonProjectile

FLAMETHROWER = Class(TALightCannonProjectile) {
	Smoke = true,

	FxSmoke = '/mods/SCTA-master/effects/emitters/flamethrower_emit.bp',

	OnCreate = function(self)
		TALightCannonProjectile.OnCreate(self)
		ForkThread(self.MovementThread,self)
	end,

	MovementThread = function(self)
		while not IsDestroyed(self) do
			local pos = self:GetPosition()
			DamageArea(self, pos, 1, 10, 'Normal', false)
			WaitSeconds(0.1)
		end
	end,

	FxImpactAirUnit = {},
	FxImpactShield = {},
	FxImpactUnit = {},
	FxImpactProp = {},
	FxImpactLand = {},
	FxImpactWater = {},
}

TypeClass = FLAMETHROWER
