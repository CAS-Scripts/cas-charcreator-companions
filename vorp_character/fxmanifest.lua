fx_version 'cerulean'
game 'rdr3'
lua54 'yes'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

name 'vorp_character (CAS compatibility shim)'
author 'CAS'
version '1.0.1'
description 'Proxies legacy exports.vorp_character calls to cas-charcreator. The real implementation lives in cas-charcreator.'

client_script 'client.lua'
server_script 'server.lua'

dependency 'cas-charcreator'
