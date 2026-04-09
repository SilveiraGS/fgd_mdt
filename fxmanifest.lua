
fx_version "bodacious"
game "gta5"
lua54 "yes"

name "MDT Policial"
description "Tablet Policial MDT"
version "1.0.0"

ui_page "web-side/index.html"

files {
	"web-side/index.html",
	"web-side/assets/*",
	"web-side/img/*",
}

shared_scripts {
	"@vrp/config/Item.lua",
	"@vrp/config/Vehicle.lua",
	"@vrp/config/Global.lua",
	"@vrp/config/Drops.lua",
	"config.lua",
}

client_scripts {
	"@vrp/config/Native.lua",
	"@vrp/lib/Utils.lua",
	"client-side/core.lua",
}

server_scripts {
	--- Garante `Config` antes do core (evita nil se shared não inicializar o servidor como esperado).
	"config.lua",
	"@vrp/lib/Utils.lua",
	"server-side/media_upload.lua",
	"server-side/core.lua",
}
