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
