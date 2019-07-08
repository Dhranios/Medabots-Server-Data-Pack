# Spawn object
execute if entity @s[tag=falling,tag=!enabled] run function medabots_server:set_blocks/gas_floor/disabled/falling
execute if entity @s[tag=ineffective,tag=!enabled] run function medabots_server:set_blocks/gas_floor/disabled/ineffective
execute if entity @s[tag=no_defend,tag=!enabled] run function medabots_server:set_blocks/gas_floor/disabled/no_defend
execute if entity @s[tag=confuse,tag=!enabled] run function medabots_server:set_blocks/gas_floor/disabled/confuse

execute if entity @s[tag=falling,tag=enabled] run function medabots_server:set_blocks/gas_floor/enabled/falling
execute if entity @s[tag=ineffective,tag=enabled] run function medabots_server:set_blocks/gas_floor/enabled/ineffective
execute if entity @s[tag=no_defend,tag=enabled] run function medabots_server:set_blocks/gas_floor/enabled/no_defend
execute if entity @s[tag=confuse,tag=enabled] run function medabots_server:set_blocks/gas_floor/enabled/confuse