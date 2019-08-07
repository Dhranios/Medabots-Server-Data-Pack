# Spawn object
execute if entity @s[tag=green_floor_switch] run function medabots_server:set_blocks/floor_switch/green
execute if entity @s[tag=yellow_floor_switch,tag=delay_10] run function medabots_server:set_blocks/floor_switch/yellow/delay_10
execute if entity @s[tag=yellow_floor_switch,tag=delay_20] run function medabots_server:set_blocks/floor_switch/yellow/delay_20
execute if entity @s[tag=yellow_floor_switch,tag=delay_30] run function medabots_server:set_blocks/floor_switch/yellow/delay_30
execute if entity @s[tag=yellow_floor_switch,tag=delay_40] run function medabots_server:set_blocks/floor_switch/yellow/delay_40
execute if entity @s[tag=yellow_floor_switch,tag=delay_60] run function medabots_server:set_blocks/floor_switch/yellow/delay_60
execute if entity @s[tag=yellow_floor_switch,tag=delay_100] run function medabots_server:set_blocks/floor_switch/yellow/delay_100
execute if entity @s[tag=yellow_floor_switch,tag=delay_120] run function medabots_server:set_blocks/floor_switch/yellow/delay_120
execute if entity @s[tag=blue_floor_switch] run function medabots_server:set_blocks/floor_switch/blue
execute if entity @s[tag=negative] run tag @e[distance=..0.7,tag=floor_switch] add negative
execute if entity @s[tag=negative] run tag @e[distance=..0.7,tag=floor_switch] add toggle
tag @e[distance=..0.7,tag=floor_switch] add custom_stage

# Give additional data
scoreboard players operation @e[distance=..0.7,tag=floor_switch] HomeX = @s HomeX
scoreboard players operation @e[distance=..0.7,tag=floor_switch] HomeY = @s HomeY
scoreboard players operation @e[distance=..0.7,tag=floor_switch] HomeZ = @s HomeZ