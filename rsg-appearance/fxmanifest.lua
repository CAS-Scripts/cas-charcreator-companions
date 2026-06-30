fx_version 'cerulean'
game 'rdr3'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

name 'rsg-appearance (CAS stub)'
author 'CAS'
version '1.0.0'
description 'Stub that replaces stock rsg-appearance when cas-charcreator owns the appearance and wardrobe stack on RSG. Keeps the rsg-appearance name present and bridges the read-only exports rsg-hud and rsg-essentials call straight to cas-charcreator. Also provides the rsg-wardrobe name (rsg-bathing hard-depends on both), so no separate rsg-wardrobe resource is needed. Contains no appearance logic; cas applies all skin and clothes.'

-- cas owns the wardrobe too, so there is no separate rsg-wardrobe resource. Provide the name
-- here so rsg-bathing's `dependency 'rsg-wardrobe'` resolves to this stub and rsg-bathing starts.
provide 'rsg-wardrobe'

client_script 'client.lua'
