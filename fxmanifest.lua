fx_version 'cerulean'
game 'gta5'


description 'm-Forgery - Credits to original: Jeremy#0004 <https://github.com/ansljeremy>'
version '1.0.0'

client_script {
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
    "client/**.lua",
}

server_script 'server/**.lua'
shared_script 'configs/**.lua'