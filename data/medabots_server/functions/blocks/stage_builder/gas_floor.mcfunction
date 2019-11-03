# Spawn object
execute if entity @s[tag=falling] run function medabots_server:set_blocks/gas_floor/falling/power_1
execute if entity @s[tag=ineffective] run function medabots_server:set_blocks/gas_floor/ineffective/power_1
execute if entity @s[tag=no_defend] run function medabots_server:set_blocks/gas_floor/no_defend/power_1
execute if entity @s[tag=confuse] run function medabots_server:set_blocks/gas_floor/confuse/power_1
tag @e[distance=..0.7,tag=gas_floor] add custom_stage

# Give additional data
scoreboard players operation @e[distance=..0.7,tag=gas_floor] HomeX = @s HomeX
scoreboard players operation @e[distance=..0.7,tag=gas_floor] HomeY = @s HomeY
scoreboard players operation @e[distance=..0.7,tag=gas_floor] HomeZ = @s HomeZ
scoreboard players operation @e[distance=..0.7,tag=gas_floor] PowerNeeded = @s PowerNeeded