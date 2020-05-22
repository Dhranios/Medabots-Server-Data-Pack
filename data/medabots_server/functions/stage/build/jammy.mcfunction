execute if entity @e[distance=..0.7,tag=pot,tag=!cannon,tag=!guard,tag=!bomb,tag=!balloon_bomb,tag=!jammy] run tag @s add allowed
execute if block ~ ~-1 ~ minecraft:air run tag @s remove allowed
execute if block ~ ~-1 ~ minecraft:water run tag @s remove allowed
execute positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:water if entity @e[distance=..0.7,tag=raft,limit=1] run tag @s add allowed
execute if block ~ ~-1 ~ minecraft:barrier run tag @s remove allowed

execute store result score #temp Stage run scoreboard players get @s Stage
execute at @e[tag=mission,tag=robattle] if score @e[tag=mission,tag=robattle,limit=1,distance=..0.1] Stage = #temp Stage run tag @s add impossible
tag @s[tag=impossible] remove allowed
tellraw @s[tag=impossible] {"translate":"medabots_server:message.stage.stage_builder.jammy.has_robattle"}
scoreboard players reset #temp Stage
tag @s[tag=impossible] remove impossible

execute if entity @e[distance=..0.7,tag=pot,tag=!cannon,tag=!guard,tag=!bomb,tag=!balloon_bomb,tag=!jammy] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.jammy.pot"}
tag @e[distance=..0.7,tag=pot,tag=!cannon,tag=!guard,tag=!bomb,tag=!balloon_bomb,tag=!jammy] add dead
execute unless entity @e[distance=..0.7,tag=pot,tag=!cannon,tag=!guard,tag=!bomb,tag=!balloon_bomb,tag=!jammy] if entity @s[tag=allowed] run function medabots_server:set_blocks/jammy
execute if entity @e[distance=..0.7,tag=pot,tag=!cannon,tag=!guard,tag=!bomb,tag=!balloon_bomb,tag=!jammy] if entity @s[tag=allowed] run function medabots_server:set_blocks/pot/jammy
tag @e[distance=..0.7,tag=jammy] add no_ticking