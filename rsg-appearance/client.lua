-- =============================================================================
--  rsg-appearance compatibility stub (CAS)
--  cas-charcreator owns the appearance stack on RSG. Running the stock rsg-appearance
--  alongside cas corrupts the player ped: on every loadskin (bath, prison, radial menu)
--  BOTH loadskin handlers fire, and the stock rsg-appearance reads the cas-format
--  playerskins.skin and applies it through its own loaders, producing a broken ped. So the
--  stock rsg-appearance is replaced by this stub. It keeps the resource NAME present (so
--  rsg-bathing's hard dependency resolves) and BRIDGES the read-only exports other resources
--  still call straight to cas-charcreator, so they get cas's real, live state, not dummies.
--  It contains NO appearance logic of its own; cas applies all skin and clothes.
-- =============================================================================

-- is cas-charcreator actually running? (it owns the real data behind every export below)
local function casUp()
    return GetResourceState("cas-charcreator") == "started"
end

-- rsg-hud asks this to hide the HUD while a clothing menu is open. Route it to cas: true
-- whenever the player is inside cas's creator, barber, clothing shop, or wardrobe UI.
exports("IsCothingActive", function()
    if not casUp() then return false end
    local ok, open = pcall(function() return exports["cas-charcreator"]:IsAppearanceUIOpen() end)
    return (ok and open) and true or false
end)

-- rsg-essentials (bandana on/off) asks for the current neckwear hash so it can restore it
-- after taking the bandana off. Route it to cas's live clothing for that category.
exports("GetClothesCurrentComponentHash", function(name)
    if not casUp() then return 0 end
    local ok, hash = pcall(function() return exports["cas-charcreator"]:GetCurrentClothesHash(name) end)
    return (ok and hash) or 0
end)

-- rsg-essentials asks for the current beard hash so a male's beard is restored after the
-- bandana comes off. Route it to cas's live skin (beard/hair live in the cas skin).
exports("GetBodyCurrentComponentHash", function(name)
    if not casUp() then return 0 end
    local ok, hash = pcall(function() return exports["cas-charcreator"]:GetCurrentBodyHash(name) end)
    return (ok and hash) or 0
end)
