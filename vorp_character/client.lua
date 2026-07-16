-- legacy export proxies -> cas-charcreator

exports("GetPlayerComponent", function(category)
    return exports["cas-charcreator"]:GetPlayerComponent(category)
end)

exports("GetAllPlayerComponents", function()
    return exports["cas-charcreator"]:GetAllPlayerComponents()
end)

exports("GetPlayerSkin", function()
    return exports["cas-charcreator"]:GetPlayerSkin()
end)

-- dress ANY ped with a skin + components (combat-log clones, corpse/admin tools).
-- Same contract as vorp_character's LoadPlayerComponents(ped, skin, components, reload).
exports("LoadPlayerComponents", function(ped, skin, components, reload)
    return exports["cas-charcreator"]:LoadPlayerComponents(ped, skin, components, reload)
end)
