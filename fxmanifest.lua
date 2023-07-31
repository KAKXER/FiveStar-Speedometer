fx_version 'cerulean'
game 'gta5'

name "FiveStar-Speedometer"
description "Speedometer by FiveStar"
author "FiveStar Development | 5star.tebex.io | Discord/HdEzqEJBdh"
version "1.2"
lua54 'yes'

client_scripts {
	'client/*.lua'
}

server_scripts {
	'server/*.lua'
}

ui_page "ui/index.html"

files {
	"ui/index.html",
	"ui/img/*.*",
	"ui/css/*.*",
	"ui/js/*.*"
}
