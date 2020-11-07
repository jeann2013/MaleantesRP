fx_version 'adamant'
games { 'gta5' };

name 'KilichiHud Fivem'
description ''

ui_page 'Html/ui.html'

files {
    'Html/ui.html',
    'Html/script.js',
    'Html/main.css',
    'Html/animate.css',
    'Html/media.css'
}

client_scripts {
    'client.lua',
}

server_scripts {
    'server.lua'
}

export 'getZone';