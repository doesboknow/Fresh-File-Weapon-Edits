ModUtil.Mod.Register("FFWeaponEdits")

local config = {

    -- universal enable & disable of mod
    ModEnabled = true,

    -- enable unlock of all weapons, without key requirements
    UnlockAllWeapons = true,

    -- enable unlock of all non-hidden aspects
    UnlockAllNonHiddenAspects = true,
    -- enable unlock of hidden aspects
    UnlockAllHiddenAspects = true,

    -- enable starting weapon change
    DifferentStartingWeaponEnabled = true,
    -- Pick your starting weapon
    --  SwordWeapon ("Stygius", Stygian Blade)
    --  SpearWeapon ("Varatha", Eternal Spear)
    --  ShieldWeapon ("Aegis", Shield of Chaos)
    --  BowWeapon ("Coronacht", Heart-Seeking Bow")
    --  FistWeapon ("Malphon", Twin Fists of Malphon)
    --  GunWeapon ("Exagryph", Adamant Rail)
    StartingWeapon = "BowWeapon"

}

FFWeaponEdits.config = config

if not config.ModEnabled then return end

if config.UnlockAllWeapons then
    -- always return weapons being both eligible and unlocked
    ModUtil.Path.Wrap("IsWeaponEligible", function(baseFunc)
        return true
    end,FFWeaponEdits)

    ModUtil.Path.Wrap("IsWeaponUnlocked", function(baseFunc)
        return true
    end,FFWeaponEdits)
end

if config.UnlockAllNonHiddenAspects then
    ModUtil.LoadOnce(function ()
		-- removes requirements for upgrading weapons
        WeaponUpgradeData.DefaultGameStateRequirement.RequiredTrueFlags = nil
    end)
end

if config.UnlockAllHiddenAspects then
    ModUtil.LoadOnce(function ()
    -- unlocks sword hidden aspect
    TextLinesRecord["NyxRevealsArthurAspect01"] = true 
    -- unlocks spear hidden aspect
    TextLinesRecord["AchillesRevealsGuanYuAspect01"] = true
    -- unlocks shield hidden aspect
    TextLinesRecord["ChaosRevealsBeowulfAspect01"] = true
    -- unlocks bow hidden aspect
    TextLinesRecord["ArtemisRevealsRamaAspect01"] = true
    -- unlocks fist hidden aspect
    TextLinesRecord["MinotaurRevealsGilgameshAspect01"] = true
    -- unlocks gun hidden aspect
    TextLinesRecord["ZeusRevealsLuciferAspect01"] = true  
    end)
end

if config.DifferentStartingWeaponEnabled then
	-- sets the default weapon of Zagreus, which is also used when starting a fresh file.
    HeroData.DefaultHero.DefaultWeapon = config.StartingWeapon
end