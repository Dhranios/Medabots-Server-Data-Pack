# Spawn object
execute if entity @s[tag=x] run function medabots_server:set_blocks/door/x/power_1
execute if entity @s[tag=z] run function medabots_server:set_blocks/door/z/power_1
tag @e[distance=..0.7,tag=door] add custom_stage
execute if entity @s[tag=mission_door] run tag @e[distance=..0.7,tag=door] add mission_door
execute if entity @s[tag=no_open] run tag @e[distance=..0.7,tag=door] add no_open
execute if entity @s[tag=old_door_was_open] as @e[distance=..0.7,tag=door,tag=!dead] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 25
execute if entity @s[tag=old_door_was_open] run scoreboard players set @e[distance=..0.7,tag=door] Time 10

execute if entity @s[tag=no_ticker] as @e[distance=..0.7,tag=door] at @s run function medabots_server:blocks/door/open

# Give additional data
scoreboard players operation @e[distance=..0.7,tag=door] HomeX = @s HomeX
scoreboard players operation @e[distance=..0.7,tag=door] HomeY = @s HomeY
scoreboard players operation @e[distance=..0.7,tag=door] HomeZ = @s HomeZ
scoreboard players operation @e[distance=..0.7,tag=door] PowerNeeded = @s PowerNeeded