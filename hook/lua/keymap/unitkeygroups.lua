TAunitkeygroups = {
    ["Experimental"]= {
        "corkrog",
        "armdrake",
        "armgant",
        "corgant",
        "armvulc",
    }, 
    ["Land_Factory"]= {
        "armvp",
        "armlab",
        "armhp",
        "corvp",
        "corlab",
        "corhp",
    },    
    ["Air_Factory"]= {
        "armap",
        "corap",
    },
    ["Naval_Factory"]= {
        "armsy",
        "corsy",
    },
    ["Power_Generator"]= {
        "armfus",
        "armsolar",
        "armtide",
        "armckfus", 
        "corfus",
        "corsolar",
        "cortide",
        "corckfus", 
    },
    ["Hydrocarbon_Power_Plant"]= {
        "armgeo",
        "corgeo",
    },    
    ["Mass_Extractor"]= {
        "armmex",
        "cormex",
        "armmoho",
        "cormoho",
    },
    ["Mass_Fabricator"]= {
        "armmakr",
        "armmmkr",
        "cormakr",
    },
    ["Energy_Storage"]= {
        "armestor",
        "corestor",
    },
    ["Mass_Storage"]= {
        "armmstor",
        "cormstor",
    },
    ["Point_Defense"]= {
        "armllt",
        "corllt",
    },
    ["Anti_Air"]= {
        "armrl",
        "corrl",
        "armflak",
    },
    ["Torpedo_Launcher"]= {
        "armatl",
        "armtl",
        "cortl",
    },
    ["Heavy_Artillery_Installation"]= {
        "armbrtha",
        "corint",
    },
    ["Artillery_Installation"]= {
        "armguard",
        "corpun",
    },
    ["Strategic_Missile_Launcher"]= {
        "armsilo",
        "corsilo",
    },
    ["Radar_System"]= {
        "armrad",
        "armtarg",
        "corrad",
        "cortarg",
    },
    ["Sonar_System"]= {
        "armsonar",
        "corsonar",
    },
    ["Omni_Sensor"]= {
        "armarad",
        "corarad",
    },
    ["Strategic_Missile_Defense"]= {
        "armamd",
        "corfmd",
    },
    ["Wall_Section"]= {
        "armdrag",
        "cordrag",
        "armfort",
    },
    ["Air_Staging"]= {
        "armasp",
        "corasp",
    },
    ["Sonar_Platform"]= {
        "armason",
        "corason",
    },    
    ["Heavy_Point_Defense"]= {
        "armhlt",
        "corhlt",
        "corplas",
    },
    ["T1_Air_Scout"]= {
        "armpeep",
        "corfink",
    },
    ["T2_Mobile_Stealth_Field_System"] = {
        'armaser',
        'armjam',
        'coreter',
        'corspec',
    },
    ["T2_Gatling_Bot"] = {
        "corpyro",
        "armfido",
    },
    ["T1_Interceptor"]= {
        "armfig",
        "corveng",
    },
    ["T1_Attack_Bomber"]= {
        "armthund",
        "corshad",
    },
    ["T1_Light_Air_Transport"]= {
        "armatlas",
        "corvalk",
    },
    ["T2_Gunship"]= {
        "armbrawl",
        "corape",
    },
    ["T2_Torpedo_Bomber"]= {
        "armlance",
        "cortitan",
    },
    ["T3_Spy_Plane"]= {
        "armawac",
        "corawac", 
    },
    ["T3_Air_Superiority_Fighter"]= {
        "armhawk",
        "corvamp",
    },
    ["T3_Strategic_Bomber"]= {
        "armpnix",
        "corhurc",
    },
    ["T1_Land_Scout"]= {
        "armfav",
        "armflea",
        "corfav",
    },
    ["T1_Mobile_Light_Artillery"]= {
        "armham",
        "corthud",
    },
    ["T1_Mobile_Anti_Air_Gun"]= {
        "armsam",
        "armjeth",
        "cormist",
        "corcrash",
    },
    ["T1_Engineer"]= {
        "armca",
        "armck",
        "armcs",
        "armcv",
        "corca",
        "corck",
        "corcs",
        "corcv",
    },
    ["T1_Light_Assault_Bot"]= {
        "armpw",
        "corak",
        "armflash",
        "corgator",
    },
    ["T2_Mobile_Missile_Launcher"]= {
        "armmerl",
        "armmh",
        "corvroc",
        "cormort",
    },
    ["T1_Tank"]= {
        "armstump",
        "corraid",
    },
    ["T2_Heavy_Tank"]= {
        "armbull",
        "armzeus",
        "corgol",
        "corcan",
    },
    ["T2_Mobile_AA_Flak_Artillery"]= {
        "armyork",
    },

    ["T2_Field_Engineer"]= {
        "armfark", 
    },
    ["T2_Engineer"]= {
        "armaca",
        "armack",
        "armacsub",
        "armacv",
        "coraca",
        "corack",
        "coracv",
        "coracsub",
    },
    ["T1_Frigate"]= {
        "armpt",
        "corpt",
    },
    ["T2_Destroyer"]= {
        "armroy",
        "corroy",
    },
    ["T2_Cruiser"]= {
        "armmship",
        "cormship",
    },
    ["T1_Attack_Submarine"]= {
        "armsub",
        "corsub",
    },
    ["T2_Amphibious_Tank"]= {
        "armcroc",
        "corseal",
        "armamph",
    },
    ["T1_Assault_Bot"]= {
        "armwar",
        "corstorm",
    },
    ["T2_Submarine_Hunter"]= {
        "armsubk",
        "corshark",
    },
    ["T3_Battlecruiser"]= {
        "armbats",
        "corbats",
    },
    ["T2_Mobile_Bomb"]= {
        "armvader",
        "corroach",
    },
}

--since we are merging unordered tables that contain ordered tables, we need to merge them manually instead of table.merged or whatever
function MergeTables(unitkeygroups, TAunitkeygroups)
    local newKeyGroups = table.copy(TAunitkeygroups)
    local newTable = {}
    for k,v in unitkeygroups do
        if TAunitkeygroups[k] then
            newTable[k] = table.cat(unitkeygroups[k],TAunitkeygroups[k])
            newKeyGroups[k] = nil
        else
            newTable[k] = unitkeygroups[k]
        end
    end
    
    for k,v in newKeyGroups do
        if not newTable[k] then
            newTable[k] = TAunitkeygroups[k]
        end
    end
    return newTable
end

unitkeygroups = MergeTables(unitkeygroups, TAunitkeygroups)