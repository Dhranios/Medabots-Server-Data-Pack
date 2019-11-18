execute if block ~ ~-1 ~ minecraft:air run tag @s remove allowed
execute if block ~ ~-1 ~ minecraft:water run tag @s remove allowed
execute if block ~ ~-1 ~ minecraft:barrier run tag @s remove allowed

execute store result score #temp Stage run scoreboard players get @s Stage
execute at @e[tag=mission,tag=robattle] if score @e[tag=mission,tag=robattle,limit=1,distance=..0.1] Stage = #temp Stage run tag @s add impossible
tag @s[tag=impossible] remove allowed
tellraw @s[tag=impossible] {"translate":"medabots_server:message.stage.stage_builder.rubberobo.has_robattle"}
scoreboard players reset #temp Stage
tag @s[tag=impossible] remove impossible

execute if entity @s[y_rotation=45..135,tag=allowed] run function medabots_server:spawn_entities/rubberobo/east
execute if entity @s[y_rotation=-45..45,tag=allowed] run function medabots_server:spawn_entities/rubberobo/north
execute if entity @s[y_rotation=135..-135,tag=allowed] run function medabots_server:spawn_entities/rubberobo/south
execute if entity @s[y_rotation=-135..-45,tag=allowed] run function medabots_server:spawn_entities/rubberobo/west
tag @e[distance=..0.7,tag=rubberobo] add no_ticking