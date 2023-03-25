fx_version 'cerulean'

game 'gta5'

author 'Giana - github.com/Giana'
description 'g-vehiclecloset'
version '1.0.2'

shared_scripts {
    '@qb-core/shared/locale.lua',
    'locales/en.lua'
}

client_scripts {
    'config.lua',
    'client/main.lua'
}

dependencies {
    'qb-core',
    'qb-target'
}

lua54 'yes'
