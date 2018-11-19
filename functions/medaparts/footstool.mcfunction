# Spawn the footsool
execute if block ~ ~-1 ~ minecraft:air positioned ~ ~-2 ~ at @e[distance=..1,tag=hostile] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:move.footstool\"}",Duration:11,Tags:["footstool"]}

# Give the jumper effects
execute if block ~ ~-1 ~ minecraft:air positioned ~ ~-2 ~ at @e[distance=..1,tag=hostile] run effect give @s minecraft:resistance 1 9 true
execute if block ~ ~-1 ~ minecraft:air positioned ~ ~-2 ~ at @e[distance=..1,tag=hostile] run effect give @s minecraft:jump_boost 1 4 true

# Damage the jumped
execute if block ~ ~-1 ~ minecraft:air positioned ~ ~-2 ~ run effect give @e[distance=..1,tag=hostile,tag=!undead] minecraft:instant_damage 1 0 true
execute if block ~ ~-1 ~ minecraft:air positioned ~ ~-2 ~ run effect give @e[distance=..1,tag=hostile,tag=undead] minecraft:instant_health 1 0 true

# Play the sound
execute if block ~ ~-1 ~ minecraft:air positioned ~ ~-2 ~ at @e[distance=..1,tag=hostile] run playsound medabots_server:entity.medabot.move.footstool player @a ~ ~ ~ 1