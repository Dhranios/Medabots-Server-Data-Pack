tag @s add building_player

summon minecraft:item ~ 255 ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["build_stage"],NoGravity:1b}
data modify entity @e[tag=build_stage,limit=1] Item set from entity @s SelectedItem

execute as @e[tag=build_stage] at @s run function medabots_server:stage/create/custom/build
tag @s remove building_player
kill @e[tag=build_stage]