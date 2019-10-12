# Spawn object
execute if entity @s[tag=green_floor_switch] run function medabots_server:set_blocks/floor_switch/green
execute if entity @s[tag=yellow_floor_switch] run function medabots_server:set_blocks/floor_switch/yellow
execute if entity @s[tag=blue_floor_switch] run function medabots_server:set_blocks/floor_switch/blue
execute if entity @s[tag=negative] run tag @e[distance=..0.7,tag=floor_switch] add negative
execute if entity @s[tag=negative] run tag @e[distance=..0.7,tag=floor_switch] add toggle
tag @e[distance=..0.7,tag=floor_switch] add custom_stage

# Give additional data
scoreboard players operation @e[distance=..0.7,tag=floor_switch] HomeX = @s HomeX
scoreboard players operation @e[distance=..0.7,tag=floor_switch] HomeY = @s HomeY
scoreboard players operation @e[distance=..0.7,tag=floor_switch] HomeZ = @s HomeZ
scoreboard players operation @e[distance=..0.7,tag=floor_switch] PowerNeeded = @s PowerNeeded
scoreboard players operation @e[distance=..0.7,tag=floor_switch] DelayTime = @s DelayTime