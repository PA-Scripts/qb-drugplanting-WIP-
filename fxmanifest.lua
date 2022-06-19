fx_version 'cerulean'

game 'gta5'

author 'Pinky#3159 (pa-scripts)'

description 'qb-drug'

version '0.1'

client_scripts{
    '@PolyZone/client.lua',
	'@PolyZone/BoxZone.lua',
	'@PolyZone/EntityZone.lua',
	'@PolyZone/CircleZone.lua',
	'@PolyZone/ComboZone.lua',
    'client/main.lua',
}

shared_scripts{
    'config.lua',
}

server_scripts{
    'server/main.lua',
    '@oxmysql/lib/MySQL.lua',
}